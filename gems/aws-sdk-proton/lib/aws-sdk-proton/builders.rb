# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::Proton
  module Builders

    # Operation Builder for AcceptEnvironmentAccountConnection
    class AcceptEnvironmentAccountConnection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.AcceptEnvironmentAccountConnection'
        data = {}
        data['id'] = input[:id] unless input[:id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CancelComponentDeployment
    class CancelComponentDeployment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.CancelComponentDeployment'
        data = {}
        data['componentName'] = input[:component_name] unless input[:component_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CancelEnvironmentDeployment
    class CancelEnvironmentDeployment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.CancelEnvironmentDeployment'
        data = {}
        data['environmentName'] = input[:environment_name] unless input[:environment_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CancelServiceInstanceDeployment
    class CancelServiceInstanceDeployment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.CancelServiceInstanceDeployment'
        data = {}
        data['serviceInstanceName'] = input[:service_instance_name] unless input[:service_instance_name].nil?
        data['serviceName'] = input[:service_name] unless input[:service_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CancelServicePipelineDeployment
    class CancelServicePipelineDeployment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.CancelServicePipelineDeployment'
        data = {}
        data['serviceName'] = input[:service_name] unless input[:service_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateComponent
    class CreateComponent
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.CreateComponent'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['serviceName'] = input[:service_name] unless input[:service_name].nil?
        data['serviceInstanceName'] = input[:service_instance_name] unless input[:service_instance_name].nil?
        data['environmentName'] = input[:environment_name] unless input[:environment_name].nil?
        data['templateFile'] = input[:template_file] unless input[:template_file].nil?
        data['manifest'] = input[:manifest] unless input[:manifest].nil?
        data['serviceSpec'] = input[:service_spec] unless input[:service_spec].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['key'] = input[:key] unless input[:key].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for CreateEnvironment
    class CreateEnvironment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.CreateEnvironment'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['templateName'] = input[:template_name] unless input[:template_name].nil?
        data['templateMajorVersion'] = input[:template_major_version] unless input[:template_major_version].nil?
        data['templateMinorVersion'] = input[:template_minor_version] unless input[:template_minor_version].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['spec'] = input[:spec] unless input[:spec].nil?
        data['protonServiceRoleArn'] = input[:proton_service_role_arn] unless input[:proton_service_role_arn].nil?
        data['environmentAccountConnectionId'] = input[:environment_account_connection_id] unless input[:environment_account_connection_id].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['provisioningRepository'] = Builders::RepositoryBranchInput.build(input[:provisioning_repository]) unless input[:provisioning_repository].nil?
        data['componentRoleArn'] = input[:component_role_arn] unless input[:component_role_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for RepositoryBranchInput
    class RepositoryBranchInput
      def self.build(input)
        data = {}
        data['provider'] = input[:provider] unless input[:provider].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['branch'] = input[:branch] unless input[:branch].nil?
        data
      end
    end

    # Operation Builder for CreateEnvironmentAccountConnection
    class CreateEnvironmentAccountConnection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.CreateEnvironmentAccountConnection'
        data = {}
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['managementAccountId'] = input[:management_account_id] unless input[:management_account_id].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['environmentName'] = input[:environment_name] unless input[:environment_name].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['componentRoleArn'] = input[:component_role_arn] unless input[:component_role_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateEnvironmentTemplate
    class CreateEnvironmentTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.CreateEnvironmentTemplate'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['displayName'] = input[:display_name] unless input[:display_name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['encryptionKey'] = input[:encryption_key] unless input[:encryption_key].nil?
        data['provisioning'] = input[:provisioning] unless input[:provisioning].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateEnvironmentTemplateVersion
    class CreateEnvironmentTemplateVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.CreateEnvironmentTemplateVersion'
        data = {}
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['templateName'] = input[:template_name] unless input[:template_name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['majorVersion'] = input[:major_version] unless input[:major_version].nil?
        data['source'] = Builders::TemplateVersionSourceInput.build(input[:source]) unless input[:source].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for TemplateVersionSourceInput
    class TemplateVersionSourceInput
      def self.build(input)
        data = {}
        case input
        when Types::TemplateVersionSourceInput::S3
          data['s3'] = (Builders::S3ObjectSource.build(input) unless input.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::TemplateVersionSourceInput"
        end

        data
      end
    end

    # Structure Builder for S3ObjectSource
    class S3ObjectSource
      def self.build(input)
        data = {}
        data['bucket'] = input[:bucket] unless input[:bucket].nil?
        data['key'] = input[:key] unless input[:key].nil?
        data
      end
    end

    # Operation Builder for CreateRepository
    class CreateRepository
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.CreateRepository'
        data = {}
        data['provider'] = input[:provider] unless input[:provider].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['connectionArn'] = input[:connection_arn] unless input[:connection_arn].nil?
        data['encryptionKey'] = input[:encryption_key] unless input[:encryption_key].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateService
    class CreateService
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.CreateService'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['templateName'] = input[:template_name] unless input[:template_name].nil?
        data['templateMajorVersion'] = input[:template_major_version] unless input[:template_major_version].nil?
        data['templateMinorVersion'] = input[:template_minor_version] unless input[:template_minor_version].nil?
        data['spec'] = input[:spec] unless input[:spec].nil?
        data['repositoryConnectionArn'] = input[:repository_connection_arn] unless input[:repository_connection_arn].nil?
        data['repositoryId'] = input[:repository_id] unless input[:repository_id].nil?
        data['branchName'] = input[:branch_name] unless input[:branch_name].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateServiceTemplate
    class CreateServiceTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.CreateServiceTemplate'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['displayName'] = input[:display_name] unless input[:display_name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['encryptionKey'] = input[:encryption_key] unless input[:encryption_key].nil?
        data['pipelineProvisioning'] = input[:pipeline_provisioning] unless input[:pipeline_provisioning].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateServiceTemplateVersion
    class CreateServiceTemplateVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.CreateServiceTemplateVersion'
        data = {}
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['templateName'] = input[:template_name] unless input[:template_name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['majorVersion'] = input[:major_version] unless input[:major_version].nil?
        data['source'] = Builders::TemplateVersionSourceInput.build(input[:source]) unless input[:source].nil?
        data['compatibleEnvironmentTemplates'] = Builders::CompatibleEnvironmentTemplateInputList.build(input[:compatible_environment_templates]) unless input[:compatible_environment_templates].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['supportedComponentSources'] = Builders::ServiceTemplateSupportedComponentSourceInputList.build(input[:supported_component_sources]) unless input[:supported_component_sources].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ServiceTemplateSupportedComponentSourceInputList
    class ServiceTemplateSupportedComponentSourceInputList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for CompatibleEnvironmentTemplateInputList
    class CompatibleEnvironmentTemplateInputList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::CompatibleEnvironmentTemplateInput.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CompatibleEnvironmentTemplateInput
    class CompatibleEnvironmentTemplateInput
      def self.build(input)
        data = {}
        data['templateName'] = input[:template_name] unless input[:template_name].nil?
        data['majorVersion'] = input[:major_version] unless input[:major_version].nil?
        data
      end
    end

    # Operation Builder for CreateTemplateSyncConfig
    class CreateTemplateSyncConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.CreateTemplateSyncConfig'
        data = {}
        data['templateName'] = input[:template_name] unless input[:template_name].nil?
        data['templateType'] = input[:template_type] unless input[:template_type].nil?
        data['repositoryProvider'] = input[:repository_provider] unless input[:repository_provider].nil?
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['branch'] = input[:branch] unless input[:branch].nil?
        data['subdirectory'] = input[:subdirectory] unless input[:subdirectory].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteComponent
    class DeleteComponent
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.DeleteComponent'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteEnvironment
    class DeleteEnvironment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.DeleteEnvironment'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteEnvironmentAccountConnection
    class DeleteEnvironmentAccountConnection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.DeleteEnvironmentAccountConnection'
        data = {}
        data['id'] = input[:id] unless input[:id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteEnvironmentTemplate
    class DeleteEnvironmentTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.DeleteEnvironmentTemplate'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteEnvironmentTemplateVersion
    class DeleteEnvironmentTemplateVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.DeleteEnvironmentTemplateVersion'
        data = {}
        data['templateName'] = input[:template_name] unless input[:template_name].nil?
        data['majorVersion'] = input[:major_version] unless input[:major_version].nil?
        data['minorVersion'] = input[:minor_version] unless input[:minor_version].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteRepository
    class DeleteRepository
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.DeleteRepository'
        data = {}
        data['provider'] = input[:provider] unless input[:provider].nil?
        data['name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteService
    class DeleteService
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.DeleteService'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteServiceTemplate
    class DeleteServiceTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.DeleteServiceTemplate'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteServiceTemplateVersion
    class DeleteServiceTemplateVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.DeleteServiceTemplateVersion'
        data = {}
        data['templateName'] = input[:template_name] unless input[:template_name].nil?
        data['majorVersion'] = input[:major_version] unless input[:major_version].nil?
        data['minorVersion'] = input[:minor_version] unless input[:minor_version].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteTemplateSyncConfig
    class DeleteTemplateSyncConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.DeleteTemplateSyncConfig'
        data = {}
        data['templateName'] = input[:template_name] unless input[:template_name].nil?
        data['templateType'] = input[:template_type] unless input[:template_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetAccountSettings
    class GetAccountSettings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.GetAccountSettings'
        data = {}
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetComponent
    class GetComponent
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.GetComponent'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetEnvironment
    class GetEnvironment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.GetEnvironment'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetEnvironmentAccountConnection
    class GetEnvironmentAccountConnection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.GetEnvironmentAccountConnection'
        data = {}
        data['id'] = input[:id] unless input[:id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetEnvironmentTemplate
    class GetEnvironmentTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.GetEnvironmentTemplate'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetEnvironmentTemplateVersion
    class GetEnvironmentTemplateVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.GetEnvironmentTemplateVersion'
        data = {}
        data['templateName'] = input[:template_name] unless input[:template_name].nil?
        data['majorVersion'] = input[:major_version] unless input[:major_version].nil?
        data['minorVersion'] = input[:minor_version] unless input[:minor_version].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetRepository
    class GetRepository
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.GetRepository'
        data = {}
        data['provider'] = input[:provider] unless input[:provider].nil?
        data['name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetRepositorySyncStatus
    class GetRepositorySyncStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.GetRepositorySyncStatus'
        data = {}
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['repositoryProvider'] = input[:repository_provider] unless input[:repository_provider].nil?
        data['branch'] = input[:branch] unless input[:branch].nil?
        data['syncType'] = input[:sync_type] unless input[:sync_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetService
    class GetService
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.GetService'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetServiceInstance
    class GetServiceInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.GetServiceInstance'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['serviceName'] = input[:service_name] unless input[:service_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetServiceTemplate
    class GetServiceTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.GetServiceTemplate'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetServiceTemplateVersion
    class GetServiceTemplateVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.GetServiceTemplateVersion'
        data = {}
        data['templateName'] = input[:template_name] unless input[:template_name].nil?
        data['majorVersion'] = input[:major_version] unless input[:major_version].nil?
        data['minorVersion'] = input[:minor_version] unless input[:minor_version].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetTemplateSyncConfig
    class GetTemplateSyncConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.GetTemplateSyncConfig'
        data = {}
        data['templateName'] = input[:template_name] unless input[:template_name].nil?
        data['templateType'] = input[:template_type] unless input[:template_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetTemplateSyncStatus
    class GetTemplateSyncStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.GetTemplateSyncStatus'
        data = {}
        data['templateName'] = input[:template_name] unless input[:template_name].nil?
        data['templateType'] = input[:template_type] unless input[:template_type].nil?
        data['templateVersion'] = input[:template_version] unless input[:template_version].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListComponentOutputs
    class ListComponentOutputs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.ListComponentOutputs'
        data = {}
        data['componentName'] = input[:component_name] unless input[:component_name].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListComponentProvisionedResources
    class ListComponentProvisionedResources
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.ListComponentProvisionedResources'
        data = {}
        data['componentName'] = input[:component_name] unless input[:component_name].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListComponents
    class ListComponents
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.ListComponents'
        data = {}
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['environmentName'] = input[:environment_name] unless input[:environment_name].nil?
        data['serviceName'] = input[:service_name] unless input[:service_name].nil?
        data['serviceInstanceName'] = input[:service_instance_name] unless input[:service_instance_name].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListEnvironmentAccountConnections
    class ListEnvironmentAccountConnections
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.ListEnvironmentAccountConnections'
        data = {}
        data['requestedBy'] = input[:requested_by] unless input[:requested_by].nil?
        data['environmentName'] = input[:environment_name] unless input[:environment_name].nil?
        data['statuses'] = Builders::EnvironmentAccountConnectionStatusList.build(input[:statuses]) unless input[:statuses].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for EnvironmentAccountConnectionStatusList
    class EnvironmentAccountConnectionStatusList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListEnvironmentOutputs
    class ListEnvironmentOutputs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.ListEnvironmentOutputs'
        data = {}
        data['environmentName'] = input[:environment_name] unless input[:environment_name].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListEnvironmentProvisionedResources
    class ListEnvironmentProvisionedResources
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.ListEnvironmentProvisionedResources'
        data = {}
        data['environmentName'] = input[:environment_name] unless input[:environment_name].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListEnvironmentTemplateVersions
    class ListEnvironmentTemplateVersions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.ListEnvironmentTemplateVersions'
        data = {}
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['templateName'] = input[:template_name] unless input[:template_name].nil?
        data['majorVersion'] = input[:major_version] unless input[:major_version].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListEnvironmentTemplates
    class ListEnvironmentTemplates
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.ListEnvironmentTemplates'
        data = {}
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListEnvironments
    class ListEnvironments
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.ListEnvironments'
        data = {}
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['environmentTemplates'] = Builders::EnvironmentTemplateFilterList.build(input[:environment_templates]) unless input[:environment_templates].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for EnvironmentTemplateFilterList
    class EnvironmentTemplateFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::EnvironmentTemplateFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for EnvironmentTemplateFilter
    class EnvironmentTemplateFilter
      def self.build(input)
        data = {}
        data['templateName'] = input[:template_name] unless input[:template_name].nil?
        data['majorVersion'] = input[:major_version] unless input[:major_version].nil?
        data
      end
    end

    # Operation Builder for ListRepositories
    class ListRepositories
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.ListRepositories'
        data = {}
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListRepositorySyncDefinitions
    class ListRepositorySyncDefinitions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.ListRepositorySyncDefinitions'
        data = {}
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['repositoryProvider'] = input[:repository_provider] unless input[:repository_provider].nil?
        data['syncType'] = input[:sync_type] unless input[:sync_type].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListServiceInstanceOutputs
    class ListServiceInstanceOutputs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.ListServiceInstanceOutputs'
        data = {}
        data['serviceInstanceName'] = input[:service_instance_name] unless input[:service_instance_name].nil?
        data['serviceName'] = input[:service_name] unless input[:service_name].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListServiceInstanceProvisionedResources
    class ListServiceInstanceProvisionedResources
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.ListServiceInstanceProvisionedResources'
        data = {}
        data['serviceName'] = input[:service_name] unless input[:service_name].nil?
        data['serviceInstanceName'] = input[:service_instance_name] unless input[:service_instance_name].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListServiceInstances
    class ListServiceInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.ListServiceInstances'
        data = {}
        data['serviceName'] = input[:service_name] unless input[:service_name].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListServicePipelineOutputs
    class ListServicePipelineOutputs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.ListServicePipelineOutputs'
        data = {}
        data['serviceName'] = input[:service_name] unless input[:service_name].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListServicePipelineProvisionedResources
    class ListServicePipelineProvisionedResources
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.ListServicePipelineProvisionedResources'
        data = {}
        data['serviceName'] = input[:service_name] unless input[:service_name].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListServiceTemplateVersions
    class ListServiceTemplateVersions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.ListServiceTemplateVersions'
        data = {}
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['templateName'] = input[:template_name] unless input[:template_name].nil?
        data['majorVersion'] = input[:major_version] unless input[:major_version].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListServiceTemplates
    class ListServiceTemplates
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.ListServiceTemplates'
        data = {}
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListServices
    class ListServices
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.ListServices'
        data = {}
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.ListTagsForResource'
        data = {}
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for NotifyResourceDeploymentStatusChange
    class NotifyResourceDeploymentStatusChange
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.NotifyResourceDeploymentStatusChange'
        data = {}
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['status'] = input[:status] unless input[:status].nil?
        data['outputs'] = Builders::OutputsList.build(input[:outputs]) unless input[:outputs].nil?
        data['deploymentId'] = input[:deployment_id] unless input[:deployment_id].nil?
        data['statusMessage'] = input[:status_message] unless input[:status_message].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for OutputsList
    class OutputsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Output.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Output
    class Output
      def self.build(input)
        data = {}
        data['key'] = input[:key] unless input[:key].nil?
        data['valueString'] = input[:value_string] unless input[:value_string].nil?
        data
      end
    end

    # Operation Builder for RejectEnvironmentAccountConnection
    class RejectEnvironmentAccountConnection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.RejectEnvironmentAccountConnection'
        data = {}
        data['id'] = input[:id] unless input[:id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.TagResource'
        data = {}
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.UntagResource'
        data = {}
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['tagKeys'] = Builders::TagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Builder for UpdateAccountSettings
    class UpdateAccountSettings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.UpdateAccountSettings'
        data = {}
        data['pipelineServiceRoleArn'] = input[:pipeline_service_role_arn] unless input[:pipeline_service_role_arn].nil?
        data['pipelineProvisioningRepository'] = Builders::RepositoryBranchInput.build(input[:pipeline_provisioning_repository]) unless input[:pipeline_provisioning_repository].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateComponent
    class UpdateComponent
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.UpdateComponent'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['deploymentType'] = input[:deployment_type] unless input[:deployment_type].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['serviceName'] = input[:service_name] unless input[:service_name].nil?
        data['serviceInstanceName'] = input[:service_instance_name] unless input[:service_instance_name].nil?
        data['serviceSpec'] = input[:service_spec] unless input[:service_spec].nil?
        data['templateFile'] = input[:template_file] unless input[:template_file].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateEnvironment
    class UpdateEnvironment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.UpdateEnvironment'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['spec'] = input[:spec] unless input[:spec].nil?
        data['templateMajorVersion'] = input[:template_major_version] unless input[:template_major_version].nil?
        data['templateMinorVersion'] = input[:template_minor_version] unless input[:template_minor_version].nil?
        data['protonServiceRoleArn'] = input[:proton_service_role_arn] unless input[:proton_service_role_arn].nil?
        data['deploymentType'] = input[:deployment_type] unless input[:deployment_type].nil?
        data['environmentAccountConnectionId'] = input[:environment_account_connection_id] unless input[:environment_account_connection_id].nil?
        data['provisioningRepository'] = Builders::RepositoryBranchInput.build(input[:provisioning_repository]) unless input[:provisioning_repository].nil?
        data['componentRoleArn'] = input[:component_role_arn] unless input[:component_role_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateEnvironmentAccountConnection
    class UpdateEnvironmentAccountConnection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.UpdateEnvironmentAccountConnection'
        data = {}
        data['id'] = input[:id] unless input[:id].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['componentRoleArn'] = input[:component_role_arn] unless input[:component_role_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateEnvironmentTemplate
    class UpdateEnvironmentTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.UpdateEnvironmentTemplate'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['displayName'] = input[:display_name] unless input[:display_name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateEnvironmentTemplateVersion
    class UpdateEnvironmentTemplateVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.UpdateEnvironmentTemplateVersion'
        data = {}
        data['templateName'] = input[:template_name] unless input[:template_name].nil?
        data['majorVersion'] = input[:major_version] unless input[:major_version].nil?
        data['minorVersion'] = input[:minor_version] unless input[:minor_version].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['status'] = input[:status] unless input[:status].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateService
    class UpdateService
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.UpdateService'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['spec'] = input[:spec] unless input[:spec].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateServiceInstance
    class UpdateServiceInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.UpdateServiceInstance'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['serviceName'] = input[:service_name] unless input[:service_name].nil?
        data['deploymentType'] = input[:deployment_type] unless input[:deployment_type].nil?
        data['spec'] = input[:spec] unless input[:spec].nil?
        data['templateMajorVersion'] = input[:template_major_version] unless input[:template_major_version].nil?
        data['templateMinorVersion'] = input[:template_minor_version] unless input[:template_minor_version].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateServicePipeline
    class UpdateServicePipeline
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.UpdateServicePipeline'
        data = {}
        data['serviceName'] = input[:service_name] unless input[:service_name].nil?
        data['spec'] = input[:spec] unless input[:spec].nil?
        data['deploymentType'] = input[:deployment_type] unless input[:deployment_type].nil?
        data['templateMajorVersion'] = input[:template_major_version] unless input[:template_major_version].nil?
        data['templateMinorVersion'] = input[:template_minor_version] unless input[:template_minor_version].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateServiceTemplate
    class UpdateServiceTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.UpdateServiceTemplate'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['displayName'] = input[:display_name] unless input[:display_name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateServiceTemplateVersion
    class UpdateServiceTemplateVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.UpdateServiceTemplateVersion'
        data = {}
        data['templateName'] = input[:template_name] unless input[:template_name].nil?
        data['majorVersion'] = input[:major_version] unless input[:major_version].nil?
        data['minorVersion'] = input[:minor_version] unless input[:minor_version].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['status'] = input[:status] unless input[:status].nil?
        data['compatibleEnvironmentTemplates'] = Builders::CompatibleEnvironmentTemplateInputList.build(input[:compatible_environment_templates]) unless input[:compatible_environment_templates].nil?
        data['supportedComponentSources'] = Builders::ServiceTemplateSupportedComponentSourceInputList.build(input[:supported_component_sources]) unless input[:supported_component_sources].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateTemplateSyncConfig
    class UpdateTemplateSyncConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AwsProton20200720.UpdateTemplateSyncConfig'
        data = {}
        data['templateName'] = input[:template_name] unless input[:template_name].nil?
        data['templateType'] = input[:template_type] unless input[:template_type].nil?
        data['repositoryProvider'] = input[:repository_provider] unless input[:repository_provider].nil?
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['branch'] = input[:branch] unless input[:branch].nil?
        data['subdirectory'] = input[:subdirectory] unless input[:subdirectory].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
