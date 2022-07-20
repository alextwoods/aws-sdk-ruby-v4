# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Imagebuilder
  module Parsers

    # Operation Parser for CancelImageCreation
    class CancelImageCreation
      def self.parse(http_resp)
        data = Types::CancelImageCreationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.request_id = map['requestId']
        data.client_token = map['clientToken']
        data.image_build_version_arn = map['imageBuildVersionArn']
        data
      end
    end

    # Error Parser for CallRateLimitExceededException
    class CallRateLimitExceededException
      def self.parse(http_resp)
        data = Types::CallRateLimitExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InvalidRequestException
    class InvalidRequestException
      def self.parse(http_resp)
        data = Types::InvalidRequestException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ForbiddenException
    class ForbiddenException
      def self.parse(http_resp)
        data = Types::ForbiddenException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for IdempotentParameterMismatchException
    class IdempotentParameterMismatchException
      def self.parse(http_resp)
        data = Types::IdempotentParameterMismatchException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ServiceUnavailableException
    class ServiceUnavailableException
      def self.parse(http_resp)
        data = Types::ServiceUnavailableException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ClientException
    class ClientException
      def self.parse(http_resp)
        data = Types::ClientException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ServiceException
    class ServiceException
      def self.parse(http_resp)
        data = Types::ServiceException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ResourceInUseException
    class ResourceInUseException
      def self.parse(http_resp)
        data = Types::ResourceInUseException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateComponent
    class CreateComponent
      def self.parse(http_resp)
        data = Types::CreateComponentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.request_id = map['requestId']
        data.client_token = map['clientToken']
        data.component_build_version_arn = map['componentBuildVersionArn']
        data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InvalidParameterCombinationException
    class InvalidParameterCombinationException
      def self.parse(http_resp)
        data = Types::InvalidParameterCombinationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InvalidVersionNumberException
    class InvalidVersionNumberException
      def self.parse(http_resp)
        data = Types::InvalidVersionNumberException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateContainerRecipe
    class CreateContainerRecipe
      def self.parse(http_resp)
        data = Types::CreateContainerRecipeOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.request_id = map['requestId']
        data.client_token = map['clientToken']
        data.container_recipe_arn = map['containerRecipeArn']
        data
      end
    end

    # Error Parser for ResourceAlreadyExistsException
    class ResourceAlreadyExistsException
      def self.parse(http_resp)
        data = Types::ResourceAlreadyExistsException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateDistributionConfiguration
    class CreateDistributionConfiguration
      def self.parse(http_resp)
        data = Types::CreateDistributionConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.request_id = map['requestId']
        data.client_token = map['clientToken']
        data.distribution_configuration_arn = map['distributionConfigurationArn']
        data
      end
    end

    # Operation Parser for CreateImage
    class CreateImage
      def self.parse(http_resp)
        data = Types::CreateImageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.request_id = map['requestId']
        data.client_token = map['clientToken']
        data.image_build_version_arn = map['imageBuildVersionArn']
        data
      end
    end

    # Operation Parser for CreateImagePipeline
    class CreateImagePipeline
      def self.parse(http_resp)
        data = Types::CreateImagePipelineOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.request_id = map['requestId']
        data.client_token = map['clientToken']
        data.image_pipeline_arn = map['imagePipelineArn']
        data
      end
    end

    # Operation Parser for CreateImageRecipe
    class CreateImageRecipe
      def self.parse(http_resp)
        data = Types::CreateImageRecipeOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.request_id = map['requestId']
        data.client_token = map['clientToken']
        data.image_recipe_arn = map['imageRecipeArn']
        data
      end
    end

    # Operation Parser for CreateInfrastructureConfiguration
    class CreateInfrastructureConfiguration
      def self.parse(http_resp)
        data = Types::CreateInfrastructureConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.request_id = map['requestId']
        data.client_token = map['clientToken']
        data.infrastructure_configuration_arn = map['infrastructureConfigurationArn']
        data
      end
    end

    # Operation Parser for DeleteComponent
    class DeleteComponent
      def self.parse(http_resp)
        data = Types::DeleteComponentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.request_id = map['requestId']
        data.component_build_version_arn = map['componentBuildVersionArn']
        data
      end
    end

    # Error Parser for ResourceDependencyException
    class ResourceDependencyException
      def self.parse(http_resp)
        data = Types::ResourceDependencyException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for DeleteContainerRecipe
    class DeleteContainerRecipe
      def self.parse(http_resp)
        data = Types::DeleteContainerRecipeOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.request_id = map['requestId']
        data.container_recipe_arn = map['containerRecipeArn']
        data
      end
    end

    # Operation Parser for DeleteDistributionConfiguration
    class DeleteDistributionConfiguration
      def self.parse(http_resp)
        data = Types::DeleteDistributionConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.request_id = map['requestId']
        data.distribution_configuration_arn = map['distributionConfigurationArn']
        data
      end
    end

    # Operation Parser for DeleteImage
    class DeleteImage
      def self.parse(http_resp)
        data = Types::DeleteImageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.request_id = map['requestId']
        data.image_build_version_arn = map['imageBuildVersionArn']
        data
      end
    end

    # Operation Parser for DeleteImagePipeline
    class DeleteImagePipeline
      def self.parse(http_resp)
        data = Types::DeleteImagePipelineOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.request_id = map['requestId']
        data.image_pipeline_arn = map['imagePipelineArn']
        data
      end
    end

    # Operation Parser for DeleteImageRecipe
    class DeleteImageRecipe
      def self.parse(http_resp)
        data = Types::DeleteImageRecipeOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.request_id = map['requestId']
        data.image_recipe_arn = map['imageRecipeArn']
        data
      end
    end

    # Operation Parser for DeleteInfrastructureConfiguration
    class DeleteInfrastructureConfiguration
      def self.parse(http_resp)
        data = Types::DeleteInfrastructureConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.request_id = map['requestId']
        data.infrastructure_configuration_arn = map['infrastructureConfigurationArn']
        data
      end
    end

    # Operation Parser for GetComponent
    class GetComponent
      def self.parse(http_resp)
        data = Types::GetComponentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.request_id = map['requestId']
        data.component = (Component.parse(map['component']) unless map['component'].nil?)
        data
      end
    end

    class Component
      def self.parse(map)
        data = Types::Component.new
        data.arn = map['arn']
        data.name = map['name']
        data.version = map['version']
        data.description = map['description']
        data.change_description = map['changeDescription']
        data.type = map['type']
        data.platform = map['platform']
        data.supported_os_versions = (OsVersionList.parse(map['supportedOsVersions']) unless map['supportedOsVersions'].nil?)
        data.state = (ComponentState.parse(map['state']) unless map['state'].nil?)
        data.parameters = (ComponentParameterDetailList.parse(map['parameters']) unless map['parameters'].nil?)
        data.owner = map['owner']
        data.data = map['data']
        data.kms_key_id = map['kmsKeyId']
        data.encrypted = map['encrypted']
        data.date_created = map['dateCreated']
        data.tags = (TagMap.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    class TagMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class ComponentParameterDetailList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ComponentParameterDetail.parse(value) unless value.nil?
        end
        data
      end
    end

    class ComponentParameterDetail
      def self.parse(map)
        data = Types::ComponentParameterDetail.new
        data.name = map['name']
        data.type = map['type']
        data.default_value = (ComponentParameterValueList.parse(map['defaultValue']) unless map['defaultValue'].nil?)
        data.description = map['description']
        return data
      end
    end

    class ComponentParameterValueList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class ComponentState
      def self.parse(map)
        data = Types::ComponentState.new
        data.status = map['status']
        data.reason = map['reason']
        return data
      end
    end

    class OsVersionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetComponentPolicy
    class GetComponentPolicy
      def self.parse(http_resp)
        data = Types::GetComponentPolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.request_id = map['requestId']
        data.policy = map['policy']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for GetContainerRecipe
    class GetContainerRecipe
      def self.parse(http_resp)
        data = Types::GetContainerRecipeOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.request_id = map['requestId']
        data.container_recipe = (ContainerRecipe.parse(map['containerRecipe']) unless map['containerRecipe'].nil?)
        data
      end
    end

    class ContainerRecipe
      def self.parse(map)
        data = Types::ContainerRecipe.new
        data.arn = map['arn']
        data.container_type = map['containerType']
        data.name = map['name']
        data.description = map['description']
        data.platform = map['platform']
        data.owner = map['owner']
        data.version = map['version']
        data.components = (ComponentConfigurationList.parse(map['components']) unless map['components'].nil?)
        data.instance_configuration = (InstanceConfiguration.parse(map['instanceConfiguration']) unless map['instanceConfiguration'].nil?)
        data.dockerfile_template_data = map['dockerfileTemplateData']
        data.kms_key_id = map['kmsKeyId']
        data.encrypted = map['encrypted']
        data.parent_image = map['parentImage']
        data.date_created = map['dateCreated']
        data.tags = (TagMap.parse(map['tags']) unless map['tags'].nil?)
        data.working_directory = map['workingDirectory']
        data.target_repository = (TargetContainerRepository.parse(map['targetRepository']) unless map['targetRepository'].nil?)
        return data
      end
    end

    class TargetContainerRepository
      def self.parse(map)
        data = Types::TargetContainerRepository.new
        data.service = map['service']
        data.repository_name = map['repositoryName']
        return data
      end
    end

    class InstanceConfiguration
      def self.parse(map)
        data = Types::InstanceConfiguration.new
        data.image = map['image']
        data.block_device_mappings = (InstanceBlockDeviceMappings.parse(map['blockDeviceMappings']) unless map['blockDeviceMappings'].nil?)
        return data
      end
    end

    class InstanceBlockDeviceMappings
      def self.parse(list)
        data = []
        list.map do |value|
          data << InstanceBlockDeviceMapping.parse(value) unless value.nil?
        end
        data
      end
    end

    class InstanceBlockDeviceMapping
      def self.parse(map)
        data = Types::InstanceBlockDeviceMapping.new
        data.device_name = map['deviceName']
        data.ebs = (EbsInstanceBlockDeviceSpecification.parse(map['ebs']) unless map['ebs'].nil?)
        data.virtual_name = map['virtualName']
        data.no_device = map['noDevice']
        return data
      end
    end

    class EbsInstanceBlockDeviceSpecification
      def self.parse(map)
        data = Types::EbsInstanceBlockDeviceSpecification.new
        data.encrypted = map['encrypted']
        data.delete_on_termination = map['deleteOnTermination']
        data.iops = map['iops']
        data.kms_key_id = map['kmsKeyId']
        data.snapshot_id = map['snapshotId']
        data.volume_size = map['volumeSize']
        data.volume_type = map['volumeType']
        data.throughput = map['throughput']
        return data
      end
    end

    class ComponentConfigurationList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ComponentConfiguration.parse(value) unless value.nil?
        end
        data
      end
    end

    class ComponentConfiguration
      def self.parse(map)
        data = Types::ComponentConfiguration.new
        data.component_arn = map['componentArn']
        data.parameters = (ComponentParameterList.parse(map['parameters']) unless map['parameters'].nil?)
        return data
      end
    end

    class ComponentParameterList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ComponentParameter.parse(value) unless value.nil?
        end
        data
      end
    end

    class ComponentParameter
      def self.parse(map)
        data = Types::ComponentParameter.new
        data.name = map['name']
        data.value = (ComponentParameterValueList.parse(map['value']) unless map['value'].nil?)
        return data
      end
    end

    # Operation Parser for GetContainerRecipePolicy
    class GetContainerRecipePolicy
      def self.parse(http_resp)
        data = Types::GetContainerRecipePolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.request_id = map['requestId']
        data.policy = map['policy']
        data
      end
    end

    # Operation Parser for GetDistributionConfiguration
    class GetDistributionConfiguration
      def self.parse(http_resp)
        data = Types::GetDistributionConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.request_id = map['requestId']
        data.distribution_configuration = (DistributionConfiguration.parse(map['distributionConfiguration']) unless map['distributionConfiguration'].nil?)
        data
      end
    end

    class DistributionConfiguration
      def self.parse(map)
        data = Types::DistributionConfiguration.new
        data.arn = map['arn']
        data.name = map['name']
        data.description = map['description']
        data.distributions = (DistributionList.parse(map['distributions']) unless map['distributions'].nil?)
        data.timeout_minutes = map['timeoutMinutes']
        data.date_created = map['dateCreated']
        data.date_updated = map['dateUpdated']
        data.tags = (TagMap.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    class DistributionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Distribution.parse(value) unless value.nil?
        end
        data
      end
    end

    class Distribution
      def self.parse(map)
        data = Types::Distribution.new
        data.region = map['region']
        data.ami_distribution_configuration = (AmiDistributionConfiguration.parse(map['amiDistributionConfiguration']) unless map['amiDistributionConfiguration'].nil?)
        data.container_distribution_configuration = (ContainerDistributionConfiguration.parse(map['containerDistributionConfiguration']) unless map['containerDistributionConfiguration'].nil?)
        data.license_configuration_arns = (LicenseConfigurationArnList.parse(map['licenseConfigurationArns']) unless map['licenseConfigurationArns'].nil?)
        data.launch_template_configurations = (LaunchTemplateConfigurationList.parse(map['launchTemplateConfigurations']) unless map['launchTemplateConfigurations'].nil?)
        data.s3_export_configuration = (S3ExportConfiguration.parse(map['s3ExportConfiguration']) unless map['s3ExportConfiguration'].nil?)
        data.fast_launch_configurations = (FastLaunchConfigurationList.parse(map['fastLaunchConfigurations']) unless map['fastLaunchConfigurations'].nil?)
        return data
      end
    end

    class FastLaunchConfigurationList
      def self.parse(list)
        data = []
        list.map do |value|
          data << FastLaunchConfiguration.parse(value) unless value.nil?
        end
        data
      end
    end

    class FastLaunchConfiguration
      def self.parse(map)
        data = Types::FastLaunchConfiguration.new
        data.enabled = map['enabled']
        data.snapshot_configuration = (FastLaunchSnapshotConfiguration.parse(map['snapshotConfiguration']) unless map['snapshotConfiguration'].nil?)
        data.max_parallel_launches = map['maxParallelLaunches']
        data.launch_template = (FastLaunchLaunchTemplateSpecification.parse(map['launchTemplate']) unless map['launchTemplate'].nil?)
        data.account_id = map['accountId']
        return data
      end
    end

    class FastLaunchLaunchTemplateSpecification
      def self.parse(map)
        data = Types::FastLaunchLaunchTemplateSpecification.new
        data.launch_template_id = map['launchTemplateId']
        data.launch_template_name = map['launchTemplateName']
        data.launch_template_version = map['launchTemplateVersion']
        return data
      end
    end

    class FastLaunchSnapshotConfiguration
      def self.parse(map)
        data = Types::FastLaunchSnapshotConfiguration.new
        data.target_resource_count = map['targetResourceCount']
        return data
      end
    end

    class S3ExportConfiguration
      def self.parse(map)
        data = Types::S3ExportConfiguration.new
        data.role_name = map['roleName']
        data.disk_image_format = map['diskImageFormat']
        data.s3_bucket = map['s3Bucket']
        data.s3_prefix = map['s3Prefix']
        return data
      end
    end

    class LaunchTemplateConfigurationList
      def self.parse(list)
        data = []
        list.map do |value|
          data << LaunchTemplateConfiguration.parse(value) unless value.nil?
        end
        data
      end
    end

    class LaunchTemplateConfiguration
      def self.parse(map)
        data = Types::LaunchTemplateConfiguration.new
        data.launch_template_id = map['launchTemplateId']
        data.account_id = map['accountId']
        data.set_default_version = map['setDefaultVersion']
        return data
      end
    end

    class LicenseConfigurationArnList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class ContainerDistributionConfiguration
      def self.parse(map)
        data = Types::ContainerDistributionConfiguration.new
        data.description = map['description']
        data.container_tags = (StringList.parse(map['containerTags']) unless map['containerTags'].nil?)
        data.target_repository = (TargetContainerRepository.parse(map['targetRepository']) unless map['targetRepository'].nil?)
        return data
      end
    end

    class StringList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class AmiDistributionConfiguration
      def self.parse(map)
        data = Types::AmiDistributionConfiguration.new
        data.name = map['name']
        data.description = map['description']
        data.target_account_ids = (AccountList.parse(map['targetAccountIds']) unless map['targetAccountIds'].nil?)
        data.ami_tags = (TagMap.parse(map['amiTags']) unless map['amiTags'].nil?)
        data.kms_key_id = map['kmsKeyId']
        data.launch_permission = (LaunchPermissionConfiguration.parse(map['launchPermission']) unless map['launchPermission'].nil?)
        return data
      end
    end

    class LaunchPermissionConfiguration
      def self.parse(map)
        data = Types::LaunchPermissionConfiguration.new
        data.user_ids = (AccountList.parse(map['userIds']) unless map['userIds'].nil?)
        data.user_groups = (StringList.parse(map['userGroups']) unless map['userGroups'].nil?)
        data.organization_arns = (OrganizationArnList.parse(map['organizationArns']) unless map['organizationArns'].nil?)
        data.organizational_unit_arns = (OrganizationalUnitArnList.parse(map['organizationalUnitArns']) unless map['organizationalUnitArns'].nil?)
        return data
      end
    end

    class OrganizationalUnitArnList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class OrganizationArnList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class AccountList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetImage
    class GetImage
      def self.parse(http_resp)
        data = Types::GetImageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.request_id = map['requestId']
        data.image = (Image.parse(map['image']) unless map['image'].nil?)
        data
      end
    end

    class Image
      def self.parse(map)
        data = Types::Image.new
        data.arn = map['arn']
        data.type = map['type']
        data.name = map['name']
        data.version = map['version']
        data.platform = map['platform']
        data.enhanced_image_metadata_enabled = map['enhancedImageMetadataEnabled']
        data.os_version = map['osVersion']
        data.state = (ImageState.parse(map['state']) unless map['state'].nil?)
        data.image_recipe = (ImageRecipe.parse(map['imageRecipe']) unless map['imageRecipe'].nil?)
        data.container_recipe = (ContainerRecipe.parse(map['containerRecipe']) unless map['containerRecipe'].nil?)
        data.source_pipeline_name = map['sourcePipelineName']
        data.source_pipeline_arn = map['sourcePipelineArn']
        data.infrastructure_configuration = (InfrastructureConfiguration.parse(map['infrastructureConfiguration']) unless map['infrastructureConfiguration'].nil?)
        data.distribution_configuration = (DistributionConfiguration.parse(map['distributionConfiguration']) unless map['distributionConfiguration'].nil?)
        data.image_tests_configuration = (ImageTestsConfiguration.parse(map['imageTestsConfiguration']) unless map['imageTestsConfiguration'].nil?)
        data.date_created = map['dateCreated']
        data.output_resources = (OutputResources.parse(map['outputResources']) unless map['outputResources'].nil?)
        data.tags = (TagMap.parse(map['tags']) unless map['tags'].nil?)
        data.build_type = map['buildType']
        return data
      end
    end

    class OutputResources
      def self.parse(map)
        data = Types::OutputResources.new
        data.amis = (AmiList.parse(map['amis']) unless map['amis'].nil?)
        data.containers = (ContainerList.parse(map['containers']) unless map['containers'].nil?)
        return data
      end
    end

    class ContainerList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Container.parse(value) unless value.nil?
        end
        data
      end
    end

    class Container
      def self.parse(map)
        data = Types::Container.new
        data.region = map['region']
        data.image_uris = (StringList.parse(map['imageUris']) unless map['imageUris'].nil?)
        return data
      end
    end

    class AmiList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Ami.parse(value) unless value.nil?
        end
        data
      end
    end

    class Ami
      def self.parse(map)
        data = Types::Ami.new
        data.region = map['region']
        data.image = map['image']
        data.name = map['name']
        data.description = map['description']
        data.state = (ImageState.parse(map['state']) unless map['state'].nil?)
        data.account_id = map['accountId']
        return data
      end
    end

    class ImageState
      def self.parse(map)
        data = Types::ImageState.new
        data.status = map['status']
        data.reason = map['reason']
        return data
      end
    end

    class ImageTestsConfiguration
      def self.parse(map)
        data = Types::ImageTestsConfiguration.new
        data.image_tests_enabled = map['imageTestsEnabled']
        data.timeout_minutes = map['timeoutMinutes']
        return data
      end
    end

    class InfrastructureConfiguration
      def self.parse(map)
        data = Types::InfrastructureConfiguration.new
        data.arn = map['arn']
        data.name = map['name']
        data.description = map['description']
        data.instance_types = (InstanceTypeList.parse(map['instanceTypes']) unless map['instanceTypes'].nil?)
        data.instance_profile_name = map['instanceProfileName']
        data.security_group_ids = (SecurityGroupIds.parse(map['securityGroupIds']) unless map['securityGroupIds'].nil?)
        data.subnet_id = map['subnetId']
        data.logging = (Logging.parse(map['logging']) unless map['logging'].nil?)
        data.key_pair = map['keyPair']
        data.terminate_instance_on_failure = map['terminateInstanceOnFailure']
        data.sns_topic_arn = map['snsTopicArn']
        data.date_created = map['dateCreated']
        data.date_updated = map['dateUpdated']
        data.resource_tags = (ResourceTagMap.parse(map['resourceTags']) unless map['resourceTags'].nil?)
        data.instance_metadata_options = (InstanceMetadataOptions.parse(map['instanceMetadataOptions']) unless map['instanceMetadataOptions'].nil?)
        data.tags = (TagMap.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    class InstanceMetadataOptions
      def self.parse(map)
        data = Types::InstanceMetadataOptions.new
        data.http_tokens = map['httpTokens']
        data.http_put_response_hop_limit = map['httpPutResponseHopLimit']
        return data
      end
    end

    class ResourceTagMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class Logging
      def self.parse(map)
        data = Types::Logging.new
        data.s3_logs = (S3Logs.parse(map['s3Logs']) unless map['s3Logs'].nil?)
        return data
      end
    end

    class S3Logs
      def self.parse(map)
        data = Types::S3Logs.new
        data.s3_bucket_name = map['s3BucketName']
        data.s3_key_prefix = map['s3KeyPrefix']
        return data
      end
    end

    class SecurityGroupIds
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class InstanceTypeList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class ImageRecipe
      def self.parse(map)
        data = Types::ImageRecipe.new
        data.arn = map['arn']
        data.type = map['type']
        data.name = map['name']
        data.description = map['description']
        data.platform = map['platform']
        data.owner = map['owner']
        data.version = map['version']
        data.components = (ComponentConfigurationList.parse(map['components']) unless map['components'].nil?)
        data.parent_image = map['parentImage']
        data.block_device_mappings = (InstanceBlockDeviceMappings.parse(map['blockDeviceMappings']) unless map['blockDeviceMappings'].nil?)
        data.date_created = map['dateCreated']
        data.tags = (TagMap.parse(map['tags']) unless map['tags'].nil?)
        data.working_directory = map['workingDirectory']
        data.additional_instance_configuration = (AdditionalInstanceConfiguration.parse(map['additionalInstanceConfiguration']) unless map['additionalInstanceConfiguration'].nil?)
        return data
      end
    end

    class AdditionalInstanceConfiguration
      def self.parse(map)
        data = Types::AdditionalInstanceConfiguration.new
        data.systems_manager_agent = (SystemsManagerAgent.parse(map['systemsManagerAgent']) unless map['systemsManagerAgent'].nil?)
        data.user_data_override = map['userDataOverride']
        return data
      end
    end

    class SystemsManagerAgent
      def self.parse(map)
        data = Types::SystemsManagerAgent.new
        data.uninstall_after_build = map['uninstallAfterBuild']
        return data
      end
    end

    # Operation Parser for GetImagePipeline
    class GetImagePipeline
      def self.parse(http_resp)
        data = Types::GetImagePipelineOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.request_id = map['requestId']
        data.image_pipeline = (ImagePipeline.parse(map['imagePipeline']) unless map['imagePipeline'].nil?)
        data
      end
    end

    class ImagePipeline
      def self.parse(map)
        data = Types::ImagePipeline.new
        data.arn = map['arn']
        data.name = map['name']
        data.description = map['description']
        data.platform = map['platform']
        data.enhanced_image_metadata_enabled = map['enhancedImageMetadataEnabled']
        data.image_recipe_arn = map['imageRecipeArn']
        data.container_recipe_arn = map['containerRecipeArn']
        data.infrastructure_configuration_arn = map['infrastructureConfigurationArn']
        data.distribution_configuration_arn = map['distributionConfigurationArn']
        data.image_tests_configuration = (ImageTestsConfiguration.parse(map['imageTestsConfiguration']) unless map['imageTestsConfiguration'].nil?)
        data.schedule = (Schedule.parse(map['schedule']) unless map['schedule'].nil?)
        data.status = map['status']
        data.date_created = map['dateCreated']
        data.date_updated = map['dateUpdated']
        data.date_last_run = map['dateLastRun']
        data.date_next_run = map['dateNextRun']
        data.tags = (TagMap.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    class Schedule
      def self.parse(map)
        data = Types::Schedule.new
        data.schedule_expression = map['scheduleExpression']
        data.timezone = map['timezone']
        data.pipeline_execution_start_condition = map['pipelineExecutionStartCondition']
        return data
      end
    end

    # Operation Parser for GetImagePolicy
    class GetImagePolicy
      def self.parse(http_resp)
        data = Types::GetImagePolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.request_id = map['requestId']
        data.policy = map['policy']
        data
      end
    end

    # Operation Parser for GetImageRecipe
    class GetImageRecipe
      def self.parse(http_resp)
        data = Types::GetImageRecipeOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.request_id = map['requestId']
        data.image_recipe = (ImageRecipe.parse(map['imageRecipe']) unless map['imageRecipe'].nil?)
        data
      end
    end

    # Operation Parser for GetImageRecipePolicy
    class GetImageRecipePolicy
      def self.parse(http_resp)
        data = Types::GetImageRecipePolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.request_id = map['requestId']
        data.policy = map['policy']
        data
      end
    end

    # Operation Parser for GetInfrastructureConfiguration
    class GetInfrastructureConfiguration
      def self.parse(http_resp)
        data = Types::GetInfrastructureConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.request_id = map['requestId']
        data.infrastructure_configuration = (InfrastructureConfiguration.parse(map['infrastructureConfiguration']) unless map['infrastructureConfiguration'].nil?)
        data
      end
    end

    # Operation Parser for ImportComponent
    class ImportComponent
      def self.parse(http_resp)
        data = Types::ImportComponentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.request_id = map['requestId']
        data.client_token = map['clientToken']
        data.component_build_version_arn = map['componentBuildVersionArn']
        data
      end
    end

    # Operation Parser for ImportVmImage
    class ImportVmImage
      def self.parse(http_resp)
        data = Types::ImportVmImageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.request_id = map['requestId']
        data.image_arn = map['imageArn']
        data.client_token = map['clientToken']
        data
      end
    end

    # Operation Parser for ListComponentBuildVersions
    class ListComponentBuildVersions
      def self.parse(http_resp)
        data = Types::ListComponentBuildVersionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.request_id = map['requestId']
        data.component_summary_list = (ComponentSummaryList.parse(map['componentSummaryList']) unless map['componentSummaryList'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ComponentSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ComponentSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ComponentSummary
      def self.parse(map)
        data = Types::ComponentSummary.new
        data.arn = map['arn']
        data.name = map['name']
        data.version = map['version']
        data.platform = map['platform']
        data.supported_os_versions = (OsVersionList.parse(map['supportedOsVersions']) unless map['supportedOsVersions'].nil?)
        data.state = (ComponentState.parse(map['state']) unless map['state'].nil?)
        data.type = map['type']
        data.owner = map['owner']
        data.description = map['description']
        data.change_description = map['changeDescription']
        data.date_created = map['dateCreated']
        data.tags = (TagMap.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    # Error Parser for InvalidPaginationTokenException
    class InvalidPaginationTokenException
      def self.parse(http_resp)
        data = Types::InvalidPaginationTokenException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for ListComponents
    class ListComponents
      def self.parse(http_resp)
        data = Types::ListComponentsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.request_id = map['requestId']
        data.component_version_list = (ComponentVersionList.parse(map['componentVersionList']) unless map['componentVersionList'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ComponentVersionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ComponentVersion.parse(value) unless value.nil?
        end
        data
      end
    end

    class ComponentVersion
      def self.parse(map)
        data = Types::ComponentVersion.new
        data.arn = map['arn']
        data.name = map['name']
        data.version = map['version']
        data.description = map['description']
        data.platform = map['platform']
        data.supported_os_versions = (OsVersionList.parse(map['supportedOsVersions']) unless map['supportedOsVersions'].nil?)
        data.type = map['type']
        data.owner = map['owner']
        data.date_created = map['dateCreated']
        return data
      end
    end

    # Operation Parser for ListContainerRecipes
    class ListContainerRecipes
      def self.parse(http_resp)
        data = Types::ListContainerRecipesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.request_id = map['requestId']
        data.container_recipe_summary_list = (ContainerRecipeSummaryList.parse(map['containerRecipeSummaryList']) unless map['containerRecipeSummaryList'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ContainerRecipeSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ContainerRecipeSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ContainerRecipeSummary
      def self.parse(map)
        data = Types::ContainerRecipeSummary.new
        data.arn = map['arn']
        data.container_type = map['containerType']
        data.name = map['name']
        data.platform = map['platform']
        data.owner = map['owner']
        data.parent_image = map['parentImage']
        data.date_created = map['dateCreated']
        data.tags = (TagMap.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    # Operation Parser for ListDistributionConfigurations
    class ListDistributionConfigurations
      def self.parse(http_resp)
        data = Types::ListDistributionConfigurationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.request_id = map['requestId']
        data.distribution_configuration_summary_list = (DistributionConfigurationSummaryList.parse(map['distributionConfigurationSummaryList']) unless map['distributionConfigurationSummaryList'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class DistributionConfigurationSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << DistributionConfigurationSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class DistributionConfigurationSummary
      def self.parse(map)
        data = Types::DistributionConfigurationSummary.new
        data.arn = map['arn']
        data.name = map['name']
        data.description = map['description']
        data.date_created = map['dateCreated']
        data.date_updated = map['dateUpdated']
        data.tags = (TagMap.parse(map['tags']) unless map['tags'].nil?)
        data.regions = (RegionList.parse(map['regions']) unless map['regions'].nil?)
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

    # Operation Parser for ListImageBuildVersions
    class ListImageBuildVersions
      def self.parse(http_resp)
        data = Types::ListImageBuildVersionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.request_id = map['requestId']
        data.image_summary_list = (ImageSummaryList.parse(map['imageSummaryList']) unless map['imageSummaryList'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ImageSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ImageSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ImageSummary
      def self.parse(map)
        data = Types::ImageSummary.new
        data.arn = map['arn']
        data.name = map['name']
        data.type = map['type']
        data.version = map['version']
        data.platform = map['platform']
        data.os_version = map['osVersion']
        data.state = (ImageState.parse(map['state']) unless map['state'].nil?)
        data.owner = map['owner']
        data.date_created = map['dateCreated']
        data.output_resources = (OutputResources.parse(map['outputResources']) unless map['outputResources'].nil?)
        data.tags = (TagMap.parse(map['tags']) unless map['tags'].nil?)
        data.build_type = map['buildType']
        return data
      end
    end

    # Operation Parser for ListImagePackages
    class ListImagePackages
      def self.parse(http_resp)
        data = Types::ListImagePackagesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.request_id = map['requestId']
        data.image_package_list = (ImagePackageList.parse(map['imagePackageList']) unless map['imagePackageList'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ImagePackageList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ImagePackage.parse(value) unless value.nil?
        end
        data
      end
    end

    class ImagePackage
      def self.parse(map)
        data = Types::ImagePackage.new
        data.package_name = map['packageName']
        data.package_version = map['packageVersion']
        return data
      end
    end

    # Operation Parser for ListImagePipelineImages
    class ListImagePipelineImages
      def self.parse(http_resp)
        data = Types::ListImagePipelineImagesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.request_id = map['requestId']
        data.image_summary_list = (ImageSummaryList.parse(map['imageSummaryList']) unless map['imageSummaryList'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for ListImagePipelines
    class ListImagePipelines
      def self.parse(http_resp)
        data = Types::ListImagePipelinesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.request_id = map['requestId']
        data.image_pipeline_list = (ImagePipelineList.parse(map['imagePipelineList']) unless map['imagePipelineList'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ImagePipelineList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ImagePipeline.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListImageRecipes
    class ListImageRecipes
      def self.parse(http_resp)
        data = Types::ListImageRecipesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.request_id = map['requestId']
        data.image_recipe_summary_list = (ImageRecipeSummaryList.parse(map['imageRecipeSummaryList']) unless map['imageRecipeSummaryList'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ImageRecipeSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ImageRecipeSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ImageRecipeSummary
      def self.parse(map)
        data = Types::ImageRecipeSummary.new
        data.arn = map['arn']
        data.name = map['name']
        data.platform = map['platform']
        data.owner = map['owner']
        data.parent_image = map['parentImage']
        data.date_created = map['dateCreated']
        data.tags = (TagMap.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    # Operation Parser for ListImages
    class ListImages
      def self.parse(http_resp)
        data = Types::ListImagesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.request_id = map['requestId']
        data.image_version_list = (ImageVersionList.parse(map['imageVersionList']) unless map['imageVersionList'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ImageVersionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ImageVersion.parse(value) unless value.nil?
        end
        data
      end
    end

    class ImageVersion
      def self.parse(map)
        data = Types::ImageVersion.new
        data.arn = map['arn']
        data.name = map['name']
        data.type = map['type']
        data.version = map['version']
        data.platform = map['platform']
        data.os_version = map['osVersion']
        data.owner = map['owner']
        data.date_created = map['dateCreated']
        data.build_type = map['buildType']
        return data
      end
    end

    # Operation Parser for ListInfrastructureConfigurations
    class ListInfrastructureConfigurations
      def self.parse(http_resp)
        data = Types::ListInfrastructureConfigurationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.request_id = map['requestId']
        data.infrastructure_configuration_summary_list = (InfrastructureConfigurationSummaryList.parse(map['infrastructureConfigurationSummaryList']) unless map['infrastructureConfigurationSummaryList'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class InfrastructureConfigurationSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << InfrastructureConfigurationSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class InfrastructureConfigurationSummary
      def self.parse(map)
        data = Types::InfrastructureConfigurationSummary.new
        data.arn = map['arn']
        data.name = map['name']
        data.description = map['description']
        data.date_created = map['dateCreated']
        data.date_updated = map['dateUpdated']
        data.resource_tags = (ResourceTagMap.parse(map['resourceTags']) unless map['resourceTags'].nil?)
        data.tags = (TagMap.parse(map['tags']) unless map['tags'].nil?)
        data.instance_types = (InstanceTypeList.parse(map['instanceTypes']) unless map['instanceTypes'].nil?)
        data.instance_profile_name = map['instanceProfileName']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (TagMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Error Parser for InvalidParameterException
    class InvalidParameterException
      def self.parse(http_resp)
        data = Types::InvalidParameterException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for PutComponentPolicy
    class PutComponentPolicy
      def self.parse(http_resp)
        data = Types::PutComponentPolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.request_id = map['requestId']
        data.component_arn = map['componentArn']
        data
      end
    end

    # Error Parser for InvalidParameterValueException
    class InvalidParameterValueException
      def self.parse(http_resp)
        data = Types::InvalidParameterValueException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for PutContainerRecipePolicy
    class PutContainerRecipePolicy
      def self.parse(http_resp)
        data = Types::PutContainerRecipePolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.request_id = map['requestId']
        data.container_recipe_arn = map['containerRecipeArn']
        data
      end
    end

    # Operation Parser for PutImagePolicy
    class PutImagePolicy
      def self.parse(http_resp)
        data = Types::PutImagePolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.request_id = map['requestId']
        data.image_arn = map['imageArn']
        data
      end
    end

    # Operation Parser for PutImageRecipePolicy
    class PutImageRecipePolicy
      def self.parse(http_resp)
        data = Types::PutImageRecipePolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.request_id = map['requestId']
        data.image_recipe_arn = map['imageRecipeArn']
        data
      end
    end

    # Operation Parser for StartImagePipelineExecution
    class StartImagePipelineExecution
      def self.parse(http_resp)
        data = Types::StartImagePipelineExecutionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.request_id = map['requestId']
        data.client_token = map['clientToken']
        data.image_build_version_arn = map['imageBuildVersionArn']
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

    # Operation Parser for UpdateDistributionConfiguration
    class UpdateDistributionConfiguration
      def self.parse(http_resp)
        data = Types::UpdateDistributionConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.request_id = map['requestId']
        data.client_token = map['clientToken']
        data.distribution_configuration_arn = map['distributionConfigurationArn']
        data
      end
    end

    # Operation Parser for UpdateImagePipeline
    class UpdateImagePipeline
      def self.parse(http_resp)
        data = Types::UpdateImagePipelineOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.request_id = map['requestId']
        data.client_token = map['clientToken']
        data.image_pipeline_arn = map['imagePipelineArn']
        data
      end
    end

    # Operation Parser for UpdateInfrastructureConfiguration
    class UpdateInfrastructureConfiguration
      def self.parse(http_resp)
        data = Types::UpdateInfrastructureConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.request_id = map['requestId']
        data.client_token = map['clientToken']
        data.infrastructure_configuration_arn = map['infrastructureConfigurationArn']
        data
      end
    end
  end
end
