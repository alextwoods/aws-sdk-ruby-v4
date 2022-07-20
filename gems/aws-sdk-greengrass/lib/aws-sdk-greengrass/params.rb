# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Greengrass
  module Params

    module AssociateRoleToGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateRoleToGroupInput, context: context)
        type = Types::AssociateRoleToGroupInput.new
        type.group_id = params[:group_id]
        type.role_arn = params[:role_arn]
        type
      end
    end

    module AssociateRoleToGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateRoleToGroupOutput, context: context)
        type = Types::AssociateRoleToGroupOutput.new
        type.associated_at = params[:associated_at]
        type
      end
    end

    module AssociateServiceRoleToAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateServiceRoleToAccountInput, context: context)
        type = Types::AssociateServiceRoleToAccountInput.new
        type.role_arn = params[:role_arn]
        type
      end
    end

    module AssociateServiceRoleToAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateServiceRoleToAccountOutput, context: context)
        type = Types::AssociateServiceRoleToAccountOutput.new
        type.associated_at = params[:associated_at]
        type
      end
    end

    module BadRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BadRequestException, context: context)
        type = Types::BadRequestException.new
        type.error_details = ErrorDetails.build(params[:error_details], context: "#{context}[:error_details]") unless params[:error_details].nil?
        type.message = params[:message]
        type
      end
    end

    module BulkDeployment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BulkDeployment, context: context)
        type = Types::BulkDeployment.new
        type.bulk_deployment_arn = params[:bulk_deployment_arn]
        type.bulk_deployment_id = params[:bulk_deployment_id]
        type.created_at = params[:created_at]
        type
      end
    end

    module BulkDeploymentMetrics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BulkDeploymentMetrics, context: context)
        type = Types::BulkDeploymentMetrics.new
        type.invalid_input_records = params[:invalid_input_records]
        type.records_processed = params[:records_processed]
        type.retry_attempts = params[:retry_attempts]
        type
      end
    end

    module BulkDeploymentResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BulkDeploymentResult, context: context)
        type = Types::BulkDeploymentResult.new
        type.created_at = params[:created_at]
        type.deployment_arn = params[:deployment_arn]
        type.deployment_id = params[:deployment_id]
        type.deployment_status = params[:deployment_status]
        type.deployment_type = params[:deployment_type]
        type.error_details = ErrorDetails.build(params[:error_details], context: "#{context}[:error_details]") unless params[:error_details].nil?
        type.error_message = params[:error_message]
        type.group_arn = params[:group_arn]
        type
      end
    end

    module BulkDeploymentResults
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BulkDeploymentResult.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BulkDeployments
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BulkDeployment.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConnectivityInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectivityInfo, context: context)
        type = Types::ConnectivityInfo.new
        type.host_address = params[:host_address]
        type.id = params[:id]
        type.metadata = params[:metadata]
        type.port_number = params[:port_number]
        type
      end
    end

    module Connector
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Connector, context: context)
        type = Types::Connector.new
        type.connector_arn = params[:connector_arn]
        type.id = params[:id]
        type.parameters = Map____mapOf__string.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type
      end
    end

    module ConnectorDefinitionVersion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectorDefinitionVersion, context: context)
        type = Types::ConnectorDefinitionVersion.new
        type.connectors = List____listOfConnector.build(params[:connectors], context: "#{context}[:connectors]") unless params[:connectors].nil?
        type
      end
    end

    module Core
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Core, context: context)
        type = Types::Core.new
        type.certificate_arn = params[:certificate_arn]
        type.id = params[:id]
        type.sync_shadow = params[:sync_shadow]
        type.thing_arn = params[:thing_arn]
        type
      end
    end

    module CoreDefinitionVersion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CoreDefinitionVersion, context: context)
        type = Types::CoreDefinitionVersion.new
        type.cores = List____listOfCore.build(params[:cores], context: "#{context}[:cores]") unless params[:cores].nil?
        type
      end
    end

    module CreateConnectorDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConnectorDefinitionInput, context: context)
        type = Types::CreateConnectorDefinitionInput.new
        type.amzn_client_token = params[:amzn_client_token]
        type.initial_version = ConnectorDefinitionVersion.build(params[:initial_version], context: "#{context}[:initial_version]") unless params[:initial_version].nil?
        type.name = params[:name]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateConnectorDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConnectorDefinitionOutput, context: context)
        type = Types::CreateConnectorDefinitionOutput.new
        type.arn = params[:arn]
        type.creation_timestamp = params[:creation_timestamp]
        type.id = params[:id]
        type.last_updated_timestamp = params[:last_updated_timestamp]
        type.latest_version = params[:latest_version]
        type.latest_version_arn = params[:latest_version_arn]
        type.name = params[:name]
        type
      end
    end

    module CreateConnectorDefinitionVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConnectorDefinitionVersionInput, context: context)
        type = Types::CreateConnectorDefinitionVersionInput.new
        type.amzn_client_token = params[:amzn_client_token]
        type.connector_definition_id = params[:connector_definition_id]
        type.connectors = List____listOfConnector.build(params[:connectors], context: "#{context}[:connectors]") unless params[:connectors].nil?
        type
      end
    end

    module CreateConnectorDefinitionVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConnectorDefinitionVersionOutput, context: context)
        type = Types::CreateConnectorDefinitionVersionOutput.new
        type.arn = params[:arn]
        type.creation_timestamp = params[:creation_timestamp]
        type.id = params[:id]
        type.version = params[:version]
        type
      end
    end

    module CreateCoreDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCoreDefinitionInput, context: context)
        type = Types::CreateCoreDefinitionInput.new
        type.amzn_client_token = params[:amzn_client_token]
        type.initial_version = CoreDefinitionVersion.build(params[:initial_version], context: "#{context}[:initial_version]") unless params[:initial_version].nil?
        type.name = params[:name]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateCoreDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCoreDefinitionOutput, context: context)
        type = Types::CreateCoreDefinitionOutput.new
        type.arn = params[:arn]
        type.creation_timestamp = params[:creation_timestamp]
        type.id = params[:id]
        type.last_updated_timestamp = params[:last_updated_timestamp]
        type.latest_version = params[:latest_version]
        type.latest_version_arn = params[:latest_version_arn]
        type.name = params[:name]
        type
      end
    end

    module CreateCoreDefinitionVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCoreDefinitionVersionInput, context: context)
        type = Types::CreateCoreDefinitionVersionInput.new
        type.amzn_client_token = params[:amzn_client_token]
        type.core_definition_id = params[:core_definition_id]
        type.cores = List____listOfCore.build(params[:cores], context: "#{context}[:cores]") unless params[:cores].nil?
        type
      end
    end

    module CreateCoreDefinitionVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCoreDefinitionVersionOutput, context: context)
        type = Types::CreateCoreDefinitionVersionOutput.new
        type.arn = params[:arn]
        type.creation_timestamp = params[:creation_timestamp]
        type.id = params[:id]
        type.version = params[:version]
        type
      end
    end

    module CreateDeploymentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDeploymentInput, context: context)
        type = Types::CreateDeploymentInput.new
        type.amzn_client_token = params[:amzn_client_token]
        type.deployment_id = params[:deployment_id]
        type.deployment_type = params[:deployment_type]
        type.group_id = params[:group_id]
        type.group_version_id = params[:group_version_id]
        type
      end
    end

    module CreateDeploymentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDeploymentOutput, context: context)
        type = Types::CreateDeploymentOutput.new
        type.deployment_arn = params[:deployment_arn]
        type.deployment_id = params[:deployment_id]
        type
      end
    end

    module CreateDeviceDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDeviceDefinitionInput, context: context)
        type = Types::CreateDeviceDefinitionInput.new
        type.amzn_client_token = params[:amzn_client_token]
        type.initial_version = DeviceDefinitionVersion.build(params[:initial_version], context: "#{context}[:initial_version]") unless params[:initial_version].nil?
        type.name = params[:name]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateDeviceDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDeviceDefinitionOutput, context: context)
        type = Types::CreateDeviceDefinitionOutput.new
        type.arn = params[:arn]
        type.creation_timestamp = params[:creation_timestamp]
        type.id = params[:id]
        type.last_updated_timestamp = params[:last_updated_timestamp]
        type.latest_version = params[:latest_version]
        type.latest_version_arn = params[:latest_version_arn]
        type.name = params[:name]
        type
      end
    end

    module CreateDeviceDefinitionVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDeviceDefinitionVersionInput, context: context)
        type = Types::CreateDeviceDefinitionVersionInput.new
        type.amzn_client_token = params[:amzn_client_token]
        type.device_definition_id = params[:device_definition_id]
        type.devices = List____listOfDevice.build(params[:devices], context: "#{context}[:devices]") unless params[:devices].nil?
        type
      end
    end

    module CreateDeviceDefinitionVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDeviceDefinitionVersionOutput, context: context)
        type = Types::CreateDeviceDefinitionVersionOutput.new
        type.arn = params[:arn]
        type.creation_timestamp = params[:creation_timestamp]
        type.id = params[:id]
        type.version = params[:version]
        type
      end
    end

    module CreateFunctionDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFunctionDefinitionInput, context: context)
        type = Types::CreateFunctionDefinitionInput.new
        type.amzn_client_token = params[:amzn_client_token]
        type.initial_version = FunctionDefinitionVersion.build(params[:initial_version], context: "#{context}[:initial_version]") unless params[:initial_version].nil?
        type.name = params[:name]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateFunctionDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFunctionDefinitionOutput, context: context)
        type = Types::CreateFunctionDefinitionOutput.new
        type.arn = params[:arn]
        type.creation_timestamp = params[:creation_timestamp]
        type.id = params[:id]
        type.last_updated_timestamp = params[:last_updated_timestamp]
        type.latest_version = params[:latest_version]
        type.latest_version_arn = params[:latest_version_arn]
        type.name = params[:name]
        type
      end
    end

    module CreateFunctionDefinitionVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFunctionDefinitionVersionInput, context: context)
        type = Types::CreateFunctionDefinitionVersionInput.new
        type.amzn_client_token = params[:amzn_client_token]
        type.default_config = FunctionDefaultConfig.build(params[:default_config], context: "#{context}[:default_config]") unless params[:default_config].nil?
        type.function_definition_id = params[:function_definition_id]
        type.functions = List____listOfFunction.build(params[:functions], context: "#{context}[:functions]") unless params[:functions].nil?
        type
      end
    end

    module CreateFunctionDefinitionVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFunctionDefinitionVersionOutput, context: context)
        type = Types::CreateFunctionDefinitionVersionOutput.new
        type.arn = params[:arn]
        type.creation_timestamp = params[:creation_timestamp]
        type.id = params[:id]
        type.version = params[:version]
        type
      end
    end

    module CreateGroupCertificateAuthorityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGroupCertificateAuthorityInput, context: context)
        type = Types::CreateGroupCertificateAuthorityInput.new
        type.amzn_client_token = params[:amzn_client_token]
        type.group_id = params[:group_id]
        type
      end
    end

    module CreateGroupCertificateAuthorityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGroupCertificateAuthorityOutput, context: context)
        type = Types::CreateGroupCertificateAuthorityOutput.new
        type.group_certificate_authority_arn = params[:group_certificate_authority_arn]
        type
      end
    end

    module CreateGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGroupInput, context: context)
        type = Types::CreateGroupInput.new
        type.amzn_client_token = params[:amzn_client_token]
        type.initial_version = GroupVersion.build(params[:initial_version], context: "#{context}[:initial_version]") unless params[:initial_version].nil?
        type.name = params[:name]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGroupOutput, context: context)
        type = Types::CreateGroupOutput.new
        type.arn = params[:arn]
        type.creation_timestamp = params[:creation_timestamp]
        type.id = params[:id]
        type.last_updated_timestamp = params[:last_updated_timestamp]
        type.latest_version = params[:latest_version]
        type.latest_version_arn = params[:latest_version_arn]
        type.name = params[:name]
        type
      end
    end

    module CreateGroupVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGroupVersionInput, context: context)
        type = Types::CreateGroupVersionInput.new
        type.amzn_client_token = params[:amzn_client_token]
        type.connector_definition_version_arn = params[:connector_definition_version_arn]
        type.core_definition_version_arn = params[:core_definition_version_arn]
        type.device_definition_version_arn = params[:device_definition_version_arn]
        type.function_definition_version_arn = params[:function_definition_version_arn]
        type.group_id = params[:group_id]
        type.logger_definition_version_arn = params[:logger_definition_version_arn]
        type.resource_definition_version_arn = params[:resource_definition_version_arn]
        type.subscription_definition_version_arn = params[:subscription_definition_version_arn]
        type
      end
    end

    module CreateGroupVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGroupVersionOutput, context: context)
        type = Types::CreateGroupVersionOutput.new
        type.arn = params[:arn]
        type.creation_timestamp = params[:creation_timestamp]
        type.id = params[:id]
        type.version = params[:version]
        type
      end
    end

    module CreateLoggerDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLoggerDefinitionInput, context: context)
        type = Types::CreateLoggerDefinitionInput.new
        type.amzn_client_token = params[:amzn_client_token]
        type.initial_version = LoggerDefinitionVersion.build(params[:initial_version], context: "#{context}[:initial_version]") unless params[:initial_version].nil?
        type.name = params[:name]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateLoggerDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLoggerDefinitionOutput, context: context)
        type = Types::CreateLoggerDefinitionOutput.new
        type.arn = params[:arn]
        type.creation_timestamp = params[:creation_timestamp]
        type.id = params[:id]
        type.last_updated_timestamp = params[:last_updated_timestamp]
        type.latest_version = params[:latest_version]
        type.latest_version_arn = params[:latest_version_arn]
        type.name = params[:name]
        type
      end
    end

    module CreateLoggerDefinitionVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLoggerDefinitionVersionInput, context: context)
        type = Types::CreateLoggerDefinitionVersionInput.new
        type.amzn_client_token = params[:amzn_client_token]
        type.logger_definition_id = params[:logger_definition_id]
        type.loggers = List____listOfLogger.build(params[:loggers], context: "#{context}[:loggers]") unless params[:loggers].nil?
        type
      end
    end

    module CreateLoggerDefinitionVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLoggerDefinitionVersionOutput, context: context)
        type = Types::CreateLoggerDefinitionVersionOutput.new
        type.arn = params[:arn]
        type.creation_timestamp = params[:creation_timestamp]
        type.id = params[:id]
        type.version = params[:version]
        type
      end
    end

    module CreateResourceDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateResourceDefinitionInput, context: context)
        type = Types::CreateResourceDefinitionInput.new
        type.amzn_client_token = params[:amzn_client_token]
        type.initial_version = ResourceDefinitionVersion.build(params[:initial_version], context: "#{context}[:initial_version]") unless params[:initial_version].nil?
        type.name = params[:name]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateResourceDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateResourceDefinitionOutput, context: context)
        type = Types::CreateResourceDefinitionOutput.new
        type.arn = params[:arn]
        type.creation_timestamp = params[:creation_timestamp]
        type.id = params[:id]
        type.last_updated_timestamp = params[:last_updated_timestamp]
        type.latest_version = params[:latest_version]
        type.latest_version_arn = params[:latest_version_arn]
        type.name = params[:name]
        type
      end
    end

    module CreateResourceDefinitionVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateResourceDefinitionVersionInput, context: context)
        type = Types::CreateResourceDefinitionVersionInput.new
        type.amzn_client_token = params[:amzn_client_token]
        type.resource_definition_id = params[:resource_definition_id]
        type.resources = List____listOfResource.build(params[:resources], context: "#{context}[:resources]") unless params[:resources].nil?
        type
      end
    end

    module CreateResourceDefinitionVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateResourceDefinitionVersionOutput, context: context)
        type = Types::CreateResourceDefinitionVersionOutput.new
        type.arn = params[:arn]
        type.creation_timestamp = params[:creation_timestamp]
        type.id = params[:id]
        type.version = params[:version]
        type
      end
    end

    module CreateSoftwareUpdateJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSoftwareUpdateJobInput, context: context)
        type = Types::CreateSoftwareUpdateJobInput.new
        type.amzn_client_token = params[:amzn_client_token]
        type.s3_url_signer_role = params[:s3_url_signer_role]
        type.software_to_update = params[:software_to_update]
        type.update_agent_log_level = params[:update_agent_log_level]
        type.update_targets = UpdateTargets.build(params[:update_targets], context: "#{context}[:update_targets]") unless params[:update_targets].nil?
        type.update_targets_architecture = params[:update_targets_architecture]
        type.update_targets_operating_system = params[:update_targets_operating_system]
        type
      end
    end

    module CreateSoftwareUpdateJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSoftwareUpdateJobOutput, context: context)
        type = Types::CreateSoftwareUpdateJobOutput.new
        type.iot_job_arn = params[:iot_job_arn]
        type.iot_job_id = params[:iot_job_id]
        type.platform_software_version = params[:platform_software_version]
        type
      end
    end

    module CreateSubscriptionDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSubscriptionDefinitionInput, context: context)
        type = Types::CreateSubscriptionDefinitionInput.new
        type.amzn_client_token = params[:amzn_client_token]
        type.initial_version = SubscriptionDefinitionVersion.build(params[:initial_version], context: "#{context}[:initial_version]") unless params[:initial_version].nil?
        type.name = params[:name]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateSubscriptionDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSubscriptionDefinitionOutput, context: context)
        type = Types::CreateSubscriptionDefinitionOutput.new
        type.arn = params[:arn]
        type.creation_timestamp = params[:creation_timestamp]
        type.id = params[:id]
        type.last_updated_timestamp = params[:last_updated_timestamp]
        type.latest_version = params[:latest_version]
        type.latest_version_arn = params[:latest_version_arn]
        type.name = params[:name]
        type
      end
    end

    module CreateSubscriptionDefinitionVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSubscriptionDefinitionVersionInput, context: context)
        type = Types::CreateSubscriptionDefinitionVersionInput.new
        type.amzn_client_token = params[:amzn_client_token]
        type.subscription_definition_id = params[:subscription_definition_id]
        type.subscriptions = List____listOfSubscription.build(params[:subscriptions], context: "#{context}[:subscriptions]") unless params[:subscriptions].nil?
        type
      end
    end

    module CreateSubscriptionDefinitionVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSubscriptionDefinitionVersionOutput, context: context)
        type = Types::CreateSubscriptionDefinitionVersionOutput.new
        type.arn = params[:arn]
        type.creation_timestamp = params[:creation_timestamp]
        type.id = params[:id]
        type.version = params[:version]
        type
      end
    end

    module DefinitionInformation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DefinitionInformation, context: context)
        type = Types::DefinitionInformation.new
        type.arn = params[:arn]
        type.creation_timestamp = params[:creation_timestamp]
        type.id = params[:id]
        type.last_updated_timestamp = params[:last_updated_timestamp]
        type.latest_version = params[:latest_version]
        type.latest_version_arn = params[:latest_version_arn]
        type.name = params[:name]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module DeleteConnectorDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConnectorDefinitionInput, context: context)
        type = Types::DeleteConnectorDefinitionInput.new
        type.connector_definition_id = params[:connector_definition_id]
        type
      end
    end

    module DeleteConnectorDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConnectorDefinitionOutput, context: context)
        type = Types::DeleteConnectorDefinitionOutput.new
        type
      end
    end

    module DeleteCoreDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCoreDefinitionInput, context: context)
        type = Types::DeleteCoreDefinitionInput.new
        type.core_definition_id = params[:core_definition_id]
        type
      end
    end

    module DeleteCoreDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCoreDefinitionOutput, context: context)
        type = Types::DeleteCoreDefinitionOutput.new
        type
      end
    end

    module DeleteDeviceDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDeviceDefinitionInput, context: context)
        type = Types::DeleteDeviceDefinitionInput.new
        type.device_definition_id = params[:device_definition_id]
        type
      end
    end

    module DeleteDeviceDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDeviceDefinitionOutput, context: context)
        type = Types::DeleteDeviceDefinitionOutput.new
        type
      end
    end

    module DeleteFunctionDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFunctionDefinitionInput, context: context)
        type = Types::DeleteFunctionDefinitionInput.new
        type.function_definition_id = params[:function_definition_id]
        type
      end
    end

    module DeleteFunctionDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFunctionDefinitionOutput, context: context)
        type = Types::DeleteFunctionDefinitionOutput.new
        type
      end
    end

    module DeleteGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteGroupInput, context: context)
        type = Types::DeleteGroupInput.new
        type.group_id = params[:group_id]
        type
      end
    end

    module DeleteGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteGroupOutput, context: context)
        type = Types::DeleteGroupOutput.new
        type
      end
    end

    module DeleteLoggerDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLoggerDefinitionInput, context: context)
        type = Types::DeleteLoggerDefinitionInput.new
        type.logger_definition_id = params[:logger_definition_id]
        type
      end
    end

    module DeleteLoggerDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLoggerDefinitionOutput, context: context)
        type = Types::DeleteLoggerDefinitionOutput.new
        type
      end
    end

    module DeleteResourceDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteResourceDefinitionInput, context: context)
        type = Types::DeleteResourceDefinitionInput.new
        type.resource_definition_id = params[:resource_definition_id]
        type
      end
    end

    module DeleteResourceDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteResourceDefinitionOutput, context: context)
        type = Types::DeleteResourceDefinitionOutput.new
        type
      end
    end

    module DeleteSubscriptionDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSubscriptionDefinitionInput, context: context)
        type = Types::DeleteSubscriptionDefinitionInput.new
        type.subscription_definition_id = params[:subscription_definition_id]
        type
      end
    end

    module DeleteSubscriptionDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSubscriptionDefinitionOutput, context: context)
        type = Types::DeleteSubscriptionDefinitionOutput.new
        type
      end
    end

    module Deployment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Deployment, context: context)
        type = Types::Deployment.new
        type.created_at = params[:created_at]
        type.deployment_arn = params[:deployment_arn]
        type.deployment_id = params[:deployment_id]
        type.deployment_type = params[:deployment_type]
        type.group_arn = params[:group_arn]
        type
      end
    end

    module Deployments
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Deployment.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Device
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Device, context: context)
        type = Types::Device.new
        type.certificate_arn = params[:certificate_arn]
        type.id = params[:id]
        type.sync_shadow = params[:sync_shadow]
        type.thing_arn = params[:thing_arn]
        type
      end
    end

    module DeviceDefinitionVersion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeviceDefinitionVersion, context: context)
        type = Types::DeviceDefinitionVersion.new
        type.devices = List____listOfDevice.build(params[:devices], context: "#{context}[:devices]") unless params[:devices].nil?
        type
      end
    end

    module DisassociateRoleFromGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateRoleFromGroupInput, context: context)
        type = Types::DisassociateRoleFromGroupInput.new
        type.group_id = params[:group_id]
        type
      end
    end

    module DisassociateRoleFromGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateRoleFromGroupOutput, context: context)
        type = Types::DisassociateRoleFromGroupOutput.new
        type.disassociated_at = params[:disassociated_at]
        type
      end
    end

    module DisassociateServiceRoleFromAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateServiceRoleFromAccountInput, context: context)
        type = Types::DisassociateServiceRoleFromAccountInput.new
        type
      end
    end

    module DisassociateServiceRoleFromAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateServiceRoleFromAccountOutput, context: context)
        type = Types::DisassociateServiceRoleFromAccountOutput.new
        type.disassociated_at = params[:disassociated_at]
        type
      end
    end

    module ErrorDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ErrorDetail, context: context)
        type = Types::ErrorDetail.new
        type.detailed_error_code = params[:detailed_error_code]
        type.detailed_error_message = params[:detailed_error_message]
        type
      end
    end

    module ErrorDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ErrorDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Function
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Function, context: context)
        type = Types::Function.new
        type.function_arn = params[:function_arn]
        type.function_configuration = FunctionConfiguration.build(params[:function_configuration], context: "#{context}[:function_configuration]") unless params[:function_configuration].nil?
        type.id = params[:id]
        type
      end
    end

    module FunctionConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FunctionConfiguration, context: context)
        type = Types::FunctionConfiguration.new
        type.encoding_type = params[:encoding_type]
        type.environment = FunctionConfigurationEnvironment.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type.exec_args = params[:exec_args]
        type.executable = params[:executable]
        type.memory_size = params[:memory_size]
        type.pinned = params[:pinned]
        type.timeout = params[:timeout]
        type
      end
    end

    module FunctionConfigurationEnvironment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FunctionConfigurationEnvironment, context: context)
        type = Types::FunctionConfigurationEnvironment.new
        type.access_sysfs = params[:access_sysfs]
        type.execution = FunctionExecutionConfig.build(params[:execution], context: "#{context}[:execution]") unless params[:execution].nil?
        type.resource_access_policies = List____listOfResourceAccessPolicy.build(params[:resource_access_policies], context: "#{context}[:resource_access_policies]") unless params[:resource_access_policies].nil?
        type.variables = Map____mapOf__string.build(params[:variables], context: "#{context}[:variables]") unless params[:variables].nil?
        type
      end
    end

    module FunctionDefaultConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FunctionDefaultConfig, context: context)
        type = Types::FunctionDefaultConfig.new
        type.execution = FunctionDefaultExecutionConfig.build(params[:execution], context: "#{context}[:execution]") unless params[:execution].nil?
        type
      end
    end

    module FunctionDefaultExecutionConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FunctionDefaultExecutionConfig, context: context)
        type = Types::FunctionDefaultExecutionConfig.new
        type.isolation_mode = params[:isolation_mode]
        type.run_as = FunctionRunAsConfig.build(params[:run_as], context: "#{context}[:run_as]") unless params[:run_as].nil?
        type
      end
    end

    module FunctionDefinitionVersion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FunctionDefinitionVersion, context: context)
        type = Types::FunctionDefinitionVersion.new
        type.default_config = FunctionDefaultConfig.build(params[:default_config], context: "#{context}[:default_config]") unless params[:default_config].nil?
        type.functions = List____listOfFunction.build(params[:functions], context: "#{context}[:functions]") unless params[:functions].nil?
        type
      end
    end

    module FunctionExecutionConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FunctionExecutionConfig, context: context)
        type = Types::FunctionExecutionConfig.new
        type.isolation_mode = params[:isolation_mode]
        type.run_as = FunctionRunAsConfig.build(params[:run_as], context: "#{context}[:run_as]") unless params[:run_as].nil?
        type
      end
    end

    module FunctionRunAsConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FunctionRunAsConfig, context: context)
        type = Types::FunctionRunAsConfig.new
        type.gid = params[:gid]
        type.uid = params[:uid]
        type
      end
    end

    module GetAssociatedRoleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAssociatedRoleInput, context: context)
        type = Types::GetAssociatedRoleInput.new
        type.group_id = params[:group_id]
        type
      end
    end

    module GetAssociatedRoleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAssociatedRoleOutput, context: context)
        type = Types::GetAssociatedRoleOutput.new
        type.associated_at = params[:associated_at]
        type.role_arn = params[:role_arn]
        type
      end
    end

    module GetBulkDeploymentStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBulkDeploymentStatusInput, context: context)
        type = Types::GetBulkDeploymentStatusInput.new
        type.bulk_deployment_id = params[:bulk_deployment_id]
        type
      end
    end

    module GetBulkDeploymentStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBulkDeploymentStatusOutput, context: context)
        type = Types::GetBulkDeploymentStatusOutput.new
        type.bulk_deployment_metrics = BulkDeploymentMetrics.build(params[:bulk_deployment_metrics], context: "#{context}[:bulk_deployment_metrics]") unless params[:bulk_deployment_metrics].nil?
        type.bulk_deployment_status = params[:bulk_deployment_status]
        type.created_at = params[:created_at]
        type.error_details = ErrorDetails.build(params[:error_details], context: "#{context}[:error_details]") unless params[:error_details].nil?
        type.error_message = params[:error_message]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module GetConnectivityInfoInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConnectivityInfoInput, context: context)
        type = Types::GetConnectivityInfoInput.new
        type.thing_name = params[:thing_name]
        type
      end
    end

    module GetConnectivityInfoOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConnectivityInfoOutput, context: context)
        type = Types::GetConnectivityInfoOutput.new
        type.connectivity_info = List____listOfConnectivityInfo.build(params[:connectivity_info], context: "#{context}[:connectivity_info]") unless params[:connectivity_info].nil?
        type.message = params[:message]
        type
      end
    end

    module GetConnectorDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConnectorDefinitionInput, context: context)
        type = Types::GetConnectorDefinitionInput.new
        type.connector_definition_id = params[:connector_definition_id]
        type
      end
    end

    module GetConnectorDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConnectorDefinitionOutput, context: context)
        type = Types::GetConnectorDefinitionOutput.new
        type.arn = params[:arn]
        type.creation_timestamp = params[:creation_timestamp]
        type.id = params[:id]
        type.last_updated_timestamp = params[:last_updated_timestamp]
        type.latest_version = params[:latest_version]
        type.latest_version_arn = params[:latest_version_arn]
        type.name = params[:name]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module GetConnectorDefinitionVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConnectorDefinitionVersionInput, context: context)
        type = Types::GetConnectorDefinitionVersionInput.new
        type.connector_definition_id = params[:connector_definition_id]
        type.connector_definition_version_id = params[:connector_definition_version_id]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetConnectorDefinitionVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConnectorDefinitionVersionOutput, context: context)
        type = Types::GetConnectorDefinitionVersionOutput.new
        type.arn = params[:arn]
        type.creation_timestamp = params[:creation_timestamp]
        type.definition = ConnectorDefinitionVersion.build(params[:definition], context: "#{context}[:definition]") unless params[:definition].nil?
        type.id = params[:id]
        type.next_token = params[:next_token]
        type.version = params[:version]
        type
      end
    end

    module GetCoreDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCoreDefinitionInput, context: context)
        type = Types::GetCoreDefinitionInput.new
        type.core_definition_id = params[:core_definition_id]
        type
      end
    end

    module GetCoreDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCoreDefinitionOutput, context: context)
        type = Types::GetCoreDefinitionOutput.new
        type.arn = params[:arn]
        type.creation_timestamp = params[:creation_timestamp]
        type.id = params[:id]
        type.last_updated_timestamp = params[:last_updated_timestamp]
        type.latest_version = params[:latest_version]
        type.latest_version_arn = params[:latest_version_arn]
        type.name = params[:name]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module GetCoreDefinitionVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCoreDefinitionVersionInput, context: context)
        type = Types::GetCoreDefinitionVersionInput.new
        type.core_definition_id = params[:core_definition_id]
        type.core_definition_version_id = params[:core_definition_version_id]
        type
      end
    end

    module GetCoreDefinitionVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCoreDefinitionVersionOutput, context: context)
        type = Types::GetCoreDefinitionVersionOutput.new
        type.arn = params[:arn]
        type.creation_timestamp = params[:creation_timestamp]
        type.definition = CoreDefinitionVersion.build(params[:definition], context: "#{context}[:definition]") unless params[:definition].nil?
        type.id = params[:id]
        type.next_token = params[:next_token]
        type.version = params[:version]
        type
      end
    end

    module GetDeploymentStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeploymentStatusInput, context: context)
        type = Types::GetDeploymentStatusInput.new
        type.deployment_id = params[:deployment_id]
        type.group_id = params[:group_id]
        type
      end
    end

    module GetDeploymentStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeploymentStatusOutput, context: context)
        type = Types::GetDeploymentStatusOutput.new
        type.deployment_status = params[:deployment_status]
        type.deployment_type = params[:deployment_type]
        type.error_details = ErrorDetails.build(params[:error_details], context: "#{context}[:error_details]") unless params[:error_details].nil?
        type.error_message = params[:error_message]
        type.updated_at = params[:updated_at]
        type
      end
    end

    module GetDeviceDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeviceDefinitionInput, context: context)
        type = Types::GetDeviceDefinitionInput.new
        type.device_definition_id = params[:device_definition_id]
        type
      end
    end

    module GetDeviceDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeviceDefinitionOutput, context: context)
        type = Types::GetDeviceDefinitionOutput.new
        type.arn = params[:arn]
        type.creation_timestamp = params[:creation_timestamp]
        type.id = params[:id]
        type.last_updated_timestamp = params[:last_updated_timestamp]
        type.latest_version = params[:latest_version]
        type.latest_version_arn = params[:latest_version_arn]
        type.name = params[:name]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module GetDeviceDefinitionVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeviceDefinitionVersionInput, context: context)
        type = Types::GetDeviceDefinitionVersionInput.new
        type.device_definition_id = params[:device_definition_id]
        type.device_definition_version_id = params[:device_definition_version_id]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetDeviceDefinitionVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeviceDefinitionVersionOutput, context: context)
        type = Types::GetDeviceDefinitionVersionOutput.new
        type.arn = params[:arn]
        type.creation_timestamp = params[:creation_timestamp]
        type.definition = DeviceDefinitionVersion.build(params[:definition], context: "#{context}[:definition]") unless params[:definition].nil?
        type.id = params[:id]
        type.next_token = params[:next_token]
        type.version = params[:version]
        type
      end
    end

    module GetFunctionDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFunctionDefinitionInput, context: context)
        type = Types::GetFunctionDefinitionInput.new
        type.function_definition_id = params[:function_definition_id]
        type
      end
    end

    module GetFunctionDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFunctionDefinitionOutput, context: context)
        type = Types::GetFunctionDefinitionOutput.new
        type.arn = params[:arn]
        type.creation_timestamp = params[:creation_timestamp]
        type.id = params[:id]
        type.last_updated_timestamp = params[:last_updated_timestamp]
        type.latest_version = params[:latest_version]
        type.latest_version_arn = params[:latest_version_arn]
        type.name = params[:name]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module GetFunctionDefinitionVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFunctionDefinitionVersionInput, context: context)
        type = Types::GetFunctionDefinitionVersionInput.new
        type.function_definition_id = params[:function_definition_id]
        type.function_definition_version_id = params[:function_definition_version_id]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetFunctionDefinitionVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFunctionDefinitionVersionOutput, context: context)
        type = Types::GetFunctionDefinitionVersionOutput.new
        type.arn = params[:arn]
        type.creation_timestamp = params[:creation_timestamp]
        type.definition = FunctionDefinitionVersion.build(params[:definition], context: "#{context}[:definition]") unless params[:definition].nil?
        type.id = params[:id]
        type.next_token = params[:next_token]
        type.version = params[:version]
        type
      end
    end

    module GetGroupCertificateAuthorityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGroupCertificateAuthorityInput, context: context)
        type = Types::GetGroupCertificateAuthorityInput.new
        type.certificate_authority_id = params[:certificate_authority_id]
        type.group_id = params[:group_id]
        type
      end
    end

    module GetGroupCertificateAuthorityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGroupCertificateAuthorityOutput, context: context)
        type = Types::GetGroupCertificateAuthorityOutput.new
        type.group_certificate_authority_arn = params[:group_certificate_authority_arn]
        type.group_certificate_authority_id = params[:group_certificate_authority_id]
        type.pem_encoded_certificate = params[:pem_encoded_certificate]
        type
      end
    end

    module GetGroupCertificateConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGroupCertificateConfigurationInput, context: context)
        type = Types::GetGroupCertificateConfigurationInput.new
        type.group_id = params[:group_id]
        type
      end
    end

    module GetGroupCertificateConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGroupCertificateConfigurationOutput, context: context)
        type = Types::GetGroupCertificateConfigurationOutput.new
        type.certificate_authority_expiry_in_milliseconds = params[:certificate_authority_expiry_in_milliseconds]
        type.certificate_expiry_in_milliseconds = params[:certificate_expiry_in_milliseconds]
        type.group_id = params[:group_id]
        type
      end
    end

    module GetGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGroupInput, context: context)
        type = Types::GetGroupInput.new
        type.group_id = params[:group_id]
        type
      end
    end

    module GetGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGroupOutput, context: context)
        type = Types::GetGroupOutput.new
        type.arn = params[:arn]
        type.creation_timestamp = params[:creation_timestamp]
        type.id = params[:id]
        type.last_updated_timestamp = params[:last_updated_timestamp]
        type.latest_version = params[:latest_version]
        type.latest_version_arn = params[:latest_version_arn]
        type.name = params[:name]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module GetGroupVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGroupVersionInput, context: context)
        type = Types::GetGroupVersionInput.new
        type.group_id = params[:group_id]
        type.group_version_id = params[:group_version_id]
        type
      end
    end

    module GetGroupVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGroupVersionOutput, context: context)
        type = Types::GetGroupVersionOutput.new
        type.arn = params[:arn]
        type.creation_timestamp = params[:creation_timestamp]
        type.definition = GroupVersion.build(params[:definition], context: "#{context}[:definition]") unless params[:definition].nil?
        type.id = params[:id]
        type.version = params[:version]
        type
      end
    end

    module GetLoggerDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLoggerDefinitionInput, context: context)
        type = Types::GetLoggerDefinitionInput.new
        type.logger_definition_id = params[:logger_definition_id]
        type
      end
    end

    module GetLoggerDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLoggerDefinitionOutput, context: context)
        type = Types::GetLoggerDefinitionOutput.new
        type.arn = params[:arn]
        type.creation_timestamp = params[:creation_timestamp]
        type.id = params[:id]
        type.last_updated_timestamp = params[:last_updated_timestamp]
        type.latest_version = params[:latest_version]
        type.latest_version_arn = params[:latest_version_arn]
        type.name = params[:name]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module GetLoggerDefinitionVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLoggerDefinitionVersionInput, context: context)
        type = Types::GetLoggerDefinitionVersionInput.new
        type.logger_definition_id = params[:logger_definition_id]
        type.logger_definition_version_id = params[:logger_definition_version_id]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetLoggerDefinitionVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLoggerDefinitionVersionOutput, context: context)
        type = Types::GetLoggerDefinitionVersionOutput.new
        type.arn = params[:arn]
        type.creation_timestamp = params[:creation_timestamp]
        type.definition = LoggerDefinitionVersion.build(params[:definition], context: "#{context}[:definition]") unless params[:definition].nil?
        type.id = params[:id]
        type.version = params[:version]
        type
      end
    end

    module GetResourceDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResourceDefinitionInput, context: context)
        type = Types::GetResourceDefinitionInput.new
        type.resource_definition_id = params[:resource_definition_id]
        type
      end
    end

    module GetResourceDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResourceDefinitionOutput, context: context)
        type = Types::GetResourceDefinitionOutput.new
        type.arn = params[:arn]
        type.creation_timestamp = params[:creation_timestamp]
        type.id = params[:id]
        type.last_updated_timestamp = params[:last_updated_timestamp]
        type.latest_version = params[:latest_version]
        type.latest_version_arn = params[:latest_version_arn]
        type.name = params[:name]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module GetResourceDefinitionVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResourceDefinitionVersionInput, context: context)
        type = Types::GetResourceDefinitionVersionInput.new
        type.resource_definition_id = params[:resource_definition_id]
        type.resource_definition_version_id = params[:resource_definition_version_id]
        type
      end
    end

    module GetResourceDefinitionVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResourceDefinitionVersionOutput, context: context)
        type = Types::GetResourceDefinitionVersionOutput.new
        type.arn = params[:arn]
        type.creation_timestamp = params[:creation_timestamp]
        type.definition = ResourceDefinitionVersion.build(params[:definition], context: "#{context}[:definition]") unless params[:definition].nil?
        type.id = params[:id]
        type.version = params[:version]
        type
      end
    end

    module GetServiceRoleForAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetServiceRoleForAccountInput, context: context)
        type = Types::GetServiceRoleForAccountInput.new
        type
      end
    end

    module GetServiceRoleForAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetServiceRoleForAccountOutput, context: context)
        type = Types::GetServiceRoleForAccountOutput.new
        type.associated_at = params[:associated_at]
        type.role_arn = params[:role_arn]
        type
      end
    end

    module GetSubscriptionDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSubscriptionDefinitionInput, context: context)
        type = Types::GetSubscriptionDefinitionInput.new
        type.subscription_definition_id = params[:subscription_definition_id]
        type
      end
    end

    module GetSubscriptionDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSubscriptionDefinitionOutput, context: context)
        type = Types::GetSubscriptionDefinitionOutput.new
        type.arn = params[:arn]
        type.creation_timestamp = params[:creation_timestamp]
        type.id = params[:id]
        type.last_updated_timestamp = params[:last_updated_timestamp]
        type.latest_version = params[:latest_version]
        type.latest_version_arn = params[:latest_version_arn]
        type.name = params[:name]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module GetSubscriptionDefinitionVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSubscriptionDefinitionVersionInput, context: context)
        type = Types::GetSubscriptionDefinitionVersionInput.new
        type.next_token = params[:next_token]
        type.subscription_definition_id = params[:subscription_definition_id]
        type.subscription_definition_version_id = params[:subscription_definition_version_id]
        type
      end
    end

    module GetSubscriptionDefinitionVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSubscriptionDefinitionVersionOutput, context: context)
        type = Types::GetSubscriptionDefinitionVersionOutput.new
        type.arn = params[:arn]
        type.creation_timestamp = params[:creation_timestamp]
        type.definition = SubscriptionDefinitionVersion.build(params[:definition], context: "#{context}[:definition]") unless params[:definition].nil?
        type.id = params[:id]
        type.next_token = params[:next_token]
        type.version = params[:version]
        type
      end
    end

    module GetThingRuntimeConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetThingRuntimeConfigurationInput, context: context)
        type = Types::GetThingRuntimeConfigurationInput.new
        type.thing_name = params[:thing_name]
        type
      end
    end

    module GetThingRuntimeConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetThingRuntimeConfigurationOutput, context: context)
        type = Types::GetThingRuntimeConfigurationOutput.new
        type.runtime_configuration = RuntimeConfiguration.build(params[:runtime_configuration], context: "#{context}[:runtime_configuration]") unless params[:runtime_configuration].nil?
        type
      end
    end

    module GroupCertificateAuthorityProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GroupCertificateAuthorityProperties, context: context)
        type = Types::GroupCertificateAuthorityProperties.new
        type.group_certificate_authority_arn = params[:group_certificate_authority_arn]
        type.group_certificate_authority_id = params[:group_certificate_authority_id]
        type
      end
    end

    module GroupInformation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GroupInformation, context: context)
        type = Types::GroupInformation.new
        type.arn = params[:arn]
        type.creation_timestamp = params[:creation_timestamp]
        type.id = params[:id]
        type.last_updated_timestamp = params[:last_updated_timestamp]
        type.latest_version = params[:latest_version]
        type.latest_version_arn = params[:latest_version_arn]
        type.name = params[:name]
        type
      end
    end

    module GroupOwnerSetting
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GroupOwnerSetting, context: context)
        type = Types::GroupOwnerSetting.new
        type.auto_add_group_owner = params[:auto_add_group_owner]
        type.group_owner = params[:group_owner]
        type
      end
    end

    module GroupVersion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GroupVersion, context: context)
        type = Types::GroupVersion.new
        type.connector_definition_version_arn = params[:connector_definition_version_arn]
        type.core_definition_version_arn = params[:core_definition_version_arn]
        type.device_definition_version_arn = params[:device_definition_version_arn]
        type.function_definition_version_arn = params[:function_definition_version_arn]
        type.logger_definition_version_arn = params[:logger_definition_version_arn]
        type.resource_definition_version_arn = params[:resource_definition_version_arn]
        type.subscription_definition_version_arn = params[:subscription_definition_version_arn]
        type
      end
    end

    module InternalServerErrorException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerErrorException, context: context)
        type = Types::InternalServerErrorException.new
        type.error_details = ErrorDetails.build(params[:error_details], context: "#{context}[:error_details]") unless params[:error_details].nil?
        type.message = params[:message]
        type
      end
    end

    module ListBulkDeploymentDetailedReportsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBulkDeploymentDetailedReportsInput, context: context)
        type = Types::ListBulkDeploymentDetailedReportsInput.new
        type.bulk_deployment_id = params[:bulk_deployment_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListBulkDeploymentDetailedReportsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBulkDeploymentDetailedReportsOutput, context: context)
        type = Types::ListBulkDeploymentDetailedReportsOutput.new
        type.deployments = BulkDeploymentResults.build(params[:deployments], context: "#{context}[:deployments]") unless params[:deployments].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListBulkDeploymentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBulkDeploymentsInput, context: context)
        type = Types::ListBulkDeploymentsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListBulkDeploymentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBulkDeploymentsOutput, context: context)
        type = Types::ListBulkDeploymentsOutput.new
        type.bulk_deployments = BulkDeployments.build(params[:bulk_deployments], context: "#{context}[:bulk_deployments]") unless params[:bulk_deployments].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListConnectorDefinitionVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListConnectorDefinitionVersionsInput, context: context)
        type = Types::ListConnectorDefinitionVersionsInput.new
        type.connector_definition_id = params[:connector_definition_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListConnectorDefinitionVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListConnectorDefinitionVersionsOutput, context: context)
        type = Types::ListConnectorDefinitionVersionsOutput.new
        type.next_token = params[:next_token]
        type.versions = List____listOfVersionInformation.build(params[:versions], context: "#{context}[:versions]") unless params[:versions].nil?
        type
      end
    end

    module ListConnectorDefinitionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListConnectorDefinitionsInput, context: context)
        type = Types::ListConnectorDefinitionsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListConnectorDefinitionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListConnectorDefinitionsOutput, context: context)
        type = Types::ListConnectorDefinitionsOutput.new
        type.definitions = List____listOfDefinitionInformation.build(params[:definitions], context: "#{context}[:definitions]") unless params[:definitions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListCoreDefinitionVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCoreDefinitionVersionsInput, context: context)
        type = Types::ListCoreDefinitionVersionsInput.new
        type.core_definition_id = params[:core_definition_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListCoreDefinitionVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCoreDefinitionVersionsOutput, context: context)
        type = Types::ListCoreDefinitionVersionsOutput.new
        type.next_token = params[:next_token]
        type.versions = List____listOfVersionInformation.build(params[:versions], context: "#{context}[:versions]") unless params[:versions].nil?
        type
      end
    end

    module ListCoreDefinitionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCoreDefinitionsInput, context: context)
        type = Types::ListCoreDefinitionsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListCoreDefinitionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCoreDefinitionsOutput, context: context)
        type = Types::ListCoreDefinitionsOutput.new
        type.definitions = List____listOfDefinitionInformation.build(params[:definitions], context: "#{context}[:definitions]") unless params[:definitions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDeploymentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDeploymentsInput, context: context)
        type = Types::ListDeploymentsInput.new
        type.group_id = params[:group_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDeploymentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDeploymentsOutput, context: context)
        type = Types::ListDeploymentsOutput.new
        type.deployments = Deployments.build(params[:deployments], context: "#{context}[:deployments]") unless params[:deployments].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDeviceDefinitionVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDeviceDefinitionVersionsInput, context: context)
        type = Types::ListDeviceDefinitionVersionsInput.new
        type.device_definition_id = params[:device_definition_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDeviceDefinitionVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDeviceDefinitionVersionsOutput, context: context)
        type = Types::ListDeviceDefinitionVersionsOutput.new
        type.next_token = params[:next_token]
        type.versions = List____listOfVersionInformation.build(params[:versions], context: "#{context}[:versions]") unless params[:versions].nil?
        type
      end
    end

    module ListDeviceDefinitionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDeviceDefinitionsInput, context: context)
        type = Types::ListDeviceDefinitionsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDeviceDefinitionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDeviceDefinitionsOutput, context: context)
        type = Types::ListDeviceDefinitionsOutput.new
        type.definitions = List____listOfDefinitionInformation.build(params[:definitions], context: "#{context}[:definitions]") unless params[:definitions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListFunctionDefinitionVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFunctionDefinitionVersionsInput, context: context)
        type = Types::ListFunctionDefinitionVersionsInput.new
        type.function_definition_id = params[:function_definition_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListFunctionDefinitionVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFunctionDefinitionVersionsOutput, context: context)
        type = Types::ListFunctionDefinitionVersionsOutput.new
        type.next_token = params[:next_token]
        type.versions = List____listOfVersionInformation.build(params[:versions], context: "#{context}[:versions]") unless params[:versions].nil?
        type
      end
    end

    module ListFunctionDefinitionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFunctionDefinitionsInput, context: context)
        type = Types::ListFunctionDefinitionsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListFunctionDefinitionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFunctionDefinitionsOutput, context: context)
        type = Types::ListFunctionDefinitionsOutput.new
        type.definitions = List____listOfDefinitionInformation.build(params[:definitions], context: "#{context}[:definitions]") unless params[:definitions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListGroupCertificateAuthoritiesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGroupCertificateAuthoritiesInput, context: context)
        type = Types::ListGroupCertificateAuthoritiesInput.new
        type.group_id = params[:group_id]
        type
      end
    end

    module ListGroupCertificateAuthoritiesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGroupCertificateAuthoritiesOutput, context: context)
        type = Types::ListGroupCertificateAuthoritiesOutput.new
        type.group_certificate_authorities = List____listOfGroupCertificateAuthorityProperties.build(params[:group_certificate_authorities], context: "#{context}[:group_certificate_authorities]") unless params[:group_certificate_authorities].nil?
        type
      end
    end

    module ListGroupVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGroupVersionsInput, context: context)
        type = Types::ListGroupVersionsInput.new
        type.group_id = params[:group_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListGroupVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGroupVersionsOutput, context: context)
        type = Types::ListGroupVersionsOutput.new
        type.next_token = params[:next_token]
        type.versions = List____listOfVersionInformation.build(params[:versions], context: "#{context}[:versions]") unless params[:versions].nil?
        type
      end
    end

    module ListGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGroupsInput, context: context)
        type = Types::ListGroupsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGroupsOutput, context: context)
        type = Types::ListGroupsOutput.new
        type.groups = List____listOfGroupInformation.build(params[:groups], context: "#{context}[:groups]") unless params[:groups].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListLoggerDefinitionVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLoggerDefinitionVersionsInput, context: context)
        type = Types::ListLoggerDefinitionVersionsInput.new
        type.logger_definition_id = params[:logger_definition_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListLoggerDefinitionVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLoggerDefinitionVersionsOutput, context: context)
        type = Types::ListLoggerDefinitionVersionsOutput.new
        type.next_token = params[:next_token]
        type.versions = List____listOfVersionInformation.build(params[:versions], context: "#{context}[:versions]") unless params[:versions].nil?
        type
      end
    end

    module ListLoggerDefinitionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLoggerDefinitionsInput, context: context)
        type = Types::ListLoggerDefinitionsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListLoggerDefinitionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLoggerDefinitionsOutput, context: context)
        type = Types::ListLoggerDefinitionsOutput.new
        type.definitions = List____listOfDefinitionInformation.build(params[:definitions], context: "#{context}[:definitions]") unless params[:definitions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListResourceDefinitionVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResourceDefinitionVersionsInput, context: context)
        type = Types::ListResourceDefinitionVersionsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.resource_definition_id = params[:resource_definition_id]
        type
      end
    end

    module ListResourceDefinitionVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResourceDefinitionVersionsOutput, context: context)
        type = Types::ListResourceDefinitionVersionsOutput.new
        type.next_token = params[:next_token]
        type.versions = List____listOfVersionInformation.build(params[:versions], context: "#{context}[:versions]") unless params[:versions].nil?
        type
      end
    end

    module ListResourceDefinitionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResourceDefinitionsInput, context: context)
        type = Types::ListResourceDefinitionsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListResourceDefinitionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResourceDefinitionsOutput, context: context)
        type = Types::ListResourceDefinitionsOutput.new
        type.definitions = List____listOfDefinitionInformation.build(params[:definitions], context: "#{context}[:definitions]") unless params[:definitions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSubscriptionDefinitionVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSubscriptionDefinitionVersionsInput, context: context)
        type = Types::ListSubscriptionDefinitionVersionsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.subscription_definition_id = params[:subscription_definition_id]
        type
      end
    end

    module ListSubscriptionDefinitionVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSubscriptionDefinitionVersionsOutput, context: context)
        type = Types::ListSubscriptionDefinitionVersionsOutput.new
        type.next_token = params[:next_token]
        type.versions = List____listOfVersionInformation.build(params[:versions], context: "#{context}[:versions]") unless params[:versions].nil?
        type
      end
    end

    module ListSubscriptionDefinitionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSubscriptionDefinitionsInput, context: context)
        type = Types::ListSubscriptionDefinitionsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSubscriptionDefinitionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSubscriptionDefinitionsOutput, context: context)
        type = Types::ListSubscriptionDefinitionsOutput.new
        type.definitions = List____listOfDefinitionInformation.build(params[:definitions], context: "#{context}[:definitions]") unless params[:definitions].nil?
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
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module LocalDeviceResourceData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LocalDeviceResourceData, context: context)
        type = Types::LocalDeviceResourceData.new
        type.group_owner_setting = GroupOwnerSetting.build(params[:group_owner_setting], context: "#{context}[:group_owner_setting]") unless params[:group_owner_setting].nil?
        type.source_path = params[:source_path]
        type
      end
    end

    module LocalVolumeResourceData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LocalVolumeResourceData, context: context)
        type = Types::LocalVolumeResourceData.new
        type.destination_path = params[:destination_path]
        type.group_owner_setting = GroupOwnerSetting.build(params[:group_owner_setting], context: "#{context}[:group_owner_setting]") unless params[:group_owner_setting].nil?
        type.source_path = params[:source_path]
        type
      end
    end

    module Logger
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Logger, context: context)
        type = Types::Logger.new
        type.component = params[:component]
        type.id = params[:id]
        type.level = params[:level]
        type.space = params[:space]
        type.type = params[:type]
        type
      end
    end

    module LoggerDefinitionVersion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoggerDefinitionVersion, context: context)
        type = Types::LoggerDefinitionVersion.new
        type.loggers = List____listOfLogger.build(params[:loggers], context: "#{context}[:loggers]") unless params[:loggers].nil?
        type
      end
    end

    module ResetDeploymentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResetDeploymentsInput, context: context)
        type = Types::ResetDeploymentsInput.new
        type.amzn_client_token = params[:amzn_client_token]
        type.force = params[:force]
        type.group_id = params[:group_id]
        type
      end
    end

    module ResetDeploymentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResetDeploymentsOutput, context: context)
        type = Types::ResetDeploymentsOutput.new
        type.deployment_arn = params[:deployment_arn]
        type.deployment_id = params[:deployment_id]
        type
      end
    end

    module Resource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Resource, context: context)
        type = Types::Resource.new
        type.id = params[:id]
        type.name = params[:name]
        type.resource_data_container = ResourceDataContainer.build(params[:resource_data_container], context: "#{context}[:resource_data_container]") unless params[:resource_data_container].nil?
        type
      end
    end

    module ResourceAccessPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceAccessPolicy, context: context)
        type = Types::ResourceAccessPolicy.new
        type.permission = params[:permission]
        type.resource_id = params[:resource_id]
        type
      end
    end

    module ResourceDataContainer
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceDataContainer, context: context)
        type = Types::ResourceDataContainer.new
        type.local_device_resource_data = LocalDeviceResourceData.build(params[:local_device_resource_data], context: "#{context}[:local_device_resource_data]") unless params[:local_device_resource_data].nil?
        type.local_volume_resource_data = LocalVolumeResourceData.build(params[:local_volume_resource_data], context: "#{context}[:local_volume_resource_data]") unless params[:local_volume_resource_data].nil?
        type.s3_machine_learning_model_resource_data = S3MachineLearningModelResourceData.build(params[:s3_machine_learning_model_resource_data], context: "#{context}[:s3_machine_learning_model_resource_data]") unless params[:s3_machine_learning_model_resource_data].nil?
        type.sage_maker_machine_learning_model_resource_data = SageMakerMachineLearningModelResourceData.build(params[:sage_maker_machine_learning_model_resource_data], context: "#{context}[:sage_maker_machine_learning_model_resource_data]") unless params[:sage_maker_machine_learning_model_resource_data].nil?
        type.secrets_manager_secret_resource_data = SecretsManagerSecretResourceData.build(params[:secrets_manager_secret_resource_data], context: "#{context}[:secrets_manager_secret_resource_data]") unless params[:secrets_manager_secret_resource_data].nil?
        type
      end
    end

    module ResourceDefinitionVersion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceDefinitionVersion, context: context)
        type = Types::ResourceDefinitionVersion.new
        type.resources = List____listOfResource.build(params[:resources], context: "#{context}[:resources]") unless params[:resources].nil?
        type
      end
    end

    module ResourceDownloadOwnerSetting
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceDownloadOwnerSetting, context: context)
        type = Types::ResourceDownloadOwnerSetting.new
        type.group_owner = params[:group_owner]
        type.group_permission = params[:group_permission]
        type
      end
    end

    module RuntimeConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RuntimeConfiguration, context: context)
        type = Types::RuntimeConfiguration.new
        type.telemetry_configuration = TelemetryConfiguration.build(params[:telemetry_configuration], context: "#{context}[:telemetry_configuration]") unless params[:telemetry_configuration].nil?
        type
      end
    end

    module S3MachineLearningModelResourceData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3MachineLearningModelResourceData, context: context)
        type = Types::S3MachineLearningModelResourceData.new
        type.destination_path = params[:destination_path]
        type.owner_setting = ResourceDownloadOwnerSetting.build(params[:owner_setting], context: "#{context}[:owner_setting]") unless params[:owner_setting].nil?
        type.s3_uri = params[:s3_uri]
        type
      end
    end

    module SageMakerMachineLearningModelResourceData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SageMakerMachineLearningModelResourceData, context: context)
        type = Types::SageMakerMachineLearningModelResourceData.new
        type.destination_path = params[:destination_path]
        type.owner_setting = ResourceDownloadOwnerSetting.build(params[:owner_setting], context: "#{context}[:owner_setting]") unless params[:owner_setting].nil?
        type.sage_maker_job_arn = params[:sage_maker_job_arn]
        type
      end
    end

    module SecretsManagerSecretResourceData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SecretsManagerSecretResourceData, context: context)
        type = Types::SecretsManagerSecretResourceData.new
        type.arn = params[:arn]
        type.additional_staging_labels_to_download = List____listOf__string.build(params[:additional_staging_labels_to_download], context: "#{context}[:additional_staging_labels_to_download]") unless params[:additional_staging_labels_to_download].nil?
        type
      end
    end

    module StartBulkDeploymentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartBulkDeploymentInput, context: context)
        type = Types::StartBulkDeploymentInput.new
        type.amzn_client_token = params[:amzn_client_token]
        type.execution_role_arn = params[:execution_role_arn]
        type.input_file_uri = params[:input_file_uri]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module StartBulkDeploymentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartBulkDeploymentOutput, context: context)
        type = Types::StartBulkDeploymentOutput.new
        type.bulk_deployment_arn = params[:bulk_deployment_arn]
        type.bulk_deployment_id = params[:bulk_deployment_id]
        type
      end
    end

    module StopBulkDeploymentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopBulkDeploymentInput, context: context)
        type = Types::StopBulkDeploymentInput.new
        type.bulk_deployment_id = params[:bulk_deployment_id]
        type
      end
    end

    module StopBulkDeploymentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopBulkDeploymentOutput, context: context)
        type = Types::StopBulkDeploymentOutput.new
        type
      end
    end

    module Subscription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Subscription, context: context)
        type = Types::Subscription.new
        type.id = params[:id]
        type.source = params[:source]
        type.subject = params[:subject]
        type.target = params[:target]
        type
      end
    end

    module SubscriptionDefinitionVersion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubscriptionDefinitionVersion, context: context)
        type = Types::SubscriptionDefinitionVersion.new
        type.subscriptions = List____listOfSubscription.build(params[:subscriptions], context: "#{context}[:subscriptions]") unless params[:subscriptions].nil?
        type
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module Tags
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TelemetryConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TelemetryConfiguration, context: context)
        type = Types::TelemetryConfiguration.new
        type.configuration_sync_status = params[:configuration_sync_status]
        type.telemetry = params[:telemetry]
        type
      end
    end

    module TelemetryConfigurationUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TelemetryConfigurationUpdate, context: context)
        type = Types::TelemetryConfigurationUpdate.new
        type.telemetry = params[:telemetry]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = List____listOf__string.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
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

    module UpdateConnectivityInfoInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateConnectivityInfoInput, context: context)
        type = Types::UpdateConnectivityInfoInput.new
        type.connectivity_info = List____listOfConnectivityInfo.build(params[:connectivity_info], context: "#{context}[:connectivity_info]") unless params[:connectivity_info].nil?
        type.thing_name = params[:thing_name]
        type
      end
    end

    module UpdateConnectivityInfoOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateConnectivityInfoOutput, context: context)
        type = Types::UpdateConnectivityInfoOutput.new
        type.message = params[:message]
        type.version = params[:version]
        type
      end
    end

    module UpdateConnectorDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateConnectorDefinitionInput, context: context)
        type = Types::UpdateConnectorDefinitionInput.new
        type.connector_definition_id = params[:connector_definition_id]
        type.name = params[:name]
        type
      end
    end

    module UpdateConnectorDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateConnectorDefinitionOutput, context: context)
        type = Types::UpdateConnectorDefinitionOutput.new
        type
      end
    end

    module UpdateCoreDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCoreDefinitionInput, context: context)
        type = Types::UpdateCoreDefinitionInput.new
        type.core_definition_id = params[:core_definition_id]
        type.name = params[:name]
        type
      end
    end

    module UpdateCoreDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCoreDefinitionOutput, context: context)
        type = Types::UpdateCoreDefinitionOutput.new
        type
      end
    end

    module UpdateDeviceDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDeviceDefinitionInput, context: context)
        type = Types::UpdateDeviceDefinitionInput.new
        type.device_definition_id = params[:device_definition_id]
        type.name = params[:name]
        type
      end
    end

    module UpdateDeviceDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDeviceDefinitionOutput, context: context)
        type = Types::UpdateDeviceDefinitionOutput.new
        type
      end
    end

    module UpdateFunctionDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFunctionDefinitionInput, context: context)
        type = Types::UpdateFunctionDefinitionInput.new
        type.function_definition_id = params[:function_definition_id]
        type.name = params[:name]
        type
      end
    end

    module UpdateFunctionDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFunctionDefinitionOutput, context: context)
        type = Types::UpdateFunctionDefinitionOutput.new
        type
      end
    end

    module UpdateGroupCertificateConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGroupCertificateConfigurationInput, context: context)
        type = Types::UpdateGroupCertificateConfigurationInput.new
        type.certificate_expiry_in_milliseconds = params[:certificate_expiry_in_milliseconds]
        type.group_id = params[:group_id]
        type
      end
    end

    module UpdateGroupCertificateConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGroupCertificateConfigurationOutput, context: context)
        type = Types::UpdateGroupCertificateConfigurationOutput.new
        type.certificate_authority_expiry_in_milliseconds = params[:certificate_authority_expiry_in_milliseconds]
        type.certificate_expiry_in_milliseconds = params[:certificate_expiry_in_milliseconds]
        type.group_id = params[:group_id]
        type
      end
    end

    module UpdateGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGroupInput, context: context)
        type = Types::UpdateGroupInput.new
        type.group_id = params[:group_id]
        type.name = params[:name]
        type
      end
    end

    module UpdateGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGroupOutput, context: context)
        type = Types::UpdateGroupOutput.new
        type
      end
    end

    module UpdateLoggerDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateLoggerDefinitionInput, context: context)
        type = Types::UpdateLoggerDefinitionInput.new
        type.logger_definition_id = params[:logger_definition_id]
        type.name = params[:name]
        type
      end
    end

    module UpdateLoggerDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateLoggerDefinitionOutput, context: context)
        type = Types::UpdateLoggerDefinitionOutput.new
        type
      end
    end

    module UpdateResourceDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateResourceDefinitionInput, context: context)
        type = Types::UpdateResourceDefinitionInput.new
        type.name = params[:name]
        type.resource_definition_id = params[:resource_definition_id]
        type
      end
    end

    module UpdateResourceDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateResourceDefinitionOutput, context: context)
        type = Types::UpdateResourceDefinitionOutput.new
        type
      end
    end

    module UpdateSubscriptionDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSubscriptionDefinitionInput, context: context)
        type = Types::UpdateSubscriptionDefinitionInput.new
        type.name = params[:name]
        type.subscription_definition_id = params[:subscription_definition_id]
        type
      end
    end

    module UpdateSubscriptionDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSubscriptionDefinitionOutput, context: context)
        type = Types::UpdateSubscriptionDefinitionOutput.new
        type
      end
    end

    module UpdateTargets
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module UpdateThingRuntimeConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateThingRuntimeConfigurationInput, context: context)
        type = Types::UpdateThingRuntimeConfigurationInput.new
        type.telemetry_configuration = TelemetryConfigurationUpdate.build(params[:telemetry_configuration], context: "#{context}[:telemetry_configuration]") unless params[:telemetry_configuration].nil?
        type.thing_name = params[:thing_name]
        type
      end
    end

    module UpdateThingRuntimeConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateThingRuntimeConfigurationOutput, context: context)
        type = Types::UpdateThingRuntimeConfigurationOutput.new
        type
      end
    end

    module VersionInformation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VersionInformation, context: context)
        type = Types::VersionInformation.new
        type.arn = params[:arn]
        type.creation_timestamp = params[:creation_timestamp]
        type.id = params[:id]
        type.version = params[:version]
        type
      end
    end

    module List____listOfConnectivityInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConnectivityInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfConnector
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Connector.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfCore
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Core.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfDefinitionInformation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DefinitionInformation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfDevice
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Device.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfFunction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Function.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfGroupCertificateAuthorityProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GroupCertificateAuthorityProperties.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfGroupInformation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GroupInformation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfLogger
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Logger.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfResource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Resource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfResourceAccessPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourceAccessPolicy.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfSubscription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Subscription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfVersionInformation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VersionInformation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOf__string
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Map____mapOf__string
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

  end
end
