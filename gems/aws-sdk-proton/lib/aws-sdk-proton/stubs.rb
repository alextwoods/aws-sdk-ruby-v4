# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::Proton
  module Stubs

    # Operation Stubber for AcceptEnvironmentAccountConnection
    class AcceptEnvironmentAccountConnection
      def self.default(visited=[])
        {
          environment_account_connection: EnvironmentAccountConnection.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['environmentAccountConnection'] = EnvironmentAccountConnection.stub(stub[:environment_account_connection]) unless stub[:environment_account_connection].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for EnvironmentAccountConnection
    class EnvironmentAccountConnection
      def self.default(visited=[])
        return nil if visited.include?('EnvironmentAccountConnection')
        visited = visited + ['EnvironmentAccountConnection']
        {
          id: 'id',
          arn: 'arn',
          management_account_id: 'management_account_id',
          environment_account_id: 'environment_account_id',
          role_arn: 'role_arn',
          environment_name: 'environment_name',
          requested_at: Time.now,
          last_modified_at: Time.now,
          status: 'status',
          component_role_arn: 'component_role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::EnvironmentAccountConnection.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['managementAccountId'] = stub[:management_account_id] unless stub[:management_account_id].nil?
        data['environmentAccountId'] = stub[:environment_account_id] unless stub[:environment_account_id].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['environmentName'] = stub[:environment_name] unless stub[:environment_name].nil?
        data['requestedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:requested_at]).to_i unless stub[:requested_at].nil?
        data['lastModifiedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_at]).to_i unless stub[:last_modified_at].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['componentRoleArn'] = stub[:component_role_arn] unless stub[:component_role_arn].nil?
        data
      end
    end

    # Operation Stubber for CancelComponentDeployment
    class CancelComponentDeployment
      def self.default(visited=[])
        {
          component: Component.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['component'] = Component.stub(stub[:component]) unless stub[:component].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Component
    class Component
      def self.default(visited=[])
        return nil if visited.include?('Component')
        visited = visited + ['Component']
        {
          name: 'name',
          description: 'description',
          arn: 'arn',
          environment_name: 'environment_name',
          service_name: 'service_name',
          service_instance_name: 'service_instance_name',
          created_at: Time.now,
          last_modified_at: Time.now,
          last_deployment_attempted_at: Time.now,
          last_deployment_succeeded_at: Time.now,
          deployment_status: 'deployment_status',
          deployment_status_message: 'deployment_status_message',
          service_spec: 'service_spec',
        }
      end

      def self.stub(stub)
        stub ||= Types::Component.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['environmentName'] = stub[:environment_name] unless stub[:environment_name].nil?
        data['serviceName'] = stub[:service_name] unless stub[:service_name].nil?
        data['serviceInstanceName'] = stub[:service_instance_name] unless stub[:service_instance_name].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['lastModifiedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_at]).to_i unless stub[:last_modified_at].nil?
        data['lastDeploymentAttemptedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_deployment_attempted_at]).to_i unless stub[:last_deployment_attempted_at].nil?
        data['lastDeploymentSucceededAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_deployment_succeeded_at]).to_i unless stub[:last_deployment_succeeded_at].nil?
        data['deploymentStatus'] = stub[:deployment_status] unless stub[:deployment_status].nil?
        data['deploymentStatusMessage'] = stub[:deployment_status_message] unless stub[:deployment_status_message].nil?
        data['serviceSpec'] = stub[:service_spec] unless stub[:service_spec].nil?
        data
      end
    end

    # Operation Stubber for CancelEnvironmentDeployment
    class CancelEnvironmentDeployment
      def self.default(visited=[])
        {
          environment: Environment.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['environment'] = Environment.stub(stub[:environment]) unless stub[:environment].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Environment
    class Environment
      def self.default(visited=[])
        return nil if visited.include?('Environment')
        visited = visited + ['Environment']
        {
          name: 'name',
          description: 'description',
          created_at: Time.now,
          last_deployment_attempted_at: Time.now,
          last_deployment_succeeded_at: Time.now,
          arn: 'arn',
          template_name: 'template_name',
          template_major_version: 'template_major_version',
          template_minor_version: 'template_minor_version',
          deployment_status: 'deployment_status',
          deployment_status_message: 'deployment_status_message',
          proton_service_role_arn: 'proton_service_role_arn',
          environment_account_connection_id: 'environment_account_connection_id',
          environment_account_id: 'environment_account_id',
          spec: 'spec',
          provisioning: 'provisioning',
          provisioning_repository: RepositoryBranch.default(visited),
          component_role_arn: 'component_role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::Environment.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['lastDeploymentAttemptedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_deployment_attempted_at]).to_i unless stub[:last_deployment_attempted_at].nil?
        data['lastDeploymentSucceededAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_deployment_succeeded_at]).to_i unless stub[:last_deployment_succeeded_at].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['templateName'] = stub[:template_name] unless stub[:template_name].nil?
        data['templateMajorVersion'] = stub[:template_major_version] unless stub[:template_major_version].nil?
        data['templateMinorVersion'] = stub[:template_minor_version] unless stub[:template_minor_version].nil?
        data['deploymentStatus'] = stub[:deployment_status] unless stub[:deployment_status].nil?
        data['deploymentStatusMessage'] = stub[:deployment_status_message] unless stub[:deployment_status_message].nil?
        data['protonServiceRoleArn'] = stub[:proton_service_role_arn] unless stub[:proton_service_role_arn].nil?
        data['environmentAccountConnectionId'] = stub[:environment_account_connection_id] unless stub[:environment_account_connection_id].nil?
        data['environmentAccountId'] = stub[:environment_account_id] unless stub[:environment_account_id].nil?
        data['spec'] = stub[:spec] unless stub[:spec].nil?
        data['provisioning'] = stub[:provisioning] unless stub[:provisioning].nil?
        data['provisioningRepository'] = RepositoryBranch.stub(stub[:provisioning_repository]) unless stub[:provisioning_repository].nil?
        data['componentRoleArn'] = stub[:component_role_arn] unless stub[:component_role_arn].nil?
        data
      end
    end

    # Structure Stubber for RepositoryBranch
    class RepositoryBranch
      def self.default(visited=[])
        return nil if visited.include?('RepositoryBranch')
        visited = visited + ['RepositoryBranch']
        {
          arn: 'arn',
          provider: 'provider',
          name: 'name',
          branch: 'branch',
        }
      end

      def self.stub(stub)
        stub ||= Types::RepositoryBranch.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['provider'] = stub[:provider] unless stub[:provider].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['branch'] = stub[:branch] unless stub[:branch].nil?
        data
      end
    end

    # Operation Stubber for CancelServiceInstanceDeployment
    class CancelServiceInstanceDeployment
      def self.default(visited=[])
        {
          service_instance: ServiceInstance.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['serviceInstance'] = ServiceInstance.stub(stub[:service_instance]) unless stub[:service_instance].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ServiceInstance
    class ServiceInstance
      def self.default(visited=[])
        return nil if visited.include?('ServiceInstance')
        visited = visited + ['ServiceInstance']
        {
          name: 'name',
          arn: 'arn',
          created_at: Time.now,
          last_deployment_attempted_at: Time.now,
          last_deployment_succeeded_at: Time.now,
          service_name: 'service_name',
          environment_name: 'environment_name',
          template_name: 'template_name',
          template_major_version: 'template_major_version',
          template_minor_version: 'template_minor_version',
          deployment_status: 'deployment_status',
          deployment_status_message: 'deployment_status_message',
          spec: 'spec',
        }
      end

      def self.stub(stub)
        stub ||= Types::ServiceInstance.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['lastDeploymentAttemptedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_deployment_attempted_at]).to_i unless stub[:last_deployment_attempted_at].nil?
        data['lastDeploymentSucceededAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_deployment_succeeded_at]).to_i unless stub[:last_deployment_succeeded_at].nil?
        data['serviceName'] = stub[:service_name] unless stub[:service_name].nil?
        data['environmentName'] = stub[:environment_name] unless stub[:environment_name].nil?
        data['templateName'] = stub[:template_name] unless stub[:template_name].nil?
        data['templateMajorVersion'] = stub[:template_major_version] unless stub[:template_major_version].nil?
        data['templateMinorVersion'] = stub[:template_minor_version] unless stub[:template_minor_version].nil?
        data['deploymentStatus'] = stub[:deployment_status] unless stub[:deployment_status].nil?
        data['deploymentStatusMessage'] = stub[:deployment_status_message] unless stub[:deployment_status_message].nil?
        data['spec'] = stub[:spec] unless stub[:spec].nil?
        data
      end
    end

    # Operation Stubber for CancelServicePipelineDeployment
    class CancelServicePipelineDeployment
      def self.default(visited=[])
        {
          pipeline: ServicePipeline.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['pipeline'] = ServicePipeline.stub(stub[:pipeline]) unless stub[:pipeline].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ServicePipeline
    class ServicePipeline
      def self.default(visited=[])
        return nil if visited.include?('ServicePipeline')
        visited = visited + ['ServicePipeline']
        {
          arn: 'arn',
          created_at: Time.now,
          last_deployment_attempted_at: Time.now,
          last_deployment_succeeded_at: Time.now,
          template_name: 'template_name',
          template_major_version: 'template_major_version',
          template_minor_version: 'template_minor_version',
          deployment_status: 'deployment_status',
          deployment_status_message: 'deployment_status_message',
          spec: 'spec',
        }
      end

      def self.stub(stub)
        stub ||= Types::ServicePipeline.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['lastDeploymentAttemptedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_deployment_attempted_at]).to_i unless stub[:last_deployment_attempted_at].nil?
        data['lastDeploymentSucceededAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_deployment_succeeded_at]).to_i unless stub[:last_deployment_succeeded_at].nil?
        data['templateName'] = stub[:template_name] unless stub[:template_name].nil?
        data['templateMajorVersion'] = stub[:template_major_version] unless stub[:template_major_version].nil?
        data['templateMinorVersion'] = stub[:template_minor_version] unless stub[:template_minor_version].nil?
        data['deploymentStatus'] = stub[:deployment_status] unless stub[:deployment_status].nil?
        data['deploymentStatusMessage'] = stub[:deployment_status_message] unless stub[:deployment_status_message].nil?
        data['spec'] = stub[:spec] unless stub[:spec].nil?
        data
      end
    end

    # Operation Stubber for CreateComponent
    class CreateComponent
      def self.default(visited=[])
        {
          component: Component.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['component'] = Component.stub(stub[:component]) unless stub[:component].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateEnvironment
    class CreateEnvironment
      def self.default(visited=[])
        {
          environment: Environment.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['environment'] = Environment.stub(stub[:environment]) unless stub[:environment].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateEnvironmentAccountConnection
    class CreateEnvironmentAccountConnection
      def self.default(visited=[])
        {
          environment_account_connection: EnvironmentAccountConnection.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['environmentAccountConnection'] = EnvironmentAccountConnection.stub(stub[:environment_account_connection]) unless stub[:environment_account_connection].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateEnvironmentTemplate
    class CreateEnvironmentTemplate
      def self.default(visited=[])
        {
          environment_template: EnvironmentTemplate.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['environmentTemplate'] = EnvironmentTemplate.stub(stub[:environment_template]) unless stub[:environment_template].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for EnvironmentTemplate
    class EnvironmentTemplate
      def self.default(visited=[])
        return nil if visited.include?('EnvironmentTemplate')
        visited = visited + ['EnvironmentTemplate']
        {
          name: 'name',
          arn: 'arn',
          created_at: Time.now,
          last_modified_at: Time.now,
          display_name: 'display_name',
          description: 'description',
          recommended_version: 'recommended_version',
          encryption_key: 'encryption_key',
          provisioning: 'provisioning',
        }
      end

      def self.stub(stub)
        stub ||= Types::EnvironmentTemplate.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['lastModifiedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_at]).to_i unless stub[:last_modified_at].nil?
        data['displayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['recommendedVersion'] = stub[:recommended_version] unless stub[:recommended_version].nil?
        data['encryptionKey'] = stub[:encryption_key] unless stub[:encryption_key].nil?
        data['provisioning'] = stub[:provisioning] unless stub[:provisioning].nil?
        data
      end
    end

    # Operation Stubber for CreateEnvironmentTemplateVersion
    class CreateEnvironmentTemplateVersion
      def self.default(visited=[])
        {
          environment_template_version: EnvironmentTemplateVersion.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['environmentTemplateVersion'] = EnvironmentTemplateVersion.stub(stub[:environment_template_version]) unless stub[:environment_template_version].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for EnvironmentTemplateVersion
    class EnvironmentTemplateVersion
      def self.default(visited=[])
        return nil if visited.include?('EnvironmentTemplateVersion')
        visited = visited + ['EnvironmentTemplateVersion']
        {
          template_name: 'template_name',
          major_version: 'major_version',
          minor_version: 'minor_version',
          recommended_minor_version: 'recommended_minor_version',
          status: 'status',
          status_message: 'status_message',
          description: 'description',
          arn: 'arn',
          created_at: Time.now,
          last_modified_at: Time.now,
          schema: 'schema',
        }
      end

      def self.stub(stub)
        stub ||= Types::EnvironmentTemplateVersion.new
        data = {}
        data['templateName'] = stub[:template_name] unless stub[:template_name].nil?
        data['majorVersion'] = stub[:major_version] unless stub[:major_version].nil?
        data['minorVersion'] = stub[:minor_version] unless stub[:minor_version].nil?
        data['recommendedMinorVersion'] = stub[:recommended_minor_version] unless stub[:recommended_minor_version].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['statusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['lastModifiedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_at]).to_i unless stub[:last_modified_at].nil?
        data['schema'] = stub[:schema] unless stub[:schema].nil?
        data
      end
    end

    # Operation Stubber for CreateRepository
    class CreateRepository
      def self.default(visited=[])
        {
          repository: Repository.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['repository'] = Repository.stub(stub[:repository]) unless stub[:repository].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Repository
    class Repository
      def self.default(visited=[])
        return nil if visited.include?('Repository')
        visited = visited + ['Repository']
        {
          arn: 'arn',
          provider: 'provider',
          name: 'name',
          connection_arn: 'connection_arn',
          encryption_key: 'encryption_key',
        }
      end

      def self.stub(stub)
        stub ||= Types::Repository.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['provider'] = stub[:provider] unless stub[:provider].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['connectionArn'] = stub[:connection_arn] unless stub[:connection_arn].nil?
        data['encryptionKey'] = stub[:encryption_key] unless stub[:encryption_key].nil?
        data
      end
    end

    # Operation Stubber for CreateService
    class CreateService
      def self.default(visited=[])
        {
          service: Service.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['service'] = Service.stub(stub[:service]) unless stub[:service].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Service
    class Service
      def self.default(visited=[])
        return nil if visited.include?('Service')
        visited = visited + ['Service']
        {
          name: 'name',
          description: 'description',
          arn: 'arn',
          template_name: 'template_name',
          created_at: Time.now,
          last_modified_at: Time.now,
          status: 'status',
          status_message: 'status_message',
          spec: 'spec',
          pipeline: ServicePipeline.default(visited),
          repository_connection_arn: 'repository_connection_arn',
          repository_id: 'repository_id',
          branch_name: 'branch_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::Service.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['templateName'] = stub[:template_name] unless stub[:template_name].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['lastModifiedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_at]).to_i unless stub[:last_modified_at].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['statusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['spec'] = stub[:spec] unless stub[:spec].nil?
        data['pipeline'] = ServicePipeline.stub(stub[:pipeline]) unless stub[:pipeline].nil?
        data['repositoryConnectionArn'] = stub[:repository_connection_arn] unless stub[:repository_connection_arn].nil?
        data['repositoryId'] = stub[:repository_id] unless stub[:repository_id].nil?
        data['branchName'] = stub[:branch_name] unless stub[:branch_name].nil?
        data
      end
    end

    # Operation Stubber for CreateServiceTemplate
    class CreateServiceTemplate
      def self.default(visited=[])
        {
          service_template: ServiceTemplate.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['serviceTemplate'] = ServiceTemplate.stub(stub[:service_template]) unless stub[:service_template].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ServiceTemplate
    class ServiceTemplate
      def self.default(visited=[])
        return nil if visited.include?('ServiceTemplate')
        visited = visited + ['ServiceTemplate']
        {
          name: 'name',
          arn: 'arn',
          created_at: Time.now,
          last_modified_at: Time.now,
          display_name: 'display_name',
          description: 'description',
          recommended_version: 'recommended_version',
          encryption_key: 'encryption_key',
          pipeline_provisioning: 'pipeline_provisioning',
        }
      end

      def self.stub(stub)
        stub ||= Types::ServiceTemplate.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['lastModifiedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_at]).to_i unless stub[:last_modified_at].nil?
        data['displayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['recommendedVersion'] = stub[:recommended_version] unless stub[:recommended_version].nil?
        data['encryptionKey'] = stub[:encryption_key] unless stub[:encryption_key].nil?
        data['pipelineProvisioning'] = stub[:pipeline_provisioning] unless stub[:pipeline_provisioning].nil?
        data
      end
    end

    # Operation Stubber for CreateServiceTemplateVersion
    class CreateServiceTemplateVersion
      def self.default(visited=[])
        {
          service_template_version: ServiceTemplateVersion.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['serviceTemplateVersion'] = ServiceTemplateVersion.stub(stub[:service_template_version]) unless stub[:service_template_version].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ServiceTemplateVersion
    class ServiceTemplateVersion
      def self.default(visited=[])
        return nil if visited.include?('ServiceTemplateVersion')
        visited = visited + ['ServiceTemplateVersion']
        {
          template_name: 'template_name',
          major_version: 'major_version',
          minor_version: 'minor_version',
          recommended_minor_version: 'recommended_minor_version',
          status: 'status',
          status_message: 'status_message',
          description: 'description',
          arn: 'arn',
          created_at: Time.now,
          last_modified_at: Time.now,
          compatible_environment_templates: CompatibleEnvironmentTemplateList.default(visited),
          schema: 'schema',
          supported_component_sources: ServiceTemplateSupportedComponentSourceInputList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ServiceTemplateVersion.new
        data = {}
        data['templateName'] = stub[:template_name] unless stub[:template_name].nil?
        data['majorVersion'] = stub[:major_version] unless stub[:major_version].nil?
        data['minorVersion'] = stub[:minor_version] unless stub[:minor_version].nil?
        data['recommendedMinorVersion'] = stub[:recommended_minor_version] unless stub[:recommended_minor_version].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['statusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['lastModifiedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_at]).to_i unless stub[:last_modified_at].nil?
        data['compatibleEnvironmentTemplates'] = CompatibleEnvironmentTemplateList.stub(stub[:compatible_environment_templates]) unless stub[:compatible_environment_templates].nil?
        data['schema'] = stub[:schema] unless stub[:schema].nil?
        data['supportedComponentSources'] = ServiceTemplateSupportedComponentSourceInputList.stub(stub[:supported_component_sources]) unless stub[:supported_component_sources].nil?
        data
      end
    end

    # List Stubber for ServiceTemplateSupportedComponentSourceInputList
    class ServiceTemplateSupportedComponentSourceInputList
      def self.default(visited=[])
        return nil if visited.include?('ServiceTemplateSupportedComponentSourceInputList')
        visited = visited + ['ServiceTemplateSupportedComponentSourceInputList']
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

    # List Stubber for CompatibleEnvironmentTemplateList
    class CompatibleEnvironmentTemplateList
      def self.default(visited=[])
        return nil if visited.include?('CompatibleEnvironmentTemplateList')
        visited = visited + ['CompatibleEnvironmentTemplateList']
        [
          CompatibleEnvironmentTemplate.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CompatibleEnvironmentTemplate.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CompatibleEnvironmentTemplate
    class CompatibleEnvironmentTemplate
      def self.default(visited=[])
        return nil if visited.include?('CompatibleEnvironmentTemplate')
        visited = visited + ['CompatibleEnvironmentTemplate']
        {
          template_name: 'template_name',
          major_version: 'major_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::CompatibleEnvironmentTemplate.new
        data = {}
        data['templateName'] = stub[:template_name] unless stub[:template_name].nil?
        data['majorVersion'] = stub[:major_version] unless stub[:major_version].nil?
        data
      end
    end

    # Operation Stubber for CreateTemplateSyncConfig
    class CreateTemplateSyncConfig
      def self.default(visited=[])
        {
          template_sync_config: TemplateSyncConfig.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['templateSyncConfig'] = TemplateSyncConfig.stub(stub[:template_sync_config]) unless stub[:template_sync_config].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for TemplateSyncConfig
    class TemplateSyncConfig
      def self.default(visited=[])
        return nil if visited.include?('TemplateSyncConfig')
        visited = visited + ['TemplateSyncConfig']
        {
          template_name: 'template_name',
          template_type: 'template_type',
          repository_provider: 'repository_provider',
          repository_name: 'repository_name',
          branch: 'branch',
          subdirectory: 'subdirectory',
        }
      end

      def self.stub(stub)
        stub ||= Types::TemplateSyncConfig.new
        data = {}
        data['templateName'] = stub[:template_name] unless stub[:template_name].nil?
        data['templateType'] = stub[:template_type] unless stub[:template_type].nil?
        data['repositoryProvider'] = stub[:repository_provider] unless stub[:repository_provider].nil?
        data['repositoryName'] = stub[:repository_name] unless stub[:repository_name].nil?
        data['branch'] = stub[:branch] unless stub[:branch].nil?
        data['subdirectory'] = stub[:subdirectory] unless stub[:subdirectory].nil?
        data
      end
    end

    # Operation Stubber for DeleteComponent
    class DeleteComponent
      def self.default(visited=[])
        {
          component: Component.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['component'] = Component.stub(stub[:component]) unless stub[:component].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteEnvironment
    class DeleteEnvironment
      def self.default(visited=[])
        {
          environment: Environment.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['environment'] = Environment.stub(stub[:environment]) unless stub[:environment].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteEnvironmentAccountConnection
    class DeleteEnvironmentAccountConnection
      def self.default(visited=[])
        {
          environment_account_connection: EnvironmentAccountConnection.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['environmentAccountConnection'] = EnvironmentAccountConnection.stub(stub[:environment_account_connection]) unless stub[:environment_account_connection].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteEnvironmentTemplate
    class DeleteEnvironmentTemplate
      def self.default(visited=[])
        {
          environment_template: EnvironmentTemplate.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['environmentTemplate'] = EnvironmentTemplate.stub(stub[:environment_template]) unless stub[:environment_template].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteEnvironmentTemplateVersion
    class DeleteEnvironmentTemplateVersion
      def self.default(visited=[])
        {
          environment_template_version: EnvironmentTemplateVersion.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['environmentTemplateVersion'] = EnvironmentTemplateVersion.stub(stub[:environment_template_version]) unless stub[:environment_template_version].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteRepository
    class DeleteRepository
      def self.default(visited=[])
        {
          repository: Repository.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['repository'] = Repository.stub(stub[:repository]) unless stub[:repository].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteService
    class DeleteService
      def self.default(visited=[])
        {
          service: Service.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['service'] = Service.stub(stub[:service]) unless stub[:service].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteServiceTemplate
    class DeleteServiceTemplate
      def self.default(visited=[])
        {
          service_template: ServiceTemplate.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['serviceTemplate'] = ServiceTemplate.stub(stub[:service_template]) unless stub[:service_template].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteServiceTemplateVersion
    class DeleteServiceTemplateVersion
      def self.default(visited=[])
        {
          service_template_version: ServiceTemplateVersion.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['serviceTemplateVersion'] = ServiceTemplateVersion.stub(stub[:service_template_version]) unless stub[:service_template_version].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteTemplateSyncConfig
    class DeleteTemplateSyncConfig
      def self.default(visited=[])
        {
          template_sync_config: TemplateSyncConfig.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['templateSyncConfig'] = TemplateSyncConfig.stub(stub[:template_sync_config]) unless stub[:template_sync_config].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetAccountSettings
    class GetAccountSettings
      def self.default(visited=[])
        {
          account_settings: AccountSettings.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['accountSettings'] = AccountSettings.stub(stub[:account_settings]) unless stub[:account_settings].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for AccountSettings
    class AccountSettings
      def self.default(visited=[])
        return nil if visited.include?('AccountSettings')
        visited = visited + ['AccountSettings']
        {
          pipeline_service_role_arn: 'pipeline_service_role_arn',
          pipeline_provisioning_repository: RepositoryBranch.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AccountSettings.new
        data = {}
        data['pipelineServiceRoleArn'] = stub[:pipeline_service_role_arn] unless stub[:pipeline_service_role_arn].nil?
        data['pipelineProvisioningRepository'] = RepositoryBranch.stub(stub[:pipeline_provisioning_repository]) unless stub[:pipeline_provisioning_repository].nil?
        data
      end
    end

    # Operation Stubber for GetComponent
    class GetComponent
      def self.default(visited=[])
        {
          component: Component.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['component'] = Component.stub(stub[:component]) unless stub[:component].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetEnvironment
    class GetEnvironment
      def self.default(visited=[])
        {
          environment: Environment.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['environment'] = Environment.stub(stub[:environment]) unless stub[:environment].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetEnvironmentAccountConnection
    class GetEnvironmentAccountConnection
      def self.default(visited=[])
        {
          environment_account_connection: EnvironmentAccountConnection.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['environmentAccountConnection'] = EnvironmentAccountConnection.stub(stub[:environment_account_connection]) unless stub[:environment_account_connection].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetEnvironmentTemplate
    class GetEnvironmentTemplate
      def self.default(visited=[])
        {
          environment_template: EnvironmentTemplate.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['environmentTemplate'] = EnvironmentTemplate.stub(stub[:environment_template]) unless stub[:environment_template].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetEnvironmentTemplateVersion
    class GetEnvironmentTemplateVersion
      def self.default(visited=[])
        {
          environment_template_version: EnvironmentTemplateVersion.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['environmentTemplateVersion'] = EnvironmentTemplateVersion.stub(stub[:environment_template_version]) unless stub[:environment_template_version].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetRepository
    class GetRepository
      def self.default(visited=[])
        {
          repository: Repository.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['repository'] = Repository.stub(stub[:repository]) unless stub[:repository].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetRepositorySyncStatus
    class GetRepositorySyncStatus
      def self.default(visited=[])
        {
          latest_sync: RepositorySyncAttempt.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['latestSync'] = RepositorySyncAttempt.stub(stub[:latest_sync]) unless stub[:latest_sync].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for RepositorySyncAttempt
    class RepositorySyncAttempt
      def self.default(visited=[])
        return nil if visited.include?('RepositorySyncAttempt')
        visited = visited + ['RepositorySyncAttempt']
        {
          started_at: Time.now,
          status: 'status',
          events: RepositorySyncEvents.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RepositorySyncAttempt.new
        data = {}
        data['startedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:started_at]).to_i unless stub[:started_at].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['events'] = RepositorySyncEvents.stub(stub[:events]) unless stub[:events].nil?
        data
      end
    end

    # List Stubber for RepositorySyncEvents
    class RepositorySyncEvents
      def self.default(visited=[])
        return nil if visited.include?('RepositorySyncEvents')
        visited = visited + ['RepositorySyncEvents']
        [
          RepositorySyncEvent.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RepositorySyncEvent.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RepositorySyncEvent
    class RepositorySyncEvent
      def self.default(visited=[])
        return nil if visited.include?('RepositorySyncEvent')
        visited = visited + ['RepositorySyncEvent']
        {
          type: 'type',
          external_id: 'external_id',
          time: Time.now,
          event: 'event',
        }
      end

      def self.stub(stub)
        stub ||= Types::RepositorySyncEvent.new
        data = {}
        data['type'] = stub[:type] unless stub[:type].nil?
        data['externalId'] = stub[:external_id] unless stub[:external_id].nil?
        data['time'] = Hearth::TimeHelper.to_epoch_seconds(stub[:time]).to_i unless stub[:time].nil?
        data['event'] = stub[:event] unless stub[:event].nil?
        data
      end
    end

    # Operation Stubber for GetService
    class GetService
      def self.default(visited=[])
        {
          service: Service.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['service'] = Service.stub(stub[:service]) unless stub[:service].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetServiceInstance
    class GetServiceInstance
      def self.default(visited=[])
        {
          service_instance: ServiceInstance.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['serviceInstance'] = ServiceInstance.stub(stub[:service_instance]) unless stub[:service_instance].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetServiceTemplate
    class GetServiceTemplate
      def self.default(visited=[])
        {
          service_template: ServiceTemplate.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['serviceTemplate'] = ServiceTemplate.stub(stub[:service_template]) unless stub[:service_template].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetServiceTemplateVersion
    class GetServiceTemplateVersion
      def self.default(visited=[])
        {
          service_template_version: ServiceTemplateVersion.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['serviceTemplateVersion'] = ServiceTemplateVersion.stub(stub[:service_template_version]) unless stub[:service_template_version].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetTemplateSyncConfig
    class GetTemplateSyncConfig
      def self.default(visited=[])
        {
          template_sync_config: TemplateSyncConfig.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['templateSyncConfig'] = TemplateSyncConfig.stub(stub[:template_sync_config]) unless stub[:template_sync_config].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetTemplateSyncStatus
    class GetTemplateSyncStatus
      def self.default(visited=[])
        {
          latest_sync: ResourceSyncAttempt.default(visited),
          latest_successful_sync: ResourceSyncAttempt.default(visited),
          desired_state: Revision.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['latestSync'] = ResourceSyncAttempt.stub(stub[:latest_sync]) unless stub[:latest_sync].nil?
        data['latestSuccessfulSync'] = ResourceSyncAttempt.stub(stub[:latest_successful_sync]) unless stub[:latest_successful_sync].nil?
        data['desiredState'] = Revision.stub(stub[:desired_state]) unless stub[:desired_state].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Revision
    class Revision
      def self.default(visited=[])
        return nil if visited.include?('Revision')
        visited = visited + ['Revision']
        {
          repository_name: 'repository_name',
          repository_provider: 'repository_provider',
          sha: 'sha',
          directory: 'directory',
          branch: 'branch',
        }
      end

      def self.stub(stub)
        stub ||= Types::Revision.new
        data = {}
        data['repositoryName'] = stub[:repository_name] unless stub[:repository_name].nil?
        data['repositoryProvider'] = stub[:repository_provider] unless stub[:repository_provider].nil?
        data['sha'] = stub[:sha] unless stub[:sha].nil?
        data['directory'] = stub[:directory] unless stub[:directory].nil?
        data['branch'] = stub[:branch] unless stub[:branch].nil?
        data
      end
    end

    # Structure Stubber for ResourceSyncAttempt
    class ResourceSyncAttempt
      def self.default(visited=[])
        return nil if visited.include?('ResourceSyncAttempt')
        visited = visited + ['ResourceSyncAttempt']
        {
          initial_revision: Revision.default(visited),
          target_revision: Revision.default(visited),
          target: 'target',
          started_at: Time.now,
          status: 'status',
          events: ResourceSyncEvents.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceSyncAttempt.new
        data = {}
        data['initialRevision'] = Revision.stub(stub[:initial_revision]) unless stub[:initial_revision].nil?
        data['targetRevision'] = Revision.stub(stub[:target_revision]) unless stub[:target_revision].nil?
        data['target'] = stub[:target] unless stub[:target].nil?
        data['startedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:started_at]).to_i unless stub[:started_at].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['events'] = ResourceSyncEvents.stub(stub[:events]) unless stub[:events].nil?
        data
      end
    end

    # List Stubber for ResourceSyncEvents
    class ResourceSyncEvents
      def self.default(visited=[])
        return nil if visited.include?('ResourceSyncEvents')
        visited = visited + ['ResourceSyncEvents']
        [
          ResourceSyncEvent.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ResourceSyncEvent.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResourceSyncEvent
    class ResourceSyncEvent
      def self.default(visited=[])
        return nil if visited.include?('ResourceSyncEvent')
        visited = visited + ['ResourceSyncEvent']
        {
          type: 'type',
          external_id: 'external_id',
          time: Time.now,
          event: 'event',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceSyncEvent.new
        data = {}
        data['type'] = stub[:type] unless stub[:type].nil?
        data['externalId'] = stub[:external_id] unless stub[:external_id].nil?
        data['time'] = Hearth::TimeHelper.to_epoch_seconds(stub[:time]).to_i unless stub[:time].nil?
        data['event'] = stub[:event] unless stub[:event].nil?
        data
      end
    end

    # Operation Stubber for ListComponentOutputs
    class ListComponentOutputs
      def self.default(visited=[])
        {
          next_token: 'next_token',
          outputs: OutputsList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['outputs'] = OutputsList.stub(stub[:outputs]) unless stub[:outputs].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for OutputsList
    class OutputsList
      def self.default(visited=[])
        return nil if visited.include?('OutputsList')
        visited = visited + ['OutputsList']
        [
          Output.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Output.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Output
    class Output
      def self.default(visited=[])
        return nil if visited.include?('Output')
        visited = visited + ['Output']
        {
          key: 'key',
          value_string: 'value_string',
        }
      end

      def self.stub(stub)
        stub ||= Types::Output.new
        data = {}
        data['key'] = stub[:key] unless stub[:key].nil?
        data['valueString'] = stub[:value_string] unless stub[:value_string].nil?
        data
      end
    end

    # Operation Stubber for ListComponentProvisionedResources
    class ListComponentProvisionedResources
      def self.default(visited=[])
        {
          next_token: 'next_token',
          provisioned_resources: ProvisionedResourceList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['provisionedResources'] = ProvisionedResourceList.stub(stub[:provisioned_resources]) unless stub[:provisioned_resources].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ProvisionedResourceList
    class ProvisionedResourceList
      def self.default(visited=[])
        return nil if visited.include?('ProvisionedResourceList')
        visited = visited + ['ProvisionedResourceList']
        [
          ProvisionedResource.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ProvisionedResource.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ProvisionedResource
    class ProvisionedResource
      def self.default(visited=[])
        return nil if visited.include?('ProvisionedResource')
        visited = visited + ['ProvisionedResource']
        {
          name: 'name',
          identifier: 'identifier',
          provisioning_engine: 'provisioning_engine',
        }
      end

      def self.stub(stub)
        stub ||= Types::ProvisionedResource.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['identifier'] = stub[:identifier] unless stub[:identifier].nil?
        data['provisioningEngine'] = stub[:provisioning_engine] unless stub[:provisioning_engine].nil?
        data
      end
    end

    # Operation Stubber for ListComponents
    class ListComponents
      def self.default(visited=[])
        {
          next_token: 'next_token',
          components: ComponentSummaryList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['components'] = ComponentSummaryList.stub(stub[:components]) unless stub[:components].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ComponentSummaryList
    class ComponentSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ComponentSummaryList')
        visited = visited + ['ComponentSummaryList']
        [
          ComponentSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ComponentSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ComponentSummary
    class ComponentSummary
      def self.default(visited=[])
        return nil if visited.include?('ComponentSummary')
        visited = visited + ['ComponentSummary']
        {
          name: 'name',
          arn: 'arn',
          environment_name: 'environment_name',
          service_name: 'service_name',
          service_instance_name: 'service_instance_name',
          created_at: Time.now,
          last_modified_at: Time.now,
          last_deployment_attempted_at: Time.now,
          last_deployment_succeeded_at: Time.now,
          deployment_status: 'deployment_status',
          deployment_status_message: 'deployment_status_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::ComponentSummary.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['environmentName'] = stub[:environment_name] unless stub[:environment_name].nil?
        data['serviceName'] = stub[:service_name] unless stub[:service_name].nil?
        data['serviceInstanceName'] = stub[:service_instance_name] unless stub[:service_instance_name].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['lastModifiedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_at]).to_i unless stub[:last_modified_at].nil?
        data['lastDeploymentAttemptedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_deployment_attempted_at]).to_i unless stub[:last_deployment_attempted_at].nil?
        data['lastDeploymentSucceededAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_deployment_succeeded_at]).to_i unless stub[:last_deployment_succeeded_at].nil?
        data['deploymentStatus'] = stub[:deployment_status] unless stub[:deployment_status].nil?
        data['deploymentStatusMessage'] = stub[:deployment_status_message] unless stub[:deployment_status_message].nil?
        data
      end
    end

    # Operation Stubber for ListEnvironmentAccountConnections
    class ListEnvironmentAccountConnections
      def self.default(visited=[])
        {
          environment_account_connections: EnvironmentAccountConnectionSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['environmentAccountConnections'] = EnvironmentAccountConnectionSummaryList.stub(stub[:environment_account_connections]) unless stub[:environment_account_connections].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for EnvironmentAccountConnectionSummaryList
    class EnvironmentAccountConnectionSummaryList
      def self.default(visited=[])
        return nil if visited.include?('EnvironmentAccountConnectionSummaryList')
        visited = visited + ['EnvironmentAccountConnectionSummaryList']
        [
          EnvironmentAccountConnectionSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EnvironmentAccountConnectionSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EnvironmentAccountConnectionSummary
    class EnvironmentAccountConnectionSummary
      def self.default(visited=[])
        return nil if visited.include?('EnvironmentAccountConnectionSummary')
        visited = visited + ['EnvironmentAccountConnectionSummary']
        {
          id: 'id',
          arn: 'arn',
          management_account_id: 'management_account_id',
          environment_account_id: 'environment_account_id',
          role_arn: 'role_arn',
          environment_name: 'environment_name',
          requested_at: Time.now,
          last_modified_at: Time.now,
          status: 'status',
          component_role_arn: 'component_role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::EnvironmentAccountConnectionSummary.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['managementAccountId'] = stub[:management_account_id] unless stub[:management_account_id].nil?
        data['environmentAccountId'] = stub[:environment_account_id] unless stub[:environment_account_id].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['environmentName'] = stub[:environment_name] unless stub[:environment_name].nil?
        data['requestedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:requested_at]).to_i unless stub[:requested_at].nil?
        data['lastModifiedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_at]).to_i unless stub[:last_modified_at].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['componentRoleArn'] = stub[:component_role_arn] unless stub[:component_role_arn].nil?
        data
      end
    end

    # Operation Stubber for ListEnvironmentOutputs
    class ListEnvironmentOutputs
      def self.default(visited=[])
        {
          next_token: 'next_token',
          outputs: OutputsList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['outputs'] = OutputsList.stub(stub[:outputs]) unless stub[:outputs].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListEnvironmentProvisionedResources
    class ListEnvironmentProvisionedResources
      def self.default(visited=[])
        {
          next_token: 'next_token',
          provisioned_resources: ProvisionedResourceList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['provisionedResources'] = ProvisionedResourceList.stub(stub[:provisioned_resources]) unless stub[:provisioned_resources].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListEnvironmentTemplateVersions
    class ListEnvironmentTemplateVersions
      def self.default(visited=[])
        {
          next_token: 'next_token',
          template_versions: EnvironmentTemplateVersionSummaryList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['templateVersions'] = EnvironmentTemplateVersionSummaryList.stub(stub[:template_versions]) unless stub[:template_versions].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for EnvironmentTemplateVersionSummaryList
    class EnvironmentTemplateVersionSummaryList
      def self.default(visited=[])
        return nil if visited.include?('EnvironmentTemplateVersionSummaryList')
        visited = visited + ['EnvironmentTemplateVersionSummaryList']
        [
          EnvironmentTemplateVersionSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EnvironmentTemplateVersionSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EnvironmentTemplateVersionSummary
    class EnvironmentTemplateVersionSummary
      def self.default(visited=[])
        return nil if visited.include?('EnvironmentTemplateVersionSummary')
        visited = visited + ['EnvironmentTemplateVersionSummary']
        {
          template_name: 'template_name',
          major_version: 'major_version',
          minor_version: 'minor_version',
          recommended_minor_version: 'recommended_minor_version',
          status: 'status',
          status_message: 'status_message',
          description: 'description',
          arn: 'arn',
          created_at: Time.now,
          last_modified_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::EnvironmentTemplateVersionSummary.new
        data = {}
        data['templateName'] = stub[:template_name] unless stub[:template_name].nil?
        data['majorVersion'] = stub[:major_version] unless stub[:major_version].nil?
        data['minorVersion'] = stub[:minor_version] unless stub[:minor_version].nil?
        data['recommendedMinorVersion'] = stub[:recommended_minor_version] unless stub[:recommended_minor_version].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['statusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['lastModifiedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_at]).to_i unless stub[:last_modified_at].nil?
        data
      end
    end

    # Operation Stubber for ListEnvironmentTemplates
    class ListEnvironmentTemplates
      def self.default(visited=[])
        {
          next_token: 'next_token',
          templates: EnvironmentTemplateSummaryList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['templates'] = EnvironmentTemplateSummaryList.stub(stub[:templates]) unless stub[:templates].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for EnvironmentTemplateSummaryList
    class EnvironmentTemplateSummaryList
      def self.default(visited=[])
        return nil if visited.include?('EnvironmentTemplateSummaryList')
        visited = visited + ['EnvironmentTemplateSummaryList']
        [
          EnvironmentTemplateSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EnvironmentTemplateSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EnvironmentTemplateSummary
    class EnvironmentTemplateSummary
      def self.default(visited=[])
        return nil if visited.include?('EnvironmentTemplateSummary')
        visited = visited + ['EnvironmentTemplateSummary']
        {
          name: 'name',
          arn: 'arn',
          created_at: Time.now,
          last_modified_at: Time.now,
          display_name: 'display_name',
          description: 'description',
          recommended_version: 'recommended_version',
          provisioning: 'provisioning',
        }
      end

      def self.stub(stub)
        stub ||= Types::EnvironmentTemplateSummary.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['lastModifiedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_at]).to_i unless stub[:last_modified_at].nil?
        data['displayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['recommendedVersion'] = stub[:recommended_version] unless stub[:recommended_version].nil?
        data['provisioning'] = stub[:provisioning] unless stub[:provisioning].nil?
        data
      end
    end

    # Operation Stubber for ListEnvironments
    class ListEnvironments
      def self.default(visited=[])
        {
          next_token: 'next_token',
          environments: EnvironmentSummaryList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['environments'] = EnvironmentSummaryList.stub(stub[:environments]) unless stub[:environments].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for EnvironmentSummaryList
    class EnvironmentSummaryList
      def self.default(visited=[])
        return nil if visited.include?('EnvironmentSummaryList')
        visited = visited + ['EnvironmentSummaryList']
        [
          EnvironmentSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EnvironmentSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EnvironmentSummary
    class EnvironmentSummary
      def self.default(visited=[])
        return nil if visited.include?('EnvironmentSummary')
        visited = visited + ['EnvironmentSummary']
        {
          name: 'name',
          description: 'description',
          created_at: Time.now,
          last_deployment_attempted_at: Time.now,
          last_deployment_succeeded_at: Time.now,
          arn: 'arn',
          template_name: 'template_name',
          template_major_version: 'template_major_version',
          template_minor_version: 'template_minor_version',
          deployment_status: 'deployment_status',
          deployment_status_message: 'deployment_status_message',
          proton_service_role_arn: 'proton_service_role_arn',
          environment_account_connection_id: 'environment_account_connection_id',
          environment_account_id: 'environment_account_id',
          provisioning: 'provisioning',
          component_role_arn: 'component_role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::EnvironmentSummary.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['lastDeploymentAttemptedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_deployment_attempted_at]).to_i unless stub[:last_deployment_attempted_at].nil?
        data['lastDeploymentSucceededAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_deployment_succeeded_at]).to_i unless stub[:last_deployment_succeeded_at].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['templateName'] = stub[:template_name] unless stub[:template_name].nil?
        data['templateMajorVersion'] = stub[:template_major_version] unless stub[:template_major_version].nil?
        data['templateMinorVersion'] = stub[:template_minor_version] unless stub[:template_minor_version].nil?
        data['deploymentStatus'] = stub[:deployment_status] unless stub[:deployment_status].nil?
        data['deploymentStatusMessage'] = stub[:deployment_status_message] unless stub[:deployment_status_message].nil?
        data['protonServiceRoleArn'] = stub[:proton_service_role_arn] unless stub[:proton_service_role_arn].nil?
        data['environmentAccountConnectionId'] = stub[:environment_account_connection_id] unless stub[:environment_account_connection_id].nil?
        data['environmentAccountId'] = stub[:environment_account_id] unless stub[:environment_account_id].nil?
        data['provisioning'] = stub[:provisioning] unless stub[:provisioning].nil?
        data['componentRoleArn'] = stub[:component_role_arn] unless stub[:component_role_arn].nil?
        data
      end
    end

    # Operation Stubber for ListRepositories
    class ListRepositories
      def self.default(visited=[])
        {
          next_token: 'next_token',
          repositories: RepositorySummaryList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['repositories'] = RepositorySummaryList.stub(stub[:repositories]) unless stub[:repositories].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for RepositorySummaryList
    class RepositorySummaryList
      def self.default(visited=[])
        return nil if visited.include?('RepositorySummaryList')
        visited = visited + ['RepositorySummaryList']
        [
          RepositorySummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RepositorySummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RepositorySummary
    class RepositorySummary
      def self.default(visited=[])
        return nil if visited.include?('RepositorySummary')
        visited = visited + ['RepositorySummary']
        {
          arn: 'arn',
          provider: 'provider',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::RepositorySummary.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['provider'] = stub[:provider] unless stub[:provider].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Operation Stubber for ListRepositorySyncDefinitions
    class ListRepositorySyncDefinitions
      def self.default(visited=[])
        {
          next_token: 'next_token',
          sync_definitions: RepositorySyncDefinitionList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['syncDefinitions'] = RepositorySyncDefinitionList.stub(stub[:sync_definitions]) unless stub[:sync_definitions].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for RepositorySyncDefinitionList
    class RepositorySyncDefinitionList
      def self.default(visited=[])
        return nil if visited.include?('RepositorySyncDefinitionList')
        visited = visited + ['RepositorySyncDefinitionList']
        [
          RepositorySyncDefinition.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RepositorySyncDefinition.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RepositorySyncDefinition
    class RepositorySyncDefinition
      def self.default(visited=[])
        return nil if visited.include?('RepositorySyncDefinition')
        visited = visited + ['RepositorySyncDefinition']
        {
          target: 'target',
          parent: 'parent',
          branch: 'branch',
          directory: 'directory',
        }
      end

      def self.stub(stub)
        stub ||= Types::RepositorySyncDefinition.new
        data = {}
        data['target'] = stub[:target] unless stub[:target].nil?
        data['parent'] = stub[:parent] unless stub[:parent].nil?
        data['branch'] = stub[:branch] unless stub[:branch].nil?
        data['directory'] = stub[:directory] unless stub[:directory].nil?
        data
      end
    end

    # Operation Stubber for ListServiceInstanceOutputs
    class ListServiceInstanceOutputs
      def self.default(visited=[])
        {
          next_token: 'next_token',
          outputs: OutputsList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['outputs'] = OutputsList.stub(stub[:outputs]) unless stub[:outputs].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListServiceInstanceProvisionedResources
    class ListServiceInstanceProvisionedResources
      def self.default(visited=[])
        {
          next_token: 'next_token',
          provisioned_resources: ProvisionedResourceList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['provisionedResources'] = ProvisionedResourceList.stub(stub[:provisioned_resources]) unless stub[:provisioned_resources].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListServiceInstances
    class ListServiceInstances
      def self.default(visited=[])
        {
          next_token: 'next_token',
          service_instances: ServiceInstanceSummaryList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['serviceInstances'] = ServiceInstanceSummaryList.stub(stub[:service_instances]) unless stub[:service_instances].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ServiceInstanceSummaryList
    class ServiceInstanceSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ServiceInstanceSummaryList')
        visited = visited + ['ServiceInstanceSummaryList']
        [
          ServiceInstanceSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ServiceInstanceSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ServiceInstanceSummary
    class ServiceInstanceSummary
      def self.default(visited=[])
        return nil if visited.include?('ServiceInstanceSummary')
        visited = visited + ['ServiceInstanceSummary']
        {
          name: 'name',
          arn: 'arn',
          created_at: Time.now,
          last_deployment_attempted_at: Time.now,
          last_deployment_succeeded_at: Time.now,
          service_name: 'service_name',
          environment_name: 'environment_name',
          template_name: 'template_name',
          template_major_version: 'template_major_version',
          template_minor_version: 'template_minor_version',
          deployment_status: 'deployment_status',
          deployment_status_message: 'deployment_status_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::ServiceInstanceSummary.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['lastDeploymentAttemptedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_deployment_attempted_at]).to_i unless stub[:last_deployment_attempted_at].nil?
        data['lastDeploymentSucceededAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_deployment_succeeded_at]).to_i unless stub[:last_deployment_succeeded_at].nil?
        data['serviceName'] = stub[:service_name] unless stub[:service_name].nil?
        data['environmentName'] = stub[:environment_name] unless stub[:environment_name].nil?
        data['templateName'] = stub[:template_name] unless stub[:template_name].nil?
        data['templateMajorVersion'] = stub[:template_major_version] unless stub[:template_major_version].nil?
        data['templateMinorVersion'] = stub[:template_minor_version] unless stub[:template_minor_version].nil?
        data['deploymentStatus'] = stub[:deployment_status] unless stub[:deployment_status].nil?
        data['deploymentStatusMessage'] = stub[:deployment_status_message] unless stub[:deployment_status_message].nil?
        data
      end
    end

    # Operation Stubber for ListServicePipelineOutputs
    class ListServicePipelineOutputs
      def self.default(visited=[])
        {
          next_token: 'next_token',
          outputs: OutputsList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['outputs'] = OutputsList.stub(stub[:outputs]) unless stub[:outputs].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListServicePipelineProvisionedResources
    class ListServicePipelineProvisionedResources
      def self.default(visited=[])
        {
          next_token: 'next_token',
          provisioned_resources: ProvisionedResourceList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['provisionedResources'] = ProvisionedResourceList.stub(stub[:provisioned_resources]) unless stub[:provisioned_resources].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListServiceTemplateVersions
    class ListServiceTemplateVersions
      def self.default(visited=[])
        {
          next_token: 'next_token',
          template_versions: ServiceTemplateVersionSummaryList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['templateVersions'] = ServiceTemplateVersionSummaryList.stub(stub[:template_versions]) unless stub[:template_versions].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ServiceTemplateVersionSummaryList
    class ServiceTemplateVersionSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ServiceTemplateVersionSummaryList')
        visited = visited + ['ServiceTemplateVersionSummaryList']
        [
          ServiceTemplateVersionSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ServiceTemplateVersionSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ServiceTemplateVersionSummary
    class ServiceTemplateVersionSummary
      def self.default(visited=[])
        return nil if visited.include?('ServiceTemplateVersionSummary')
        visited = visited + ['ServiceTemplateVersionSummary']
        {
          template_name: 'template_name',
          major_version: 'major_version',
          minor_version: 'minor_version',
          recommended_minor_version: 'recommended_minor_version',
          status: 'status',
          status_message: 'status_message',
          description: 'description',
          arn: 'arn',
          created_at: Time.now,
          last_modified_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ServiceTemplateVersionSummary.new
        data = {}
        data['templateName'] = stub[:template_name] unless stub[:template_name].nil?
        data['majorVersion'] = stub[:major_version] unless stub[:major_version].nil?
        data['minorVersion'] = stub[:minor_version] unless stub[:minor_version].nil?
        data['recommendedMinorVersion'] = stub[:recommended_minor_version] unless stub[:recommended_minor_version].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['statusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['lastModifiedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_at]).to_i unless stub[:last_modified_at].nil?
        data
      end
    end

    # Operation Stubber for ListServiceTemplates
    class ListServiceTemplates
      def self.default(visited=[])
        {
          next_token: 'next_token',
          templates: ServiceTemplateSummaryList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['templates'] = ServiceTemplateSummaryList.stub(stub[:templates]) unless stub[:templates].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ServiceTemplateSummaryList
    class ServiceTemplateSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ServiceTemplateSummaryList')
        visited = visited + ['ServiceTemplateSummaryList']
        [
          ServiceTemplateSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ServiceTemplateSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ServiceTemplateSummary
    class ServiceTemplateSummary
      def self.default(visited=[])
        return nil if visited.include?('ServiceTemplateSummary')
        visited = visited + ['ServiceTemplateSummary']
        {
          name: 'name',
          arn: 'arn',
          created_at: Time.now,
          last_modified_at: Time.now,
          display_name: 'display_name',
          description: 'description',
          recommended_version: 'recommended_version',
          pipeline_provisioning: 'pipeline_provisioning',
        }
      end

      def self.stub(stub)
        stub ||= Types::ServiceTemplateSummary.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['lastModifiedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_at]).to_i unless stub[:last_modified_at].nil?
        data['displayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['recommendedVersion'] = stub[:recommended_version] unless stub[:recommended_version].nil?
        data['pipelineProvisioning'] = stub[:pipeline_provisioning] unless stub[:pipeline_provisioning].nil?
        data
      end
    end

    # Operation Stubber for ListServices
    class ListServices
      def self.default(visited=[])
        {
          next_token: 'next_token',
          services: ServiceSummaryList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['services'] = ServiceSummaryList.stub(stub[:services]) unless stub[:services].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ServiceSummaryList
    class ServiceSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ServiceSummaryList')
        visited = visited + ['ServiceSummaryList']
        [
          ServiceSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ServiceSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ServiceSummary
    class ServiceSummary
      def self.default(visited=[])
        return nil if visited.include?('ServiceSummary')
        visited = visited + ['ServiceSummary']
        {
          name: 'name',
          description: 'description',
          arn: 'arn',
          template_name: 'template_name',
          created_at: Time.now,
          last_modified_at: Time.now,
          status: 'status',
          status_message: 'status_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::ServiceSummary.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['templateName'] = stub[:template_name] unless stub[:template_name].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['lastModifiedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_at]).to_i unless stub[:last_modified_at].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['statusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Tag.stub(element) unless element.nil?
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
        data['key'] = stub[:key] unless stub[:key].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for NotifyResourceDeploymentStatusChange
    class NotifyResourceDeploymentStatusChange
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RejectEnvironmentAccountConnection
    class RejectEnvironmentAccountConnection
      def self.default(visited=[])
        {
          environment_account_connection: EnvironmentAccountConnection.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['environmentAccountConnection'] = EnvironmentAccountConnection.stub(stub[:environment_account_connection]) unless stub[:environment_account_connection].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateAccountSettings
    class UpdateAccountSettings
      def self.default(visited=[])
        {
          account_settings: AccountSettings.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['accountSettings'] = AccountSettings.stub(stub[:account_settings]) unless stub[:account_settings].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateComponent
    class UpdateComponent
      def self.default(visited=[])
        {
          component: Component.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['component'] = Component.stub(stub[:component]) unless stub[:component].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateEnvironment
    class UpdateEnvironment
      def self.default(visited=[])
        {
          environment: Environment.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['environment'] = Environment.stub(stub[:environment]) unless stub[:environment].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateEnvironmentAccountConnection
    class UpdateEnvironmentAccountConnection
      def self.default(visited=[])
        {
          environment_account_connection: EnvironmentAccountConnection.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['environmentAccountConnection'] = EnvironmentAccountConnection.stub(stub[:environment_account_connection]) unless stub[:environment_account_connection].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateEnvironmentTemplate
    class UpdateEnvironmentTemplate
      def self.default(visited=[])
        {
          environment_template: EnvironmentTemplate.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['environmentTemplate'] = EnvironmentTemplate.stub(stub[:environment_template]) unless stub[:environment_template].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateEnvironmentTemplateVersion
    class UpdateEnvironmentTemplateVersion
      def self.default(visited=[])
        {
          environment_template_version: EnvironmentTemplateVersion.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['environmentTemplateVersion'] = EnvironmentTemplateVersion.stub(stub[:environment_template_version]) unless stub[:environment_template_version].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateService
    class UpdateService
      def self.default(visited=[])
        {
          service: Service.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['service'] = Service.stub(stub[:service]) unless stub[:service].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateServiceInstance
    class UpdateServiceInstance
      def self.default(visited=[])
        {
          service_instance: ServiceInstance.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['serviceInstance'] = ServiceInstance.stub(stub[:service_instance]) unless stub[:service_instance].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateServicePipeline
    class UpdateServicePipeline
      def self.default(visited=[])
        {
          pipeline: ServicePipeline.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['pipeline'] = ServicePipeline.stub(stub[:pipeline]) unless stub[:pipeline].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateServiceTemplate
    class UpdateServiceTemplate
      def self.default(visited=[])
        {
          service_template: ServiceTemplate.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['serviceTemplate'] = ServiceTemplate.stub(stub[:service_template]) unless stub[:service_template].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateServiceTemplateVersion
    class UpdateServiceTemplateVersion
      def self.default(visited=[])
        {
          service_template_version: ServiceTemplateVersion.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['serviceTemplateVersion'] = ServiceTemplateVersion.stub(stub[:service_template_version]) unless stub[:service_template_version].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateTemplateSyncConfig
    class UpdateTemplateSyncConfig
      def self.default(visited=[])
        {
          template_sync_config: TemplateSyncConfig.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['templateSyncConfig'] = TemplateSyncConfig.stub(stub[:template_sync_config]) unless stub[:template_sync_config].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
