# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::Greengrass
  module Parsers

    # Operation Parser for AssociateRoleToGroup
    class AssociateRoleToGroup
      def self.parse(http_resp)
        data = Types::AssociateRoleToGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.associated_at = map['AssociatedAt']
        data
      end
    end

    # Error Parser for InternalServerErrorException
    class InternalServerErrorException
      def self.parse(http_resp)
        data = Types::InternalServerErrorException.new
        map = Hearth::JSON.load(http_resp.body)
        data.error_details = (Parsers::ErrorDetails.parse(map['ErrorDetails']) unless map['ErrorDetails'].nil?)
        data.message = map['Message']
        data
      end
    end

    class ErrorDetails
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ErrorDetail.parse(value) unless value.nil?
        end
        data
      end
    end

    class ErrorDetail
      def self.parse(map)
        data = Types::ErrorDetail.new
        data.detailed_error_code = map['DetailedErrorCode']
        data.detailed_error_message = map['DetailedErrorMessage']
        return data
      end
    end

    # Error Parser for BadRequestException
    class BadRequestException
      def self.parse(http_resp)
        data = Types::BadRequestException.new
        map = Hearth::JSON.load(http_resp.body)
        data.error_details = (Parsers::ErrorDetails.parse(map['ErrorDetails']) unless map['ErrorDetails'].nil?)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for AssociateServiceRoleToAccount
    class AssociateServiceRoleToAccount
      def self.parse(http_resp)
        data = Types::AssociateServiceRoleToAccountOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.associated_at = map['AssociatedAt']
        data
      end
    end

    # Operation Parser for CreateConnectorDefinition
    class CreateConnectorDefinition
      def self.parse(http_resp)
        data = Types::CreateConnectorDefinitionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.creation_timestamp = map['CreationTimestamp']
        data.id = map['Id']
        data.last_updated_timestamp = map['LastUpdatedTimestamp']
        data.latest_version = map['LatestVersion']
        data.latest_version_arn = map['LatestVersionArn']
        data.name = map['Name']
        data
      end
    end

    # Operation Parser for CreateConnectorDefinitionVersion
    class CreateConnectorDefinitionVersion
      def self.parse(http_resp)
        data = Types::CreateConnectorDefinitionVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.creation_timestamp = map['CreationTimestamp']
        data.id = map['Id']
        data.version = map['Version']
        data
      end
    end

    # Operation Parser for CreateCoreDefinition
    class CreateCoreDefinition
      def self.parse(http_resp)
        data = Types::CreateCoreDefinitionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.creation_timestamp = map['CreationTimestamp']
        data.id = map['Id']
        data.last_updated_timestamp = map['LastUpdatedTimestamp']
        data.latest_version = map['LatestVersion']
        data.latest_version_arn = map['LatestVersionArn']
        data.name = map['Name']
        data
      end
    end

    # Operation Parser for CreateCoreDefinitionVersion
    class CreateCoreDefinitionVersion
      def self.parse(http_resp)
        data = Types::CreateCoreDefinitionVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.creation_timestamp = map['CreationTimestamp']
        data.id = map['Id']
        data.version = map['Version']
        data
      end
    end

    # Operation Parser for CreateDeployment
    class CreateDeployment
      def self.parse(http_resp)
        data = Types::CreateDeploymentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.deployment_arn = map['DeploymentArn']
        data.deployment_id = map['DeploymentId']
        data
      end
    end

    # Operation Parser for CreateDeviceDefinition
    class CreateDeviceDefinition
      def self.parse(http_resp)
        data = Types::CreateDeviceDefinitionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.creation_timestamp = map['CreationTimestamp']
        data.id = map['Id']
        data.last_updated_timestamp = map['LastUpdatedTimestamp']
        data.latest_version = map['LatestVersion']
        data.latest_version_arn = map['LatestVersionArn']
        data.name = map['Name']
        data
      end
    end

    # Operation Parser for CreateDeviceDefinitionVersion
    class CreateDeviceDefinitionVersion
      def self.parse(http_resp)
        data = Types::CreateDeviceDefinitionVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.creation_timestamp = map['CreationTimestamp']
        data.id = map['Id']
        data.version = map['Version']
        data
      end
    end

    # Operation Parser for CreateFunctionDefinition
    class CreateFunctionDefinition
      def self.parse(http_resp)
        data = Types::CreateFunctionDefinitionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.creation_timestamp = map['CreationTimestamp']
        data.id = map['Id']
        data.last_updated_timestamp = map['LastUpdatedTimestamp']
        data.latest_version = map['LatestVersion']
        data.latest_version_arn = map['LatestVersionArn']
        data.name = map['Name']
        data
      end
    end

    # Operation Parser for CreateFunctionDefinitionVersion
    class CreateFunctionDefinitionVersion
      def self.parse(http_resp)
        data = Types::CreateFunctionDefinitionVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.creation_timestamp = map['CreationTimestamp']
        data.id = map['Id']
        data.version = map['Version']
        data
      end
    end

    # Operation Parser for CreateGroup
    class CreateGroup
      def self.parse(http_resp)
        data = Types::CreateGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.creation_timestamp = map['CreationTimestamp']
        data.id = map['Id']
        data.last_updated_timestamp = map['LastUpdatedTimestamp']
        data.latest_version = map['LatestVersion']
        data.latest_version_arn = map['LatestVersionArn']
        data.name = map['Name']
        data
      end
    end

    # Operation Parser for CreateGroupCertificateAuthority
    class CreateGroupCertificateAuthority
      def self.parse(http_resp)
        data = Types::CreateGroupCertificateAuthorityOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.group_certificate_authority_arn = map['GroupCertificateAuthorityArn']
        data
      end
    end

    # Operation Parser for CreateGroupVersion
    class CreateGroupVersion
      def self.parse(http_resp)
        data = Types::CreateGroupVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.creation_timestamp = map['CreationTimestamp']
        data.id = map['Id']
        data.version = map['Version']
        data
      end
    end

    # Operation Parser for CreateLoggerDefinition
    class CreateLoggerDefinition
      def self.parse(http_resp)
        data = Types::CreateLoggerDefinitionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.creation_timestamp = map['CreationTimestamp']
        data.id = map['Id']
        data.last_updated_timestamp = map['LastUpdatedTimestamp']
        data.latest_version = map['LatestVersion']
        data.latest_version_arn = map['LatestVersionArn']
        data.name = map['Name']
        data
      end
    end

    # Operation Parser for CreateLoggerDefinitionVersion
    class CreateLoggerDefinitionVersion
      def self.parse(http_resp)
        data = Types::CreateLoggerDefinitionVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.creation_timestamp = map['CreationTimestamp']
        data.id = map['Id']
        data.version = map['Version']
        data
      end
    end

    # Operation Parser for CreateResourceDefinition
    class CreateResourceDefinition
      def self.parse(http_resp)
        data = Types::CreateResourceDefinitionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.creation_timestamp = map['CreationTimestamp']
        data.id = map['Id']
        data.last_updated_timestamp = map['LastUpdatedTimestamp']
        data.latest_version = map['LatestVersion']
        data.latest_version_arn = map['LatestVersionArn']
        data.name = map['Name']
        data
      end
    end

    # Operation Parser for CreateResourceDefinitionVersion
    class CreateResourceDefinitionVersion
      def self.parse(http_resp)
        data = Types::CreateResourceDefinitionVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.creation_timestamp = map['CreationTimestamp']
        data.id = map['Id']
        data.version = map['Version']
        data
      end
    end

    # Operation Parser for CreateSoftwareUpdateJob
    class CreateSoftwareUpdateJob
      def self.parse(http_resp)
        data = Types::CreateSoftwareUpdateJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.iot_job_arn = map['IotJobArn']
        data.iot_job_id = map['IotJobId']
        data.platform_software_version = map['PlatformSoftwareVersion']
        data
      end
    end

    # Operation Parser for CreateSubscriptionDefinition
    class CreateSubscriptionDefinition
      def self.parse(http_resp)
        data = Types::CreateSubscriptionDefinitionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.creation_timestamp = map['CreationTimestamp']
        data.id = map['Id']
        data.last_updated_timestamp = map['LastUpdatedTimestamp']
        data.latest_version = map['LatestVersion']
        data.latest_version_arn = map['LatestVersionArn']
        data.name = map['Name']
        data
      end
    end

    # Operation Parser for CreateSubscriptionDefinitionVersion
    class CreateSubscriptionDefinitionVersion
      def self.parse(http_resp)
        data = Types::CreateSubscriptionDefinitionVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.creation_timestamp = map['CreationTimestamp']
        data.id = map['Id']
        data.version = map['Version']
        data
      end
    end

    # Operation Parser for DeleteConnectorDefinition
    class DeleteConnectorDefinition
      def self.parse(http_resp)
        data = Types::DeleteConnectorDefinitionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteCoreDefinition
    class DeleteCoreDefinition
      def self.parse(http_resp)
        data = Types::DeleteCoreDefinitionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteDeviceDefinition
    class DeleteDeviceDefinition
      def self.parse(http_resp)
        data = Types::DeleteDeviceDefinitionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteFunctionDefinition
    class DeleteFunctionDefinition
      def self.parse(http_resp)
        data = Types::DeleteFunctionDefinitionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteGroup
    class DeleteGroup
      def self.parse(http_resp)
        data = Types::DeleteGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteLoggerDefinition
    class DeleteLoggerDefinition
      def self.parse(http_resp)
        data = Types::DeleteLoggerDefinitionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteResourceDefinition
    class DeleteResourceDefinition
      def self.parse(http_resp)
        data = Types::DeleteResourceDefinitionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteSubscriptionDefinition
    class DeleteSubscriptionDefinition
      def self.parse(http_resp)
        data = Types::DeleteSubscriptionDefinitionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DisassociateRoleFromGroup
    class DisassociateRoleFromGroup
      def self.parse(http_resp)
        data = Types::DisassociateRoleFromGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.disassociated_at = map['DisassociatedAt']
        data
      end
    end

    # Operation Parser for DisassociateServiceRoleFromAccount
    class DisassociateServiceRoleFromAccount
      def self.parse(http_resp)
        data = Types::DisassociateServiceRoleFromAccountOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.disassociated_at = map['DisassociatedAt']
        data
      end
    end

    # Operation Parser for GetAssociatedRole
    class GetAssociatedRole
      def self.parse(http_resp)
        data = Types::GetAssociatedRoleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.associated_at = map['AssociatedAt']
        data.role_arn = map['RoleArn']
        data
      end
    end

    # Operation Parser for GetBulkDeploymentStatus
    class GetBulkDeploymentStatus
      def self.parse(http_resp)
        data = Types::GetBulkDeploymentStatusOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.bulk_deployment_metrics = (Parsers::BulkDeploymentMetrics.parse(map['BulkDeploymentMetrics']) unless map['BulkDeploymentMetrics'].nil?)
        data.bulk_deployment_status = map['BulkDeploymentStatus']
        data.created_at = map['CreatedAt']
        data.error_details = (Parsers::ErrorDetails.parse(map['ErrorDetails']) unless map['ErrorDetails'].nil?)
        data.error_message = map['ErrorMessage']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    class Tags
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class BulkDeploymentMetrics
      def self.parse(map)
        data = Types::BulkDeploymentMetrics.new
        data.invalid_input_records = map['InvalidInputRecords']
        data.records_processed = map['RecordsProcessed']
        data.retry_attempts = map['RetryAttempts']
        return data
      end
    end

    # Operation Parser for GetConnectivityInfo
    class GetConnectivityInfo
      def self.parse(http_resp)
        data = Types::GetConnectivityInfoOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.connectivity_info = (Parsers::List____listOfConnectivityInfo.parse(map['ConnectivityInfo']) unless map['ConnectivityInfo'].nil?)
        data.message = map['message'] || map['Message']
        data
      end
    end

    class List____listOfConnectivityInfo
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ConnectivityInfo.parse(value) unless value.nil?
        end
        data
      end
    end

    class ConnectivityInfo
      def self.parse(map)
        data = Types::ConnectivityInfo.new
        data.host_address = map['HostAddress']
        data.id = map['Id']
        data.metadata = map['Metadata']
        data.port_number = map['PortNumber']
        return data
      end
    end

    # Operation Parser for GetConnectorDefinition
    class GetConnectorDefinition
      def self.parse(http_resp)
        data = Types::GetConnectorDefinitionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.creation_timestamp = map['CreationTimestamp']
        data.id = map['Id']
        data.last_updated_timestamp = map['LastUpdatedTimestamp']
        data.latest_version = map['LatestVersion']
        data.latest_version_arn = map['LatestVersionArn']
        data.name = map['Name']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for GetConnectorDefinitionVersion
    class GetConnectorDefinitionVersion
      def self.parse(http_resp)
        data = Types::GetConnectorDefinitionVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.creation_timestamp = map['CreationTimestamp']
        data.definition = (Parsers::ConnectorDefinitionVersion.parse(map['Definition']) unless map['Definition'].nil?)
        data.id = map['Id']
        data.next_token = map['NextToken']
        data.version = map['Version']
        data
      end
    end

    class ConnectorDefinitionVersion
      def self.parse(map)
        data = Types::ConnectorDefinitionVersion.new
        data.connectors = (Parsers::List____listOfConnector.parse(map['Connectors']) unless map['Connectors'].nil?)
        return data
      end
    end

    class List____listOfConnector
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Connector.parse(value) unless value.nil?
        end
        data
      end
    end

    class Connector
      def self.parse(map)
        data = Types::Connector.new
        data.connector_arn = map['ConnectorArn']
        data.id = map['Id']
        data.parameters = (Parsers::Map____mapOf__string.parse(map['Parameters']) unless map['Parameters'].nil?)
        return data
      end
    end

    class Map____mapOf__string
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetCoreDefinition
    class GetCoreDefinition
      def self.parse(http_resp)
        data = Types::GetCoreDefinitionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.creation_timestamp = map['CreationTimestamp']
        data.id = map['Id']
        data.last_updated_timestamp = map['LastUpdatedTimestamp']
        data.latest_version = map['LatestVersion']
        data.latest_version_arn = map['LatestVersionArn']
        data.name = map['Name']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for GetCoreDefinitionVersion
    class GetCoreDefinitionVersion
      def self.parse(http_resp)
        data = Types::GetCoreDefinitionVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.creation_timestamp = map['CreationTimestamp']
        data.definition = (Parsers::CoreDefinitionVersion.parse(map['Definition']) unless map['Definition'].nil?)
        data.id = map['Id']
        data.next_token = map['NextToken']
        data.version = map['Version']
        data
      end
    end

    class CoreDefinitionVersion
      def self.parse(map)
        data = Types::CoreDefinitionVersion.new
        data.cores = (Parsers::List____listOfCore.parse(map['Cores']) unless map['Cores'].nil?)
        return data
      end
    end

    class List____listOfCore
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Core.parse(value) unless value.nil?
        end
        data
      end
    end

    class Core
      def self.parse(map)
        data = Types::Core.new
        data.certificate_arn = map['CertificateArn']
        data.id = map['Id']
        data.sync_shadow = map['SyncShadow']
        data.thing_arn = map['ThingArn']
        return data
      end
    end

    # Operation Parser for GetDeploymentStatus
    class GetDeploymentStatus
      def self.parse(http_resp)
        data = Types::GetDeploymentStatusOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.deployment_status = map['DeploymentStatus']
        data.deployment_type = map['DeploymentType']
        data.error_details = (Parsers::ErrorDetails.parse(map['ErrorDetails']) unless map['ErrorDetails'].nil?)
        data.error_message = map['ErrorMessage']
        data.updated_at = map['UpdatedAt']
        data
      end
    end

    # Operation Parser for GetDeviceDefinition
    class GetDeviceDefinition
      def self.parse(http_resp)
        data = Types::GetDeviceDefinitionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.creation_timestamp = map['CreationTimestamp']
        data.id = map['Id']
        data.last_updated_timestamp = map['LastUpdatedTimestamp']
        data.latest_version = map['LatestVersion']
        data.latest_version_arn = map['LatestVersionArn']
        data.name = map['Name']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for GetDeviceDefinitionVersion
    class GetDeviceDefinitionVersion
      def self.parse(http_resp)
        data = Types::GetDeviceDefinitionVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.creation_timestamp = map['CreationTimestamp']
        data.definition = (Parsers::DeviceDefinitionVersion.parse(map['Definition']) unless map['Definition'].nil?)
        data.id = map['Id']
        data.next_token = map['NextToken']
        data.version = map['Version']
        data
      end
    end

    class DeviceDefinitionVersion
      def self.parse(map)
        data = Types::DeviceDefinitionVersion.new
        data.devices = (Parsers::List____listOfDevice.parse(map['Devices']) unless map['Devices'].nil?)
        return data
      end
    end

    class List____listOfDevice
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Device.parse(value) unless value.nil?
        end
        data
      end
    end

    class Device
      def self.parse(map)
        data = Types::Device.new
        data.certificate_arn = map['CertificateArn']
        data.id = map['Id']
        data.sync_shadow = map['SyncShadow']
        data.thing_arn = map['ThingArn']
        return data
      end
    end

    # Operation Parser for GetFunctionDefinition
    class GetFunctionDefinition
      def self.parse(http_resp)
        data = Types::GetFunctionDefinitionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.creation_timestamp = map['CreationTimestamp']
        data.id = map['Id']
        data.last_updated_timestamp = map['LastUpdatedTimestamp']
        data.latest_version = map['LatestVersion']
        data.latest_version_arn = map['LatestVersionArn']
        data.name = map['Name']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for GetFunctionDefinitionVersion
    class GetFunctionDefinitionVersion
      def self.parse(http_resp)
        data = Types::GetFunctionDefinitionVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.creation_timestamp = map['CreationTimestamp']
        data.definition = (Parsers::FunctionDefinitionVersion.parse(map['Definition']) unless map['Definition'].nil?)
        data.id = map['Id']
        data.next_token = map['NextToken']
        data.version = map['Version']
        data
      end
    end

    class FunctionDefinitionVersion
      def self.parse(map)
        data = Types::FunctionDefinitionVersion.new
        data.default_config = (Parsers::FunctionDefaultConfig.parse(map['DefaultConfig']) unless map['DefaultConfig'].nil?)
        data.functions = (Parsers::List____listOfFunction.parse(map['Functions']) unless map['Functions'].nil?)
        return data
      end
    end

    class List____listOfFunction
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Function.parse(value) unless value.nil?
        end
        data
      end
    end

    class Function
      def self.parse(map)
        data = Types::Function.new
        data.function_arn = map['FunctionArn']
        data.function_configuration = (Parsers::FunctionConfiguration.parse(map['FunctionConfiguration']) unless map['FunctionConfiguration'].nil?)
        data.id = map['Id']
        return data
      end
    end

    class FunctionConfiguration
      def self.parse(map)
        data = Types::FunctionConfiguration.new
        data.encoding_type = map['EncodingType']
        data.environment = (Parsers::FunctionConfigurationEnvironment.parse(map['Environment']) unless map['Environment'].nil?)
        data.exec_args = map['ExecArgs']
        data.executable = map['Executable']
        data.memory_size = map['MemorySize']
        data.pinned = map['Pinned']
        data.timeout = map['Timeout']
        return data
      end
    end

    class FunctionConfigurationEnvironment
      def self.parse(map)
        data = Types::FunctionConfigurationEnvironment.new
        data.access_sysfs = map['AccessSysfs']
        data.execution = (Parsers::FunctionExecutionConfig.parse(map['Execution']) unless map['Execution'].nil?)
        data.resource_access_policies = (Parsers::List____listOfResourceAccessPolicy.parse(map['ResourceAccessPolicies']) unless map['ResourceAccessPolicies'].nil?)
        data.variables = (Parsers::Map____mapOf__string.parse(map['Variables']) unless map['Variables'].nil?)
        return data
      end
    end

    class List____listOfResourceAccessPolicy
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ResourceAccessPolicy.parse(value) unless value.nil?
        end
        data
      end
    end

    class ResourceAccessPolicy
      def self.parse(map)
        data = Types::ResourceAccessPolicy.new
        data.permission = map['Permission']
        data.resource_id = map['ResourceId']
        return data
      end
    end

    class FunctionExecutionConfig
      def self.parse(map)
        data = Types::FunctionExecutionConfig.new
        data.isolation_mode = map['IsolationMode']
        data.run_as = (Parsers::FunctionRunAsConfig.parse(map['RunAs']) unless map['RunAs'].nil?)
        return data
      end
    end

    class FunctionRunAsConfig
      def self.parse(map)
        data = Types::FunctionRunAsConfig.new
        data.gid = map['Gid']
        data.uid = map['Uid']
        return data
      end
    end

    class FunctionDefaultConfig
      def self.parse(map)
        data = Types::FunctionDefaultConfig.new
        data.execution = (Parsers::FunctionDefaultExecutionConfig.parse(map['Execution']) unless map['Execution'].nil?)
        return data
      end
    end

    class FunctionDefaultExecutionConfig
      def self.parse(map)
        data = Types::FunctionDefaultExecutionConfig.new
        data.isolation_mode = map['IsolationMode']
        data.run_as = (Parsers::FunctionRunAsConfig.parse(map['RunAs']) unless map['RunAs'].nil?)
        return data
      end
    end

    # Operation Parser for GetGroup
    class GetGroup
      def self.parse(http_resp)
        data = Types::GetGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.creation_timestamp = map['CreationTimestamp']
        data.id = map['Id']
        data.last_updated_timestamp = map['LastUpdatedTimestamp']
        data.latest_version = map['LatestVersion']
        data.latest_version_arn = map['LatestVersionArn']
        data.name = map['Name']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for GetGroupCertificateAuthority
    class GetGroupCertificateAuthority
      def self.parse(http_resp)
        data = Types::GetGroupCertificateAuthorityOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.group_certificate_authority_arn = map['GroupCertificateAuthorityArn']
        data.group_certificate_authority_id = map['GroupCertificateAuthorityId']
        data.pem_encoded_certificate = map['PemEncodedCertificate']
        data
      end
    end

    # Operation Parser for GetGroupCertificateConfiguration
    class GetGroupCertificateConfiguration
      def self.parse(http_resp)
        data = Types::GetGroupCertificateConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.certificate_authority_expiry_in_milliseconds = map['CertificateAuthorityExpiryInMilliseconds']
        data.certificate_expiry_in_milliseconds = map['CertificateExpiryInMilliseconds']
        data.group_id = map['GroupId']
        data
      end
    end

    # Operation Parser for GetGroupVersion
    class GetGroupVersion
      def self.parse(http_resp)
        data = Types::GetGroupVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.creation_timestamp = map['CreationTimestamp']
        data.definition = (Parsers::GroupVersion.parse(map['Definition']) unless map['Definition'].nil?)
        data.id = map['Id']
        data.version = map['Version']
        data
      end
    end

    class GroupVersion
      def self.parse(map)
        data = Types::GroupVersion.new
        data.connector_definition_version_arn = map['ConnectorDefinitionVersionArn']
        data.core_definition_version_arn = map['CoreDefinitionVersionArn']
        data.device_definition_version_arn = map['DeviceDefinitionVersionArn']
        data.function_definition_version_arn = map['FunctionDefinitionVersionArn']
        data.logger_definition_version_arn = map['LoggerDefinitionVersionArn']
        data.resource_definition_version_arn = map['ResourceDefinitionVersionArn']
        data.subscription_definition_version_arn = map['SubscriptionDefinitionVersionArn']
        return data
      end
    end

    # Operation Parser for GetLoggerDefinition
    class GetLoggerDefinition
      def self.parse(http_resp)
        data = Types::GetLoggerDefinitionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.creation_timestamp = map['CreationTimestamp']
        data.id = map['Id']
        data.last_updated_timestamp = map['LastUpdatedTimestamp']
        data.latest_version = map['LatestVersion']
        data.latest_version_arn = map['LatestVersionArn']
        data.name = map['Name']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for GetLoggerDefinitionVersion
    class GetLoggerDefinitionVersion
      def self.parse(http_resp)
        data = Types::GetLoggerDefinitionVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.creation_timestamp = map['CreationTimestamp']
        data.definition = (Parsers::LoggerDefinitionVersion.parse(map['Definition']) unless map['Definition'].nil?)
        data.id = map['Id']
        data.version = map['Version']
        data
      end
    end

    class LoggerDefinitionVersion
      def self.parse(map)
        data = Types::LoggerDefinitionVersion.new
        data.loggers = (Parsers::List____listOfLogger.parse(map['Loggers']) unless map['Loggers'].nil?)
        return data
      end
    end

    class List____listOfLogger
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Logger.parse(value) unless value.nil?
        end
        data
      end
    end

    class Logger
      def self.parse(map)
        data = Types::Logger.new
        data.component = map['Component']
        data.id = map['Id']
        data.level = map['Level']
        data.space = map['Space']
        data.type = map['Type']
        return data
      end
    end

    # Operation Parser for GetResourceDefinition
    class GetResourceDefinition
      def self.parse(http_resp)
        data = Types::GetResourceDefinitionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.creation_timestamp = map['CreationTimestamp']
        data.id = map['Id']
        data.last_updated_timestamp = map['LastUpdatedTimestamp']
        data.latest_version = map['LatestVersion']
        data.latest_version_arn = map['LatestVersionArn']
        data.name = map['Name']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for GetResourceDefinitionVersion
    class GetResourceDefinitionVersion
      def self.parse(http_resp)
        data = Types::GetResourceDefinitionVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.creation_timestamp = map['CreationTimestamp']
        data.definition = (Parsers::ResourceDefinitionVersion.parse(map['Definition']) unless map['Definition'].nil?)
        data.id = map['Id']
        data.version = map['Version']
        data
      end
    end

    class ResourceDefinitionVersion
      def self.parse(map)
        data = Types::ResourceDefinitionVersion.new
        data.resources = (Parsers::List____listOfResource.parse(map['Resources']) unless map['Resources'].nil?)
        return data
      end
    end

    class List____listOfResource
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Resource.parse(value) unless value.nil?
        end
        data
      end
    end

    class Resource
      def self.parse(map)
        data = Types::Resource.new
        data.id = map['Id']
        data.name = map['Name']
        data.resource_data_container = (Parsers::ResourceDataContainer.parse(map['ResourceDataContainer']) unless map['ResourceDataContainer'].nil?)
        return data
      end
    end

    class ResourceDataContainer
      def self.parse(map)
        data = Types::ResourceDataContainer.new
        data.local_device_resource_data = (Parsers::LocalDeviceResourceData.parse(map['LocalDeviceResourceData']) unless map['LocalDeviceResourceData'].nil?)
        data.local_volume_resource_data = (Parsers::LocalVolumeResourceData.parse(map['LocalVolumeResourceData']) unless map['LocalVolumeResourceData'].nil?)
        data.s3_machine_learning_model_resource_data = (Parsers::S3MachineLearningModelResourceData.parse(map['S3MachineLearningModelResourceData']) unless map['S3MachineLearningModelResourceData'].nil?)
        data.sage_maker_machine_learning_model_resource_data = (Parsers::SageMakerMachineLearningModelResourceData.parse(map['SageMakerMachineLearningModelResourceData']) unless map['SageMakerMachineLearningModelResourceData'].nil?)
        data.secrets_manager_secret_resource_data = (Parsers::SecretsManagerSecretResourceData.parse(map['SecretsManagerSecretResourceData']) unless map['SecretsManagerSecretResourceData'].nil?)
        return data
      end
    end

    class SecretsManagerSecretResourceData
      def self.parse(map)
        data = Types::SecretsManagerSecretResourceData.new
        data.arn = map['ARN']
        data.additional_staging_labels_to_download = (Parsers::List____listOf__string.parse(map['AdditionalStagingLabelsToDownload']) unless map['AdditionalStagingLabelsToDownload'].nil?)
        return data
      end
    end

    class List____listOf__string
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class SageMakerMachineLearningModelResourceData
      def self.parse(map)
        data = Types::SageMakerMachineLearningModelResourceData.new
        data.destination_path = map['DestinationPath']
        data.owner_setting = (Parsers::ResourceDownloadOwnerSetting.parse(map['OwnerSetting']) unless map['OwnerSetting'].nil?)
        data.sage_maker_job_arn = map['SageMakerJobArn']
        return data
      end
    end

    class ResourceDownloadOwnerSetting
      def self.parse(map)
        data = Types::ResourceDownloadOwnerSetting.new
        data.group_owner = map['GroupOwner']
        data.group_permission = map['GroupPermission']
        return data
      end
    end

    class S3MachineLearningModelResourceData
      def self.parse(map)
        data = Types::S3MachineLearningModelResourceData.new
        data.destination_path = map['DestinationPath']
        data.owner_setting = (Parsers::ResourceDownloadOwnerSetting.parse(map['OwnerSetting']) unless map['OwnerSetting'].nil?)
        data.s3_uri = map['S3Uri']
        return data
      end
    end

    class LocalVolumeResourceData
      def self.parse(map)
        data = Types::LocalVolumeResourceData.new
        data.destination_path = map['DestinationPath']
        data.group_owner_setting = (Parsers::GroupOwnerSetting.parse(map['GroupOwnerSetting']) unless map['GroupOwnerSetting'].nil?)
        data.source_path = map['SourcePath']
        return data
      end
    end

    class GroupOwnerSetting
      def self.parse(map)
        data = Types::GroupOwnerSetting.new
        data.auto_add_group_owner = map['AutoAddGroupOwner']
        data.group_owner = map['GroupOwner']
        return data
      end
    end

    class LocalDeviceResourceData
      def self.parse(map)
        data = Types::LocalDeviceResourceData.new
        data.group_owner_setting = (Parsers::GroupOwnerSetting.parse(map['GroupOwnerSetting']) unless map['GroupOwnerSetting'].nil?)
        data.source_path = map['SourcePath']
        return data
      end
    end

    # Operation Parser for GetServiceRoleForAccount
    class GetServiceRoleForAccount
      def self.parse(http_resp)
        data = Types::GetServiceRoleForAccountOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.associated_at = map['AssociatedAt']
        data.role_arn = map['RoleArn']
        data
      end
    end

    # Operation Parser for GetSubscriptionDefinition
    class GetSubscriptionDefinition
      def self.parse(http_resp)
        data = Types::GetSubscriptionDefinitionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.creation_timestamp = map['CreationTimestamp']
        data.id = map['Id']
        data.last_updated_timestamp = map['LastUpdatedTimestamp']
        data.latest_version = map['LatestVersion']
        data.latest_version_arn = map['LatestVersionArn']
        data.name = map['Name']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for GetSubscriptionDefinitionVersion
    class GetSubscriptionDefinitionVersion
      def self.parse(http_resp)
        data = Types::GetSubscriptionDefinitionVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.creation_timestamp = map['CreationTimestamp']
        data.definition = (Parsers::SubscriptionDefinitionVersion.parse(map['Definition']) unless map['Definition'].nil?)
        data.id = map['Id']
        data.next_token = map['NextToken']
        data.version = map['Version']
        data
      end
    end

    class SubscriptionDefinitionVersion
      def self.parse(map)
        data = Types::SubscriptionDefinitionVersion.new
        data.subscriptions = (Parsers::List____listOfSubscription.parse(map['Subscriptions']) unless map['Subscriptions'].nil?)
        return data
      end
    end

    class List____listOfSubscription
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Subscription.parse(value) unless value.nil?
        end
        data
      end
    end

    class Subscription
      def self.parse(map)
        data = Types::Subscription.new
        data.id = map['Id']
        data.source = map['Source']
        data.subject = map['Subject']
        data.target = map['Target']
        return data
      end
    end

    # Operation Parser for GetThingRuntimeConfiguration
    class GetThingRuntimeConfiguration
      def self.parse(http_resp)
        data = Types::GetThingRuntimeConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.runtime_configuration = (Parsers::RuntimeConfiguration.parse(map['RuntimeConfiguration']) unless map['RuntimeConfiguration'].nil?)
        data
      end
    end

    class RuntimeConfiguration
      def self.parse(map)
        data = Types::RuntimeConfiguration.new
        data.telemetry_configuration = (Parsers::TelemetryConfiguration.parse(map['TelemetryConfiguration']) unless map['TelemetryConfiguration'].nil?)
        return data
      end
    end

    class TelemetryConfiguration
      def self.parse(map)
        data = Types::TelemetryConfiguration.new
        data.configuration_sync_status = map['ConfigurationSyncStatus']
        data.telemetry = map['Telemetry']
        return data
      end
    end

    # Operation Parser for ListBulkDeploymentDetailedReports
    class ListBulkDeploymentDetailedReports
      def self.parse(http_resp)
        data = Types::ListBulkDeploymentDetailedReportsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.deployments = (Parsers::BulkDeploymentResults.parse(map['Deployments']) unless map['Deployments'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class BulkDeploymentResults
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::BulkDeploymentResult.parse(value) unless value.nil?
        end
        data
      end
    end

    class BulkDeploymentResult
      def self.parse(map)
        data = Types::BulkDeploymentResult.new
        data.created_at = map['CreatedAt']
        data.deployment_arn = map['DeploymentArn']
        data.deployment_id = map['DeploymentId']
        data.deployment_status = map['DeploymentStatus']
        data.deployment_type = map['DeploymentType']
        data.error_details = (Parsers::ErrorDetails.parse(map['ErrorDetails']) unless map['ErrorDetails'].nil?)
        data.error_message = map['ErrorMessage']
        data.group_arn = map['GroupArn']
        return data
      end
    end

    # Operation Parser for ListBulkDeployments
    class ListBulkDeployments
      def self.parse(http_resp)
        data = Types::ListBulkDeploymentsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.bulk_deployments = (Parsers::BulkDeployments.parse(map['BulkDeployments']) unless map['BulkDeployments'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class BulkDeployments
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::BulkDeployment.parse(value) unless value.nil?
        end
        data
      end
    end

    class BulkDeployment
      def self.parse(map)
        data = Types::BulkDeployment.new
        data.bulk_deployment_arn = map['BulkDeploymentArn']
        data.bulk_deployment_id = map['BulkDeploymentId']
        data.created_at = map['CreatedAt']
        return data
      end
    end

    # Operation Parser for ListConnectorDefinitionVersions
    class ListConnectorDefinitionVersions
      def self.parse(http_resp)
        data = Types::ListConnectorDefinitionVersionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['NextToken']
        data.versions = (Parsers::List____listOfVersionInformation.parse(map['Versions']) unless map['Versions'].nil?)
        data
      end
    end

    class List____listOfVersionInformation
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::VersionInformation.parse(value) unless value.nil?
        end
        data
      end
    end

    class VersionInformation
      def self.parse(map)
        data = Types::VersionInformation.new
        data.arn = map['Arn']
        data.creation_timestamp = map['CreationTimestamp']
        data.id = map['Id']
        data.version = map['Version']
        return data
      end
    end

    # Operation Parser for ListConnectorDefinitions
    class ListConnectorDefinitions
      def self.parse(http_resp)
        data = Types::ListConnectorDefinitionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.definitions = (Parsers::List____listOfDefinitionInformation.parse(map['Definitions']) unless map['Definitions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class List____listOfDefinitionInformation
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::DefinitionInformation.parse(value) unless value.nil?
        end
        data
      end
    end

    class DefinitionInformation
      def self.parse(map)
        data = Types::DefinitionInformation.new
        data.arn = map['Arn']
        data.creation_timestamp = map['CreationTimestamp']
        data.id = map['Id']
        data.last_updated_timestamp = map['LastUpdatedTimestamp']
        data.latest_version = map['LatestVersion']
        data.latest_version_arn = map['LatestVersionArn']
        data.name = map['Name']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    # Operation Parser for ListCoreDefinitionVersions
    class ListCoreDefinitionVersions
      def self.parse(http_resp)
        data = Types::ListCoreDefinitionVersionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['NextToken']
        data.versions = (Parsers::List____listOfVersionInformation.parse(map['Versions']) unless map['Versions'].nil?)
        data
      end
    end

    # Operation Parser for ListCoreDefinitions
    class ListCoreDefinitions
      def self.parse(http_resp)
        data = Types::ListCoreDefinitionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.definitions = (Parsers::List____listOfDefinitionInformation.parse(map['Definitions']) unless map['Definitions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ListDeployments
    class ListDeployments
      def self.parse(http_resp)
        data = Types::ListDeploymentsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.deployments = (Parsers::Deployments.parse(map['Deployments']) unless map['Deployments'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class Deployments
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Deployment.parse(value) unless value.nil?
        end
        data
      end
    end

    class Deployment
      def self.parse(map)
        data = Types::Deployment.new
        data.created_at = map['CreatedAt']
        data.deployment_arn = map['DeploymentArn']
        data.deployment_id = map['DeploymentId']
        data.deployment_type = map['DeploymentType']
        data.group_arn = map['GroupArn']
        return data
      end
    end

    # Operation Parser for ListDeviceDefinitionVersions
    class ListDeviceDefinitionVersions
      def self.parse(http_resp)
        data = Types::ListDeviceDefinitionVersionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['NextToken']
        data.versions = (Parsers::List____listOfVersionInformation.parse(map['Versions']) unless map['Versions'].nil?)
        data
      end
    end

    # Operation Parser for ListDeviceDefinitions
    class ListDeviceDefinitions
      def self.parse(http_resp)
        data = Types::ListDeviceDefinitionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.definitions = (Parsers::List____listOfDefinitionInformation.parse(map['Definitions']) unless map['Definitions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ListFunctionDefinitionVersions
    class ListFunctionDefinitionVersions
      def self.parse(http_resp)
        data = Types::ListFunctionDefinitionVersionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['NextToken']
        data.versions = (Parsers::List____listOfVersionInformation.parse(map['Versions']) unless map['Versions'].nil?)
        data
      end
    end

    # Operation Parser for ListFunctionDefinitions
    class ListFunctionDefinitions
      def self.parse(http_resp)
        data = Types::ListFunctionDefinitionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.definitions = (Parsers::List____listOfDefinitionInformation.parse(map['Definitions']) unless map['Definitions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ListGroupCertificateAuthorities
    class ListGroupCertificateAuthorities
      def self.parse(http_resp)
        data = Types::ListGroupCertificateAuthoritiesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.group_certificate_authorities = (Parsers::List____listOfGroupCertificateAuthorityProperties.parse(map['GroupCertificateAuthorities']) unless map['GroupCertificateAuthorities'].nil?)
        data
      end
    end

    class List____listOfGroupCertificateAuthorityProperties
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::GroupCertificateAuthorityProperties.parse(value) unless value.nil?
        end
        data
      end
    end

    class GroupCertificateAuthorityProperties
      def self.parse(map)
        data = Types::GroupCertificateAuthorityProperties.new
        data.group_certificate_authority_arn = map['GroupCertificateAuthorityArn']
        data.group_certificate_authority_id = map['GroupCertificateAuthorityId']
        return data
      end
    end

    # Operation Parser for ListGroupVersions
    class ListGroupVersions
      def self.parse(http_resp)
        data = Types::ListGroupVersionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['NextToken']
        data.versions = (Parsers::List____listOfVersionInformation.parse(map['Versions']) unless map['Versions'].nil?)
        data
      end
    end

    # Operation Parser for ListGroups
    class ListGroups
      def self.parse(http_resp)
        data = Types::ListGroupsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.groups = (Parsers::List____listOfGroupInformation.parse(map['Groups']) unless map['Groups'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class List____listOfGroupInformation
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::GroupInformation.parse(value) unless value.nil?
        end
        data
      end
    end

    class GroupInformation
      def self.parse(map)
        data = Types::GroupInformation.new
        data.arn = map['Arn']
        data.creation_timestamp = map['CreationTimestamp']
        data.id = map['Id']
        data.last_updated_timestamp = map['LastUpdatedTimestamp']
        data.latest_version = map['LatestVersion']
        data.latest_version_arn = map['LatestVersionArn']
        data.name = map['Name']
        return data
      end
    end

    # Operation Parser for ListLoggerDefinitionVersions
    class ListLoggerDefinitionVersions
      def self.parse(http_resp)
        data = Types::ListLoggerDefinitionVersionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['NextToken']
        data.versions = (Parsers::List____listOfVersionInformation.parse(map['Versions']) unless map['Versions'].nil?)
        data
      end
    end

    # Operation Parser for ListLoggerDefinitions
    class ListLoggerDefinitions
      def self.parse(http_resp)
        data = Types::ListLoggerDefinitionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.definitions = (Parsers::List____listOfDefinitionInformation.parse(map['Definitions']) unless map['Definitions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ListResourceDefinitionVersions
    class ListResourceDefinitionVersions
      def self.parse(http_resp)
        data = Types::ListResourceDefinitionVersionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['NextToken']
        data.versions = (Parsers::List____listOfVersionInformation.parse(map['Versions']) unless map['Versions'].nil?)
        data
      end
    end

    # Operation Parser for ListResourceDefinitions
    class ListResourceDefinitions
      def self.parse(http_resp)
        data = Types::ListResourceDefinitionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.definitions = (Parsers::List____listOfDefinitionInformation.parse(map['Definitions']) unless map['Definitions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ListSubscriptionDefinitionVersions
    class ListSubscriptionDefinitionVersions
      def self.parse(http_resp)
        data = Types::ListSubscriptionDefinitionVersionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['NextToken']
        data.versions = (Parsers::List____listOfVersionInformation.parse(map['Versions']) unless map['Versions'].nil?)
        data
      end
    end

    # Operation Parser for ListSubscriptionDefinitions
    class ListSubscriptionDefinitions
      def self.parse(http_resp)
        data = Types::ListSubscriptionDefinitionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.definitions = (Parsers::List____listOfDefinitionInformation.parse(map['Definitions']) unless map['Definitions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for ResetDeployments
    class ResetDeployments
      def self.parse(http_resp)
        data = Types::ResetDeploymentsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.deployment_arn = map['DeploymentArn']
        data.deployment_id = map['DeploymentId']
        data
      end
    end

    # Operation Parser for StartBulkDeployment
    class StartBulkDeployment
      def self.parse(http_resp)
        data = Types::StartBulkDeploymentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.bulk_deployment_arn = map['BulkDeploymentArn']
        data.bulk_deployment_id = map['BulkDeploymentId']
        data
      end
    end

    # Operation Parser for StopBulkDeployment
    class StopBulkDeployment
      def self.parse(http_resp)
        data = Types::StopBulkDeploymentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateConnectivityInfo
    class UpdateConnectivityInfo
      def self.parse(http_resp)
        data = Types::UpdateConnectivityInfoOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.version = map['Version']
        data
      end
    end

    # Operation Parser for UpdateConnectorDefinition
    class UpdateConnectorDefinition
      def self.parse(http_resp)
        data = Types::UpdateConnectorDefinitionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateCoreDefinition
    class UpdateCoreDefinition
      def self.parse(http_resp)
        data = Types::UpdateCoreDefinitionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateDeviceDefinition
    class UpdateDeviceDefinition
      def self.parse(http_resp)
        data = Types::UpdateDeviceDefinitionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateFunctionDefinition
    class UpdateFunctionDefinition
      def self.parse(http_resp)
        data = Types::UpdateFunctionDefinitionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateGroup
    class UpdateGroup
      def self.parse(http_resp)
        data = Types::UpdateGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateGroupCertificateConfiguration
    class UpdateGroupCertificateConfiguration
      def self.parse(http_resp)
        data = Types::UpdateGroupCertificateConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.certificate_authority_expiry_in_milliseconds = map['CertificateAuthorityExpiryInMilliseconds']
        data.certificate_expiry_in_milliseconds = map['CertificateExpiryInMilliseconds']
        data.group_id = map['GroupId']
        data
      end
    end

    # Operation Parser for UpdateLoggerDefinition
    class UpdateLoggerDefinition
      def self.parse(http_resp)
        data = Types::UpdateLoggerDefinitionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateResourceDefinition
    class UpdateResourceDefinition
      def self.parse(http_resp)
        data = Types::UpdateResourceDefinitionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateSubscriptionDefinition
    class UpdateSubscriptionDefinition
      def self.parse(http_resp)
        data = Types::UpdateSubscriptionDefinitionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateThingRuntimeConfiguration
    class UpdateThingRuntimeConfiguration
      def self.parse(http_resp)
        data = Types::UpdateThingRuntimeConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end
  end
end
