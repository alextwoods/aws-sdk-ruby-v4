# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::Proton
  module Validators

    class AcceptEnvironmentAccountConnectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceptEnvironmentAccountConnectionInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class AcceptEnvironmentAccountConnectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceptEnvironmentAccountConnectionOutput, context: context)
        EnvironmentAccountConnection.validate!(input[:environment_account_connection], context: "#{context}[:environment_account_connection]") unless input[:environment_account_connection].nil?
      end
    end

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AccountSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccountSettings, context: context)
        Hearth::Validator.validate!(input[:pipeline_service_role_arn], ::String, context: "#{context}[:pipeline_service_role_arn]")
        RepositoryBranch.validate!(input[:pipeline_provisioning_repository], context: "#{context}[:pipeline_provisioning_repository]") unless input[:pipeline_provisioning_repository].nil?
      end
    end

    class CancelComponentDeploymentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelComponentDeploymentInput, context: context)
        Hearth::Validator.validate!(input[:component_name], ::String, context: "#{context}[:component_name]")
      end
    end

    class CancelComponentDeploymentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelComponentDeploymentOutput, context: context)
        Component.validate!(input[:component], context: "#{context}[:component]") unless input[:component].nil?
      end
    end

    class CancelEnvironmentDeploymentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelEnvironmentDeploymentInput, context: context)
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
      end
    end

    class CancelEnvironmentDeploymentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelEnvironmentDeploymentOutput, context: context)
        Environment.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
      end
    end

    class CancelServiceInstanceDeploymentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelServiceInstanceDeploymentInput, context: context)
        Hearth::Validator.validate!(input[:service_instance_name], ::String, context: "#{context}[:service_instance_name]")
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
      end
    end

    class CancelServiceInstanceDeploymentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelServiceInstanceDeploymentOutput, context: context)
        ServiceInstance.validate!(input[:service_instance], context: "#{context}[:service_instance]") unless input[:service_instance].nil?
      end
    end

    class CancelServicePipelineDeploymentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelServicePipelineDeploymentInput, context: context)
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
      end
    end

    class CancelServicePipelineDeploymentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelServicePipelineDeploymentOutput, context: context)
        ServicePipeline.validate!(input[:pipeline], context: "#{context}[:pipeline]") unless input[:pipeline].nil?
      end
    end

    class CompatibleEnvironmentTemplate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CompatibleEnvironmentTemplate, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:major_version], ::String, context: "#{context}[:major_version]")
      end
    end

    class CompatibleEnvironmentTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CompatibleEnvironmentTemplateInput, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:major_version], ::String, context: "#{context}[:major_version]")
      end
    end

    class CompatibleEnvironmentTemplateInputList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CompatibleEnvironmentTemplateInput.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CompatibleEnvironmentTemplateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CompatibleEnvironmentTemplate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Component
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Component, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
        Hearth::Validator.validate!(input[:service_instance_name], ::String, context: "#{context}[:service_instance_name]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_modified_at], ::Time, context: "#{context}[:last_modified_at]")
        Hearth::Validator.validate!(input[:last_deployment_attempted_at], ::Time, context: "#{context}[:last_deployment_attempted_at]")
        Hearth::Validator.validate!(input[:last_deployment_succeeded_at], ::Time, context: "#{context}[:last_deployment_succeeded_at]")
        Hearth::Validator.validate!(input[:deployment_status], ::String, context: "#{context}[:deployment_status]")
        Hearth::Validator.validate!(input[:deployment_status_message], ::String, context: "#{context}[:deployment_status_message]")
        Hearth::Validator.validate!(input[:service_spec], ::String, context: "#{context}[:service_spec]")
      end
    end

    class ComponentSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComponentSummary, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
        Hearth::Validator.validate!(input[:service_instance_name], ::String, context: "#{context}[:service_instance_name]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_modified_at], ::Time, context: "#{context}[:last_modified_at]")
        Hearth::Validator.validate!(input[:last_deployment_attempted_at], ::Time, context: "#{context}[:last_deployment_attempted_at]")
        Hearth::Validator.validate!(input[:last_deployment_succeeded_at], ::Time, context: "#{context}[:last_deployment_succeeded_at]")
        Hearth::Validator.validate!(input[:deployment_status], ::String, context: "#{context}[:deployment_status]")
        Hearth::Validator.validate!(input[:deployment_status_message], ::String, context: "#{context}[:deployment_status_message]")
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

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateComponentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateComponentInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
        Hearth::Validator.validate!(input[:service_instance_name], ::String, context: "#{context}[:service_instance_name]")
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        Hearth::Validator.validate!(input[:template_file], ::String, context: "#{context}[:template_file]")
        Hearth::Validator.validate!(input[:manifest], ::String, context: "#{context}[:manifest]")
        Hearth::Validator.validate!(input[:service_spec], ::String, context: "#{context}[:service_spec]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateComponentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateComponentOutput, context: context)
        Component.validate!(input[:component], context: "#{context}[:component]") unless input[:component].nil?
      end
    end

    class CreateEnvironmentAccountConnectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEnvironmentAccountConnectionInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:management_account_id], ::String, context: "#{context}[:management_account_id]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:component_role_arn], ::String, context: "#{context}[:component_role_arn]")
      end
    end

    class CreateEnvironmentAccountConnectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEnvironmentAccountConnectionOutput, context: context)
        EnvironmentAccountConnection.validate!(input[:environment_account_connection], context: "#{context}[:environment_account_connection]") unless input[:environment_account_connection].nil?
      end
    end

    class CreateEnvironmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEnvironmentInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:template_major_version], ::String, context: "#{context}[:template_major_version]")
        Hearth::Validator.validate!(input[:template_minor_version], ::String, context: "#{context}[:template_minor_version]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:spec], ::String, context: "#{context}[:spec]")
        Hearth::Validator.validate!(input[:proton_service_role_arn], ::String, context: "#{context}[:proton_service_role_arn]")
        Hearth::Validator.validate!(input[:environment_account_connection_id], ::String, context: "#{context}[:environment_account_connection_id]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        RepositoryBranchInput.validate!(input[:provisioning_repository], context: "#{context}[:provisioning_repository]") unless input[:provisioning_repository].nil?
        Hearth::Validator.validate!(input[:component_role_arn], ::String, context: "#{context}[:component_role_arn]")
      end
    end

    class CreateEnvironmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEnvironmentOutput, context: context)
        Environment.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
      end
    end

    class CreateEnvironmentTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEnvironmentTemplateInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:encryption_key], ::String, context: "#{context}[:encryption_key]")
        Hearth::Validator.validate!(input[:provisioning], ::String, context: "#{context}[:provisioning]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateEnvironmentTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEnvironmentTemplateOutput, context: context)
        EnvironmentTemplate.validate!(input[:environment_template], context: "#{context}[:environment_template]") unless input[:environment_template].nil?
      end
    end

    class CreateEnvironmentTemplateVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEnvironmentTemplateVersionInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:major_version], ::String, context: "#{context}[:major_version]")
        TemplateVersionSourceInput.validate!(input[:source], context: "#{context}[:source]") unless input[:source].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateEnvironmentTemplateVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEnvironmentTemplateVersionOutput, context: context)
        EnvironmentTemplateVersion.validate!(input[:environment_template_version], context: "#{context}[:environment_template_version]") unless input[:environment_template_version].nil?
      end
    end

    class CreateRepositoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRepositoryInput, context: context)
        Hearth::Validator.validate!(input[:provider], ::String, context: "#{context}[:provider]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:connection_arn], ::String, context: "#{context}[:connection_arn]")
        Hearth::Validator.validate!(input[:encryption_key], ::String, context: "#{context}[:encryption_key]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateRepositoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRepositoryOutput, context: context)
        Repository.validate!(input[:repository], context: "#{context}[:repository]") unless input[:repository].nil?
      end
    end

    class CreateServiceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateServiceInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:template_major_version], ::String, context: "#{context}[:template_major_version]")
        Hearth::Validator.validate!(input[:template_minor_version], ::String, context: "#{context}[:template_minor_version]")
        Hearth::Validator.validate!(input[:spec], ::String, context: "#{context}[:spec]")
        Hearth::Validator.validate!(input[:repository_connection_arn], ::String, context: "#{context}[:repository_connection_arn]")
        Hearth::Validator.validate!(input[:repository_id], ::String, context: "#{context}[:repository_id]")
        Hearth::Validator.validate!(input[:branch_name], ::String, context: "#{context}[:branch_name]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateServiceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateServiceOutput, context: context)
        Service.validate!(input[:service], context: "#{context}[:service]") unless input[:service].nil?
      end
    end

    class CreateServiceTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateServiceTemplateInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:encryption_key], ::String, context: "#{context}[:encryption_key]")
        Hearth::Validator.validate!(input[:pipeline_provisioning], ::String, context: "#{context}[:pipeline_provisioning]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateServiceTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateServiceTemplateOutput, context: context)
        ServiceTemplate.validate!(input[:service_template], context: "#{context}[:service_template]") unless input[:service_template].nil?
      end
    end

    class CreateServiceTemplateVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateServiceTemplateVersionInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:major_version], ::String, context: "#{context}[:major_version]")
        TemplateVersionSourceInput.validate!(input[:source], context: "#{context}[:source]") unless input[:source].nil?
        CompatibleEnvironmentTemplateInputList.validate!(input[:compatible_environment_templates], context: "#{context}[:compatible_environment_templates]") unless input[:compatible_environment_templates].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        ServiceTemplateSupportedComponentSourceInputList.validate!(input[:supported_component_sources], context: "#{context}[:supported_component_sources]") unless input[:supported_component_sources].nil?
      end
    end

    class CreateServiceTemplateVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateServiceTemplateVersionOutput, context: context)
        ServiceTemplateVersion.validate!(input[:service_template_version], context: "#{context}[:service_template_version]") unless input[:service_template_version].nil?
      end
    end

    class CreateTemplateSyncConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTemplateSyncConfigInput, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:template_type], ::String, context: "#{context}[:template_type]")
        Hearth::Validator.validate!(input[:repository_provider], ::String, context: "#{context}[:repository_provider]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:branch], ::String, context: "#{context}[:branch]")
        Hearth::Validator.validate!(input[:subdirectory], ::String, context: "#{context}[:subdirectory]")
      end
    end

    class CreateTemplateSyncConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTemplateSyncConfigOutput, context: context)
        TemplateSyncConfig.validate!(input[:template_sync_config], context: "#{context}[:template_sync_config]") unless input[:template_sync_config].nil?
      end
    end

    class DeleteComponentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteComponentInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteComponentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteComponentOutput, context: context)
        Component.validate!(input[:component], context: "#{context}[:component]") unless input[:component].nil?
      end
    end

    class DeleteEnvironmentAccountConnectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEnvironmentAccountConnectionInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DeleteEnvironmentAccountConnectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEnvironmentAccountConnectionOutput, context: context)
        EnvironmentAccountConnection.validate!(input[:environment_account_connection], context: "#{context}[:environment_account_connection]") unless input[:environment_account_connection].nil?
      end
    end

    class DeleteEnvironmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEnvironmentInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteEnvironmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEnvironmentOutput, context: context)
        Environment.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
      end
    end

    class DeleteEnvironmentTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEnvironmentTemplateInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteEnvironmentTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEnvironmentTemplateOutput, context: context)
        EnvironmentTemplate.validate!(input[:environment_template], context: "#{context}[:environment_template]") unless input[:environment_template].nil?
      end
    end

    class DeleteEnvironmentTemplateVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEnvironmentTemplateVersionInput, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:major_version], ::String, context: "#{context}[:major_version]")
        Hearth::Validator.validate!(input[:minor_version], ::String, context: "#{context}[:minor_version]")
      end
    end

    class DeleteEnvironmentTemplateVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEnvironmentTemplateVersionOutput, context: context)
        EnvironmentTemplateVersion.validate!(input[:environment_template_version], context: "#{context}[:environment_template_version]") unless input[:environment_template_version].nil?
      end
    end

    class DeleteRepositoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRepositoryInput, context: context)
        Hearth::Validator.validate!(input[:provider], ::String, context: "#{context}[:provider]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteRepositoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRepositoryOutput, context: context)
        Repository.validate!(input[:repository], context: "#{context}[:repository]") unless input[:repository].nil?
      end
    end

    class DeleteServiceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteServiceInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteServiceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteServiceOutput, context: context)
        Service.validate!(input[:service], context: "#{context}[:service]") unless input[:service].nil?
      end
    end

    class DeleteServiceTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteServiceTemplateInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteServiceTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteServiceTemplateOutput, context: context)
        ServiceTemplate.validate!(input[:service_template], context: "#{context}[:service_template]") unless input[:service_template].nil?
      end
    end

    class DeleteServiceTemplateVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteServiceTemplateVersionInput, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:major_version], ::String, context: "#{context}[:major_version]")
        Hearth::Validator.validate!(input[:minor_version], ::String, context: "#{context}[:minor_version]")
      end
    end

    class DeleteServiceTemplateVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteServiceTemplateVersionOutput, context: context)
        ServiceTemplateVersion.validate!(input[:service_template_version], context: "#{context}[:service_template_version]") unless input[:service_template_version].nil?
      end
    end

    class DeleteTemplateSyncConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTemplateSyncConfigInput, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:template_type], ::String, context: "#{context}[:template_type]")
      end
    end

    class DeleteTemplateSyncConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTemplateSyncConfigOutput, context: context)
        TemplateSyncConfig.validate!(input[:template_sync_config], context: "#{context}[:template_sync_config]") unless input[:template_sync_config].nil?
      end
    end

    class Environment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Environment, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_deployment_attempted_at], ::Time, context: "#{context}[:last_deployment_attempted_at]")
        Hearth::Validator.validate!(input[:last_deployment_succeeded_at], ::Time, context: "#{context}[:last_deployment_succeeded_at]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:template_major_version], ::String, context: "#{context}[:template_major_version]")
        Hearth::Validator.validate!(input[:template_minor_version], ::String, context: "#{context}[:template_minor_version]")
        Hearth::Validator.validate!(input[:deployment_status], ::String, context: "#{context}[:deployment_status]")
        Hearth::Validator.validate!(input[:deployment_status_message], ::String, context: "#{context}[:deployment_status_message]")
        Hearth::Validator.validate!(input[:proton_service_role_arn], ::String, context: "#{context}[:proton_service_role_arn]")
        Hearth::Validator.validate!(input[:environment_account_connection_id], ::String, context: "#{context}[:environment_account_connection_id]")
        Hearth::Validator.validate!(input[:environment_account_id], ::String, context: "#{context}[:environment_account_id]")
        Hearth::Validator.validate!(input[:spec], ::String, context: "#{context}[:spec]")
        Hearth::Validator.validate!(input[:provisioning], ::String, context: "#{context}[:provisioning]")
        RepositoryBranch.validate!(input[:provisioning_repository], context: "#{context}[:provisioning_repository]") unless input[:provisioning_repository].nil?
        Hearth::Validator.validate!(input[:component_role_arn], ::String, context: "#{context}[:component_role_arn]")
      end
    end

    class EnvironmentAccountConnection
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnvironmentAccountConnection, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:management_account_id], ::String, context: "#{context}[:management_account_id]")
        Hearth::Validator.validate!(input[:environment_account_id], ::String, context: "#{context}[:environment_account_id]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        Hearth::Validator.validate!(input[:requested_at], ::Time, context: "#{context}[:requested_at]")
        Hearth::Validator.validate!(input[:last_modified_at], ::Time, context: "#{context}[:last_modified_at]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:component_role_arn], ::String, context: "#{context}[:component_role_arn]")
      end
    end

    class EnvironmentAccountConnectionStatusList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class EnvironmentAccountConnectionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnvironmentAccountConnectionSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:management_account_id], ::String, context: "#{context}[:management_account_id]")
        Hearth::Validator.validate!(input[:environment_account_id], ::String, context: "#{context}[:environment_account_id]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        Hearth::Validator.validate!(input[:requested_at], ::Time, context: "#{context}[:requested_at]")
        Hearth::Validator.validate!(input[:last_modified_at], ::Time, context: "#{context}[:last_modified_at]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:component_role_arn], ::String, context: "#{context}[:component_role_arn]")
      end
    end

    class EnvironmentAccountConnectionSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EnvironmentAccountConnectionSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EnvironmentSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnvironmentSummary, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_deployment_attempted_at], ::Time, context: "#{context}[:last_deployment_attempted_at]")
        Hearth::Validator.validate!(input[:last_deployment_succeeded_at], ::Time, context: "#{context}[:last_deployment_succeeded_at]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:template_major_version], ::String, context: "#{context}[:template_major_version]")
        Hearth::Validator.validate!(input[:template_minor_version], ::String, context: "#{context}[:template_minor_version]")
        Hearth::Validator.validate!(input[:deployment_status], ::String, context: "#{context}[:deployment_status]")
        Hearth::Validator.validate!(input[:deployment_status_message], ::String, context: "#{context}[:deployment_status_message]")
        Hearth::Validator.validate!(input[:proton_service_role_arn], ::String, context: "#{context}[:proton_service_role_arn]")
        Hearth::Validator.validate!(input[:environment_account_connection_id], ::String, context: "#{context}[:environment_account_connection_id]")
        Hearth::Validator.validate!(input[:environment_account_id], ::String, context: "#{context}[:environment_account_id]")
        Hearth::Validator.validate!(input[:provisioning], ::String, context: "#{context}[:provisioning]")
        Hearth::Validator.validate!(input[:component_role_arn], ::String, context: "#{context}[:component_role_arn]")
      end
    end

    class EnvironmentSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EnvironmentSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EnvironmentTemplate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnvironmentTemplate, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_modified_at], ::Time, context: "#{context}[:last_modified_at]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:recommended_version], ::String, context: "#{context}[:recommended_version]")
        Hearth::Validator.validate!(input[:encryption_key], ::String, context: "#{context}[:encryption_key]")
        Hearth::Validator.validate!(input[:provisioning], ::String, context: "#{context}[:provisioning]")
      end
    end

    class EnvironmentTemplateFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnvironmentTemplateFilter, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:major_version], ::String, context: "#{context}[:major_version]")
      end
    end

    class EnvironmentTemplateFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EnvironmentTemplateFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EnvironmentTemplateSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnvironmentTemplateSummary, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_modified_at], ::Time, context: "#{context}[:last_modified_at]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:recommended_version], ::String, context: "#{context}[:recommended_version]")
        Hearth::Validator.validate!(input[:provisioning], ::String, context: "#{context}[:provisioning]")
      end
    end

    class EnvironmentTemplateSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EnvironmentTemplateSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EnvironmentTemplateVersion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnvironmentTemplateVersion, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:major_version], ::String, context: "#{context}[:major_version]")
        Hearth::Validator.validate!(input[:minor_version], ::String, context: "#{context}[:minor_version]")
        Hearth::Validator.validate!(input[:recommended_minor_version], ::String, context: "#{context}[:recommended_minor_version]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_modified_at], ::Time, context: "#{context}[:last_modified_at]")
        Hearth::Validator.validate!(input[:schema], ::String, context: "#{context}[:schema]")
      end
    end

    class EnvironmentTemplateVersionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnvironmentTemplateVersionSummary, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:major_version], ::String, context: "#{context}[:major_version]")
        Hearth::Validator.validate!(input[:minor_version], ::String, context: "#{context}[:minor_version]")
        Hearth::Validator.validate!(input[:recommended_minor_version], ::String, context: "#{context}[:recommended_minor_version]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_modified_at], ::Time, context: "#{context}[:last_modified_at]")
      end
    end

    class EnvironmentTemplateVersionSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EnvironmentTemplateVersionSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetAccountSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccountSettingsInput, context: context)
      end
    end

    class GetAccountSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccountSettingsOutput, context: context)
        AccountSettings.validate!(input[:account_settings], context: "#{context}[:account_settings]") unless input[:account_settings].nil?
      end
    end

    class GetComponentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetComponentInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class GetComponentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetComponentOutput, context: context)
        Component.validate!(input[:component], context: "#{context}[:component]") unless input[:component].nil?
      end
    end

    class GetEnvironmentAccountConnectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEnvironmentAccountConnectionInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetEnvironmentAccountConnectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEnvironmentAccountConnectionOutput, context: context)
        EnvironmentAccountConnection.validate!(input[:environment_account_connection], context: "#{context}[:environment_account_connection]") unless input[:environment_account_connection].nil?
      end
    end

    class GetEnvironmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEnvironmentInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class GetEnvironmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEnvironmentOutput, context: context)
        Environment.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
      end
    end

    class GetEnvironmentTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEnvironmentTemplateInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class GetEnvironmentTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEnvironmentTemplateOutput, context: context)
        EnvironmentTemplate.validate!(input[:environment_template], context: "#{context}[:environment_template]") unless input[:environment_template].nil?
      end
    end

    class GetEnvironmentTemplateVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEnvironmentTemplateVersionInput, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:major_version], ::String, context: "#{context}[:major_version]")
        Hearth::Validator.validate!(input[:minor_version], ::String, context: "#{context}[:minor_version]")
      end
    end

    class GetEnvironmentTemplateVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEnvironmentTemplateVersionOutput, context: context)
        EnvironmentTemplateVersion.validate!(input[:environment_template_version], context: "#{context}[:environment_template_version]") unless input[:environment_template_version].nil?
      end
    end

    class GetRepositoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRepositoryInput, context: context)
        Hearth::Validator.validate!(input[:provider], ::String, context: "#{context}[:provider]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class GetRepositoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRepositoryOutput, context: context)
        Repository.validate!(input[:repository], context: "#{context}[:repository]") unless input[:repository].nil?
      end
    end

    class GetRepositorySyncStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRepositorySyncStatusInput, context: context)
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:repository_provider], ::String, context: "#{context}[:repository_provider]")
        Hearth::Validator.validate!(input[:branch], ::String, context: "#{context}[:branch]")
        Hearth::Validator.validate!(input[:sync_type], ::String, context: "#{context}[:sync_type]")
      end
    end

    class GetRepositorySyncStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRepositorySyncStatusOutput, context: context)
        RepositorySyncAttempt.validate!(input[:latest_sync], context: "#{context}[:latest_sync]") unless input[:latest_sync].nil?
      end
    end

    class GetServiceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetServiceInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class GetServiceInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetServiceInstanceInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
      end
    end

    class GetServiceInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetServiceInstanceOutput, context: context)
        ServiceInstance.validate!(input[:service_instance], context: "#{context}[:service_instance]") unless input[:service_instance].nil?
      end
    end

    class GetServiceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetServiceOutput, context: context)
        Service.validate!(input[:service], context: "#{context}[:service]") unless input[:service].nil?
      end
    end

    class GetServiceTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetServiceTemplateInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class GetServiceTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetServiceTemplateOutput, context: context)
        ServiceTemplate.validate!(input[:service_template], context: "#{context}[:service_template]") unless input[:service_template].nil?
      end
    end

    class GetServiceTemplateVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetServiceTemplateVersionInput, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:major_version], ::String, context: "#{context}[:major_version]")
        Hearth::Validator.validate!(input[:minor_version], ::String, context: "#{context}[:minor_version]")
      end
    end

    class GetServiceTemplateVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetServiceTemplateVersionOutput, context: context)
        ServiceTemplateVersion.validate!(input[:service_template_version], context: "#{context}[:service_template_version]") unless input[:service_template_version].nil?
      end
    end

    class GetTemplateSyncConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTemplateSyncConfigInput, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:template_type], ::String, context: "#{context}[:template_type]")
      end
    end

    class GetTemplateSyncConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTemplateSyncConfigOutput, context: context)
        TemplateSyncConfig.validate!(input[:template_sync_config], context: "#{context}[:template_sync_config]") unless input[:template_sync_config].nil?
      end
    end

    class GetTemplateSyncStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTemplateSyncStatusInput, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:template_type], ::String, context: "#{context}[:template_type]")
        Hearth::Validator.validate!(input[:template_version], ::String, context: "#{context}[:template_version]")
      end
    end

    class GetTemplateSyncStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTemplateSyncStatusOutput, context: context)
        ResourceSyncAttempt.validate!(input[:latest_sync], context: "#{context}[:latest_sync]") unless input[:latest_sync].nil?
        ResourceSyncAttempt.validate!(input[:latest_successful_sync], context: "#{context}[:latest_successful_sync]") unless input[:latest_successful_sync].nil?
        Revision.validate!(input[:desired_state], context: "#{context}[:desired_state]") unless input[:desired_state].nil?
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListComponentOutputsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListComponentOutputsInput, context: context)
        Hearth::Validator.validate!(input[:component_name], ::String, context: "#{context}[:component_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListComponentOutputsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListComponentOutputsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        OutputsList.validate!(input[:outputs], context: "#{context}[:outputs]") unless input[:outputs].nil?
      end
    end

    class ListComponentProvisionedResourcesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListComponentProvisionedResourcesInput, context: context)
        Hearth::Validator.validate!(input[:component_name], ::String, context: "#{context}[:component_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListComponentProvisionedResourcesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListComponentProvisionedResourcesOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        ProvisionedResourceList.validate!(input[:provisioned_resources], context: "#{context}[:provisioned_resources]") unless input[:provisioned_resources].nil?
      end
    end

    class ListComponentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListComponentsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
        Hearth::Validator.validate!(input[:service_instance_name], ::String, context: "#{context}[:service_instance_name]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListComponentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListComponentsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        ComponentSummaryList.validate!(input[:components], context: "#{context}[:components]") unless input[:components].nil?
      end
    end

    class ListEnvironmentAccountConnectionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEnvironmentAccountConnectionsInput, context: context)
        Hearth::Validator.validate!(input[:requested_by], ::String, context: "#{context}[:requested_by]")
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        EnvironmentAccountConnectionStatusList.validate!(input[:statuses], context: "#{context}[:statuses]") unless input[:statuses].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListEnvironmentAccountConnectionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEnvironmentAccountConnectionsOutput, context: context)
        EnvironmentAccountConnectionSummaryList.validate!(input[:environment_account_connections], context: "#{context}[:environment_account_connections]") unless input[:environment_account_connections].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListEnvironmentOutputsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEnvironmentOutputsInput, context: context)
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListEnvironmentOutputsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEnvironmentOutputsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        OutputsList.validate!(input[:outputs], context: "#{context}[:outputs]") unless input[:outputs].nil?
      end
    end

    class ListEnvironmentProvisionedResourcesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEnvironmentProvisionedResourcesInput, context: context)
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListEnvironmentProvisionedResourcesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEnvironmentProvisionedResourcesOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        ProvisionedResourceList.validate!(input[:provisioned_resources], context: "#{context}[:provisioned_resources]") unless input[:provisioned_resources].nil?
      end
    end

    class ListEnvironmentTemplateVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEnvironmentTemplateVersionsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:major_version], ::String, context: "#{context}[:major_version]")
      end
    end

    class ListEnvironmentTemplateVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEnvironmentTemplateVersionsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        EnvironmentTemplateVersionSummaryList.validate!(input[:template_versions], context: "#{context}[:template_versions]") unless input[:template_versions].nil?
      end
    end

    class ListEnvironmentTemplatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEnvironmentTemplatesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListEnvironmentTemplatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEnvironmentTemplatesOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        EnvironmentTemplateSummaryList.validate!(input[:templates], context: "#{context}[:templates]") unless input[:templates].nil?
      end
    end

    class ListEnvironmentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEnvironmentsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        EnvironmentTemplateFilterList.validate!(input[:environment_templates], context: "#{context}[:environment_templates]") unless input[:environment_templates].nil?
      end
    end

    class ListEnvironmentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEnvironmentsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        EnvironmentSummaryList.validate!(input[:environments], context: "#{context}[:environments]") unless input[:environments].nil?
      end
    end

    class ListRepositoriesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRepositoriesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListRepositoriesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRepositoriesOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        RepositorySummaryList.validate!(input[:repositories], context: "#{context}[:repositories]") unless input[:repositories].nil?
      end
    end

    class ListRepositorySyncDefinitionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRepositorySyncDefinitionsInput, context: context)
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:repository_provider], ::String, context: "#{context}[:repository_provider]")
        Hearth::Validator.validate!(input[:sync_type], ::String, context: "#{context}[:sync_type]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListRepositorySyncDefinitionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRepositorySyncDefinitionsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        RepositorySyncDefinitionList.validate!(input[:sync_definitions], context: "#{context}[:sync_definitions]") unless input[:sync_definitions].nil?
      end
    end

    class ListServiceInstanceOutputsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListServiceInstanceOutputsInput, context: context)
        Hearth::Validator.validate!(input[:service_instance_name], ::String, context: "#{context}[:service_instance_name]")
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListServiceInstanceOutputsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListServiceInstanceOutputsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        OutputsList.validate!(input[:outputs], context: "#{context}[:outputs]") unless input[:outputs].nil?
      end
    end

    class ListServiceInstanceProvisionedResourcesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListServiceInstanceProvisionedResourcesInput, context: context)
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
        Hearth::Validator.validate!(input[:service_instance_name], ::String, context: "#{context}[:service_instance_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListServiceInstanceProvisionedResourcesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListServiceInstanceProvisionedResourcesOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        ProvisionedResourceList.validate!(input[:provisioned_resources], context: "#{context}[:provisioned_resources]") unless input[:provisioned_resources].nil?
      end
    end

    class ListServiceInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListServiceInstancesInput, context: context)
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListServiceInstancesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListServiceInstancesOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        ServiceInstanceSummaryList.validate!(input[:service_instances], context: "#{context}[:service_instances]") unless input[:service_instances].nil?
      end
    end

    class ListServicePipelineOutputsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListServicePipelineOutputsInput, context: context)
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListServicePipelineOutputsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListServicePipelineOutputsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        OutputsList.validate!(input[:outputs], context: "#{context}[:outputs]") unless input[:outputs].nil?
      end
    end

    class ListServicePipelineProvisionedResourcesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListServicePipelineProvisionedResourcesInput, context: context)
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListServicePipelineProvisionedResourcesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListServicePipelineProvisionedResourcesOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        ProvisionedResourceList.validate!(input[:provisioned_resources], context: "#{context}[:provisioned_resources]") unless input[:provisioned_resources].nil?
      end
    end

    class ListServiceTemplateVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListServiceTemplateVersionsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:major_version], ::String, context: "#{context}[:major_version]")
      end
    end

    class ListServiceTemplateVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListServiceTemplateVersionsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        ServiceTemplateVersionSummaryList.validate!(input[:template_versions], context: "#{context}[:template_versions]") unless input[:template_versions].nil?
      end
    end

    class ListServiceTemplatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListServiceTemplatesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListServiceTemplatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListServiceTemplatesOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        ServiceTemplateSummaryList.validate!(input[:templates], context: "#{context}[:templates]") unless input[:templates].nil?
      end
    end

    class ListServicesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListServicesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListServicesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListServicesOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        ServiceSummaryList.validate!(input[:services], context: "#{context}[:services]") unless input[:services].nil?
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class NotifyResourceDeploymentStatusChangeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotifyResourceDeploymentStatusChangeInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        OutputsList.validate!(input[:outputs], context: "#{context}[:outputs]") unless input[:outputs].nil?
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
      end
    end

    class NotifyResourceDeploymentStatusChangeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotifyResourceDeploymentStatusChangeOutput, context: context)
      end
    end

    class Output
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Output, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value_string], ::String, context: "#{context}[:value_string]")
      end
    end

    class OutputsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Output.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProvisionedResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProvisionedResource, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:identifier], ::String, context: "#{context}[:identifier]")
        Hearth::Validator.validate!(input[:provisioning_engine], ::String, context: "#{context}[:provisioning_engine]")
      end
    end

    class ProvisionedResourceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ProvisionedResource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RejectEnvironmentAccountConnectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RejectEnvironmentAccountConnectionInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class RejectEnvironmentAccountConnectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RejectEnvironmentAccountConnectionOutput, context: context)
        EnvironmentAccountConnection.validate!(input[:environment_account_connection], context: "#{context}[:environment_account_connection]") unless input[:environment_account_connection].nil?
      end
    end

    class Repository
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Repository, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:provider], ::String, context: "#{context}[:provider]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:connection_arn], ::String, context: "#{context}[:connection_arn]")
        Hearth::Validator.validate!(input[:encryption_key], ::String, context: "#{context}[:encryption_key]")
      end
    end

    class RepositoryBranch
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RepositoryBranch, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:provider], ::String, context: "#{context}[:provider]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:branch], ::String, context: "#{context}[:branch]")
      end
    end

    class RepositoryBranchInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RepositoryBranchInput, context: context)
        Hearth::Validator.validate!(input[:provider], ::String, context: "#{context}[:provider]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:branch], ::String, context: "#{context}[:branch]")
      end
    end

    class RepositorySummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RepositorySummary, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:provider], ::String, context: "#{context}[:provider]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class RepositorySummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RepositorySummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RepositorySyncAttempt
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RepositorySyncAttempt, context: context)
        Hearth::Validator.validate!(input[:started_at], ::Time, context: "#{context}[:started_at]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        RepositorySyncEvents.validate!(input[:events], context: "#{context}[:events]") unless input[:events].nil?
      end
    end

    class RepositorySyncDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RepositorySyncDefinition, context: context)
        Hearth::Validator.validate!(input[:target], ::String, context: "#{context}[:target]")
        Hearth::Validator.validate!(input[:parent], ::String, context: "#{context}[:parent]")
        Hearth::Validator.validate!(input[:branch], ::String, context: "#{context}[:branch]")
        Hearth::Validator.validate!(input[:directory], ::String, context: "#{context}[:directory]")
      end
    end

    class RepositorySyncDefinitionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RepositorySyncDefinition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RepositorySyncEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RepositorySyncEvent, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:external_id], ::String, context: "#{context}[:external_id]")
        Hearth::Validator.validate!(input[:time], ::Time, context: "#{context}[:time]")
        Hearth::Validator.validate!(input[:event], ::String, context: "#{context}[:event]")
      end
    end

    class RepositorySyncEvents
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RepositorySyncEvent.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceSyncAttempt
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceSyncAttempt, context: context)
        Revision.validate!(input[:initial_revision], context: "#{context}[:initial_revision]") unless input[:initial_revision].nil?
        Revision.validate!(input[:target_revision], context: "#{context}[:target_revision]") unless input[:target_revision].nil?
        Hearth::Validator.validate!(input[:target], ::String, context: "#{context}[:target]")
        Hearth::Validator.validate!(input[:started_at], ::Time, context: "#{context}[:started_at]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        ResourceSyncEvents.validate!(input[:events], context: "#{context}[:events]") unless input[:events].nil?
      end
    end

    class ResourceSyncEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceSyncEvent, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:external_id], ::String, context: "#{context}[:external_id]")
        Hearth::Validator.validate!(input[:time], ::Time, context: "#{context}[:time]")
        Hearth::Validator.validate!(input[:event], ::String, context: "#{context}[:event]")
      end
    end

    class ResourceSyncEvents
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ResourceSyncEvent.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Revision
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Revision, context: context)
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:repository_provider], ::String, context: "#{context}[:repository_provider]")
        Hearth::Validator.validate!(input[:sha], ::String, context: "#{context}[:sha]")
        Hearth::Validator.validate!(input[:directory], ::String, context: "#{context}[:directory]")
        Hearth::Validator.validate!(input[:branch], ::String, context: "#{context}[:branch]")
      end
    end

    class S3ObjectSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3ObjectSource, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
      end
    end

    class Service
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Service, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_modified_at], ::Time, context: "#{context}[:last_modified_at]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:spec], ::String, context: "#{context}[:spec]")
        ServicePipeline.validate!(input[:pipeline], context: "#{context}[:pipeline]") unless input[:pipeline].nil?
        Hearth::Validator.validate!(input[:repository_connection_arn], ::String, context: "#{context}[:repository_connection_arn]")
        Hearth::Validator.validate!(input[:repository_id], ::String, context: "#{context}[:repository_id]")
        Hearth::Validator.validate!(input[:branch_name], ::String, context: "#{context}[:branch_name]")
      end
    end

    class ServiceInstance
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceInstance, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_deployment_attempted_at], ::Time, context: "#{context}[:last_deployment_attempted_at]")
        Hearth::Validator.validate!(input[:last_deployment_succeeded_at], ::Time, context: "#{context}[:last_deployment_succeeded_at]")
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:template_major_version], ::String, context: "#{context}[:template_major_version]")
        Hearth::Validator.validate!(input[:template_minor_version], ::String, context: "#{context}[:template_minor_version]")
        Hearth::Validator.validate!(input[:deployment_status], ::String, context: "#{context}[:deployment_status]")
        Hearth::Validator.validate!(input[:deployment_status_message], ::String, context: "#{context}[:deployment_status_message]")
        Hearth::Validator.validate!(input[:spec], ::String, context: "#{context}[:spec]")
      end
    end

    class ServiceInstanceSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceInstanceSummary, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_deployment_attempted_at], ::Time, context: "#{context}[:last_deployment_attempted_at]")
        Hearth::Validator.validate!(input[:last_deployment_succeeded_at], ::Time, context: "#{context}[:last_deployment_succeeded_at]")
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:template_major_version], ::String, context: "#{context}[:template_major_version]")
        Hearth::Validator.validate!(input[:template_minor_version], ::String, context: "#{context}[:template_minor_version]")
        Hearth::Validator.validate!(input[:deployment_status], ::String, context: "#{context}[:deployment_status]")
        Hearth::Validator.validate!(input[:deployment_status_message], ::String, context: "#{context}[:deployment_status_message]")
      end
    end

    class ServiceInstanceSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ServiceInstanceSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServicePipeline
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServicePipeline, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_deployment_attempted_at], ::Time, context: "#{context}[:last_deployment_attempted_at]")
        Hearth::Validator.validate!(input[:last_deployment_succeeded_at], ::Time, context: "#{context}[:last_deployment_succeeded_at]")
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:template_major_version], ::String, context: "#{context}[:template_major_version]")
        Hearth::Validator.validate!(input[:template_minor_version], ::String, context: "#{context}[:template_minor_version]")
        Hearth::Validator.validate!(input[:deployment_status], ::String, context: "#{context}[:deployment_status]")
        Hearth::Validator.validate!(input[:deployment_status_message], ::String, context: "#{context}[:deployment_status_message]")
        Hearth::Validator.validate!(input[:spec], ::String, context: "#{context}[:spec]")
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ServiceSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceSummary, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_modified_at], ::Time, context: "#{context}[:last_modified_at]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
      end
    end

    class ServiceSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ServiceSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServiceTemplate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceTemplate, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_modified_at], ::Time, context: "#{context}[:last_modified_at]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:recommended_version], ::String, context: "#{context}[:recommended_version]")
        Hearth::Validator.validate!(input[:encryption_key], ::String, context: "#{context}[:encryption_key]")
        Hearth::Validator.validate!(input[:pipeline_provisioning], ::String, context: "#{context}[:pipeline_provisioning]")
      end
    end

    class ServiceTemplateSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceTemplateSummary, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_modified_at], ::Time, context: "#{context}[:last_modified_at]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:recommended_version], ::String, context: "#{context}[:recommended_version]")
        Hearth::Validator.validate!(input[:pipeline_provisioning], ::String, context: "#{context}[:pipeline_provisioning]")
      end
    end

    class ServiceTemplateSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ServiceTemplateSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServiceTemplateSupportedComponentSourceInputList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ServiceTemplateVersion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceTemplateVersion, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:major_version], ::String, context: "#{context}[:major_version]")
        Hearth::Validator.validate!(input[:minor_version], ::String, context: "#{context}[:minor_version]")
        Hearth::Validator.validate!(input[:recommended_minor_version], ::String, context: "#{context}[:recommended_minor_version]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_modified_at], ::Time, context: "#{context}[:last_modified_at]")
        CompatibleEnvironmentTemplateList.validate!(input[:compatible_environment_templates], context: "#{context}[:compatible_environment_templates]") unless input[:compatible_environment_templates].nil?
        Hearth::Validator.validate!(input[:schema], ::String, context: "#{context}[:schema]")
        ServiceTemplateSupportedComponentSourceInputList.validate!(input[:supported_component_sources], context: "#{context}[:supported_component_sources]") unless input[:supported_component_sources].nil?
      end
    end

    class ServiceTemplateVersionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceTemplateVersionSummary, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:major_version], ::String, context: "#{context}[:major_version]")
        Hearth::Validator.validate!(input[:minor_version], ::String, context: "#{context}[:minor_version]")
        Hearth::Validator.validate!(input[:recommended_minor_version], ::String, context: "#{context}[:recommended_minor_version]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_modified_at], ::Time, context: "#{context}[:last_modified_at]")
      end
    end

    class ServiceTemplateVersionSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ServiceTemplateVersionSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
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

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TemplateSyncConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TemplateSyncConfig, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:template_type], ::String, context: "#{context}[:template_type]")
        Hearth::Validator.validate!(input[:repository_provider], ::String, context: "#{context}[:repository_provider]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:branch], ::String, context: "#{context}[:branch]")
        Hearth::Validator.validate!(input[:subdirectory], ::String, context: "#{context}[:subdirectory]")
      end
    end

    class TemplateVersionSourceInput
      def self.validate!(input, context:)
        case input
        when Types::TemplateVersionSourceInput::S3
          S3ObjectSource.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::TemplateVersionSourceInput, got #{input.class}."
        end
      end

      class S3
        def self.validate!(input, context:)
          Validators::S3ObjectSource.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
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

    class UpdateAccountSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAccountSettingsInput, context: context)
        Hearth::Validator.validate!(input[:pipeline_service_role_arn], ::String, context: "#{context}[:pipeline_service_role_arn]")
        RepositoryBranchInput.validate!(input[:pipeline_provisioning_repository], context: "#{context}[:pipeline_provisioning_repository]") unless input[:pipeline_provisioning_repository].nil?
      end
    end

    class UpdateAccountSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAccountSettingsOutput, context: context)
        AccountSettings.validate!(input[:account_settings], context: "#{context}[:account_settings]") unless input[:account_settings].nil?
      end
    end

    class UpdateComponentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateComponentInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:deployment_type], ::String, context: "#{context}[:deployment_type]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
        Hearth::Validator.validate!(input[:service_instance_name], ::String, context: "#{context}[:service_instance_name]")
        Hearth::Validator.validate!(input[:service_spec], ::String, context: "#{context}[:service_spec]")
        Hearth::Validator.validate!(input[:template_file], ::String, context: "#{context}[:template_file]")
      end
    end

    class UpdateComponentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateComponentOutput, context: context)
        Component.validate!(input[:component], context: "#{context}[:component]") unless input[:component].nil?
      end
    end

    class UpdateEnvironmentAccountConnectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEnvironmentAccountConnectionInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:component_role_arn], ::String, context: "#{context}[:component_role_arn]")
      end
    end

    class UpdateEnvironmentAccountConnectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEnvironmentAccountConnectionOutput, context: context)
        EnvironmentAccountConnection.validate!(input[:environment_account_connection], context: "#{context}[:environment_account_connection]") unless input[:environment_account_connection].nil?
      end
    end

    class UpdateEnvironmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEnvironmentInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:spec], ::String, context: "#{context}[:spec]")
        Hearth::Validator.validate!(input[:template_major_version], ::String, context: "#{context}[:template_major_version]")
        Hearth::Validator.validate!(input[:template_minor_version], ::String, context: "#{context}[:template_minor_version]")
        Hearth::Validator.validate!(input[:proton_service_role_arn], ::String, context: "#{context}[:proton_service_role_arn]")
        Hearth::Validator.validate!(input[:deployment_type], ::String, context: "#{context}[:deployment_type]")
        Hearth::Validator.validate!(input[:environment_account_connection_id], ::String, context: "#{context}[:environment_account_connection_id]")
        RepositoryBranchInput.validate!(input[:provisioning_repository], context: "#{context}[:provisioning_repository]") unless input[:provisioning_repository].nil?
        Hearth::Validator.validate!(input[:component_role_arn], ::String, context: "#{context}[:component_role_arn]")
      end
    end

    class UpdateEnvironmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEnvironmentOutput, context: context)
        Environment.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
      end
    end

    class UpdateEnvironmentTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEnvironmentTemplateInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class UpdateEnvironmentTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEnvironmentTemplateOutput, context: context)
        EnvironmentTemplate.validate!(input[:environment_template], context: "#{context}[:environment_template]") unless input[:environment_template].nil?
      end
    end

    class UpdateEnvironmentTemplateVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEnvironmentTemplateVersionInput, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:major_version], ::String, context: "#{context}[:major_version]")
        Hearth::Validator.validate!(input[:minor_version], ::String, context: "#{context}[:minor_version]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class UpdateEnvironmentTemplateVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEnvironmentTemplateVersionOutput, context: context)
        EnvironmentTemplateVersion.validate!(input[:environment_template_version], context: "#{context}[:environment_template_version]") unless input[:environment_template_version].nil?
      end
    end

    class UpdateServiceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateServiceInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:spec], ::String, context: "#{context}[:spec]")
      end
    end

    class UpdateServiceInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateServiceInstanceInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
        Hearth::Validator.validate!(input[:deployment_type], ::String, context: "#{context}[:deployment_type]")
        Hearth::Validator.validate!(input[:spec], ::String, context: "#{context}[:spec]")
        Hearth::Validator.validate!(input[:template_major_version], ::String, context: "#{context}[:template_major_version]")
        Hearth::Validator.validate!(input[:template_minor_version], ::String, context: "#{context}[:template_minor_version]")
      end
    end

    class UpdateServiceInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateServiceInstanceOutput, context: context)
        ServiceInstance.validate!(input[:service_instance], context: "#{context}[:service_instance]") unless input[:service_instance].nil?
      end
    end

    class UpdateServiceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateServiceOutput, context: context)
        Service.validate!(input[:service], context: "#{context}[:service]") unless input[:service].nil?
      end
    end

    class UpdateServicePipelineInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateServicePipelineInput, context: context)
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
        Hearth::Validator.validate!(input[:spec], ::String, context: "#{context}[:spec]")
        Hearth::Validator.validate!(input[:deployment_type], ::String, context: "#{context}[:deployment_type]")
        Hearth::Validator.validate!(input[:template_major_version], ::String, context: "#{context}[:template_major_version]")
        Hearth::Validator.validate!(input[:template_minor_version], ::String, context: "#{context}[:template_minor_version]")
      end
    end

    class UpdateServicePipelineOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateServicePipelineOutput, context: context)
        ServicePipeline.validate!(input[:pipeline], context: "#{context}[:pipeline]") unless input[:pipeline].nil?
      end
    end

    class UpdateServiceTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateServiceTemplateInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class UpdateServiceTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateServiceTemplateOutput, context: context)
        ServiceTemplate.validate!(input[:service_template], context: "#{context}[:service_template]") unless input[:service_template].nil?
      end
    end

    class UpdateServiceTemplateVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateServiceTemplateVersionInput, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:major_version], ::String, context: "#{context}[:major_version]")
        Hearth::Validator.validate!(input[:minor_version], ::String, context: "#{context}[:minor_version]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        CompatibleEnvironmentTemplateInputList.validate!(input[:compatible_environment_templates], context: "#{context}[:compatible_environment_templates]") unless input[:compatible_environment_templates].nil?
        ServiceTemplateSupportedComponentSourceInputList.validate!(input[:supported_component_sources], context: "#{context}[:supported_component_sources]") unless input[:supported_component_sources].nil?
      end
    end

    class UpdateServiceTemplateVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateServiceTemplateVersionOutput, context: context)
        ServiceTemplateVersion.validate!(input[:service_template_version], context: "#{context}[:service_template_version]") unless input[:service_template_version].nil?
      end
    end

    class UpdateTemplateSyncConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTemplateSyncConfigInput, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:template_type], ::String, context: "#{context}[:template_type]")
        Hearth::Validator.validate!(input[:repository_provider], ::String, context: "#{context}[:repository_provider]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:branch], ::String, context: "#{context}[:branch]")
        Hearth::Validator.validate!(input[:subdirectory], ::String, context: "#{context}[:subdirectory]")
      end
    end

    class UpdateTemplateSyncConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTemplateSyncConfigOutput, context: context)
        TemplateSyncConfig.validate!(input[:template_sync_config], context: "#{context}[:template_sync_config]") unless input[:template_sync_config].nil?
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

  end
end
