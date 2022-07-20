# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::AppRunner
  module Parsers

    # Operation Parser for AssociateCustomDomain
    class AssociateCustomDomain
      def self.parse(http_resp)
        data = Types::AssociateCustomDomainOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.dns_target = map['DNSTarget']
        data.service_arn = map['ServiceArn']
        data.custom_domain = (CustomDomain.parse(map['CustomDomain']) unless map['CustomDomain'].nil?)
        data
      end
    end

    class CustomDomain
      def self.parse(map)
        data = Types::CustomDomain.new
        data.domain_name = map['DomainName']
        data.enable_www_subdomain = map['EnableWWWSubdomain']
        data.certificate_validation_records = (CertificateValidationRecordList.parse(map['CertificateValidationRecords']) unless map['CertificateValidationRecords'].nil?)
        data.status = map['Status']
        return data
      end
    end

    class CertificateValidationRecordList
      def self.parse(list)
        list.map do |value|
          CertificateValidationRecord.parse(value) unless value.nil?
        end
      end
    end

    class CertificateValidationRecord
      def self.parse(map)
        data = Types::CertificateValidationRecord.new
        data.name = map['Name']
        data.type = map['Type']
        data.value = map['Value']
        data.status = map['Status']
        return data
      end
    end

    # Error Parser for InvalidRequestException
    class InvalidRequestException
      def self.parse(http_resp)
        data = Types::InvalidRequestException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InternalServiceErrorException
    class InternalServiceErrorException
      def self.parse(http_resp)
        data = Types::InternalServiceErrorException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidStateException
    class InvalidStateException
      def self.parse(http_resp)
        data = Types::InvalidStateException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateAutoScalingConfiguration
    class CreateAutoScalingConfiguration
      def self.parse(http_resp)
        data = Types::CreateAutoScalingConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.auto_scaling_configuration = (AutoScalingConfiguration.parse(map['AutoScalingConfiguration']) unless map['AutoScalingConfiguration'].nil?)
        data
      end
    end

    class AutoScalingConfiguration
      def self.parse(map)
        data = Types::AutoScalingConfiguration.new
        data.auto_scaling_configuration_arn = map['AutoScalingConfigurationArn']
        data.auto_scaling_configuration_name = map['AutoScalingConfigurationName']
        data.auto_scaling_configuration_revision = map['AutoScalingConfigurationRevision']
        data.latest = map['Latest']
        data.status = map['Status']
        data.max_concurrency = map['MaxConcurrency']
        data.min_size = map['MinSize']
        data.max_size = map['MaxSize']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.deleted_at = Time.at(map['DeletedAt'].to_i) if map['DeletedAt']
        return data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateConnection
    class CreateConnection
      def self.parse(http_resp)
        data = Types::CreateConnectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.connection = (Connection.parse(map['Connection']) unless map['Connection'].nil?)
        data
      end
    end

    class Connection
      def self.parse(map)
        data = Types::Connection.new
        data.connection_name = map['ConnectionName']
        data.connection_arn = map['ConnectionArn']
        data.provider_type = map['ProviderType']
        data.status = map['Status']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        return data
      end
    end

    # Operation Parser for CreateObservabilityConfiguration
    class CreateObservabilityConfiguration
      def self.parse(http_resp)
        data = Types::CreateObservabilityConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.observability_configuration = (ObservabilityConfiguration.parse(map['ObservabilityConfiguration']) unless map['ObservabilityConfiguration'].nil?)
        data
      end
    end

    class ObservabilityConfiguration
      def self.parse(map)
        data = Types::ObservabilityConfiguration.new
        data.observability_configuration_arn = map['ObservabilityConfigurationArn']
        data.observability_configuration_name = map['ObservabilityConfigurationName']
        data.trace_configuration = (TraceConfiguration.parse(map['TraceConfiguration']) unless map['TraceConfiguration'].nil?)
        data.observability_configuration_revision = map['ObservabilityConfigurationRevision']
        data.latest = map['Latest']
        data.status = map['Status']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.deleted_at = Time.at(map['DeletedAt'].to_i) if map['DeletedAt']
        return data
      end
    end

    class TraceConfiguration
      def self.parse(map)
        data = Types::TraceConfiguration.new
        data.vendor = map['Vendor']
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
        data.service = (Service.parse(map['Service']) unless map['Service'].nil?)
        data.operation_id = map['OperationId']
        data
      end
    end

    class Service
      def self.parse(map)
        data = Types::Service.new
        data.service_name = map['ServiceName']
        data.service_id = map['ServiceId']
        data.service_arn = map['ServiceArn']
        data.service_url = map['ServiceUrl']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.updated_at = Time.at(map['UpdatedAt'].to_i) if map['UpdatedAt']
        data.deleted_at = Time.at(map['DeletedAt'].to_i) if map['DeletedAt']
        data.status = map['Status']
        data.source_configuration = (SourceConfiguration.parse(map['SourceConfiguration']) unless map['SourceConfiguration'].nil?)
        data.instance_configuration = (InstanceConfiguration.parse(map['InstanceConfiguration']) unless map['InstanceConfiguration'].nil?)
        data.encryption_configuration = (EncryptionConfiguration.parse(map['EncryptionConfiguration']) unless map['EncryptionConfiguration'].nil?)
        data.health_check_configuration = (HealthCheckConfiguration.parse(map['HealthCheckConfiguration']) unless map['HealthCheckConfiguration'].nil?)
        data.auto_scaling_configuration_summary = (AutoScalingConfigurationSummary.parse(map['AutoScalingConfigurationSummary']) unless map['AutoScalingConfigurationSummary'].nil?)
        data.network_configuration = (NetworkConfiguration.parse(map['NetworkConfiguration']) unless map['NetworkConfiguration'].nil?)
        data.observability_configuration = (ServiceObservabilityConfiguration.parse(map['ObservabilityConfiguration']) unless map['ObservabilityConfiguration'].nil?)
        return data
      end
    end

    class ServiceObservabilityConfiguration
      def self.parse(map)
        data = Types::ServiceObservabilityConfiguration.new
        data.observability_enabled = map['ObservabilityEnabled']
        data.observability_configuration_arn = map['ObservabilityConfigurationArn']
        return data
      end
    end

    class NetworkConfiguration
      def self.parse(map)
        data = Types::NetworkConfiguration.new
        data.egress_configuration = (EgressConfiguration.parse(map['EgressConfiguration']) unless map['EgressConfiguration'].nil?)
        return data
      end
    end

    class EgressConfiguration
      def self.parse(map)
        data = Types::EgressConfiguration.new
        data.egress_type = map['EgressType']
        data.vpc_connector_arn = map['VpcConnectorArn']
        return data
      end
    end

    class AutoScalingConfigurationSummary
      def self.parse(map)
        data = Types::AutoScalingConfigurationSummary.new
        data.auto_scaling_configuration_arn = map['AutoScalingConfigurationArn']
        data.auto_scaling_configuration_name = map['AutoScalingConfigurationName']
        data.auto_scaling_configuration_revision = map['AutoScalingConfigurationRevision']
        return data
      end
    end

    class HealthCheckConfiguration
      def self.parse(map)
        data = Types::HealthCheckConfiguration.new
        data.protocol = map['Protocol']
        data.path = map['Path']
        data.interval = map['Interval']
        data.timeout = map['Timeout']
        data.healthy_threshold = map['HealthyThreshold']
        data.unhealthy_threshold = map['UnhealthyThreshold']
        return data
      end
    end

    class EncryptionConfiguration
      def self.parse(map)
        data = Types::EncryptionConfiguration.new
        data.kms_key = map['KmsKey']
        return data
      end
    end

    class InstanceConfiguration
      def self.parse(map)
        data = Types::InstanceConfiguration.new
        data.cpu = map['Cpu']
        data.memory = map['Memory']
        data.instance_role_arn = map['InstanceRoleArn']
        return data
      end
    end

    class SourceConfiguration
      def self.parse(map)
        data = Types::SourceConfiguration.new
        data.code_repository = (CodeRepository.parse(map['CodeRepository']) unless map['CodeRepository'].nil?)
        data.image_repository = (ImageRepository.parse(map['ImageRepository']) unless map['ImageRepository'].nil?)
        data.auto_deployments_enabled = map['AutoDeploymentsEnabled']
        data.authentication_configuration = (AuthenticationConfiguration.parse(map['AuthenticationConfiguration']) unless map['AuthenticationConfiguration'].nil?)
        return data
      end
    end

    class AuthenticationConfiguration
      def self.parse(map)
        data = Types::AuthenticationConfiguration.new
        data.connection_arn = map['ConnectionArn']
        data.access_role_arn = map['AccessRoleArn']
        return data
      end
    end

    class ImageRepository
      def self.parse(map)
        data = Types::ImageRepository.new
        data.image_identifier = map['ImageIdentifier']
        data.image_configuration = (ImageConfiguration.parse(map['ImageConfiguration']) unless map['ImageConfiguration'].nil?)
        data.image_repository_type = map['ImageRepositoryType']
        return data
      end
    end

    class ImageConfiguration
      def self.parse(map)
        data = Types::ImageConfiguration.new
        data.runtime_environment_variables = (RuntimeEnvironmentVariables.parse(map['RuntimeEnvironmentVariables']) unless map['RuntimeEnvironmentVariables'].nil?)
        data.start_command = map['StartCommand']
        data.port = map['Port']
        return data
      end
    end

    class RuntimeEnvironmentVariables
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class CodeRepository
      def self.parse(map)
        data = Types::CodeRepository.new
        data.repository_url = map['RepositoryUrl']
        data.source_code_version = (SourceCodeVersion.parse(map['SourceCodeVersion']) unless map['SourceCodeVersion'].nil?)
        data.code_configuration = (CodeConfiguration.parse(map['CodeConfiguration']) unless map['CodeConfiguration'].nil?)
        return data
      end
    end

    class CodeConfiguration
      def self.parse(map)
        data = Types::CodeConfiguration.new
        data.configuration_source = map['ConfigurationSource']
        data.code_configuration_values = (CodeConfigurationValues.parse(map['CodeConfigurationValues']) unless map['CodeConfigurationValues'].nil?)
        return data
      end
    end

    class CodeConfigurationValues
      def self.parse(map)
        data = Types::CodeConfigurationValues.new
        data.runtime = map['Runtime']
        data.build_command = map['BuildCommand']
        data.start_command = map['StartCommand']
        data.port = map['Port']
        data.runtime_environment_variables = (RuntimeEnvironmentVariables.parse(map['RuntimeEnvironmentVariables']) unless map['RuntimeEnvironmentVariables'].nil?)
        return data
      end
    end

    class SourceCodeVersion
      def self.parse(map)
        data = Types::SourceCodeVersion.new
        data.type = map['Type']
        data.value = map['Value']
        return data
      end
    end

    # Operation Parser for CreateVpcConnector
    class CreateVpcConnector
      def self.parse(http_resp)
        data = Types::CreateVpcConnectorOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.vpc_connector = (VpcConnector.parse(map['VpcConnector']) unless map['VpcConnector'].nil?)
        data
      end
    end

    class VpcConnector
      def self.parse(map)
        data = Types::VpcConnector.new
        data.vpc_connector_name = map['VpcConnectorName']
        data.vpc_connector_arn = map['VpcConnectorArn']
        data.vpc_connector_revision = map['VpcConnectorRevision']
        data.subnets = (StringList.parse(map['Subnets']) unless map['Subnets'].nil?)
        data.security_groups = (StringList.parse(map['SecurityGroups']) unless map['SecurityGroups'].nil?)
        data.status = map['Status']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.deleted_at = Time.at(map['DeletedAt'].to_i) if map['DeletedAt']
        return data
      end
    end

    class StringList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for DeleteAutoScalingConfiguration
    class DeleteAutoScalingConfiguration
      def self.parse(http_resp)
        data = Types::DeleteAutoScalingConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.auto_scaling_configuration = (AutoScalingConfiguration.parse(map['AutoScalingConfiguration']) unless map['AutoScalingConfiguration'].nil?)
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
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteConnection
    class DeleteConnection
      def self.parse(http_resp)
        data = Types::DeleteConnectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.connection = (Connection.parse(map['Connection']) unless map['Connection'].nil?)
        data
      end
    end

    # Operation Parser for DeleteObservabilityConfiguration
    class DeleteObservabilityConfiguration
      def self.parse(http_resp)
        data = Types::DeleteObservabilityConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.observability_configuration = (ObservabilityConfiguration.parse(map['ObservabilityConfiguration']) unless map['ObservabilityConfiguration'].nil?)
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
        data.service = (Service.parse(map['Service']) unless map['Service'].nil?)
        data.operation_id = map['OperationId']
        data
      end
    end

    # Operation Parser for DeleteVpcConnector
    class DeleteVpcConnector
      def self.parse(http_resp)
        data = Types::DeleteVpcConnectorOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.vpc_connector = (VpcConnector.parse(map['VpcConnector']) unless map['VpcConnector'].nil?)
        data
      end
    end

    # Operation Parser for DescribeAutoScalingConfiguration
    class DescribeAutoScalingConfiguration
      def self.parse(http_resp)
        data = Types::DescribeAutoScalingConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.auto_scaling_configuration = (AutoScalingConfiguration.parse(map['AutoScalingConfiguration']) unless map['AutoScalingConfiguration'].nil?)
        data
      end
    end

    # Operation Parser for DescribeCustomDomains
    class DescribeCustomDomains
      def self.parse(http_resp)
        data = Types::DescribeCustomDomainsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.dns_target = map['DNSTarget']
        data.service_arn = map['ServiceArn']
        data.custom_domains = (CustomDomainList.parse(map['CustomDomains']) unless map['CustomDomains'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class CustomDomainList
      def self.parse(list)
        list.map do |value|
          CustomDomain.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeObservabilityConfiguration
    class DescribeObservabilityConfiguration
      def self.parse(http_resp)
        data = Types::DescribeObservabilityConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.observability_configuration = (ObservabilityConfiguration.parse(map['ObservabilityConfiguration']) unless map['ObservabilityConfiguration'].nil?)
        data
      end
    end

    # Operation Parser for DescribeService
    class DescribeService
      def self.parse(http_resp)
        data = Types::DescribeServiceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.service = (Service.parse(map['Service']) unless map['Service'].nil?)
        data
      end
    end

    # Operation Parser for DescribeVpcConnector
    class DescribeVpcConnector
      def self.parse(http_resp)
        data = Types::DescribeVpcConnectorOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.vpc_connector = (VpcConnector.parse(map['VpcConnector']) unless map['VpcConnector'].nil?)
        data
      end
    end

    # Operation Parser for DisassociateCustomDomain
    class DisassociateCustomDomain
      def self.parse(http_resp)
        data = Types::DisassociateCustomDomainOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.dns_target = map['DNSTarget']
        data.service_arn = map['ServiceArn']
        data.custom_domain = (CustomDomain.parse(map['CustomDomain']) unless map['CustomDomain'].nil?)
        data
      end
    end

    # Operation Parser for ListAutoScalingConfigurations
    class ListAutoScalingConfigurations
      def self.parse(http_resp)
        data = Types::ListAutoScalingConfigurationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.auto_scaling_configuration_summary_list = (AutoScalingConfigurationSummaryList.parse(map['AutoScalingConfigurationSummaryList']) unless map['AutoScalingConfigurationSummaryList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class AutoScalingConfigurationSummaryList
      def self.parse(list)
        list.map do |value|
          AutoScalingConfigurationSummary.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListConnections
    class ListConnections
      def self.parse(http_resp)
        data = Types::ListConnectionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.connection_summary_list = (ConnectionSummaryList.parse(map['ConnectionSummaryList']) unless map['ConnectionSummaryList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ConnectionSummaryList
      def self.parse(list)
        list.map do |value|
          ConnectionSummary.parse(value) unless value.nil?
        end
      end
    end

    class ConnectionSummary
      def self.parse(map)
        data = Types::ConnectionSummary.new
        data.connection_name = map['ConnectionName']
        data.connection_arn = map['ConnectionArn']
        data.provider_type = map['ProviderType']
        data.status = map['Status']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        return data
      end
    end

    # Operation Parser for ListObservabilityConfigurations
    class ListObservabilityConfigurations
      def self.parse(http_resp)
        data = Types::ListObservabilityConfigurationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.observability_configuration_summary_list = (ObservabilityConfigurationSummaryList.parse(map['ObservabilityConfigurationSummaryList']) unless map['ObservabilityConfigurationSummaryList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ObservabilityConfigurationSummaryList
      def self.parse(list)
        list.map do |value|
          ObservabilityConfigurationSummary.parse(value) unless value.nil?
        end
      end
    end

    class ObservabilityConfigurationSummary
      def self.parse(map)
        data = Types::ObservabilityConfigurationSummary.new
        data.observability_configuration_arn = map['ObservabilityConfigurationArn']
        data.observability_configuration_name = map['ObservabilityConfigurationName']
        data.observability_configuration_revision = map['ObservabilityConfigurationRevision']
        return data
      end
    end

    # Operation Parser for ListOperations
    class ListOperations
      def self.parse(http_resp)
        data = Types::ListOperationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operation_summary_list = (OperationSummaryList.parse(map['OperationSummaryList']) unless map['OperationSummaryList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class OperationSummaryList
      def self.parse(list)
        list.map do |value|
          OperationSummary.parse(value) unless value.nil?
        end
      end
    end

    class OperationSummary
      def self.parse(map)
        data = Types::OperationSummary.new
        data.id = map['Id']
        data.type = map['Type']
        data.status = map['Status']
        data.target_arn = map['TargetArn']
        data.started_at = Time.at(map['StartedAt'].to_i) if map['StartedAt']
        data.ended_at = Time.at(map['EndedAt'].to_i) if map['EndedAt']
        data.updated_at = Time.at(map['UpdatedAt'].to_i) if map['UpdatedAt']
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
        data.service_summary_list = (ServiceSummaryList.parse(map['ServiceSummaryList']) unless map['ServiceSummaryList'].nil?)
        data.next_token = map['NextToken']
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
        data.service_name = map['ServiceName']
        data.service_id = map['ServiceId']
        data.service_arn = map['ServiceArn']
        data.service_url = map['ServiceUrl']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.updated_at = Time.at(map['UpdatedAt'].to_i) if map['UpdatedAt']
        data.status = map['Status']
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
        data.tags = (TagList.parse(map['Tags']) unless map['Tags'].nil?)
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
        data.key = map['Key']
        data.value = map['Value']
        return data
      end
    end

    # Operation Parser for ListVpcConnectors
    class ListVpcConnectors
      def self.parse(http_resp)
        data = Types::ListVpcConnectorsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.vpc_connectors = (VpcConnectors.parse(map['VpcConnectors']) unless map['VpcConnectors'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class VpcConnectors
      def self.parse(list)
        list.map do |value|
          VpcConnector.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for PauseService
    class PauseService
      def self.parse(http_resp)
        data = Types::PauseServiceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.service = (Service.parse(map['Service']) unless map['Service'].nil?)
        data.operation_id = map['OperationId']
        data
      end
    end

    # Operation Parser for ResumeService
    class ResumeService
      def self.parse(http_resp)
        data = Types::ResumeServiceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.service = (Service.parse(map['Service']) unless map['Service'].nil?)
        data.operation_id = map['OperationId']
        data
      end
    end

    # Operation Parser for StartDeployment
    class StartDeployment
      def self.parse(http_resp)
        data = Types::StartDeploymentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operation_id = map['OperationId']
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

    # Operation Parser for UpdateService
    class UpdateService
      def self.parse(http_resp)
        data = Types::UpdateServiceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.service = (Service.parse(map['Service']) unless map['Service'].nil?)
        data.operation_id = map['OperationId']
        data
      end
    end
  end
end
