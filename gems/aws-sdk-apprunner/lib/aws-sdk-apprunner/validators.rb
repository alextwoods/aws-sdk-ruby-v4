# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::AppRunner
  module Validators

    class AssociateCustomDomainInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateCustomDomainInput, context: context)
        Hearth::Validator.validate!(input[:service_arn], ::String, context: "#{context}[:service_arn]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:enable_www_subdomain], ::TrueClass, ::FalseClass, context: "#{context}[:enable_www_subdomain]")
      end
    end

    class AssociateCustomDomainOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateCustomDomainOutput, context: context)
        Hearth::Validator.validate!(input[:dns_target], ::String, context: "#{context}[:dns_target]")
        Hearth::Validator.validate!(input[:service_arn], ::String, context: "#{context}[:service_arn]")
        Validators::CustomDomain.validate!(input[:custom_domain], context: "#{context}[:custom_domain]") unless input[:custom_domain].nil?
      end
    end

    class AuthenticationConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuthenticationConfiguration, context: context)
        Hearth::Validator.validate!(input[:connection_arn], ::String, context: "#{context}[:connection_arn]")
        Hearth::Validator.validate!(input[:access_role_arn], ::String, context: "#{context}[:access_role_arn]")
      end
    end

    class AutoScalingConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoScalingConfiguration, context: context)
        Hearth::Validator.validate!(input[:auto_scaling_configuration_arn], ::String, context: "#{context}[:auto_scaling_configuration_arn]")
        Hearth::Validator.validate!(input[:auto_scaling_configuration_name], ::String, context: "#{context}[:auto_scaling_configuration_name]")
        Hearth::Validator.validate!(input[:auto_scaling_configuration_revision], ::Integer, context: "#{context}[:auto_scaling_configuration_revision]")
        Hearth::Validator.validate!(input[:latest], ::TrueClass, ::FalseClass, context: "#{context}[:latest]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:max_concurrency], ::Integer, context: "#{context}[:max_concurrency]")
        Hearth::Validator.validate!(input[:min_size], ::Integer, context: "#{context}[:min_size]")
        Hearth::Validator.validate!(input[:max_size], ::Integer, context: "#{context}[:max_size]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:deleted_at], ::Time, context: "#{context}[:deleted_at]")
      end
    end

    class AutoScalingConfigurationSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoScalingConfigurationSummary, context: context)
        Hearth::Validator.validate!(input[:auto_scaling_configuration_arn], ::String, context: "#{context}[:auto_scaling_configuration_arn]")
        Hearth::Validator.validate!(input[:auto_scaling_configuration_name], ::String, context: "#{context}[:auto_scaling_configuration_name]")
        Hearth::Validator.validate!(input[:auto_scaling_configuration_revision], ::Integer, context: "#{context}[:auto_scaling_configuration_revision]")
      end
    end

    class AutoScalingConfigurationSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AutoScalingConfigurationSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CertificateValidationRecord
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CertificateValidationRecord, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class CertificateValidationRecordList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CertificateValidationRecord.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CodeConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CodeConfiguration, context: context)
        Hearth::Validator.validate!(input[:configuration_source], ::String, context: "#{context}[:configuration_source]")
        Validators::CodeConfigurationValues.validate!(input[:code_configuration_values], context: "#{context}[:code_configuration_values]") unless input[:code_configuration_values].nil?
      end
    end

    class CodeConfigurationValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CodeConfigurationValues, context: context)
        Hearth::Validator.validate!(input[:runtime], ::String, context: "#{context}[:runtime]")
        Hearth::Validator.validate!(input[:build_command], ::String, context: "#{context}[:build_command]")
        Hearth::Validator.validate!(input[:start_command], ::String, context: "#{context}[:start_command]")
        Hearth::Validator.validate!(input[:port], ::String, context: "#{context}[:port]")
        Validators::RuntimeEnvironmentVariables.validate!(input[:runtime_environment_variables], context: "#{context}[:runtime_environment_variables]") unless input[:runtime_environment_variables].nil?
      end
    end

    class CodeRepository
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CodeRepository, context: context)
        Hearth::Validator.validate!(input[:repository_url], ::String, context: "#{context}[:repository_url]")
        Validators::SourceCodeVersion.validate!(input[:source_code_version], context: "#{context}[:source_code_version]") unless input[:source_code_version].nil?
        Validators::CodeConfiguration.validate!(input[:code_configuration], context: "#{context}[:code_configuration]") unless input[:code_configuration].nil?
      end
    end

    class Connection
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Connection, context: context)
        Hearth::Validator.validate!(input[:connection_name], ::String, context: "#{context}[:connection_name]")
        Hearth::Validator.validate!(input[:connection_arn], ::String, context: "#{context}[:connection_arn]")
        Hearth::Validator.validate!(input[:provider_type], ::String, context: "#{context}[:provider_type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
      end
    end

    class ConnectionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectionSummary, context: context)
        Hearth::Validator.validate!(input[:connection_name], ::String, context: "#{context}[:connection_name]")
        Hearth::Validator.validate!(input[:connection_arn], ::String, context: "#{context}[:connection_arn]")
        Hearth::Validator.validate!(input[:provider_type], ::String, context: "#{context}[:provider_type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
      end
    end

    class ConnectionSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ConnectionSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CreateAutoScalingConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAutoScalingConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:auto_scaling_configuration_name], ::String, context: "#{context}[:auto_scaling_configuration_name]")
        Hearth::Validator.validate!(input[:max_concurrency], ::Integer, context: "#{context}[:max_concurrency]")
        Hearth::Validator.validate!(input[:min_size], ::Integer, context: "#{context}[:min_size]")
        Hearth::Validator.validate!(input[:max_size], ::Integer, context: "#{context}[:max_size]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateAutoScalingConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAutoScalingConfigurationOutput, context: context)
        Validators::AutoScalingConfiguration.validate!(input[:auto_scaling_configuration], context: "#{context}[:auto_scaling_configuration]") unless input[:auto_scaling_configuration].nil?
      end
    end

    class CreateConnectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConnectionInput, context: context)
        Hearth::Validator.validate!(input[:connection_name], ::String, context: "#{context}[:connection_name]")
        Hearth::Validator.validate!(input[:provider_type], ::String, context: "#{context}[:provider_type]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateConnectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConnectionOutput, context: context)
        Validators::Connection.validate!(input[:connection], context: "#{context}[:connection]") unless input[:connection].nil?
      end
    end

    class CreateObservabilityConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateObservabilityConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:observability_configuration_name], ::String, context: "#{context}[:observability_configuration_name]")
        Validators::TraceConfiguration.validate!(input[:trace_configuration], context: "#{context}[:trace_configuration]") unless input[:trace_configuration].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateObservabilityConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateObservabilityConfigurationOutput, context: context)
        Validators::ObservabilityConfiguration.validate!(input[:observability_configuration], context: "#{context}[:observability_configuration]") unless input[:observability_configuration].nil?
      end
    end

    class CreateServiceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateServiceInput, context: context)
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
        Validators::SourceConfiguration.validate!(input[:source_configuration], context: "#{context}[:source_configuration]") unless input[:source_configuration].nil?
        Validators::InstanceConfiguration.validate!(input[:instance_configuration], context: "#{context}[:instance_configuration]") unless input[:instance_configuration].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::EncryptionConfiguration.validate!(input[:encryption_configuration], context: "#{context}[:encryption_configuration]") unless input[:encryption_configuration].nil?
        Validators::HealthCheckConfiguration.validate!(input[:health_check_configuration], context: "#{context}[:health_check_configuration]") unless input[:health_check_configuration].nil?
        Hearth::Validator.validate!(input[:auto_scaling_configuration_arn], ::String, context: "#{context}[:auto_scaling_configuration_arn]")
        Validators::NetworkConfiguration.validate!(input[:network_configuration], context: "#{context}[:network_configuration]") unless input[:network_configuration].nil?
        Validators::ServiceObservabilityConfiguration.validate!(input[:observability_configuration], context: "#{context}[:observability_configuration]") unless input[:observability_configuration].nil?
      end
    end

    class CreateServiceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateServiceOutput, context: context)
        Validators::Service.validate!(input[:service], context: "#{context}[:service]") unless input[:service].nil?
        Hearth::Validator.validate!(input[:operation_id], ::String, context: "#{context}[:operation_id]")
      end
    end

    class CreateVpcConnectorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVpcConnectorInput, context: context)
        Hearth::Validator.validate!(input[:vpc_connector_name], ::String, context: "#{context}[:vpc_connector_name]")
        Validators::StringList.validate!(input[:subnets], context: "#{context}[:subnets]") unless input[:subnets].nil?
        Validators::StringList.validate!(input[:security_groups], context: "#{context}[:security_groups]") unless input[:security_groups].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateVpcConnectorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVpcConnectorOutput, context: context)
        Validators::VpcConnector.validate!(input[:vpc_connector], context: "#{context}[:vpc_connector]") unless input[:vpc_connector].nil?
      end
    end

    class CustomDomain
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomDomain, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:enable_www_subdomain], ::TrueClass, ::FalseClass, context: "#{context}[:enable_www_subdomain]")
        Validators::CertificateValidationRecordList.validate!(input[:certificate_validation_records], context: "#{context}[:certificate_validation_records]") unless input[:certificate_validation_records].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class CustomDomainList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CustomDomain.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeleteAutoScalingConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAutoScalingConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:auto_scaling_configuration_arn], ::String, context: "#{context}[:auto_scaling_configuration_arn]")
      end
    end

    class DeleteAutoScalingConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAutoScalingConfigurationOutput, context: context)
        Validators::AutoScalingConfiguration.validate!(input[:auto_scaling_configuration], context: "#{context}[:auto_scaling_configuration]") unless input[:auto_scaling_configuration].nil?
      end
    end

    class DeleteConnectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConnectionInput, context: context)
        Hearth::Validator.validate!(input[:connection_arn], ::String, context: "#{context}[:connection_arn]")
      end
    end

    class DeleteConnectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConnectionOutput, context: context)
        Validators::Connection.validate!(input[:connection], context: "#{context}[:connection]") unless input[:connection].nil?
      end
    end

    class DeleteObservabilityConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteObservabilityConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:observability_configuration_arn], ::String, context: "#{context}[:observability_configuration_arn]")
      end
    end

    class DeleteObservabilityConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteObservabilityConfigurationOutput, context: context)
        Validators::ObservabilityConfiguration.validate!(input[:observability_configuration], context: "#{context}[:observability_configuration]") unless input[:observability_configuration].nil?
      end
    end

    class DeleteServiceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteServiceInput, context: context)
        Hearth::Validator.validate!(input[:service_arn], ::String, context: "#{context}[:service_arn]")
      end
    end

    class DeleteServiceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteServiceOutput, context: context)
        Validators::Service.validate!(input[:service], context: "#{context}[:service]") unless input[:service].nil?
        Hearth::Validator.validate!(input[:operation_id], ::String, context: "#{context}[:operation_id]")
      end
    end

    class DeleteVpcConnectorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVpcConnectorInput, context: context)
        Hearth::Validator.validate!(input[:vpc_connector_arn], ::String, context: "#{context}[:vpc_connector_arn]")
      end
    end

    class DeleteVpcConnectorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVpcConnectorOutput, context: context)
        Validators::VpcConnector.validate!(input[:vpc_connector], context: "#{context}[:vpc_connector]") unless input[:vpc_connector].nil?
      end
    end

    class DescribeAutoScalingConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAutoScalingConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:auto_scaling_configuration_arn], ::String, context: "#{context}[:auto_scaling_configuration_arn]")
      end
    end

    class DescribeAutoScalingConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAutoScalingConfigurationOutput, context: context)
        Validators::AutoScalingConfiguration.validate!(input[:auto_scaling_configuration], context: "#{context}[:auto_scaling_configuration]") unless input[:auto_scaling_configuration].nil?
      end
    end

    class DescribeCustomDomainsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCustomDomainsInput, context: context)
        Hearth::Validator.validate!(input[:service_arn], ::String, context: "#{context}[:service_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeCustomDomainsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCustomDomainsOutput, context: context)
        Hearth::Validator.validate!(input[:dns_target], ::String, context: "#{context}[:dns_target]")
        Hearth::Validator.validate!(input[:service_arn], ::String, context: "#{context}[:service_arn]")
        Validators::CustomDomainList.validate!(input[:custom_domains], context: "#{context}[:custom_domains]") unless input[:custom_domains].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeObservabilityConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeObservabilityConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:observability_configuration_arn], ::String, context: "#{context}[:observability_configuration_arn]")
      end
    end

    class DescribeObservabilityConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeObservabilityConfigurationOutput, context: context)
        Validators::ObservabilityConfiguration.validate!(input[:observability_configuration], context: "#{context}[:observability_configuration]") unless input[:observability_configuration].nil?
      end
    end

    class DescribeServiceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeServiceInput, context: context)
        Hearth::Validator.validate!(input[:service_arn], ::String, context: "#{context}[:service_arn]")
      end
    end

    class DescribeServiceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeServiceOutput, context: context)
        Validators::Service.validate!(input[:service], context: "#{context}[:service]") unless input[:service].nil?
      end
    end

    class DescribeVpcConnectorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeVpcConnectorInput, context: context)
        Hearth::Validator.validate!(input[:vpc_connector_arn], ::String, context: "#{context}[:vpc_connector_arn]")
      end
    end

    class DescribeVpcConnectorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeVpcConnectorOutput, context: context)
        Validators::VpcConnector.validate!(input[:vpc_connector], context: "#{context}[:vpc_connector]") unless input[:vpc_connector].nil?
      end
    end

    class DisassociateCustomDomainInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateCustomDomainInput, context: context)
        Hearth::Validator.validate!(input[:service_arn], ::String, context: "#{context}[:service_arn]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
      end
    end

    class DisassociateCustomDomainOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateCustomDomainOutput, context: context)
        Hearth::Validator.validate!(input[:dns_target], ::String, context: "#{context}[:dns_target]")
        Hearth::Validator.validate!(input[:service_arn], ::String, context: "#{context}[:service_arn]")
        Validators::CustomDomain.validate!(input[:custom_domain], context: "#{context}[:custom_domain]") unless input[:custom_domain].nil?
      end
    end

    class EgressConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EgressConfiguration, context: context)
        Hearth::Validator.validate!(input[:egress_type], ::String, context: "#{context}[:egress_type]")
        Hearth::Validator.validate!(input[:vpc_connector_arn], ::String, context: "#{context}[:vpc_connector_arn]")
      end
    end

    class EncryptionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EncryptionConfiguration, context: context)
        Hearth::Validator.validate!(input[:kms_key], ::String, context: "#{context}[:kms_key]")
      end
    end

    class HealthCheckConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HealthCheckConfiguration, context: context)
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Hearth::Validator.validate!(input[:interval], ::Integer, context: "#{context}[:interval]")
        Hearth::Validator.validate!(input[:timeout], ::Integer, context: "#{context}[:timeout]")
        Hearth::Validator.validate!(input[:healthy_threshold], ::Integer, context: "#{context}[:healthy_threshold]")
        Hearth::Validator.validate!(input[:unhealthy_threshold], ::Integer, context: "#{context}[:unhealthy_threshold]")
      end
    end

    class ImageConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImageConfiguration, context: context)
        Validators::RuntimeEnvironmentVariables.validate!(input[:runtime_environment_variables], context: "#{context}[:runtime_environment_variables]") unless input[:runtime_environment_variables].nil?
        Hearth::Validator.validate!(input[:start_command], ::String, context: "#{context}[:start_command]")
        Hearth::Validator.validate!(input[:port], ::String, context: "#{context}[:port]")
      end
    end

    class ImageRepository
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImageRepository, context: context)
        Hearth::Validator.validate!(input[:image_identifier], ::String, context: "#{context}[:image_identifier]")
        Validators::ImageConfiguration.validate!(input[:image_configuration], context: "#{context}[:image_configuration]") unless input[:image_configuration].nil?
        Hearth::Validator.validate!(input[:image_repository_type], ::String, context: "#{context}[:image_repository_type]")
      end
    end

    class InstanceConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceConfiguration, context: context)
        Hearth::Validator.validate!(input[:cpu], ::String, context: "#{context}[:cpu]")
        Hearth::Validator.validate!(input[:memory], ::String, context: "#{context}[:memory]")
        Hearth::Validator.validate!(input[:instance_role_arn], ::String, context: "#{context}[:instance_role_arn]")
      end
    end

    class InternalServiceErrorException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServiceErrorException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidStateException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidStateException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListAutoScalingConfigurationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAutoScalingConfigurationsInput, context: context)
        Hearth::Validator.validate!(input[:auto_scaling_configuration_name], ::String, context: "#{context}[:auto_scaling_configuration_name]")
        Hearth::Validator.validate!(input[:latest_only], ::TrueClass, ::FalseClass, context: "#{context}[:latest_only]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAutoScalingConfigurationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAutoScalingConfigurationsOutput, context: context)
        Validators::AutoScalingConfigurationSummaryList.validate!(input[:auto_scaling_configuration_summary_list], context: "#{context}[:auto_scaling_configuration_summary_list]") unless input[:auto_scaling_configuration_summary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListConnectionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListConnectionsInput, context: context)
        Hearth::Validator.validate!(input[:connection_name], ::String, context: "#{context}[:connection_name]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListConnectionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListConnectionsOutput, context: context)
        Validators::ConnectionSummaryList.validate!(input[:connection_summary_list], context: "#{context}[:connection_summary_list]") unless input[:connection_summary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListObservabilityConfigurationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListObservabilityConfigurationsInput, context: context)
        Hearth::Validator.validate!(input[:observability_configuration_name], ::String, context: "#{context}[:observability_configuration_name]")
        Hearth::Validator.validate!(input[:latest_only], ::TrueClass, ::FalseClass, context: "#{context}[:latest_only]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListObservabilityConfigurationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListObservabilityConfigurationsOutput, context: context)
        Validators::ObservabilityConfigurationSummaryList.validate!(input[:observability_configuration_summary_list], context: "#{context}[:observability_configuration_summary_list]") unless input[:observability_configuration_summary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListOperationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOperationsInput, context: context)
        Hearth::Validator.validate!(input[:service_arn], ::String, context: "#{context}[:service_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListOperationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOperationsOutput, context: context)
        Validators::OperationSummaryList.validate!(input[:operation_summary_list], context: "#{context}[:operation_summary_list]") unless input[:operation_summary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListServicesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListServicesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListServicesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListServicesOutput, context: context)
        Validators::ServiceSummaryList.validate!(input[:service_summary_list], context: "#{context}[:service_summary_list]") unless input[:service_summary_list].nil?
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
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ListVpcConnectorsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListVpcConnectorsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListVpcConnectorsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListVpcConnectorsOutput, context: context)
        Validators::VpcConnectors.validate!(input[:vpc_connectors], context: "#{context}[:vpc_connectors]") unless input[:vpc_connectors].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class NetworkConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkConfiguration, context: context)
        Validators::EgressConfiguration.validate!(input[:egress_configuration], context: "#{context}[:egress_configuration]") unless input[:egress_configuration].nil?
      end
    end

    class ObservabilityConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ObservabilityConfiguration, context: context)
        Hearth::Validator.validate!(input[:observability_configuration_arn], ::String, context: "#{context}[:observability_configuration_arn]")
        Hearth::Validator.validate!(input[:observability_configuration_name], ::String, context: "#{context}[:observability_configuration_name]")
        Validators::TraceConfiguration.validate!(input[:trace_configuration], context: "#{context}[:trace_configuration]") unless input[:trace_configuration].nil?
        Hearth::Validator.validate!(input[:observability_configuration_revision], ::Integer, context: "#{context}[:observability_configuration_revision]")
        Hearth::Validator.validate!(input[:latest], ::TrueClass, ::FalseClass, context: "#{context}[:latest]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:deleted_at], ::Time, context: "#{context}[:deleted_at]")
      end
    end

    class ObservabilityConfigurationSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ObservabilityConfigurationSummary, context: context)
        Hearth::Validator.validate!(input[:observability_configuration_arn], ::String, context: "#{context}[:observability_configuration_arn]")
        Hearth::Validator.validate!(input[:observability_configuration_name], ::String, context: "#{context}[:observability_configuration_name]")
        Hearth::Validator.validate!(input[:observability_configuration_revision], ::Integer, context: "#{context}[:observability_configuration_revision]")
      end
    end

    class ObservabilityConfigurationSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ObservabilityConfigurationSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OperationSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OperationSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:target_arn], ::String, context: "#{context}[:target_arn]")
        Hearth::Validator.validate!(input[:started_at], ::Time, context: "#{context}[:started_at]")
        Hearth::Validator.validate!(input[:ended_at], ::Time, context: "#{context}[:ended_at]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
      end
    end

    class OperationSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::OperationSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PauseServiceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PauseServiceInput, context: context)
        Hearth::Validator.validate!(input[:service_arn], ::String, context: "#{context}[:service_arn]")
      end
    end

    class PauseServiceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PauseServiceOutput, context: context)
        Validators::Service.validate!(input[:service], context: "#{context}[:service]") unless input[:service].nil?
        Hearth::Validator.validate!(input[:operation_id], ::String, context: "#{context}[:operation_id]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResumeServiceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResumeServiceInput, context: context)
        Hearth::Validator.validate!(input[:service_arn], ::String, context: "#{context}[:service_arn]")
      end
    end

    class ResumeServiceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResumeServiceOutput, context: context)
        Validators::Service.validate!(input[:service], context: "#{context}[:service]") unless input[:service].nil?
        Hearth::Validator.validate!(input[:operation_id], ::String, context: "#{context}[:operation_id]")
      end
    end

    class RuntimeEnvironmentVariables
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class Service
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Service, context: context)
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
        Hearth::Validator.validate!(input[:service_id], ::String, context: "#{context}[:service_id]")
        Hearth::Validator.validate!(input[:service_arn], ::String, context: "#{context}[:service_arn]")
        Hearth::Validator.validate!(input[:service_url], ::String, context: "#{context}[:service_url]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
        Hearth::Validator.validate!(input[:deleted_at], ::Time, context: "#{context}[:deleted_at]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::SourceConfiguration.validate!(input[:source_configuration], context: "#{context}[:source_configuration]") unless input[:source_configuration].nil?
        Validators::InstanceConfiguration.validate!(input[:instance_configuration], context: "#{context}[:instance_configuration]") unless input[:instance_configuration].nil?
        Validators::EncryptionConfiguration.validate!(input[:encryption_configuration], context: "#{context}[:encryption_configuration]") unless input[:encryption_configuration].nil?
        Validators::HealthCheckConfiguration.validate!(input[:health_check_configuration], context: "#{context}[:health_check_configuration]") unless input[:health_check_configuration].nil?
        Validators::AutoScalingConfigurationSummary.validate!(input[:auto_scaling_configuration_summary], context: "#{context}[:auto_scaling_configuration_summary]") unless input[:auto_scaling_configuration_summary].nil?
        Validators::NetworkConfiguration.validate!(input[:network_configuration], context: "#{context}[:network_configuration]") unless input[:network_configuration].nil?
        Validators::ServiceObservabilityConfiguration.validate!(input[:observability_configuration], context: "#{context}[:observability_configuration]") unless input[:observability_configuration].nil?
      end
    end

    class ServiceObservabilityConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceObservabilityConfiguration, context: context)
        Hearth::Validator.validate!(input[:observability_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:observability_enabled]")
        Hearth::Validator.validate!(input[:observability_configuration_arn], ::String, context: "#{context}[:observability_configuration_arn]")
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ServiceSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceSummary, context: context)
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
        Hearth::Validator.validate!(input[:service_id], ::String, context: "#{context}[:service_id]")
        Hearth::Validator.validate!(input[:service_arn], ::String, context: "#{context}[:service_arn]")
        Hearth::Validator.validate!(input[:service_url], ::String, context: "#{context}[:service_url]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class ServiceSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ServiceSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SourceCodeVersion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SourceCodeVersion, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class SourceConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SourceConfiguration, context: context)
        Validators::CodeRepository.validate!(input[:code_repository], context: "#{context}[:code_repository]") unless input[:code_repository].nil?
        Validators::ImageRepository.validate!(input[:image_repository], context: "#{context}[:image_repository]") unless input[:image_repository].nil?
        Hearth::Validator.validate!(input[:auto_deployments_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:auto_deployments_enabled]")
        Validators::AuthenticationConfiguration.validate!(input[:authentication_configuration], context: "#{context}[:authentication_configuration]") unless input[:authentication_configuration].nil?
      end
    end

    class StartDeploymentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartDeploymentInput, context: context)
        Hearth::Validator.validate!(input[:service_arn], ::String, context: "#{context}[:service_arn]")
      end
    end

    class StartDeploymentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartDeploymentOutput, context: context)
        Hearth::Validator.validate!(input[:operation_id], ::String, context: "#{context}[:operation_id]")
      end
    end

    class StringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TraceConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TraceConfiguration, context: context)
        Hearth::Validator.validate!(input[:vendor], ::String, context: "#{context}[:vendor]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateServiceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateServiceInput, context: context)
        Hearth::Validator.validate!(input[:service_arn], ::String, context: "#{context}[:service_arn]")
        Validators::SourceConfiguration.validate!(input[:source_configuration], context: "#{context}[:source_configuration]") unless input[:source_configuration].nil?
        Validators::InstanceConfiguration.validate!(input[:instance_configuration], context: "#{context}[:instance_configuration]") unless input[:instance_configuration].nil?
        Hearth::Validator.validate!(input[:auto_scaling_configuration_arn], ::String, context: "#{context}[:auto_scaling_configuration_arn]")
        Validators::HealthCheckConfiguration.validate!(input[:health_check_configuration], context: "#{context}[:health_check_configuration]") unless input[:health_check_configuration].nil?
        Validators::NetworkConfiguration.validate!(input[:network_configuration], context: "#{context}[:network_configuration]") unless input[:network_configuration].nil?
        Validators::ServiceObservabilityConfiguration.validate!(input[:observability_configuration], context: "#{context}[:observability_configuration]") unless input[:observability_configuration].nil?
      end
    end

    class UpdateServiceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateServiceOutput, context: context)
        Validators::Service.validate!(input[:service], context: "#{context}[:service]") unless input[:service].nil?
        Hearth::Validator.validate!(input[:operation_id], ::String, context: "#{context}[:operation_id]")
      end
    end

    class VpcConnector
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VpcConnector, context: context)
        Hearth::Validator.validate!(input[:vpc_connector_name], ::String, context: "#{context}[:vpc_connector_name]")
        Hearth::Validator.validate!(input[:vpc_connector_arn], ::String, context: "#{context}[:vpc_connector_arn]")
        Hearth::Validator.validate!(input[:vpc_connector_revision], ::Integer, context: "#{context}[:vpc_connector_revision]")
        Validators::StringList.validate!(input[:subnets], context: "#{context}[:subnets]") unless input[:subnets].nil?
        Validators::StringList.validate!(input[:security_groups], context: "#{context}[:security_groups]") unless input[:security_groups].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:deleted_at], ::Time, context: "#{context}[:deleted_at]")
      end
    end

    class VpcConnectors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::VpcConnector.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
