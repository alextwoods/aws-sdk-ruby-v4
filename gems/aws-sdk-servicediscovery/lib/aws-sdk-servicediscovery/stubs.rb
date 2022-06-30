# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ServiceDiscovery
  module Stubs

    # Operation Stubber for CreateHttpNamespace
    class CreateHttpNamespace
      def self.default(visited=[])
        {
          operation_id: 'operation_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OperationId'] = stub[:operation_id] unless stub[:operation_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreatePrivateDnsNamespace
    class CreatePrivateDnsNamespace
      def self.default(visited=[])
        {
          operation_id: 'operation_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OperationId'] = stub[:operation_id] unless stub[:operation_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreatePublicDnsNamespace
    class CreatePublicDnsNamespace
      def self.default(visited=[])
        {
          operation_id: 'operation_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OperationId'] = stub[:operation_id] unless stub[:operation_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateService
    class CreateService
      def self.default(visited=[])
        {
          service: Stubs::Service.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Service'] = Stubs::Service.stub(stub[:service]) unless stub[:service].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Service
    class Service
      def self.default(visited=[])
        return nil if visited.include?('Service')
        visited = visited + ['Service']
        {
          id: 'id',
          arn: 'arn',
          name: 'name',
          namespace_id: 'namespace_id',
          description: 'description',
          instance_count: 1,
          dns_config: Stubs::DnsConfig.default(visited),
          type: 'type',
          health_check_config: Stubs::HealthCheckConfig.default(visited),
          health_check_custom_config: Stubs::HealthCheckCustomConfig.default(visited),
          create_date: Time.now,
          creator_request_id: 'creator_request_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::Service.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['NamespaceId'] = stub[:namespace_id] unless stub[:namespace_id].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['InstanceCount'] = stub[:instance_count] unless stub[:instance_count].nil?
        data['DnsConfig'] = Stubs::DnsConfig.stub(stub[:dns_config]) unless stub[:dns_config].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['HealthCheckConfig'] = Stubs::HealthCheckConfig.stub(stub[:health_check_config]) unless stub[:health_check_config].nil?
        data['HealthCheckCustomConfig'] = Stubs::HealthCheckCustomConfig.stub(stub[:health_check_custom_config]) unless stub[:health_check_custom_config].nil?
        data['CreateDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:create_date]).to_i unless stub[:create_date].nil?
        data['CreatorRequestId'] = stub[:creator_request_id] unless stub[:creator_request_id].nil?
        data
      end
    end

    # Structure Stubber for HealthCheckCustomConfig
    class HealthCheckCustomConfig
      def self.default(visited=[])
        return nil if visited.include?('HealthCheckCustomConfig')
        visited = visited + ['HealthCheckCustomConfig']
        {
          failure_threshold: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::HealthCheckCustomConfig.new
        data = {}
        data['FailureThreshold'] = stub[:failure_threshold] unless stub[:failure_threshold].nil?
        data
      end
    end

    # Structure Stubber for HealthCheckConfig
    class HealthCheckConfig
      def self.default(visited=[])
        return nil if visited.include?('HealthCheckConfig')
        visited = visited + ['HealthCheckConfig']
        {
          type: 'type',
          resource_path: 'resource_path',
          failure_threshold: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::HealthCheckConfig.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['ResourcePath'] = stub[:resource_path] unless stub[:resource_path].nil?
        data['FailureThreshold'] = stub[:failure_threshold] unless stub[:failure_threshold].nil?
        data
      end
    end

    # Structure Stubber for DnsConfig
    class DnsConfig
      def self.default(visited=[])
        return nil if visited.include?('DnsConfig')
        visited = visited + ['DnsConfig']
        {
          namespace_id: 'namespace_id',
          routing_policy: 'routing_policy',
          dns_records: Stubs::DnsRecordList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DnsConfig.new
        data = {}
        data['NamespaceId'] = stub[:namespace_id] unless stub[:namespace_id].nil?
        data['RoutingPolicy'] = stub[:routing_policy] unless stub[:routing_policy].nil?
        data['DnsRecords'] = Stubs::DnsRecordList.stub(stub[:dns_records]) unless stub[:dns_records].nil?
        data
      end
    end

    # List Stubber for DnsRecordList
    class DnsRecordList
      def self.default(visited=[])
        return nil if visited.include?('DnsRecordList')
        visited = visited + ['DnsRecordList']
        [
          Stubs::DnsRecord.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DnsRecord.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DnsRecord
    class DnsRecord
      def self.default(visited=[])
        return nil if visited.include?('DnsRecord')
        visited = visited + ['DnsRecord']
        {
          type: 'type',
          ttl: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::DnsRecord.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['TTL'] = stub[:ttl] unless stub[:ttl].nil?
        data
      end
    end

    # Operation Stubber for DeleteNamespace
    class DeleteNamespace
      def self.default(visited=[])
        {
          operation_id: 'operation_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OperationId'] = stub[:operation_id] unless stub[:operation_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteService
    class DeleteService
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeregisterInstance
    class DeregisterInstance
      def self.default(visited=[])
        {
          operation_id: 'operation_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OperationId'] = stub[:operation_id] unless stub[:operation_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DiscoverInstances
    class DiscoverInstances
      def self.default(visited=[])
        {
          instances: Stubs::HttpInstanceSummaryList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Instances'] = Stubs::HttpInstanceSummaryList.stub(stub[:instances]) unless stub[:instances].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for HttpInstanceSummaryList
    class HttpInstanceSummaryList
      def self.default(visited=[])
        return nil if visited.include?('HttpInstanceSummaryList')
        visited = visited + ['HttpInstanceSummaryList']
        [
          Stubs::HttpInstanceSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::HttpInstanceSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for HttpInstanceSummary
    class HttpInstanceSummary
      def self.default(visited=[])
        return nil if visited.include?('HttpInstanceSummary')
        visited = visited + ['HttpInstanceSummary']
        {
          instance_id: 'instance_id',
          namespace_name: 'namespace_name',
          service_name: 'service_name',
          health_status: 'health_status',
          attributes: Stubs::Attributes.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HttpInstanceSummary.new
        data = {}
        data['InstanceId'] = stub[:instance_id] unless stub[:instance_id].nil?
        data['NamespaceName'] = stub[:namespace_name] unless stub[:namespace_name].nil?
        data['ServiceName'] = stub[:service_name] unless stub[:service_name].nil?
        data['HealthStatus'] = stub[:health_status] unless stub[:health_status].nil?
        data['Attributes'] = Stubs::Attributes.stub(stub[:attributes]) unless stub[:attributes].nil?
        data
      end
    end

    # Map Stubber for Attributes
    class Attributes
      def self.default(visited=[])
        return nil if visited.include?('Attributes')
        visited = visited + ['Attributes']
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

    # Operation Stubber for GetInstance
    class GetInstance
      def self.default(visited=[])
        {
          instance: Stubs::Instance.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Instance'] = Stubs::Instance.stub(stub[:instance]) unless stub[:instance].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Instance
    class Instance
      def self.default(visited=[])
        return nil if visited.include?('Instance')
        visited = visited + ['Instance']
        {
          id: 'id',
          creator_request_id: 'creator_request_id',
          attributes: Stubs::Attributes.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Instance.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['CreatorRequestId'] = stub[:creator_request_id] unless stub[:creator_request_id].nil?
        data['Attributes'] = Stubs::Attributes.stub(stub[:attributes]) unless stub[:attributes].nil?
        data
      end
    end

    # Operation Stubber for GetInstancesHealthStatus
    class GetInstancesHealthStatus
      def self.default(visited=[])
        {
          status: Stubs::InstanceHealthStatusMap.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Status'] = Stubs::InstanceHealthStatusMap.stub(stub[:status]) unless stub[:status].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Map Stubber for InstanceHealthStatusMap
    class InstanceHealthStatusMap
      def self.default(visited=[])
        return nil if visited.include?('InstanceHealthStatusMap')
        visited = visited + ['InstanceHealthStatusMap']
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

    # Operation Stubber for GetNamespace
    class GetNamespace
      def self.default(visited=[])
        {
          namespace: Stubs::Namespace.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Namespace'] = Stubs::Namespace.stub(stub[:namespace]) unless stub[:namespace].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Namespace
    class Namespace
      def self.default(visited=[])
        return nil if visited.include?('Namespace')
        visited = visited + ['Namespace']
        {
          id: 'id',
          arn: 'arn',
          name: 'name',
          type: 'type',
          description: 'description',
          service_count: 1,
          properties: Stubs::NamespaceProperties.default(visited),
          create_date: Time.now,
          creator_request_id: 'creator_request_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::Namespace.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['ServiceCount'] = stub[:service_count] unless stub[:service_count].nil?
        data['Properties'] = Stubs::NamespaceProperties.stub(stub[:properties]) unless stub[:properties].nil?
        data['CreateDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:create_date]).to_i unless stub[:create_date].nil?
        data['CreatorRequestId'] = stub[:creator_request_id] unless stub[:creator_request_id].nil?
        data
      end
    end

    # Structure Stubber for NamespaceProperties
    class NamespaceProperties
      def self.default(visited=[])
        return nil if visited.include?('NamespaceProperties')
        visited = visited + ['NamespaceProperties']
        {
          dns_properties: Stubs::DnsProperties.default(visited),
          http_properties: Stubs::HttpProperties.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::NamespaceProperties.new
        data = {}
        data['DnsProperties'] = Stubs::DnsProperties.stub(stub[:dns_properties]) unless stub[:dns_properties].nil?
        data['HttpProperties'] = Stubs::HttpProperties.stub(stub[:http_properties]) unless stub[:http_properties].nil?
        data
      end
    end

    # Structure Stubber for HttpProperties
    class HttpProperties
      def self.default(visited=[])
        return nil if visited.include?('HttpProperties')
        visited = visited + ['HttpProperties']
        {
          http_name: 'http_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::HttpProperties.new
        data = {}
        data['HttpName'] = stub[:http_name] unless stub[:http_name].nil?
        data
      end
    end

    # Structure Stubber for DnsProperties
    class DnsProperties
      def self.default(visited=[])
        return nil if visited.include?('DnsProperties')
        visited = visited + ['DnsProperties']
        {
          hosted_zone_id: 'hosted_zone_id',
          soa: Stubs::SOA.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DnsProperties.new
        data = {}
        data['HostedZoneId'] = stub[:hosted_zone_id] unless stub[:hosted_zone_id].nil?
        data['SOA'] = Stubs::SOA.stub(stub[:soa]) unless stub[:soa].nil?
        data
      end
    end

    # Structure Stubber for SOA
    class SOA
      def self.default(visited=[])
        return nil if visited.include?('SOA')
        visited = visited + ['SOA']
        {
          ttl: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::SOA.new
        data = {}
        data['TTL'] = stub[:ttl] unless stub[:ttl].nil?
        data
      end
    end

    # Operation Stubber for GetOperation
    class GetOperation
      def self.default(visited=[])
        {
          operation: Stubs::Operation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Operation'] = Stubs::Operation.stub(stub[:operation]) unless stub[:operation].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Operation
    class Operation
      def self.default(visited=[])
        return nil if visited.include?('Operation')
        visited = visited + ['Operation']
        {
          id: 'id',
          type: 'type',
          status: 'status',
          error_message: 'error_message',
          error_code: 'error_code',
          create_date: Time.now,
          update_date: Time.now,
          targets: Stubs::OperationTargetsMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Operation.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['CreateDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:create_date]).to_i unless stub[:create_date].nil?
        data['UpdateDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:update_date]).to_i unless stub[:update_date].nil?
        data['Targets'] = Stubs::OperationTargetsMap.stub(stub[:targets]) unless stub[:targets].nil?
        data
      end
    end

    # Map Stubber for OperationTargetsMap
    class OperationTargetsMap
      def self.default(visited=[])
        return nil if visited.include?('OperationTargetsMap')
        visited = visited + ['OperationTargetsMap']
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

    # Operation Stubber for GetService
    class GetService
      def self.default(visited=[])
        {
          service: Stubs::Service.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Service'] = Stubs::Service.stub(stub[:service]) unless stub[:service].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListInstances
    class ListInstances
      def self.default(visited=[])
        {
          instances: Stubs::InstanceSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Instances'] = Stubs::InstanceSummaryList.stub(stub[:instances]) unless stub[:instances].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for InstanceSummaryList
    class InstanceSummaryList
      def self.default(visited=[])
        return nil if visited.include?('InstanceSummaryList')
        visited = visited + ['InstanceSummaryList']
        [
          Stubs::InstanceSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::InstanceSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InstanceSummary
    class InstanceSummary
      def self.default(visited=[])
        return nil if visited.include?('InstanceSummary')
        visited = visited + ['InstanceSummary']
        {
          id: 'id',
          attributes: Stubs::Attributes.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceSummary.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Attributes'] = Stubs::Attributes.stub(stub[:attributes]) unless stub[:attributes].nil?
        data
      end
    end

    # Operation Stubber for ListNamespaces
    class ListNamespaces
      def self.default(visited=[])
        {
          namespaces: Stubs::NamespaceSummariesList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Namespaces'] = Stubs::NamespaceSummariesList.stub(stub[:namespaces]) unless stub[:namespaces].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for NamespaceSummariesList
    class NamespaceSummariesList
      def self.default(visited=[])
        return nil if visited.include?('NamespaceSummariesList')
        visited = visited + ['NamespaceSummariesList']
        [
          Stubs::NamespaceSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::NamespaceSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for NamespaceSummary
    class NamespaceSummary
      def self.default(visited=[])
        return nil if visited.include?('NamespaceSummary')
        visited = visited + ['NamespaceSummary']
        {
          id: 'id',
          arn: 'arn',
          name: 'name',
          type: 'type',
          description: 'description',
          service_count: 1,
          properties: Stubs::NamespaceProperties.default(visited),
          create_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::NamespaceSummary.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['ServiceCount'] = stub[:service_count] unless stub[:service_count].nil?
        data['Properties'] = Stubs::NamespaceProperties.stub(stub[:properties]) unless stub[:properties].nil?
        data['CreateDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:create_date]).to_i unless stub[:create_date].nil?
        data
      end
    end

    # Operation Stubber for ListOperations
    class ListOperations
      def self.default(visited=[])
        {
          operations: Stubs::OperationSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Operations'] = Stubs::OperationSummaryList.stub(stub[:operations]) unless stub[:operations].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for OperationSummaryList
    class OperationSummaryList
      def self.default(visited=[])
        return nil if visited.include?('OperationSummaryList')
        visited = visited + ['OperationSummaryList']
        [
          Stubs::OperationSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::OperationSummary.stub(element) unless element.nil?
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
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::OperationSummary.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Operation Stubber for ListServices
    class ListServices
      def self.default(visited=[])
        {
          services: Stubs::ServiceSummariesList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Services'] = Stubs::ServiceSummariesList.stub(stub[:services]) unless stub[:services].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ServiceSummariesList
    class ServiceSummariesList
      def self.default(visited=[])
        return nil if visited.include?('ServiceSummariesList')
        visited = visited + ['ServiceSummariesList']
        [
          Stubs::ServiceSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ServiceSummary.stub(element) unless element.nil?
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
          id: 'id',
          arn: 'arn',
          name: 'name',
          type: 'type',
          description: 'description',
          instance_count: 1,
          dns_config: Stubs::DnsConfig.default(visited),
          health_check_config: Stubs::HealthCheckConfig.default(visited),
          health_check_custom_config: Stubs::HealthCheckCustomConfig.default(visited),
          create_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ServiceSummary.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['InstanceCount'] = stub[:instance_count] unless stub[:instance_count].nil?
        data['DnsConfig'] = Stubs::DnsConfig.stub(stub[:dns_config]) unless stub[:dns_config].nil?
        data['HealthCheckConfig'] = Stubs::HealthCheckConfig.stub(stub[:health_check_config]) unless stub[:health_check_config].nil?
        data['HealthCheckCustomConfig'] = Stubs::HealthCheckCustomConfig.stub(stub[:health_check_custom_config]) unless stub[:health_check_custom_config].nil?
        data['CreateDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:create_date]).to_i unless stub[:create_date].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Stubs::Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Tag.stub(element) unless element.nil?
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

    # Operation Stubber for RegisterInstance
    class RegisterInstance
      def self.default(visited=[])
        {
          operation_id: 'operation_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OperationId'] = stub[:operation_id] unless stub[:operation_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateHttpNamespace
    class UpdateHttpNamespace
      def self.default(visited=[])
        {
          operation_id: 'operation_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OperationId'] = stub[:operation_id] unless stub[:operation_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateInstanceCustomHealthStatus
    class UpdateInstanceCustomHealthStatus
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdatePrivateDnsNamespace
    class UpdatePrivateDnsNamespace
      def self.default(visited=[])
        {
          operation_id: 'operation_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OperationId'] = stub[:operation_id] unless stub[:operation_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdatePublicDnsNamespace
    class UpdatePublicDnsNamespace
      def self.default(visited=[])
        {
          operation_id: 'operation_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OperationId'] = stub[:operation_id] unless stub[:operation_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateService
    class UpdateService
      def self.default(visited=[])
        {
          operation_id: 'operation_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OperationId'] = stub[:operation_id] unless stub[:operation_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
