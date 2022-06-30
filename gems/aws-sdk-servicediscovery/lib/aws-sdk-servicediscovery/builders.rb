# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::ServiceDiscovery
  module Builders

    # Operation Builder for CreateHttpNamespace
    class CreateHttpNamespace
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53AutoNaming_v20170314.CreateHttpNamespace'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['CreatorRequestId'] = input[:creator_request_id] unless input[:creator_request_id].nil?
        data['Description'] = input[:description] unless input[:description].nil?
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

    # Operation Builder for CreatePrivateDnsNamespace
    class CreatePrivateDnsNamespace
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53AutoNaming_v20170314.CreatePrivateDnsNamespace'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['CreatorRequestId'] = input[:creator_request_id] unless input[:creator_request_id].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Vpc'] = input[:vpc] unless input[:vpc].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['Properties'] = Builders::PrivateDnsNamespaceProperties.build(input[:properties]) unless input[:properties].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for PrivateDnsNamespaceProperties
    class PrivateDnsNamespaceProperties
      def self.build(input)
        data = {}
        data['DnsProperties'] = Builders::PrivateDnsPropertiesMutable.build(input[:dns_properties]) unless input[:dns_properties].nil?
        data
      end
    end

    # Structure Builder for PrivateDnsPropertiesMutable
    class PrivateDnsPropertiesMutable
      def self.build(input)
        data = {}
        data['SOA'] = Builders::SOA.build(input[:soa]) unless input[:soa].nil?
        data
      end
    end

    # Structure Builder for SOA
    class SOA
      def self.build(input)
        data = {}
        data['TTL'] = input[:ttl] unless input[:ttl].nil?
        data
      end
    end

    # Operation Builder for CreatePublicDnsNamespace
    class CreatePublicDnsNamespace
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53AutoNaming_v20170314.CreatePublicDnsNamespace'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['CreatorRequestId'] = input[:creator_request_id] unless input[:creator_request_id].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['Properties'] = Builders::PublicDnsNamespaceProperties.build(input[:properties]) unless input[:properties].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for PublicDnsNamespaceProperties
    class PublicDnsNamespaceProperties
      def self.build(input)
        data = {}
        data['DnsProperties'] = Builders::PublicDnsPropertiesMutable.build(input[:dns_properties]) unless input[:dns_properties].nil?
        data
      end
    end

    # Structure Builder for PublicDnsPropertiesMutable
    class PublicDnsPropertiesMutable
      def self.build(input)
        data = {}
        data['SOA'] = Builders::SOA.build(input[:soa]) unless input[:soa].nil?
        data
      end
    end

    # Operation Builder for CreateService
    class CreateService
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53AutoNaming_v20170314.CreateService'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['NamespaceId'] = input[:namespace_id] unless input[:namespace_id].nil?
        data['CreatorRequestId'] = input[:creator_request_id] unless input[:creator_request_id].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['DnsConfig'] = Builders::DnsConfig.build(input[:dns_config]) unless input[:dns_config].nil?
        data['HealthCheckConfig'] = Builders::HealthCheckConfig.build(input[:health_check_config]) unless input[:health_check_config].nil?
        data['HealthCheckCustomConfig'] = Builders::HealthCheckCustomConfig.build(input[:health_check_custom_config]) unless input[:health_check_custom_config].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for HealthCheckCustomConfig
    class HealthCheckCustomConfig
      def self.build(input)
        data = {}
        data['FailureThreshold'] = input[:failure_threshold] unless input[:failure_threshold].nil?
        data
      end
    end

    # Structure Builder for HealthCheckConfig
    class HealthCheckConfig
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data['ResourcePath'] = input[:resource_path] unless input[:resource_path].nil?
        data['FailureThreshold'] = input[:failure_threshold] unless input[:failure_threshold].nil?
        data
      end
    end

    # Structure Builder for DnsConfig
    class DnsConfig
      def self.build(input)
        data = {}
        data['NamespaceId'] = input[:namespace_id] unless input[:namespace_id].nil?
        data['RoutingPolicy'] = input[:routing_policy] unless input[:routing_policy].nil?
        data['DnsRecords'] = Builders::DnsRecordList.build(input[:dns_records]) unless input[:dns_records].nil?
        data
      end
    end

    # List Builder for DnsRecordList
    class DnsRecordList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::DnsRecord.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DnsRecord
    class DnsRecord
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data['TTL'] = input[:ttl] unless input[:ttl].nil?
        data
      end
    end

    # Operation Builder for DeleteNamespace
    class DeleteNamespace
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53AutoNaming_v20170314.DeleteNamespace'
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteService
    class DeleteService
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53AutoNaming_v20170314.DeleteService'
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeregisterInstance
    class DeregisterInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53AutoNaming_v20170314.DeregisterInstance'
        data = {}
        data['ServiceId'] = input[:service_id] unless input[:service_id].nil?
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DiscoverInstances
    class DiscoverInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53AutoNaming_v20170314.DiscoverInstances'
        data = {}
        data['NamespaceName'] = input[:namespace_name] unless input[:namespace_name].nil?
        data['ServiceName'] = input[:service_name] unless input[:service_name].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['QueryParameters'] = Builders::Attributes.build(input[:query_parameters]) unless input[:query_parameters].nil?
        data['OptionalParameters'] = Builders::Attributes.build(input[:optional_parameters]) unless input[:optional_parameters].nil?
        data['HealthStatus'] = input[:health_status] unless input[:health_status].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for Attributes
    class Attributes
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for GetInstance
    class GetInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53AutoNaming_v20170314.GetInstance'
        data = {}
        data['ServiceId'] = input[:service_id] unless input[:service_id].nil?
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetInstancesHealthStatus
    class GetInstancesHealthStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53AutoNaming_v20170314.GetInstancesHealthStatus'
        data = {}
        data['ServiceId'] = input[:service_id] unless input[:service_id].nil?
        data['Instances'] = Builders::InstanceIdList.build(input[:instances]) unless input[:instances].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for InstanceIdList
    class InstanceIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for GetNamespace
    class GetNamespace
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53AutoNaming_v20170314.GetNamespace'
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetOperation
    class GetOperation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53AutoNaming_v20170314.GetOperation'
        data = {}
        data['OperationId'] = input[:operation_id] unless input[:operation_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetService
    class GetService
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53AutoNaming_v20170314.GetService'
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListInstances
    class ListInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53AutoNaming_v20170314.ListInstances'
        data = {}
        data['ServiceId'] = input[:service_id] unless input[:service_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListNamespaces
    class ListNamespaces
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53AutoNaming_v20170314.ListNamespaces'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['Filters'] = Builders::NamespaceFilters.build(input[:filters]) unless input[:filters].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for NamespaceFilters
    class NamespaceFilters
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::NamespaceFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for NamespaceFilter
    class NamespaceFilter
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Values'] = Builders::FilterValues.build(input[:values]) unless input[:values].nil?
        data['Condition'] = input[:condition] unless input[:condition].nil?
        data
      end
    end

    # List Builder for FilterValues
    class FilterValues
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListOperations
    class ListOperations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53AutoNaming_v20170314.ListOperations'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['Filters'] = Builders::OperationFilters.build(input[:filters]) unless input[:filters].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for OperationFilters
    class OperationFilters
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::OperationFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for OperationFilter
    class OperationFilter
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Values'] = Builders::FilterValues.build(input[:values]) unless input[:values].nil?
        data['Condition'] = input[:condition] unless input[:condition].nil?
        data
      end
    end

    # Operation Builder for ListServices
    class ListServices
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53AutoNaming_v20170314.ListServices'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['Filters'] = Builders::ServiceFilters.build(input[:filters]) unless input[:filters].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ServiceFilters
    class ServiceFilters
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ServiceFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ServiceFilter
    class ServiceFilter
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Values'] = Builders::FilterValues.build(input[:values]) unless input[:values].nil?
        data['Condition'] = input[:condition] unless input[:condition].nil?
        data
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53AutoNaming_v20170314.ListTagsForResource'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RegisterInstance
    class RegisterInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53AutoNaming_v20170314.RegisterInstance'
        data = {}
        data['ServiceId'] = input[:service_id] unless input[:service_id].nil?
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        data['CreatorRequestId'] = input[:creator_request_id] unless input[:creator_request_id].nil?
        data['Attributes'] = Builders::Attributes.build(input[:attributes]) unless input[:attributes].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53AutoNaming_v20170314.TagResource'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53AutoNaming_v20170314.UntagResource'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
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

    # Operation Builder for UpdateHttpNamespace
    class UpdateHttpNamespace
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53AutoNaming_v20170314.UpdateHttpNamespace'
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        data['UpdaterRequestId'] = input[:updater_request_id] unless input[:updater_request_id].nil?
        data['Namespace'] = Builders::HttpNamespaceChange.build(input[:namespace]) unless input[:namespace].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for HttpNamespaceChange
    class HttpNamespaceChange
      def self.build(input)
        data = {}
        data['Description'] = input[:description] unless input[:description].nil?
        data
      end
    end

    # Operation Builder for UpdateInstanceCustomHealthStatus
    class UpdateInstanceCustomHealthStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53AutoNaming_v20170314.UpdateInstanceCustomHealthStatus'
        data = {}
        data['ServiceId'] = input[:service_id] unless input[:service_id].nil?
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdatePrivateDnsNamespace
    class UpdatePrivateDnsNamespace
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53AutoNaming_v20170314.UpdatePrivateDnsNamespace'
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        data['UpdaterRequestId'] = input[:updater_request_id] unless input[:updater_request_id].nil?
        data['Namespace'] = Builders::PrivateDnsNamespaceChange.build(input[:namespace]) unless input[:namespace].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for PrivateDnsNamespaceChange
    class PrivateDnsNamespaceChange
      def self.build(input)
        data = {}
        data['Description'] = input[:description] unless input[:description].nil?
        data['Properties'] = Builders::PrivateDnsNamespacePropertiesChange.build(input[:properties]) unless input[:properties].nil?
        data
      end
    end

    # Structure Builder for PrivateDnsNamespacePropertiesChange
    class PrivateDnsNamespacePropertiesChange
      def self.build(input)
        data = {}
        data['DnsProperties'] = Builders::PrivateDnsPropertiesMutableChange.build(input[:dns_properties]) unless input[:dns_properties].nil?
        data
      end
    end

    # Structure Builder for PrivateDnsPropertiesMutableChange
    class PrivateDnsPropertiesMutableChange
      def self.build(input)
        data = {}
        data['SOA'] = Builders::SOAChange.build(input[:soa]) unless input[:soa].nil?
        data
      end
    end

    # Structure Builder for SOAChange
    class SOAChange
      def self.build(input)
        data = {}
        data['TTL'] = input[:ttl] unless input[:ttl].nil?
        data
      end
    end

    # Operation Builder for UpdatePublicDnsNamespace
    class UpdatePublicDnsNamespace
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53AutoNaming_v20170314.UpdatePublicDnsNamespace'
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        data['UpdaterRequestId'] = input[:updater_request_id] unless input[:updater_request_id].nil?
        data['Namespace'] = Builders::PublicDnsNamespaceChange.build(input[:namespace]) unless input[:namespace].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for PublicDnsNamespaceChange
    class PublicDnsNamespaceChange
      def self.build(input)
        data = {}
        data['Description'] = input[:description] unless input[:description].nil?
        data['Properties'] = Builders::PublicDnsNamespacePropertiesChange.build(input[:properties]) unless input[:properties].nil?
        data
      end
    end

    # Structure Builder for PublicDnsNamespacePropertiesChange
    class PublicDnsNamespacePropertiesChange
      def self.build(input)
        data = {}
        data['DnsProperties'] = Builders::PublicDnsPropertiesMutableChange.build(input[:dns_properties]) unless input[:dns_properties].nil?
        data
      end
    end

    # Structure Builder for PublicDnsPropertiesMutableChange
    class PublicDnsPropertiesMutableChange
      def self.build(input)
        data = {}
        data['SOA'] = Builders::SOAChange.build(input[:soa]) unless input[:soa].nil?
        data
      end
    end

    # Operation Builder for UpdateService
    class UpdateService
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53AutoNaming_v20170314.UpdateService'
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        data['Service'] = Builders::ServiceChange.build(input[:service]) unless input[:service].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ServiceChange
    class ServiceChange
      def self.build(input)
        data = {}
        data['Description'] = input[:description] unless input[:description].nil?
        data['DnsConfig'] = Builders::DnsConfigChange.build(input[:dns_config]) unless input[:dns_config].nil?
        data['HealthCheckConfig'] = Builders::HealthCheckConfig.build(input[:health_check_config]) unless input[:health_check_config].nil?
        data
      end
    end

    # Structure Builder for DnsConfigChange
    class DnsConfigChange
      def self.build(input)
        data = {}
        data['DnsRecords'] = Builders::DnsRecordList.build(input[:dns_records]) unless input[:dns_records].nil?
        data
      end
    end
  end
end
