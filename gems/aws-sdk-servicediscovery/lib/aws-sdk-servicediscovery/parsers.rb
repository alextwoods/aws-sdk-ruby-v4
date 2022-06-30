# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::ServiceDiscovery
  module Parsers

    # Operation Parser for CreateHttpNamespace
    class CreateHttpNamespace
      def self.parse(http_resp)
        data = Types::CreateHttpNamespaceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operation_id = map['OperationId']
        data
      end
    end

    # Error Parser for TooManyTagsException
    class TooManyTagsException
      def self.parse(http_resp)
        data = Types::TooManyTagsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.resource_name = map['ResourceName']
        data
      end
    end

    # Error Parser for InvalidInput
    class InvalidInput
      def self.parse(http_resp)
        data = Types::InvalidInput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ResourceLimitExceeded
    class ResourceLimitExceeded
      def self.parse(http_resp)
        data = Types::ResourceLimitExceeded.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for NamespaceAlreadyExists
    class NamespaceAlreadyExists
      def self.parse(http_resp)
        data = Types::NamespaceAlreadyExists.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.creator_request_id = map['CreatorRequestId']
        data.namespace_id = map['NamespaceId']
        data
      end
    end

    # Error Parser for DuplicateRequest
    class DuplicateRequest
      def self.parse(http_resp)
        data = Types::DuplicateRequest.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.duplicate_operation_id = map['DuplicateOperationId']
        data
      end
    end

    # Operation Parser for CreatePrivateDnsNamespace
    class CreatePrivateDnsNamespace
      def self.parse(http_resp)
        data = Types::CreatePrivateDnsNamespaceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operation_id = map['OperationId']
        data
      end
    end

    # Operation Parser for CreatePublicDnsNamespace
    class CreatePublicDnsNamespace
      def self.parse(http_resp)
        data = Types::CreatePublicDnsNamespaceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operation_id = map['OperationId']
        data
      end
    end

    # Operation Parser for CreateService
    class CreateService
      def self.parse(http_resp)
        data = Types::CreateServiceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.service = (Parsers::Service.parse(map['Service']) unless map['Service'].nil?)
        data
      end
    end

    class Service
      def self.parse(map)
        data = Types::Service.new
        data.id = map['Id']
        data.arn = map['Arn']
        data.name = map['Name']
        data.namespace_id = map['NamespaceId']
        data.description = map['Description']
        data.instance_count = map['InstanceCount']
        data.dns_config = (Parsers::DnsConfig.parse(map['DnsConfig']) unless map['DnsConfig'].nil?)
        data.type = map['Type']
        data.health_check_config = (Parsers::HealthCheckConfig.parse(map['HealthCheckConfig']) unless map['HealthCheckConfig'].nil?)
        data.health_check_custom_config = (Parsers::HealthCheckCustomConfig.parse(map['HealthCheckCustomConfig']) unless map['HealthCheckCustomConfig'].nil?)
        data.create_date = Time.at(map['CreateDate'].to_i) if map['CreateDate']
        data.creator_request_id = map['CreatorRequestId']
        return data
      end
    end

    class HealthCheckCustomConfig
      def self.parse(map)
        data = Types::HealthCheckCustomConfig.new
        data.failure_threshold = map['FailureThreshold']
        return data
      end
    end

    class HealthCheckConfig
      def self.parse(map)
        data = Types::HealthCheckConfig.new
        data.type = map['Type']
        data.resource_path = map['ResourcePath']
        data.failure_threshold = map['FailureThreshold']
        return data
      end
    end

    class DnsConfig
      def self.parse(map)
        data = Types::DnsConfig.new
        data.namespace_id = map['NamespaceId']
        data.routing_policy = map['RoutingPolicy']
        data.dns_records = (Parsers::DnsRecordList.parse(map['DnsRecords']) unless map['DnsRecords'].nil?)
        return data
      end
    end

    class DnsRecordList
      def self.parse(list)
        list.map do |value|
          Parsers::DnsRecord.parse(value) unless value.nil?
        end
      end
    end

    class DnsRecord
      def self.parse(map)
        data = Types::DnsRecord.new
        data.type = map['Type']
        data.ttl = map['TTL']
        return data
      end
    end

    # Error Parser for NamespaceNotFound
    class NamespaceNotFound
      def self.parse(http_resp)
        data = Types::NamespaceNotFound.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ServiceAlreadyExists
    class ServiceAlreadyExists
      def self.parse(http_resp)
        data = Types::ServiceAlreadyExists.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.creator_request_id = map['CreatorRequestId']
        data.service_id = map['ServiceId']
        data
      end
    end

    # Operation Parser for DeleteNamespace
    class DeleteNamespace
      def self.parse(http_resp)
        data = Types::DeleteNamespaceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operation_id = map['OperationId']
        data
      end
    end

    # Error Parser for ResourceInUse
    class ResourceInUse
      def self.parse(http_resp)
        data = Types::ResourceInUse.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
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
        data
      end
    end

    # Error Parser for ServiceNotFound
    class ServiceNotFound
      def self.parse(http_resp)
        data = Types::ServiceNotFound.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeregisterInstance
    class DeregisterInstance
      def self.parse(http_resp)
        data = Types::DeregisterInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operation_id = map['OperationId']
        data
      end
    end

    # Error Parser for InstanceNotFound
    class InstanceNotFound
      def self.parse(http_resp)
        data = Types::InstanceNotFound.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DiscoverInstances
    class DiscoverInstances
      def self.parse(http_resp)
        data = Types::DiscoverInstancesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.instances = (Parsers::HttpInstanceSummaryList.parse(map['Instances']) unless map['Instances'].nil?)
        data
      end
    end

    class HttpInstanceSummaryList
      def self.parse(list)
        list.map do |value|
          Parsers::HttpInstanceSummary.parse(value) unless value.nil?
        end
      end
    end

    class HttpInstanceSummary
      def self.parse(map)
        data = Types::HttpInstanceSummary.new
        data.instance_id = map['InstanceId']
        data.namespace_name = map['NamespaceName']
        data.service_name = map['ServiceName']
        data.health_status = map['HealthStatus']
        data.attributes = (Parsers::Attributes.parse(map['Attributes']) unless map['Attributes'].nil?)
        return data
      end
    end

    class Attributes
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Error Parser for RequestLimitExceeded
    class RequestLimitExceeded
      def self.parse(http_resp)
        data = Types::RequestLimitExceeded.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for GetInstance
    class GetInstance
      def self.parse(http_resp)
        data = Types::GetInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.instance = (Parsers::Instance.parse(map['Instance']) unless map['Instance'].nil?)
        data
      end
    end

    class Instance
      def self.parse(map)
        data = Types::Instance.new
        data.id = map['Id']
        data.creator_request_id = map['CreatorRequestId']
        data.attributes = (Parsers::Attributes.parse(map['Attributes']) unless map['Attributes'].nil?)
        return data
      end
    end

    # Operation Parser for GetInstancesHealthStatus
    class GetInstancesHealthStatus
      def self.parse(http_resp)
        data = Types::GetInstancesHealthStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.status = (Parsers::InstanceHealthStatusMap.parse(map['Status']) unless map['Status'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class InstanceHealthStatusMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetNamespace
    class GetNamespace
      def self.parse(http_resp)
        data = Types::GetNamespaceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.namespace = (Parsers::Namespace.parse(map['Namespace']) unless map['Namespace'].nil?)
        data
      end
    end

    class Namespace
      def self.parse(map)
        data = Types::Namespace.new
        data.id = map['Id']
        data.arn = map['Arn']
        data.name = map['Name']
        data.type = map['Type']
        data.description = map['Description']
        data.service_count = map['ServiceCount']
        data.properties = (Parsers::NamespaceProperties.parse(map['Properties']) unless map['Properties'].nil?)
        data.create_date = Time.at(map['CreateDate'].to_i) if map['CreateDate']
        data.creator_request_id = map['CreatorRequestId']
        return data
      end
    end

    class NamespaceProperties
      def self.parse(map)
        data = Types::NamespaceProperties.new
        data.dns_properties = (Parsers::DnsProperties.parse(map['DnsProperties']) unless map['DnsProperties'].nil?)
        data.http_properties = (Parsers::HttpProperties.parse(map['HttpProperties']) unless map['HttpProperties'].nil?)
        return data
      end
    end

    class HttpProperties
      def self.parse(map)
        data = Types::HttpProperties.new
        data.http_name = map['HttpName']
        return data
      end
    end

    class DnsProperties
      def self.parse(map)
        data = Types::DnsProperties.new
        data.hosted_zone_id = map['HostedZoneId']
        data.soa = (Parsers::SOA.parse(map['SOA']) unless map['SOA'].nil?)
        return data
      end
    end

    class SOA
      def self.parse(map)
        data = Types::SOA.new
        data.ttl = map['TTL']
        return data
      end
    end

    # Operation Parser for GetOperation
    class GetOperation
      def self.parse(http_resp)
        data = Types::GetOperationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operation = (Parsers::Operation.parse(map['Operation']) unless map['Operation'].nil?)
        data
      end
    end

    class Operation
      def self.parse(map)
        data = Types::Operation.new
        data.id = map['Id']
        data.type = map['Type']
        data.status = map['Status']
        data.error_message = map['ErrorMessage']
        data.error_code = map['ErrorCode']
        data.create_date = Time.at(map['CreateDate'].to_i) if map['CreateDate']
        data.update_date = Time.at(map['UpdateDate'].to_i) if map['UpdateDate']
        data.targets = (Parsers::OperationTargetsMap.parse(map['Targets']) unless map['Targets'].nil?)
        return data
      end
    end

    class OperationTargetsMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Error Parser for OperationNotFound
    class OperationNotFound
      def self.parse(http_resp)
        data = Types::OperationNotFound.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for GetService
    class GetService
      def self.parse(http_resp)
        data = Types::GetServiceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.service = (Parsers::Service.parse(map['Service']) unless map['Service'].nil?)
        data
      end
    end

    # Operation Parser for ListInstances
    class ListInstances
      def self.parse(http_resp)
        data = Types::ListInstancesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.instances = (Parsers::InstanceSummaryList.parse(map['Instances']) unless map['Instances'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class InstanceSummaryList
      def self.parse(list)
        list.map do |value|
          Parsers::InstanceSummary.parse(value) unless value.nil?
        end
      end
    end

    class InstanceSummary
      def self.parse(map)
        data = Types::InstanceSummary.new
        data.id = map['Id']
        data.attributes = (Parsers::Attributes.parse(map['Attributes']) unless map['Attributes'].nil?)
        return data
      end
    end

    # Operation Parser for ListNamespaces
    class ListNamespaces
      def self.parse(http_resp)
        data = Types::ListNamespacesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.namespaces = (Parsers::NamespaceSummariesList.parse(map['Namespaces']) unless map['Namespaces'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class NamespaceSummariesList
      def self.parse(list)
        list.map do |value|
          Parsers::NamespaceSummary.parse(value) unless value.nil?
        end
      end
    end

    class NamespaceSummary
      def self.parse(map)
        data = Types::NamespaceSummary.new
        data.id = map['Id']
        data.arn = map['Arn']
        data.name = map['Name']
        data.type = map['Type']
        data.description = map['Description']
        data.service_count = map['ServiceCount']
        data.properties = (Parsers::NamespaceProperties.parse(map['Properties']) unless map['Properties'].nil?)
        data.create_date = Time.at(map['CreateDate'].to_i) if map['CreateDate']
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
        data.operations = (Parsers::OperationSummaryList.parse(map['Operations']) unless map['Operations'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class OperationSummaryList
      def self.parse(list)
        list.map do |value|
          Parsers::OperationSummary.parse(value) unless value.nil?
        end
      end
    end

    class OperationSummary
      def self.parse(map)
        data = Types::OperationSummary.new
        data.id = map['Id']
        data.status = map['Status']
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
        data.services = (Parsers::ServiceSummariesList.parse(map['Services']) unless map['Services'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ServiceSummariesList
      def self.parse(list)
        list.map do |value|
          Parsers::ServiceSummary.parse(value) unless value.nil?
        end
      end
    end

    class ServiceSummary
      def self.parse(map)
        data = Types::ServiceSummary.new
        data.id = map['Id']
        data.arn = map['Arn']
        data.name = map['Name']
        data.type = map['Type']
        data.description = map['Description']
        data.instance_count = map['InstanceCount']
        data.dns_config = (Parsers::DnsConfig.parse(map['DnsConfig']) unless map['DnsConfig'].nil?)
        data.health_check_config = (Parsers::HealthCheckConfig.parse(map['HealthCheckConfig']) unless map['HealthCheckConfig'].nil?)
        data.health_check_custom_config = (Parsers::HealthCheckCustomConfig.parse(map['HealthCheckCustomConfig']) unless map['HealthCheckCustomConfig'].nil?)
        data.create_date = Time.at(map['CreateDate'].to_i) if map['CreateDate']
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
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    class TagList
      def self.parse(list)
        list.map do |value|
          Parsers::Tag.parse(value) unless value.nil?
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

    # Operation Parser for RegisterInstance
    class RegisterInstance
      def self.parse(http_resp)
        data = Types::RegisterInstanceOutput.new
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

    # Operation Parser for UpdateHttpNamespace
    class UpdateHttpNamespace
      def self.parse(http_resp)
        data = Types::UpdateHttpNamespaceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operation_id = map['OperationId']
        data
      end
    end

    # Operation Parser for UpdateInstanceCustomHealthStatus
    class UpdateInstanceCustomHealthStatus
      def self.parse(http_resp)
        data = Types::UpdateInstanceCustomHealthStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for CustomHealthNotFound
    class CustomHealthNotFound
      def self.parse(http_resp)
        data = Types::CustomHealthNotFound.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for UpdatePrivateDnsNamespace
    class UpdatePrivateDnsNamespace
      def self.parse(http_resp)
        data = Types::UpdatePrivateDnsNamespaceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operation_id = map['OperationId']
        data
      end
    end

    # Operation Parser for UpdatePublicDnsNamespace
    class UpdatePublicDnsNamespace
      def self.parse(http_resp)
        data = Types::UpdatePublicDnsNamespaceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operation_id = map['OperationId']
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
        data.operation_id = map['OperationId']
        data
      end
    end
  end
end
