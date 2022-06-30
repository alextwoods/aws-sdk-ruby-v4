# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::Proton
  module Params

    module AcceptEnvironmentAccountConnectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceptEnvironmentAccountConnectionInput, context: context)
        type = Types::AcceptEnvironmentAccountConnectionInput.new
        type.id = params[:id]
        type
      end
    end

    module AcceptEnvironmentAccountConnectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceptEnvironmentAccountConnectionOutput, context: context)
        type = Types::AcceptEnvironmentAccountConnectionOutput.new
        type.environment_account_connection = EnvironmentAccountConnection.build(params[:environment_account_connection], context: "#{context}[:environment_account_connection]") unless params[:environment_account_connection].nil?
        type
      end
    end

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module AccountSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccountSettings, context: context)
        type = Types::AccountSettings.new
        type.pipeline_service_role_arn = params[:pipeline_service_role_arn]
        type.pipeline_provisioning_repository = RepositoryBranch.build(params[:pipeline_provisioning_repository], context: "#{context}[:pipeline_provisioning_repository]") unless params[:pipeline_provisioning_repository].nil?
        type
      end
    end

    module CancelComponentDeploymentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelComponentDeploymentInput, context: context)
        type = Types::CancelComponentDeploymentInput.new
        type.component_name = params[:component_name]
        type
      end
    end

    module CancelComponentDeploymentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelComponentDeploymentOutput, context: context)
        type = Types::CancelComponentDeploymentOutput.new
        type.component = Component.build(params[:component], context: "#{context}[:component]") unless params[:component].nil?
        type
      end
    end

    module CancelEnvironmentDeploymentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelEnvironmentDeploymentInput, context: context)
        type = Types::CancelEnvironmentDeploymentInput.new
        type.environment_name = params[:environment_name]
        type
      end
    end

    module CancelEnvironmentDeploymentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelEnvironmentDeploymentOutput, context: context)
        type = Types::CancelEnvironmentDeploymentOutput.new
        type.environment = Environment.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type
      end
    end

    module CancelServiceInstanceDeploymentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelServiceInstanceDeploymentInput, context: context)
        type = Types::CancelServiceInstanceDeploymentInput.new
        type.service_instance_name = params[:service_instance_name]
        type.service_name = params[:service_name]
        type
      end
    end

    module CancelServiceInstanceDeploymentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelServiceInstanceDeploymentOutput, context: context)
        type = Types::CancelServiceInstanceDeploymentOutput.new
        type.service_instance = ServiceInstance.build(params[:service_instance], context: "#{context}[:service_instance]") unless params[:service_instance].nil?
        type
      end
    end

    module CancelServicePipelineDeploymentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelServicePipelineDeploymentInput, context: context)
        type = Types::CancelServicePipelineDeploymentInput.new
        type.service_name = params[:service_name]
        type
      end
    end

    module CancelServicePipelineDeploymentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelServicePipelineDeploymentOutput, context: context)
        type = Types::CancelServicePipelineDeploymentOutput.new
        type.pipeline = ServicePipeline.build(params[:pipeline], context: "#{context}[:pipeline]") unless params[:pipeline].nil?
        type
      end
    end

    module CompatibleEnvironmentTemplate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CompatibleEnvironmentTemplate, context: context)
        type = Types::CompatibleEnvironmentTemplate.new
        type.template_name = params[:template_name]
        type.major_version = params[:major_version]
        type
      end
    end

    module CompatibleEnvironmentTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CompatibleEnvironmentTemplateInput, context: context)
        type = Types::CompatibleEnvironmentTemplateInput.new
        type.template_name = params[:template_name]
        type.major_version = params[:major_version]
        type
      end
    end

    module CompatibleEnvironmentTemplateInputList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CompatibleEnvironmentTemplateInput.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CompatibleEnvironmentTemplateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CompatibleEnvironmentTemplate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Component
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Component, context: context)
        type = Types::Component.new
        type.name = params[:name]
        type.description = params[:description]
        type.arn = params[:arn]
        type.environment_name = params[:environment_name]
        type.service_name = params[:service_name]
        type.service_instance_name = params[:service_instance_name]
        type.created_at = params[:created_at]
        type.last_modified_at = params[:last_modified_at]
        type.last_deployment_attempted_at = params[:last_deployment_attempted_at]
        type.last_deployment_succeeded_at = params[:last_deployment_succeeded_at]
        type.deployment_status = params[:deployment_status]
        type.deployment_status_message = params[:deployment_status_message]
        type.service_spec = params[:service_spec]
        type
      end
    end

    module ComponentSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComponentSummary, context: context)
        type = Types::ComponentSummary.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.environment_name = params[:environment_name]
        type.service_name = params[:service_name]
        type.service_instance_name = params[:service_instance_name]
        type.created_at = params[:created_at]
        type.last_modified_at = params[:last_modified_at]
        type.last_deployment_attempted_at = params[:last_deployment_attempted_at]
        type.last_deployment_succeeded_at = params[:last_deployment_succeeded_at]
        type.deployment_status = params[:deployment_status]
        type.deployment_status_message = params[:deployment_status_message]
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

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type
      end
    end

    module CreateComponentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateComponentInput, context: context)
        type = Types::CreateComponentInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.service_name = params[:service_name]
        type.service_instance_name = params[:service_instance_name]
        type.environment_name = params[:environment_name]
        type.template_file = params[:template_file]
        type.manifest = params[:manifest]
        type.service_spec = params[:service_spec]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateComponentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateComponentOutput, context: context)
        type = Types::CreateComponentOutput.new
        type.component = Component.build(params[:component], context: "#{context}[:component]") unless params[:component].nil?
        type
      end
    end

    module CreateEnvironmentAccountConnectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEnvironmentAccountConnectionInput, context: context)
        type = Types::CreateEnvironmentAccountConnectionInput.new
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.management_account_id = params[:management_account_id]
        type.role_arn = params[:role_arn]
        type.environment_name = params[:environment_name]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.component_role_arn = params[:component_role_arn]
        type
      end
    end

    module CreateEnvironmentAccountConnectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEnvironmentAccountConnectionOutput, context: context)
        type = Types::CreateEnvironmentAccountConnectionOutput.new
        type.environment_account_connection = EnvironmentAccountConnection.build(params[:environment_account_connection], context: "#{context}[:environment_account_connection]") unless params[:environment_account_connection].nil?
        type
      end
    end

    module CreateEnvironmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEnvironmentInput, context: context)
        type = Types::CreateEnvironmentInput.new
        type.name = params[:name]
        type.template_name = params[:template_name]
        type.template_major_version = params[:template_major_version]
        type.template_minor_version = params[:template_minor_version]
        type.description = params[:description]
        type.spec = params[:spec]
        type.proton_service_role_arn = params[:proton_service_role_arn]
        type.environment_account_connection_id = params[:environment_account_connection_id]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.provisioning_repository = RepositoryBranchInput.build(params[:provisioning_repository], context: "#{context}[:provisioning_repository]") unless params[:provisioning_repository].nil?
        type.component_role_arn = params[:component_role_arn]
        type
      end
    end

    module CreateEnvironmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEnvironmentOutput, context: context)
        type = Types::CreateEnvironmentOutput.new
        type.environment = Environment.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type
      end
    end

    module CreateEnvironmentTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEnvironmentTemplateInput, context: context)
        type = Types::CreateEnvironmentTemplateInput.new
        type.name = params[:name]
        type.display_name = params[:display_name]
        type.description = params[:description]
        type.encryption_key = params[:encryption_key]
        type.provisioning = params[:provisioning]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateEnvironmentTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEnvironmentTemplateOutput, context: context)
        type = Types::CreateEnvironmentTemplateOutput.new
        type.environment_template = EnvironmentTemplate.build(params[:environment_template], context: "#{context}[:environment_template]") unless params[:environment_template].nil?
        type
      end
    end

    module CreateEnvironmentTemplateVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEnvironmentTemplateVersionInput, context: context)
        type = Types::CreateEnvironmentTemplateVersionInput.new
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.template_name = params[:template_name]
        type.description = params[:description]
        type.major_version = params[:major_version]
        type.source = TemplateVersionSourceInput.build(params[:source], context: "#{context}[:source]") unless params[:source].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateEnvironmentTemplateVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEnvironmentTemplateVersionOutput, context: context)
        type = Types::CreateEnvironmentTemplateVersionOutput.new
        type.environment_template_version = EnvironmentTemplateVersion.build(params[:environment_template_version], context: "#{context}[:environment_template_version]") unless params[:environment_template_version].nil?
        type
      end
    end

    module CreateRepositoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRepositoryInput, context: context)
        type = Types::CreateRepositoryInput.new
        type.provider = params[:provider]
        type.name = params[:name]
        type.connection_arn = params[:connection_arn]
        type.encryption_key = params[:encryption_key]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateRepositoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRepositoryOutput, context: context)
        type = Types::CreateRepositoryOutput.new
        type.repository = Repository.build(params[:repository], context: "#{context}[:repository]") unless params[:repository].nil?
        type
      end
    end

    module CreateServiceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateServiceInput, context: context)
        type = Types::CreateServiceInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.template_name = params[:template_name]
        type.template_major_version = params[:template_major_version]
        type.template_minor_version = params[:template_minor_version]
        type.spec = params[:spec]
        type.repository_connection_arn = params[:repository_connection_arn]
        type.repository_id = params[:repository_id]
        type.branch_name = params[:branch_name]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateServiceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateServiceOutput, context: context)
        type = Types::CreateServiceOutput.new
        type.service = Service.build(params[:service], context: "#{context}[:service]") unless params[:service].nil?
        type
      end
    end

    module CreateServiceTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateServiceTemplateInput, context: context)
        type = Types::CreateServiceTemplateInput.new
        type.name = params[:name]
        type.display_name = params[:display_name]
        type.description = params[:description]
        type.encryption_key = params[:encryption_key]
        type.pipeline_provisioning = params[:pipeline_provisioning]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateServiceTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateServiceTemplateOutput, context: context)
        type = Types::CreateServiceTemplateOutput.new
        type.service_template = ServiceTemplate.build(params[:service_template], context: "#{context}[:service_template]") unless params[:service_template].nil?
        type
      end
    end

    module CreateServiceTemplateVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateServiceTemplateVersionInput, context: context)
        type = Types::CreateServiceTemplateVersionInput.new
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.template_name = params[:template_name]
        type.description = params[:description]
        type.major_version = params[:major_version]
        type.source = TemplateVersionSourceInput.build(params[:source], context: "#{context}[:source]") unless params[:source].nil?
        type.compatible_environment_templates = CompatibleEnvironmentTemplateInputList.build(params[:compatible_environment_templates], context: "#{context}[:compatible_environment_templates]") unless params[:compatible_environment_templates].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.supported_component_sources = ServiceTemplateSupportedComponentSourceInputList.build(params[:supported_component_sources], context: "#{context}[:supported_component_sources]") unless params[:supported_component_sources].nil?
        type
      end
    end

    module CreateServiceTemplateVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateServiceTemplateVersionOutput, context: context)
        type = Types::CreateServiceTemplateVersionOutput.new
        type.service_template_version = ServiceTemplateVersion.build(params[:service_template_version], context: "#{context}[:service_template_version]") unless params[:service_template_version].nil?
        type
      end
    end

    module CreateTemplateSyncConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTemplateSyncConfigInput, context: context)
        type = Types::CreateTemplateSyncConfigInput.new
        type.template_name = params[:template_name]
        type.template_type = params[:template_type]
        type.repository_provider = params[:repository_provider]
        type.repository_name = params[:repository_name]
        type.branch = params[:branch]
        type.subdirectory = params[:subdirectory]
        type
      end
    end

    module CreateTemplateSyncConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTemplateSyncConfigOutput, context: context)
        type = Types::CreateTemplateSyncConfigOutput.new
        type.template_sync_config = TemplateSyncConfig.build(params[:template_sync_config], context: "#{context}[:template_sync_config]") unless params[:template_sync_config].nil?
        type
      end
    end

    module DeleteComponentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteComponentInput, context: context)
        type = Types::DeleteComponentInput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteComponentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteComponentOutput, context: context)
        type = Types::DeleteComponentOutput.new
        type.component = Component.build(params[:component], context: "#{context}[:component]") unless params[:component].nil?
        type
      end
    end

    module DeleteEnvironmentAccountConnectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEnvironmentAccountConnectionInput, context: context)
        type = Types::DeleteEnvironmentAccountConnectionInput.new
        type.id = params[:id]
        type
      end
    end

    module DeleteEnvironmentAccountConnectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEnvironmentAccountConnectionOutput, context: context)
        type = Types::DeleteEnvironmentAccountConnectionOutput.new
        type.environment_account_connection = EnvironmentAccountConnection.build(params[:environment_account_connection], context: "#{context}[:environment_account_connection]") unless params[:environment_account_connection].nil?
        type
      end
    end

    module DeleteEnvironmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEnvironmentInput, context: context)
        type = Types::DeleteEnvironmentInput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteEnvironmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEnvironmentOutput, context: context)
        type = Types::DeleteEnvironmentOutput.new
        type.environment = Environment.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type
      end
    end

    module DeleteEnvironmentTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEnvironmentTemplateInput, context: context)
        type = Types::DeleteEnvironmentTemplateInput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteEnvironmentTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEnvironmentTemplateOutput, context: context)
        type = Types::DeleteEnvironmentTemplateOutput.new
        type.environment_template = EnvironmentTemplate.build(params[:environment_template], context: "#{context}[:environment_template]") unless params[:environment_template].nil?
        type
      end
    end

    module DeleteEnvironmentTemplateVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEnvironmentTemplateVersionInput, context: context)
        type = Types::DeleteEnvironmentTemplateVersionInput.new
        type.template_name = params[:template_name]
        type.major_version = params[:major_version]
        type.minor_version = params[:minor_version]
        type
      end
    end

    module DeleteEnvironmentTemplateVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEnvironmentTemplateVersionOutput, context: context)
        type = Types::DeleteEnvironmentTemplateVersionOutput.new
        type.environment_template_version = EnvironmentTemplateVersion.build(params[:environment_template_version], context: "#{context}[:environment_template_version]") unless params[:environment_template_version].nil?
        type
      end
    end

    module DeleteRepositoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRepositoryInput, context: context)
        type = Types::DeleteRepositoryInput.new
        type.provider = params[:provider]
        type.name = params[:name]
        type
      end
    end

    module DeleteRepositoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRepositoryOutput, context: context)
        type = Types::DeleteRepositoryOutput.new
        type.repository = Repository.build(params[:repository], context: "#{context}[:repository]") unless params[:repository].nil?
        type
      end
    end

    module DeleteServiceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteServiceInput, context: context)
        type = Types::DeleteServiceInput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteServiceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteServiceOutput, context: context)
        type = Types::DeleteServiceOutput.new
        type.service = Service.build(params[:service], context: "#{context}[:service]") unless params[:service].nil?
        type
      end
    end

    module DeleteServiceTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteServiceTemplateInput, context: context)
        type = Types::DeleteServiceTemplateInput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteServiceTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteServiceTemplateOutput, context: context)
        type = Types::DeleteServiceTemplateOutput.new
        type.service_template = ServiceTemplate.build(params[:service_template], context: "#{context}[:service_template]") unless params[:service_template].nil?
        type
      end
    end

    module DeleteServiceTemplateVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteServiceTemplateVersionInput, context: context)
        type = Types::DeleteServiceTemplateVersionInput.new
        type.template_name = params[:template_name]
        type.major_version = params[:major_version]
        type.minor_version = params[:minor_version]
        type
      end
    end

    module DeleteServiceTemplateVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteServiceTemplateVersionOutput, context: context)
        type = Types::DeleteServiceTemplateVersionOutput.new
        type.service_template_version = ServiceTemplateVersion.build(params[:service_template_version], context: "#{context}[:service_template_version]") unless params[:service_template_version].nil?
        type
      end
    end

    module DeleteTemplateSyncConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTemplateSyncConfigInput, context: context)
        type = Types::DeleteTemplateSyncConfigInput.new
        type.template_name = params[:template_name]
        type.template_type = params[:template_type]
        type
      end
    end

    module DeleteTemplateSyncConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTemplateSyncConfigOutput, context: context)
        type = Types::DeleteTemplateSyncConfigOutput.new
        type.template_sync_config = TemplateSyncConfig.build(params[:template_sync_config], context: "#{context}[:template_sync_config]") unless params[:template_sync_config].nil?
        type
      end
    end

    module Environment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Environment, context: context)
        type = Types::Environment.new
        type.name = params[:name]
        type.description = params[:description]
        type.created_at = params[:created_at]
        type.last_deployment_attempted_at = params[:last_deployment_attempted_at]
        type.last_deployment_succeeded_at = params[:last_deployment_succeeded_at]
        type.arn = params[:arn]
        type.template_name = params[:template_name]
        type.template_major_version = params[:template_major_version]
        type.template_minor_version = params[:template_minor_version]
        type.deployment_status = params[:deployment_status]
        type.deployment_status_message = params[:deployment_status_message]
        type.proton_service_role_arn = params[:proton_service_role_arn]
        type.environment_account_connection_id = params[:environment_account_connection_id]
        type.environment_account_id = params[:environment_account_id]
        type.spec = params[:spec]
        type.provisioning = params[:provisioning]
        type.provisioning_repository = RepositoryBranch.build(params[:provisioning_repository], context: "#{context}[:provisioning_repository]") unless params[:provisioning_repository].nil?
        type.component_role_arn = params[:component_role_arn]
        type
      end
    end

    module EnvironmentAccountConnection
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnvironmentAccountConnection, context: context)
        type = Types::EnvironmentAccountConnection.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.management_account_id = params[:management_account_id]
        type.environment_account_id = params[:environment_account_id]
        type.role_arn = params[:role_arn]
        type.environment_name = params[:environment_name]
        type.requested_at = params[:requested_at]
        type.last_modified_at = params[:last_modified_at]
        type.status = params[:status]
        type.component_role_arn = params[:component_role_arn]
        type
      end
    end

    module EnvironmentAccountConnectionStatusList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module EnvironmentAccountConnectionSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnvironmentAccountConnectionSummary, context: context)
        type = Types::EnvironmentAccountConnectionSummary.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.management_account_id = params[:management_account_id]
        type.environment_account_id = params[:environment_account_id]
        type.role_arn = params[:role_arn]
        type.environment_name = params[:environment_name]
        type.requested_at = params[:requested_at]
        type.last_modified_at = params[:last_modified_at]
        type.status = params[:status]
        type.component_role_arn = params[:component_role_arn]
        type
      end
    end

    module EnvironmentAccountConnectionSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EnvironmentAccountConnectionSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EnvironmentSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnvironmentSummary, context: context)
        type = Types::EnvironmentSummary.new
        type.name = params[:name]
        type.description = params[:description]
        type.created_at = params[:created_at]
        type.last_deployment_attempted_at = params[:last_deployment_attempted_at]
        type.last_deployment_succeeded_at = params[:last_deployment_succeeded_at]
        type.arn = params[:arn]
        type.template_name = params[:template_name]
        type.template_major_version = params[:template_major_version]
        type.template_minor_version = params[:template_minor_version]
        type.deployment_status = params[:deployment_status]
        type.deployment_status_message = params[:deployment_status_message]
        type.proton_service_role_arn = params[:proton_service_role_arn]
        type.environment_account_connection_id = params[:environment_account_connection_id]
        type.environment_account_id = params[:environment_account_id]
        type.provisioning = params[:provisioning]
        type.component_role_arn = params[:component_role_arn]
        type
      end
    end

    module EnvironmentSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EnvironmentSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EnvironmentTemplate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnvironmentTemplate, context: context)
        type = Types::EnvironmentTemplate.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.created_at = params[:created_at]
        type.last_modified_at = params[:last_modified_at]
        type.display_name = params[:display_name]
        type.description = params[:description]
        type.recommended_version = params[:recommended_version]
        type.encryption_key = params[:encryption_key]
        type.provisioning = params[:provisioning]
        type
      end
    end

    module EnvironmentTemplateFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnvironmentTemplateFilter, context: context)
        type = Types::EnvironmentTemplateFilter.new
        type.template_name = params[:template_name]
        type.major_version = params[:major_version]
        type
      end
    end

    module EnvironmentTemplateFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EnvironmentTemplateFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EnvironmentTemplateSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnvironmentTemplateSummary, context: context)
        type = Types::EnvironmentTemplateSummary.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.created_at = params[:created_at]
        type.last_modified_at = params[:last_modified_at]
        type.display_name = params[:display_name]
        type.description = params[:description]
        type.recommended_version = params[:recommended_version]
        type.provisioning = params[:provisioning]
        type
      end
    end

    module EnvironmentTemplateSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EnvironmentTemplateSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EnvironmentTemplateVersion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnvironmentTemplateVersion, context: context)
        type = Types::EnvironmentTemplateVersion.new
        type.template_name = params[:template_name]
        type.major_version = params[:major_version]
        type.minor_version = params[:minor_version]
        type.recommended_minor_version = params[:recommended_minor_version]
        type.status = params[:status]
        type.status_message = params[:status_message]
        type.description = params[:description]
        type.arn = params[:arn]
        type.created_at = params[:created_at]
        type.last_modified_at = params[:last_modified_at]
        type.schema = params[:schema]
        type
      end
    end

    module EnvironmentTemplateVersionSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnvironmentTemplateVersionSummary, context: context)
        type = Types::EnvironmentTemplateVersionSummary.new
        type.template_name = params[:template_name]
        type.major_version = params[:major_version]
        type.minor_version = params[:minor_version]
        type.recommended_minor_version = params[:recommended_minor_version]
        type.status = params[:status]
        type.status_message = params[:status_message]
        type.description = params[:description]
        type.arn = params[:arn]
        type.created_at = params[:created_at]
        type.last_modified_at = params[:last_modified_at]
        type
      end
    end

    module EnvironmentTemplateVersionSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EnvironmentTemplateVersionSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GetAccountSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAccountSettingsInput, context: context)
        type = Types::GetAccountSettingsInput.new
        type
      end
    end

    module GetAccountSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAccountSettingsOutput, context: context)
        type = Types::GetAccountSettingsOutput.new
        type.account_settings = AccountSettings.build(params[:account_settings], context: "#{context}[:account_settings]") unless params[:account_settings].nil?
        type
      end
    end

    module GetComponentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetComponentInput, context: context)
        type = Types::GetComponentInput.new
        type.name = params[:name]
        type
      end
    end

    module GetComponentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetComponentOutput, context: context)
        type = Types::GetComponentOutput.new
        type.component = Component.build(params[:component], context: "#{context}[:component]") unless params[:component].nil?
        type
      end
    end

    module GetEnvironmentAccountConnectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEnvironmentAccountConnectionInput, context: context)
        type = Types::GetEnvironmentAccountConnectionInput.new
        type.id = params[:id]
        type
      end
    end

    module GetEnvironmentAccountConnectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEnvironmentAccountConnectionOutput, context: context)
        type = Types::GetEnvironmentAccountConnectionOutput.new
        type.environment_account_connection = EnvironmentAccountConnection.build(params[:environment_account_connection], context: "#{context}[:environment_account_connection]") unless params[:environment_account_connection].nil?
        type
      end
    end

    module GetEnvironmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEnvironmentInput, context: context)
        type = Types::GetEnvironmentInput.new
        type.name = params[:name]
        type
      end
    end

    module GetEnvironmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEnvironmentOutput, context: context)
        type = Types::GetEnvironmentOutput.new
        type.environment = Environment.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type
      end
    end

    module GetEnvironmentTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEnvironmentTemplateInput, context: context)
        type = Types::GetEnvironmentTemplateInput.new
        type.name = params[:name]
        type
      end
    end

    module GetEnvironmentTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEnvironmentTemplateOutput, context: context)
        type = Types::GetEnvironmentTemplateOutput.new
        type.environment_template = EnvironmentTemplate.build(params[:environment_template], context: "#{context}[:environment_template]") unless params[:environment_template].nil?
        type
      end
    end

    module GetEnvironmentTemplateVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEnvironmentTemplateVersionInput, context: context)
        type = Types::GetEnvironmentTemplateVersionInput.new
        type.template_name = params[:template_name]
        type.major_version = params[:major_version]
        type.minor_version = params[:minor_version]
        type
      end
    end

    module GetEnvironmentTemplateVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEnvironmentTemplateVersionOutput, context: context)
        type = Types::GetEnvironmentTemplateVersionOutput.new
        type.environment_template_version = EnvironmentTemplateVersion.build(params[:environment_template_version], context: "#{context}[:environment_template_version]") unless params[:environment_template_version].nil?
        type
      end
    end

    module GetRepositoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRepositoryInput, context: context)
        type = Types::GetRepositoryInput.new
        type.provider = params[:provider]
        type.name = params[:name]
        type
      end
    end

    module GetRepositoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRepositoryOutput, context: context)
        type = Types::GetRepositoryOutput.new
        type.repository = Repository.build(params[:repository], context: "#{context}[:repository]") unless params[:repository].nil?
        type
      end
    end

    module GetRepositorySyncStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRepositorySyncStatusInput, context: context)
        type = Types::GetRepositorySyncStatusInput.new
        type.repository_name = params[:repository_name]
        type.repository_provider = params[:repository_provider]
        type.branch = params[:branch]
        type.sync_type = params[:sync_type]
        type
      end
    end

    module GetRepositorySyncStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRepositorySyncStatusOutput, context: context)
        type = Types::GetRepositorySyncStatusOutput.new
        type.latest_sync = RepositorySyncAttempt.build(params[:latest_sync], context: "#{context}[:latest_sync]") unless params[:latest_sync].nil?
        type
      end
    end

    module GetServiceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetServiceInput, context: context)
        type = Types::GetServiceInput.new
        type.name = params[:name]
        type
      end
    end

    module GetServiceInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetServiceInstanceInput, context: context)
        type = Types::GetServiceInstanceInput.new
        type.name = params[:name]
        type.service_name = params[:service_name]
        type
      end
    end

    module GetServiceInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetServiceInstanceOutput, context: context)
        type = Types::GetServiceInstanceOutput.new
        type.service_instance = ServiceInstance.build(params[:service_instance], context: "#{context}[:service_instance]") unless params[:service_instance].nil?
        type
      end
    end

    module GetServiceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetServiceOutput, context: context)
        type = Types::GetServiceOutput.new
        type.service = Service.build(params[:service], context: "#{context}[:service]") unless params[:service].nil?
        type
      end
    end

    module GetServiceTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetServiceTemplateInput, context: context)
        type = Types::GetServiceTemplateInput.new
        type.name = params[:name]
        type
      end
    end

    module GetServiceTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetServiceTemplateOutput, context: context)
        type = Types::GetServiceTemplateOutput.new
        type.service_template = ServiceTemplate.build(params[:service_template], context: "#{context}[:service_template]") unless params[:service_template].nil?
        type
      end
    end

    module GetServiceTemplateVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetServiceTemplateVersionInput, context: context)
        type = Types::GetServiceTemplateVersionInput.new
        type.template_name = params[:template_name]
        type.major_version = params[:major_version]
        type.minor_version = params[:minor_version]
        type
      end
    end

    module GetServiceTemplateVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetServiceTemplateVersionOutput, context: context)
        type = Types::GetServiceTemplateVersionOutput.new
        type.service_template_version = ServiceTemplateVersion.build(params[:service_template_version], context: "#{context}[:service_template_version]") unless params[:service_template_version].nil?
        type
      end
    end

    module GetTemplateSyncConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTemplateSyncConfigInput, context: context)
        type = Types::GetTemplateSyncConfigInput.new
        type.template_name = params[:template_name]
        type.template_type = params[:template_type]
        type
      end
    end

    module GetTemplateSyncConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTemplateSyncConfigOutput, context: context)
        type = Types::GetTemplateSyncConfigOutput.new
        type.template_sync_config = TemplateSyncConfig.build(params[:template_sync_config], context: "#{context}[:template_sync_config]") unless params[:template_sync_config].nil?
        type
      end
    end

    module GetTemplateSyncStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTemplateSyncStatusInput, context: context)
        type = Types::GetTemplateSyncStatusInput.new
        type.template_name = params[:template_name]
        type.template_type = params[:template_type]
        type.template_version = params[:template_version]
        type
      end
    end

    module GetTemplateSyncStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTemplateSyncStatusOutput, context: context)
        type = Types::GetTemplateSyncStatusOutput.new
        type.latest_sync = ResourceSyncAttempt.build(params[:latest_sync], context: "#{context}[:latest_sync]") unless params[:latest_sync].nil?
        type.latest_successful_sync = ResourceSyncAttempt.build(params[:latest_successful_sync], context: "#{context}[:latest_successful_sync]") unless params[:latest_successful_sync].nil?
        type.desired_state = Revision.build(params[:desired_state], context: "#{context}[:desired_state]") unless params[:desired_state].nil?
        type
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type
      end
    end

    module ListComponentOutputsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListComponentOutputsInput, context: context)
        type = Types::ListComponentOutputsInput.new
        type.component_name = params[:component_name]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListComponentOutputsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListComponentOutputsOutput, context: context)
        type = Types::ListComponentOutputsOutput.new
        type.next_token = params[:next_token]
        type.outputs = OutputsList.build(params[:outputs], context: "#{context}[:outputs]") unless params[:outputs].nil?
        type
      end
    end

    module ListComponentProvisionedResourcesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListComponentProvisionedResourcesInput, context: context)
        type = Types::ListComponentProvisionedResourcesInput.new
        type.component_name = params[:component_name]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListComponentProvisionedResourcesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListComponentProvisionedResourcesOutput, context: context)
        type = Types::ListComponentProvisionedResourcesOutput.new
        type.next_token = params[:next_token]
        type.provisioned_resources = ProvisionedResourceList.build(params[:provisioned_resources], context: "#{context}[:provisioned_resources]") unless params[:provisioned_resources].nil?
        type
      end
    end

    module ListComponentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListComponentsInput, context: context)
        type = Types::ListComponentsInput.new
        type.next_token = params[:next_token]
        type.environment_name = params[:environment_name]
        type.service_name = params[:service_name]
        type.service_instance_name = params[:service_instance_name]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListComponentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListComponentsOutput, context: context)
        type = Types::ListComponentsOutput.new
        type.next_token = params[:next_token]
        type.components = ComponentSummaryList.build(params[:components], context: "#{context}[:components]") unless params[:components].nil?
        type
      end
    end

    module ListEnvironmentAccountConnectionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEnvironmentAccountConnectionsInput, context: context)
        type = Types::ListEnvironmentAccountConnectionsInput.new
        type.requested_by = params[:requested_by]
        type.environment_name = params[:environment_name]
        type.statuses = EnvironmentAccountConnectionStatusList.build(params[:statuses], context: "#{context}[:statuses]") unless params[:statuses].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListEnvironmentAccountConnectionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEnvironmentAccountConnectionsOutput, context: context)
        type = Types::ListEnvironmentAccountConnectionsOutput.new
        type.environment_account_connections = EnvironmentAccountConnectionSummaryList.build(params[:environment_account_connections], context: "#{context}[:environment_account_connections]") unless params[:environment_account_connections].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListEnvironmentOutputsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEnvironmentOutputsInput, context: context)
        type = Types::ListEnvironmentOutputsInput.new
        type.environment_name = params[:environment_name]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListEnvironmentOutputsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEnvironmentOutputsOutput, context: context)
        type = Types::ListEnvironmentOutputsOutput.new
        type.next_token = params[:next_token]
        type.outputs = OutputsList.build(params[:outputs], context: "#{context}[:outputs]") unless params[:outputs].nil?
        type
      end
    end

    module ListEnvironmentProvisionedResourcesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEnvironmentProvisionedResourcesInput, context: context)
        type = Types::ListEnvironmentProvisionedResourcesInput.new
        type.environment_name = params[:environment_name]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListEnvironmentProvisionedResourcesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEnvironmentProvisionedResourcesOutput, context: context)
        type = Types::ListEnvironmentProvisionedResourcesOutput.new
        type.next_token = params[:next_token]
        type.provisioned_resources = ProvisionedResourceList.build(params[:provisioned_resources], context: "#{context}[:provisioned_resources]") unless params[:provisioned_resources].nil?
        type
      end
    end

    module ListEnvironmentTemplateVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEnvironmentTemplateVersionsInput, context: context)
        type = Types::ListEnvironmentTemplateVersionsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.template_name = params[:template_name]
        type.major_version = params[:major_version]
        type
      end
    end

    module ListEnvironmentTemplateVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEnvironmentTemplateVersionsOutput, context: context)
        type = Types::ListEnvironmentTemplateVersionsOutput.new
        type.next_token = params[:next_token]
        type.template_versions = EnvironmentTemplateVersionSummaryList.build(params[:template_versions], context: "#{context}[:template_versions]") unless params[:template_versions].nil?
        type
      end
    end

    module ListEnvironmentTemplatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEnvironmentTemplatesInput, context: context)
        type = Types::ListEnvironmentTemplatesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListEnvironmentTemplatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEnvironmentTemplatesOutput, context: context)
        type = Types::ListEnvironmentTemplatesOutput.new
        type.next_token = params[:next_token]
        type.templates = EnvironmentTemplateSummaryList.build(params[:templates], context: "#{context}[:templates]") unless params[:templates].nil?
        type
      end
    end

    module ListEnvironmentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEnvironmentsInput, context: context)
        type = Types::ListEnvironmentsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.environment_templates = EnvironmentTemplateFilterList.build(params[:environment_templates], context: "#{context}[:environment_templates]") unless params[:environment_templates].nil?
        type
      end
    end

    module ListEnvironmentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEnvironmentsOutput, context: context)
        type = Types::ListEnvironmentsOutput.new
        type.next_token = params[:next_token]
        type.environments = EnvironmentSummaryList.build(params[:environments], context: "#{context}[:environments]") unless params[:environments].nil?
        type
      end
    end

    module ListRepositoriesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRepositoriesInput, context: context)
        type = Types::ListRepositoriesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListRepositoriesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRepositoriesOutput, context: context)
        type = Types::ListRepositoriesOutput.new
        type.next_token = params[:next_token]
        type.repositories = RepositorySummaryList.build(params[:repositories], context: "#{context}[:repositories]") unless params[:repositories].nil?
        type
      end
    end

    module ListRepositorySyncDefinitionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRepositorySyncDefinitionsInput, context: context)
        type = Types::ListRepositorySyncDefinitionsInput.new
        type.repository_name = params[:repository_name]
        type.repository_provider = params[:repository_provider]
        type.sync_type = params[:sync_type]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListRepositorySyncDefinitionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRepositorySyncDefinitionsOutput, context: context)
        type = Types::ListRepositorySyncDefinitionsOutput.new
        type.next_token = params[:next_token]
        type.sync_definitions = RepositorySyncDefinitionList.build(params[:sync_definitions], context: "#{context}[:sync_definitions]") unless params[:sync_definitions].nil?
        type
      end
    end

    module ListServiceInstanceOutputsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListServiceInstanceOutputsInput, context: context)
        type = Types::ListServiceInstanceOutputsInput.new
        type.service_instance_name = params[:service_instance_name]
        type.service_name = params[:service_name]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListServiceInstanceOutputsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListServiceInstanceOutputsOutput, context: context)
        type = Types::ListServiceInstanceOutputsOutput.new
        type.next_token = params[:next_token]
        type.outputs = OutputsList.build(params[:outputs], context: "#{context}[:outputs]") unless params[:outputs].nil?
        type
      end
    end

    module ListServiceInstanceProvisionedResourcesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListServiceInstanceProvisionedResourcesInput, context: context)
        type = Types::ListServiceInstanceProvisionedResourcesInput.new
        type.service_name = params[:service_name]
        type.service_instance_name = params[:service_instance_name]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListServiceInstanceProvisionedResourcesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListServiceInstanceProvisionedResourcesOutput, context: context)
        type = Types::ListServiceInstanceProvisionedResourcesOutput.new
        type.next_token = params[:next_token]
        type.provisioned_resources = ProvisionedResourceList.build(params[:provisioned_resources], context: "#{context}[:provisioned_resources]") unless params[:provisioned_resources].nil?
        type
      end
    end

    module ListServiceInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListServiceInstancesInput, context: context)
        type = Types::ListServiceInstancesInput.new
        type.service_name = params[:service_name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListServiceInstancesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListServiceInstancesOutput, context: context)
        type = Types::ListServiceInstancesOutput.new
        type.next_token = params[:next_token]
        type.service_instances = ServiceInstanceSummaryList.build(params[:service_instances], context: "#{context}[:service_instances]") unless params[:service_instances].nil?
        type
      end
    end

    module ListServicePipelineOutputsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListServicePipelineOutputsInput, context: context)
        type = Types::ListServicePipelineOutputsInput.new
        type.service_name = params[:service_name]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListServicePipelineOutputsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListServicePipelineOutputsOutput, context: context)
        type = Types::ListServicePipelineOutputsOutput.new
        type.next_token = params[:next_token]
        type.outputs = OutputsList.build(params[:outputs], context: "#{context}[:outputs]") unless params[:outputs].nil?
        type
      end
    end

    module ListServicePipelineProvisionedResourcesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListServicePipelineProvisionedResourcesInput, context: context)
        type = Types::ListServicePipelineProvisionedResourcesInput.new
        type.service_name = params[:service_name]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListServicePipelineProvisionedResourcesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListServicePipelineProvisionedResourcesOutput, context: context)
        type = Types::ListServicePipelineProvisionedResourcesOutput.new
        type.next_token = params[:next_token]
        type.provisioned_resources = ProvisionedResourceList.build(params[:provisioned_resources], context: "#{context}[:provisioned_resources]") unless params[:provisioned_resources].nil?
        type
      end
    end

    module ListServiceTemplateVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListServiceTemplateVersionsInput, context: context)
        type = Types::ListServiceTemplateVersionsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.template_name = params[:template_name]
        type.major_version = params[:major_version]
        type
      end
    end

    module ListServiceTemplateVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListServiceTemplateVersionsOutput, context: context)
        type = Types::ListServiceTemplateVersionsOutput.new
        type.next_token = params[:next_token]
        type.template_versions = ServiceTemplateVersionSummaryList.build(params[:template_versions], context: "#{context}[:template_versions]") unless params[:template_versions].nil?
        type
      end
    end

    module ListServiceTemplatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListServiceTemplatesInput, context: context)
        type = Types::ListServiceTemplatesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListServiceTemplatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListServiceTemplatesOutput, context: context)
        type = Types::ListServiceTemplatesOutput.new
        type.next_token = params[:next_token]
        type.templates = ServiceTemplateSummaryList.build(params[:templates], context: "#{context}[:templates]") unless params[:templates].nil?
        type
      end
    end

    module ListServicesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListServicesInput, context: context)
        type = Types::ListServicesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListServicesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListServicesOutput, context: context)
        type = Types::ListServicesOutput.new
        type.next_token = params[:next_token]
        type.services = ServiceSummaryList.build(params[:services], context: "#{context}[:services]") unless params[:services].nil?
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module NotifyResourceDeploymentStatusChangeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotifyResourceDeploymentStatusChangeInput, context: context)
        type = Types::NotifyResourceDeploymentStatusChangeInput.new
        type.resource_arn = params[:resource_arn]
        type.status = params[:status]
        type.outputs = OutputsList.build(params[:outputs], context: "#{context}[:outputs]") unless params[:outputs].nil?
        type.deployment_id = params[:deployment_id]
        type.status_message = params[:status_message]
        type
      end
    end

    module NotifyResourceDeploymentStatusChangeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotifyResourceDeploymentStatusChangeOutput, context: context)
        type = Types::NotifyResourceDeploymentStatusChangeOutput.new
        type
      end
    end

    module Output
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Output, context: context)
        type = Types::Output.new
        type.key = params[:key]
        type.value_string = params[:value_string]
        type
      end
    end

    module OutputsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Output.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ProvisionedResource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProvisionedResource, context: context)
        type = Types::ProvisionedResource.new
        type.name = params[:name]
        type.identifier = params[:identifier]
        type.provisioning_engine = params[:provisioning_engine]
        type
      end
    end

    module ProvisionedResourceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProvisionedResource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RejectEnvironmentAccountConnectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RejectEnvironmentAccountConnectionInput, context: context)
        type = Types::RejectEnvironmentAccountConnectionInput.new
        type.id = params[:id]
        type
      end
    end

    module RejectEnvironmentAccountConnectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RejectEnvironmentAccountConnectionOutput, context: context)
        type = Types::RejectEnvironmentAccountConnectionOutput.new
        type.environment_account_connection = EnvironmentAccountConnection.build(params[:environment_account_connection], context: "#{context}[:environment_account_connection]") unless params[:environment_account_connection].nil?
        type
      end
    end

    module Repository
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Repository, context: context)
        type = Types::Repository.new
        type.arn = params[:arn]
        type.provider = params[:provider]
        type.name = params[:name]
        type.connection_arn = params[:connection_arn]
        type.encryption_key = params[:encryption_key]
        type
      end
    end

    module RepositoryBranch
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RepositoryBranch, context: context)
        type = Types::RepositoryBranch.new
        type.arn = params[:arn]
        type.provider = params[:provider]
        type.name = params[:name]
        type.branch = params[:branch]
        type
      end
    end

    module RepositoryBranchInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RepositoryBranchInput, context: context)
        type = Types::RepositoryBranchInput.new
        type.provider = params[:provider]
        type.name = params[:name]
        type.branch = params[:branch]
        type
      end
    end

    module RepositorySummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RepositorySummary, context: context)
        type = Types::RepositorySummary.new
        type.arn = params[:arn]
        type.provider = params[:provider]
        type.name = params[:name]
        type
      end
    end

    module RepositorySummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RepositorySummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RepositorySyncAttempt
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RepositorySyncAttempt, context: context)
        type = Types::RepositorySyncAttempt.new
        type.started_at = params[:started_at]
        type.status = params[:status]
        type.events = RepositorySyncEvents.build(params[:events], context: "#{context}[:events]") unless params[:events].nil?
        type
      end
    end

    module RepositorySyncDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RepositorySyncDefinition, context: context)
        type = Types::RepositorySyncDefinition.new
        type.target = params[:target]
        type.parent = params[:parent]
        type.branch = params[:branch]
        type.directory = params[:directory]
        type
      end
    end

    module RepositorySyncDefinitionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RepositorySyncDefinition.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RepositorySyncEvent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RepositorySyncEvent, context: context)
        type = Types::RepositorySyncEvent.new
        type.type = params[:type]
        type.external_id = params[:external_id]
        type.time = params[:time]
        type.event = params[:event]
        type
      end
    end

    module RepositorySyncEvents
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RepositorySyncEvent.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
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

    module ResourceSyncAttempt
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceSyncAttempt, context: context)
        type = Types::ResourceSyncAttempt.new
        type.initial_revision = Revision.build(params[:initial_revision], context: "#{context}[:initial_revision]") unless params[:initial_revision].nil?
        type.target_revision = Revision.build(params[:target_revision], context: "#{context}[:target_revision]") unless params[:target_revision].nil?
        type.target = params[:target]
        type.started_at = params[:started_at]
        type.status = params[:status]
        type.events = ResourceSyncEvents.build(params[:events], context: "#{context}[:events]") unless params[:events].nil?
        type
      end
    end

    module ResourceSyncEvent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceSyncEvent, context: context)
        type = Types::ResourceSyncEvent.new
        type.type = params[:type]
        type.external_id = params[:external_id]
        type.time = params[:time]
        type.event = params[:event]
        type
      end
    end

    module ResourceSyncEvents
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourceSyncEvent.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Revision
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Revision, context: context)
        type = Types::Revision.new
        type.repository_name = params[:repository_name]
        type.repository_provider = params[:repository_provider]
        type.sha = params[:sha]
        type.directory = params[:directory]
        type.branch = params[:branch]
        type
      end
    end

    module S3ObjectSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3ObjectSource, context: context)
        type = Types::S3ObjectSource.new
        type.bucket = params[:bucket]
        type.key = params[:key]
        type
      end
    end

    module Service
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Service, context: context)
        type = Types::Service.new
        type.name = params[:name]
        type.description = params[:description]
        type.arn = params[:arn]
        type.template_name = params[:template_name]
        type.created_at = params[:created_at]
        type.last_modified_at = params[:last_modified_at]
        type.status = params[:status]
        type.status_message = params[:status_message]
        type.spec = params[:spec]
        type.pipeline = ServicePipeline.build(params[:pipeline], context: "#{context}[:pipeline]") unless params[:pipeline].nil?
        type.repository_connection_arn = params[:repository_connection_arn]
        type.repository_id = params[:repository_id]
        type.branch_name = params[:branch_name]
        type
      end
    end

    module ServiceInstance
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceInstance, context: context)
        type = Types::ServiceInstance.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.created_at = params[:created_at]
        type.last_deployment_attempted_at = params[:last_deployment_attempted_at]
        type.last_deployment_succeeded_at = params[:last_deployment_succeeded_at]
        type.service_name = params[:service_name]
        type.environment_name = params[:environment_name]
        type.template_name = params[:template_name]
        type.template_major_version = params[:template_major_version]
        type.template_minor_version = params[:template_minor_version]
        type.deployment_status = params[:deployment_status]
        type.deployment_status_message = params[:deployment_status_message]
        type.spec = params[:spec]
        type
      end
    end

    module ServiceInstanceSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceInstanceSummary, context: context)
        type = Types::ServiceInstanceSummary.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.created_at = params[:created_at]
        type.last_deployment_attempted_at = params[:last_deployment_attempted_at]
        type.last_deployment_succeeded_at = params[:last_deployment_succeeded_at]
        type.service_name = params[:service_name]
        type.environment_name = params[:environment_name]
        type.template_name = params[:template_name]
        type.template_major_version = params[:template_major_version]
        type.template_minor_version = params[:template_minor_version]
        type.deployment_status = params[:deployment_status]
        type.deployment_status_message = params[:deployment_status_message]
        type
      end
    end

    module ServiceInstanceSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ServiceInstanceSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ServicePipeline
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServicePipeline, context: context)
        type = Types::ServicePipeline.new
        type.arn = params[:arn]
        type.created_at = params[:created_at]
        type.last_deployment_attempted_at = params[:last_deployment_attempted_at]
        type.last_deployment_succeeded_at = params[:last_deployment_succeeded_at]
        type.template_name = params[:template_name]
        type.template_major_version = params[:template_major_version]
        type.template_minor_version = params[:template_minor_version]
        type.deployment_status = params[:deployment_status]
        type.deployment_status_message = params[:deployment_status_message]
        type.spec = params[:spec]
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

    module ServiceSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceSummary, context: context)
        type = Types::ServiceSummary.new
        type.name = params[:name]
        type.description = params[:description]
        type.arn = params[:arn]
        type.template_name = params[:template_name]
        type.created_at = params[:created_at]
        type.last_modified_at = params[:last_modified_at]
        type.status = params[:status]
        type.status_message = params[:status_message]
        type
      end
    end

    module ServiceSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ServiceSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ServiceTemplate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceTemplate, context: context)
        type = Types::ServiceTemplate.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.created_at = params[:created_at]
        type.last_modified_at = params[:last_modified_at]
        type.display_name = params[:display_name]
        type.description = params[:description]
        type.recommended_version = params[:recommended_version]
        type.encryption_key = params[:encryption_key]
        type.pipeline_provisioning = params[:pipeline_provisioning]
        type
      end
    end

    module ServiceTemplateSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceTemplateSummary, context: context)
        type = Types::ServiceTemplateSummary.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.created_at = params[:created_at]
        type.last_modified_at = params[:last_modified_at]
        type.display_name = params[:display_name]
        type.description = params[:description]
        type.recommended_version = params[:recommended_version]
        type.pipeline_provisioning = params[:pipeline_provisioning]
        type
      end
    end

    module ServiceTemplateSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ServiceTemplateSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ServiceTemplateSupportedComponentSourceInputList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ServiceTemplateVersion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceTemplateVersion, context: context)
        type = Types::ServiceTemplateVersion.new
        type.template_name = params[:template_name]
        type.major_version = params[:major_version]
        type.minor_version = params[:minor_version]
        type.recommended_minor_version = params[:recommended_minor_version]
        type.status = params[:status]
        type.status_message = params[:status_message]
        type.description = params[:description]
        type.arn = params[:arn]
        type.created_at = params[:created_at]
        type.last_modified_at = params[:last_modified_at]
        type.compatible_environment_templates = CompatibleEnvironmentTemplateList.build(params[:compatible_environment_templates], context: "#{context}[:compatible_environment_templates]") unless params[:compatible_environment_templates].nil?
        type.schema = params[:schema]
        type.supported_component_sources = ServiceTemplateSupportedComponentSourceInputList.build(params[:supported_component_sources], context: "#{context}[:supported_component_sources]") unless params[:supported_component_sources].nil?
        type
      end
    end

    module ServiceTemplateVersionSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceTemplateVersionSummary, context: context)
        type = Types::ServiceTemplateVersionSummary.new
        type.template_name = params[:template_name]
        type.major_version = params[:major_version]
        type.minor_version = params[:minor_version]
        type.recommended_minor_version = params[:recommended_minor_version]
        type.status = params[:status]
        type.status_message = params[:status_message]
        type.description = params[:description]
        type.arn = params[:arn]
        type.created_at = params[:created_at]
        type.last_modified_at = params[:last_modified_at]
        type
      end
    end

    module ServiceTemplateVersionSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ServiceTemplateVersionSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
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

    module TagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module TemplateSyncConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TemplateSyncConfig, context: context)
        type = Types::TemplateSyncConfig.new
        type.template_name = params[:template_name]
        type.template_type = params[:template_type]
        type.repository_provider = params[:repository_provider]
        type.repository_name = params[:repository_name]
        type.branch = params[:branch]
        type.subdirectory = params[:subdirectory]
        type
      end
    end

    module TemplateVersionSourceInput
      def self.build(params, context: '')
        return params if params.is_a?(Types::TemplateVersionSourceInput)
        Hearth::Validator.validate!(params, ::Hash, Types::TemplateVersionSourceInput, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :s3
          Types::TemplateVersionSourceInput::S3.new(
            (S3ObjectSource.build(params[:s3], context: "#{context}[:s3]") unless params[:s3].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :s3 set"
        end
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
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

    module UpdateAccountSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAccountSettingsInput, context: context)
        type = Types::UpdateAccountSettingsInput.new
        type.pipeline_service_role_arn = params[:pipeline_service_role_arn]
        type.pipeline_provisioning_repository = RepositoryBranchInput.build(params[:pipeline_provisioning_repository], context: "#{context}[:pipeline_provisioning_repository]") unless params[:pipeline_provisioning_repository].nil?
        type
      end
    end

    module UpdateAccountSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAccountSettingsOutput, context: context)
        type = Types::UpdateAccountSettingsOutput.new
        type.account_settings = AccountSettings.build(params[:account_settings], context: "#{context}[:account_settings]") unless params[:account_settings].nil?
        type
      end
    end

    module UpdateComponentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateComponentInput, context: context)
        type = Types::UpdateComponentInput.new
        type.name = params[:name]
        type.deployment_type = params[:deployment_type]
        type.description = params[:description]
        type.service_name = params[:service_name]
        type.service_instance_name = params[:service_instance_name]
        type.service_spec = params[:service_spec]
        type.template_file = params[:template_file]
        type
      end
    end

    module UpdateComponentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateComponentOutput, context: context)
        type = Types::UpdateComponentOutput.new
        type.component = Component.build(params[:component], context: "#{context}[:component]") unless params[:component].nil?
        type
      end
    end

    module UpdateEnvironmentAccountConnectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEnvironmentAccountConnectionInput, context: context)
        type = Types::UpdateEnvironmentAccountConnectionInput.new
        type.id = params[:id]
        type.role_arn = params[:role_arn]
        type.component_role_arn = params[:component_role_arn]
        type
      end
    end

    module UpdateEnvironmentAccountConnectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEnvironmentAccountConnectionOutput, context: context)
        type = Types::UpdateEnvironmentAccountConnectionOutput.new
        type.environment_account_connection = EnvironmentAccountConnection.build(params[:environment_account_connection], context: "#{context}[:environment_account_connection]") unless params[:environment_account_connection].nil?
        type
      end
    end

    module UpdateEnvironmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEnvironmentInput, context: context)
        type = Types::UpdateEnvironmentInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.spec = params[:spec]
        type.template_major_version = params[:template_major_version]
        type.template_minor_version = params[:template_minor_version]
        type.proton_service_role_arn = params[:proton_service_role_arn]
        type.deployment_type = params[:deployment_type]
        type.environment_account_connection_id = params[:environment_account_connection_id]
        type.provisioning_repository = RepositoryBranchInput.build(params[:provisioning_repository], context: "#{context}[:provisioning_repository]") unless params[:provisioning_repository].nil?
        type.component_role_arn = params[:component_role_arn]
        type
      end
    end

    module UpdateEnvironmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEnvironmentOutput, context: context)
        type = Types::UpdateEnvironmentOutput.new
        type.environment = Environment.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type
      end
    end

    module UpdateEnvironmentTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEnvironmentTemplateInput, context: context)
        type = Types::UpdateEnvironmentTemplateInput.new
        type.name = params[:name]
        type.display_name = params[:display_name]
        type.description = params[:description]
        type
      end
    end

    module UpdateEnvironmentTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEnvironmentTemplateOutput, context: context)
        type = Types::UpdateEnvironmentTemplateOutput.new
        type.environment_template = EnvironmentTemplate.build(params[:environment_template], context: "#{context}[:environment_template]") unless params[:environment_template].nil?
        type
      end
    end

    module UpdateEnvironmentTemplateVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEnvironmentTemplateVersionInput, context: context)
        type = Types::UpdateEnvironmentTemplateVersionInput.new
        type.template_name = params[:template_name]
        type.major_version = params[:major_version]
        type.minor_version = params[:minor_version]
        type.description = params[:description]
        type.status = params[:status]
        type
      end
    end

    module UpdateEnvironmentTemplateVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEnvironmentTemplateVersionOutput, context: context)
        type = Types::UpdateEnvironmentTemplateVersionOutput.new
        type.environment_template_version = EnvironmentTemplateVersion.build(params[:environment_template_version], context: "#{context}[:environment_template_version]") unless params[:environment_template_version].nil?
        type
      end
    end

    module UpdateServiceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateServiceInput, context: context)
        type = Types::UpdateServiceInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.spec = params[:spec]
        type
      end
    end

    module UpdateServiceInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateServiceInstanceInput, context: context)
        type = Types::UpdateServiceInstanceInput.new
        type.name = params[:name]
        type.service_name = params[:service_name]
        type.deployment_type = params[:deployment_type]
        type.spec = params[:spec]
        type.template_major_version = params[:template_major_version]
        type.template_minor_version = params[:template_minor_version]
        type
      end
    end

    module UpdateServiceInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateServiceInstanceOutput, context: context)
        type = Types::UpdateServiceInstanceOutput.new
        type.service_instance = ServiceInstance.build(params[:service_instance], context: "#{context}[:service_instance]") unless params[:service_instance].nil?
        type
      end
    end

    module UpdateServiceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateServiceOutput, context: context)
        type = Types::UpdateServiceOutput.new
        type.service = Service.build(params[:service], context: "#{context}[:service]") unless params[:service].nil?
        type
      end
    end

    module UpdateServicePipelineInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateServicePipelineInput, context: context)
        type = Types::UpdateServicePipelineInput.new
        type.service_name = params[:service_name]
        type.spec = params[:spec]
        type.deployment_type = params[:deployment_type]
        type.template_major_version = params[:template_major_version]
        type.template_minor_version = params[:template_minor_version]
        type
      end
    end

    module UpdateServicePipelineOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateServicePipelineOutput, context: context)
        type = Types::UpdateServicePipelineOutput.new
        type.pipeline = ServicePipeline.build(params[:pipeline], context: "#{context}[:pipeline]") unless params[:pipeline].nil?
        type
      end
    end

    module UpdateServiceTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateServiceTemplateInput, context: context)
        type = Types::UpdateServiceTemplateInput.new
        type.name = params[:name]
        type.display_name = params[:display_name]
        type.description = params[:description]
        type
      end
    end

    module UpdateServiceTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateServiceTemplateOutput, context: context)
        type = Types::UpdateServiceTemplateOutput.new
        type.service_template = ServiceTemplate.build(params[:service_template], context: "#{context}[:service_template]") unless params[:service_template].nil?
        type
      end
    end

    module UpdateServiceTemplateVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateServiceTemplateVersionInput, context: context)
        type = Types::UpdateServiceTemplateVersionInput.new
        type.template_name = params[:template_name]
        type.major_version = params[:major_version]
        type.minor_version = params[:minor_version]
        type.description = params[:description]
        type.status = params[:status]
        type.compatible_environment_templates = CompatibleEnvironmentTemplateInputList.build(params[:compatible_environment_templates], context: "#{context}[:compatible_environment_templates]") unless params[:compatible_environment_templates].nil?
        type.supported_component_sources = ServiceTemplateSupportedComponentSourceInputList.build(params[:supported_component_sources], context: "#{context}[:supported_component_sources]") unless params[:supported_component_sources].nil?
        type
      end
    end

    module UpdateServiceTemplateVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateServiceTemplateVersionOutput, context: context)
        type = Types::UpdateServiceTemplateVersionOutput.new
        type.service_template_version = ServiceTemplateVersion.build(params[:service_template_version], context: "#{context}[:service_template_version]") unless params[:service_template_version].nil?
        type
      end
    end

    module UpdateTemplateSyncConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTemplateSyncConfigInput, context: context)
        type = Types::UpdateTemplateSyncConfigInput.new
        type.template_name = params[:template_name]
        type.template_type = params[:template_type]
        type.repository_provider = params[:repository_provider]
        type.repository_name = params[:repository_name]
        type.branch = params[:branch]
        type.subdirectory = params[:subdirectory]
        type
      end
    end

    module UpdateTemplateSyncConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTemplateSyncConfigOutput, context: context)
        type = Types::UpdateTemplateSyncConfigOutput.new
        type.template_sync_config = TemplateSyncConfig.build(params[:template_sync_config], context: "#{context}[:template_sync_config]") unless params[:template_sync_config].nil?
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type
      end
    end

  end
end
