# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ServiceDiscovery
  module Validators

    class Attributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class CreateHttpNamespaceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateHttpNamespaceInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:creator_request_id], ::String, context: "#{context}[:creator_request_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateHttpNamespaceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateHttpNamespaceOutput, context: context)
        Hearth::Validator.validate!(input[:operation_id], ::String, context: "#{context}[:operation_id]")
      end
    end

    class CreatePrivateDnsNamespaceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePrivateDnsNamespaceInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:creator_request_id], ::String, context: "#{context}[:creator_request_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:vpc], ::String, context: "#{context}[:vpc]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::PrivateDnsNamespaceProperties.validate!(input[:properties], context: "#{context}[:properties]") unless input[:properties].nil?
      end
    end

    class CreatePrivateDnsNamespaceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePrivateDnsNamespaceOutput, context: context)
        Hearth::Validator.validate!(input[:operation_id], ::String, context: "#{context}[:operation_id]")
      end
    end

    class CreatePublicDnsNamespaceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePublicDnsNamespaceInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:creator_request_id], ::String, context: "#{context}[:creator_request_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::PublicDnsNamespaceProperties.validate!(input[:properties], context: "#{context}[:properties]") unless input[:properties].nil?
      end
    end

    class CreatePublicDnsNamespaceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePublicDnsNamespaceOutput, context: context)
        Hearth::Validator.validate!(input[:operation_id], ::String, context: "#{context}[:operation_id]")
      end
    end

    class CreateServiceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateServiceInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:namespace_id], ::String, context: "#{context}[:namespace_id]")
        Hearth::Validator.validate!(input[:creator_request_id], ::String, context: "#{context}[:creator_request_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::DnsConfig.validate!(input[:dns_config], context: "#{context}[:dns_config]") unless input[:dns_config].nil?
        Validators::HealthCheckConfig.validate!(input[:health_check_config], context: "#{context}[:health_check_config]") unless input[:health_check_config].nil?
        Validators::HealthCheckCustomConfig.validate!(input[:health_check_custom_config], context: "#{context}[:health_check_custom_config]") unless input[:health_check_custom_config].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class CreateServiceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateServiceOutput, context: context)
        Validators::Service.validate!(input[:service], context: "#{context}[:service]") unless input[:service].nil?
      end
    end

    class CustomHealthNotFound
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomHealthNotFound, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DeleteNamespaceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteNamespaceInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DeleteNamespaceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteNamespaceOutput, context: context)
        Hearth::Validator.validate!(input[:operation_id], ::String, context: "#{context}[:operation_id]")
      end
    end

    class DeleteServiceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteServiceInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DeleteServiceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteServiceOutput, context: context)
      end
    end

    class DeregisterInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterInstanceInput, context: context)
        Hearth::Validator.validate!(input[:service_id], ::String, context: "#{context}[:service_id]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
      end
    end

    class DeregisterInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterInstanceOutput, context: context)
        Hearth::Validator.validate!(input[:operation_id], ::String, context: "#{context}[:operation_id]")
      end
    end

    class DiscoverInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DiscoverInstancesInput, context: context)
        Hearth::Validator.validate!(input[:namespace_name], ::String, context: "#{context}[:namespace_name]")
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Validators::Attributes.validate!(input[:query_parameters], context: "#{context}[:query_parameters]") unless input[:query_parameters].nil?
        Validators::Attributes.validate!(input[:optional_parameters], context: "#{context}[:optional_parameters]") unless input[:optional_parameters].nil?
        Hearth::Validator.validate!(input[:health_status], ::String, context: "#{context}[:health_status]")
      end
    end

    class DiscoverInstancesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DiscoverInstancesOutput, context: context)
        Validators::HttpInstanceSummaryList.validate!(input[:instances], context: "#{context}[:instances]") unless input[:instances].nil?
      end
    end

    class DnsConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DnsConfig, context: context)
        Hearth::Validator.validate!(input[:namespace_id], ::String, context: "#{context}[:namespace_id]")
        Hearth::Validator.validate!(input[:routing_policy], ::String, context: "#{context}[:routing_policy]")
        Validators::DnsRecordList.validate!(input[:dns_records], context: "#{context}[:dns_records]") unless input[:dns_records].nil?
      end
    end

    class DnsConfigChange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DnsConfigChange, context: context)
        Validators::DnsRecordList.validate!(input[:dns_records], context: "#{context}[:dns_records]") unless input[:dns_records].nil?
      end
    end

    class DnsProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DnsProperties, context: context)
        Hearth::Validator.validate!(input[:hosted_zone_id], ::String, context: "#{context}[:hosted_zone_id]")
        Validators::SOA.validate!(input[:soa], context: "#{context}[:soa]") unless input[:soa].nil?
      end
    end

    class DnsRecord
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DnsRecord, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:ttl], ::Integer, context: "#{context}[:ttl]")
      end
    end

    class DnsRecordList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DnsRecord.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DuplicateRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DuplicateRequest, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:duplicate_operation_id], ::String, context: "#{context}[:duplicate_operation_id]")
      end
    end

    class FilterValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class GetInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInstanceInput, context: context)
        Hearth::Validator.validate!(input[:service_id], ::String, context: "#{context}[:service_id]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
      end
    end

    class GetInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInstanceOutput, context: context)
        Validators::Instance.validate!(input[:instance], context: "#{context}[:instance]") unless input[:instance].nil?
      end
    end

    class GetInstancesHealthStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInstancesHealthStatusInput, context: context)
        Hearth::Validator.validate!(input[:service_id], ::String, context: "#{context}[:service_id]")
        Validators::InstanceIdList.validate!(input[:instances], context: "#{context}[:instances]") unless input[:instances].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetInstancesHealthStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInstancesHealthStatusOutput, context: context)
        Validators::InstanceHealthStatusMap.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetNamespaceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetNamespaceInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetNamespaceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetNamespaceOutput, context: context)
        Validators::Namespace.validate!(input[:namespace], context: "#{context}[:namespace]") unless input[:namespace].nil?
      end
    end

    class GetOperationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetOperationInput, context: context)
        Hearth::Validator.validate!(input[:operation_id], ::String, context: "#{context}[:operation_id]")
      end
    end

    class GetOperationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetOperationOutput, context: context)
        Validators::Operation.validate!(input[:operation], context: "#{context}[:operation]") unless input[:operation].nil?
      end
    end

    class GetServiceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetServiceInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetServiceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetServiceOutput, context: context)
        Validators::Service.validate!(input[:service], context: "#{context}[:service]") unless input[:service].nil?
      end
    end

    class HealthCheckConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HealthCheckConfig, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:resource_path], ::String, context: "#{context}[:resource_path]")
        Hearth::Validator.validate!(input[:failure_threshold], ::Integer, context: "#{context}[:failure_threshold]")
      end
    end

    class HealthCheckCustomConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HealthCheckCustomConfig, context: context)
        Hearth::Validator.validate!(input[:failure_threshold], ::Integer, context: "#{context}[:failure_threshold]")
      end
    end

    class HttpInstanceSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HttpInstanceSummary, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:namespace_name], ::String, context: "#{context}[:namespace_name]")
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
        Hearth::Validator.validate!(input[:health_status], ::String, context: "#{context}[:health_status]")
        Validators::Attributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class HttpInstanceSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::HttpInstanceSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class HttpNamespaceChange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HttpNamespaceChange, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class HttpProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HttpProperties, context: context)
        Hearth::Validator.validate!(input[:http_name], ::String, context: "#{context}[:http_name]")
      end
    end

    class Instance
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Instance, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:creator_request_id], ::String, context: "#{context}[:creator_request_id]")
        Validators::Attributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class InstanceHealthStatusMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class InstanceIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InstanceNotFound
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceNotFound, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InstanceSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Validators::Attributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class InstanceSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::InstanceSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InvalidInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidInput, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInstancesInput, context: context)
        Hearth::Validator.validate!(input[:service_id], ::String, context: "#{context}[:service_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListInstancesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInstancesOutput, context: context)
        Validators::InstanceSummaryList.validate!(input[:instances], context: "#{context}[:instances]") unless input[:instances].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListNamespacesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListNamespacesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Validators::NamespaceFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class ListNamespacesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListNamespacesOutput, context: context)
        Validators::NamespaceSummariesList.validate!(input[:namespaces], context: "#{context}[:namespaces]") unless input[:namespaces].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListOperationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOperationsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Validators::OperationFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class ListOperationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOperationsOutput, context: context)
        Validators::OperationSummaryList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListServicesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListServicesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Validators::ServiceFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class ListServicesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListServicesOutput, context: context)
        Validators::ServiceSummariesList.validate!(input[:services], context: "#{context}[:services]") unless input[:services].nil?
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

    class Namespace
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Namespace, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:service_count], ::Integer, context: "#{context}[:service_count]")
        Validators::NamespaceProperties.validate!(input[:properties], context: "#{context}[:properties]") unless input[:properties].nil?
        Hearth::Validator.validate!(input[:create_date], ::Time, context: "#{context}[:create_date]")
        Hearth::Validator.validate!(input[:creator_request_id], ::String, context: "#{context}[:creator_request_id]")
      end
    end

    class NamespaceAlreadyExists
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NamespaceAlreadyExists, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:creator_request_id], ::String, context: "#{context}[:creator_request_id]")
        Hearth::Validator.validate!(input[:namespace_id], ::String, context: "#{context}[:namespace_id]")
      end
    end

    class NamespaceFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NamespaceFilter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::FilterValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
        Hearth::Validator.validate!(input[:condition], ::String, context: "#{context}[:condition]")
      end
    end

    class NamespaceFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::NamespaceFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NamespaceNotFound
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NamespaceNotFound, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NamespaceProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NamespaceProperties, context: context)
        Validators::DnsProperties.validate!(input[:dns_properties], context: "#{context}[:dns_properties]") unless input[:dns_properties].nil?
        Validators::HttpProperties.validate!(input[:http_properties], context: "#{context}[:http_properties]") unless input[:http_properties].nil?
      end
    end

    class NamespaceSummariesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::NamespaceSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NamespaceSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NamespaceSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:service_count], ::Integer, context: "#{context}[:service_count]")
        Validators::NamespaceProperties.validate!(input[:properties], context: "#{context}[:properties]") unless input[:properties].nil?
        Hearth::Validator.validate!(input[:create_date], ::Time, context: "#{context}[:create_date]")
      end
    end

    class Operation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Operation, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:create_date], ::Time, context: "#{context}[:create_date]")
        Hearth::Validator.validate!(input[:update_date], ::Time, context: "#{context}[:update_date]")
        Validators::OperationTargetsMap.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
      end
    end

    class OperationFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OperationFilter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::FilterValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
        Hearth::Validator.validate!(input[:condition], ::String, context: "#{context}[:condition]")
      end
    end

    class OperationFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::OperationFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OperationNotFound
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OperationNotFound, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OperationSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OperationSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
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

    class OperationTargetsMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class PrivateDnsNamespaceChange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PrivateDnsNamespaceChange, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::PrivateDnsNamespacePropertiesChange.validate!(input[:properties], context: "#{context}[:properties]") unless input[:properties].nil?
      end
    end

    class PrivateDnsNamespaceProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PrivateDnsNamespaceProperties, context: context)
        Validators::PrivateDnsPropertiesMutable.validate!(input[:dns_properties], context: "#{context}[:dns_properties]") unless input[:dns_properties].nil?
      end
    end

    class PrivateDnsNamespacePropertiesChange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PrivateDnsNamespacePropertiesChange, context: context)
        Validators::PrivateDnsPropertiesMutableChange.validate!(input[:dns_properties], context: "#{context}[:dns_properties]") unless input[:dns_properties].nil?
      end
    end

    class PrivateDnsPropertiesMutable
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PrivateDnsPropertiesMutable, context: context)
        Validators::SOA.validate!(input[:soa], context: "#{context}[:soa]") unless input[:soa].nil?
      end
    end

    class PrivateDnsPropertiesMutableChange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PrivateDnsPropertiesMutableChange, context: context)
        Validators::SOAChange.validate!(input[:soa], context: "#{context}[:soa]") unless input[:soa].nil?
      end
    end

    class PublicDnsNamespaceChange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PublicDnsNamespaceChange, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::PublicDnsNamespacePropertiesChange.validate!(input[:properties], context: "#{context}[:properties]") unless input[:properties].nil?
      end
    end

    class PublicDnsNamespaceProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PublicDnsNamespaceProperties, context: context)
        Validators::PublicDnsPropertiesMutable.validate!(input[:dns_properties], context: "#{context}[:dns_properties]") unless input[:dns_properties].nil?
      end
    end

    class PublicDnsNamespacePropertiesChange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PublicDnsNamespacePropertiesChange, context: context)
        Validators::PublicDnsPropertiesMutableChange.validate!(input[:dns_properties], context: "#{context}[:dns_properties]") unless input[:dns_properties].nil?
      end
    end

    class PublicDnsPropertiesMutable
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PublicDnsPropertiesMutable, context: context)
        Validators::SOA.validate!(input[:soa], context: "#{context}[:soa]") unless input[:soa].nil?
      end
    end

    class PublicDnsPropertiesMutableChange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PublicDnsPropertiesMutableChange, context: context)
        Validators::SOAChange.validate!(input[:soa], context: "#{context}[:soa]") unless input[:soa].nil?
      end
    end

    class RegisterInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterInstanceInput, context: context)
        Hearth::Validator.validate!(input[:service_id], ::String, context: "#{context}[:service_id]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:creator_request_id], ::String, context: "#{context}[:creator_request_id]")
        Validators::Attributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class RegisterInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterInstanceOutput, context: context)
        Hearth::Validator.validate!(input[:operation_id], ::String, context: "#{context}[:operation_id]")
      end
    end

    class RequestLimitExceeded
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RequestLimitExceeded, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceInUse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceInUse, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceLimitExceeded
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceLimitExceeded, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SOA
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SOA, context: context)
        Hearth::Validator.validate!(input[:ttl], ::Integer, context: "#{context}[:ttl]")
      end
    end

    class SOAChange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SOAChange, context: context)
        Hearth::Validator.validate!(input[:ttl], ::Integer, context: "#{context}[:ttl]")
      end
    end

    class Service
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Service, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:namespace_id], ::String, context: "#{context}[:namespace_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:instance_count], ::Integer, context: "#{context}[:instance_count]")
        Validators::DnsConfig.validate!(input[:dns_config], context: "#{context}[:dns_config]") unless input[:dns_config].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Validators::HealthCheckConfig.validate!(input[:health_check_config], context: "#{context}[:health_check_config]") unless input[:health_check_config].nil?
        Validators::HealthCheckCustomConfig.validate!(input[:health_check_custom_config], context: "#{context}[:health_check_custom_config]") unless input[:health_check_custom_config].nil?
        Hearth::Validator.validate!(input[:create_date], ::Time, context: "#{context}[:create_date]")
        Hearth::Validator.validate!(input[:creator_request_id], ::String, context: "#{context}[:creator_request_id]")
      end
    end

    class ServiceAlreadyExists
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceAlreadyExists, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:creator_request_id], ::String, context: "#{context}[:creator_request_id]")
        Hearth::Validator.validate!(input[:service_id], ::String, context: "#{context}[:service_id]")
      end
    end

    class ServiceChange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceChange, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::DnsConfigChange.validate!(input[:dns_config], context: "#{context}[:dns_config]") unless input[:dns_config].nil?
        Validators::HealthCheckConfig.validate!(input[:health_check_config], context: "#{context}[:health_check_config]") unless input[:health_check_config].nil?
      end
    end

    class ServiceFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceFilter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::FilterValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
        Hearth::Validator.validate!(input[:condition], ::String, context: "#{context}[:condition]")
      end
    end

    class ServiceFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ServiceFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServiceNotFound
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceNotFound, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ServiceSummariesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ServiceSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServiceSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:instance_count], ::Integer, context: "#{context}[:instance_count]")
        Validators::DnsConfig.validate!(input[:dns_config], context: "#{context}[:dns_config]") unless input[:dns_config].nil?
        Validators::HealthCheckConfig.validate!(input[:health_check_config], context: "#{context}[:health_check_config]") unless input[:health_check_config].nil?
        Validators::HealthCheckCustomConfig.validate!(input[:health_check_custom_config], context: "#{context}[:health_check_custom_config]") unless input[:health_check_custom_config].nil?
        Hearth::Validator.validate!(input[:create_date], ::Time, context: "#{context}[:create_date]")
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

    class TooManyTagsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyTagsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
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

    class UpdateHttpNamespaceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateHttpNamespaceInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:updater_request_id], ::String, context: "#{context}[:updater_request_id]")
        Validators::HttpNamespaceChange.validate!(input[:namespace], context: "#{context}[:namespace]") unless input[:namespace].nil?
      end
    end

    class UpdateHttpNamespaceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateHttpNamespaceOutput, context: context)
        Hearth::Validator.validate!(input[:operation_id], ::String, context: "#{context}[:operation_id]")
      end
    end

    class UpdateInstanceCustomHealthStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateInstanceCustomHealthStatusInput, context: context)
        Hearth::Validator.validate!(input[:service_id], ::String, context: "#{context}[:service_id]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class UpdateInstanceCustomHealthStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateInstanceCustomHealthStatusOutput, context: context)
      end
    end

    class UpdatePrivateDnsNamespaceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePrivateDnsNamespaceInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:updater_request_id], ::String, context: "#{context}[:updater_request_id]")
        Validators::PrivateDnsNamespaceChange.validate!(input[:namespace], context: "#{context}[:namespace]") unless input[:namespace].nil?
      end
    end

    class UpdatePrivateDnsNamespaceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePrivateDnsNamespaceOutput, context: context)
        Hearth::Validator.validate!(input[:operation_id], ::String, context: "#{context}[:operation_id]")
      end
    end

    class UpdatePublicDnsNamespaceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePublicDnsNamespaceInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:updater_request_id], ::String, context: "#{context}[:updater_request_id]")
        Validators::PublicDnsNamespaceChange.validate!(input[:namespace], context: "#{context}[:namespace]") unless input[:namespace].nil?
      end
    end

    class UpdatePublicDnsNamespaceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePublicDnsNamespaceOutput, context: context)
        Hearth::Validator.validate!(input[:operation_id], ::String, context: "#{context}[:operation_id]")
      end
    end

    class UpdateServiceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateServiceInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Validators::ServiceChange.validate!(input[:service], context: "#{context}[:service]") unless input[:service].nil?
      end
    end

    class UpdateServiceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateServiceOutput, context: context)
        Hearth::Validator.validate!(input[:operation_id], ::String, context: "#{context}[:operation_id]")
      end
    end

  end
end
