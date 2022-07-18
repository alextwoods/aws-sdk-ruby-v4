# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::ServiceDiscovery
  module Params

    module Attributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module CreateHttpNamespaceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateHttpNamespaceInput, context: context)
        type = Types::CreateHttpNamespaceInput.new
        type.name = params[:name]
        type.creator_request_id = params[:creator_request_id] || ::SecureRandom.uuid
        type.description = params[:description]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateHttpNamespaceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateHttpNamespaceOutput, context: context)
        type = Types::CreateHttpNamespaceOutput.new
        type.operation_id = params[:operation_id]
        type
      end
    end

    module CreatePrivateDnsNamespaceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePrivateDnsNamespaceInput, context: context)
        type = Types::CreatePrivateDnsNamespaceInput.new
        type.name = params[:name]
        type.creator_request_id = params[:creator_request_id] || ::SecureRandom.uuid
        type.description = params[:description]
        type.vpc = params[:vpc]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.properties = PrivateDnsNamespaceProperties.build(params[:properties], context: "#{context}[:properties]") unless params[:properties].nil?
        type
      end
    end

    module CreatePrivateDnsNamespaceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePrivateDnsNamespaceOutput, context: context)
        type = Types::CreatePrivateDnsNamespaceOutput.new
        type.operation_id = params[:operation_id]
        type
      end
    end

    module CreatePublicDnsNamespaceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePublicDnsNamespaceInput, context: context)
        type = Types::CreatePublicDnsNamespaceInput.new
        type.name = params[:name]
        type.creator_request_id = params[:creator_request_id] || ::SecureRandom.uuid
        type.description = params[:description]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.properties = PublicDnsNamespaceProperties.build(params[:properties], context: "#{context}[:properties]") unless params[:properties].nil?
        type
      end
    end

    module CreatePublicDnsNamespaceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePublicDnsNamespaceOutput, context: context)
        type = Types::CreatePublicDnsNamespaceOutput.new
        type.operation_id = params[:operation_id]
        type
      end
    end

    module CreateServiceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateServiceInput, context: context)
        type = Types::CreateServiceInput.new
        type.name = params[:name]
        type.namespace_id = params[:namespace_id]
        type.creator_request_id = params[:creator_request_id] || ::SecureRandom.uuid
        type.description = params[:description]
        type.dns_config = DnsConfig.build(params[:dns_config], context: "#{context}[:dns_config]") unless params[:dns_config].nil?
        type.health_check_config = HealthCheckConfig.build(params[:health_check_config], context: "#{context}[:health_check_config]") unless params[:health_check_config].nil?
        type.health_check_custom_config = HealthCheckCustomConfig.build(params[:health_check_custom_config], context: "#{context}[:health_check_custom_config]") unless params[:health_check_custom_config].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.type = params[:type]
        type
      end
    end

    module CreateServiceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateServiceOutput, context: context)
        type = Types::CreateServiceOutput.new
        type.service = Service.build(params[:service], context: "#{context}[:service]") unless params[:service].nil?
        type
      end
    end

    module CustomHealthNotFound
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomHealthNotFound, context: context)
        type = Types::CustomHealthNotFound.new
        type.message = params[:message]
        type
      end
    end

    module DeleteNamespaceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteNamespaceInput, context: context)
        type = Types::DeleteNamespaceInput.new
        type.id = params[:id]
        type
      end
    end

    module DeleteNamespaceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteNamespaceOutput, context: context)
        type = Types::DeleteNamespaceOutput.new
        type.operation_id = params[:operation_id]
        type
      end
    end

    module DeleteServiceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteServiceInput, context: context)
        type = Types::DeleteServiceInput.new
        type.id = params[:id]
        type
      end
    end

    module DeleteServiceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteServiceOutput, context: context)
        type = Types::DeleteServiceOutput.new
        type
      end
    end

    module DeregisterInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterInstanceInput, context: context)
        type = Types::DeregisterInstanceInput.new
        type.service_id = params[:service_id]
        type.instance_id = params[:instance_id]
        type
      end
    end

    module DeregisterInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterInstanceOutput, context: context)
        type = Types::DeregisterInstanceOutput.new
        type.operation_id = params[:operation_id]
        type
      end
    end

    module DiscoverInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DiscoverInstancesInput, context: context)
        type = Types::DiscoverInstancesInput.new
        type.namespace_name = params[:namespace_name]
        type.service_name = params[:service_name]
        type.max_results = params[:max_results]
        type.query_parameters = Attributes.build(params[:query_parameters], context: "#{context}[:query_parameters]") unless params[:query_parameters].nil?
        type.optional_parameters = Attributes.build(params[:optional_parameters], context: "#{context}[:optional_parameters]") unless params[:optional_parameters].nil?
        type.health_status = params[:health_status]
        type
      end
    end

    module DiscoverInstancesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DiscoverInstancesOutput, context: context)
        type = Types::DiscoverInstancesOutput.new
        type.instances = HttpInstanceSummaryList.build(params[:instances], context: "#{context}[:instances]") unless params[:instances].nil?
        type
      end
    end

    module DnsConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DnsConfig, context: context)
        type = Types::DnsConfig.new
        type.namespace_id = params[:namespace_id]
        type.routing_policy = params[:routing_policy]
        type.dns_records = DnsRecordList.build(params[:dns_records], context: "#{context}[:dns_records]") unless params[:dns_records].nil?
        type
      end
    end

    module DnsConfigChange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DnsConfigChange, context: context)
        type = Types::DnsConfigChange.new
        type.dns_records = DnsRecordList.build(params[:dns_records], context: "#{context}[:dns_records]") unless params[:dns_records].nil?
        type
      end
    end

    module DnsProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DnsProperties, context: context)
        type = Types::DnsProperties.new
        type.hosted_zone_id = params[:hosted_zone_id]
        type.soa = SOA.build(params[:soa], context: "#{context}[:soa]") unless params[:soa].nil?
        type
      end
    end

    module DnsRecord
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DnsRecord, context: context)
        type = Types::DnsRecord.new
        type.type = params[:type]
        type.ttl = params[:ttl]
        type
      end
    end

    module DnsRecordList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DnsRecord.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DuplicateRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DuplicateRequest, context: context)
        type = Types::DuplicateRequest.new
        type.message = params[:message]
        type.duplicate_operation_id = params[:duplicate_operation_id]
        type
      end
    end

    module FilterValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module GetInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInstanceInput, context: context)
        type = Types::GetInstanceInput.new
        type.service_id = params[:service_id]
        type.instance_id = params[:instance_id]
        type
      end
    end

    module GetInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInstanceOutput, context: context)
        type = Types::GetInstanceOutput.new
        type.instance = Instance.build(params[:instance], context: "#{context}[:instance]") unless params[:instance].nil?
        type
      end
    end

    module GetInstancesHealthStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInstancesHealthStatusInput, context: context)
        type = Types::GetInstancesHealthStatusInput.new
        type.service_id = params[:service_id]
        type.instances = InstanceIdList.build(params[:instances], context: "#{context}[:instances]") unless params[:instances].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetInstancesHealthStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInstancesHealthStatusOutput, context: context)
        type = Types::GetInstancesHealthStatusOutput.new
        type.status = InstanceHealthStatusMap.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetNamespaceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetNamespaceInput, context: context)
        type = Types::GetNamespaceInput.new
        type.id = params[:id]
        type
      end
    end

    module GetNamespaceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetNamespaceOutput, context: context)
        type = Types::GetNamespaceOutput.new
        type.namespace = Namespace.build(params[:namespace], context: "#{context}[:namespace]") unless params[:namespace].nil?
        type
      end
    end

    module GetOperationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetOperationInput, context: context)
        type = Types::GetOperationInput.new
        type.operation_id = params[:operation_id]
        type
      end
    end

    module GetOperationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetOperationOutput, context: context)
        type = Types::GetOperationOutput.new
        type.operation = Operation.build(params[:operation], context: "#{context}[:operation]") unless params[:operation].nil?
        type
      end
    end

    module GetServiceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetServiceInput, context: context)
        type = Types::GetServiceInput.new
        type.id = params[:id]
        type
      end
    end

    module GetServiceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetServiceOutput, context: context)
        type = Types::GetServiceOutput.new
        type.service = Service.build(params[:service], context: "#{context}[:service]") unless params[:service].nil?
        type
      end
    end

    module HealthCheckConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HealthCheckConfig, context: context)
        type = Types::HealthCheckConfig.new
        type.type = params[:type]
        type.resource_path = params[:resource_path]
        type.failure_threshold = params[:failure_threshold]
        type
      end
    end

    module HealthCheckCustomConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HealthCheckCustomConfig, context: context)
        type = Types::HealthCheckCustomConfig.new
        type.failure_threshold = params[:failure_threshold]
        type
      end
    end

    module HttpInstanceSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HttpInstanceSummary, context: context)
        type = Types::HttpInstanceSummary.new
        type.instance_id = params[:instance_id]
        type.namespace_name = params[:namespace_name]
        type.service_name = params[:service_name]
        type.health_status = params[:health_status]
        type.attributes = Attributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module HttpInstanceSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << HttpInstanceSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module HttpNamespaceChange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HttpNamespaceChange, context: context)
        type = Types::HttpNamespaceChange.new
        type.description = params[:description]
        type
      end
    end

    module HttpProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HttpProperties, context: context)
        type = Types::HttpProperties.new
        type.http_name = params[:http_name]
        type
      end
    end

    module Instance
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Instance, context: context)
        type = Types::Instance.new
        type.id = params[:id]
        type.creator_request_id = params[:creator_request_id]
        type.attributes = Attributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module InstanceHealthStatusMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module InstanceIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InstanceNotFound
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceNotFound, context: context)
        type = Types::InstanceNotFound.new
        type.message = params[:message]
        type
      end
    end

    module InstanceSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceSummary, context: context)
        type = Types::InstanceSummary.new
        type.id = params[:id]
        type.attributes = Attributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module InstanceSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InstanceSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InvalidInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidInput, context: context)
        type = Types::InvalidInput.new
        type.message = params[:message]
        type
      end
    end

    module ListInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInstancesInput, context: context)
        type = Types::ListInstancesInput.new
        type.service_id = params[:service_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListInstancesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInstancesOutput, context: context)
        type = Types::ListInstancesOutput.new
        type.instances = InstanceSummaryList.build(params[:instances], context: "#{context}[:instances]") unless params[:instances].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListNamespacesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListNamespacesInput, context: context)
        type = Types::ListNamespacesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.filters = NamespaceFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module ListNamespacesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListNamespacesOutput, context: context)
        type = Types::ListNamespacesOutput.new
        type.namespaces = NamespaceSummariesList.build(params[:namespaces], context: "#{context}[:namespaces]") unless params[:namespaces].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListOperationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOperationsInput, context: context)
        type = Types::ListOperationsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.filters = OperationFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module ListOperationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOperationsOutput, context: context)
        type = Types::ListOperationsOutput.new
        type.operations = OperationSummaryList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
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
        type.filters = ServiceFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module ListServicesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListServicesOutput, context: context)
        type = Types::ListServicesOutput.new
        type.services = ServiceSummariesList.build(params[:services], context: "#{context}[:services]") unless params[:services].nil?
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

    module Namespace
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Namespace, context: context)
        type = Types::Namespace.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.name = params[:name]
        type.type = params[:type]
        type.description = params[:description]
        type.service_count = params[:service_count]
        type.properties = NamespaceProperties.build(params[:properties], context: "#{context}[:properties]") unless params[:properties].nil?
        type.create_date = params[:create_date]
        type.creator_request_id = params[:creator_request_id]
        type
      end
    end

    module NamespaceAlreadyExists
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NamespaceAlreadyExists, context: context)
        type = Types::NamespaceAlreadyExists.new
        type.message = params[:message]
        type.creator_request_id = params[:creator_request_id]
        type.namespace_id = params[:namespace_id]
        type
      end
    end

    module NamespaceFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NamespaceFilter, context: context)
        type = Types::NamespaceFilter.new
        type.name = params[:name]
        type.values = FilterValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type.condition = params[:condition]
        type
      end
    end

    module NamespaceFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NamespaceFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NamespaceNotFound
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NamespaceNotFound, context: context)
        type = Types::NamespaceNotFound.new
        type.message = params[:message]
        type
      end
    end

    module NamespaceProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NamespaceProperties, context: context)
        type = Types::NamespaceProperties.new
        type.dns_properties = DnsProperties.build(params[:dns_properties], context: "#{context}[:dns_properties]") unless params[:dns_properties].nil?
        type.http_properties = HttpProperties.build(params[:http_properties], context: "#{context}[:http_properties]") unless params[:http_properties].nil?
        type
      end
    end

    module NamespaceSummariesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NamespaceSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NamespaceSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NamespaceSummary, context: context)
        type = Types::NamespaceSummary.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.name = params[:name]
        type.type = params[:type]
        type.description = params[:description]
        type.service_count = params[:service_count]
        type.properties = NamespaceProperties.build(params[:properties], context: "#{context}[:properties]") unless params[:properties].nil?
        type.create_date = params[:create_date]
        type
      end
    end

    module Operation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Operation, context: context)
        type = Types::Operation.new
        type.id = params[:id]
        type.type = params[:type]
        type.status = params[:status]
        type.error_message = params[:error_message]
        type.error_code = params[:error_code]
        type.create_date = params[:create_date]
        type.update_date = params[:update_date]
        type.targets = OperationTargetsMap.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type
      end
    end

    module OperationFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OperationFilter, context: context)
        type = Types::OperationFilter.new
        type.name = params[:name]
        type.values = FilterValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type.condition = params[:condition]
        type
      end
    end

    module OperationFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OperationFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OperationNotFound
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OperationNotFound, context: context)
        type = Types::OperationNotFound.new
        type.message = params[:message]
        type
      end
    end

    module OperationSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OperationSummary, context: context)
        type = Types::OperationSummary.new
        type.id = params[:id]
        type.status = params[:status]
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

    module OperationTargetsMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module PrivateDnsNamespaceChange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PrivateDnsNamespaceChange, context: context)
        type = Types::PrivateDnsNamespaceChange.new
        type.description = params[:description]
        type.properties = PrivateDnsNamespacePropertiesChange.build(params[:properties], context: "#{context}[:properties]") unless params[:properties].nil?
        type
      end
    end

    module PrivateDnsNamespaceProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PrivateDnsNamespaceProperties, context: context)
        type = Types::PrivateDnsNamespaceProperties.new
        type.dns_properties = PrivateDnsPropertiesMutable.build(params[:dns_properties], context: "#{context}[:dns_properties]") unless params[:dns_properties].nil?
        type
      end
    end

    module PrivateDnsNamespacePropertiesChange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PrivateDnsNamespacePropertiesChange, context: context)
        type = Types::PrivateDnsNamespacePropertiesChange.new
        type.dns_properties = PrivateDnsPropertiesMutableChange.build(params[:dns_properties], context: "#{context}[:dns_properties]") unless params[:dns_properties].nil?
        type
      end
    end

    module PrivateDnsPropertiesMutable
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PrivateDnsPropertiesMutable, context: context)
        type = Types::PrivateDnsPropertiesMutable.new
        type.soa = SOA.build(params[:soa], context: "#{context}[:soa]") unless params[:soa].nil?
        type
      end
    end

    module PrivateDnsPropertiesMutableChange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PrivateDnsPropertiesMutableChange, context: context)
        type = Types::PrivateDnsPropertiesMutableChange.new
        type.soa = SOAChange.build(params[:soa], context: "#{context}[:soa]") unless params[:soa].nil?
        type
      end
    end

    module PublicDnsNamespaceChange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PublicDnsNamespaceChange, context: context)
        type = Types::PublicDnsNamespaceChange.new
        type.description = params[:description]
        type.properties = PublicDnsNamespacePropertiesChange.build(params[:properties], context: "#{context}[:properties]") unless params[:properties].nil?
        type
      end
    end

    module PublicDnsNamespaceProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PublicDnsNamespaceProperties, context: context)
        type = Types::PublicDnsNamespaceProperties.new
        type.dns_properties = PublicDnsPropertiesMutable.build(params[:dns_properties], context: "#{context}[:dns_properties]") unless params[:dns_properties].nil?
        type
      end
    end

    module PublicDnsNamespacePropertiesChange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PublicDnsNamespacePropertiesChange, context: context)
        type = Types::PublicDnsNamespacePropertiesChange.new
        type.dns_properties = PublicDnsPropertiesMutableChange.build(params[:dns_properties], context: "#{context}[:dns_properties]") unless params[:dns_properties].nil?
        type
      end
    end

    module PublicDnsPropertiesMutable
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PublicDnsPropertiesMutable, context: context)
        type = Types::PublicDnsPropertiesMutable.new
        type.soa = SOA.build(params[:soa], context: "#{context}[:soa]") unless params[:soa].nil?
        type
      end
    end

    module PublicDnsPropertiesMutableChange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PublicDnsPropertiesMutableChange, context: context)
        type = Types::PublicDnsPropertiesMutableChange.new
        type.soa = SOAChange.build(params[:soa], context: "#{context}[:soa]") unless params[:soa].nil?
        type
      end
    end

    module RegisterInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterInstanceInput, context: context)
        type = Types::RegisterInstanceInput.new
        type.service_id = params[:service_id]
        type.instance_id = params[:instance_id]
        type.creator_request_id = params[:creator_request_id] || ::SecureRandom.uuid
        type.attributes = Attributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module RegisterInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterInstanceOutput, context: context)
        type = Types::RegisterInstanceOutput.new
        type.operation_id = params[:operation_id]
        type
      end
    end

    module RequestLimitExceeded
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RequestLimitExceeded, context: context)
        type = Types::RequestLimitExceeded.new
        type.message = params[:message]
        type
      end
    end

    module ResourceInUse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceInUse, context: context)
        type = Types::ResourceInUse.new
        type.message = params[:message]
        type
      end
    end

    module ResourceLimitExceeded
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceLimitExceeded, context: context)
        type = Types::ResourceLimitExceeded.new
        type.message = params[:message]
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

    module SOA
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SOA, context: context)
        type = Types::SOA.new
        type.ttl = params[:ttl]
        type
      end
    end

    module SOAChange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SOAChange, context: context)
        type = Types::SOAChange.new
        type.ttl = params[:ttl]
        type
      end
    end

    module Service
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Service, context: context)
        type = Types::Service.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.name = params[:name]
        type.namespace_id = params[:namespace_id]
        type.description = params[:description]
        type.instance_count = params[:instance_count]
        type.dns_config = DnsConfig.build(params[:dns_config], context: "#{context}[:dns_config]") unless params[:dns_config].nil?
        type.type = params[:type]
        type.health_check_config = HealthCheckConfig.build(params[:health_check_config], context: "#{context}[:health_check_config]") unless params[:health_check_config].nil?
        type.health_check_custom_config = HealthCheckCustomConfig.build(params[:health_check_custom_config], context: "#{context}[:health_check_custom_config]") unless params[:health_check_custom_config].nil?
        type.create_date = params[:create_date]
        type.creator_request_id = params[:creator_request_id]
        type
      end
    end

    module ServiceAlreadyExists
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceAlreadyExists, context: context)
        type = Types::ServiceAlreadyExists.new
        type.message = params[:message]
        type.creator_request_id = params[:creator_request_id]
        type.service_id = params[:service_id]
        type
      end
    end

    module ServiceChange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceChange, context: context)
        type = Types::ServiceChange.new
        type.description = params[:description]
        type.dns_config = DnsConfigChange.build(params[:dns_config], context: "#{context}[:dns_config]") unless params[:dns_config].nil?
        type.health_check_config = HealthCheckConfig.build(params[:health_check_config], context: "#{context}[:health_check_config]") unless params[:health_check_config].nil?
        type
      end
    end

    module ServiceFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceFilter, context: context)
        type = Types::ServiceFilter.new
        type.name = params[:name]
        type.values = FilterValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type.condition = params[:condition]
        type
      end
    end

    module ServiceFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ServiceFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ServiceNotFound
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceNotFound, context: context)
        type = Types::ServiceNotFound.new
        type.message = params[:message]
        type
      end
    end

    module ServiceSummariesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ServiceSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ServiceSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceSummary, context: context)
        type = Types::ServiceSummary.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.name = params[:name]
        type.type = params[:type]
        type.description = params[:description]
        type.instance_count = params[:instance_count]
        type.dns_config = DnsConfig.build(params[:dns_config], context: "#{context}[:dns_config]") unless params[:dns_config].nil?
        type.health_check_config = HealthCheckConfig.build(params[:health_check_config], context: "#{context}[:health_check_config]") unless params[:health_check_config].nil?
        type.health_check_custom_config = HealthCheckCustomConfig.build(params[:health_check_custom_config], context: "#{context}[:health_check_custom_config]") unless params[:health_check_custom_config].nil?
        type.create_date = params[:create_date]
        type
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

    module TooManyTagsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyTagsException, context: context)
        type = Types::TooManyTagsException.new
        type.message = params[:message]
        type.resource_name = params[:resource_name]
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

    module UpdateHttpNamespaceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateHttpNamespaceInput, context: context)
        type = Types::UpdateHttpNamespaceInput.new
        type.id = params[:id]
        type.updater_request_id = params[:updater_request_id] || ::SecureRandom.uuid
        type.namespace = HttpNamespaceChange.build(params[:namespace], context: "#{context}[:namespace]") unless params[:namespace].nil?
        type
      end
    end

    module UpdateHttpNamespaceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateHttpNamespaceOutput, context: context)
        type = Types::UpdateHttpNamespaceOutput.new
        type.operation_id = params[:operation_id]
        type
      end
    end

    module UpdateInstanceCustomHealthStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateInstanceCustomHealthStatusInput, context: context)
        type = Types::UpdateInstanceCustomHealthStatusInput.new
        type.service_id = params[:service_id]
        type.instance_id = params[:instance_id]
        type.status = params[:status]
        type
      end
    end

    module UpdateInstanceCustomHealthStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateInstanceCustomHealthStatusOutput, context: context)
        type = Types::UpdateInstanceCustomHealthStatusOutput.new
        type
      end
    end

    module UpdatePrivateDnsNamespaceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePrivateDnsNamespaceInput, context: context)
        type = Types::UpdatePrivateDnsNamespaceInput.new
        type.id = params[:id]
        type.updater_request_id = params[:updater_request_id] || ::SecureRandom.uuid
        type.namespace = PrivateDnsNamespaceChange.build(params[:namespace], context: "#{context}[:namespace]") unless params[:namespace].nil?
        type
      end
    end

    module UpdatePrivateDnsNamespaceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePrivateDnsNamespaceOutput, context: context)
        type = Types::UpdatePrivateDnsNamespaceOutput.new
        type.operation_id = params[:operation_id]
        type
      end
    end

    module UpdatePublicDnsNamespaceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePublicDnsNamespaceInput, context: context)
        type = Types::UpdatePublicDnsNamespaceInput.new
        type.id = params[:id]
        type.updater_request_id = params[:updater_request_id] || ::SecureRandom.uuid
        type.namespace = PublicDnsNamespaceChange.build(params[:namespace], context: "#{context}[:namespace]") unless params[:namespace].nil?
        type
      end
    end

    module UpdatePublicDnsNamespaceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePublicDnsNamespaceOutput, context: context)
        type = Types::UpdatePublicDnsNamespaceOutput.new
        type.operation_id = params[:operation_id]
        type
      end
    end

    module UpdateServiceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateServiceInput, context: context)
        type = Types::UpdateServiceInput.new
        type.id = params[:id]
        type.service = ServiceChange.build(params[:service], context: "#{context}[:service]") unless params[:service].nil?
        type
      end
    end

    module UpdateServiceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateServiceOutput, context: context)
        type = Types::UpdateServiceOutput.new
        type.operation_id = params[:operation_id]
        type
      end
    end

  end
end
