# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::AppRunner
  module Stubs

    # Operation Stubber for AssociateCustomDomain
    class AssociateCustomDomain
      def self.default(visited=[])
        {
          dns_target: 'dns_target',
          service_arn: 'service_arn',
          custom_domain: CustomDomain.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DNSTarget'] = stub[:dns_target] unless stub[:dns_target].nil?
        data['ServiceArn'] = stub[:service_arn] unless stub[:service_arn].nil?
        data['CustomDomain'] = CustomDomain.stub(stub[:custom_domain]) unless stub[:custom_domain].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for CustomDomain
    class CustomDomain
      def self.default(visited=[])
        return nil if visited.include?('CustomDomain')
        visited = visited + ['CustomDomain']
        {
          domain_name: 'domain_name',
          enable_www_subdomain: false,
          certificate_validation_records: CertificateValidationRecordList.default(visited),
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomDomain.new
        data = {}
        data['DomainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['EnableWWWSubdomain'] = stub[:enable_www_subdomain] unless stub[:enable_www_subdomain].nil?
        data['CertificateValidationRecords'] = CertificateValidationRecordList.stub(stub[:certificate_validation_records]) unless stub[:certificate_validation_records].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # List Stubber for CertificateValidationRecordList
    class CertificateValidationRecordList
      def self.default(visited=[])
        return nil if visited.include?('CertificateValidationRecordList')
        visited = visited + ['CertificateValidationRecordList']
        [
          CertificateValidationRecord.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CertificateValidationRecord.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CertificateValidationRecord
    class CertificateValidationRecord
      def self.default(visited=[])
        return nil if visited.include?('CertificateValidationRecord')
        visited = visited + ['CertificateValidationRecord']
        {
          name: 'name',
          type: 'type',
          value: 'value',
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::CertificateValidationRecord.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Operation Stubber for CreateAutoScalingConfiguration
    class CreateAutoScalingConfiguration
      def self.default(visited=[])
        {
          auto_scaling_configuration: AutoScalingConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AutoScalingConfiguration'] = AutoScalingConfiguration.stub(stub[:auto_scaling_configuration]) unless stub[:auto_scaling_configuration].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for AutoScalingConfiguration
    class AutoScalingConfiguration
      def self.default(visited=[])
        return nil if visited.include?('AutoScalingConfiguration')
        visited = visited + ['AutoScalingConfiguration']
        {
          auto_scaling_configuration_arn: 'auto_scaling_configuration_arn',
          auto_scaling_configuration_name: 'auto_scaling_configuration_name',
          auto_scaling_configuration_revision: 1,
          latest: false,
          status: 'status',
          max_concurrency: 1,
          min_size: 1,
          max_size: 1,
          created_at: Time.now,
          deleted_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::AutoScalingConfiguration.new
        data = {}
        data['AutoScalingConfigurationArn'] = stub[:auto_scaling_configuration_arn] unless stub[:auto_scaling_configuration_arn].nil?
        data['AutoScalingConfigurationName'] = stub[:auto_scaling_configuration_name] unless stub[:auto_scaling_configuration_name].nil?
        data['AutoScalingConfigurationRevision'] = stub[:auto_scaling_configuration_revision] unless stub[:auto_scaling_configuration_revision].nil?
        data['Latest'] = stub[:latest] unless stub[:latest].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['MaxConcurrency'] = stub[:max_concurrency] unless stub[:max_concurrency].nil?
        data['MinSize'] = stub[:min_size] unless stub[:min_size].nil?
        data['MaxSize'] = stub[:max_size] unless stub[:max_size].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['DeletedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:deleted_at]).to_i unless stub[:deleted_at].nil?
        data
      end
    end

    # Operation Stubber for CreateConnection
    class CreateConnection
      def self.default(visited=[])
        {
          connection: Connection.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Connection'] = Connection.stub(stub[:connection]) unless stub[:connection].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Connection
    class Connection
      def self.default(visited=[])
        return nil if visited.include?('Connection')
        visited = visited + ['Connection']
        {
          connection_name: 'connection_name',
          connection_arn: 'connection_arn',
          provider_type: 'provider_type',
          status: 'status',
          created_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Connection.new
        data = {}
        data['ConnectionName'] = stub[:connection_name] unless stub[:connection_name].nil?
        data['ConnectionArn'] = stub[:connection_arn] unless stub[:connection_arn].nil?
        data['ProviderType'] = stub[:provider_type] unless stub[:provider_type].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data
      end
    end

    # Operation Stubber for CreateObservabilityConfiguration
    class CreateObservabilityConfiguration
      def self.default(visited=[])
        {
          observability_configuration: ObservabilityConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ObservabilityConfiguration'] = ObservabilityConfiguration.stub(stub[:observability_configuration]) unless stub[:observability_configuration].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ObservabilityConfiguration
    class ObservabilityConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ObservabilityConfiguration')
        visited = visited + ['ObservabilityConfiguration']
        {
          observability_configuration_arn: 'observability_configuration_arn',
          observability_configuration_name: 'observability_configuration_name',
          trace_configuration: TraceConfiguration.default(visited),
          observability_configuration_revision: 1,
          latest: false,
          status: 'status',
          created_at: Time.now,
          deleted_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ObservabilityConfiguration.new
        data = {}
        data['ObservabilityConfigurationArn'] = stub[:observability_configuration_arn] unless stub[:observability_configuration_arn].nil?
        data['ObservabilityConfigurationName'] = stub[:observability_configuration_name] unless stub[:observability_configuration_name].nil?
        data['TraceConfiguration'] = TraceConfiguration.stub(stub[:trace_configuration]) unless stub[:trace_configuration].nil?
        data['ObservabilityConfigurationRevision'] = stub[:observability_configuration_revision] unless stub[:observability_configuration_revision].nil?
        data['Latest'] = stub[:latest] unless stub[:latest].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['DeletedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:deleted_at]).to_i unless stub[:deleted_at].nil?
        data
      end
    end

    # Structure Stubber for TraceConfiguration
    class TraceConfiguration
      def self.default(visited=[])
        return nil if visited.include?('TraceConfiguration')
        visited = visited + ['TraceConfiguration']
        {
          vendor: 'vendor',
        }
      end

      def self.stub(stub)
        stub ||= Types::TraceConfiguration.new
        data = {}
        data['Vendor'] = stub[:vendor] unless stub[:vendor].nil?
        data
      end
    end

    # Operation Stubber for CreateService
    class CreateService
      def self.default(visited=[])
        {
          service: Service.default(visited),
          operation_id: 'operation_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Service'] = Service.stub(stub[:service]) unless stub[:service].nil?
        data['OperationId'] = stub[:operation_id] unless stub[:operation_id].nil?
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
          service_name: 'service_name',
          service_id: 'service_id',
          service_arn: 'service_arn',
          service_url: 'service_url',
          created_at: Time.now,
          updated_at: Time.now,
          deleted_at: Time.now,
          status: 'status',
          source_configuration: SourceConfiguration.default(visited),
          instance_configuration: InstanceConfiguration.default(visited),
          encryption_configuration: EncryptionConfiguration.default(visited),
          health_check_configuration: HealthCheckConfiguration.default(visited),
          auto_scaling_configuration_summary: AutoScalingConfigurationSummary.default(visited),
          network_configuration: NetworkConfiguration.default(visited),
          observability_configuration: ServiceObservabilityConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Service.new
        data = {}
        data['ServiceName'] = stub[:service_name] unless stub[:service_name].nil?
        data['ServiceId'] = stub[:service_id] unless stub[:service_id].nil?
        data['ServiceArn'] = stub[:service_arn] unless stub[:service_arn].nil?
        data['ServiceUrl'] = stub[:service_url] unless stub[:service_url].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['UpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_at]).to_i unless stub[:updated_at].nil?
        data['DeletedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:deleted_at]).to_i unless stub[:deleted_at].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['SourceConfiguration'] = SourceConfiguration.stub(stub[:source_configuration]) unless stub[:source_configuration].nil?
        data['InstanceConfiguration'] = InstanceConfiguration.stub(stub[:instance_configuration]) unless stub[:instance_configuration].nil?
        data['EncryptionConfiguration'] = EncryptionConfiguration.stub(stub[:encryption_configuration]) unless stub[:encryption_configuration].nil?
        data['HealthCheckConfiguration'] = HealthCheckConfiguration.stub(stub[:health_check_configuration]) unless stub[:health_check_configuration].nil?
        data['AutoScalingConfigurationSummary'] = AutoScalingConfigurationSummary.stub(stub[:auto_scaling_configuration_summary]) unless stub[:auto_scaling_configuration_summary].nil?
        data['NetworkConfiguration'] = NetworkConfiguration.stub(stub[:network_configuration]) unless stub[:network_configuration].nil?
        data['ObservabilityConfiguration'] = ServiceObservabilityConfiguration.stub(stub[:observability_configuration]) unless stub[:observability_configuration].nil?
        data
      end
    end

    # Structure Stubber for ServiceObservabilityConfiguration
    class ServiceObservabilityConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ServiceObservabilityConfiguration')
        visited = visited + ['ServiceObservabilityConfiguration']
        {
          observability_enabled: false,
          observability_configuration_arn: 'observability_configuration_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::ServiceObservabilityConfiguration.new
        data = {}
        data['ObservabilityEnabled'] = stub[:observability_enabled] unless stub[:observability_enabled].nil?
        data['ObservabilityConfigurationArn'] = stub[:observability_configuration_arn] unless stub[:observability_configuration_arn].nil?
        data
      end
    end

    # Structure Stubber for NetworkConfiguration
    class NetworkConfiguration
      def self.default(visited=[])
        return nil if visited.include?('NetworkConfiguration')
        visited = visited + ['NetworkConfiguration']
        {
          egress_configuration: EgressConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::NetworkConfiguration.new
        data = {}
        data['EgressConfiguration'] = EgressConfiguration.stub(stub[:egress_configuration]) unless stub[:egress_configuration].nil?
        data
      end
    end

    # Structure Stubber for EgressConfiguration
    class EgressConfiguration
      def self.default(visited=[])
        return nil if visited.include?('EgressConfiguration')
        visited = visited + ['EgressConfiguration']
        {
          egress_type: 'egress_type',
          vpc_connector_arn: 'vpc_connector_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::EgressConfiguration.new
        data = {}
        data['EgressType'] = stub[:egress_type] unless stub[:egress_type].nil?
        data['VpcConnectorArn'] = stub[:vpc_connector_arn] unless stub[:vpc_connector_arn].nil?
        data
      end
    end

    # Structure Stubber for AutoScalingConfigurationSummary
    class AutoScalingConfigurationSummary
      def self.default(visited=[])
        return nil if visited.include?('AutoScalingConfigurationSummary')
        visited = visited + ['AutoScalingConfigurationSummary']
        {
          auto_scaling_configuration_arn: 'auto_scaling_configuration_arn',
          auto_scaling_configuration_name: 'auto_scaling_configuration_name',
          auto_scaling_configuration_revision: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AutoScalingConfigurationSummary.new
        data = {}
        data['AutoScalingConfigurationArn'] = stub[:auto_scaling_configuration_arn] unless stub[:auto_scaling_configuration_arn].nil?
        data['AutoScalingConfigurationName'] = stub[:auto_scaling_configuration_name] unless stub[:auto_scaling_configuration_name].nil?
        data['AutoScalingConfigurationRevision'] = stub[:auto_scaling_configuration_revision] unless stub[:auto_scaling_configuration_revision].nil?
        data
      end
    end

    # Structure Stubber for HealthCheckConfiguration
    class HealthCheckConfiguration
      def self.default(visited=[])
        return nil if visited.include?('HealthCheckConfiguration')
        visited = visited + ['HealthCheckConfiguration']
        {
          protocol: 'protocol',
          path: 'path',
          interval: 1,
          timeout: 1,
          healthy_threshold: 1,
          unhealthy_threshold: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::HealthCheckConfiguration.new
        data = {}
        data['Protocol'] = stub[:protocol] unless stub[:protocol].nil?
        data['Path'] = stub[:path] unless stub[:path].nil?
        data['Interval'] = stub[:interval] unless stub[:interval].nil?
        data['Timeout'] = stub[:timeout] unless stub[:timeout].nil?
        data['HealthyThreshold'] = stub[:healthy_threshold] unless stub[:healthy_threshold].nil?
        data['UnhealthyThreshold'] = stub[:unhealthy_threshold] unless stub[:unhealthy_threshold].nil?
        data
      end
    end

    # Structure Stubber for EncryptionConfiguration
    class EncryptionConfiguration
      def self.default(visited=[])
        return nil if visited.include?('EncryptionConfiguration')
        visited = visited + ['EncryptionConfiguration']
        {
          kms_key: 'kms_key',
        }
      end

      def self.stub(stub)
        stub ||= Types::EncryptionConfiguration.new
        data = {}
        data['KmsKey'] = stub[:kms_key] unless stub[:kms_key].nil?
        data
      end
    end

    # Structure Stubber for InstanceConfiguration
    class InstanceConfiguration
      def self.default(visited=[])
        return nil if visited.include?('InstanceConfiguration')
        visited = visited + ['InstanceConfiguration']
        {
          cpu: 'cpu',
          memory: 'memory',
          instance_role_arn: 'instance_role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceConfiguration.new
        data = {}
        data['Cpu'] = stub[:cpu] unless stub[:cpu].nil?
        data['Memory'] = stub[:memory] unless stub[:memory].nil?
        data['InstanceRoleArn'] = stub[:instance_role_arn] unless stub[:instance_role_arn].nil?
        data
      end
    end

    # Structure Stubber for SourceConfiguration
    class SourceConfiguration
      def self.default(visited=[])
        return nil if visited.include?('SourceConfiguration')
        visited = visited + ['SourceConfiguration']
        {
          code_repository: CodeRepository.default(visited),
          image_repository: ImageRepository.default(visited),
          auto_deployments_enabled: false,
          authentication_configuration: AuthenticationConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SourceConfiguration.new
        data = {}
        data['CodeRepository'] = CodeRepository.stub(stub[:code_repository]) unless stub[:code_repository].nil?
        data['ImageRepository'] = ImageRepository.stub(stub[:image_repository]) unless stub[:image_repository].nil?
        data['AutoDeploymentsEnabled'] = stub[:auto_deployments_enabled] unless stub[:auto_deployments_enabled].nil?
        data['AuthenticationConfiguration'] = AuthenticationConfiguration.stub(stub[:authentication_configuration]) unless stub[:authentication_configuration].nil?
        data
      end
    end

    # Structure Stubber for AuthenticationConfiguration
    class AuthenticationConfiguration
      def self.default(visited=[])
        return nil if visited.include?('AuthenticationConfiguration')
        visited = visited + ['AuthenticationConfiguration']
        {
          connection_arn: 'connection_arn',
          access_role_arn: 'access_role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::AuthenticationConfiguration.new
        data = {}
        data['ConnectionArn'] = stub[:connection_arn] unless stub[:connection_arn].nil?
        data['AccessRoleArn'] = stub[:access_role_arn] unless stub[:access_role_arn].nil?
        data
      end
    end

    # Structure Stubber for ImageRepository
    class ImageRepository
      def self.default(visited=[])
        return nil if visited.include?('ImageRepository')
        visited = visited + ['ImageRepository']
        {
          image_identifier: 'image_identifier',
          image_configuration: ImageConfiguration.default(visited),
          image_repository_type: 'image_repository_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::ImageRepository.new
        data = {}
        data['ImageIdentifier'] = stub[:image_identifier] unless stub[:image_identifier].nil?
        data['ImageConfiguration'] = ImageConfiguration.stub(stub[:image_configuration]) unless stub[:image_configuration].nil?
        data['ImageRepositoryType'] = stub[:image_repository_type] unless stub[:image_repository_type].nil?
        data
      end
    end

    # Structure Stubber for ImageConfiguration
    class ImageConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ImageConfiguration')
        visited = visited + ['ImageConfiguration']
        {
          runtime_environment_variables: RuntimeEnvironmentVariables.default(visited),
          start_command: 'start_command',
          port: 'port',
        }
      end

      def self.stub(stub)
        stub ||= Types::ImageConfiguration.new
        data = {}
        data['RuntimeEnvironmentVariables'] = RuntimeEnvironmentVariables.stub(stub[:runtime_environment_variables]) unless stub[:runtime_environment_variables].nil?
        data['StartCommand'] = stub[:start_command] unless stub[:start_command].nil?
        data['Port'] = stub[:port] unless stub[:port].nil?
        data
      end
    end

    # Map Stubber for RuntimeEnvironmentVariables
    class RuntimeEnvironmentVariables
      def self.default(visited=[])
        return nil if visited.include?('RuntimeEnvironmentVariables')
        visited = visited + ['RuntimeEnvironmentVariables']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for CodeRepository
    class CodeRepository
      def self.default(visited=[])
        return nil if visited.include?('CodeRepository')
        visited = visited + ['CodeRepository']
        {
          repository_url: 'repository_url',
          source_code_version: SourceCodeVersion.default(visited),
          code_configuration: CodeConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CodeRepository.new
        data = {}
        data['RepositoryUrl'] = stub[:repository_url] unless stub[:repository_url].nil?
        data['SourceCodeVersion'] = SourceCodeVersion.stub(stub[:source_code_version]) unless stub[:source_code_version].nil?
        data['CodeConfiguration'] = CodeConfiguration.stub(stub[:code_configuration]) unless stub[:code_configuration].nil?
        data
      end
    end

    # Structure Stubber for CodeConfiguration
    class CodeConfiguration
      def self.default(visited=[])
        return nil if visited.include?('CodeConfiguration')
        visited = visited + ['CodeConfiguration']
        {
          configuration_source: 'configuration_source',
          code_configuration_values: CodeConfigurationValues.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CodeConfiguration.new
        data = {}
        data['ConfigurationSource'] = stub[:configuration_source] unless stub[:configuration_source].nil?
        data['CodeConfigurationValues'] = CodeConfigurationValues.stub(stub[:code_configuration_values]) unless stub[:code_configuration_values].nil?
        data
      end
    end

    # Structure Stubber for CodeConfigurationValues
    class CodeConfigurationValues
      def self.default(visited=[])
        return nil if visited.include?('CodeConfigurationValues')
        visited = visited + ['CodeConfigurationValues']
        {
          runtime: 'runtime',
          build_command: 'build_command',
          start_command: 'start_command',
          port: 'port',
          runtime_environment_variables: RuntimeEnvironmentVariables.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CodeConfigurationValues.new
        data = {}
        data['Runtime'] = stub[:runtime] unless stub[:runtime].nil?
        data['BuildCommand'] = stub[:build_command] unless stub[:build_command].nil?
        data['StartCommand'] = stub[:start_command] unless stub[:start_command].nil?
        data['Port'] = stub[:port] unless stub[:port].nil?
        data['RuntimeEnvironmentVariables'] = RuntimeEnvironmentVariables.stub(stub[:runtime_environment_variables]) unless stub[:runtime_environment_variables].nil?
        data
      end
    end

    # Structure Stubber for SourceCodeVersion
    class SourceCodeVersion
      def self.default(visited=[])
        return nil if visited.include?('SourceCodeVersion')
        visited = visited + ['SourceCodeVersion']
        {
          type: 'type',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::SourceCodeVersion.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for CreateVpcConnector
    class CreateVpcConnector
      def self.default(visited=[])
        {
          vpc_connector: VpcConnector.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['VpcConnector'] = VpcConnector.stub(stub[:vpc_connector]) unless stub[:vpc_connector].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for VpcConnector
    class VpcConnector
      def self.default(visited=[])
        return nil if visited.include?('VpcConnector')
        visited = visited + ['VpcConnector']
        {
          vpc_connector_name: 'vpc_connector_name',
          vpc_connector_arn: 'vpc_connector_arn',
          vpc_connector_revision: 1,
          subnets: StringList.default(visited),
          security_groups: StringList.default(visited),
          status: 'status',
          created_at: Time.now,
          deleted_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::VpcConnector.new
        data = {}
        data['VpcConnectorName'] = stub[:vpc_connector_name] unless stub[:vpc_connector_name].nil?
        data['VpcConnectorArn'] = stub[:vpc_connector_arn] unless stub[:vpc_connector_arn].nil?
        data['VpcConnectorRevision'] = stub[:vpc_connector_revision] unless stub[:vpc_connector_revision].nil?
        data['Subnets'] = StringList.stub(stub[:subnets]) unless stub[:subnets].nil?
        data['SecurityGroups'] = StringList.stub(stub[:security_groups]) unless stub[:security_groups].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['DeletedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:deleted_at]).to_i unless stub[:deleted_at].nil?
        data
      end
    end

    # List Stubber for StringList
    class StringList
      def self.default(visited=[])
        return nil if visited.include?('StringList')
        visited = visited + ['StringList']
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

    # Operation Stubber for DeleteAutoScalingConfiguration
    class DeleteAutoScalingConfiguration
      def self.default(visited=[])
        {
          auto_scaling_configuration: AutoScalingConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AutoScalingConfiguration'] = AutoScalingConfiguration.stub(stub[:auto_scaling_configuration]) unless stub[:auto_scaling_configuration].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteConnection
    class DeleteConnection
      def self.default(visited=[])
        {
          connection: Connection.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Connection'] = Connection.stub(stub[:connection]) unless stub[:connection].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteObservabilityConfiguration
    class DeleteObservabilityConfiguration
      def self.default(visited=[])
        {
          observability_configuration: ObservabilityConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ObservabilityConfiguration'] = ObservabilityConfiguration.stub(stub[:observability_configuration]) unless stub[:observability_configuration].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteService
    class DeleteService
      def self.default(visited=[])
        {
          service: Service.default(visited),
          operation_id: 'operation_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Service'] = Service.stub(stub[:service]) unless stub[:service].nil?
        data['OperationId'] = stub[:operation_id] unless stub[:operation_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteVpcConnector
    class DeleteVpcConnector
      def self.default(visited=[])
        {
          vpc_connector: VpcConnector.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['VpcConnector'] = VpcConnector.stub(stub[:vpc_connector]) unless stub[:vpc_connector].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeAutoScalingConfiguration
    class DescribeAutoScalingConfiguration
      def self.default(visited=[])
        {
          auto_scaling_configuration: AutoScalingConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AutoScalingConfiguration'] = AutoScalingConfiguration.stub(stub[:auto_scaling_configuration]) unless stub[:auto_scaling_configuration].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeCustomDomains
    class DescribeCustomDomains
      def self.default(visited=[])
        {
          dns_target: 'dns_target',
          service_arn: 'service_arn',
          custom_domains: CustomDomainList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DNSTarget'] = stub[:dns_target] unless stub[:dns_target].nil?
        data['ServiceArn'] = stub[:service_arn] unless stub[:service_arn].nil?
        data['CustomDomains'] = CustomDomainList.stub(stub[:custom_domains]) unless stub[:custom_domains].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for CustomDomainList
    class CustomDomainList
      def self.default(visited=[])
        return nil if visited.include?('CustomDomainList')
        visited = visited + ['CustomDomainList']
        [
          CustomDomain.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CustomDomain.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeObservabilityConfiguration
    class DescribeObservabilityConfiguration
      def self.default(visited=[])
        {
          observability_configuration: ObservabilityConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ObservabilityConfiguration'] = ObservabilityConfiguration.stub(stub[:observability_configuration]) unless stub[:observability_configuration].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeService
    class DescribeService
      def self.default(visited=[])
        {
          service: Service.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Service'] = Service.stub(stub[:service]) unless stub[:service].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeVpcConnector
    class DescribeVpcConnector
      def self.default(visited=[])
        {
          vpc_connector: VpcConnector.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['VpcConnector'] = VpcConnector.stub(stub[:vpc_connector]) unless stub[:vpc_connector].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateCustomDomain
    class DisassociateCustomDomain
      def self.default(visited=[])
        {
          dns_target: 'dns_target',
          service_arn: 'service_arn',
          custom_domain: CustomDomain.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DNSTarget'] = stub[:dns_target] unless stub[:dns_target].nil?
        data['ServiceArn'] = stub[:service_arn] unless stub[:service_arn].nil?
        data['CustomDomain'] = CustomDomain.stub(stub[:custom_domain]) unless stub[:custom_domain].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListAutoScalingConfigurations
    class ListAutoScalingConfigurations
      def self.default(visited=[])
        {
          auto_scaling_configuration_summary_list: AutoScalingConfigurationSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AutoScalingConfigurationSummaryList'] = AutoScalingConfigurationSummaryList.stub(stub[:auto_scaling_configuration_summary_list]) unless stub[:auto_scaling_configuration_summary_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AutoScalingConfigurationSummaryList
    class AutoScalingConfigurationSummaryList
      def self.default(visited=[])
        return nil if visited.include?('AutoScalingConfigurationSummaryList')
        visited = visited + ['AutoScalingConfigurationSummaryList']
        [
          AutoScalingConfigurationSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AutoScalingConfigurationSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListConnections
    class ListConnections
      def self.default(visited=[])
        {
          connection_summary_list: ConnectionSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ConnectionSummaryList'] = ConnectionSummaryList.stub(stub[:connection_summary_list]) unless stub[:connection_summary_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ConnectionSummaryList
    class ConnectionSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ConnectionSummaryList')
        visited = visited + ['ConnectionSummaryList']
        [
          ConnectionSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ConnectionSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ConnectionSummary
    class ConnectionSummary
      def self.default(visited=[])
        return nil if visited.include?('ConnectionSummary')
        visited = visited + ['ConnectionSummary']
        {
          connection_name: 'connection_name',
          connection_arn: 'connection_arn',
          provider_type: 'provider_type',
          status: 'status',
          created_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ConnectionSummary.new
        data = {}
        data['ConnectionName'] = stub[:connection_name] unless stub[:connection_name].nil?
        data['ConnectionArn'] = stub[:connection_arn] unless stub[:connection_arn].nil?
        data['ProviderType'] = stub[:provider_type] unless stub[:provider_type].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data
      end
    end

    # Operation Stubber for ListObservabilityConfigurations
    class ListObservabilityConfigurations
      def self.default(visited=[])
        {
          observability_configuration_summary_list: ObservabilityConfigurationSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ObservabilityConfigurationSummaryList'] = ObservabilityConfigurationSummaryList.stub(stub[:observability_configuration_summary_list]) unless stub[:observability_configuration_summary_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ObservabilityConfigurationSummaryList
    class ObservabilityConfigurationSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ObservabilityConfigurationSummaryList')
        visited = visited + ['ObservabilityConfigurationSummaryList']
        [
          ObservabilityConfigurationSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ObservabilityConfigurationSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ObservabilityConfigurationSummary
    class ObservabilityConfigurationSummary
      def self.default(visited=[])
        return nil if visited.include?('ObservabilityConfigurationSummary')
        visited = visited + ['ObservabilityConfigurationSummary']
        {
          observability_configuration_arn: 'observability_configuration_arn',
          observability_configuration_name: 'observability_configuration_name',
          observability_configuration_revision: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ObservabilityConfigurationSummary.new
        data = {}
        data['ObservabilityConfigurationArn'] = stub[:observability_configuration_arn] unless stub[:observability_configuration_arn].nil?
        data['ObservabilityConfigurationName'] = stub[:observability_configuration_name] unless stub[:observability_configuration_name].nil?
        data['ObservabilityConfigurationRevision'] = stub[:observability_configuration_revision] unless stub[:observability_configuration_revision].nil?
        data
      end
    end

    # Operation Stubber for ListOperations
    class ListOperations
      def self.default(visited=[])
        {
          operation_summary_list: OperationSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OperationSummaryList'] = OperationSummaryList.stub(stub[:operation_summary_list]) unless stub[:operation_summary_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for OperationSummaryList
    class OperationSummaryList
      def self.default(visited=[])
        return nil if visited.include?('OperationSummaryList')
        visited = visited + ['OperationSummaryList']
        [
          OperationSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << OperationSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for OperationSummary
    class OperationSummary
      def self.default(visited=[])
        return nil if visited.include?('OperationSummary')
        visited = visited + ['OperationSummary']
        {
          id: 'id',
          type: 'type',
          status: 'status',
          target_arn: 'target_arn',
          started_at: Time.now,
          ended_at: Time.now,
          updated_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::OperationSummary.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['TargetArn'] = stub[:target_arn] unless stub[:target_arn].nil?
        data['StartedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:started_at]).to_i unless stub[:started_at].nil?
        data['EndedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:ended_at]).to_i unless stub[:ended_at].nil?
        data['UpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_at]).to_i unless stub[:updated_at].nil?
        data
      end
    end

    # Operation Stubber for ListServices
    class ListServices
      def self.default(visited=[])
        {
          service_summary_list: ServiceSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ServiceSummaryList'] = ServiceSummaryList.stub(stub[:service_summary_list]) unless stub[:service_summary_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
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
          service_name: 'service_name',
          service_id: 'service_id',
          service_arn: 'service_arn',
          service_url: 'service_url',
          created_at: Time.now,
          updated_at: Time.now,
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::ServiceSummary.new
        data = {}
        data['ServiceName'] = stub[:service_name] unless stub[:service_name].nil?
        data['ServiceId'] = stub[:service_id] unless stub[:service_id].nil?
        data['ServiceArn'] = stub[:service_arn] unless stub[:service_arn].nil?
        data['ServiceUrl'] = stub[:service_url] unless stub[:service_url].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['UpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_at]).to_i unless stub[:updated_at].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
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
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for ListVpcConnectors
    class ListVpcConnectors
      def self.default(visited=[])
        {
          vpc_connectors: VpcConnectors.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['VpcConnectors'] = VpcConnectors.stub(stub[:vpc_connectors]) unless stub[:vpc_connectors].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for VpcConnectors
    class VpcConnectors
      def self.default(visited=[])
        return nil if visited.include?('VpcConnectors')
        visited = visited + ['VpcConnectors']
        [
          VpcConnector.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << VpcConnector.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for PauseService
    class PauseService
      def self.default(visited=[])
        {
          service: Service.default(visited),
          operation_id: 'operation_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Service'] = Service.stub(stub[:service]) unless stub[:service].nil?
        data['OperationId'] = stub[:operation_id] unless stub[:operation_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ResumeService
    class ResumeService
      def self.default(visited=[])
        {
          service: Service.default(visited),
          operation_id: 'operation_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Service'] = Service.stub(stub[:service]) unless stub[:service].nil?
        data['OperationId'] = stub[:operation_id] unless stub[:operation_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartDeployment
    class StartDeployment
      def self.default(visited=[])
        {
          operation_id: 'operation_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OperationId'] = stub[:operation_id] unless stub[:operation_id].nil?
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

    # Operation Stubber for UpdateService
    class UpdateService
      def self.default(visited=[])
        {
          service: Service.default(visited),
          operation_id: 'operation_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Service'] = Service.stub(stub[:service]) unless stub[:service].nil?
        data['OperationId'] = stub[:operation_id] unless stub[:operation_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
