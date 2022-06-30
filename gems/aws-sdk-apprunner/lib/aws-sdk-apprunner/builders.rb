# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::AppRunner
  module Builders

    # Operation Builder for AssociateCustomDomain
    class AssociateCustomDomain
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AppRunner.AssociateCustomDomain'
        data = {}
        data['ServiceArn'] = input[:service_arn] unless input[:service_arn].nil?
        data['DomainName'] = input[:domain_name] unless input[:domain_name].nil?
        data['EnableWWWSubdomain'] = input[:enable_www_subdomain] unless input[:enable_www_subdomain].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateAutoScalingConfiguration
    class CreateAutoScalingConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AppRunner.CreateAutoScalingConfiguration'
        data = {}
        data['AutoScalingConfigurationName'] = input[:auto_scaling_configuration_name] unless input[:auto_scaling_configuration_name].nil?
        data['MaxConcurrency'] = input[:max_concurrency] unless input[:max_concurrency].nil?
        data['MinSize'] = input[:min_size] unless input[:min_size].nil?
        data['MaxSize'] = input[:max_size] unless input[:max_size].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
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
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for CreateConnection
    class CreateConnection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AppRunner.CreateConnection'
        data = {}
        data['ConnectionName'] = input[:connection_name] unless input[:connection_name].nil?
        data['ProviderType'] = input[:provider_type] unless input[:provider_type].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateObservabilityConfiguration
    class CreateObservabilityConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AppRunner.CreateObservabilityConfiguration'
        data = {}
        data['ObservabilityConfigurationName'] = input[:observability_configuration_name] unless input[:observability_configuration_name].nil?
        data['TraceConfiguration'] = Builders::TraceConfiguration.build(input[:trace_configuration]) unless input[:trace_configuration].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for TraceConfiguration
    class TraceConfiguration
      def self.build(input)
        data = {}
        data['Vendor'] = input[:vendor] unless input[:vendor].nil?
        data
      end
    end

    # Operation Builder for CreateService
    class CreateService
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AppRunner.CreateService'
        data = {}
        data['ServiceName'] = input[:service_name] unless input[:service_name].nil?
        data['SourceConfiguration'] = Builders::SourceConfiguration.build(input[:source_configuration]) unless input[:source_configuration].nil?
        data['InstanceConfiguration'] = Builders::InstanceConfiguration.build(input[:instance_configuration]) unless input[:instance_configuration].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['EncryptionConfiguration'] = Builders::EncryptionConfiguration.build(input[:encryption_configuration]) unless input[:encryption_configuration].nil?
        data['HealthCheckConfiguration'] = Builders::HealthCheckConfiguration.build(input[:health_check_configuration]) unless input[:health_check_configuration].nil?
        data['AutoScalingConfigurationArn'] = input[:auto_scaling_configuration_arn] unless input[:auto_scaling_configuration_arn].nil?
        data['NetworkConfiguration'] = Builders::NetworkConfiguration.build(input[:network_configuration]) unless input[:network_configuration].nil?
        data['ObservabilityConfiguration'] = Builders::ServiceObservabilityConfiguration.build(input[:observability_configuration]) unless input[:observability_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ServiceObservabilityConfiguration
    class ServiceObservabilityConfiguration
      def self.build(input)
        data = {}
        data['ObservabilityEnabled'] = input[:observability_enabled] unless input[:observability_enabled].nil?
        data['ObservabilityConfigurationArn'] = input[:observability_configuration_arn] unless input[:observability_configuration_arn].nil?
        data
      end
    end

    # Structure Builder for NetworkConfiguration
    class NetworkConfiguration
      def self.build(input)
        data = {}
        data['EgressConfiguration'] = Builders::EgressConfiguration.build(input[:egress_configuration]) unless input[:egress_configuration].nil?
        data
      end
    end

    # Structure Builder for EgressConfiguration
    class EgressConfiguration
      def self.build(input)
        data = {}
        data['EgressType'] = input[:egress_type] unless input[:egress_type].nil?
        data['VpcConnectorArn'] = input[:vpc_connector_arn] unless input[:vpc_connector_arn].nil?
        data
      end
    end

    # Structure Builder for HealthCheckConfiguration
    class HealthCheckConfiguration
      def self.build(input)
        data = {}
        data['Protocol'] = input[:protocol] unless input[:protocol].nil?
        data['Path'] = input[:path] unless input[:path].nil?
        data['Interval'] = input[:interval] unless input[:interval].nil?
        data['Timeout'] = input[:timeout] unless input[:timeout].nil?
        data['HealthyThreshold'] = input[:healthy_threshold] unless input[:healthy_threshold].nil?
        data['UnhealthyThreshold'] = input[:unhealthy_threshold] unless input[:unhealthy_threshold].nil?
        data
      end
    end

    # Structure Builder for EncryptionConfiguration
    class EncryptionConfiguration
      def self.build(input)
        data = {}
        data['KmsKey'] = input[:kms_key] unless input[:kms_key].nil?
        data
      end
    end

    # Structure Builder for InstanceConfiguration
    class InstanceConfiguration
      def self.build(input)
        data = {}
        data['Cpu'] = input[:cpu] unless input[:cpu].nil?
        data['Memory'] = input[:memory] unless input[:memory].nil?
        data['InstanceRoleArn'] = input[:instance_role_arn] unless input[:instance_role_arn].nil?
        data
      end
    end

    # Structure Builder for SourceConfiguration
    class SourceConfiguration
      def self.build(input)
        data = {}
        data['CodeRepository'] = Builders::CodeRepository.build(input[:code_repository]) unless input[:code_repository].nil?
        data['ImageRepository'] = Builders::ImageRepository.build(input[:image_repository]) unless input[:image_repository].nil?
        data['AutoDeploymentsEnabled'] = input[:auto_deployments_enabled] unless input[:auto_deployments_enabled].nil?
        data['AuthenticationConfiguration'] = Builders::AuthenticationConfiguration.build(input[:authentication_configuration]) unless input[:authentication_configuration].nil?
        data
      end
    end

    # Structure Builder for AuthenticationConfiguration
    class AuthenticationConfiguration
      def self.build(input)
        data = {}
        data['ConnectionArn'] = input[:connection_arn] unless input[:connection_arn].nil?
        data['AccessRoleArn'] = input[:access_role_arn] unless input[:access_role_arn].nil?
        data
      end
    end

    # Structure Builder for ImageRepository
    class ImageRepository
      def self.build(input)
        data = {}
        data['ImageIdentifier'] = input[:image_identifier] unless input[:image_identifier].nil?
        data['ImageConfiguration'] = Builders::ImageConfiguration.build(input[:image_configuration]) unless input[:image_configuration].nil?
        data['ImageRepositoryType'] = input[:image_repository_type] unless input[:image_repository_type].nil?
        data
      end
    end

    # Structure Builder for ImageConfiguration
    class ImageConfiguration
      def self.build(input)
        data = {}
        data['RuntimeEnvironmentVariables'] = Builders::RuntimeEnvironmentVariables.build(input[:runtime_environment_variables]) unless input[:runtime_environment_variables].nil?
        data['StartCommand'] = input[:start_command] unless input[:start_command].nil?
        data['Port'] = input[:port] unless input[:port].nil?
        data
      end
    end

    # Map Builder for RuntimeEnvironmentVariables
    class RuntimeEnvironmentVariables
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for CodeRepository
    class CodeRepository
      def self.build(input)
        data = {}
        data['RepositoryUrl'] = input[:repository_url] unless input[:repository_url].nil?
        data['SourceCodeVersion'] = Builders::SourceCodeVersion.build(input[:source_code_version]) unless input[:source_code_version].nil?
        data['CodeConfiguration'] = Builders::CodeConfiguration.build(input[:code_configuration]) unless input[:code_configuration].nil?
        data
      end
    end

    # Structure Builder for CodeConfiguration
    class CodeConfiguration
      def self.build(input)
        data = {}
        data['ConfigurationSource'] = input[:configuration_source] unless input[:configuration_source].nil?
        data['CodeConfigurationValues'] = Builders::CodeConfigurationValues.build(input[:code_configuration_values]) unless input[:code_configuration_values].nil?
        data
      end
    end

    # Structure Builder for CodeConfigurationValues
    class CodeConfigurationValues
      def self.build(input)
        data = {}
        data['Runtime'] = input[:runtime] unless input[:runtime].nil?
        data['BuildCommand'] = input[:build_command] unless input[:build_command].nil?
        data['StartCommand'] = input[:start_command] unless input[:start_command].nil?
        data['Port'] = input[:port] unless input[:port].nil?
        data['RuntimeEnvironmentVariables'] = Builders::RuntimeEnvironmentVariables.build(input[:runtime_environment_variables]) unless input[:runtime_environment_variables].nil?
        data
      end
    end

    # Structure Builder for SourceCodeVersion
    class SourceCodeVersion
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for CreateVpcConnector
    class CreateVpcConnector
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AppRunner.CreateVpcConnector'
        data = {}
        data['VpcConnectorName'] = input[:vpc_connector_name] unless input[:vpc_connector_name].nil?
        data['Subnets'] = Builders::StringList.build(input[:subnets]) unless input[:subnets].nil?
        data['SecurityGroups'] = Builders::StringList.build(input[:security_groups]) unless input[:security_groups].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for StringList
    class StringList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DeleteAutoScalingConfiguration
    class DeleteAutoScalingConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AppRunner.DeleteAutoScalingConfiguration'
        data = {}
        data['AutoScalingConfigurationArn'] = input[:auto_scaling_configuration_arn] unless input[:auto_scaling_configuration_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteConnection
    class DeleteConnection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AppRunner.DeleteConnection'
        data = {}
        data['ConnectionArn'] = input[:connection_arn] unless input[:connection_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteObservabilityConfiguration
    class DeleteObservabilityConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AppRunner.DeleteObservabilityConfiguration'
        data = {}
        data['ObservabilityConfigurationArn'] = input[:observability_configuration_arn] unless input[:observability_configuration_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteService
    class DeleteService
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AppRunner.DeleteService'
        data = {}
        data['ServiceArn'] = input[:service_arn] unless input[:service_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteVpcConnector
    class DeleteVpcConnector
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AppRunner.DeleteVpcConnector'
        data = {}
        data['VpcConnectorArn'] = input[:vpc_connector_arn] unless input[:vpc_connector_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeAutoScalingConfiguration
    class DescribeAutoScalingConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AppRunner.DescribeAutoScalingConfiguration'
        data = {}
        data['AutoScalingConfigurationArn'] = input[:auto_scaling_configuration_arn] unless input[:auto_scaling_configuration_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeCustomDomains
    class DescribeCustomDomains
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AppRunner.DescribeCustomDomains'
        data = {}
        data['ServiceArn'] = input[:service_arn] unless input[:service_arn].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeObservabilityConfiguration
    class DescribeObservabilityConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AppRunner.DescribeObservabilityConfiguration'
        data = {}
        data['ObservabilityConfigurationArn'] = input[:observability_configuration_arn] unless input[:observability_configuration_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeService
    class DescribeService
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AppRunner.DescribeService'
        data = {}
        data['ServiceArn'] = input[:service_arn] unless input[:service_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeVpcConnector
    class DescribeVpcConnector
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AppRunner.DescribeVpcConnector'
        data = {}
        data['VpcConnectorArn'] = input[:vpc_connector_arn] unless input[:vpc_connector_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateCustomDomain
    class DisassociateCustomDomain
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AppRunner.DisassociateCustomDomain'
        data = {}
        data['ServiceArn'] = input[:service_arn] unless input[:service_arn].nil?
        data['DomainName'] = input[:domain_name] unless input[:domain_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListAutoScalingConfigurations
    class ListAutoScalingConfigurations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AppRunner.ListAutoScalingConfigurations'
        data = {}
        data['AutoScalingConfigurationName'] = input[:auto_scaling_configuration_name] unless input[:auto_scaling_configuration_name].nil?
        data['LatestOnly'] = input[:latest_only] unless input[:latest_only].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListConnections
    class ListConnections
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AppRunner.ListConnections'
        data = {}
        data['ConnectionName'] = input[:connection_name] unless input[:connection_name].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListObservabilityConfigurations
    class ListObservabilityConfigurations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AppRunner.ListObservabilityConfigurations'
        data = {}
        data['ObservabilityConfigurationName'] = input[:observability_configuration_name] unless input[:observability_configuration_name].nil?
        data['LatestOnly'] = input[:latest_only] unless input[:latest_only].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListOperations
    class ListOperations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AppRunner.ListOperations'
        data = {}
        data['ServiceArn'] = input[:service_arn] unless input[:service_arn].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListServices
    class ListServices
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AppRunner.ListServices'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AppRunner.ListTagsForResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListVpcConnectors
    class ListVpcConnectors
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AppRunner.ListVpcConnectors'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PauseService
    class PauseService
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AppRunner.PauseService'
        data = {}
        data['ServiceArn'] = input[:service_arn] unless input[:service_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ResumeService
    class ResumeService
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AppRunner.ResumeService'
        data = {}
        data['ServiceArn'] = input[:service_arn] unless input[:service_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartDeployment
    class StartDeployment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AppRunner.StartDeployment'
        data = {}
        data['ServiceArn'] = input[:service_arn] unless input[:service_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AppRunner.TagResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AppRunner.UntagResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['TagKeys'] = Builders::TagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
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

    # Operation Builder for UpdateService
    class UpdateService
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AppRunner.UpdateService'
        data = {}
        data['ServiceArn'] = input[:service_arn] unless input[:service_arn].nil?
        data['SourceConfiguration'] = Builders::SourceConfiguration.build(input[:source_configuration]) unless input[:source_configuration].nil?
        data['InstanceConfiguration'] = Builders::InstanceConfiguration.build(input[:instance_configuration]) unless input[:instance_configuration].nil?
        data['AutoScalingConfigurationArn'] = input[:auto_scaling_configuration_arn] unless input[:auto_scaling_configuration_arn].nil?
        data['HealthCheckConfiguration'] = Builders::HealthCheckConfiguration.build(input[:health_check_configuration]) unless input[:health_check_configuration].nil?
        data['NetworkConfiguration'] = Builders::NetworkConfiguration.build(input[:network_configuration]) unless input[:network_configuration].nil?
        data['ObservabilityConfiguration'] = Builders::ServiceObservabilityConfiguration.build(input[:observability_configuration]) unless input[:observability_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
