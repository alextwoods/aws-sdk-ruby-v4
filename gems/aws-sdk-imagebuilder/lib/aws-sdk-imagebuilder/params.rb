# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::Imagebuilder
  module Params

    module AccountList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AdditionalInstanceConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdditionalInstanceConfiguration, context: context)
        type = Types::AdditionalInstanceConfiguration.new
        type.systems_manager_agent = SystemsManagerAgent.build(params[:systems_manager_agent], context: "#{context}[:systems_manager_agent]") unless params[:systems_manager_agent].nil?
        type.user_data_override = params[:user_data_override]
        type
      end
    end

    module Ami
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Ami, context: context)
        type = Types::Ami.new
        type.region = params[:region]
        type.image = params[:image]
        type.name = params[:name]
        type.description = params[:description]
        type.state = ImageState.build(params[:state], context: "#{context}[:state]") unless params[:state].nil?
        type.account_id = params[:account_id]
        type
      end
    end

    module AmiDistributionConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AmiDistributionConfiguration, context: context)
        type = Types::AmiDistributionConfiguration.new
        type.name = params[:name]
        type.description = params[:description]
        type.target_account_ids = AccountList.build(params[:target_account_ids], context: "#{context}[:target_account_ids]") unless params[:target_account_ids].nil?
        type.ami_tags = TagMap.build(params[:ami_tags], context: "#{context}[:ami_tags]") unless params[:ami_tags].nil?
        type.kms_key_id = params[:kms_key_id]
        type.launch_permission = LaunchPermissionConfiguration.build(params[:launch_permission], context: "#{context}[:launch_permission]") unless params[:launch_permission].nil?
        type
      end
    end

    module AmiList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Ami.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CallRateLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CallRateLimitExceededException, context: context)
        type = Types::CallRateLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module CancelImageCreationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelImageCreationInput, context: context)
        type = Types::CancelImageCreationInput.new
        type.image_build_version_arn = params[:image_build_version_arn]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module CancelImageCreationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelImageCreationOutput, context: context)
        type = Types::CancelImageCreationOutput.new
        type.request_id = params[:request_id]
        type.client_token = params[:client_token]
        type.image_build_version_arn = params[:image_build_version_arn]
        type
      end
    end

    module ClientException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClientException, context: context)
        type = Types::ClientException.new
        type.message = params[:message]
        type
      end
    end

    module Component
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Component, context: context)
        type = Types::Component.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.version = params[:version]
        type.description = params[:description]
        type.change_description = params[:change_description]
        type.type = params[:type]
        type.platform = params[:platform]
        type.supported_os_versions = OsVersionList.build(params[:supported_os_versions], context: "#{context}[:supported_os_versions]") unless params[:supported_os_versions].nil?
        type.state = ComponentState.build(params[:state], context: "#{context}[:state]") unless params[:state].nil?
        type.parameters = ComponentParameterDetailList.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.owner = params[:owner]
        type.data = params[:data]
        type.kms_key_id = params[:kms_key_id]
        type.encrypted = params[:encrypted]
        type.date_created = params[:date_created]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ComponentConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComponentConfiguration, context: context)
        type = Types::ComponentConfiguration.new
        type.component_arn = params[:component_arn]
        type.parameters = ComponentParameterList.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type
      end
    end

    module ComponentConfigurationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ComponentConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ComponentParameter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComponentParameter, context: context)
        type = Types::ComponentParameter.new
        type.name = params[:name]
        type.value = ComponentParameterValueList.build(params[:value], context: "#{context}[:value]") unless params[:value].nil?
        type
      end
    end

    module ComponentParameterDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComponentParameterDetail, context: context)
        type = Types::ComponentParameterDetail.new
        type.name = params[:name]
        type.type = params[:type]
        type.default_value = ComponentParameterValueList.build(params[:default_value], context: "#{context}[:default_value]") unless params[:default_value].nil?
        type.description = params[:description]
        type
      end
    end

    module ComponentParameterDetailList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ComponentParameterDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ComponentParameterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ComponentParameter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ComponentParameterValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ComponentState
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComponentState, context: context)
        type = Types::ComponentState.new
        type.status = params[:status]
        type.reason = params[:reason]
        type
      end
    end

    module ComponentSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComponentSummary, context: context)
        type = Types::ComponentSummary.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.version = params[:version]
        type.platform = params[:platform]
        type.supported_os_versions = OsVersionList.build(params[:supported_os_versions], context: "#{context}[:supported_os_versions]") unless params[:supported_os_versions].nil?
        type.state = ComponentState.build(params[:state], context: "#{context}[:state]") unless params[:state].nil?
        type.type = params[:type]
        type.owner = params[:owner]
        type.description = params[:description]
        type.change_description = params[:change_description]
        type.date_created = params[:date_created]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ComponentSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ComponentSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ComponentVersion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComponentVersion, context: context)
        type = Types::ComponentVersion.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.version = params[:version]
        type.description = params[:description]
        type.platform = params[:platform]
        type.supported_os_versions = OsVersionList.build(params[:supported_os_versions], context: "#{context}[:supported_os_versions]") unless params[:supported_os_versions].nil?
        type.type = params[:type]
        type.owner = params[:owner]
        type.date_created = params[:date_created]
        type
      end
    end

    module ComponentVersionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ComponentVersion.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Container
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Container, context: context)
        type = Types::Container.new
        type.region = params[:region]
        type.image_uris = StringList.build(params[:image_uris], context: "#{context}[:image_uris]") unless params[:image_uris].nil?
        type
      end
    end

    module ContainerDistributionConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContainerDistributionConfiguration, context: context)
        type = Types::ContainerDistributionConfiguration.new
        type.description = params[:description]
        type.container_tags = StringList.build(params[:container_tags], context: "#{context}[:container_tags]") unless params[:container_tags].nil?
        type.target_repository = TargetContainerRepository.build(params[:target_repository], context: "#{context}[:target_repository]") unless params[:target_repository].nil?
        type
      end
    end

    module ContainerList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Container.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ContainerRecipe
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContainerRecipe, context: context)
        type = Types::ContainerRecipe.new
        type.arn = params[:arn]
        type.container_type = params[:container_type]
        type.name = params[:name]
        type.description = params[:description]
        type.platform = params[:platform]
        type.owner = params[:owner]
        type.version = params[:version]
        type.components = ComponentConfigurationList.build(params[:components], context: "#{context}[:components]") unless params[:components].nil?
        type.instance_configuration = InstanceConfiguration.build(params[:instance_configuration], context: "#{context}[:instance_configuration]") unless params[:instance_configuration].nil?
        type.dockerfile_template_data = params[:dockerfile_template_data]
        type.kms_key_id = params[:kms_key_id]
        type.encrypted = params[:encrypted]
        type.parent_image = params[:parent_image]
        type.date_created = params[:date_created]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.working_directory = params[:working_directory]
        type.target_repository = TargetContainerRepository.build(params[:target_repository], context: "#{context}[:target_repository]") unless params[:target_repository].nil?
        type
      end
    end

    module ContainerRecipeSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContainerRecipeSummary, context: context)
        type = Types::ContainerRecipeSummary.new
        type.arn = params[:arn]
        type.container_type = params[:container_type]
        type.name = params[:name]
        type.platform = params[:platform]
        type.owner = params[:owner]
        type.parent_image = params[:parent_image]
        type.date_created = params[:date_created]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ContainerRecipeSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ContainerRecipeSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CreateComponentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateComponentInput, context: context)
        type = Types::CreateComponentInput.new
        type.name = params[:name]
        type.semantic_version = params[:semantic_version]
        type.description = params[:description]
        type.change_description = params[:change_description]
        type.platform = params[:platform]
        type.supported_os_versions = OsVersionList.build(params[:supported_os_versions], context: "#{context}[:supported_os_versions]") unless params[:supported_os_versions].nil?
        type.data = params[:data]
        type.uri = params[:uri]
        type.kms_key_id = params[:kms_key_id]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module CreateComponentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateComponentOutput, context: context)
        type = Types::CreateComponentOutput.new
        type.request_id = params[:request_id]
        type.client_token = params[:client_token]
        type.component_build_version_arn = params[:component_build_version_arn]
        type
      end
    end

    module CreateContainerRecipeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateContainerRecipeInput, context: context)
        type = Types::CreateContainerRecipeInput.new
        type.container_type = params[:container_type]
        type.name = params[:name]
        type.description = params[:description]
        type.semantic_version = params[:semantic_version]
        type.components = ComponentConfigurationList.build(params[:components], context: "#{context}[:components]") unless params[:components].nil?
        type.instance_configuration = InstanceConfiguration.build(params[:instance_configuration], context: "#{context}[:instance_configuration]") unless params[:instance_configuration].nil?
        type.dockerfile_template_data = params[:dockerfile_template_data]
        type.dockerfile_template_uri = params[:dockerfile_template_uri]
        type.platform_override = params[:platform_override]
        type.image_os_version_override = params[:image_os_version_override]
        type.parent_image = params[:parent_image]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.working_directory = params[:working_directory]
        type.target_repository = TargetContainerRepository.build(params[:target_repository], context: "#{context}[:target_repository]") unless params[:target_repository].nil?
        type.kms_key_id = params[:kms_key_id]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module CreateContainerRecipeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateContainerRecipeOutput, context: context)
        type = Types::CreateContainerRecipeOutput.new
        type.request_id = params[:request_id]
        type.client_token = params[:client_token]
        type.container_recipe_arn = params[:container_recipe_arn]
        type
      end
    end

    module CreateDistributionConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDistributionConfigurationInput, context: context)
        type = Types::CreateDistributionConfigurationInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.distributions = DistributionList.build(params[:distributions], context: "#{context}[:distributions]") unless params[:distributions].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module CreateDistributionConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDistributionConfigurationOutput, context: context)
        type = Types::CreateDistributionConfigurationOutput.new
        type.request_id = params[:request_id]
        type.client_token = params[:client_token]
        type.distribution_configuration_arn = params[:distribution_configuration_arn]
        type
      end
    end

    module CreateImageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateImageInput, context: context)
        type = Types::CreateImageInput.new
        type.image_recipe_arn = params[:image_recipe_arn]
        type.container_recipe_arn = params[:container_recipe_arn]
        type.distribution_configuration_arn = params[:distribution_configuration_arn]
        type.infrastructure_configuration_arn = params[:infrastructure_configuration_arn]
        type.image_tests_configuration = ImageTestsConfiguration.build(params[:image_tests_configuration], context: "#{context}[:image_tests_configuration]") unless params[:image_tests_configuration].nil?
        type.enhanced_image_metadata_enabled = params[:enhanced_image_metadata_enabled]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module CreateImageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateImageOutput, context: context)
        type = Types::CreateImageOutput.new
        type.request_id = params[:request_id]
        type.client_token = params[:client_token]
        type.image_build_version_arn = params[:image_build_version_arn]
        type
      end
    end

    module CreateImagePipelineInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateImagePipelineInput, context: context)
        type = Types::CreateImagePipelineInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.image_recipe_arn = params[:image_recipe_arn]
        type.container_recipe_arn = params[:container_recipe_arn]
        type.infrastructure_configuration_arn = params[:infrastructure_configuration_arn]
        type.distribution_configuration_arn = params[:distribution_configuration_arn]
        type.image_tests_configuration = ImageTestsConfiguration.build(params[:image_tests_configuration], context: "#{context}[:image_tests_configuration]") unless params[:image_tests_configuration].nil?
        type.enhanced_image_metadata_enabled = params[:enhanced_image_metadata_enabled]
        type.schedule = Schedule.build(params[:schedule], context: "#{context}[:schedule]") unless params[:schedule].nil?
        type.status = params[:status]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module CreateImagePipelineOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateImagePipelineOutput, context: context)
        type = Types::CreateImagePipelineOutput.new
        type.request_id = params[:request_id]
        type.client_token = params[:client_token]
        type.image_pipeline_arn = params[:image_pipeline_arn]
        type
      end
    end

    module CreateImageRecipeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateImageRecipeInput, context: context)
        type = Types::CreateImageRecipeInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.semantic_version = params[:semantic_version]
        type.components = ComponentConfigurationList.build(params[:components], context: "#{context}[:components]") unless params[:components].nil?
        type.parent_image = params[:parent_image]
        type.block_device_mappings = InstanceBlockDeviceMappings.build(params[:block_device_mappings], context: "#{context}[:block_device_mappings]") unless params[:block_device_mappings].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.working_directory = params[:working_directory]
        type.additional_instance_configuration = AdditionalInstanceConfiguration.build(params[:additional_instance_configuration], context: "#{context}[:additional_instance_configuration]") unless params[:additional_instance_configuration].nil?
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module CreateImageRecipeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateImageRecipeOutput, context: context)
        type = Types::CreateImageRecipeOutput.new
        type.request_id = params[:request_id]
        type.client_token = params[:client_token]
        type.image_recipe_arn = params[:image_recipe_arn]
        type
      end
    end

    module CreateInfrastructureConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateInfrastructureConfigurationInput, context: context)
        type = Types::CreateInfrastructureConfigurationInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.instance_types = InstanceTypeList.build(params[:instance_types], context: "#{context}[:instance_types]") unless params[:instance_types].nil?
        type.instance_profile_name = params[:instance_profile_name]
        type.security_group_ids = SecurityGroupIds.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.subnet_id = params[:subnet_id]
        type.logging = Logging.build(params[:logging], context: "#{context}[:logging]") unless params[:logging].nil?
        type.key_pair = params[:key_pair]
        type.terminate_instance_on_failure = params[:terminate_instance_on_failure]
        type.sns_topic_arn = params[:sns_topic_arn]
        type.resource_tags = ResourceTagMap.build(params[:resource_tags], context: "#{context}[:resource_tags]") unless params[:resource_tags].nil?
        type.instance_metadata_options = InstanceMetadataOptions.build(params[:instance_metadata_options], context: "#{context}[:instance_metadata_options]") unless params[:instance_metadata_options].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module CreateInfrastructureConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateInfrastructureConfigurationOutput, context: context)
        type = Types::CreateInfrastructureConfigurationOutput.new
        type.request_id = params[:request_id]
        type.client_token = params[:client_token]
        type.infrastructure_configuration_arn = params[:infrastructure_configuration_arn]
        type
      end
    end

    module DeleteComponentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteComponentInput, context: context)
        type = Types::DeleteComponentInput.new
        type.component_build_version_arn = params[:component_build_version_arn]
        type
      end
    end

    module DeleteComponentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteComponentOutput, context: context)
        type = Types::DeleteComponentOutput.new
        type.request_id = params[:request_id]
        type.component_build_version_arn = params[:component_build_version_arn]
        type
      end
    end

    module DeleteContainerRecipeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteContainerRecipeInput, context: context)
        type = Types::DeleteContainerRecipeInput.new
        type.container_recipe_arn = params[:container_recipe_arn]
        type
      end
    end

    module DeleteContainerRecipeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteContainerRecipeOutput, context: context)
        type = Types::DeleteContainerRecipeOutput.new
        type.request_id = params[:request_id]
        type.container_recipe_arn = params[:container_recipe_arn]
        type
      end
    end

    module DeleteDistributionConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDistributionConfigurationInput, context: context)
        type = Types::DeleteDistributionConfigurationInput.new
        type.distribution_configuration_arn = params[:distribution_configuration_arn]
        type
      end
    end

    module DeleteDistributionConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDistributionConfigurationOutput, context: context)
        type = Types::DeleteDistributionConfigurationOutput.new
        type.request_id = params[:request_id]
        type.distribution_configuration_arn = params[:distribution_configuration_arn]
        type
      end
    end

    module DeleteImageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteImageInput, context: context)
        type = Types::DeleteImageInput.new
        type.image_build_version_arn = params[:image_build_version_arn]
        type
      end
    end

    module DeleteImageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteImageOutput, context: context)
        type = Types::DeleteImageOutput.new
        type.request_id = params[:request_id]
        type.image_build_version_arn = params[:image_build_version_arn]
        type
      end
    end

    module DeleteImagePipelineInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteImagePipelineInput, context: context)
        type = Types::DeleteImagePipelineInput.new
        type.image_pipeline_arn = params[:image_pipeline_arn]
        type
      end
    end

    module DeleteImagePipelineOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteImagePipelineOutput, context: context)
        type = Types::DeleteImagePipelineOutput.new
        type.request_id = params[:request_id]
        type.image_pipeline_arn = params[:image_pipeline_arn]
        type
      end
    end

    module DeleteImageRecipeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteImageRecipeInput, context: context)
        type = Types::DeleteImageRecipeInput.new
        type.image_recipe_arn = params[:image_recipe_arn]
        type
      end
    end

    module DeleteImageRecipeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteImageRecipeOutput, context: context)
        type = Types::DeleteImageRecipeOutput.new
        type.request_id = params[:request_id]
        type.image_recipe_arn = params[:image_recipe_arn]
        type
      end
    end

    module DeleteInfrastructureConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteInfrastructureConfigurationInput, context: context)
        type = Types::DeleteInfrastructureConfigurationInput.new
        type.infrastructure_configuration_arn = params[:infrastructure_configuration_arn]
        type
      end
    end

    module DeleteInfrastructureConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteInfrastructureConfigurationOutput, context: context)
        type = Types::DeleteInfrastructureConfigurationOutput.new
        type.request_id = params[:request_id]
        type.infrastructure_configuration_arn = params[:infrastructure_configuration_arn]
        type
      end
    end

    module Distribution
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Distribution, context: context)
        type = Types::Distribution.new
        type.region = params[:region]
        type.ami_distribution_configuration = AmiDistributionConfiguration.build(params[:ami_distribution_configuration], context: "#{context}[:ami_distribution_configuration]") unless params[:ami_distribution_configuration].nil?
        type.container_distribution_configuration = ContainerDistributionConfiguration.build(params[:container_distribution_configuration], context: "#{context}[:container_distribution_configuration]") unless params[:container_distribution_configuration].nil?
        type.license_configuration_arns = LicenseConfigurationArnList.build(params[:license_configuration_arns], context: "#{context}[:license_configuration_arns]") unless params[:license_configuration_arns].nil?
        type.launch_template_configurations = LaunchTemplateConfigurationList.build(params[:launch_template_configurations], context: "#{context}[:launch_template_configurations]") unless params[:launch_template_configurations].nil?
        type.s3_export_configuration = S3ExportConfiguration.build(params[:s3_export_configuration], context: "#{context}[:s3_export_configuration]") unless params[:s3_export_configuration].nil?
        type.fast_launch_configurations = FastLaunchConfigurationList.build(params[:fast_launch_configurations], context: "#{context}[:fast_launch_configurations]") unless params[:fast_launch_configurations].nil?
        type
      end
    end

    module DistributionConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DistributionConfiguration, context: context)
        type = Types::DistributionConfiguration.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.description = params[:description]
        type.distributions = DistributionList.build(params[:distributions], context: "#{context}[:distributions]") unless params[:distributions].nil?
        type.timeout_minutes = params[:timeout_minutes]
        type.date_created = params[:date_created]
        type.date_updated = params[:date_updated]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module DistributionConfigurationSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DistributionConfigurationSummary, context: context)
        type = Types::DistributionConfigurationSummary.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.description = params[:description]
        type.date_created = params[:date_created]
        type.date_updated = params[:date_updated]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.regions = RegionList.build(params[:regions], context: "#{context}[:regions]") unless params[:regions].nil?
        type
      end
    end

    module DistributionConfigurationSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DistributionConfigurationSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DistributionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Distribution.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EbsInstanceBlockDeviceSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EbsInstanceBlockDeviceSpecification, context: context)
        type = Types::EbsInstanceBlockDeviceSpecification.new
        type.encrypted = params[:encrypted]
        type.delete_on_termination = params[:delete_on_termination]
        type.iops = params[:iops]
        type.kms_key_id = params[:kms_key_id]
        type.snapshot_id = params[:snapshot_id]
        type.volume_size = params[:volume_size]
        type.volume_type = params[:volume_type]
        type.throughput = params[:throughput]
        type
      end
    end

    module FastLaunchConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FastLaunchConfiguration, context: context)
        type = Types::FastLaunchConfiguration.new
        type.enabled = params[:enabled]
        type.snapshot_configuration = FastLaunchSnapshotConfiguration.build(params[:snapshot_configuration], context: "#{context}[:snapshot_configuration]") unless params[:snapshot_configuration].nil?
        type.max_parallel_launches = params[:max_parallel_launches]
        type.launch_template = FastLaunchLaunchTemplateSpecification.build(params[:launch_template], context: "#{context}[:launch_template]") unless params[:launch_template].nil?
        type.account_id = params[:account_id]
        type
      end
    end

    module FastLaunchConfigurationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FastLaunchConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FastLaunchLaunchTemplateSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FastLaunchLaunchTemplateSpecification, context: context)
        type = Types::FastLaunchLaunchTemplateSpecification.new
        type.launch_template_id = params[:launch_template_id]
        type.launch_template_name = params[:launch_template_name]
        type.launch_template_version = params[:launch_template_version]
        type
      end
    end

    module FastLaunchSnapshotConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FastLaunchSnapshotConfiguration, context: context)
        type = Types::FastLaunchSnapshotConfiguration.new
        type.target_resource_count = params[:target_resource_count]
        type
      end
    end

    module Filter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Filter, context: context)
        type = Types::Filter.new
        type.name = params[:name]
        type.values = FilterValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module FilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Filter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FilterValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ForbiddenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ForbiddenException, context: context)
        type = Types::ForbiddenException.new
        type.message = params[:message]
        type
      end
    end

    module GetComponentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetComponentInput, context: context)
        type = Types::GetComponentInput.new
        type.component_build_version_arn = params[:component_build_version_arn]
        type
      end
    end

    module GetComponentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetComponentOutput, context: context)
        type = Types::GetComponentOutput.new
        type.request_id = params[:request_id]
        type.component = Component.build(params[:component], context: "#{context}[:component]") unless params[:component].nil?
        type
      end
    end

    module GetComponentPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetComponentPolicyInput, context: context)
        type = Types::GetComponentPolicyInput.new
        type.component_arn = params[:component_arn]
        type
      end
    end

    module GetComponentPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetComponentPolicyOutput, context: context)
        type = Types::GetComponentPolicyOutput.new
        type.request_id = params[:request_id]
        type.policy = params[:policy]
        type
      end
    end

    module GetContainerRecipeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetContainerRecipeInput, context: context)
        type = Types::GetContainerRecipeInput.new
        type.container_recipe_arn = params[:container_recipe_arn]
        type
      end
    end

    module GetContainerRecipeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetContainerRecipeOutput, context: context)
        type = Types::GetContainerRecipeOutput.new
        type.request_id = params[:request_id]
        type.container_recipe = ContainerRecipe.build(params[:container_recipe], context: "#{context}[:container_recipe]") unless params[:container_recipe].nil?
        type
      end
    end

    module GetContainerRecipePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetContainerRecipePolicyInput, context: context)
        type = Types::GetContainerRecipePolicyInput.new
        type.container_recipe_arn = params[:container_recipe_arn]
        type
      end
    end

    module GetContainerRecipePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetContainerRecipePolicyOutput, context: context)
        type = Types::GetContainerRecipePolicyOutput.new
        type.request_id = params[:request_id]
        type.policy = params[:policy]
        type
      end
    end

    module GetDistributionConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDistributionConfigurationInput, context: context)
        type = Types::GetDistributionConfigurationInput.new
        type.distribution_configuration_arn = params[:distribution_configuration_arn]
        type
      end
    end

    module GetDistributionConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDistributionConfigurationOutput, context: context)
        type = Types::GetDistributionConfigurationOutput.new
        type.request_id = params[:request_id]
        type.distribution_configuration = DistributionConfiguration.build(params[:distribution_configuration], context: "#{context}[:distribution_configuration]") unless params[:distribution_configuration].nil?
        type
      end
    end

    module GetImageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetImageInput, context: context)
        type = Types::GetImageInput.new
        type.image_build_version_arn = params[:image_build_version_arn]
        type
      end
    end

    module GetImageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetImageOutput, context: context)
        type = Types::GetImageOutput.new
        type.request_id = params[:request_id]
        type.image = Image.build(params[:image], context: "#{context}[:image]") unless params[:image].nil?
        type
      end
    end

    module GetImagePipelineInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetImagePipelineInput, context: context)
        type = Types::GetImagePipelineInput.new
        type.image_pipeline_arn = params[:image_pipeline_arn]
        type
      end
    end

    module GetImagePipelineOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetImagePipelineOutput, context: context)
        type = Types::GetImagePipelineOutput.new
        type.request_id = params[:request_id]
        type.image_pipeline = ImagePipeline.build(params[:image_pipeline], context: "#{context}[:image_pipeline]") unless params[:image_pipeline].nil?
        type
      end
    end

    module GetImagePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetImagePolicyInput, context: context)
        type = Types::GetImagePolicyInput.new
        type.image_arn = params[:image_arn]
        type
      end
    end

    module GetImagePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetImagePolicyOutput, context: context)
        type = Types::GetImagePolicyOutput.new
        type.request_id = params[:request_id]
        type.policy = params[:policy]
        type
      end
    end

    module GetImageRecipeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetImageRecipeInput, context: context)
        type = Types::GetImageRecipeInput.new
        type.image_recipe_arn = params[:image_recipe_arn]
        type
      end
    end

    module GetImageRecipeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetImageRecipeOutput, context: context)
        type = Types::GetImageRecipeOutput.new
        type.request_id = params[:request_id]
        type.image_recipe = ImageRecipe.build(params[:image_recipe], context: "#{context}[:image_recipe]") unless params[:image_recipe].nil?
        type
      end
    end

    module GetImageRecipePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetImageRecipePolicyInput, context: context)
        type = Types::GetImageRecipePolicyInput.new
        type.image_recipe_arn = params[:image_recipe_arn]
        type
      end
    end

    module GetImageRecipePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetImageRecipePolicyOutput, context: context)
        type = Types::GetImageRecipePolicyOutput.new
        type.request_id = params[:request_id]
        type.policy = params[:policy]
        type
      end
    end

    module GetInfrastructureConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInfrastructureConfigurationInput, context: context)
        type = Types::GetInfrastructureConfigurationInput.new
        type.infrastructure_configuration_arn = params[:infrastructure_configuration_arn]
        type
      end
    end

    module GetInfrastructureConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInfrastructureConfigurationOutput, context: context)
        type = Types::GetInfrastructureConfigurationOutput.new
        type.request_id = params[:request_id]
        type.infrastructure_configuration = InfrastructureConfiguration.build(params[:infrastructure_configuration], context: "#{context}[:infrastructure_configuration]") unless params[:infrastructure_configuration].nil?
        type
      end
    end

    module IdempotentParameterMismatchException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IdempotentParameterMismatchException, context: context)
        type = Types::IdempotentParameterMismatchException.new
        type.message = params[:message]
        type
      end
    end

    module Image
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Image, context: context)
        type = Types::Image.new
        type.arn = params[:arn]
        type.type = params[:type]
        type.name = params[:name]
        type.version = params[:version]
        type.platform = params[:platform]
        type.enhanced_image_metadata_enabled = params[:enhanced_image_metadata_enabled]
        type.os_version = params[:os_version]
        type.state = ImageState.build(params[:state], context: "#{context}[:state]") unless params[:state].nil?
        type.image_recipe = ImageRecipe.build(params[:image_recipe], context: "#{context}[:image_recipe]") unless params[:image_recipe].nil?
        type.container_recipe = ContainerRecipe.build(params[:container_recipe], context: "#{context}[:container_recipe]") unless params[:container_recipe].nil?
        type.source_pipeline_name = params[:source_pipeline_name]
        type.source_pipeline_arn = params[:source_pipeline_arn]
        type.infrastructure_configuration = InfrastructureConfiguration.build(params[:infrastructure_configuration], context: "#{context}[:infrastructure_configuration]") unless params[:infrastructure_configuration].nil?
        type.distribution_configuration = DistributionConfiguration.build(params[:distribution_configuration], context: "#{context}[:distribution_configuration]") unless params[:distribution_configuration].nil?
        type.image_tests_configuration = ImageTestsConfiguration.build(params[:image_tests_configuration], context: "#{context}[:image_tests_configuration]") unless params[:image_tests_configuration].nil?
        type.date_created = params[:date_created]
        type.output_resources = OutputResources.build(params[:output_resources], context: "#{context}[:output_resources]") unless params[:output_resources].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.build_type = params[:build_type]
        type
      end
    end

    module ImagePackage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImagePackage, context: context)
        type = Types::ImagePackage.new
        type.package_name = params[:package_name]
        type.package_version = params[:package_version]
        type
      end
    end

    module ImagePackageList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ImagePackage.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ImagePipeline
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImagePipeline, context: context)
        type = Types::ImagePipeline.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.description = params[:description]
        type.platform = params[:platform]
        type.enhanced_image_metadata_enabled = params[:enhanced_image_metadata_enabled]
        type.image_recipe_arn = params[:image_recipe_arn]
        type.container_recipe_arn = params[:container_recipe_arn]
        type.infrastructure_configuration_arn = params[:infrastructure_configuration_arn]
        type.distribution_configuration_arn = params[:distribution_configuration_arn]
        type.image_tests_configuration = ImageTestsConfiguration.build(params[:image_tests_configuration], context: "#{context}[:image_tests_configuration]") unless params[:image_tests_configuration].nil?
        type.schedule = Schedule.build(params[:schedule], context: "#{context}[:schedule]") unless params[:schedule].nil?
        type.status = params[:status]
        type.date_created = params[:date_created]
        type.date_updated = params[:date_updated]
        type.date_last_run = params[:date_last_run]
        type.date_next_run = params[:date_next_run]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ImagePipelineList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ImagePipeline.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ImageRecipe
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImageRecipe, context: context)
        type = Types::ImageRecipe.new
        type.arn = params[:arn]
        type.type = params[:type]
        type.name = params[:name]
        type.description = params[:description]
        type.platform = params[:platform]
        type.owner = params[:owner]
        type.version = params[:version]
        type.components = ComponentConfigurationList.build(params[:components], context: "#{context}[:components]") unless params[:components].nil?
        type.parent_image = params[:parent_image]
        type.block_device_mappings = InstanceBlockDeviceMappings.build(params[:block_device_mappings], context: "#{context}[:block_device_mappings]") unless params[:block_device_mappings].nil?
        type.date_created = params[:date_created]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.working_directory = params[:working_directory]
        type.additional_instance_configuration = AdditionalInstanceConfiguration.build(params[:additional_instance_configuration], context: "#{context}[:additional_instance_configuration]") unless params[:additional_instance_configuration].nil?
        type
      end
    end

    module ImageRecipeSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImageRecipeSummary, context: context)
        type = Types::ImageRecipeSummary.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.platform = params[:platform]
        type.owner = params[:owner]
        type.parent_image = params[:parent_image]
        type.date_created = params[:date_created]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ImageRecipeSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ImageRecipeSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ImageState
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImageState, context: context)
        type = Types::ImageState.new
        type.status = params[:status]
        type.reason = params[:reason]
        type
      end
    end

    module ImageSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImageSummary, context: context)
        type = Types::ImageSummary.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.type = params[:type]
        type.version = params[:version]
        type.platform = params[:platform]
        type.os_version = params[:os_version]
        type.state = ImageState.build(params[:state], context: "#{context}[:state]") unless params[:state].nil?
        type.owner = params[:owner]
        type.date_created = params[:date_created]
        type.output_resources = OutputResources.build(params[:output_resources], context: "#{context}[:output_resources]") unless params[:output_resources].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.build_type = params[:build_type]
        type
      end
    end

    module ImageSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ImageSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ImageTestsConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImageTestsConfiguration, context: context)
        type = Types::ImageTestsConfiguration.new
        type.image_tests_enabled = params[:image_tests_enabled]
        type.timeout_minutes = params[:timeout_minutes]
        type
      end
    end

    module ImageVersion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImageVersion, context: context)
        type = Types::ImageVersion.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.type = params[:type]
        type.version = params[:version]
        type.platform = params[:platform]
        type.os_version = params[:os_version]
        type.owner = params[:owner]
        type.date_created = params[:date_created]
        type.build_type = params[:build_type]
        type
      end
    end

    module ImageVersionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ImageVersion.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ImportComponentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportComponentInput, context: context)
        type = Types::ImportComponentInput.new
        type.name = params[:name]
        type.semantic_version = params[:semantic_version]
        type.description = params[:description]
        type.change_description = params[:change_description]
        type.type = params[:type]
        type.format = params[:format]
        type.platform = params[:platform]
        type.data = params[:data]
        type.uri = params[:uri]
        type.kms_key_id = params[:kms_key_id]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module ImportComponentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportComponentOutput, context: context)
        type = Types::ImportComponentOutput.new
        type.request_id = params[:request_id]
        type.client_token = params[:client_token]
        type.component_build_version_arn = params[:component_build_version_arn]
        type
      end
    end

    module ImportVmImageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportVmImageInput, context: context)
        type = Types::ImportVmImageInput.new
        type.name = params[:name]
        type.semantic_version = params[:semantic_version]
        type.description = params[:description]
        type.platform = params[:platform]
        type.os_version = params[:os_version]
        type.vm_import_task_id = params[:vm_import_task_id]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module ImportVmImageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportVmImageOutput, context: context)
        type = Types::ImportVmImageOutput.new
        type.request_id = params[:request_id]
        type.image_arn = params[:image_arn]
        type.client_token = params[:client_token]
        type
      end
    end

    module InfrastructureConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InfrastructureConfiguration, context: context)
        type = Types::InfrastructureConfiguration.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.description = params[:description]
        type.instance_types = InstanceTypeList.build(params[:instance_types], context: "#{context}[:instance_types]") unless params[:instance_types].nil?
        type.instance_profile_name = params[:instance_profile_name]
        type.security_group_ids = SecurityGroupIds.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.subnet_id = params[:subnet_id]
        type.logging = Logging.build(params[:logging], context: "#{context}[:logging]") unless params[:logging].nil?
        type.key_pair = params[:key_pair]
        type.terminate_instance_on_failure = params[:terminate_instance_on_failure]
        type.sns_topic_arn = params[:sns_topic_arn]
        type.date_created = params[:date_created]
        type.date_updated = params[:date_updated]
        type.resource_tags = ResourceTagMap.build(params[:resource_tags], context: "#{context}[:resource_tags]") unless params[:resource_tags].nil?
        type.instance_metadata_options = InstanceMetadataOptions.build(params[:instance_metadata_options], context: "#{context}[:instance_metadata_options]") unless params[:instance_metadata_options].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module InfrastructureConfigurationSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InfrastructureConfigurationSummary, context: context)
        type = Types::InfrastructureConfigurationSummary.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.description = params[:description]
        type.date_created = params[:date_created]
        type.date_updated = params[:date_updated]
        type.resource_tags = ResourceTagMap.build(params[:resource_tags], context: "#{context}[:resource_tags]") unless params[:resource_tags].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.instance_types = InstanceTypeList.build(params[:instance_types], context: "#{context}[:instance_types]") unless params[:instance_types].nil?
        type.instance_profile_name = params[:instance_profile_name]
        type
      end
    end

    module InfrastructureConfigurationSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InfrastructureConfigurationSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InstanceBlockDeviceMapping
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceBlockDeviceMapping, context: context)
        type = Types::InstanceBlockDeviceMapping.new
        type.device_name = params[:device_name]
        type.ebs = EbsInstanceBlockDeviceSpecification.build(params[:ebs], context: "#{context}[:ebs]") unless params[:ebs].nil?
        type.virtual_name = params[:virtual_name]
        type.no_device = params[:no_device]
        type
      end
    end

    module InstanceBlockDeviceMappings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InstanceBlockDeviceMapping.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InstanceConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceConfiguration, context: context)
        type = Types::InstanceConfiguration.new
        type.image = params[:image]
        type.block_device_mappings = InstanceBlockDeviceMappings.build(params[:block_device_mappings], context: "#{context}[:block_device_mappings]") unless params[:block_device_mappings].nil?
        type
      end
    end

    module InstanceMetadataOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceMetadataOptions, context: context)
        type = Types::InstanceMetadataOptions.new
        type.http_tokens = params[:http_tokens]
        type.http_put_response_hop_limit = params[:http_put_response_hop_limit]
        type
      end
    end

    module InstanceTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InvalidPaginationTokenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidPaginationTokenException, context: context)
        type = Types::InvalidPaginationTokenException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidParameterCombinationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidParameterCombinationException, context: context)
        type = Types::InvalidParameterCombinationException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidParameterException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidParameterException, context: context)
        type = Types::InvalidParameterException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidParameterValueException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidParameterValueException, context: context)
        type = Types::InvalidParameterValueException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRequestException, context: context)
        type = Types::InvalidRequestException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidVersionNumberException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidVersionNumberException, context: context)
        type = Types::InvalidVersionNumberException.new
        type.message = params[:message]
        type
      end
    end

    module LaunchPermissionConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LaunchPermissionConfiguration, context: context)
        type = Types::LaunchPermissionConfiguration.new
        type.user_ids = AccountList.build(params[:user_ids], context: "#{context}[:user_ids]") unless params[:user_ids].nil?
        type.user_groups = StringList.build(params[:user_groups], context: "#{context}[:user_groups]") unless params[:user_groups].nil?
        type.organization_arns = OrganizationArnList.build(params[:organization_arns], context: "#{context}[:organization_arns]") unless params[:organization_arns].nil?
        type.organizational_unit_arns = OrganizationalUnitArnList.build(params[:organizational_unit_arns], context: "#{context}[:organizational_unit_arns]") unless params[:organizational_unit_arns].nil?
        type
      end
    end

    module LaunchTemplateConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LaunchTemplateConfiguration, context: context)
        type = Types::LaunchTemplateConfiguration.new
        type.launch_template_id = params[:launch_template_id]
        type.account_id = params[:account_id]
        type.set_default_version = params[:set_default_version]
        type
      end
    end

    module LaunchTemplateConfigurationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LaunchTemplateConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LicenseConfigurationArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ListComponentBuildVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListComponentBuildVersionsInput, context: context)
        type = Types::ListComponentBuildVersionsInput.new
        type.component_version_arn = params[:component_version_arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListComponentBuildVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListComponentBuildVersionsOutput, context: context)
        type = Types::ListComponentBuildVersionsOutput.new
        type.request_id = params[:request_id]
        type.component_summary_list = ComponentSummaryList.build(params[:component_summary_list], context: "#{context}[:component_summary_list]") unless params[:component_summary_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListComponentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListComponentsInput, context: context)
        type = Types::ListComponentsInput.new
        type.owner = params[:owner]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.by_name = params[:by_name]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListComponentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListComponentsOutput, context: context)
        type = Types::ListComponentsOutput.new
        type.request_id = params[:request_id]
        type.component_version_list = ComponentVersionList.build(params[:component_version_list], context: "#{context}[:component_version_list]") unless params[:component_version_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListContainerRecipesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListContainerRecipesInput, context: context)
        type = Types::ListContainerRecipesInput.new
        type.owner = params[:owner]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListContainerRecipesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListContainerRecipesOutput, context: context)
        type = Types::ListContainerRecipesOutput.new
        type.request_id = params[:request_id]
        type.container_recipe_summary_list = ContainerRecipeSummaryList.build(params[:container_recipe_summary_list], context: "#{context}[:container_recipe_summary_list]") unless params[:container_recipe_summary_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDistributionConfigurationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDistributionConfigurationsInput, context: context)
        type = Types::ListDistributionConfigurationsInput.new
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDistributionConfigurationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDistributionConfigurationsOutput, context: context)
        type = Types::ListDistributionConfigurationsOutput.new
        type.request_id = params[:request_id]
        type.distribution_configuration_summary_list = DistributionConfigurationSummaryList.build(params[:distribution_configuration_summary_list], context: "#{context}[:distribution_configuration_summary_list]") unless params[:distribution_configuration_summary_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListImageBuildVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListImageBuildVersionsInput, context: context)
        type = Types::ListImageBuildVersionsInput.new
        type.image_version_arn = params[:image_version_arn]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListImageBuildVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListImageBuildVersionsOutput, context: context)
        type = Types::ListImageBuildVersionsOutput.new
        type.request_id = params[:request_id]
        type.image_summary_list = ImageSummaryList.build(params[:image_summary_list], context: "#{context}[:image_summary_list]") unless params[:image_summary_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListImagePackagesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListImagePackagesInput, context: context)
        type = Types::ListImagePackagesInput.new
        type.image_build_version_arn = params[:image_build_version_arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListImagePackagesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListImagePackagesOutput, context: context)
        type = Types::ListImagePackagesOutput.new
        type.request_id = params[:request_id]
        type.image_package_list = ImagePackageList.build(params[:image_package_list], context: "#{context}[:image_package_list]") unless params[:image_package_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListImagePipelineImagesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListImagePipelineImagesInput, context: context)
        type = Types::ListImagePipelineImagesInput.new
        type.image_pipeline_arn = params[:image_pipeline_arn]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListImagePipelineImagesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListImagePipelineImagesOutput, context: context)
        type = Types::ListImagePipelineImagesOutput.new
        type.request_id = params[:request_id]
        type.image_summary_list = ImageSummaryList.build(params[:image_summary_list], context: "#{context}[:image_summary_list]") unless params[:image_summary_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListImagePipelinesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListImagePipelinesInput, context: context)
        type = Types::ListImagePipelinesInput.new
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListImagePipelinesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListImagePipelinesOutput, context: context)
        type = Types::ListImagePipelinesOutput.new
        type.request_id = params[:request_id]
        type.image_pipeline_list = ImagePipelineList.build(params[:image_pipeline_list], context: "#{context}[:image_pipeline_list]") unless params[:image_pipeline_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListImageRecipesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListImageRecipesInput, context: context)
        type = Types::ListImageRecipesInput.new
        type.owner = params[:owner]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListImageRecipesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListImageRecipesOutput, context: context)
        type = Types::ListImageRecipesOutput.new
        type.request_id = params[:request_id]
        type.image_recipe_summary_list = ImageRecipeSummaryList.build(params[:image_recipe_summary_list], context: "#{context}[:image_recipe_summary_list]") unless params[:image_recipe_summary_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListImagesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListImagesInput, context: context)
        type = Types::ListImagesInput.new
        type.owner = params[:owner]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.by_name = params[:by_name]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.include_deprecated = params[:include_deprecated]
        type
      end
    end

    module ListImagesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListImagesOutput, context: context)
        type = Types::ListImagesOutput.new
        type.request_id = params[:request_id]
        type.image_version_list = ImageVersionList.build(params[:image_version_list], context: "#{context}[:image_version_list]") unless params[:image_version_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListInfrastructureConfigurationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInfrastructureConfigurationsInput, context: context)
        type = Types::ListInfrastructureConfigurationsInput.new
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListInfrastructureConfigurationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInfrastructureConfigurationsOutput, context: context)
        type = Types::ListInfrastructureConfigurationsOutput.new
        type.request_id = params[:request_id]
        type.infrastructure_configuration_summary_list = InfrastructureConfigurationSummaryList.build(params[:infrastructure_configuration_summary_list], context: "#{context}[:infrastructure_configuration_summary_list]") unless params[:infrastructure_configuration_summary_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module Logging
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Logging, context: context)
        type = Types::Logging.new
        type.s3_logs = S3Logs.build(params[:s3_logs], context: "#{context}[:s3_logs]") unless params[:s3_logs].nil?
        type
      end
    end

    module OrganizationArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module OrganizationalUnitArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module OsVersionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module OutputResources
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OutputResources, context: context)
        type = Types::OutputResources.new
        type.amis = AmiList.build(params[:amis], context: "#{context}[:amis]") unless params[:amis].nil?
        type.containers = ContainerList.build(params[:containers], context: "#{context}[:containers]") unless params[:containers].nil?
        type
      end
    end

    module PutComponentPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutComponentPolicyInput, context: context)
        type = Types::PutComponentPolicyInput.new
        type.component_arn = params[:component_arn]
        type.policy = params[:policy]
        type
      end
    end

    module PutComponentPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutComponentPolicyOutput, context: context)
        type = Types::PutComponentPolicyOutput.new
        type.request_id = params[:request_id]
        type.component_arn = params[:component_arn]
        type
      end
    end

    module PutContainerRecipePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutContainerRecipePolicyInput, context: context)
        type = Types::PutContainerRecipePolicyInput.new
        type.container_recipe_arn = params[:container_recipe_arn]
        type.policy = params[:policy]
        type
      end
    end

    module PutContainerRecipePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutContainerRecipePolicyOutput, context: context)
        type = Types::PutContainerRecipePolicyOutput.new
        type.request_id = params[:request_id]
        type.container_recipe_arn = params[:container_recipe_arn]
        type
      end
    end

    module PutImagePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutImagePolicyInput, context: context)
        type = Types::PutImagePolicyInput.new
        type.image_arn = params[:image_arn]
        type.policy = params[:policy]
        type
      end
    end

    module PutImagePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutImagePolicyOutput, context: context)
        type = Types::PutImagePolicyOutput.new
        type.request_id = params[:request_id]
        type.image_arn = params[:image_arn]
        type
      end
    end

    module PutImageRecipePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutImageRecipePolicyInput, context: context)
        type = Types::PutImageRecipePolicyInput.new
        type.image_recipe_arn = params[:image_recipe_arn]
        type.policy = params[:policy]
        type
      end
    end

    module PutImageRecipePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutImageRecipePolicyOutput, context: context)
        type = Types::PutImageRecipePolicyOutput.new
        type.request_id = params[:request_id]
        type.image_recipe_arn = params[:image_recipe_arn]
        type
      end
    end

    module RegionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ResourceAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceAlreadyExistsException, context: context)
        type = Types::ResourceAlreadyExistsException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceDependencyException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceDependencyException, context: context)
        type = Types::ResourceDependencyException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceInUseException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceInUseException, context: context)
        type = Types::ResourceInUseException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceTagMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module S3ExportConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3ExportConfiguration, context: context)
        type = Types::S3ExportConfiguration.new
        type.role_name = params[:role_name]
        type.disk_image_format = params[:disk_image_format]
        type.s3_bucket = params[:s3_bucket]
        type.s3_prefix = params[:s3_prefix]
        type
      end
    end

    module S3Logs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Logs, context: context)
        type = Types::S3Logs.new
        type.s3_bucket_name = params[:s3_bucket_name]
        type.s3_key_prefix = params[:s3_key_prefix]
        type
      end
    end

    module Schedule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Schedule, context: context)
        type = Types::Schedule.new
        type.schedule_expression = params[:schedule_expression]
        type.timezone = params[:timezone]
        type.pipeline_execution_start_condition = params[:pipeline_execution_start_condition]
        type
      end
    end

    module SecurityGroupIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ServiceException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceException, context: context)
        type = Types::ServiceException.new
        type.message = params[:message]
        type
      end
    end

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ServiceUnavailableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceUnavailableException, context: context)
        type = Types::ServiceUnavailableException.new
        type.message = params[:message]
        type
      end
    end

    module StartImagePipelineExecutionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartImagePipelineExecutionInput, context: context)
        type = Types::StartImagePipelineExecutionInput.new
        type.image_pipeline_arn = params[:image_pipeline_arn]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module StartImagePipelineExecutionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartImagePipelineExecutionOutput, context: context)
        type = Types::StartImagePipelineExecutionOutput.new
        type.request_id = params[:request_id]
        type.client_token = params[:client_token]
        type.image_build_version_arn = params[:image_build_version_arn]
        type
      end
    end

    module StringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SystemsManagerAgent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SystemsManagerAgent, context: context)
        type = Types::SystemsManagerAgent.new
        type.uninstall_after_build = params[:uninstall_after_build]
        type
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module TargetContainerRepository
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TargetContainerRepository, context: context)
        type = Types::TargetContainerRepository.new
        type.service = params[:service]
        type.repository_name = params[:repository_name]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module UpdateDistributionConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDistributionConfigurationInput, context: context)
        type = Types::UpdateDistributionConfigurationInput.new
        type.distribution_configuration_arn = params[:distribution_configuration_arn]
        type.description = params[:description]
        type.distributions = DistributionList.build(params[:distributions], context: "#{context}[:distributions]") unless params[:distributions].nil?
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module UpdateDistributionConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDistributionConfigurationOutput, context: context)
        type = Types::UpdateDistributionConfigurationOutput.new
        type.request_id = params[:request_id]
        type.client_token = params[:client_token]
        type.distribution_configuration_arn = params[:distribution_configuration_arn]
        type
      end
    end

    module UpdateImagePipelineInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateImagePipelineInput, context: context)
        type = Types::UpdateImagePipelineInput.new
        type.image_pipeline_arn = params[:image_pipeline_arn]
        type.description = params[:description]
        type.image_recipe_arn = params[:image_recipe_arn]
        type.container_recipe_arn = params[:container_recipe_arn]
        type.infrastructure_configuration_arn = params[:infrastructure_configuration_arn]
        type.distribution_configuration_arn = params[:distribution_configuration_arn]
        type.image_tests_configuration = ImageTestsConfiguration.build(params[:image_tests_configuration], context: "#{context}[:image_tests_configuration]") unless params[:image_tests_configuration].nil?
        type.enhanced_image_metadata_enabled = params[:enhanced_image_metadata_enabled]
        type.schedule = Schedule.build(params[:schedule], context: "#{context}[:schedule]") unless params[:schedule].nil?
        type.status = params[:status]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module UpdateImagePipelineOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateImagePipelineOutput, context: context)
        type = Types::UpdateImagePipelineOutput.new
        type.request_id = params[:request_id]
        type.client_token = params[:client_token]
        type.image_pipeline_arn = params[:image_pipeline_arn]
        type
      end
    end

    module UpdateInfrastructureConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateInfrastructureConfigurationInput, context: context)
        type = Types::UpdateInfrastructureConfigurationInput.new
        type.infrastructure_configuration_arn = params[:infrastructure_configuration_arn]
        type.description = params[:description]
        type.instance_types = InstanceTypeList.build(params[:instance_types], context: "#{context}[:instance_types]") unless params[:instance_types].nil?
        type.instance_profile_name = params[:instance_profile_name]
        type.security_group_ids = SecurityGroupIds.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.subnet_id = params[:subnet_id]
        type.logging = Logging.build(params[:logging], context: "#{context}[:logging]") unless params[:logging].nil?
        type.key_pair = params[:key_pair]
        type.terminate_instance_on_failure = params[:terminate_instance_on_failure]
        type.sns_topic_arn = params[:sns_topic_arn]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.resource_tags = ResourceTagMap.build(params[:resource_tags], context: "#{context}[:resource_tags]") unless params[:resource_tags].nil?
        type.instance_metadata_options = InstanceMetadataOptions.build(params[:instance_metadata_options], context: "#{context}[:instance_metadata_options]") unless params[:instance_metadata_options].nil?
        type
      end
    end

    module UpdateInfrastructureConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateInfrastructureConfigurationOutput, context: context)
        type = Types::UpdateInfrastructureConfigurationOutput.new
        type.request_id = params[:request_id]
        type.client_token = params[:client_token]
        type.infrastructure_configuration_arn = params[:infrastructure_configuration_arn]
        type
      end
    end

  end
end
