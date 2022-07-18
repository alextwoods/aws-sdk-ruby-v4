# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Imagebuilder
  module Validators

    class AccountList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AdditionalInstanceConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdditionalInstanceConfiguration, context: context)
        SystemsManagerAgent.validate!(input[:systems_manager_agent], context: "#{context}[:systems_manager_agent]") unless input[:systems_manager_agent].nil?
        Hearth::Validator.validate!(input[:user_data_override], ::String, context: "#{context}[:user_data_override]")
      end
    end

    class Ami
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Ami, context: context)
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:image], ::String, context: "#{context}[:image]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        ImageState.validate!(input[:state], context: "#{context}[:state]") unless input[:state].nil?
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
      end
    end

    class AmiDistributionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AmiDistributionConfiguration, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        AccountList.validate!(input[:target_account_ids], context: "#{context}[:target_account_ids]") unless input[:target_account_ids].nil?
        TagMap.validate!(input[:ami_tags], context: "#{context}[:ami_tags]") unless input[:ami_tags].nil?
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        LaunchPermissionConfiguration.validate!(input[:launch_permission], context: "#{context}[:launch_permission]") unless input[:launch_permission].nil?
      end
    end

    class AmiList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Ami.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CallRateLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CallRateLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CancelImageCreationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelImageCreationInput, context: context)
        Hearth::Validator.validate!(input[:image_build_version_arn], ::String, context: "#{context}[:image_build_version_arn]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CancelImageCreationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelImageCreationOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:image_build_version_arn], ::String, context: "#{context}[:image_build_version_arn]")
      end
    end

    class ClientException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClientException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Component
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Component, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:change_description], ::String, context: "#{context}[:change_description]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
        OsVersionList.validate!(input[:supported_os_versions], context: "#{context}[:supported_os_versions]") unless input[:supported_os_versions].nil?
        ComponentState.validate!(input[:state], context: "#{context}[:state]") unless input[:state].nil?
        ComponentParameterDetailList.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        Hearth::Validator.validate!(input[:owner], ::String, context: "#{context}[:owner]")
        Hearth::Validator.validate!(input[:data], ::String, context: "#{context}[:data]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:encrypted]")
        Hearth::Validator.validate!(input[:date_created], ::String, context: "#{context}[:date_created]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ComponentConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComponentConfiguration, context: context)
        Hearth::Validator.validate!(input[:component_arn], ::String, context: "#{context}[:component_arn]")
        ComponentParameterList.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
      end
    end

    class ComponentConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ComponentConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ComponentParameter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComponentParameter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        ComponentParameterValueList.validate!(input[:value], context: "#{context}[:value]") unless input[:value].nil?
      end
    end

    class ComponentParameterDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComponentParameterDetail, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        ComponentParameterValueList.validate!(input[:default_value], context: "#{context}[:default_value]") unless input[:default_value].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class ComponentParameterDetailList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ComponentParameterDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ComponentParameterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ComponentParameter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ComponentParameterValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ComponentState
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComponentState, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class ComponentSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComponentSummary, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
        OsVersionList.validate!(input[:supported_os_versions], context: "#{context}[:supported_os_versions]") unless input[:supported_os_versions].nil?
        ComponentState.validate!(input[:state], context: "#{context}[:state]") unless input[:state].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:owner], ::String, context: "#{context}[:owner]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:change_description], ::String, context: "#{context}[:change_description]")
        Hearth::Validator.validate!(input[:date_created], ::String, context: "#{context}[:date_created]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ComponentSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ComponentSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ComponentVersion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComponentVersion, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
        OsVersionList.validate!(input[:supported_os_versions], context: "#{context}[:supported_os_versions]") unless input[:supported_os_versions].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:owner], ::String, context: "#{context}[:owner]")
        Hearth::Validator.validate!(input[:date_created], ::String, context: "#{context}[:date_created]")
      end
    end

    class ComponentVersionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ComponentVersion.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Container
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Container, context: context)
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        StringList.validate!(input[:image_uris], context: "#{context}[:image_uris]") unless input[:image_uris].nil?
      end
    end

    class ContainerDistributionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContainerDistributionConfiguration, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        StringList.validate!(input[:container_tags], context: "#{context}[:container_tags]") unless input[:container_tags].nil?
        TargetContainerRepository.validate!(input[:target_repository], context: "#{context}[:target_repository]") unless input[:target_repository].nil?
      end
    end

    class ContainerList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Container.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ContainerRecipe
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContainerRecipe, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:container_type], ::String, context: "#{context}[:container_type]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
        Hearth::Validator.validate!(input[:owner], ::String, context: "#{context}[:owner]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        ComponentConfigurationList.validate!(input[:components], context: "#{context}[:components]") unless input[:components].nil?
        InstanceConfiguration.validate!(input[:instance_configuration], context: "#{context}[:instance_configuration]") unless input[:instance_configuration].nil?
        Hearth::Validator.validate!(input[:dockerfile_template_data], ::String, context: "#{context}[:dockerfile_template_data]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:encrypted]")
        Hearth::Validator.validate!(input[:parent_image], ::String, context: "#{context}[:parent_image]")
        Hearth::Validator.validate!(input[:date_created], ::String, context: "#{context}[:date_created]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:working_directory], ::String, context: "#{context}[:working_directory]")
        TargetContainerRepository.validate!(input[:target_repository], context: "#{context}[:target_repository]") unless input[:target_repository].nil?
      end
    end

    class ContainerRecipeSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContainerRecipeSummary, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:container_type], ::String, context: "#{context}[:container_type]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
        Hearth::Validator.validate!(input[:owner], ::String, context: "#{context}[:owner]")
        Hearth::Validator.validate!(input[:parent_image], ::String, context: "#{context}[:parent_image]")
        Hearth::Validator.validate!(input[:date_created], ::String, context: "#{context}[:date_created]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ContainerRecipeSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ContainerRecipeSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CreateComponentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateComponentInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:semantic_version], ::String, context: "#{context}[:semantic_version]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:change_description], ::String, context: "#{context}[:change_description]")
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
        OsVersionList.validate!(input[:supported_os_versions], context: "#{context}[:supported_os_versions]") unless input[:supported_os_versions].nil?
        Hearth::Validator.validate!(input[:data], ::String, context: "#{context}[:data]")
        Hearth::Validator.validate!(input[:uri], ::String, context: "#{context}[:uri]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateComponentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateComponentOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:component_build_version_arn], ::String, context: "#{context}[:component_build_version_arn]")
      end
    end

    class CreateContainerRecipeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateContainerRecipeInput, context: context)
        Hearth::Validator.validate!(input[:container_type], ::String, context: "#{context}[:container_type]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:semantic_version], ::String, context: "#{context}[:semantic_version]")
        ComponentConfigurationList.validate!(input[:components], context: "#{context}[:components]") unless input[:components].nil?
        InstanceConfiguration.validate!(input[:instance_configuration], context: "#{context}[:instance_configuration]") unless input[:instance_configuration].nil?
        Hearth::Validator.validate!(input[:dockerfile_template_data], ::String, context: "#{context}[:dockerfile_template_data]")
        Hearth::Validator.validate!(input[:dockerfile_template_uri], ::String, context: "#{context}[:dockerfile_template_uri]")
        Hearth::Validator.validate!(input[:platform_override], ::String, context: "#{context}[:platform_override]")
        Hearth::Validator.validate!(input[:image_os_version_override], ::String, context: "#{context}[:image_os_version_override]")
        Hearth::Validator.validate!(input[:parent_image], ::String, context: "#{context}[:parent_image]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:working_directory], ::String, context: "#{context}[:working_directory]")
        TargetContainerRepository.validate!(input[:target_repository], context: "#{context}[:target_repository]") unless input[:target_repository].nil?
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateContainerRecipeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateContainerRecipeOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:container_recipe_arn], ::String, context: "#{context}[:container_recipe_arn]")
      end
    end

    class CreateDistributionConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDistributionConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        DistributionList.validate!(input[:distributions], context: "#{context}[:distributions]") unless input[:distributions].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateDistributionConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDistributionConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:distribution_configuration_arn], ::String, context: "#{context}[:distribution_configuration_arn]")
      end
    end

    class CreateImageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateImageInput, context: context)
        Hearth::Validator.validate!(input[:image_recipe_arn], ::String, context: "#{context}[:image_recipe_arn]")
        Hearth::Validator.validate!(input[:container_recipe_arn], ::String, context: "#{context}[:container_recipe_arn]")
        Hearth::Validator.validate!(input[:distribution_configuration_arn], ::String, context: "#{context}[:distribution_configuration_arn]")
        Hearth::Validator.validate!(input[:infrastructure_configuration_arn], ::String, context: "#{context}[:infrastructure_configuration_arn]")
        ImageTestsConfiguration.validate!(input[:image_tests_configuration], context: "#{context}[:image_tests_configuration]") unless input[:image_tests_configuration].nil?
        Hearth::Validator.validate!(input[:enhanced_image_metadata_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enhanced_image_metadata_enabled]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateImageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateImageOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:image_build_version_arn], ::String, context: "#{context}[:image_build_version_arn]")
      end
    end

    class CreateImagePipelineInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateImagePipelineInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:image_recipe_arn], ::String, context: "#{context}[:image_recipe_arn]")
        Hearth::Validator.validate!(input[:container_recipe_arn], ::String, context: "#{context}[:container_recipe_arn]")
        Hearth::Validator.validate!(input[:infrastructure_configuration_arn], ::String, context: "#{context}[:infrastructure_configuration_arn]")
        Hearth::Validator.validate!(input[:distribution_configuration_arn], ::String, context: "#{context}[:distribution_configuration_arn]")
        ImageTestsConfiguration.validate!(input[:image_tests_configuration], context: "#{context}[:image_tests_configuration]") unless input[:image_tests_configuration].nil?
        Hearth::Validator.validate!(input[:enhanced_image_metadata_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enhanced_image_metadata_enabled]")
        Schedule.validate!(input[:schedule], context: "#{context}[:schedule]") unless input[:schedule].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateImagePipelineOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateImagePipelineOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:image_pipeline_arn], ::String, context: "#{context}[:image_pipeline_arn]")
      end
    end

    class CreateImageRecipeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateImageRecipeInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:semantic_version], ::String, context: "#{context}[:semantic_version]")
        ComponentConfigurationList.validate!(input[:components], context: "#{context}[:components]") unless input[:components].nil?
        Hearth::Validator.validate!(input[:parent_image], ::String, context: "#{context}[:parent_image]")
        InstanceBlockDeviceMappings.validate!(input[:block_device_mappings], context: "#{context}[:block_device_mappings]") unless input[:block_device_mappings].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:working_directory], ::String, context: "#{context}[:working_directory]")
        AdditionalInstanceConfiguration.validate!(input[:additional_instance_configuration], context: "#{context}[:additional_instance_configuration]") unless input[:additional_instance_configuration].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateImageRecipeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateImageRecipeOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:image_recipe_arn], ::String, context: "#{context}[:image_recipe_arn]")
      end
    end

    class CreateInfrastructureConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateInfrastructureConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        InstanceTypeList.validate!(input[:instance_types], context: "#{context}[:instance_types]") unless input[:instance_types].nil?
        Hearth::Validator.validate!(input[:instance_profile_name], ::String, context: "#{context}[:instance_profile_name]")
        SecurityGroupIds.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
        Logging.validate!(input[:logging], context: "#{context}[:logging]") unless input[:logging].nil?
        Hearth::Validator.validate!(input[:key_pair], ::String, context: "#{context}[:key_pair]")
        Hearth::Validator.validate!(input[:terminate_instance_on_failure], ::TrueClass, ::FalseClass, context: "#{context}[:terminate_instance_on_failure]")
        Hearth::Validator.validate!(input[:sns_topic_arn], ::String, context: "#{context}[:sns_topic_arn]")
        ResourceTagMap.validate!(input[:resource_tags], context: "#{context}[:resource_tags]") unless input[:resource_tags].nil?
        InstanceMetadataOptions.validate!(input[:instance_metadata_options], context: "#{context}[:instance_metadata_options]") unless input[:instance_metadata_options].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateInfrastructureConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateInfrastructureConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:infrastructure_configuration_arn], ::String, context: "#{context}[:infrastructure_configuration_arn]")
      end
    end

    class DeleteComponentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteComponentInput, context: context)
        Hearth::Validator.validate!(input[:component_build_version_arn], ::String, context: "#{context}[:component_build_version_arn]")
      end
    end

    class DeleteComponentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteComponentOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:component_build_version_arn], ::String, context: "#{context}[:component_build_version_arn]")
      end
    end

    class DeleteContainerRecipeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteContainerRecipeInput, context: context)
        Hearth::Validator.validate!(input[:container_recipe_arn], ::String, context: "#{context}[:container_recipe_arn]")
      end
    end

    class DeleteContainerRecipeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteContainerRecipeOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:container_recipe_arn], ::String, context: "#{context}[:container_recipe_arn]")
      end
    end

    class DeleteDistributionConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDistributionConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:distribution_configuration_arn], ::String, context: "#{context}[:distribution_configuration_arn]")
      end
    end

    class DeleteDistributionConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDistributionConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:distribution_configuration_arn], ::String, context: "#{context}[:distribution_configuration_arn]")
      end
    end

    class DeleteImageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteImageInput, context: context)
        Hearth::Validator.validate!(input[:image_build_version_arn], ::String, context: "#{context}[:image_build_version_arn]")
      end
    end

    class DeleteImageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteImageOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:image_build_version_arn], ::String, context: "#{context}[:image_build_version_arn]")
      end
    end

    class DeleteImagePipelineInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteImagePipelineInput, context: context)
        Hearth::Validator.validate!(input[:image_pipeline_arn], ::String, context: "#{context}[:image_pipeline_arn]")
      end
    end

    class DeleteImagePipelineOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteImagePipelineOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:image_pipeline_arn], ::String, context: "#{context}[:image_pipeline_arn]")
      end
    end

    class DeleteImageRecipeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteImageRecipeInput, context: context)
        Hearth::Validator.validate!(input[:image_recipe_arn], ::String, context: "#{context}[:image_recipe_arn]")
      end
    end

    class DeleteImageRecipeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteImageRecipeOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:image_recipe_arn], ::String, context: "#{context}[:image_recipe_arn]")
      end
    end

    class DeleteInfrastructureConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteInfrastructureConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:infrastructure_configuration_arn], ::String, context: "#{context}[:infrastructure_configuration_arn]")
      end
    end

    class DeleteInfrastructureConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteInfrastructureConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:infrastructure_configuration_arn], ::String, context: "#{context}[:infrastructure_configuration_arn]")
      end
    end

    class Distribution
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Distribution, context: context)
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        AmiDistributionConfiguration.validate!(input[:ami_distribution_configuration], context: "#{context}[:ami_distribution_configuration]") unless input[:ami_distribution_configuration].nil?
        ContainerDistributionConfiguration.validate!(input[:container_distribution_configuration], context: "#{context}[:container_distribution_configuration]") unless input[:container_distribution_configuration].nil?
        LicenseConfigurationArnList.validate!(input[:license_configuration_arns], context: "#{context}[:license_configuration_arns]") unless input[:license_configuration_arns].nil?
        LaunchTemplateConfigurationList.validate!(input[:launch_template_configurations], context: "#{context}[:launch_template_configurations]") unless input[:launch_template_configurations].nil?
        S3ExportConfiguration.validate!(input[:s3_export_configuration], context: "#{context}[:s3_export_configuration]") unless input[:s3_export_configuration].nil?
        FastLaunchConfigurationList.validate!(input[:fast_launch_configurations], context: "#{context}[:fast_launch_configurations]") unless input[:fast_launch_configurations].nil?
      end
    end

    class DistributionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DistributionConfiguration, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        DistributionList.validate!(input[:distributions], context: "#{context}[:distributions]") unless input[:distributions].nil?
        Hearth::Validator.validate!(input[:timeout_minutes], ::Integer, context: "#{context}[:timeout_minutes]")
        Hearth::Validator.validate!(input[:date_created], ::String, context: "#{context}[:date_created]")
        Hearth::Validator.validate!(input[:date_updated], ::String, context: "#{context}[:date_updated]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class DistributionConfigurationSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DistributionConfigurationSummary, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:date_created], ::String, context: "#{context}[:date_created]")
        Hearth::Validator.validate!(input[:date_updated], ::String, context: "#{context}[:date_updated]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        RegionList.validate!(input[:regions], context: "#{context}[:regions]") unless input[:regions].nil?
      end
    end

    class DistributionConfigurationSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DistributionConfigurationSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DistributionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Distribution.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EbsInstanceBlockDeviceSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EbsInstanceBlockDeviceSpecification, context: context)
        Hearth::Validator.validate!(input[:encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:encrypted]")
        Hearth::Validator.validate!(input[:delete_on_termination], ::TrueClass, ::FalseClass, context: "#{context}[:delete_on_termination]")
        Hearth::Validator.validate!(input[:iops], ::Integer, context: "#{context}[:iops]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:snapshot_id], ::String, context: "#{context}[:snapshot_id]")
        Hearth::Validator.validate!(input[:volume_size], ::Integer, context: "#{context}[:volume_size]")
        Hearth::Validator.validate!(input[:volume_type], ::String, context: "#{context}[:volume_type]")
        Hearth::Validator.validate!(input[:throughput], ::Integer, context: "#{context}[:throughput]")
      end
    end

    class FastLaunchConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FastLaunchConfiguration, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        FastLaunchSnapshotConfiguration.validate!(input[:snapshot_configuration], context: "#{context}[:snapshot_configuration]") unless input[:snapshot_configuration].nil?
        Hearth::Validator.validate!(input[:max_parallel_launches], ::Integer, context: "#{context}[:max_parallel_launches]")
        FastLaunchLaunchTemplateSpecification.validate!(input[:launch_template], context: "#{context}[:launch_template]") unless input[:launch_template].nil?
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
      end
    end

    class FastLaunchConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          FastLaunchConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FastLaunchLaunchTemplateSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FastLaunchLaunchTemplateSpecification, context: context)
        Hearth::Validator.validate!(input[:launch_template_id], ::String, context: "#{context}[:launch_template_id]")
        Hearth::Validator.validate!(input[:launch_template_name], ::String, context: "#{context}[:launch_template_name]")
        Hearth::Validator.validate!(input[:launch_template_version], ::String, context: "#{context}[:launch_template_version]")
      end
    end

    class FastLaunchSnapshotConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FastLaunchSnapshotConfiguration, context: context)
        Hearth::Validator.validate!(input[:target_resource_count], ::Integer, context: "#{context}[:target_resource_count]")
      end
    end

    class Filter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Filter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        FilterValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class FilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Filter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FilterValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ForbiddenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ForbiddenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class GetComponentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetComponentInput, context: context)
        Hearth::Validator.validate!(input[:component_build_version_arn], ::String, context: "#{context}[:component_build_version_arn]")
      end
    end

    class GetComponentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetComponentOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Component.validate!(input[:component], context: "#{context}[:component]") unless input[:component].nil?
      end
    end

    class GetComponentPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetComponentPolicyInput, context: context)
        Hearth::Validator.validate!(input[:component_arn], ::String, context: "#{context}[:component_arn]")
      end
    end

    class GetComponentPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetComponentPolicyOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
      end
    end

    class GetContainerRecipeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetContainerRecipeInput, context: context)
        Hearth::Validator.validate!(input[:container_recipe_arn], ::String, context: "#{context}[:container_recipe_arn]")
      end
    end

    class GetContainerRecipeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetContainerRecipeOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        ContainerRecipe.validate!(input[:container_recipe], context: "#{context}[:container_recipe]") unless input[:container_recipe].nil?
      end
    end

    class GetContainerRecipePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetContainerRecipePolicyInput, context: context)
        Hearth::Validator.validate!(input[:container_recipe_arn], ::String, context: "#{context}[:container_recipe_arn]")
      end
    end

    class GetContainerRecipePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetContainerRecipePolicyOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
      end
    end

    class GetDistributionConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDistributionConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:distribution_configuration_arn], ::String, context: "#{context}[:distribution_configuration_arn]")
      end
    end

    class GetDistributionConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDistributionConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        DistributionConfiguration.validate!(input[:distribution_configuration], context: "#{context}[:distribution_configuration]") unless input[:distribution_configuration].nil?
      end
    end

    class GetImageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetImageInput, context: context)
        Hearth::Validator.validate!(input[:image_build_version_arn], ::String, context: "#{context}[:image_build_version_arn]")
      end
    end

    class GetImageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetImageOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Image.validate!(input[:image], context: "#{context}[:image]") unless input[:image].nil?
      end
    end

    class GetImagePipelineInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetImagePipelineInput, context: context)
        Hearth::Validator.validate!(input[:image_pipeline_arn], ::String, context: "#{context}[:image_pipeline_arn]")
      end
    end

    class GetImagePipelineOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetImagePipelineOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        ImagePipeline.validate!(input[:image_pipeline], context: "#{context}[:image_pipeline]") unless input[:image_pipeline].nil?
      end
    end

    class GetImagePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetImagePolicyInput, context: context)
        Hearth::Validator.validate!(input[:image_arn], ::String, context: "#{context}[:image_arn]")
      end
    end

    class GetImagePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetImagePolicyOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
      end
    end

    class GetImageRecipeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetImageRecipeInput, context: context)
        Hearth::Validator.validate!(input[:image_recipe_arn], ::String, context: "#{context}[:image_recipe_arn]")
      end
    end

    class GetImageRecipeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetImageRecipeOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        ImageRecipe.validate!(input[:image_recipe], context: "#{context}[:image_recipe]") unless input[:image_recipe].nil?
      end
    end

    class GetImageRecipePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetImageRecipePolicyInput, context: context)
        Hearth::Validator.validate!(input[:image_recipe_arn], ::String, context: "#{context}[:image_recipe_arn]")
      end
    end

    class GetImageRecipePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetImageRecipePolicyOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
      end
    end

    class GetInfrastructureConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInfrastructureConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:infrastructure_configuration_arn], ::String, context: "#{context}[:infrastructure_configuration_arn]")
      end
    end

    class GetInfrastructureConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInfrastructureConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        InfrastructureConfiguration.validate!(input[:infrastructure_configuration], context: "#{context}[:infrastructure_configuration]") unless input[:infrastructure_configuration].nil?
      end
    end

    class IdempotentParameterMismatchException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IdempotentParameterMismatchException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Image
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Image, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
        Hearth::Validator.validate!(input[:enhanced_image_metadata_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enhanced_image_metadata_enabled]")
        Hearth::Validator.validate!(input[:os_version], ::String, context: "#{context}[:os_version]")
        ImageState.validate!(input[:state], context: "#{context}[:state]") unless input[:state].nil?
        ImageRecipe.validate!(input[:image_recipe], context: "#{context}[:image_recipe]") unless input[:image_recipe].nil?
        ContainerRecipe.validate!(input[:container_recipe], context: "#{context}[:container_recipe]") unless input[:container_recipe].nil?
        Hearth::Validator.validate!(input[:source_pipeline_name], ::String, context: "#{context}[:source_pipeline_name]")
        Hearth::Validator.validate!(input[:source_pipeline_arn], ::String, context: "#{context}[:source_pipeline_arn]")
        InfrastructureConfiguration.validate!(input[:infrastructure_configuration], context: "#{context}[:infrastructure_configuration]") unless input[:infrastructure_configuration].nil?
        DistributionConfiguration.validate!(input[:distribution_configuration], context: "#{context}[:distribution_configuration]") unless input[:distribution_configuration].nil?
        ImageTestsConfiguration.validate!(input[:image_tests_configuration], context: "#{context}[:image_tests_configuration]") unless input[:image_tests_configuration].nil?
        Hearth::Validator.validate!(input[:date_created], ::String, context: "#{context}[:date_created]")
        OutputResources.validate!(input[:output_resources], context: "#{context}[:output_resources]") unless input[:output_resources].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:build_type], ::String, context: "#{context}[:build_type]")
      end
    end

    class ImagePackage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImagePackage, context: context)
        Hearth::Validator.validate!(input[:package_name], ::String, context: "#{context}[:package_name]")
        Hearth::Validator.validate!(input[:package_version], ::String, context: "#{context}[:package_version]")
      end
    end

    class ImagePackageList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ImagePackage.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ImagePipeline
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImagePipeline, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
        Hearth::Validator.validate!(input[:enhanced_image_metadata_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enhanced_image_metadata_enabled]")
        Hearth::Validator.validate!(input[:image_recipe_arn], ::String, context: "#{context}[:image_recipe_arn]")
        Hearth::Validator.validate!(input[:container_recipe_arn], ::String, context: "#{context}[:container_recipe_arn]")
        Hearth::Validator.validate!(input[:infrastructure_configuration_arn], ::String, context: "#{context}[:infrastructure_configuration_arn]")
        Hearth::Validator.validate!(input[:distribution_configuration_arn], ::String, context: "#{context}[:distribution_configuration_arn]")
        ImageTestsConfiguration.validate!(input[:image_tests_configuration], context: "#{context}[:image_tests_configuration]") unless input[:image_tests_configuration].nil?
        Schedule.validate!(input[:schedule], context: "#{context}[:schedule]") unless input[:schedule].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:date_created], ::String, context: "#{context}[:date_created]")
        Hearth::Validator.validate!(input[:date_updated], ::String, context: "#{context}[:date_updated]")
        Hearth::Validator.validate!(input[:date_last_run], ::String, context: "#{context}[:date_last_run]")
        Hearth::Validator.validate!(input[:date_next_run], ::String, context: "#{context}[:date_next_run]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ImagePipelineList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ImagePipeline.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ImageRecipe
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImageRecipe, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
        Hearth::Validator.validate!(input[:owner], ::String, context: "#{context}[:owner]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        ComponentConfigurationList.validate!(input[:components], context: "#{context}[:components]") unless input[:components].nil?
        Hearth::Validator.validate!(input[:parent_image], ::String, context: "#{context}[:parent_image]")
        InstanceBlockDeviceMappings.validate!(input[:block_device_mappings], context: "#{context}[:block_device_mappings]") unless input[:block_device_mappings].nil?
        Hearth::Validator.validate!(input[:date_created], ::String, context: "#{context}[:date_created]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:working_directory], ::String, context: "#{context}[:working_directory]")
        AdditionalInstanceConfiguration.validate!(input[:additional_instance_configuration], context: "#{context}[:additional_instance_configuration]") unless input[:additional_instance_configuration].nil?
      end
    end

    class ImageRecipeSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImageRecipeSummary, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
        Hearth::Validator.validate!(input[:owner], ::String, context: "#{context}[:owner]")
        Hearth::Validator.validate!(input[:parent_image], ::String, context: "#{context}[:parent_image]")
        Hearth::Validator.validate!(input[:date_created], ::String, context: "#{context}[:date_created]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ImageRecipeSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ImageRecipeSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ImageState
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImageState, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class ImageSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImageSummary, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
        Hearth::Validator.validate!(input[:os_version], ::String, context: "#{context}[:os_version]")
        ImageState.validate!(input[:state], context: "#{context}[:state]") unless input[:state].nil?
        Hearth::Validator.validate!(input[:owner], ::String, context: "#{context}[:owner]")
        Hearth::Validator.validate!(input[:date_created], ::String, context: "#{context}[:date_created]")
        OutputResources.validate!(input[:output_resources], context: "#{context}[:output_resources]") unless input[:output_resources].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:build_type], ::String, context: "#{context}[:build_type]")
      end
    end

    class ImageSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ImageSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ImageTestsConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImageTestsConfiguration, context: context)
        Hearth::Validator.validate!(input[:image_tests_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:image_tests_enabled]")
        Hearth::Validator.validate!(input[:timeout_minutes], ::Integer, context: "#{context}[:timeout_minutes]")
      end
    end

    class ImageVersion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImageVersion, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
        Hearth::Validator.validate!(input[:os_version], ::String, context: "#{context}[:os_version]")
        Hearth::Validator.validate!(input[:owner], ::String, context: "#{context}[:owner]")
        Hearth::Validator.validate!(input[:date_created], ::String, context: "#{context}[:date_created]")
        Hearth::Validator.validate!(input[:build_type], ::String, context: "#{context}[:build_type]")
      end
    end

    class ImageVersionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ImageVersion.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ImportComponentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportComponentInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:semantic_version], ::String, context: "#{context}[:semantic_version]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:change_description], ::String, context: "#{context}[:change_description]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
        Hearth::Validator.validate!(input[:data], ::String, context: "#{context}[:data]")
        Hearth::Validator.validate!(input[:uri], ::String, context: "#{context}[:uri]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class ImportComponentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportComponentOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:component_build_version_arn], ::String, context: "#{context}[:component_build_version_arn]")
      end
    end

    class ImportVmImageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportVmImageInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:semantic_version], ::String, context: "#{context}[:semantic_version]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
        Hearth::Validator.validate!(input[:os_version], ::String, context: "#{context}[:os_version]")
        Hearth::Validator.validate!(input[:vm_import_task_id], ::String, context: "#{context}[:vm_import_task_id]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class ImportVmImageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportVmImageOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:image_arn], ::String, context: "#{context}[:image_arn]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class InfrastructureConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InfrastructureConfiguration, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        InstanceTypeList.validate!(input[:instance_types], context: "#{context}[:instance_types]") unless input[:instance_types].nil?
        Hearth::Validator.validate!(input[:instance_profile_name], ::String, context: "#{context}[:instance_profile_name]")
        SecurityGroupIds.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
        Logging.validate!(input[:logging], context: "#{context}[:logging]") unless input[:logging].nil?
        Hearth::Validator.validate!(input[:key_pair], ::String, context: "#{context}[:key_pair]")
        Hearth::Validator.validate!(input[:terminate_instance_on_failure], ::TrueClass, ::FalseClass, context: "#{context}[:terminate_instance_on_failure]")
        Hearth::Validator.validate!(input[:sns_topic_arn], ::String, context: "#{context}[:sns_topic_arn]")
        Hearth::Validator.validate!(input[:date_created], ::String, context: "#{context}[:date_created]")
        Hearth::Validator.validate!(input[:date_updated], ::String, context: "#{context}[:date_updated]")
        ResourceTagMap.validate!(input[:resource_tags], context: "#{context}[:resource_tags]") unless input[:resource_tags].nil?
        InstanceMetadataOptions.validate!(input[:instance_metadata_options], context: "#{context}[:instance_metadata_options]") unless input[:instance_metadata_options].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class InfrastructureConfigurationSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InfrastructureConfigurationSummary, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:date_created], ::String, context: "#{context}[:date_created]")
        Hearth::Validator.validate!(input[:date_updated], ::String, context: "#{context}[:date_updated]")
        ResourceTagMap.validate!(input[:resource_tags], context: "#{context}[:resource_tags]") unless input[:resource_tags].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        InstanceTypeList.validate!(input[:instance_types], context: "#{context}[:instance_types]") unless input[:instance_types].nil?
        Hearth::Validator.validate!(input[:instance_profile_name], ::String, context: "#{context}[:instance_profile_name]")
      end
    end

    class InfrastructureConfigurationSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InfrastructureConfigurationSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InstanceBlockDeviceMapping
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceBlockDeviceMapping, context: context)
        Hearth::Validator.validate!(input[:device_name], ::String, context: "#{context}[:device_name]")
        EbsInstanceBlockDeviceSpecification.validate!(input[:ebs], context: "#{context}[:ebs]") unless input[:ebs].nil?
        Hearth::Validator.validate!(input[:virtual_name], ::String, context: "#{context}[:virtual_name]")
        Hearth::Validator.validate!(input[:no_device], ::String, context: "#{context}[:no_device]")
      end
    end

    class InstanceBlockDeviceMappings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InstanceBlockDeviceMapping.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InstanceConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceConfiguration, context: context)
        Hearth::Validator.validate!(input[:image], ::String, context: "#{context}[:image]")
        InstanceBlockDeviceMappings.validate!(input[:block_device_mappings], context: "#{context}[:block_device_mappings]") unless input[:block_device_mappings].nil?
      end
    end

    class InstanceMetadataOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceMetadataOptions, context: context)
        Hearth::Validator.validate!(input[:http_tokens], ::String, context: "#{context}[:http_tokens]")
        Hearth::Validator.validate!(input[:http_put_response_hop_limit], ::Integer, context: "#{context}[:http_put_response_hop_limit]")
      end
    end

    class InstanceTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InvalidPaginationTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidPaginationTokenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidParameterCombinationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParameterCombinationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidParameterException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParameterException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidParameterValueException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParameterValueException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidVersionNumberException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidVersionNumberException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LaunchPermissionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LaunchPermissionConfiguration, context: context)
        AccountList.validate!(input[:user_ids], context: "#{context}[:user_ids]") unless input[:user_ids].nil?
        StringList.validate!(input[:user_groups], context: "#{context}[:user_groups]") unless input[:user_groups].nil?
        OrganizationArnList.validate!(input[:organization_arns], context: "#{context}[:organization_arns]") unless input[:organization_arns].nil?
        OrganizationalUnitArnList.validate!(input[:organizational_unit_arns], context: "#{context}[:organizational_unit_arns]") unless input[:organizational_unit_arns].nil?
      end
    end

    class LaunchTemplateConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LaunchTemplateConfiguration, context: context)
        Hearth::Validator.validate!(input[:launch_template_id], ::String, context: "#{context}[:launch_template_id]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:set_default_version], ::TrueClass, ::FalseClass, context: "#{context}[:set_default_version]")
      end
    end

    class LaunchTemplateConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LaunchTemplateConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LicenseConfigurationArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ListComponentBuildVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListComponentBuildVersionsInput, context: context)
        Hearth::Validator.validate!(input[:component_version_arn], ::String, context: "#{context}[:component_version_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListComponentBuildVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListComponentBuildVersionsOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        ComponentSummaryList.validate!(input[:component_summary_list], context: "#{context}[:component_summary_list]") unless input[:component_summary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListComponentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListComponentsInput, context: context)
        Hearth::Validator.validate!(input[:owner], ::String, context: "#{context}[:owner]")
        FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:by_name], ::TrueClass, ::FalseClass, context: "#{context}[:by_name]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListComponentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListComponentsOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        ComponentVersionList.validate!(input[:component_version_list], context: "#{context}[:component_version_list]") unless input[:component_version_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListContainerRecipesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListContainerRecipesInput, context: context)
        Hearth::Validator.validate!(input[:owner], ::String, context: "#{context}[:owner]")
        FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListContainerRecipesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListContainerRecipesOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        ContainerRecipeSummaryList.validate!(input[:container_recipe_summary_list], context: "#{context}[:container_recipe_summary_list]") unless input[:container_recipe_summary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDistributionConfigurationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDistributionConfigurationsInput, context: context)
        FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDistributionConfigurationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDistributionConfigurationsOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        DistributionConfigurationSummaryList.validate!(input[:distribution_configuration_summary_list], context: "#{context}[:distribution_configuration_summary_list]") unless input[:distribution_configuration_summary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListImageBuildVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListImageBuildVersionsInput, context: context)
        Hearth::Validator.validate!(input[:image_version_arn], ::String, context: "#{context}[:image_version_arn]")
        FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListImageBuildVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListImageBuildVersionsOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        ImageSummaryList.validate!(input[:image_summary_list], context: "#{context}[:image_summary_list]") unless input[:image_summary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListImagePackagesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListImagePackagesInput, context: context)
        Hearth::Validator.validate!(input[:image_build_version_arn], ::String, context: "#{context}[:image_build_version_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListImagePackagesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListImagePackagesOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        ImagePackageList.validate!(input[:image_package_list], context: "#{context}[:image_package_list]") unless input[:image_package_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListImagePipelineImagesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListImagePipelineImagesInput, context: context)
        Hearth::Validator.validate!(input[:image_pipeline_arn], ::String, context: "#{context}[:image_pipeline_arn]")
        FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListImagePipelineImagesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListImagePipelineImagesOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        ImageSummaryList.validate!(input[:image_summary_list], context: "#{context}[:image_summary_list]") unless input[:image_summary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListImagePipelinesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListImagePipelinesInput, context: context)
        FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListImagePipelinesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListImagePipelinesOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        ImagePipelineList.validate!(input[:image_pipeline_list], context: "#{context}[:image_pipeline_list]") unless input[:image_pipeline_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListImageRecipesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListImageRecipesInput, context: context)
        Hearth::Validator.validate!(input[:owner], ::String, context: "#{context}[:owner]")
        FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListImageRecipesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListImageRecipesOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        ImageRecipeSummaryList.validate!(input[:image_recipe_summary_list], context: "#{context}[:image_recipe_summary_list]") unless input[:image_recipe_summary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListImagesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListImagesInput, context: context)
        Hearth::Validator.validate!(input[:owner], ::String, context: "#{context}[:owner]")
        FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:by_name], ::TrueClass, ::FalseClass, context: "#{context}[:by_name]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:include_deprecated], ::TrueClass, ::FalseClass, context: "#{context}[:include_deprecated]")
      end
    end

    class ListImagesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListImagesOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        ImageVersionList.validate!(input[:image_version_list], context: "#{context}[:image_version_list]") unless input[:image_version_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListInfrastructureConfigurationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInfrastructureConfigurationsInput, context: context)
        FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListInfrastructureConfigurationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInfrastructureConfigurationsOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        InfrastructureConfigurationSummaryList.validate!(input[:infrastructure_configuration_summary_list], context: "#{context}[:infrastructure_configuration_summary_list]") unless input[:infrastructure_configuration_summary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class Logging
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Logging, context: context)
        S3Logs.validate!(input[:s3_logs], context: "#{context}[:s3_logs]") unless input[:s3_logs].nil?
      end
    end

    class OrganizationArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class OrganizationalUnitArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class OsVersionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class OutputResources
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OutputResources, context: context)
        AmiList.validate!(input[:amis], context: "#{context}[:amis]") unless input[:amis].nil?
        ContainerList.validate!(input[:containers], context: "#{context}[:containers]") unless input[:containers].nil?
      end
    end

    class PutComponentPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutComponentPolicyInput, context: context)
        Hearth::Validator.validate!(input[:component_arn], ::String, context: "#{context}[:component_arn]")
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
      end
    end

    class PutComponentPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutComponentPolicyOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:component_arn], ::String, context: "#{context}[:component_arn]")
      end
    end

    class PutContainerRecipePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutContainerRecipePolicyInput, context: context)
        Hearth::Validator.validate!(input[:container_recipe_arn], ::String, context: "#{context}[:container_recipe_arn]")
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
      end
    end

    class PutContainerRecipePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutContainerRecipePolicyOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:container_recipe_arn], ::String, context: "#{context}[:container_recipe_arn]")
      end
    end

    class PutImagePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutImagePolicyInput, context: context)
        Hearth::Validator.validate!(input[:image_arn], ::String, context: "#{context}[:image_arn]")
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
      end
    end

    class PutImagePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutImagePolicyOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:image_arn], ::String, context: "#{context}[:image_arn]")
      end
    end

    class PutImageRecipePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutImageRecipePolicyInput, context: context)
        Hearth::Validator.validate!(input[:image_recipe_arn], ::String, context: "#{context}[:image_recipe_arn]")
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
      end
    end

    class PutImageRecipePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutImageRecipePolicyOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:image_recipe_arn], ::String, context: "#{context}[:image_recipe_arn]")
      end
    end

    class RegionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ResourceAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceDependencyException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceDependencyException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceInUseException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceTagMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class S3ExportConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3ExportConfiguration, context: context)
        Hearth::Validator.validate!(input[:role_name], ::String, context: "#{context}[:role_name]")
        Hearth::Validator.validate!(input[:disk_image_format], ::String, context: "#{context}[:disk_image_format]")
        Hearth::Validator.validate!(input[:s3_bucket], ::String, context: "#{context}[:s3_bucket]")
        Hearth::Validator.validate!(input[:s3_prefix], ::String, context: "#{context}[:s3_prefix]")
      end
    end

    class S3Logs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Logs, context: context)
        Hearth::Validator.validate!(input[:s3_bucket_name], ::String, context: "#{context}[:s3_bucket_name]")
        Hearth::Validator.validate!(input[:s3_key_prefix], ::String, context: "#{context}[:s3_key_prefix]")
      end
    end

    class Schedule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Schedule, context: context)
        Hearth::Validator.validate!(input[:schedule_expression], ::String, context: "#{context}[:schedule_expression]")
        Hearth::Validator.validate!(input[:timezone], ::String, context: "#{context}[:timezone]")
        Hearth::Validator.validate!(input[:pipeline_execution_start_condition], ::String, context: "#{context}[:pipeline_execution_start_condition]")
      end
    end

    class SecurityGroupIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ServiceException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ServiceUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceUnavailableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class StartImagePipelineExecutionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartImagePipelineExecutionInput, context: context)
        Hearth::Validator.validate!(input[:image_pipeline_arn], ::String, context: "#{context}[:image_pipeline_arn]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class StartImagePipelineExecutionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartImagePipelineExecutionOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:image_build_version_arn], ::String, context: "#{context}[:image_build_version_arn]")
      end
    end

    class StringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SystemsManagerAgent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SystemsManagerAgent, context: context)
        Hearth::Validator.validate!(input[:uninstall_after_build], ::TrueClass, ::FalseClass, context: "#{context}[:uninstall_after_build]")
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TargetContainerRepository
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TargetContainerRepository, context: context)
        Hearth::Validator.validate!(input[:service], ::String, context: "#{context}[:service]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateDistributionConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDistributionConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:distribution_configuration_arn], ::String, context: "#{context}[:distribution_configuration_arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        DistributionList.validate!(input[:distributions], context: "#{context}[:distributions]") unless input[:distributions].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class UpdateDistributionConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDistributionConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:distribution_configuration_arn], ::String, context: "#{context}[:distribution_configuration_arn]")
      end
    end

    class UpdateImagePipelineInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateImagePipelineInput, context: context)
        Hearth::Validator.validate!(input[:image_pipeline_arn], ::String, context: "#{context}[:image_pipeline_arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:image_recipe_arn], ::String, context: "#{context}[:image_recipe_arn]")
        Hearth::Validator.validate!(input[:container_recipe_arn], ::String, context: "#{context}[:container_recipe_arn]")
        Hearth::Validator.validate!(input[:infrastructure_configuration_arn], ::String, context: "#{context}[:infrastructure_configuration_arn]")
        Hearth::Validator.validate!(input[:distribution_configuration_arn], ::String, context: "#{context}[:distribution_configuration_arn]")
        ImageTestsConfiguration.validate!(input[:image_tests_configuration], context: "#{context}[:image_tests_configuration]") unless input[:image_tests_configuration].nil?
        Hearth::Validator.validate!(input[:enhanced_image_metadata_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enhanced_image_metadata_enabled]")
        Schedule.validate!(input[:schedule], context: "#{context}[:schedule]") unless input[:schedule].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class UpdateImagePipelineOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateImagePipelineOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:image_pipeline_arn], ::String, context: "#{context}[:image_pipeline_arn]")
      end
    end

    class UpdateInfrastructureConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateInfrastructureConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:infrastructure_configuration_arn], ::String, context: "#{context}[:infrastructure_configuration_arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        InstanceTypeList.validate!(input[:instance_types], context: "#{context}[:instance_types]") unless input[:instance_types].nil?
        Hearth::Validator.validate!(input[:instance_profile_name], ::String, context: "#{context}[:instance_profile_name]")
        SecurityGroupIds.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
        Logging.validate!(input[:logging], context: "#{context}[:logging]") unless input[:logging].nil?
        Hearth::Validator.validate!(input[:key_pair], ::String, context: "#{context}[:key_pair]")
        Hearth::Validator.validate!(input[:terminate_instance_on_failure], ::TrueClass, ::FalseClass, context: "#{context}[:terminate_instance_on_failure]")
        Hearth::Validator.validate!(input[:sns_topic_arn], ::String, context: "#{context}[:sns_topic_arn]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        ResourceTagMap.validate!(input[:resource_tags], context: "#{context}[:resource_tags]") unless input[:resource_tags].nil?
        InstanceMetadataOptions.validate!(input[:instance_metadata_options], context: "#{context}[:instance_metadata_options]") unless input[:instance_metadata_options].nil?
      end
    end

    class UpdateInfrastructureConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateInfrastructureConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:infrastructure_configuration_arn], ::String, context: "#{context}[:infrastructure_configuration_arn]")
      end
    end

  end
end
