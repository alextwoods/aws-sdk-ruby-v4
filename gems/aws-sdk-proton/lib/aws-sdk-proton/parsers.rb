# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Proton
  module Parsers

    # Operation Parser for AcceptEnvironmentAccountConnection
    class AcceptEnvironmentAccountConnection
      def self.parse(http_resp)
        data = Types::AcceptEnvironmentAccountConnectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.environment_account_connection = (EnvironmentAccountConnection.parse(map['environmentAccountConnection']) unless map['environmentAccountConnection'].nil?)
        data
      end
    end

    class EnvironmentAccountConnection
      def self.parse(map)
        data = Types::EnvironmentAccountConnection.new
        data.id = map['id']
        data.arn = map['arn']
        data.management_account_id = map['managementAccountId']
        data.environment_account_id = map['environmentAccountId']
        data.role_arn = map['roleArn']
        data.environment_name = map['environmentName']
        data.requested_at = Time.at(map['requestedAt'].to_i) if map['requestedAt']
        data.last_modified_at = Time.at(map['lastModifiedAt'].to_i) if map['lastModifiedAt']
        data.status = map['status']
        data.component_role_arn = map['componentRoleArn']
        return data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CancelComponentDeployment
    class CancelComponentDeployment
      def self.parse(http_resp)
        data = Types::CancelComponentDeploymentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.component = (Component.parse(map['component']) unless map['component'].nil?)
        data
      end
    end

    class Component
      def self.parse(map)
        data = Types::Component.new
        data.name = map['name']
        data.description = map['description']
        data.arn = map['arn']
        data.environment_name = map['environmentName']
        data.service_name = map['serviceName']
        data.service_instance_name = map['serviceInstanceName']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.last_modified_at = Time.at(map['lastModifiedAt'].to_i) if map['lastModifiedAt']
        data.last_deployment_attempted_at = Time.at(map['lastDeploymentAttemptedAt'].to_i) if map['lastDeploymentAttemptedAt']
        data.last_deployment_succeeded_at = Time.at(map['lastDeploymentSucceededAt'].to_i) if map['lastDeploymentSucceededAt']
        data.deployment_status = map['deploymentStatus']
        data.deployment_status_message = map['deploymentStatusMessage']
        data.service_spec = map['serviceSpec']
        return data
      end
    end

    # Operation Parser for CancelEnvironmentDeployment
    class CancelEnvironmentDeployment
      def self.parse(http_resp)
        data = Types::CancelEnvironmentDeploymentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.environment = (Environment.parse(map['environment']) unless map['environment'].nil?)
        data
      end
    end

    class Environment
      def self.parse(map)
        data = Types::Environment.new
        data.name = map['name']
        data.description = map['description']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.last_deployment_attempted_at = Time.at(map['lastDeploymentAttemptedAt'].to_i) if map['lastDeploymentAttemptedAt']
        data.last_deployment_succeeded_at = Time.at(map['lastDeploymentSucceededAt'].to_i) if map['lastDeploymentSucceededAt']
        data.arn = map['arn']
        data.template_name = map['templateName']
        data.template_major_version = map['templateMajorVersion']
        data.template_minor_version = map['templateMinorVersion']
        data.deployment_status = map['deploymentStatus']
        data.deployment_status_message = map['deploymentStatusMessage']
        data.proton_service_role_arn = map['protonServiceRoleArn']
        data.environment_account_connection_id = map['environmentAccountConnectionId']
        data.environment_account_id = map['environmentAccountId']
        data.spec = map['spec']
        data.provisioning = map['provisioning']
        data.provisioning_repository = (RepositoryBranch.parse(map['provisioningRepository']) unless map['provisioningRepository'].nil?)
        data.component_role_arn = map['componentRoleArn']
        return data
      end
    end

    class RepositoryBranch
      def self.parse(map)
        data = Types::RepositoryBranch.new
        data.arn = map['arn']
        data.provider = map['provider']
        data.name = map['name']
        data.branch = map['branch']
        return data
      end
    end

    # Operation Parser for CancelServiceInstanceDeployment
    class CancelServiceInstanceDeployment
      def self.parse(http_resp)
        data = Types::CancelServiceInstanceDeploymentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.service_instance = (ServiceInstance.parse(map['serviceInstance']) unless map['serviceInstance'].nil?)
        data
      end
    end

    class ServiceInstance
      def self.parse(map)
        data = Types::ServiceInstance.new
        data.name = map['name']
        data.arn = map['arn']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.last_deployment_attempted_at = Time.at(map['lastDeploymentAttemptedAt'].to_i) if map['lastDeploymentAttemptedAt']
        data.last_deployment_succeeded_at = Time.at(map['lastDeploymentSucceededAt'].to_i) if map['lastDeploymentSucceededAt']
        data.service_name = map['serviceName']
        data.environment_name = map['environmentName']
        data.template_name = map['templateName']
        data.template_major_version = map['templateMajorVersion']
        data.template_minor_version = map['templateMinorVersion']
        data.deployment_status = map['deploymentStatus']
        data.deployment_status_message = map['deploymentStatusMessage']
        data.spec = map['spec']
        return data
      end
    end

    # Operation Parser for CancelServicePipelineDeployment
    class CancelServicePipelineDeployment
      def self.parse(http_resp)
        data = Types::CancelServicePipelineDeploymentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pipeline = (ServicePipeline.parse(map['pipeline']) unless map['pipeline'].nil?)
        data
      end
    end

    class ServicePipeline
      def self.parse(map)
        data = Types::ServicePipeline.new
        data.arn = map['arn']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.last_deployment_attempted_at = Time.at(map['lastDeploymentAttemptedAt'].to_i) if map['lastDeploymentAttemptedAt']
        data.last_deployment_succeeded_at = Time.at(map['lastDeploymentSucceededAt'].to_i) if map['lastDeploymentSucceededAt']
        data.template_name = map['templateName']
        data.template_major_version = map['templateMajorVersion']
        data.template_minor_version = map['templateMinorVersion']
        data.deployment_status = map['deploymentStatus']
        data.deployment_status_message = map['deploymentStatusMessage']
        data.spec = map['spec']
        return data
      end
    end

    # Operation Parser for CreateComponent
    class CreateComponent
      def self.parse(http_resp)
        data = Types::CreateComponentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.component = (Component.parse(map['component']) unless map['component'].nil?)
        data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreateEnvironment
    class CreateEnvironment
      def self.parse(http_resp)
        data = Types::CreateEnvironmentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.environment = (Environment.parse(map['environment']) unless map['environment'].nil?)
        data
      end
    end

    # Operation Parser for CreateEnvironmentAccountConnection
    class CreateEnvironmentAccountConnection
      def self.parse(http_resp)
        data = Types::CreateEnvironmentAccountConnectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.environment_account_connection = (EnvironmentAccountConnection.parse(map['environmentAccountConnection']) unless map['environmentAccountConnection'].nil?)
        data
      end
    end

    # Operation Parser for CreateEnvironmentTemplate
    class CreateEnvironmentTemplate
      def self.parse(http_resp)
        data = Types::CreateEnvironmentTemplateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.environment_template = (EnvironmentTemplate.parse(map['environmentTemplate']) unless map['environmentTemplate'].nil?)
        data
      end
    end

    class EnvironmentTemplate
      def self.parse(map)
        data = Types::EnvironmentTemplate.new
        data.name = map['name']
        data.arn = map['arn']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.last_modified_at = Time.at(map['lastModifiedAt'].to_i) if map['lastModifiedAt']
        data.display_name = map['displayName']
        data.description = map['description']
        data.recommended_version = map['recommendedVersion']
        data.encryption_key = map['encryptionKey']
        data.provisioning = map['provisioning']
        return data
      end
    end

    # Operation Parser for CreateEnvironmentTemplateVersion
    class CreateEnvironmentTemplateVersion
      def self.parse(http_resp)
        data = Types::CreateEnvironmentTemplateVersionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.environment_template_version = (EnvironmentTemplateVersion.parse(map['environmentTemplateVersion']) unless map['environmentTemplateVersion'].nil?)
        data
      end
    end

    class EnvironmentTemplateVersion
      def self.parse(map)
        data = Types::EnvironmentTemplateVersion.new
        data.template_name = map['templateName']
        data.major_version = map['majorVersion']
        data.minor_version = map['minorVersion']
        data.recommended_minor_version = map['recommendedMinorVersion']
        data.status = map['status']
        data.status_message = map['statusMessage']
        data.description = map['description']
        data.arn = map['arn']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.last_modified_at = Time.at(map['lastModifiedAt'].to_i) if map['lastModifiedAt']
        data.schema = map['schema']
        return data
      end
    end

    # Operation Parser for CreateRepository
    class CreateRepository
      def self.parse(http_resp)
        data = Types::CreateRepositoryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.repository = (Repository.parse(map['repository']) unless map['repository'].nil?)
        data
      end
    end

    class Repository
      def self.parse(map)
        data = Types::Repository.new
        data.arn = map['arn']
        data.provider = map['provider']
        data.name = map['name']
        data.connection_arn = map['connectionArn']
        data.encryption_key = map['encryptionKey']
        return data
      end
    end

    # Operation Parser for CreateService
    class CreateService
      def self.parse(http_resp)
        data = Types::CreateServiceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.service = (Service.parse(map['service']) unless map['service'].nil?)
        data
      end
    end

    class Service
      def self.parse(map)
        data = Types::Service.new
        data.name = map['name']
        data.description = map['description']
        data.arn = map['arn']
        data.template_name = map['templateName']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.last_modified_at = Time.at(map['lastModifiedAt'].to_i) if map['lastModifiedAt']
        data.status = map['status']
        data.status_message = map['statusMessage']
        data.spec = map['spec']
        data.pipeline = (ServicePipeline.parse(map['pipeline']) unless map['pipeline'].nil?)
        data.repository_connection_arn = map['repositoryConnectionArn']
        data.repository_id = map['repositoryId']
        data.branch_name = map['branchName']
        return data
      end
    end

    # Operation Parser for CreateServiceTemplate
    class CreateServiceTemplate
      def self.parse(http_resp)
        data = Types::CreateServiceTemplateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.service_template = (ServiceTemplate.parse(map['serviceTemplate']) unless map['serviceTemplate'].nil?)
        data
      end
    end

    class ServiceTemplate
      def self.parse(map)
        data = Types::ServiceTemplate.new
        data.name = map['name']
        data.arn = map['arn']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.last_modified_at = Time.at(map['lastModifiedAt'].to_i) if map['lastModifiedAt']
        data.display_name = map['displayName']
        data.description = map['description']
        data.recommended_version = map['recommendedVersion']
        data.encryption_key = map['encryptionKey']
        data.pipeline_provisioning = map['pipelineProvisioning']
        return data
      end
    end

    # Operation Parser for CreateServiceTemplateVersion
    class CreateServiceTemplateVersion
      def self.parse(http_resp)
        data = Types::CreateServiceTemplateVersionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.service_template_version = (ServiceTemplateVersion.parse(map['serviceTemplateVersion']) unless map['serviceTemplateVersion'].nil?)
        data
      end
    end

    class ServiceTemplateVersion
      def self.parse(map)
        data = Types::ServiceTemplateVersion.new
        data.template_name = map['templateName']
        data.major_version = map['majorVersion']
        data.minor_version = map['minorVersion']
        data.recommended_minor_version = map['recommendedMinorVersion']
        data.status = map['status']
        data.status_message = map['statusMessage']
        data.description = map['description']
        data.arn = map['arn']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.last_modified_at = Time.at(map['lastModifiedAt'].to_i) if map['lastModifiedAt']
        data.compatible_environment_templates = (CompatibleEnvironmentTemplateList.parse(map['compatibleEnvironmentTemplates']) unless map['compatibleEnvironmentTemplates'].nil?)
        data.schema = map['schema']
        data.supported_component_sources = (ServiceTemplateSupportedComponentSourceInputList.parse(map['supportedComponentSources']) unless map['supportedComponentSources'].nil?)
        return data
      end
    end

    class ServiceTemplateSupportedComponentSourceInputList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class CompatibleEnvironmentTemplateList
      def self.parse(list)
        list.map do |value|
          CompatibleEnvironmentTemplate.parse(value) unless value.nil?
        end
      end
    end

    class CompatibleEnvironmentTemplate
      def self.parse(map)
        data = Types::CompatibleEnvironmentTemplate.new
        data.template_name = map['templateName']
        data.major_version = map['majorVersion']
        return data
      end
    end

    # Operation Parser for CreateTemplateSyncConfig
    class CreateTemplateSyncConfig
      def self.parse(http_resp)
        data = Types::CreateTemplateSyncConfigOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.template_sync_config = (TemplateSyncConfig.parse(map['templateSyncConfig']) unless map['templateSyncConfig'].nil?)
        data
      end
    end

    class TemplateSyncConfig
      def self.parse(map)
        data = Types::TemplateSyncConfig.new
        data.template_name = map['templateName']
        data.template_type = map['templateType']
        data.repository_provider = map['repositoryProvider']
        data.repository_name = map['repositoryName']
        data.branch = map['branch']
        data.subdirectory = map['subdirectory']
        return data
      end
    end

    # Operation Parser for DeleteComponent
    class DeleteComponent
      def self.parse(http_resp)
        data = Types::DeleteComponentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.component = (Component.parse(map['component']) unless map['component'].nil?)
        data
      end
    end

    # Operation Parser for DeleteEnvironment
    class DeleteEnvironment
      def self.parse(http_resp)
        data = Types::DeleteEnvironmentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.environment = (Environment.parse(map['environment']) unless map['environment'].nil?)
        data
      end
    end

    # Operation Parser for DeleteEnvironmentAccountConnection
    class DeleteEnvironmentAccountConnection
      def self.parse(http_resp)
        data = Types::DeleteEnvironmentAccountConnectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.environment_account_connection = (EnvironmentAccountConnection.parse(map['environmentAccountConnection']) unless map['environmentAccountConnection'].nil?)
        data
      end
    end

    # Operation Parser for DeleteEnvironmentTemplate
    class DeleteEnvironmentTemplate
      def self.parse(http_resp)
        data = Types::DeleteEnvironmentTemplateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.environment_template = (EnvironmentTemplate.parse(map['environmentTemplate']) unless map['environmentTemplate'].nil?)
        data
      end
    end

    # Operation Parser for DeleteEnvironmentTemplateVersion
    class DeleteEnvironmentTemplateVersion
      def self.parse(http_resp)
        data = Types::DeleteEnvironmentTemplateVersionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.environment_template_version = (EnvironmentTemplateVersion.parse(map['environmentTemplateVersion']) unless map['environmentTemplateVersion'].nil?)
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
        data.repository = (Repository.parse(map['repository']) unless map['repository'].nil?)
        data
      end
    end

    # Operation Parser for DeleteService
    class DeleteService
      def self.parse(http_resp)
        data = Types::DeleteServiceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.service = (Service.parse(map['service']) unless map['service'].nil?)
        data
      end
    end

    # Operation Parser for DeleteServiceTemplate
    class DeleteServiceTemplate
      def self.parse(http_resp)
        data = Types::DeleteServiceTemplateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.service_template = (ServiceTemplate.parse(map['serviceTemplate']) unless map['serviceTemplate'].nil?)
        data
      end
    end

    # Operation Parser for DeleteServiceTemplateVersion
    class DeleteServiceTemplateVersion
      def self.parse(http_resp)
        data = Types::DeleteServiceTemplateVersionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.service_template_version = (ServiceTemplateVersion.parse(map['serviceTemplateVersion']) unless map['serviceTemplateVersion'].nil?)
        data
      end
    end

    # Operation Parser for DeleteTemplateSyncConfig
    class DeleteTemplateSyncConfig
      def self.parse(http_resp)
        data = Types::DeleteTemplateSyncConfigOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.template_sync_config = (TemplateSyncConfig.parse(map['templateSyncConfig']) unless map['templateSyncConfig'].nil?)
        data
      end
    end

    # Operation Parser for GetAccountSettings
    class GetAccountSettings
      def self.parse(http_resp)
        data = Types::GetAccountSettingsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.account_settings = (AccountSettings.parse(map['accountSettings']) unless map['accountSettings'].nil?)
        data
      end
    end

    class AccountSettings
      def self.parse(map)
        data = Types::AccountSettings.new
        data.pipeline_service_role_arn = map['pipelineServiceRoleArn']
        data.pipeline_provisioning_repository = (RepositoryBranch.parse(map['pipelineProvisioningRepository']) unless map['pipelineProvisioningRepository'].nil?)
        return data
      end
    end

    # Operation Parser for GetComponent
    class GetComponent
      def self.parse(http_resp)
        data = Types::GetComponentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.component = (Component.parse(map['component']) unless map['component'].nil?)
        data
      end
    end

    # Operation Parser for GetEnvironment
    class GetEnvironment
      def self.parse(http_resp)
        data = Types::GetEnvironmentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.environment = (Environment.parse(map['environment']) unless map['environment'].nil?)
        data
      end
    end

    # Operation Parser for GetEnvironmentAccountConnection
    class GetEnvironmentAccountConnection
      def self.parse(http_resp)
        data = Types::GetEnvironmentAccountConnectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.environment_account_connection = (EnvironmentAccountConnection.parse(map['environmentAccountConnection']) unless map['environmentAccountConnection'].nil?)
        data
      end
    end

    # Operation Parser for GetEnvironmentTemplate
    class GetEnvironmentTemplate
      def self.parse(http_resp)
        data = Types::GetEnvironmentTemplateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.environment_template = (EnvironmentTemplate.parse(map['environmentTemplate']) unless map['environmentTemplate'].nil?)
        data
      end
    end

    # Operation Parser for GetEnvironmentTemplateVersion
    class GetEnvironmentTemplateVersion
      def self.parse(http_resp)
        data = Types::GetEnvironmentTemplateVersionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.environment_template_version = (EnvironmentTemplateVersion.parse(map['environmentTemplateVersion']) unless map['environmentTemplateVersion'].nil?)
        data
      end
    end

    # Operation Parser for GetRepository
    class GetRepository
      def self.parse(http_resp)
        data = Types::GetRepositoryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.repository = (Repository.parse(map['repository']) unless map['repository'].nil?)
        data
      end
    end

    # Operation Parser for GetRepositorySyncStatus
    class GetRepositorySyncStatus
      def self.parse(http_resp)
        data = Types::GetRepositorySyncStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.latest_sync = (RepositorySyncAttempt.parse(map['latestSync']) unless map['latestSync'].nil?)
        data
      end
    end

    class RepositorySyncAttempt
      def self.parse(map)
        data = Types::RepositorySyncAttempt.new
        data.started_at = Time.at(map['startedAt'].to_i) if map['startedAt']
        data.status = map['status']
        data.events = (RepositorySyncEvents.parse(map['events']) unless map['events'].nil?)
        return data
      end
    end

    class RepositorySyncEvents
      def self.parse(list)
        list.map do |value|
          RepositorySyncEvent.parse(value) unless value.nil?
        end
      end
    end

    class RepositorySyncEvent
      def self.parse(map)
        data = Types::RepositorySyncEvent.new
        data.type = map['type']
        data.external_id = map['externalId']
        data.time = Time.at(map['time'].to_i) if map['time']
        data.event = map['event']
        return data
      end
    end

    # Operation Parser for GetService
    class GetService
      def self.parse(http_resp)
        data = Types::GetServiceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.service = (Service.parse(map['service']) unless map['service'].nil?)
        data
      end
    end

    # Operation Parser for GetServiceInstance
    class GetServiceInstance
      def self.parse(http_resp)
        data = Types::GetServiceInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.service_instance = (ServiceInstance.parse(map['serviceInstance']) unless map['serviceInstance'].nil?)
        data
      end
    end

    # Operation Parser for GetServiceTemplate
    class GetServiceTemplate
      def self.parse(http_resp)
        data = Types::GetServiceTemplateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.service_template = (ServiceTemplate.parse(map['serviceTemplate']) unless map['serviceTemplate'].nil?)
        data
      end
    end

    # Operation Parser for GetServiceTemplateVersion
    class GetServiceTemplateVersion
      def self.parse(http_resp)
        data = Types::GetServiceTemplateVersionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.service_template_version = (ServiceTemplateVersion.parse(map['serviceTemplateVersion']) unless map['serviceTemplateVersion'].nil?)
        data
      end
    end

    # Operation Parser for GetTemplateSyncConfig
    class GetTemplateSyncConfig
      def self.parse(http_resp)
        data = Types::GetTemplateSyncConfigOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.template_sync_config = (TemplateSyncConfig.parse(map['templateSyncConfig']) unless map['templateSyncConfig'].nil?)
        data
      end
    end

    # Operation Parser for GetTemplateSyncStatus
    class GetTemplateSyncStatus
      def self.parse(http_resp)
        data = Types::GetTemplateSyncStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.latest_sync = (ResourceSyncAttempt.parse(map['latestSync']) unless map['latestSync'].nil?)
        data.latest_successful_sync = (ResourceSyncAttempt.parse(map['latestSuccessfulSync']) unless map['latestSuccessfulSync'].nil?)
        data.desired_state = (Revision.parse(map['desiredState']) unless map['desiredState'].nil?)
        data
      end
    end

    class Revision
      def self.parse(map)
        data = Types::Revision.new
        data.repository_name = map['repositoryName']
        data.repository_provider = map['repositoryProvider']
        data.sha = map['sha']
        data.directory = map['directory']
        data.branch = map['branch']
        return data
      end
    end

    class ResourceSyncAttempt
      def self.parse(map)
        data = Types::ResourceSyncAttempt.new
        data.initial_revision = (Revision.parse(map['initialRevision']) unless map['initialRevision'].nil?)
        data.target_revision = (Revision.parse(map['targetRevision']) unless map['targetRevision'].nil?)
        data.target = map['target']
        data.started_at = Time.at(map['startedAt'].to_i) if map['startedAt']
        data.status = map['status']
        data.events = (ResourceSyncEvents.parse(map['events']) unless map['events'].nil?)
        return data
      end
    end

    class ResourceSyncEvents
      def self.parse(list)
        list.map do |value|
          ResourceSyncEvent.parse(value) unless value.nil?
        end
      end
    end

    class ResourceSyncEvent
      def self.parse(map)
        data = Types::ResourceSyncEvent.new
        data.type = map['type']
        data.external_id = map['externalId']
        data.time = Time.at(map['time'].to_i) if map['time']
        data.event = map['event']
        return data
      end
    end

    # Operation Parser for ListComponentOutputs
    class ListComponentOutputs
      def self.parse(http_resp)
        data = Types::ListComponentOutputsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['nextToken']
        data.outputs = (OutputsList.parse(map['outputs']) unless map['outputs'].nil?)
        data
      end
    end

    class OutputsList
      def self.parse(list)
        list.map do |value|
          Output.parse(value) unless value.nil?
        end
      end
    end

    class Output
      def self.parse(map)
        data = Types::Output.new
        data.key = map['key']
        data.value_string = map['valueString']
        return data
      end
    end

    # Operation Parser for ListComponentProvisionedResources
    class ListComponentProvisionedResources
      def self.parse(http_resp)
        data = Types::ListComponentProvisionedResourcesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['nextToken']
        data.provisioned_resources = (ProvisionedResourceList.parse(map['provisionedResources']) unless map['provisionedResources'].nil?)
        data
      end
    end

    class ProvisionedResourceList
      def self.parse(list)
        list.map do |value|
          ProvisionedResource.parse(value) unless value.nil?
        end
      end
    end

    class ProvisionedResource
      def self.parse(map)
        data = Types::ProvisionedResource.new
        data.name = map['name']
        data.identifier = map['identifier']
        data.provisioning_engine = map['provisioningEngine']
        return data
      end
    end

    # Operation Parser for ListComponents
    class ListComponents
      def self.parse(http_resp)
        data = Types::ListComponentsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['nextToken']
        data.components = (ComponentSummaryList.parse(map['components']) unless map['components'].nil?)
        data
      end
    end

    class ComponentSummaryList
      def self.parse(list)
        list.map do |value|
          ComponentSummary.parse(value) unless value.nil?
        end
      end
    end

    class ComponentSummary
      def self.parse(map)
        data = Types::ComponentSummary.new
        data.name = map['name']
        data.arn = map['arn']
        data.environment_name = map['environmentName']
        data.service_name = map['serviceName']
        data.service_instance_name = map['serviceInstanceName']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.last_modified_at = Time.at(map['lastModifiedAt'].to_i) if map['lastModifiedAt']
        data.last_deployment_attempted_at = Time.at(map['lastDeploymentAttemptedAt'].to_i) if map['lastDeploymentAttemptedAt']
        data.last_deployment_succeeded_at = Time.at(map['lastDeploymentSucceededAt'].to_i) if map['lastDeploymentSucceededAt']
        data.deployment_status = map['deploymentStatus']
        data.deployment_status_message = map['deploymentStatusMessage']
        return data
      end
    end

    # Operation Parser for ListEnvironmentAccountConnections
    class ListEnvironmentAccountConnections
      def self.parse(http_resp)
        data = Types::ListEnvironmentAccountConnectionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.environment_account_connections = (EnvironmentAccountConnectionSummaryList.parse(map['environmentAccountConnections']) unless map['environmentAccountConnections'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class EnvironmentAccountConnectionSummaryList
      def self.parse(list)
        list.map do |value|
          EnvironmentAccountConnectionSummary.parse(value) unless value.nil?
        end
      end
    end

    class EnvironmentAccountConnectionSummary
      def self.parse(map)
        data = Types::EnvironmentAccountConnectionSummary.new
        data.id = map['id']
        data.arn = map['arn']
        data.management_account_id = map['managementAccountId']
        data.environment_account_id = map['environmentAccountId']
        data.role_arn = map['roleArn']
        data.environment_name = map['environmentName']
        data.requested_at = Time.at(map['requestedAt'].to_i) if map['requestedAt']
        data.last_modified_at = Time.at(map['lastModifiedAt'].to_i) if map['lastModifiedAt']
        data.status = map['status']
        data.component_role_arn = map['componentRoleArn']
        return data
      end
    end

    # Operation Parser for ListEnvironmentOutputs
    class ListEnvironmentOutputs
      def self.parse(http_resp)
        data = Types::ListEnvironmentOutputsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['nextToken']
        data.outputs = (OutputsList.parse(map['outputs']) unless map['outputs'].nil?)
        data
      end
    end

    # Operation Parser for ListEnvironmentProvisionedResources
    class ListEnvironmentProvisionedResources
      def self.parse(http_resp)
        data = Types::ListEnvironmentProvisionedResourcesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['nextToken']
        data.provisioned_resources = (ProvisionedResourceList.parse(map['provisionedResources']) unless map['provisionedResources'].nil?)
        data
      end
    end

    # Operation Parser for ListEnvironmentTemplateVersions
    class ListEnvironmentTemplateVersions
      def self.parse(http_resp)
        data = Types::ListEnvironmentTemplateVersionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['nextToken']
        data.template_versions = (EnvironmentTemplateVersionSummaryList.parse(map['templateVersions']) unless map['templateVersions'].nil?)
        data
      end
    end

    class EnvironmentTemplateVersionSummaryList
      def self.parse(list)
        list.map do |value|
          EnvironmentTemplateVersionSummary.parse(value) unless value.nil?
        end
      end
    end

    class EnvironmentTemplateVersionSummary
      def self.parse(map)
        data = Types::EnvironmentTemplateVersionSummary.new
        data.template_name = map['templateName']
        data.major_version = map['majorVersion']
        data.minor_version = map['minorVersion']
        data.recommended_minor_version = map['recommendedMinorVersion']
        data.status = map['status']
        data.status_message = map['statusMessage']
        data.description = map['description']
        data.arn = map['arn']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.last_modified_at = Time.at(map['lastModifiedAt'].to_i) if map['lastModifiedAt']
        return data
      end
    end

    # Operation Parser for ListEnvironmentTemplates
    class ListEnvironmentTemplates
      def self.parse(http_resp)
        data = Types::ListEnvironmentTemplatesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['nextToken']
        data.templates = (EnvironmentTemplateSummaryList.parse(map['templates']) unless map['templates'].nil?)
        data
      end
    end

    class EnvironmentTemplateSummaryList
      def self.parse(list)
        list.map do |value|
          EnvironmentTemplateSummary.parse(value) unless value.nil?
        end
      end
    end

    class EnvironmentTemplateSummary
      def self.parse(map)
        data = Types::EnvironmentTemplateSummary.new
        data.name = map['name']
        data.arn = map['arn']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.last_modified_at = Time.at(map['lastModifiedAt'].to_i) if map['lastModifiedAt']
        data.display_name = map['displayName']
        data.description = map['description']
        data.recommended_version = map['recommendedVersion']
        data.provisioning = map['provisioning']
        return data
      end
    end

    # Operation Parser for ListEnvironments
    class ListEnvironments
      def self.parse(http_resp)
        data = Types::ListEnvironmentsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['nextToken']
        data.environments = (EnvironmentSummaryList.parse(map['environments']) unless map['environments'].nil?)
        data
      end
    end

    class EnvironmentSummaryList
      def self.parse(list)
        list.map do |value|
          EnvironmentSummary.parse(value) unless value.nil?
        end
      end
    end

    class EnvironmentSummary
      def self.parse(map)
        data = Types::EnvironmentSummary.new
        data.name = map['name']
        data.description = map['description']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.last_deployment_attempted_at = Time.at(map['lastDeploymentAttemptedAt'].to_i) if map['lastDeploymentAttemptedAt']
        data.last_deployment_succeeded_at = Time.at(map['lastDeploymentSucceededAt'].to_i) if map['lastDeploymentSucceededAt']
        data.arn = map['arn']
        data.template_name = map['templateName']
        data.template_major_version = map['templateMajorVersion']
        data.template_minor_version = map['templateMinorVersion']
        data.deployment_status = map['deploymentStatus']
        data.deployment_status_message = map['deploymentStatusMessage']
        data.proton_service_role_arn = map['protonServiceRoleArn']
        data.environment_account_connection_id = map['environmentAccountConnectionId']
        data.environment_account_id = map['environmentAccountId']
        data.provisioning = map['provisioning']
        data.component_role_arn = map['componentRoleArn']
        return data
      end
    end

    # Operation Parser for ListRepositories
    class ListRepositories
      def self.parse(http_resp)
        data = Types::ListRepositoriesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['nextToken']
        data.repositories = (RepositorySummaryList.parse(map['repositories']) unless map['repositories'].nil?)
        data
      end
    end

    class RepositorySummaryList
      def self.parse(list)
        list.map do |value|
          RepositorySummary.parse(value) unless value.nil?
        end
      end
    end

    class RepositorySummary
      def self.parse(map)
        data = Types::RepositorySummary.new
        data.arn = map['arn']
        data.provider = map['provider']
        data.name = map['name']
        return data
      end
    end

    # Operation Parser for ListRepositorySyncDefinitions
    class ListRepositorySyncDefinitions
      def self.parse(http_resp)
        data = Types::ListRepositorySyncDefinitionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['nextToken']
        data.sync_definitions = (RepositorySyncDefinitionList.parse(map['syncDefinitions']) unless map['syncDefinitions'].nil?)
        data
      end
    end

    class RepositorySyncDefinitionList
      def self.parse(list)
        list.map do |value|
          RepositorySyncDefinition.parse(value) unless value.nil?
        end
      end
    end

    class RepositorySyncDefinition
      def self.parse(map)
        data = Types::RepositorySyncDefinition.new
        data.target = map['target']
        data.parent = map['parent']
        data.branch = map['branch']
        data.directory = map['directory']
        return data
      end
    end

    # Operation Parser for ListServiceInstanceOutputs
    class ListServiceInstanceOutputs
      def self.parse(http_resp)
        data = Types::ListServiceInstanceOutputsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['nextToken']
        data.outputs = (OutputsList.parse(map['outputs']) unless map['outputs'].nil?)
        data
      end
    end

    # Operation Parser for ListServiceInstanceProvisionedResources
    class ListServiceInstanceProvisionedResources
      def self.parse(http_resp)
        data = Types::ListServiceInstanceProvisionedResourcesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['nextToken']
        data.provisioned_resources = (ProvisionedResourceList.parse(map['provisionedResources']) unless map['provisionedResources'].nil?)
        data
      end
    end

    # Operation Parser for ListServiceInstances
    class ListServiceInstances
      def self.parse(http_resp)
        data = Types::ListServiceInstancesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['nextToken']
        data.service_instances = (ServiceInstanceSummaryList.parse(map['serviceInstances']) unless map['serviceInstances'].nil?)
        data
      end
    end

    class ServiceInstanceSummaryList
      def self.parse(list)
        list.map do |value|
          ServiceInstanceSummary.parse(value) unless value.nil?
        end
      end
    end

    class ServiceInstanceSummary
      def self.parse(map)
        data = Types::ServiceInstanceSummary.new
        data.name = map['name']
        data.arn = map['arn']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.last_deployment_attempted_at = Time.at(map['lastDeploymentAttemptedAt'].to_i) if map['lastDeploymentAttemptedAt']
        data.last_deployment_succeeded_at = Time.at(map['lastDeploymentSucceededAt'].to_i) if map['lastDeploymentSucceededAt']
        data.service_name = map['serviceName']
        data.environment_name = map['environmentName']
        data.template_name = map['templateName']
        data.template_major_version = map['templateMajorVersion']
        data.template_minor_version = map['templateMinorVersion']
        data.deployment_status = map['deploymentStatus']
        data.deployment_status_message = map['deploymentStatusMessage']
        return data
      end
    end

    # Operation Parser for ListServicePipelineOutputs
    class ListServicePipelineOutputs
      def self.parse(http_resp)
        data = Types::ListServicePipelineOutputsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['nextToken']
        data.outputs = (OutputsList.parse(map['outputs']) unless map['outputs'].nil?)
        data
      end
    end

    # Operation Parser for ListServicePipelineProvisionedResources
    class ListServicePipelineProvisionedResources
      def self.parse(http_resp)
        data = Types::ListServicePipelineProvisionedResourcesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['nextToken']
        data.provisioned_resources = (ProvisionedResourceList.parse(map['provisionedResources']) unless map['provisionedResources'].nil?)
        data
      end
    end

    # Operation Parser for ListServiceTemplateVersions
    class ListServiceTemplateVersions
      def self.parse(http_resp)
        data = Types::ListServiceTemplateVersionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['nextToken']
        data.template_versions = (ServiceTemplateVersionSummaryList.parse(map['templateVersions']) unless map['templateVersions'].nil?)
        data
      end
    end

    class ServiceTemplateVersionSummaryList
      def self.parse(list)
        list.map do |value|
          ServiceTemplateVersionSummary.parse(value) unless value.nil?
        end
      end
    end

    class ServiceTemplateVersionSummary
      def self.parse(map)
        data = Types::ServiceTemplateVersionSummary.new
        data.template_name = map['templateName']
        data.major_version = map['majorVersion']
        data.minor_version = map['minorVersion']
        data.recommended_minor_version = map['recommendedMinorVersion']
        data.status = map['status']
        data.status_message = map['statusMessage']
        data.description = map['description']
        data.arn = map['arn']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.last_modified_at = Time.at(map['lastModifiedAt'].to_i) if map['lastModifiedAt']
        return data
      end
    end

    # Operation Parser for ListServiceTemplates
    class ListServiceTemplates
      def self.parse(http_resp)
        data = Types::ListServiceTemplatesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['nextToken']
        data.templates = (ServiceTemplateSummaryList.parse(map['templates']) unless map['templates'].nil?)
        data
      end
    end

    class ServiceTemplateSummaryList
      def self.parse(list)
        list.map do |value|
          ServiceTemplateSummary.parse(value) unless value.nil?
        end
      end
    end

    class ServiceTemplateSummary
      def self.parse(map)
        data = Types::ServiceTemplateSummary.new
        data.name = map['name']
        data.arn = map['arn']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.last_modified_at = Time.at(map['lastModifiedAt'].to_i) if map['lastModifiedAt']
        data.display_name = map['displayName']
        data.description = map['description']
        data.recommended_version = map['recommendedVersion']
        data.pipeline_provisioning = map['pipelineProvisioning']
        return data
      end
    end

    # Operation Parser for ListServices
    class ListServices
      def self.parse(http_resp)
        data = Types::ListServicesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['nextToken']
        data.services = (ServiceSummaryList.parse(map['services']) unless map['services'].nil?)
        data
      end
    end

    class ServiceSummaryList
      def self.parse(list)
        list.map do |value|
          ServiceSummary.parse(value) unless value.nil?
        end
      end
    end

    class ServiceSummary
      def self.parse(map)
        data = Types::ServiceSummary.new
        data.name = map['name']
        data.description = map['description']
        data.arn = map['arn']
        data.template_name = map['templateName']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.last_modified_at = Time.at(map['lastModifiedAt'].to_i) if map['lastModifiedAt']
        data.status = map['status']
        data.status_message = map['statusMessage']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tags = (TagList.parse(map['tags']) unless map['tags'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class TagList
      def self.parse(list)
        list.map do |value|
          Tag.parse(value) unless value.nil?
        end
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['key']
        data.value = map['value']
        return data
      end
    end

    # Operation Parser for NotifyResourceDeploymentStatusChange
    class NotifyResourceDeploymentStatusChange
      def self.parse(http_resp)
        data = Types::NotifyResourceDeploymentStatusChangeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for RejectEnvironmentAccountConnection
    class RejectEnvironmentAccountConnection
      def self.parse(http_resp)
        data = Types::RejectEnvironmentAccountConnectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.environment_account_connection = (EnvironmentAccountConnection.parse(map['environmentAccountConnection']) unless map['environmentAccountConnection'].nil?)
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

    # Operation Parser for UpdateAccountSettings
    class UpdateAccountSettings
      def self.parse(http_resp)
        data = Types::UpdateAccountSettingsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.account_settings = (AccountSettings.parse(map['accountSettings']) unless map['accountSettings'].nil?)
        data
      end
    end

    # Operation Parser for UpdateComponent
    class UpdateComponent
      def self.parse(http_resp)
        data = Types::UpdateComponentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.component = (Component.parse(map['component']) unless map['component'].nil?)
        data
      end
    end

    # Operation Parser for UpdateEnvironment
    class UpdateEnvironment
      def self.parse(http_resp)
        data = Types::UpdateEnvironmentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.environment = (Environment.parse(map['environment']) unless map['environment'].nil?)
        data
      end
    end

    # Operation Parser for UpdateEnvironmentAccountConnection
    class UpdateEnvironmentAccountConnection
      def self.parse(http_resp)
        data = Types::UpdateEnvironmentAccountConnectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.environment_account_connection = (EnvironmentAccountConnection.parse(map['environmentAccountConnection']) unless map['environmentAccountConnection'].nil?)
        data
      end
    end

    # Operation Parser for UpdateEnvironmentTemplate
    class UpdateEnvironmentTemplate
      def self.parse(http_resp)
        data = Types::UpdateEnvironmentTemplateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.environment_template = (EnvironmentTemplate.parse(map['environmentTemplate']) unless map['environmentTemplate'].nil?)
        data
      end
    end

    # Operation Parser for UpdateEnvironmentTemplateVersion
    class UpdateEnvironmentTemplateVersion
      def self.parse(http_resp)
        data = Types::UpdateEnvironmentTemplateVersionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.environment_template_version = (EnvironmentTemplateVersion.parse(map['environmentTemplateVersion']) unless map['environmentTemplateVersion'].nil?)
        data
      end
    end

    # Operation Parser for UpdateService
    class UpdateService
      def self.parse(http_resp)
        data = Types::UpdateServiceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.service = (Service.parse(map['service']) unless map['service'].nil?)
        data
      end
    end

    # Operation Parser for UpdateServiceInstance
    class UpdateServiceInstance
      def self.parse(http_resp)
        data = Types::UpdateServiceInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.service_instance = (ServiceInstance.parse(map['serviceInstance']) unless map['serviceInstance'].nil?)
        data
      end
    end

    # Operation Parser for UpdateServicePipeline
    class UpdateServicePipeline
      def self.parse(http_resp)
        data = Types::UpdateServicePipelineOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pipeline = (ServicePipeline.parse(map['pipeline']) unless map['pipeline'].nil?)
        data
      end
    end

    # Operation Parser for UpdateServiceTemplate
    class UpdateServiceTemplate
      def self.parse(http_resp)
        data = Types::UpdateServiceTemplateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.service_template = (ServiceTemplate.parse(map['serviceTemplate']) unless map['serviceTemplate'].nil?)
        data
      end
    end

    # Operation Parser for UpdateServiceTemplateVersion
    class UpdateServiceTemplateVersion
      def self.parse(http_resp)
        data = Types::UpdateServiceTemplateVersionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.service_template_version = (ServiceTemplateVersion.parse(map['serviceTemplateVersion']) unless map['serviceTemplateVersion'].nil?)
        data
      end
    end

    # Operation Parser for UpdateTemplateSyncConfig
    class UpdateTemplateSyncConfig
      def self.parse(http_resp)
        data = Types::UpdateTemplateSyncConfigOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.template_sync_config = (TemplateSyncConfig.parse(map['templateSyncConfig']) unless map['templateSyncConfig'].nil?)
        data
      end
    end
  end
end
