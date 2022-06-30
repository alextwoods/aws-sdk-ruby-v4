# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::AppRunner
  module Params

    module AssociateCustomDomainInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateCustomDomainInput, context: context)
        type = Types::AssociateCustomDomainInput.new
        type.service_arn = params[:service_arn]
        type.domain_name = params[:domain_name]
        type.enable_www_subdomain = params[:enable_www_subdomain]
        type
      end
    end

    module AssociateCustomDomainOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateCustomDomainOutput, context: context)
        type = Types::AssociateCustomDomainOutput.new
        type.dns_target = params[:dns_target]
        type.service_arn = params[:service_arn]
        type.custom_domain = CustomDomain.build(params[:custom_domain], context: "#{context}[:custom_domain]") unless params[:custom_domain].nil?
        type
      end
    end

    module AuthenticationConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuthenticationConfiguration, context: context)
        type = Types::AuthenticationConfiguration.new
        type.connection_arn = params[:connection_arn]
        type.access_role_arn = params[:access_role_arn]
        type
      end
    end

    module AutoScalingConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoScalingConfiguration, context: context)
        type = Types::AutoScalingConfiguration.new
        type.auto_scaling_configuration_arn = params[:auto_scaling_configuration_arn]
        type.auto_scaling_configuration_name = params[:auto_scaling_configuration_name]
        type.auto_scaling_configuration_revision = params[:auto_scaling_configuration_revision]
        type.latest = params[:latest]
        type.status = params[:status]
        type.max_concurrency = params[:max_concurrency]
        type.min_size = params[:min_size]
        type.max_size = params[:max_size]
        type.created_at = params[:created_at]
        type.deleted_at = params[:deleted_at]
        type
      end
    end

    module AutoScalingConfigurationSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoScalingConfigurationSummary, context: context)
        type = Types::AutoScalingConfigurationSummary.new
        type.auto_scaling_configuration_arn = params[:auto_scaling_configuration_arn]
        type.auto_scaling_configuration_name = params[:auto_scaling_configuration_name]
        type.auto_scaling_configuration_revision = params[:auto_scaling_configuration_revision]
        type
      end
    end

    module AutoScalingConfigurationSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AutoScalingConfigurationSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CertificateValidationRecord
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CertificateValidationRecord, context: context)
        type = Types::CertificateValidationRecord.new
        type.name = params[:name]
        type.type = params[:type]
        type.value = params[:value]
        type.status = params[:status]
        type
      end
    end

    module CertificateValidationRecordList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CertificateValidationRecord.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CodeConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CodeConfiguration, context: context)
        type = Types::CodeConfiguration.new
        type.configuration_source = params[:configuration_source]
        type.code_configuration_values = CodeConfigurationValues.build(params[:code_configuration_values], context: "#{context}[:code_configuration_values]") unless params[:code_configuration_values].nil?
        type
      end
    end

    module CodeConfigurationValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CodeConfigurationValues, context: context)
        type = Types::CodeConfigurationValues.new
        type.runtime = params[:runtime]
        type.build_command = params[:build_command]
        type.start_command = params[:start_command]
        type.port = params[:port]
        type.runtime_environment_variables = RuntimeEnvironmentVariables.build(params[:runtime_environment_variables], context: "#{context}[:runtime_environment_variables]") unless params[:runtime_environment_variables].nil?
        type
      end
    end

    module CodeRepository
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CodeRepository, context: context)
        type = Types::CodeRepository.new
        type.repository_url = params[:repository_url]
        type.source_code_version = SourceCodeVersion.build(params[:source_code_version], context: "#{context}[:source_code_version]") unless params[:source_code_version].nil?
        type.code_configuration = CodeConfiguration.build(params[:code_configuration], context: "#{context}[:code_configuration]") unless params[:code_configuration].nil?
        type
      end
    end

    module Connection
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Connection, context: context)
        type = Types::Connection.new
        type.connection_name = params[:connection_name]
        type.connection_arn = params[:connection_arn]
        type.provider_type = params[:provider_type]
        type.status = params[:status]
        type.created_at = params[:created_at]
        type
      end
    end

    module ConnectionSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectionSummary, context: context)
        type = Types::ConnectionSummary.new
        type.connection_name = params[:connection_name]
        type.connection_arn = params[:connection_arn]
        type.provider_type = params[:provider_type]
        type.status = params[:status]
        type.created_at = params[:created_at]
        type
      end
    end

    module ConnectionSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConnectionSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CreateAutoScalingConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAutoScalingConfigurationInput, context: context)
        type = Types::CreateAutoScalingConfigurationInput.new
        type.auto_scaling_configuration_name = params[:auto_scaling_configuration_name]
        type.max_concurrency = params[:max_concurrency]
        type.min_size = params[:min_size]
        type.max_size = params[:max_size]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateAutoScalingConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAutoScalingConfigurationOutput, context: context)
        type = Types::CreateAutoScalingConfigurationOutput.new
        type.auto_scaling_configuration = AutoScalingConfiguration.build(params[:auto_scaling_configuration], context: "#{context}[:auto_scaling_configuration]") unless params[:auto_scaling_configuration].nil?
        type
      end
    end

    module CreateConnectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConnectionInput, context: context)
        type = Types::CreateConnectionInput.new
        type.connection_name = params[:connection_name]
        type.provider_type = params[:provider_type]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateConnectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConnectionOutput, context: context)
        type = Types::CreateConnectionOutput.new
        type.connection = Connection.build(params[:connection], context: "#{context}[:connection]") unless params[:connection].nil?
        type
      end
    end

    module CreateObservabilityConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateObservabilityConfigurationInput, context: context)
        type = Types::CreateObservabilityConfigurationInput.new
        type.observability_configuration_name = params[:observability_configuration_name]
        type.trace_configuration = TraceConfiguration.build(params[:trace_configuration], context: "#{context}[:trace_configuration]") unless params[:trace_configuration].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateObservabilityConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateObservabilityConfigurationOutput, context: context)
        type = Types::CreateObservabilityConfigurationOutput.new
        type.observability_configuration = ObservabilityConfiguration.build(params[:observability_configuration], context: "#{context}[:observability_configuration]") unless params[:observability_configuration].nil?
        type
      end
    end

    module CreateServiceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateServiceInput, context: context)
        type = Types::CreateServiceInput.new
        type.service_name = params[:service_name]
        type.source_configuration = SourceConfiguration.build(params[:source_configuration], context: "#{context}[:source_configuration]") unless params[:source_configuration].nil?
        type.instance_configuration = InstanceConfiguration.build(params[:instance_configuration], context: "#{context}[:instance_configuration]") unless params[:instance_configuration].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.encryption_configuration = EncryptionConfiguration.build(params[:encryption_configuration], context: "#{context}[:encryption_configuration]") unless params[:encryption_configuration].nil?
        type.health_check_configuration = HealthCheckConfiguration.build(params[:health_check_configuration], context: "#{context}[:health_check_configuration]") unless params[:health_check_configuration].nil?
        type.auto_scaling_configuration_arn = params[:auto_scaling_configuration_arn]
        type.network_configuration = NetworkConfiguration.build(params[:network_configuration], context: "#{context}[:network_configuration]") unless params[:network_configuration].nil?
        type.observability_configuration = ServiceObservabilityConfiguration.build(params[:observability_configuration], context: "#{context}[:observability_configuration]") unless params[:observability_configuration].nil?
        type
      end
    end

    module CreateServiceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateServiceOutput, context: context)
        type = Types::CreateServiceOutput.new
        type.service = Service.build(params[:service], context: "#{context}[:service]") unless params[:service].nil?
        type.operation_id = params[:operation_id]
        type
      end
    end

    module CreateVpcConnectorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVpcConnectorInput, context: context)
        type = Types::CreateVpcConnectorInput.new
        type.vpc_connector_name = params[:vpc_connector_name]
        type.subnets = StringList.build(params[:subnets], context: "#{context}[:subnets]") unless params[:subnets].nil?
        type.security_groups = StringList.build(params[:security_groups], context: "#{context}[:security_groups]") unless params[:security_groups].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateVpcConnectorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVpcConnectorOutput, context: context)
        type = Types::CreateVpcConnectorOutput.new
        type.vpc_connector = VpcConnector.build(params[:vpc_connector], context: "#{context}[:vpc_connector]") unless params[:vpc_connector].nil?
        type
      end
    end

    module CustomDomain
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomDomain, context: context)
        type = Types::CustomDomain.new
        type.domain_name = params[:domain_name]
        type.enable_www_subdomain = params[:enable_www_subdomain]
        type.certificate_validation_records = CertificateValidationRecordList.build(params[:certificate_validation_records], context: "#{context}[:certificate_validation_records]") unless params[:certificate_validation_records].nil?
        type.status = params[:status]
        type
      end
    end

    module CustomDomainList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CustomDomain.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeleteAutoScalingConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAutoScalingConfigurationInput, context: context)
        type = Types::DeleteAutoScalingConfigurationInput.new
        type.auto_scaling_configuration_arn = params[:auto_scaling_configuration_arn]
        type
      end
    end

    module DeleteAutoScalingConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAutoScalingConfigurationOutput, context: context)
        type = Types::DeleteAutoScalingConfigurationOutput.new
        type.auto_scaling_configuration = AutoScalingConfiguration.build(params[:auto_scaling_configuration], context: "#{context}[:auto_scaling_configuration]") unless params[:auto_scaling_configuration].nil?
        type
      end
    end

    module DeleteConnectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConnectionInput, context: context)
        type = Types::DeleteConnectionInput.new
        type.connection_arn = params[:connection_arn]
        type
      end
    end

    module DeleteConnectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConnectionOutput, context: context)
        type = Types::DeleteConnectionOutput.new
        type.connection = Connection.build(params[:connection], context: "#{context}[:connection]") unless params[:connection].nil?
        type
      end
    end

    module DeleteObservabilityConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteObservabilityConfigurationInput, context: context)
        type = Types::DeleteObservabilityConfigurationInput.new
        type.observability_configuration_arn = params[:observability_configuration_arn]
        type
      end
    end

    module DeleteObservabilityConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteObservabilityConfigurationOutput, context: context)
        type = Types::DeleteObservabilityConfigurationOutput.new
        type.observability_configuration = ObservabilityConfiguration.build(params[:observability_configuration], context: "#{context}[:observability_configuration]") unless params[:observability_configuration].nil?
        type
      end
    end

    module DeleteServiceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteServiceInput, context: context)
        type = Types::DeleteServiceInput.new
        type.service_arn = params[:service_arn]
        type
      end
    end

    module DeleteServiceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteServiceOutput, context: context)
        type = Types::DeleteServiceOutput.new
        type.service = Service.build(params[:service], context: "#{context}[:service]") unless params[:service].nil?
        type.operation_id = params[:operation_id]
        type
      end
    end

    module DeleteVpcConnectorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVpcConnectorInput, context: context)
        type = Types::DeleteVpcConnectorInput.new
        type.vpc_connector_arn = params[:vpc_connector_arn]
        type
      end
    end

    module DeleteVpcConnectorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVpcConnectorOutput, context: context)
        type = Types::DeleteVpcConnectorOutput.new
        type.vpc_connector = VpcConnector.build(params[:vpc_connector], context: "#{context}[:vpc_connector]") unless params[:vpc_connector].nil?
        type
      end
    end

    module DescribeAutoScalingConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAutoScalingConfigurationInput, context: context)
        type = Types::DescribeAutoScalingConfigurationInput.new
        type.auto_scaling_configuration_arn = params[:auto_scaling_configuration_arn]
        type
      end
    end

    module DescribeAutoScalingConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAutoScalingConfigurationOutput, context: context)
        type = Types::DescribeAutoScalingConfigurationOutput.new
        type.auto_scaling_configuration = AutoScalingConfiguration.build(params[:auto_scaling_configuration], context: "#{context}[:auto_scaling_configuration]") unless params[:auto_scaling_configuration].nil?
        type
      end
    end

    module DescribeCustomDomainsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCustomDomainsInput, context: context)
        type = Types::DescribeCustomDomainsInput.new
        type.service_arn = params[:service_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeCustomDomainsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCustomDomainsOutput, context: context)
        type = Types::DescribeCustomDomainsOutput.new
        type.dns_target = params[:dns_target]
        type.service_arn = params[:service_arn]
        type.custom_domains = CustomDomainList.build(params[:custom_domains], context: "#{context}[:custom_domains]") unless params[:custom_domains].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeObservabilityConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeObservabilityConfigurationInput, context: context)
        type = Types::DescribeObservabilityConfigurationInput.new
        type.observability_configuration_arn = params[:observability_configuration_arn]
        type
      end
    end

    module DescribeObservabilityConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeObservabilityConfigurationOutput, context: context)
        type = Types::DescribeObservabilityConfigurationOutput.new
        type.observability_configuration = ObservabilityConfiguration.build(params[:observability_configuration], context: "#{context}[:observability_configuration]") unless params[:observability_configuration].nil?
        type
      end
    end

    module DescribeServiceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeServiceInput, context: context)
        type = Types::DescribeServiceInput.new
        type.service_arn = params[:service_arn]
        type
      end
    end

    module DescribeServiceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeServiceOutput, context: context)
        type = Types::DescribeServiceOutput.new
        type.service = Service.build(params[:service], context: "#{context}[:service]") unless params[:service].nil?
        type
      end
    end

    module DescribeVpcConnectorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeVpcConnectorInput, context: context)
        type = Types::DescribeVpcConnectorInput.new
        type.vpc_connector_arn = params[:vpc_connector_arn]
        type
      end
    end

    module DescribeVpcConnectorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeVpcConnectorOutput, context: context)
        type = Types::DescribeVpcConnectorOutput.new
        type.vpc_connector = VpcConnector.build(params[:vpc_connector], context: "#{context}[:vpc_connector]") unless params[:vpc_connector].nil?
        type
      end
    end

    module DisassociateCustomDomainInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateCustomDomainInput, context: context)
        type = Types::DisassociateCustomDomainInput.new
        type.service_arn = params[:service_arn]
        type.domain_name = params[:domain_name]
        type
      end
    end

    module DisassociateCustomDomainOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateCustomDomainOutput, context: context)
        type = Types::DisassociateCustomDomainOutput.new
        type.dns_target = params[:dns_target]
        type.service_arn = params[:service_arn]
        type.custom_domain = CustomDomain.build(params[:custom_domain], context: "#{context}[:custom_domain]") unless params[:custom_domain].nil?
        type
      end
    end

    module EgressConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EgressConfiguration, context: context)
        type = Types::EgressConfiguration.new
        type.egress_type = params[:egress_type]
        type.vpc_connector_arn = params[:vpc_connector_arn]
        type
      end
    end

    module EncryptionConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EncryptionConfiguration, context: context)
        type = Types::EncryptionConfiguration.new
        type.kms_key = params[:kms_key]
        type
      end
    end

    module HealthCheckConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HealthCheckConfiguration, context: context)
        type = Types::HealthCheckConfiguration.new
        type.protocol = params[:protocol]
        type.path = params[:path]
        type.interval = params[:interval]
        type.timeout = params[:timeout]
        type.healthy_threshold = params[:healthy_threshold]
        type.unhealthy_threshold = params[:unhealthy_threshold]
        type
      end
    end

    module ImageConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImageConfiguration, context: context)
        type = Types::ImageConfiguration.new
        type.runtime_environment_variables = RuntimeEnvironmentVariables.build(params[:runtime_environment_variables], context: "#{context}[:runtime_environment_variables]") unless params[:runtime_environment_variables].nil?
        type.start_command = params[:start_command]
        type.port = params[:port]
        type
      end
    end

    module ImageRepository
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImageRepository, context: context)
        type = Types::ImageRepository.new
        type.image_identifier = params[:image_identifier]
        type.image_configuration = ImageConfiguration.build(params[:image_configuration], context: "#{context}[:image_configuration]") unless params[:image_configuration].nil?
        type.image_repository_type = params[:image_repository_type]
        type
      end
    end

    module InstanceConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceConfiguration, context: context)
        type = Types::InstanceConfiguration.new
        type.cpu = params[:cpu]
        type.memory = params[:memory]
        type.instance_role_arn = params[:instance_role_arn]
        type
      end
    end

    module InternalServiceErrorException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServiceErrorException, context: context)
        type = Types::InternalServiceErrorException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRequestException, context: context)
        type = Types::InvalidRequestException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidStateException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidStateException, context: context)
        type = Types::InvalidStateException.new
        type.message = params[:message]
        type
      end
    end

    module ListAutoScalingConfigurationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAutoScalingConfigurationsInput, context: context)
        type = Types::ListAutoScalingConfigurationsInput.new
        type.auto_scaling_configuration_name = params[:auto_scaling_configuration_name]
        type.latest_only = params[:latest_only]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAutoScalingConfigurationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAutoScalingConfigurationsOutput, context: context)
        type = Types::ListAutoScalingConfigurationsOutput.new
        type.auto_scaling_configuration_summary_list = AutoScalingConfigurationSummaryList.build(params[:auto_scaling_configuration_summary_list], context: "#{context}[:auto_scaling_configuration_summary_list]") unless params[:auto_scaling_configuration_summary_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListConnectionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListConnectionsInput, context: context)
        type = Types::ListConnectionsInput.new
        type.connection_name = params[:connection_name]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListConnectionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListConnectionsOutput, context: context)
        type = Types::ListConnectionsOutput.new
        type.connection_summary_list = ConnectionSummaryList.build(params[:connection_summary_list], context: "#{context}[:connection_summary_list]") unless params[:connection_summary_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListObservabilityConfigurationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListObservabilityConfigurationsInput, context: context)
        type = Types::ListObservabilityConfigurationsInput.new
        type.observability_configuration_name = params[:observability_configuration_name]
        type.latest_only = params[:latest_only]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListObservabilityConfigurationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListObservabilityConfigurationsOutput, context: context)
        type = Types::ListObservabilityConfigurationsOutput.new
        type.observability_configuration_summary_list = ObservabilityConfigurationSummaryList.build(params[:observability_configuration_summary_list], context: "#{context}[:observability_configuration_summary_list]") unless params[:observability_configuration_summary_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListOperationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOperationsInput, context: context)
        type = Types::ListOperationsInput.new
        type.service_arn = params[:service_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListOperationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOperationsOutput, context: context)
        type = Types::ListOperationsOutput.new
        type.operation_summary_list = OperationSummaryList.build(params[:operation_summary_list], context: "#{context}[:operation_summary_list]") unless params[:operation_summary_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListServicesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListServicesInput, context: context)
        type = Types::ListServicesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListServicesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListServicesOutput, context: context)
        type = Types::ListServicesOutput.new
        type.service_summary_list = ServiceSummaryList.build(params[:service_summary_list], context: "#{context}[:service_summary_list]") unless params[:service_summary_list].nil?
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
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ListVpcConnectorsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListVpcConnectorsInput, context: context)
        type = Types::ListVpcConnectorsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListVpcConnectorsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListVpcConnectorsOutput, context: context)
        type = Types::ListVpcConnectorsOutput.new
        type.vpc_connectors = VpcConnectors.build(params[:vpc_connectors], context: "#{context}[:vpc_connectors]") unless params[:vpc_connectors].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module NetworkConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkConfiguration, context: context)
        type = Types::NetworkConfiguration.new
        type.egress_configuration = EgressConfiguration.build(params[:egress_configuration], context: "#{context}[:egress_configuration]") unless params[:egress_configuration].nil?
        type
      end
    end

    module ObservabilityConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ObservabilityConfiguration, context: context)
        type = Types::ObservabilityConfiguration.new
        type.observability_configuration_arn = params[:observability_configuration_arn]
        type.observability_configuration_name = params[:observability_configuration_name]
        type.trace_configuration = TraceConfiguration.build(params[:trace_configuration], context: "#{context}[:trace_configuration]") unless params[:trace_configuration].nil?
        type.observability_configuration_revision = params[:observability_configuration_revision]
        type.latest = params[:latest]
        type.status = params[:status]
        type.created_at = params[:created_at]
        type.deleted_at = params[:deleted_at]
        type
      end
    end

    module ObservabilityConfigurationSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ObservabilityConfigurationSummary, context: context)
        type = Types::ObservabilityConfigurationSummary.new
        type.observability_configuration_arn = params[:observability_configuration_arn]
        type.observability_configuration_name = params[:observability_configuration_name]
        type.observability_configuration_revision = params[:observability_configuration_revision]
        type
      end
    end

    module ObservabilityConfigurationSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ObservabilityConfigurationSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OperationSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OperationSummary, context: context)
        type = Types::OperationSummary.new
        type.id = params[:id]
        type.type = params[:type]
        type.status = params[:status]
        type.target_arn = params[:target_arn]
        type.started_at = params[:started_at]
        type.ended_at = params[:ended_at]
        type.updated_at = params[:updated_at]
        type
      end
    end

    module OperationSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OperationSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PauseServiceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PauseServiceInput, context: context)
        type = Types::PauseServiceInput.new
        type.service_arn = params[:service_arn]
        type
      end
    end

    module PauseServiceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PauseServiceOutput, context: context)
        type = Types::PauseServiceOutput.new
        type.service = Service.build(params[:service], context: "#{context}[:service]") unless params[:service].nil?
        type.operation_id = params[:operation_id]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module ResumeServiceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResumeServiceInput, context: context)
        type = Types::ResumeServiceInput.new
        type.service_arn = params[:service_arn]
        type
      end
    end

    module ResumeServiceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResumeServiceOutput, context: context)
        type = Types::ResumeServiceOutput.new
        type.service = Service.build(params[:service], context: "#{context}[:service]") unless params[:service].nil?
        type.operation_id = params[:operation_id]
        type
      end
    end

    module RuntimeEnvironmentVariables
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module Service
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Service, context: context)
        type = Types::Service.new
        type.service_name = params[:service_name]
        type.service_id = params[:service_id]
        type.service_arn = params[:service_arn]
        type.service_url = params[:service_url]
        type.created_at = params[:created_at]
        type.updated_at = params[:updated_at]
        type.deleted_at = params[:deleted_at]
        type.status = params[:status]
        type.source_configuration = SourceConfiguration.build(params[:source_configuration], context: "#{context}[:source_configuration]") unless params[:source_configuration].nil?
        type.instance_configuration = InstanceConfiguration.build(params[:instance_configuration], context: "#{context}[:instance_configuration]") unless params[:instance_configuration].nil?
        type.encryption_configuration = EncryptionConfiguration.build(params[:encryption_configuration], context: "#{context}[:encryption_configuration]") unless params[:encryption_configuration].nil?
        type.health_check_configuration = HealthCheckConfiguration.build(params[:health_check_configuration], context: "#{context}[:health_check_configuration]") unless params[:health_check_configuration].nil?
        type.auto_scaling_configuration_summary = AutoScalingConfigurationSummary.build(params[:auto_scaling_configuration_summary], context: "#{context}[:auto_scaling_configuration_summary]") unless params[:auto_scaling_configuration_summary].nil?
        type.network_configuration = NetworkConfiguration.build(params[:network_configuration], context: "#{context}[:network_configuration]") unless params[:network_configuration].nil?
        type.observability_configuration = ServiceObservabilityConfiguration.build(params[:observability_configuration], context: "#{context}[:observability_configuration]") unless params[:observability_configuration].nil?
        type
      end
    end

    module ServiceObservabilityConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceObservabilityConfiguration, context: context)
        type = Types::ServiceObservabilityConfiguration.new
        type.observability_enabled = params[:observability_enabled]
        type.observability_configuration_arn = params[:observability_configuration_arn]
        type
      end
    end

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ServiceSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceSummary, context: context)
        type = Types::ServiceSummary.new
        type.service_name = params[:service_name]
        type.service_id = params[:service_id]
        type.service_arn = params[:service_arn]
        type.service_url = params[:service_url]
        type.created_at = params[:created_at]
        type.updated_at = params[:updated_at]
        type.status = params[:status]
        type
      end
    end

    module ServiceSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ServiceSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SourceCodeVersion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SourceCodeVersion, context: context)
        type = Types::SourceCodeVersion.new
        type.type = params[:type]
        type.value = params[:value]
        type
      end
    end

    module SourceConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SourceConfiguration, context: context)
        type = Types::SourceConfiguration.new
        type.code_repository = CodeRepository.build(params[:code_repository], context: "#{context}[:code_repository]") unless params[:code_repository].nil?
        type.image_repository = ImageRepository.build(params[:image_repository], context: "#{context}[:image_repository]") unless params[:image_repository].nil?
        type.auto_deployments_enabled = params[:auto_deployments_enabled]
        type.authentication_configuration = AuthenticationConfiguration.build(params[:authentication_configuration], context: "#{context}[:authentication_configuration]") unless params[:authentication_configuration].nil?
        type
      end
    end

    module StartDeploymentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartDeploymentInput, context: context)
        type = Types::StartDeploymentInput.new
        type.service_arn = params[:service_arn]
        type
      end
    end

    module StartDeploymentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartDeploymentOutput, context: context)
        type = Types::StartDeploymentOutput.new
        type.operation_id = params[:operation_id]
        type
      end
    end

    module StringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module TraceConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TraceConfiguration, context: context)
        type = Types::TraceConfiguration.new
        type.vendor = params[:vendor]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
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

    module UpdateServiceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateServiceInput, context: context)
        type = Types::UpdateServiceInput.new
        type.service_arn = params[:service_arn]
        type.source_configuration = SourceConfiguration.build(params[:source_configuration], context: "#{context}[:source_configuration]") unless params[:source_configuration].nil?
        type.instance_configuration = InstanceConfiguration.build(params[:instance_configuration], context: "#{context}[:instance_configuration]") unless params[:instance_configuration].nil?
        type.auto_scaling_configuration_arn = params[:auto_scaling_configuration_arn]
        type.health_check_configuration = HealthCheckConfiguration.build(params[:health_check_configuration], context: "#{context}[:health_check_configuration]") unless params[:health_check_configuration].nil?
        type.network_configuration = NetworkConfiguration.build(params[:network_configuration], context: "#{context}[:network_configuration]") unless params[:network_configuration].nil?
        type.observability_configuration = ServiceObservabilityConfiguration.build(params[:observability_configuration], context: "#{context}[:observability_configuration]") unless params[:observability_configuration].nil?
        type
      end
    end

    module UpdateServiceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateServiceOutput, context: context)
        type = Types::UpdateServiceOutput.new
        type.service = Service.build(params[:service], context: "#{context}[:service]") unless params[:service].nil?
        type.operation_id = params[:operation_id]
        type
      end
    end

    module VpcConnector
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VpcConnector, context: context)
        type = Types::VpcConnector.new
        type.vpc_connector_name = params[:vpc_connector_name]
        type.vpc_connector_arn = params[:vpc_connector_arn]
        type.vpc_connector_revision = params[:vpc_connector_revision]
        type.subnets = StringList.build(params[:subnets], context: "#{context}[:subnets]") unless params[:subnets].nil?
        type.security_groups = StringList.build(params[:security_groups], context: "#{context}[:security_groups]") unless params[:security_groups].nil?
        type.status = params[:status]
        type.created_at = params[:created_at]
        type.deleted_at = params[:deleted_at]
        type
      end
    end

    module VpcConnectors
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VpcConnector.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
