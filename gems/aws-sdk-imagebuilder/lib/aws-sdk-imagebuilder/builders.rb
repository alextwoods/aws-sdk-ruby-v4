# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Imagebuilder
  module Builders

    # Operation Builder for CancelImageCreation
    class CancelImageCreation
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/CancelImageCreation')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['imageBuildVersionArn'] = input[:image_build_version_arn] unless input[:image_build_version_arn].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateComponent
    class CreateComponent
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/CreateComponent')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['semanticVersion'] = input[:semantic_version] unless input[:semantic_version].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['changeDescription'] = input[:change_description] unless input[:change_description].nil?
        data['platform'] = input[:platform] unless input[:platform].nil?
        data['supportedOsVersions'] = Builders::OsVersionList.build(input[:supported_os_versions]) unless input[:supported_os_versions].nil?
        data['data'] = input[:data] unless input[:data].nil?
        data['uri'] = input[:uri] unless input[:uri].nil?
        data['kmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for TagMap
    class TagMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Builder for OsVersionList
    class OsVersionList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateContainerRecipe
    class CreateContainerRecipe
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/CreateContainerRecipe')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['containerType'] = input[:container_type] unless input[:container_type].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['semanticVersion'] = input[:semantic_version] unless input[:semantic_version].nil?
        data['components'] = Builders::ComponentConfigurationList.build(input[:components]) unless input[:components].nil?
        data['instanceConfiguration'] = Builders::InstanceConfiguration.build(input[:instance_configuration]) unless input[:instance_configuration].nil?
        data['dockerfileTemplateData'] = input[:dockerfile_template_data] unless input[:dockerfile_template_data].nil?
        data['dockerfileTemplateUri'] = input[:dockerfile_template_uri] unless input[:dockerfile_template_uri].nil?
        data['platformOverride'] = input[:platform_override] unless input[:platform_override].nil?
        data['imageOsVersionOverride'] = input[:image_os_version_override] unless input[:image_os_version_override].nil?
        data['parentImage'] = input[:parent_image] unless input[:parent_image].nil?
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        data['workingDirectory'] = input[:working_directory] unless input[:working_directory].nil?
        data['targetRepository'] = Builders::TargetContainerRepository.build(input[:target_repository]) unless input[:target_repository].nil?
        data['kmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for TargetContainerRepository
    class TargetContainerRepository
      def self.build(input)
        data = {}
        data['service'] = input[:service] unless input[:service].nil?
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data
      end
    end

    # Structure Builder for InstanceConfiguration
    class InstanceConfiguration
      def self.build(input)
        data = {}
        data['image'] = input[:image] unless input[:image].nil?
        data['blockDeviceMappings'] = Builders::InstanceBlockDeviceMappings.build(input[:block_device_mappings]) unless input[:block_device_mappings].nil?
        data
      end
    end

    # List Builder for InstanceBlockDeviceMappings
    class InstanceBlockDeviceMappings
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::InstanceBlockDeviceMapping.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for InstanceBlockDeviceMapping
    class InstanceBlockDeviceMapping
      def self.build(input)
        data = {}
        data['deviceName'] = input[:device_name] unless input[:device_name].nil?
        data['ebs'] = Builders::EbsInstanceBlockDeviceSpecification.build(input[:ebs]) unless input[:ebs].nil?
        data['virtualName'] = input[:virtual_name] unless input[:virtual_name].nil?
        data['noDevice'] = input[:no_device] unless input[:no_device].nil?
        data
      end
    end

    # Structure Builder for EbsInstanceBlockDeviceSpecification
    class EbsInstanceBlockDeviceSpecification
      def self.build(input)
        data = {}
        data['encrypted'] = input[:encrypted] unless input[:encrypted].nil?
        data['deleteOnTermination'] = input[:delete_on_termination] unless input[:delete_on_termination].nil?
        data['iops'] = input[:iops] unless input[:iops].nil?
        data['kmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data['snapshotId'] = input[:snapshot_id] unless input[:snapshot_id].nil?
        data['volumeSize'] = input[:volume_size] unless input[:volume_size].nil?
        data['volumeType'] = input[:volume_type] unless input[:volume_type].nil?
        data['throughput'] = input[:throughput] unless input[:throughput].nil?
        data
      end
    end

    # List Builder for ComponentConfigurationList
    class ComponentConfigurationList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ComponentConfiguration.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ComponentConfiguration
    class ComponentConfiguration
      def self.build(input)
        data = {}
        data['componentArn'] = input[:component_arn] unless input[:component_arn].nil?
        data['parameters'] = Builders::ComponentParameterList.build(input[:parameters]) unless input[:parameters].nil?
        data
      end
    end

    # List Builder for ComponentParameterList
    class ComponentParameterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ComponentParameter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ComponentParameter
    class ComponentParameter
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['value'] = Builders::ComponentParameterValueList.build(input[:value]) unless input[:value].nil?
        data
      end
    end

    # List Builder for ComponentParameterValueList
    class ComponentParameterValueList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateDistributionConfiguration
    class CreateDistributionConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/CreateDistributionConfiguration')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['distributions'] = Builders::DistributionList.build(input[:distributions]) unless input[:distributions].nil?
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for DistributionList
    class DistributionList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Distribution.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Distribution
    class Distribution
      def self.build(input)
        data = {}
        data['region'] = input[:region] unless input[:region].nil?
        data['amiDistributionConfiguration'] = Builders::AmiDistributionConfiguration.build(input[:ami_distribution_configuration]) unless input[:ami_distribution_configuration].nil?
        data['containerDistributionConfiguration'] = Builders::ContainerDistributionConfiguration.build(input[:container_distribution_configuration]) unless input[:container_distribution_configuration].nil?
        data['licenseConfigurationArns'] = Builders::LicenseConfigurationArnList.build(input[:license_configuration_arns]) unless input[:license_configuration_arns].nil?
        data['launchTemplateConfigurations'] = Builders::LaunchTemplateConfigurationList.build(input[:launch_template_configurations]) unless input[:launch_template_configurations].nil?
        data['s3ExportConfiguration'] = Builders::S3ExportConfiguration.build(input[:s3_export_configuration]) unless input[:s3_export_configuration].nil?
        data['fastLaunchConfigurations'] = Builders::FastLaunchConfigurationList.build(input[:fast_launch_configurations]) unless input[:fast_launch_configurations].nil?
        data
      end
    end

    # List Builder for FastLaunchConfigurationList
    class FastLaunchConfigurationList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::FastLaunchConfiguration.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for FastLaunchConfiguration
    class FastLaunchConfiguration
      def self.build(input)
        data = {}
        data['enabled'] = input[:enabled] unless input[:enabled].nil?
        data['snapshotConfiguration'] = Builders::FastLaunchSnapshotConfiguration.build(input[:snapshot_configuration]) unless input[:snapshot_configuration].nil?
        data['maxParallelLaunches'] = input[:max_parallel_launches] unless input[:max_parallel_launches].nil?
        data['launchTemplate'] = Builders::FastLaunchLaunchTemplateSpecification.build(input[:launch_template]) unless input[:launch_template].nil?
        data['accountId'] = input[:account_id] unless input[:account_id].nil?
        data
      end
    end

    # Structure Builder for FastLaunchLaunchTemplateSpecification
    class FastLaunchLaunchTemplateSpecification
      def self.build(input)
        data = {}
        data['launchTemplateId'] = input[:launch_template_id] unless input[:launch_template_id].nil?
        data['launchTemplateName'] = input[:launch_template_name] unless input[:launch_template_name].nil?
        data['launchTemplateVersion'] = input[:launch_template_version] unless input[:launch_template_version].nil?
        data
      end
    end

    # Structure Builder for FastLaunchSnapshotConfiguration
    class FastLaunchSnapshotConfiguration
      def self.build(input)
        data = {}
        data['targetResourceCount'] = input[:target_resource_count] unless input[:target_resource_count].nil?
        data
      end
    end

    # Structure Builder for S3ExportConfiguration
    class S3ExportConfiguration
      def self.build(input)
        data = {}
        data['roleName'] = input[:role_name] unless input[:role_name].nil?
        data['diskImageFormat'] = input[:disk_image_format] unless input[:disk_image_format].nil?
        data['s3Bucket'] = input[:s3_bucket] unless input[:s3_bucket].nil?
        data['s3Prefix'] = input[:s3_prefix] unless input[:s3_prefix].nil?
        data
      end
    end

    # List Builder for LaunchTemplateConfigurationList
    class LaunchTemplateConfigurationList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::LaunchTemplateConfiguration.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for LaunchTemplateConfiguration
    class LaunchTemplateConfiguration
      def self.build(input)
        data = {}
        data['launchTemplateId'] = input[:launch_template_id] unless input[:launch_template_id].nil?
        data['accountId'] = input[:account_id] unless input[:account_id].nil?
        data['setDefaultVersion'] = input[:set_default_version] unless input[:set_default_version].nil?
        data
      end
    end

    # List Builder for LicenseConfigurationArnList
    class LicenseConfigurationArnList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ContainerDistributionConfiguration
    class ContainerDistributionConfiguration
      def self.build(input)
        data = {}
        data['description'] = input[:description] unless input[:description].nil?
        data['containerTags'] = Builders::StringList.build(input[:container_tags]) unless input[:container_tags].nil?
        data['targetRepository'] = Builders::TargetContainerRepository.build(input[:target_repository]) unless input[:target_repository].nil?
        data
      end
    end

    # List Builder for StringList
    class StringList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AmiDistributionConfiguration
    class AmiDistributionConfiguration
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['targetAccountIds'] = Builders::AccountList.build(input[:target_account_ids]) unless input[:target_account_ids].nil?
        data['amiTags'] = Builders::TagMap.build(input[:ami_tags]) unless input[:ami_tags].nil?
        data['kmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data['launchPermission'] = Builders::LaunchPermissionConfiguration.build(input[:launch_permission]) unless input[:launch_permission].nil?
        data
      end
    end

    # Structure Builder for LaunchPermissionConfiguration
    class LaunchPermissionConfiguration
      def self.build(input)
        data = {}
        data['userIds'] = Builders::AccountList.build(input[:user_ids]) unless input[:user_ids].nil?
        data['userGroups'] = Builders::StringList.build(input[:user_groups]) unless input[:user_groups].nil?
        data['organizationArns'] = Builders::OrganizationArnList.build(input[:organization_arns]) unless input[:organization_arns].nil?
        data['organizationalUnitArns'] = Builders::OrganizationalUnitArnList.build(input[:organizational_unit_arns]) unless input[:organizational_unit_arns].nil?
        data
      end
    end

    # List Builder for OrganizationalUnitArnList
    class OrganizationalUnitArnList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for OrganizationArnList
    class OrganizationArnList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for AccountList
    class AccountList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateImage
    class CreateImage
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/CreateImage')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['imageRecipeArn'] = input[:image_recipe_arn] unless input[:image_recipe_arn].nil?
        data['containerRecipeArn'] = input[:container_recipe_arn] unless input[:container_recipe_arn].nil?
        data['distributionConfigurationArn'] = input[:distribution_configuration_arn] unless input[:distribution_configuration_arn].nil?
        data['infrastructureConfigurationArn'] = input[:infrastructure_configuration_arn] unless input[:infrastructure_configuration_arn].nil?
        data['imageTestsConfiguration'] = Builders::ImageTestsConfiguration.build(input[:image_tests_configuration]) unless input[:image_tests_configuration].nil?
        data['enhancedImageMetadataEnabled'] = input[:enhanced_image_metadata_enabled] unless input[:enhanced_image_metadata_enabled].nil?
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ImageTestsConfiguration
    class ImageTestsConfiguration
      def self.build(input)
        data = {}
        data['imageTestsEnabled'] = input[:image_tests_enabled] unless input[:image_tests_enabled].nil?
        data['timeoutMinutes'] = input[:timeout_minutes] unless input[:timeout_minutes].nil?
        data
      end
    end

    # Operation Builder for CreateImagePipeline
    class CreateImagePipeline
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/CreateImagePipeline')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['imageRecipeArn'] = input[:image_recipe_arn] unless input[:image_recipe_arn].nil?
        data['containerRecipeArn'] = input[:container_recipe_arn] unless input[:container_recipe_arn].nil?
        data['infrastructureConfigurationArn'] = input[:infrastructure_configuration_arn] unless input[:infrastructure_configuration_arn].nil?
        data['distributionConfigurationArn'] = input[:distribution_configuration_arn] unless input[:distribution_configuration_arn].nil?
        data['imageTestsConfiguration'] = Builders::ImageTestsConfiguration.build(input[:image_tests_configuration]) unless input[:image_tests_configuration].nil?
        data['enhancedImageMetadataEnabled'] = input[:enhanced_image_metadata_enabled] unless input[:enhanced_image_metadata_enabled].nil?
        data['schedule'] = Builders::Schedule.build(input[:schedule]) unless input[:schedule].nil?
        data['status'] = input[:status] unless input[:status].nil?
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for Schedule
    class Schedule
      def self.build(input)
        data = {}
        data['scheduleExpression'] = input[:schedule_expression] unless input[:schedule_expression].nil?
        data['timezone'] = input[:timezone] unless input[:timezone].nil?
        data['pipelineExecutionStartCondition'] = input[:pipeline_execution_start_condition] unless input[:pipeline_execution_start_condition].nil?
        data
      end
    end

    # Operation Builder for CreateImageRecipe
    class CreateImageRecipe
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/CreateImageRecipe')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['semanticVersion'] = input[:semantic_version] unless input[:semantic_version].nil?
        data['components'] = Builders::ComponentConfigurationList.build(input[:components]) unless input[:components].nil?
        data['parentImage'] = input[:parent_image] unless input[:parent_image].nil?
        data['blockDeviceMappings'] = Builders::InstanceBlockDeviceMappings.build(input[:block_device_mappings]) unless input[:block_device_mappings].nil?
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        data['workingDirectory'] = input[:working_directory] unless input[:working_directory].nil?
        data['additionalInstanceConfiguration'] = Builders::AdditionalInstanceConfiguration.build(input[:additional_instance_configuration]) unless input[:additional_instance_configuration].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for AdditionalInstanceConfiguration
    class AdditionalInstanceConfiguration
      def self.build(input)
        data = {}
        data['systemsManagerAgent'] = Builders::SystemsManagerAgent.build(input[:systems_manager_agent]) unless input[:systems_manager_agent].nil?
        data['userDataOverride'] = input[:user_data_override] unless input[:user_data_override].nil?
        data
      end
    end

    # Structure Builder for SystemsManagerAgent
    class SystemsManagerAgent
      def self.build(input)
        data = {}
        data['uninstallAfterBuild'] = input[:uninstall_after_build] unless input[:uninstall_after_build].nil?
        data
      end
    end

    # Operation Builder for CreateInfrastructureConfiguration
    class CreateInfrastructureConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/CreateInfrastructureConfiguration')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['instanceTypes'] = Builders::InstanceTypeList.build(input[:instance_types]) unless input[:instance_types].nil?
        data['instanceProfileName'] = input[:instance_profile_name] unless input[:instance_profile_name].nil?
        data['securityGroupIds'] = Builders::SecurityGroupIds.build(input[:security_group_ids]) unless input[:security_group_ids].nil?
        data['subnetId'] = input[:subnet_id] unless input[:subnet_id].nil?
        data['logging'] = Builders::Logging.build(input[:logging]) unless input[:logging].nil?
        data['keyPair'] = input[:key_pair] unless input[:key_pair].nil?
        data['terminateInstanceOnFailure'] = input[:terminate_instance_on_failure] unless input[:terminate_instance_on_failure].nil?
        data['snsTopicArn'] = input[:sns_topic_arn] unless input[:sns_topic_arn].nil?
        data['resourceTags'] = Builders::ResourceTagMap.build(input[:resource_tags]) unless input[:resource_tags].nil?
        data['instanceMetadataOptions'] = Builders::InstanceMetadataOptions.build(input[:instance_metadata_options]) unless input[:instance_metadata_options].nil?
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for InstanceMetadataOptions
    class InstanceMetadataOptions
      def self.build(input)
        data = {}
        data['httpTokens'] = input[:http_tokens] unless input[:http_tokens].nil?
        data['httpPutResponseHopLimit'] = input[:http_put_response_hop_limit] unless input[:http_put_response_hop_limit].nil?
        data
      end
    end

    # Map Builder for ResourceTagMap
    class ResourceTagMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for Logging
    class Logging
      def self.build(input)
        data = {}
        data['s3Logs'] = Builders::S3Logs.build(input[:s3_logs]) unless input[:s3_logs].nil?
        data
      end
    end

    # Structure Builder for S3Logs
    class S3Logs
      def self.build(input)
        data = {}
        data['s3BucketName'] = input[:s3_bucket_name] unless input[:s3_bucket_name].nil?
        data['s3KeyPrefix'] = input[:s3_key_prefix] unless input[:s3_key_prefix].nil?
        data
      end
    end

    # List Builder for SecurityGroupIds
    class SecurityGroupIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for InstanceTypeList
    class InstanceTypeList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DeleteComponent
    class DeleteComponent
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        http_req.append_path('/DeleteComponent')
        params = Hearth::Query::ParamList.new
        params['componentBuildVersionArn'] = input[:component_build_version_arn].to_s unless input[:component_build_version_arn].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteContainerRecipe
    class DeleteContainerRecipe
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        http_req.append_path('/DeleteContainerRecipe')
        params = Hearth::Query::ParamList.new
        params['containerRecipeArn'] = input[:container_recipe_arn].to_s unless input[:container_recipe_arn].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteDistributionConfiguration
    class DeleteDistributionConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        http_req.append_path('/DeleteDistributionConfiguration')
        params = Hearth::Query::ParamList.new
        params['distributionConfigurationArn'] = input[:distribution_configuration_arn].to_s unless input[:distribution_configuration_arn].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteImage
    class DeleteImage
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        http_req.append_path('/DeleteImage')
        params = Hearth::Query::ParamList.new
        params['imageBuildVersionArn'] = input[:image_build_version_arn].to_s unless input[:image_build_version_arn].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteImagePipeline
    class DeleteImagePipeline
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        http_req.append_path('/DeleteImagePipeline')
        params = Hearth::Query::ParamList.new
        params['imagePipelineArn'] = input[:image_pipeline_arn].to_s unless input[:image_pipeline_arn].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteImageRecipe
    class DeleteImageRecipe
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        http_req.append_path('/DeleteImageRecipe')
        params = Hearth::Query::ParamList.new
        params['imageRecipeArn'] = input[:image_recipe_arn].to_s unless input[:image_recipe_arn].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteInfrastructureConfiguration
    class DeleteInfrastructureConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        http_req.append_path('/DeleteInfrastructureConfiguration')
        params = Hearth::Query::ParamList.new
        params['infrastructureConfigurationArn'] = input[:infrastructure_configuration_arn].to_s unless input[:infrastructure_configuration_arn].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetComponent
    class GetComponent
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/GetComponent')
        params = Hearth::Query::ParamList.new
        params['componentBuildVersionArn'] = input[:component_build_version_arn].to_s unless input[:component_build_version_arn].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetComponentPolicy
    class GetComponentPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/GetComponentPolicy')
        params = Hearth::Query::ParamList.new
        params['componentArn'] = input[:component_arn].to_s unless input[:component_arn].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetContainerRecipe
    class GetContainerRecipe
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/GetContainerRecipe')
        params = Hearth::Query::ParamList.new
        params['containerRecipeArn'] = input[:container_recipe_arn].to_s unless input[:container_recipe_arn].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetContainerRecipePolicy
    class GetContainerRecipePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/GetContainerRecipePolicy')
        params = Hearth::Query::ParamList.new
        params['containerRecipeArn'] = input[:container_recipe_arn].to_s unless input[:container_recipe_arn].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetDistributionConfiguration
    class GetDistributionConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/GetDistributionConfiguration')
        params = Hearth::Query::ParamList.new
        params['distributionConfigurationArn'] = input[:distribution_configuration_arn].to_s unless input[:distribution_configuration_arn].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetImage
    class GetImage
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/GetImage')
        params = Hearth::Query::ParamList.new
        params['imageBuildVersionArn'] = input[:image_build_version_arn].to_s unless input[:image_build_version_arn].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetImagePipeline
    class GetImagePipeline
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/GetImagePipeline')
        params = Hearth::Query::ParamList.new
        params['imagePipelineArn'] = input[:image_pipeline_arn].to_s unless input[:image_pipeline_arn].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetImagePolicy
    class GetImagePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/GetImagePolicy')
        params = Hearth::Query::ParamList.new
        params['imageArn'] = input[:image_arn].to_s unless input[:image_arn].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetImageRecipe
    class GetImageRecipe
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/GetImageRecipe')
        params = Hearth::Query::ParamList.new
        params['imageRecipeArn'] = input[:image_recipe_arn].to_s unless input[:image_recipe_arn].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetImageRecipePolicy
    class GetImageRecipePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/GetImageRecipePolicy')
        params = Hearth::Query::ParamList.new
        params['imageRecipeArn'] = input[:image_recipe_arn].to_s unless input[:image_recipe_arn].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetInfrastructureConfiguration
    class GetInfrastructureConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/GetInfrastructureConfiguration')
        params = Hearth::Query::ParamList.new
        params['infrastructureConfigurationArn'] = input[:infrastructure_configuration_arn].to_s unless input[:infrastructure_configuration_arn].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ImportComponent
    class ImportComponent
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/ImportComponent')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['semanticVersion'] = input[:semantic_version] unless input[:semantic_version].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['changeDescription'] = input[:change_description] unless input[:change_description].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data['format'] = input[:format] unless input[:format].nil?
        data['platform'] = input[:platform] unless input[:platform].nil?
        data['data'] = input[:data] unless input[:data].nil?
        data['uri'] = input[:uri] unless input[:uri].nil?
        data['kmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ImportVmImage
    class ImportVmImage
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/ImportVmImage')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['semanticVersion'] = input[:semantic_version] unless input[:semantic_version].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['platform'] = input[:platform] unless input[:platform].nil?
        data['osVersion'] = input[:os_version] unless input[:os_version].nil?
        data['vmImportTaskId'] = input[:vm_import_task_id] unless input[:vm_import_task_id].nil?
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListComponentBuildVersions
    class ListComponentBuildVersions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/ListComponentBuildVersions')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['componentVersionArn'] = input[:component_version_arn] unless input[:component_version_arn].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListComponents
    class ListComponents
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/ListComponents')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['owner'] = input[:owner] unless input[:owner].nil?
        data['filters'] = Builders::FilterList.build(input[:filters]) unless input[:filters].nil?
        data['byName'] = input[:by_name] unless input[:by_name].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for FilterList
    class FilterList
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
        data['name'] = input[:name] unless input[:name].nil?
        data['values'] = Builders::FilterValues.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for FilterValues
    class FilterValues
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListContainerRecipes
    class ListContainerRecipes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/ListContainerRecipes')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['owner'] = input[:owner] unless input[:owner].nil?
        data['filters'] = Builders::FilterList.build(input[:filters]) unless input[:filters].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListDistributionConfigurations
    class ListDistributionConfigurations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/ListDistributionConfigurations')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['filters'] = Builders::FilterList.build(input[:filters]) unless input[:filters].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListImageBuildVersions
    class ListImageBuildVersions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/ListImageBuildVersions')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['imageVersionArn'] = input[:image_version_arn] unless input[:image_version_arn].nil?
        data['filters'] = Builders::FilterList.build(input[:filters]) unless input[:filters].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListImagePackages
    class ListImagePackages
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/ListImagePackages')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['imageBuildVersionArn'] = input[:image_build_version_arn] unless input[:image_build_version_arn].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListImagePipelineImages
    class ListImagePipelineImages
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/ListImagePipelineImages')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['imagePipelineArn'] = input[:image_pipeline_arn] unless input[:image_pipeline_arn].nil?
        data['filters'] = Builders::FilterList.build(input[:filters]) unless input[:filters].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListImagePipelines
    class ListImagePipelines
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/ListImagePipelines')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['filters'] = Builders::FilterList.build(input[:filters]) unless input[:filters].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListImageRecipes
    class ListImageRecipes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/ListImageRecipes')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['owner'] = input[:owner] unless input[:owner].nil?
        data['filters'] = Builders::FilterList.build(input[:filters]) unless input[:filters].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListImages
    class ListImages
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/ListImages')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['owner'] = input[:owner] unless input[:owner].nil?
        data['filters'] = Builders::FilterList.build(input[:filters]) unless input[:filters].nil?
        data['byName'] = input[:by_name] unless input[:by_name].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['includeDeprecated'] = input[:include_deprecated] unless input[:include_deprecated].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListInfrastructureConfigurations
    class ListInfrastructureConfigurations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/ListInfrastructureConfigurations')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['filters'] = Builders::FilterList.build(input[:filters]) unless input[:filters].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for PutComponentPolicy
    class PutComponentPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/PutComponentPolicy')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['componentArn'] = input[:component_arn] unless input[:component_arn].nil?
        data['policy'] = input[:policy] unless input[:policy].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutContainerRecipePolicy
    class PutContainerRecipePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/PutContainerRecipePolicy')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['containerRecipeArn'] = input[:container_recipe_arn] unless input[:container_recipe_arn].nil?
        data['policy'] = input[:policy] unless input[:policy].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutImagePolicy
    class PutImagePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/PutImagePolicy')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['imageArn'] = input[:image_arn] unless input[:image_arn].nil?
        data['policy'] = input[:policy] unless input[:policy].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutImageRecipePolicy
    class PutImageRecipePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/PutImageRecipePolicy')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['imageRecipeArn'] = input[:image_recipe_arn] unless input[:image_recipe_arn].nil?
        data['policy'] = input[:policy] unless input[:policy].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartImagePipelineExecution
    class StartImagePipelineExecution
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/StartImagePipelineExecution')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['imagePipelineArn'] = input[:image_pipeline_arn] unless input[:image_pipeline_arn].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:tag_keys].nil? || input[:tag_keys].empty?
          params['tagKeys'] = input[:tag_keys].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
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

    # Operation Builder for UpdateDistributionConfiguration
    class UpdateDistributionConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/UpdateDistributionConfiguration')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['distributionConfigurationArn'] = input[:distribution_configuration_arn] unless input[:distribution_configuration_arn].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['distributions'] = Builders::DistributionList.build(input[:distributions]) unless input[:distributions].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateImagePipeline
    class UpdateImagePipeline
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/UpdateImagePipeline')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['imagePipelineArn'] = input[:image_pipeline_arn] unless input[:image_pipeline_arn].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['imageRecipeArn'] = input[:image_recipe_arn] unless input[:image_recipe_arn].nil?
        data['containerRecipeArn'] = input[:container_recipe_arn] unless input[:container_recipe_arn].nil?
        data['infrastructureConfigurationArn'] = input[:infrastructure_configuration_arn] unless input[:infrastructure_configuration_arn].nil?
        data['distributionConfigurationArn'] = input[:distribution_configuration_arn] unless input[:distribution_configuration_arn].nil?
        data['imageTestsConfiguration'] = Builders::ImageTestsConfiguration.build(input[:image_tests_configuration]) unless input[:image_tests_configuration].nil?
        data['enhancedImageMetadataEnabled'] = input[:enhanced_image_metadata_enabled] unless input[:enhanced_image_metadata_enabled].nil?
        data['schedule'] = Builders::Schedule.build(input[:schedule]) unless input[:schedule].nil?
        data['status'] = input[:status] unless input[:status].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateInfrastructureConfiguration
    class UpdateInfrastructureConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/UpdateInfrastructureConfiguration')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['infrastructureConfigurationArn'] = input[:infrastructure_configuration_arn] unless input[:infrastructure_configuration_arn].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['instanceTypes'] = Builders::InstanceTypeList.build(input[:instance_types]) unless input[:instance_types].nil?
        data['instanceProfileName'] = input[:instance_profile_name] unless input[:instance_profile_name].nil?
        data['securityGroupIds'] = Builders::SecurityGroupIds.build(input[:security_group_ids]) unless input[:security_group_ids].nil?
        data['subnetId'] = input[:subnet_id] unless input[:subnet_id].nil?
        data['logging'] = Builders::Logging.build(input[:logging]) unless input[:logging].nil?
        data['keyPair'] = input[:key_pair] unless input[:key_pair].nil?
        data['terminateInstanceOnFailure'] = input[:terminate_instance_on_failure] unless input[:terminate_instance_on_failure].nil?
        data['snsTopicArn'] = input[:sns_topic_arn] unless input[:sns_topic_arn].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['resourceTags'] = Builders::ResourceTagMap.build(input[:resource_tags]) unless input[:resource_tags].nil?
        data['instanceMetadataOptions'] = Builders::InstanceMetadataOptions.build(input[:instance_metadata_options]) unless input[:instance_metadata_options].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
