# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Greengrass
  module Validators

    class AssociateRoleToGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateRoleToGroupInput, context: context)
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class AssociateRoleToGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateRoleToGroupOutput, context: context)
        Hearth::Validator.validate!(input[:associated_at], ::String, context: "#{context}[:associated_at]")
      end
    end

    class AssociateServiceRoleToAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateServiceRoleToAccountInput, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class AssociateServiceRoleToAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateServiceRoleToAccountOutput, context: context)
        Hearth::Validator.validate!(input[:associated_at], ::String, context: "#{context}[:associated_at]")
      end
    end

    class BadRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BadRequestException, context: context)
        Validators::ErrorDetails.validate!(input[:error_details], context: "#{context}[:error_details]") unless input[:error_details].nil?
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BulkDeployment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BulkDeployment, context: context)
        Hearth::Validator.validate!(input[:bulk_deployment_arn], ::String, context: "#{context}[:bulk_deployment_arn]")
        Hearth::Validator.validate!(input[:bulk_deployment_id], ::String, context: "#{context}[:bulk_deployment_id]")
        Hearth::Validator.validate!(input[:created_at], ::String, context: "#{context}[:created_at]")
      end
    end

    class BulkDeploymentMetrics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BulkDeploymentMetrics, context: context)
        Hearth::Validator.validate!(input[:invalid_input_records], ::Integer, context: "#{context}[:invalid_input_records]")
        Hearth::Validator.validate!(input[:records_processed], ::Integer, context: "#{context}[:records_processed]")
        Hearth::Validator.validate!(input[:retry_attempts], ::Integer, context: "#{context}[:retry_attempts]")
      end
    end

    class BulkDeploymentResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BulkDeploymentResult, context: context)
        Hearth::Validator.validate!(input[:created_at], ::String, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:deployment_arn], ::String, context: "#{context}[:deployment_arn]")
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
        Hearth::Validator.validate!(input[:deployment_status], ::String, context: "#{context}[:deployment_status]")
        Hearth::Validator.validate!(input[:deployment_type], ::String, context: "#{context}[:deployment_type]")
        Validators::ErrorDetails.validate!(input[:error_details], context: "#{context}[:error_details]") unless input[:error_details].nil?
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
        Hearth::Validator.validate!(input[:group_arn], ::String, context: "#{context}[:group_arn]")
      end
    end

    class BulkDeploymentResults
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BulkDeploymentResult.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BulkDeployments
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BulkDeployment.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConnectivityInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectivityInfo, context: context)
        Hearth::Validator.validate!(input[:host_address], ::String, context: "#{context}[:host_address]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:metadata], ::String, context: "#{context}[:metadata]")
        Hearth::Validator.validate!(input[:port_number], ::Integer, context: "#{context}[:port_number]")
      end
    end

    class Connector
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Connector, context: context)
        Hearth::Validator.validate!(input[:connector_arn], ::String, context: "#{context}[:connector_arn]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Validators::Map____mapOf__string.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
      end
    end

    class ConnectorDefinitionVersion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectorDefinitionVersion, context: context)
        Validators::List____listOfConnector.validate!(input[:connectors], context: "#{context}[:connectors]") unless input[:connectors].nil?
      end
    end

    class Core
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Core, context: context)
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:sync_shadow], ::TrueClass, ::FalseClass, context: "#{context}[:sync_shadow]")
        Hearth::Validator.validate!(input[:thing_arn], ::String, context: "#{context}[:thing_arn]")
      end
    end

    class CoreDefinitionVersion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CoreDefinitionVersion, context: context)
        Validators::List____listOfCore.validate!(input[:cores], context: "#{context}[:cores]") unless input[:cores].nil?
      end
    end

    class CreateConnectorDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConnectorDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:amzn_client_token], ::String, context: "#{context}[:amzn_client_token]")
        Validators::ConnectorDefinitionVersion.validate!(input[:initial_version], context: "#{context}[:initial_version]") unless input[:initial_version].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateConnectorDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConnectorDefinitionOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_timestamp], ::String, context: "#{context}[:creation_timestamp]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:last_updated_timestamp], ::String, context: "#{context}[:last_updated_timestamp]")
        Hearth::Validator.validate!(input[:latest_version], ::String, context: "#{context}[:latest_version]")
        Hearth::Validator.validate!(input[:latest_version_arn], ::String, context: "#{context}[:latest_version_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class CreateConnectorDefinitionVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConnectorDefinitionVersionInput, context: context)
        Hearth::Validator.validate!(input[:amzn_client_token], ::String, context: "#{context}[:amzn_client_token]")
        Hearth::Validator.validate!(input[:connector_definition_id], ::String, context: "#{context}[:connector_definition_id]")
        Validators::List____listOfConnector.validate!(input[:connectors], context: "#{context}[:connectors]") unless input[:connectors].nil?
      end
    end

    class CreateConnectorDefinitionVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConnectorDefinitionVersionOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_timestamp], ::String, context: "#{context}[:creation_timestamp]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class CreateCoreDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCoreDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:amzn_client_token], ::String, context: "#{context}[:amzn_client_token]")
        Validators::CoreDefinitionVersion.validate!(input[:initial_version], context: "#{context}[:initial_version]") unless input[:initial_version].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateCoreDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCoreDefinitionOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_timestamp], ::String, context: "#{context}[:creation_timestamp]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:last_updated_timestamp], ::String, context: "#{context}[:last_updated_timestamp]")
        Hearth::Validator.validate!(input[:latest_version], ::String, context: "#{context}[:latest_version]")
        Hearth::Validator.validate!(input[:latest_version_arn], ::String, context: "#{context}[:latest_version_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class CreateCoreDefinitionVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCoreDefinitionVersionInput, context: context)
        Hearth::Validator.validate!(input[:amzn_client_token], ::String, context: "#{context}[:amzn_client_token]")
        Hearth::Validator.validate!(input[:core_definition_id], ::String, context: "#{context}[:core_definition_id]")
        Validators::List____listOfCore.validate!(input[:cores], context: "#{context}[:cores]") unless input[:cores].nil?
      end
    end

    class CreateCoreDefinitionVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCoreDefinitionVersionOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_timestamp], ::String, context: "#{context}[:creation_timestamp]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class CreateDeploymentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDeploymentInput, context: context)
        Hearth::Validator.validate!(input[:amzn_client_token], ::String, context: "#{context}[:amzn_client_token]")
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
        Hearth::Validator.validate!(input[:deployment_type], ::String, context: "#{context}[:deployment_type]")
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
        Hearth::Validator.validate!(input[:group_version_id], ::String, context: "#{context}[:group_version_id]")
      end
    end

    class CreateDeploymentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDeploymentOutput, context: context)
        Hearth::Validator.validate!(input[:deployment_arn], ::String, context: "#{context}[:deployment_arn]")
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
      end
    end

    class CreateDeviceDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDeviceDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:amzn_client_token], ::String, context: "#{context}[:amzn_client_token]")
        Validators::DeviceDefinitionVersion.validate!(input[:initial_version], context: "#{context}[:initial_version]") unless input[:initial_version].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateDeviceDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDeviceDefinitionOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_timestamp], ::String, context: "#{context}[:creation_timestamp]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:last_updated_timestamp], ::String, context: "#{context}[:last_updated_timestamp]")
        Hearth::Validator.validate!(input[:latest_version], ::String, context: "#{context}[:latest_version]")
        Hearth::Validator.validate!(input[:latest_version_arn], ::String, context: "#{context}[:latest_version_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class CreateDeviceDefinitionVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDeviceDefinitionVersionInput, context: context)
        Hearth::Validator.validate!(input[:amzn_client_token], ::String, context: "#{context}[:amzn_client_token]")
        Hearth::Validator.validate!(input[:device_definition_id], ::String, context: "#{context}[:device_definition_id]")
        Validators::List____listOfDevice.validate!(input[:devices], context: "#{context}[:devices]") unless input[:devices].nil?
      end
    end

    class CreateDeviceDefinitionVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDeviceDefinitionVersionOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_timestamp], ::String, context: "#{context}[:creation_timestamp]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class CreateFunctionDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFunctionDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:amzn_client_token], ::String, context: "#{context}[:amzn_client_token]")
        Validators::FunctionDefinitionVersion.validate!(input[:initial_version], context: "#{context}[:initial_version]") unless input[:initial_version].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateFunctionDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFunctionDefinitionOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_timestamp], ::String, context: "#{context}[:creation_timestamp]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:last_updated_timestamp], ::String, context: "#{context}[:last_updated_timestamp]")
        Hearth::Validator.validate!(input[:latest_version], ::String, context: "#{context}[:latest_version]")
        Hearth::Validator.validate!(input[:latest_version_arn], ::String, context: "#{context}[:latest_version_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class CreateFunctionDefinitionVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFunctionDefinitionVersionInput, context: context)
        Hearth::Validator.validate!(input[:amzn_client_token], ::String, context: "#{context}[:amzn_client_token]")
        Validators::FunctionDefaultConfig.validate!(input[:default_config], context: "#{context}[:default_config]") unless input[:default_config].nil?
        Hearth::Validator.validate!(input[:function_definition_id], ::String, context: "#{context}[:function_definition_id]")
        Validators::List____listOfFunction.validate!(input[:functions], context: "#{context}[:functions]") unless input[:functions].nil?
      end
    end

    class CreateFunctionDefinitionVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFunctionDefinitionVersionOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_timestamp], ::String, context: "#{context}[:creation_timestamp]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class CreateGroupCertificateAuthorityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGroupCertificateAuthorityInput, context: context)
        Hearth::Validator.validate!(input[:amzn_client_token], ::String, context: "#{context}[:amzn_client_token]")
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
      end
    end

    class CreateGroupCertificateAuthorityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGroupCertificateAuthorityOutput, context: context)
        Hearth::Validator.validate!(input[:group_certificate_authority_arn], ::String, context: "#{context}[:group_certificate_authority_arn]")
      end
    end

    class CreateGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGroupInput, context: context)
        Hearth::Validator.validate!(input[:amzn_client_token], ::String, context: "#{context}[:amzn_client_token]")
        Validators::GroupVersion.validate!(input[:initial_version], context: "#{context}[:initial_version]") unless input[:initial_version].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGroupOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_timestamp], ::String, context: "#{context}[:creation_timestamp]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:last_updated_timestamp], ::String, context: "#{context}[:last_updated_timestamp]")
        Hearth::Validator.validate!(input[:latest_version], ::String, context: "#{context}[:latest_version]")
        Hearth::Validator.validate!(input[:latest_version_arn], ::String, context: "#{context}[:latest_version_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class CreateGroupVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGroupVersionInput, context: context)
        Hearth::Validator.validate!(input[:amzn_client_token], ::String, context: "#{context}[:amzn_client_token]")
        Hearth::Validator.validate!(input[:connector_definition_version_arn], ::String, context: "#{context}[:connector_definition_version_arn]")
        Hearth::Validator.validate!(input[:core_definition_version_arn], ::String, context: "#{context}[:core_definition_version_arn]")
        Hearth::Validator.validate!(input[:device_definition_version_arn], ::String, context: "#{context}[:device_definition_version_arn]")
        Hearth::Validator.validate!(input[:function_definition_version_arn], ::String, context: "#{context}[:function_definition_version_arn]")
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
        Hearth::Validator.validate!(input[:logger_definition_version_arn], ::String, context: "#{context}[:logger_definition_version_arn]")
        Hearth::Validator.validate!(input[:resource_definition_version_arn], ::String, context: "#{context}[:resource_definition_version_arn]")
        Hearth::Validator.validate!(input[:subscription_definition_version_arn], ::String, context: "#{context}[:subscription_definition_version_arn]")
      end
    end

    class CreateGroupVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGroupVersionOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_timestamp], ::String, context: "#{context}[:creation_timestamp]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class CreateLoggerDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLoggerDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:amzn_client_token], ::String, context: "#{context}[:amzn_client_token]")
        Validators::LoggerDefinitionVersion.validate!(input[:initial_version], context: "#{context}[:initial_version]") unless input[:initial_version].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateLoggerDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLoggerDefinitionOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_timestamp], ::String, context: "#{context}[:creation_timestamp]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:last_updated_timestamp], ::String, context: "#{context}[:last_updated_timestamp]")
        Hearth::Validator.validate!(input[:latest_version], ::String, context: "#{context}[:latest_version]")
        Hearth::Validator.validate!(input[:latest_version_arn], ::String, context: "#{context}[:latest_version_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class CreateLoggerDefinitionVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLoggerDefinitionVersionInput, context: context)
        Hearth::Validator.validate!(input[:amzn_client_token], ::String, context: "#{context}[:amzn_client_token]")
        Hearth::Validator.validate!(input[:logger_definition_id], ::String, context: "#{context}[:logger_definition_id]")
        Validators::List____listOfLogger.validate!(input[:loggers], context: "#{context}[:loggers]") unless input[:loggers].nil?
      end
    end

    class CreateLoggerDefinitionVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLoggerDefinitionVersionOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_timestamp], ::String, context: "#{context}[:creation_timestamp]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class CreateResourceDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateResourceDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:amzn_client_token], ::String, context: "#{context}[:amzn_client_token]")
        Validators::ResourceDefinitionVersion.validate!(input[:initial_version], context: "#{context}[:initial_version]") unless input[:initial_version].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateResourceDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateResourceDefinitionOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_timestamp], ::String, context: "#{context}[:creation_timestamp]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:last_updated_timestamp], ::String, context: "#{context}[:last_updated_timestamp]")
        Hearth::Validator.validate!(input[:latest_version], ::String, context: "#{context}[:latest_version]")
        Hearth::Validator.validate!(input[:latest_version_arn], ::String, context: "#{context}[:latest_version_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class CreateResourceDefinitionVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateResourceDefinitionVersionInput, context: context)
        Hearth::Validator.validate!(input[:amzn_client_token], ::String, context: "#{context}[:amzn_client_token]")
        Hearth::Validator.validate!(input[:resource_definition_id], ::String, context: "#{context}[:resource_definition_id]")
        Validators::List____listOfResource.validate!(input[:resources], context: "#{context}[:resources]") unless input[:resources].nil?
      end
    end

    class CreateResourceDefinitionVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateResourceDefinitionVersionOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_timestamp], ::String, context: "#{context}[:creation_timestamp]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class CreateSoftwareUpdateJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSoftwareUpdateJobInput, context: context)
        Hearth::Validator.validate!(input[:amzn_client_token], ::String, context: "#{context}[:amzn_client_token]")
        Hearth::Validator.validate!(input[:s3_url_signer_role], ::String, context: "#{context}[:s3_url_signer_role]")
        Hearth::Validator.validate!(input[:software_to_update], ::String, context: "#{context}[:software_to_update]")
        Hearth::Validator.validate!(input[:update_agent_log_level], ::String, context: "#{context}[:update_agent_log_level]")
        Validators::UpdateTargets.validate!(input[:update_targets], context: "#{context}[:update_targets]") unless input[:update_targets].nil?
        Hearth::Validator.validate!(input[:update_targets_architecture], ::String, context: "#{context}[:update_targets_architecture]")
        Hearth::Validator.validate!(input[:update_targets_operating_system], ::String, context: "#{context}[:update_targets_operating_system]")
      end
    end

    class CreateSoftwareUpdateJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSoftwareUpdateJobOutput, context: context)
        Hearth::Validator.validate!(input[:iot_job_arn], ::String, context: "#{context}[:iot_job_arn]")
        Hearth::Validator.validate!(input[:iot_job_id], ::String, context: "#{context}[:iot_job_id]")
        Hearth::Validator.validate!(input[:platform_software_version], ::String, context: "#{context}[:platform_software_version]")
      end
    end

    class CreateSubscriptionDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSubscriptionDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:amzn_client_token], ::String, context: "#{context}[:amzn_client_token]")
        Validators::SubscriptionDefinitionVersion.validate!(input[:initial_version], context: "#{context}[:initial_version]") unless input[:initial_version].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateSubscriptionDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSubscriptionDefinitionOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_timestamp], ::String, context: "#{context}[:creation_timestamp]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:last_updated_timestamp], ::String, context: "#{context}[:last_updated_timestamp]")
        Hearth::Validator.validate!(input[:latest_version], ::String, context: "#{context}[:latest_version]")
        Hearth::Validator.validate!(input[:latest_version_arn], ::String, context: "#{context}[:latest_version_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class CreateSubscriptionDefinitionVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSubscriptionDefinitionVersionInput, context: context)
        Hearth::Validator.validate!(input[:amzn_client_token], ::String, context: "#{context}[:amzn_client_token]")
        Hearth::Validator.validate!(input[:subscription_definition_id], ::String, context: "#{context}[:subscription_definition_id]")
        Validators::List____listOfSubscription.validate!(input[:subscriptions], context: "#{context}[:subscriptions]") unless input[:subscriptions].nil?
      end
    end

    class CreateSubscriptionDefinitionVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSubscriptionDefinitionVersionOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_timestamp], ::String, context: "#{context}[:creation_timestamp]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class DefinitionInformation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DefinitionInformation, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_timestamp], ::String, context: "#{context}[:creation_timestamp]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:last_updated_timestamp], ::String, context: "#{context}[:last_updated_timestamp]")
        Hearth::Validator.validate!(input[:latest_version], ::String, context: "#{context}[:latest_version]")
        Hearth::Validator.validate!(input[:latest_version_arn], ::String, context: "#{context}[:latest_version_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class DeleteConnectorDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConnectorDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:connector_definition_id], ::String, context: "#{context}[:connector_definition_id]")
      end
    end

    class DeleteConnectorDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConnectorDefinitionOutput, context: context)
      end
    end

    class DeleteCoreDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCoreDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:core_definition_id], ::String, context: "#{context}[:core_definition_id]")
      end
    end

    class DeleteCoreDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCoreDefinitionOutput, context: context)
      end
    end

    class DeleteDeviceDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDeviceDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:device_definition_id], ::String, context: "#{context}[:device_definition_id]")
      end
    end

    class DeleteDeviceDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDeviceDefinitionOutput, context: context)
      end
    end

    class DeleteFunctionDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFunctionDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:function_definition_id], ::String, context: "#{context}[:function_definition_id]")
      end
    end

    class DeleteFunctionDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFunctionDefinitionOutput, context: context)
      end
    end

    class DeleteGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteGroupInput, context: context)
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
      end
    end

    class DeleteGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteGroupOutput, context: context)
      end
    end

    class DeleteLoggerDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLoggerDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:logger_definition_id], ::String, context: "#{context}[:logger_definition_id]")
      end
    end

    class DeleteLoggerDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLoggerDefinitionOutput, context: context)
      end
    end

    class DeleteResourceDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResourceDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:resource_definition_id], ::String, context: "#{context}[:resource_definition_id]")
      end
    end

    class DeleteResourceDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResourceDefinitionOutput, context: context)
      end
    end

    class DeleteSubscriptionDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSubscriptionDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:subscription_definition_id], ::String, context: "#{context}[:subscription_definition_id]")
      end
    end

    class DeleteSubscriptionDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSubscriptionDefinitionOutput, context: context)
      end
    end

    class Deployment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Deployment, context: context)
        Hearth::Validator.validate!(input[:created_at], ::String, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:deployment_arn], ::String, context: "#{context}[:deployment_arn]")
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
        Hearth::Validator.validate!(input[:deployment_type], ::String, context: "#{context}[:deployment_type]")
        Hearth::Validator.validate!(input[:group_arn], ::String, context: "#{context}[:group_arn]")
      end
    end

    class Deployments
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Deployment.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Device
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Device, context: context)
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:sync_shadow], ::TrueClass, ::FalseClass, context: "#{context}[:sync_shadow]")
        Hearth::Validator.validate!(input[:thing_arn], ::String, context: "#{context}[:thing_arn]")
      end
    end

    class DeviceDefinitionVersion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeviceDefinitionVersion, context: context)
        Validators::List____listOfDevice.validate!(input[:devices], context: "#{context}[:devices]") unless input[:devices].nil?
      end
    end

    class DisassociateRoleFromGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateRoleFromGroupInput, context: context)
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
      end
    end

    class DisassociateRoleFromGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateRoleFromGroupOutput, context: context)
        Hearth::Validator.validate!(input[:disassociated_at], ::String, context: "#{context}[:disassociated_at]")
      end
    end

    class DisassociateServiceRoleFromAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateServiceRoleFromAccountInput, context: context)
      end
    end

    class DisassociateServiceRoleFromAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateServiceRoleFromAccountOutput, context: context)
        Hearth::Validator.validate!(input[:disassociated_at], ::String, context: "#{context}[:disassociated_at]")
      end
    end

    class ErrorDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ErrorDetail, context: context)
        Hearth::Validator.validate!(input[:detailed_error_code], ::String, context: "#{context}[:detailed_error_code]")
        Hearth::Validator.validate!(input[:detailed_error_message], ::String, context: "#{context}[:detailed_error_message]")
      end
    end

    class ErrorDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ErrorDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Function
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Function, context: context)
        Hearth::Validator.validate!(input[:function_arn], ::String, context: "#{context}[:function_arn]")
        Validators::FunctionConfiguration.validate!(input[:function_configuration], context: "#{context}[:function_configuration]") unless input[:function_configuration].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class FunctionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FunctionConfiguration, context: context)
        Hearth::Validator.validate!(input[:encoding_type], ::String, context: "#{context}[:encoding_type]")
        Validators::FunctionConfigurationEnvironment.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
        Hearth::Validator.validate!(input[:exec_args], ::String, context: "#{context}[:exec_args]")
        Hearth::Validator.validate!(input[:executable], ::String, context: "#{context}[:executable]")
        Hearth::Validator.validate!(input[:memory_size], ::Integer, context: "#{context}[:memory_size]")
        Hearth::Validator.validate!(input[:pinned], ::TrueClass, ::FalseClass, context: "#{context}[:pinned]")
        Hearth::Validator.validate!(input[:timeout], ::Integer, context: "#{context}[:timeout]")
      end
    end

    class FunctionConfigurationEnvironment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FunctionConfigurationEnvironment, context: context)
        Hearth::Validator.validate!(input[:access_sysfs], ::TrueClass, ::FalseClass, context: "#{context}[:access_sysfs]")
        Validators::FunctionExecutionConfig.validate!(input[:execution], context: "#{context}[:execution]") unless input[:execution].nil?
        Validators::List____listOfResourceAccessPolicy.validate!(input[:resource_access_policies], context: "#{context}[:resource_access_policies]") unless input[:resource_access_policies].nil?
        Validators::Map____mapOf__string.validate!(input[:variables], context: "#{context}[:variables]") unless input[:variables].nil?
      end
    end

    class FunctionDefaultConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FunctionDefaultConfig, context: context)
        Validators::FunctionDefaultExecutionConfig.validate!(input[:execution], context: "#{context}[:execution]") unless input[:execution].nil?
      end
    end

    class FunctionDefaultExecutionConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FunctionDefaultExecutionConfig, context: context)
        Hearth::Validator.validate!(input[:isolation_mode], ::String, context: "#{context}[:isolation_mode]")
        Validators::FunctionRunAsConfig.validate!(input[:run_as], context: "#{context}[:run_as]") unless input[:run_as].nil?
      end
    end

    class FunctionDefinitionVersion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FunctionDefinitionVersion, context: context)
        Validators::FunctionDefaultConfig.validate!(input[:default_config], context: "#{context}[:default_config]") unless input[:default_config].nil?
        Validators::List____listOfFunction.validate!(input[:functions], context: "#{context}[:functions]") unless input[:functions].nil?
      end
    end

    class FunctionExecutionConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FunctionExecutionConfig, context: context)
        Hearth::Validator.validate!(input[:isolation_mode], ::String, context: "#{context}[:isolation_mode]")
        Validators::FunctionRunAsConfig.validate!(input[:run_as], context: "#{context}[:run_as]") unless input[:run_as].nil?
      end
    end

    class FunctionRunAsConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FunctionRunAsConfig, context: context)
        Hearth::Validator.validate!(input[:gid], ::Integer, context: "#{context}[:gid]")
        Hearth::Validator.validate!(input[:uid], ::Integer, context: "#{context}[:uid]")
      end
    end

    class GetAssociatedRoleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAssociatedRoleInput, context: context)
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
      end
    end

    class GetAssociatedRoleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAssociatedRoleOutput, context: context)
        Hearth::Validator.validate!(input[:associated_at], ::String, context: "#{context}[:associated_at]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class GetBulkDeploymentStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBulkDeploymentStatusInput, context: context)
        Hearth::Validator.validate!(input[:bulk_deployment_id], ::String, context: "#{context}[:bulk_deployment_id]")
      end
    end

    class GetBulkDeploymentStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBulkDeploymentStatusOutput, context: context)
        Validators::BulkDeploymentMetrics.validate!(input[:bulk_deployment_metrics], context: "#{context}[:bulk_deployment_metrics]") unless input[:bulk_deployment_metrics].nil?
        Hearth::Validator.validate!(input[:bulk_deployment_status], ::String, context: "#{context}[:bulk_deployment_status]")
        Hearth::Validator.validate!(input[:created_at], ::String, context: "#{context}[:created_at]")
        Validators::ErrorDetails.validate!(input[:error_details], context: "#{context}[:error_details]") unless input[:error_details].nil?
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class GetConnectivityInfoInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConnectivityInfoInput, context: context)
        Hearth::Validator.validate!(input[:thing_name], ::String, context: "#{context}[:thing_name]")
      end
    end

    class GetConnectivityInfoOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConnectivityInfoOutput, context: context)
        Validators::List____listOfConnectivityInfo.validate!(input[:connectivity_info], context: "#{context}[:connectivity_info]") unless input[:connectivity_info].nil?
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class GetConnectorDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConnectorDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:connector_definition_id], ::String, context: "#{context}[:connector_definition_id]")
      end
    end

    class GetConnectorDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConnectorDefinitionOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_timestamp], ::String, context: "#{context}[:creation_timestamp]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:last_updated_timestamp], ::String, context: "#{context}[:last_updated_timestamp]")
        Hearth::Validator.validate!(input[:latest_version], ::String, context: "#{context}[:latest_version]")
        Hearth::Validator.validate!(input[:latest_version_arn], ::String, context: "#{context}[:latest_version_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class GetConnectorDefinitionVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConnectorDefinitionVersionInput, context: context)
        Hearth::Validator.validate!(input[:connector_definition_id], ::String, context: "#{context}[:connector_definition_id]")
        Hearth::Validator.validate!(input[:connector_definition_version_id], ::String, context: "#{context}[:connector_definition_version_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetConnectorDefinitionVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConnectorDefinitionVersionOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_timestamp], ::String, context: "#{context}[:creation_timestamp]")
        Validators::ConnectorDefinitionVersion.validate!(input[:definition], context: "#{context}[:definition]") unless input[:definition].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class GetCoreDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCoreDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:core_definition_id], ::String, context: "#{context}[:core_definition_id]")
      end
    end

    class GetCoreDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCoreDefinitionOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_timestamp], ::String, context: "#{context}[:creation_timestamp]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:last_updated_timestamp], ::String, context: "#{context}[:last_updated_timestamp]")
        Hearth::Validator.validate!(input[:latest_version], ::String, context: "#{context}[:latest_version]")
        Hearth::Validator.validate!(input[:latest_version_arn], ::String, context: "#{context}[:latest_version_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class GetCoreDefinitionVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCoreDefinitionVersionInput, context: context)
        Hearth::Validator.validate!(input[:core_definition_id], ::String, context: "#{context}[:core_definition_id]")
        Hearth::Validator.validate!(input[:core_definition_version_id], ::String, context: "#{context}[:core_definition_version_id]")
      end
    end

    class GetCoreDefinitionVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCoreDefinitionVersionOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_timestamp], ::String, context: "#{context}[:creation_timestamp]")
        Validators::CoreDefinitionVersion.validate!(input[:definition], context: "#{context}[:definition]") unless input[:definition].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class GetDeploymentStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeploymentStatusInput, context: context)
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
      end
    end

    class GetDeploymentStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeploymentStatusOutput, context: context)
        Hearth::Validator.validate!(input[:deployment_status], ::String, context: "#{context}[:deployment_status]")
        Hearth::Validator.validate!(input[:deployment_type], ::String, context: "#{context}[:deployment_type]")
        Validators::ErrorDetails.validate!(input[:error_details], context: "#{context}[:error_details]") unless input[:error_details].nil?
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
        Hearth::Validator.validate!(input[:updated_at], ::String, context: "#{context}[:updated_at]")
      end
    end

    class GetDeviceDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeviceDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:device_definition_id], ::String, context: "#{context}[:device_definition_id]")
      end
    end

    class GetDeviceDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeviceDefinitionOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_timestamp], ::String, context: "#{context}[:creation_timestamp]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:last_updated_timestamp], ::String, context: "#{context}[:last_updated_timestamp]")
        Hearth::Validator.validate!(input[:latest_version], ::String, context: "#{context}[:latest_version]")
        Hearth::Validator.validate!(input[:latest_version_arn], ::String, context: "#{context}[:latest_version_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class GetDeviceDefinitionVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeviceDefinitionVersionInput, context: context)
        Hearth::Validator.validate!(input[:device_definition_id], ::String, context: "#{context}[:device_definition_id]")
        Hearth::Validator.validate!(input[:device_definition_version_id], ::String, context: "#{context}[:device_definition_version_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetDeviceDefinitionVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeviceDefinitionVersionOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_timestamp], ::String, context: "#{context}[:creation_timestamp]")
        Validators::DeviceDefinitionVersion.validate!(input[:definition], context: "#{context}[:definition]") unless input[:definition].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class GetFunctionDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFunctionDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:function_definition_id], ::String, context: "#{context}[:function_definition_id]")
      end
    end

    class GetFunctionDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFunctionDefinitionOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_timestamp], ::String, context: "#{context}[:creation_timestamp]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:last_updated_timestamp], ::String, context: "#{context}[:last_updated_timestamp]")
        Hearth::Validator.validate!(input[:latest_version], ::String, context: "#{context}[:latest_version]")
        Hearth::Validator.validate!(input[:latest_version_arn], ::String, context: "#{context}[:latest_version_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class GetFunctionDefinitionVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFunctionDefinitionVersionInput, context: context)
        Hearth::Validator.validate!(input[:function_definition_id], ::String, context: "#{context}[:function_definition_id]")
        Hearth::Validator.validate!(input[:function_definition_version_id], ::String, context: "#{context}[:function_definition_version_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetFunctionDefinitionVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFunctionDefinitionVersionOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_timestamp], ::String, context: "#{context}[:creation_timestamp]")
        Validators::FunctionDefinitionVersion.validate!(input[:definition], context: "#{context}[:definition]") unless input[:definition].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class GetGroupCertificateAuthorityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGroupCertificateAuthorityInput, context: context)
        Hearth::Validator.validate!(input[:certificate_authority_id], ::String, context: "#{context}[:certificate_authority_id]")
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
      end
    end

    class GetGroupCertificateAuthorityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGroupCertificateAuthorityOutput, context: context)
        Hearth::Validator.validate!(input[:group_certificate_authority_arn], ::String, context: "#{context}[:group_certificate_authority_arn]")
        Hearth::Validator.validate!(input[:group_certificate_authority_id], ::String, context: "#{context}[:group_certificate_authority_id]")
        Hearth::Validator.validate!(input[:pem_encoded_certificate], ::String, context: "#{context}[:pem_encoded_certificate]")
      end
    end

    class GetGroupCertificateConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGroupCertificateConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
      end
    end

    class GetGroupCertificateConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGroupCertificateConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:certificate_authority_expiry_in_milliseconds], ::String, context: "#{context}[:certificate_authority_expiry_in_milliseconds]")
        Hearth::Validator.validate!(input[:certificate_expiry_in_milliseconds], ::String, context: "#{context}[:certificate_expiry_in_milliseconds]")
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
      end
    end

    class GetGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGroupInput, context: context)
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
      end
    end

    class GetGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGroupOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_timestamp], ::String, context: "#{context}[:creation_timestamp]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:last_updated_timestamp], ::String, context: "#{context}[:last_updated_timestamp]")
        Hearth::Validator.validate!(input[:latest_version], ::String, context: "#{context}[:latest_version]")
        Hearth::Validator.validate!(input[:latest_version_arn], ::String, context: "#{context}[:latest_version_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class GetGroupVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGroupVersionInput, context: context)
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
        Hearth::Validator.validate!(input[:group_version_id], ::String, context: "#{context}[:group_version_id]")
      end
    end

    class GetGroupVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGroupVersionOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_timestamp], ::String, context: "#{context}[:creation_timestamp]")
        Validators::GroupVersion.validate!(input[:definition], context: "#{context}[:definition]") unless input[:definition].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class GetLoggerDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLoggerDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:logger_definition_id], ::String, context: "#{context}[:logger_definition_id]")
      end
    end

    class GetLoggerDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLoggerDefinitionOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_timestamp], ::String, context: "#{context}[:creation_timestamp]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:last_updated_timestamp], ::String, context: "#{context}[:last_updated_timestamp]")
        Hearth::Validator.validate!(input[:latest_version], ::String, context: "#{context}[:latest_version]")
        Hearth::Validator.validate!(input[:latest_version_arn], ::String, context: "#{context}[:latest_version_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class GetLoggerDefinitionVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLoggerDefinitionVersionInput, context: context)
        Hearth::Validator.validate!(input[:logger_definition_id], ::String, context: "#{context}[:logger_definition_id]")
        Hearth::Validator.validate!(input[:logger_definition_version_id], ::String, context: "#{context}[:logger_definition_version_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetLoggerDefinitionVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLoggerDefinitionVersionOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_timestamp], ::String, context: "#{context}[:creation_timestamp]")
        Validators::LoggerDefinitionVersion.validate!(input[:definition], context: "#{context}[:definition]") unless input[:definition].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class GetResourceDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResourceDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:resource_definition_id], ::String, context: "#{context}[:resource_definition_id]")
      end
    end

    class GetResourceDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResourceDefinitionOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_timestamp], ::String, context: "#{context}[:creation_timestamp]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:last_updated_timestamp], ::String, context: "#{context}[:last_updated_timestamp]")
        Hearth::Validator.validate!(input[:latest_version], ::String, context: "#{context}[:latest_version]")
        Hearth::Validator.validate!(input[:latest_version_arn], ::String, context: "#{context}[:latest_version_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class GetResourceDefinitionVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResourceDefinitionVersionInput, context: context)
        Hearth::Validator.validate!(input[:resource_definition_id], ::String, context: "#{context}[:resource_definition_id]")
        Hearth::Validator.validate!(input[:resource_definition_version_id], ::String, context: "#{context}[:resource_definition_version_id]")
      end
    end

    class GetResourceDefinitionVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResourceDefinitionVersionOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_timestamp], ::String, context: "#{context}[:creation_timestamp]")
        Validators::ResourceDefinitionVersion.validate!(input[:definition], context: "#{context}[:definition]") unless input[:definition].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class GetServiceRoleForAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetServiceRoleForAccountInput, context: context)
      end
    end

    class GetServiceRoleForAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetServiceRoleForAccountOutput, context: context)
        Hearth::Validator.validate!(input[:associated_at], ::String, context: "#{context}[:associated_at]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class GetSubscriptionDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSubscriptionDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:subscription_definition_id], ::String, context: "#{context}[:subscription_definition_id]")
      end
    end

    class GetSubscriptionDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSubscriptionDefinitionOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_timestamp], ::String, context: "#{context}[:creation_timestamp]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:last_updated_timestamp], ::String, context: "#{context}[:last_updated_timestamp]")
        Hearth::Validator.validate!(input[:latest_version], ::String, context: "#{context}[:latest_version]")
        Hearth::Validator.validate!(input[:latest_version_arn], ::String, context: "#{context}[:latest_version_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class GetSubscriptionDefinitionVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSubscriptionDefinitionVersionInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:subscription_definition_id], ::String, context: "#{context}[:subscription_definition_id]")
        Hearth::Validator.validate!(input[:subscription_definition_version_id], ::String, context: "#{context}[:subscription_definition_version_id]")
      end
    end

    class GetSubscriptionDefinitionVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSubscriptionDefinitionVersionOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_timestamp], ::String, context: "#{context}[:creation_timestamp]")
        Validators::SubscriptionDefinitionVersion.validate!(input[:definition], context: "#{context}[:definition]") unless input[:definition].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class GetThingRuntimeConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetThingRuntimeConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:thing_name], ::String, context: "#{context}[:thing_name]")
      end
    end

    class GetThingRuntimeConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetThingRuntimeConfigurationOutput, context: context)
        Validators::RuntimeConfiguration.validate!(input[:runtime_configuration], context: "#{context}[:runtime_configuration]") unless input[:runtime_configuration].nil?
      end
    end

    class GroupCertificateAuthorityProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GroupCertificateAuthorityProperties, context: context)
        Hearth::Validator.validate!(input[:group_certificate_authority_arn], ::String, context: "#{context}[:group_certificate_authority_arn]")
        Hearth::Validator.validate!(input[:group_certificate_authority_id], ::String, context: "#{context}[:group_certificate_authority_id]")
      end
    end

    class GroupInformation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GroupInformation, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_timestamp], ::String, context: "#{context}[:creation_timestamp]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:last_updated_timestamp], ::String, context: "#{context}[:last_updated_timestamp]")
        Hearth::Validator.validate!(input[:latest_version], ::String, context: "#{context}[:latest_version]")
        Hearth::Validator.validate!(input[:latest_version_arn], ::String, context: "#{context}[:latest_version_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class GroupOwnerSetting
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GroupOwnerSetting, context: context)
        Hearth::Validator.validate!(input[:auto_add_group_owner], ::TrueClass, ::FalseClass, context: "#{context}[:auto_add_group_owner]")
        Hearth::Validator.validate!(input[:group_owner], ::String, context: "#{context}[:group_owner]")
      end
    end

    class GroupVersion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GroupVersion, context: context)
        Hearth::Validator.validate!(input[:connector_definition_version_arn], ::String, context: "#{context}[:connector_definition_version_arn]")
        Hearth::Validator.validate!(input[:core_definition_version_arn], ::String, context: "#{context}[:core_definition_version_arn]")
        Hearth::Validator.validate!(input[:device_definition_version_arn], ::String, context: "#{context}[:device_definition_version_arn]")
        Hearth::Validator.validate!(input[:function_definition_version_arn], ::String, context: "#{context}[:function_definition_version_arn]")
        Hearth::Validator.validate!(input[:logger_definition_version_arn], ::String, context: "#{context}[:logger_definition_version_arn]")
        Hearth::Validator.validate!(input[:resource_definition_version_arn], ::String, context: "#{context}[:resource_definition_version_arn]")
        Hearth::Validator.validate!(input[:subscription_definition_version_arn], ::String, context: "#{context}[:subscription_definition_version_arn]")
      end
    end

    class InternalServerErrorException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerErrorException, context: context)
        Validators::ErrorDetails.validate!(input[:error_details], context: "#{context}[:error_details]") unless input[:error_details].nil?
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListBulkDeploymentDetailedReportsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBulkDeploymentDetailedReportsInput, context: context)
        Hearth::Validator.validate!(input[:bulk_deployment_id], ::String, context: "#{context}[:bulk_deployment_id]")
        Hearth::Validator.validate!(input[:max_results], ::String, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListBulkDeploymentDetailedReportsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBulkDeploymentDetailedReportsOutput, context: context)
        Validators::BulkDeploymentResults.validate!(input[:deployments], context: "#{context}[:deployments]") unless input[:deployments].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListBulkDeploymentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBulkDeploymentsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::String, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListBulkDeploymentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBulkDeploymentsOutput, context: context)
        Validators::BulkDeployments.validate!(input[:bulk_deployments], context: "#{context}[:bulk_deployments]") unless input[:bulk_deployments].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListConnectorDefinitionVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListConnectorDefinitionVersionsInput, context: context)
        Hearth::Validator.validate!(input[:connector_definition_id], ::String, context: "#{context}[:connector_definition_id]")
        Hearth::Validator.validate!(input[:max_results], ::String, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListConnectorDefinitionVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListConnectorDefinitionVersionsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::List____listOfVersionInformation.validate!(input[:versions], context: "#{context}[:versions]") unless input[:versions].nil?
      end
    end

    class ListConnectorDefinitionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListConnectorDefinitionsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::String, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListConnectorDefinitionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListConnectorDefinitionsOutput, context: context)
        Validators::List____listOfDefinitionInformation.validate!(input[:definitions], context: "#{context}[:definitions]") unless input[:definitions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListCoreDefinitionVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCoreDefinitionVersionsInput, context: context)
        Hearth::Validator.validate!(input[:core_definition_id], ::String, context: "#{context}[:core_definition_id]")
        Hearth::Validator.validate!(input[:max_results], ::String, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListCoreDefinitionVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCoreDefinitionVersionsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::List____listOfVersionInformation.validate!(input[:versions], context: "#{context}[:versions]") unless input[:versions].nil?
      end
    end

    class ListCoreDefinitionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCoreDefinitionsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::String, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListCoreDefinitionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCoreDefinitionsOutput, context: context)
        Validators::List____listOfDefinitionInformation.validate!(input[:definitions], context: "#{context}[:definitions]") unless input[:definitions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDeploymentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDeploymentsInput, context: context)
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
        Hearth::Validator.validate!(input[:max_results], ::String, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDeploymentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDeploymentsOutput, context: context)
        Validators::Deployments.validate!(input[:deployments], context: "#{context}[:deployments]") unless input[:deployments].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDeviceDefinitionVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDeviceDefinitionVersionsInput, context: context)
        Hearth::Validator.validate!(input[:device_definition_id], ::String, context: "#{context}[:device_definition_id]")
        Hearth::Validator.validate!(input[:max_results], ::String, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDeviceDefinitionVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDeviceDefinitionVersionsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::List____listOfVersionInformation.validate!(input[:versions], context: "#{context}[:versions]") unless input[:versions].nil?
      end
    end

    class ListDeviceDefinitionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDeviceDefinitionsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::String, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDeviceDefinitionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDeviceDefinitionsOutput, context: context)
        Validators::List____listOfDefinitionInformation.validate!(input[:definitions], context: "#{context}[:definitions]") unless input[:definitions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListFunctionDefinitionVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFunctionDefinitionVersionsInput, context: context)
        Hearth::Validator.validate!(input[:function_definition_id], ::String, context: "#{context}[:function_definition_id]")
        Hearth::Validator.validate!(input[:max_results], ::String, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListFunctionDefinitionVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFunctionDefinitionVersionsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::List____listOfVersionInformation.validate!(input[:versions], context: "#{context}[:versions]") unless input[:versions].nil?
      end
    end

    class ListFunctionDefinitionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFunctionDefinitionsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::String, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListFunctionDefinitionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFunctionDefinitionsOutput, context: context)
        Validators::List____listOfDefinitionInformation.validate!(input[:definitions], context: "#{context}[:definitions]") unless input[:definitions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListGroupCertificateAuthoritiesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGroupCertificateAuthoritiesInput, context: context)
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
      end
    end

    class ListGroupCertificateAuthoritiesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGroupCertificateAuthoritiesOutput, context: context)
        Validators::List____listOfGroupCertificateAuthorityProperties.validate!(input[:group_certificate_authorities], context: "#{context}[:group_certificate_authorities]") unless input[:group_certificate_authorities].nil?
      end
    end

    class ListGroupVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGroupVersionsInput, context: context)
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
        Hearth::Validator.validate!(input[:max_results], ::String, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListGroupVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGroupVersionsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::List____listOfVersionInformation.validate!(input[:versions], context: "#{context}[:versions]") unless input[:versions].nil?
      end
    end

    class ListGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGroupsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::String, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGroupsOutput, context: context)
        Validators::List____listOfGroupInformation.validate!(input[:groups], context: "#{context}[:groups]") unless input[:groups].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListLoggerDefinitionVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLoggerDefinitionVersionsInput, context: context)
        Hearth::Validator.validate!(input[:logger_definition_id], ::String, context: "#{context}[:logger_definition_id]")
        Hearth::Validator.validate!(input[:max_results], ::String, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListLoggerDefinitionVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLoggerDefinitionVersionsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::List____listOfVersionInformation.validate!(input[:versions], context: "#{context}[:versions]") unless input[:versions].nil?
      end
    end

    class ListLoggerDefinitionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLoggerDefinitionsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::String, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListLoggerDefinitionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLoggerDefinitionsOutput, context: context)
        Validators::List____listOfDefinitionInformation.validate!(input[:definitions], context: "#{context}[:definitions]") unless input[:definitions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListResourceDefinitionVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResourceDefinitionVersionsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::String, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:resource_definition_id], ::String, context: "#{context}[:resource_definition_id]")
      end
    end

    class ListResourceDefinitionVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResourceDefinitionVersionsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::List____listOfVersionInformation.validate!(input[:versions], context: "#{context}[:versions]") unless input[:versions].nil?
      end
    end

    class ListResourceDefinitionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResourceDefinitionsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::String, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListResourceDefinitionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResourceDefinitionsOutput, context: context)
        Validators::List____listOfDefinitionInformation.validate!(input[:definitions], context: "#{context}[:definitions]") unless input[:definitions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSubscriptionDefinitionVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSubscriptionDefinitionVersionsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::String, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:subscription_definition_id], ::String, context: "#{context}[:subscription_definition_id]")
      end
    end

    class ListSubscriptionDefinitionVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSubscriptionDefinitionVersionsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::List____listOfVersionInformation.validate!(input[:versions], context: "#{context}[:versions]") unless input[:versions].nil?
      end
    end

    class ListSubscriptionDefinitionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSubscriptionDefinitionsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::String, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSubscriptionDefinitionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSubscriptionDefinitionsOutput, context: context)
        Validators::List____listOfDefinitionInformation.validate!(input[:definitions], context: "#{context}[:definitions]") unless input[:definitions].nil?
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
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class LocalDeviceResourceData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LocalDeviceResourceData, context: context)
        Validators::GroupOwnerSetting.validate!(input[:group_owner_setting], context: "#{context}[:group_owner_setting]") unless input[:group_owner_setting].nil?
        Hearth::Validator.validate!(input[:source_path], ::String, context: "#{context}[:source_path]")
      end
    end

    class LocalVolumeResourceData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LocalVolumeResourceData, context: context)
        Hearth::Validator.validate!(input[:destination_path], ::String, context: "#{context}[:destination_path]")
        Validators::GroupOwnerSetting.validate!(input[:group_owner_setting], context: "#{context}[:group_owner_setting]") unless input[:group_owner_setting].nil?
        Hearth::Validator.validate!(input[:source_path], ::String, context: "#{context}[:source_path]")
      end
    end

    class Logger
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Logger, context: context)
        Hearth::Validator.validate!(input[:component], ::String, context: "#{context}[:component]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:level], ::String, context: "#{context}[:level]")
        Hearth::Validator.validate!(input[:space], ::Integer, context: "#{context}[:space]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class LoggerDefinitionVersion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoggerDefinitionVersion, context: context)
        Validators::List____listOfLogger.validate!(input[:loggers], context: "#{context}[:loggers]") unless input[:loggers].nil?
      end
    end

    class ResetDeploymentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResetDeploymentsInput, context: context)
        Hearth::Validator.validate!(input[:amzn_client_token], ::String, context: "#{context}[:amzn_client_token]")
        Hearth::Validator.validate!(input[:force], ::TrueClass, ::FalseClass, context: "#{context}[:force]")
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
      end
    end

    class ResetDeploymentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResetDeploymentsOutput, context: context)
        Hearth::Validator.validate!(input[:deployment_arn], ::String, context: "#{context}[:deployment_arn]")
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
      end
    end

    class Resource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Resource, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::ResourceDataContainer.validate!(input[:resource_data_container], context: "#{context}[:resource_data_container]") unless input[:resource_data_container].nil?
      end
    end

    class ResourceAccessPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceAccessPolicy, context: context)
        Hearth::Validator.validate!(input[:permission], ::String, context: "#{context}[:permission]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
      end
    end

    class ResourceDataContainer
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceDataContainer, context: context)
        Validators::LocalDeviceResourceData.validate!(input[:local_device_resource_data], context: "#{context}[:local_device_resource_data]") unless input[:local_device_resource_data].nil?
        Validators::LocalVolumeResourceData.validate!(input[:local_volume_resource_data], context: "#{context}[:local_volume_resource_data]") unless input[:local_volume_resource_data].nil?
        Validators::S3MachineLearningModelResourceData.validate!(input[:s3_machine_learning_model_resource_data], context: "#{context}[:s3_machine_learning_model_resource_data]") unless input[:s3_machine_learning_model_resource_data].nil?
        Validators::SageMakerMachineLearningModelResourceData.validate!(input[:sage_maker_machine_learning_model_resource_data], context: "#{context}[:sage_maker_machine_learning_model_resource_data]") unless input[:sage_maker_machine_learning_model_resource_data].nil?
        Validators::SecretsManagerSecretResourceData.validate!(input[:secrets_manager_secret_resource_data], context: "#{context}[:secrets_manager_secret_resource_data]") unless input[:secrets_manager_secret_resource_data].nil?
      end
    end

    class ResourceDefinitionVersion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceDefinitionVersion, context: context)
        Validators::List____listOfResource.validate!(input[:resources], context: "#{context}[:resources]") unless input[:resources].nil?
      end
    end

    class ResourceDownloadOwnerSetting
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceDownloadOwnerSetting, context: context)
        Hearth::Validator.validate!(input[:group_owner], ::String, context: "#{context}[:group_owner]")
        Hearth::Validator.validate!(input[:group_permission], ::String, context: "#{context}[:group_permission]")
      end
    end

    class RuntimeConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RuntimeConfiguration, context: context)
        Validators::TelemetryConfiguration.validate!(input[:telemetry_configuration], context: "#{context}[:telemetry_configuration]") unless input[:telemetry_configuration].nil?
      end
    end

    class S3MachineLearningModelResourceData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3MachineLearningModelResourceData, context: context)
        Hearth::Validator.validate!(input[:destination_path], ::String, context: "#{context}[:destination_path]")
        Validators::ResourceDownloadOwnerSetting.validate!(input[:owner_setting], context: "#{context}[:owner_setting]") unless input[:owner_setting].nil?
        Hearth::Validator.validate!(input[:s3_uri], ::String, context: "#{context}[:s3_uri]")
      end
    end

    class SageMakerMachineLearningModelResourceData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SageMakerMachineLearningModelResourceData, context: context)
        Hearth::Validator.validate!(input[:destination_path], ::String, context: "#{context}[:destination_path]")
        Validators::ResourceDownloadOwnerSetting.validate!(input[:owner_setting], context: "#{context}[:owner_setting]") unless input[:owner_setting].nil?
        Hearth::Validator.validate!(input[:sage_maker_job_arn], ::String, context: "#{context}[:sage_maker_job_arn]")
      end
    end

    class SecretsManagerSecretResourceData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SecretsManagerSecretResourceData, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Validators::List____listOf__string.validate!(input[:additional_staging_labels_to_download], context: "#{context}[:additional_staging_labels_to_download]") unless input[:additional_staging_labels_to_download].nil?
      end
    end

    class StartBulkDeploymentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartBulkDeploymentInput, context: context)
        Hearth::Validator.validate!(input[:amzn_client_token], ::String, context: "#{context}[:amzn_client_token]")
        Hearth::Validator.validate!(input[:execution_role_arn], ::String, context: "#{context}[:execution_role_arn]")
        Hearth::Validator.validate!(input[:input_file_uri], ::String, context: "#{context}[:input_file_uri]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class StartBulkDeploymentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartBulkDeploymentOutput, context: context)
        Hearth::Validator.validate!(input[:bulk_deployment_arn], ::String, context: "#{context}[:bulk_deployment_arn]")
        Hearth::Validator.validate!(input[:bulk_deployment_id], ::String, context: "#{context}[:bulk_deployment_id]")
      end
    end

    class StopBulkDeploymentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopBulkDeploymentInput, context: context)
        Hearth::Validator.validate!(input[:bulk_deployment_id], ::String, context: "#{context}[:bulk_deployment_id]")
      end
    end

    class StopBulkDeploymentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopBulkDeploymentOutput, context: context)
      end
    end

    class Subscription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Subscription, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
        Hearth::Validator.validate!(input[:subject], ::String, context: "#{context}[:subject]")
        Hearth::Validator.validate!(input[:target], ::String, context: "#{context}[:target]")
      end
    end

    class SubscriptionDefinitionVersion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubscriptionDefinitionVersion, context: context)
        Validators::List____listOfSubscription.validate!(input[:subscriptions], context: "#{context}[:subscriptions]") unless input[:subscriptions].nil?
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class Tags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TelemetryConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TelemetryConfiguration, context: context)
        Hearth::Validator.validate!(input[:configuration_sync_status], ::String, context: "#{context}[:configuration_sync_status]")
        Hearth::Validator.validate!(input[:telemetry], ::String, context: "#{context}[:telemetry]")
      end
    end

    class TelemetryConfigurationUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TelemetryConfigurationUpdate, context: context)
        Hearth::Validator.validate!(input[:telemetry], ::String, context: "#{context}[:telemetry]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::List____listOf__string.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateConnectivityInfoInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConnectivityInfoInput, context: context)
        Validators::List____listOfConnectivityInfo.validate!(input[:connectivity_info], context: "#{context}[:connectivity_info]") unless input[:connectivity_info].nil?
        Hearth::Validator.validate!(input[:thing_name], ::String, context: "#{context}[:thing_name]")
      end
    end

    class UpdateConnectivityInfoOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConnectivityInfoOutput, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class UpdateConnectorDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConnectorDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:connector_definition_id], ::String, context: "#{context}[:connector_definition_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class UpdateConnectorDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConnectorDefinitionOutput, context: context)
      end
    end

    class UpdateCoreDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCoreDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:core_definition_id], ::String, context: "#{context}[:core_definition_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class UpdateCoreDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCoreDefinitionOutput, context: context)
      end
    end

    class UpdateDeviceDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDeviceDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:device_definition_id], ::String, context: "#{context}[:device_definition_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class UpdateDeviceDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDeviceDefinitionOutput, context: context)
      end
    end

    class UpdateFunctionDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFunctionDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:function_definition_id], ::String, context: "#{context}[:function_definition_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class UpdateFunctionDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFunctionDefinitionOutput, context: context)
      end
    end

    class UpdateGroupCertificateConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGroupCertificateConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:certificate_expiry_in_milliseconds], ::String, context: "#{context}[:certificate_expiry_in_milliseconds]")
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
      end
    end

    class UpdateGroupCertificateConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGroupCertificateConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:certificate_authority_expiry_in_milliseconds], ::String, context: "#{context}[:certificate_authority_expiry_in_milliseconds]")
        Hearth::Validator.validate!(input[:certificate_expiry_in_milliseconds], ::String, context: "#{context}[:certificate_expiry_in_milliseconds]")
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
      end
    end

    class UpdateGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGroupInput, context: context)
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class UpdateGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGroupOutput, context: context)
      end
    end

    class UpdateLoggerDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateLoggerDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:logger_definition_id], ::String, context: "#{context}[:logger_definition_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class UpdateLoggerDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateLoggerDefinitionOutput, context: context)
      end
    end

    class UpdateResourceDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateResourceDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:resource_definition_id], ::String, context: "#{context}[:resource_definition_id]")
      end
    end

    class UpdateResourceDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateResourceDefinitionOutput, context: context)
      end
    end

    class UpdateSubscriptionDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSubscriptionDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:subscription_definition_id], ::String, context: "#{context}[:subscription_definition_id]")
      end
    end

    class UpdateSubscriptionDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSubscriptionDefinitionOutput, context: context)
      end
    end

    class UpdateTargets
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class UpdateThingRuntimeConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateThingRuntimeConfigurationInput, context: context)
        Validators::TelemetryConfigurationUpdate.validate!(input[:telemetry_configuration], context: "#{context}[:telemetry_configuration]") unless input[:telemetry_configuration].nil?
        Hearth::Validator.validate!(input[:thing_name], ::String, context: "#{context}[:thing_name]")
      end
    end

    class UpdateThingRuntimeConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateThingRuntimeConfigurationOutput, context: context)
      end
    end

    class VersionInformation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VersionInformation, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_timestamp], ::String, context: "#{context}[:creation_timestamp]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class List____listOfConnectivityInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ConnectivityInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfConnector
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Connector.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfCore
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Core.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfDefinitionInformation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DefinitionInformation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfDevice
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Device.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfFunction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Function.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfGroupCertificateAuthorityProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::GroupCertificateAuthorityProperties.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfGroupInformation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::GroupInformation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfLogger
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Logger.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Resource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfResourceAccessPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ResourceAccessPolicy.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfSubscription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Subscription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfVersionInformation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::VersionInformation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOf__string
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Map____mapOf__string
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

  end
end
