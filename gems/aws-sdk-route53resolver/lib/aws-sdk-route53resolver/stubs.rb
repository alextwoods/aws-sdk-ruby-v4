# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::Route53Resolver
  module Stubs

    # Operation Stubber for AssociateFirewallRuleGroup
    class AssociateFirewallRuleGroup
      def self.default(visited=[])
        {
          firewall_rule_group_association: FirewallRuleGroupAssociation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FirewallRuleGroupAssociation'] = FirewallRuleGroupAssociation.stub(stub[:firewall_rule_group_association]) unless stub[:firewall_rule_group_association].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for FirewallRuleGroupAssociation
    class FirewallRuleGroupAssociation
      def self.default(visited=[])
        return nil if visited.include?('FirewallRuleGroupAssociation')
        visited = visited + ['FirewallRuleGroupAssociation']
        {
          id: 'id',
          arn: 'arn',
          firewall_rule_group_id: 'firewall_rule_group_id',
          vpc_id: 'vpc_id',
          name: 'name',
          priority: 1,
          mutation_protection: 'mutation_protection',
          managed_owner_name: 'managed_owner_name',
          status: 'status',
          status_message: 'status_message',
          creator_request_id: 'creator_request_id',
          creation_time: 'creation_time',
          modification_time: 'modification_time',
        }
      end

      def self.stub(stub)
        stub ||= Types::FirewallRuleGroupAssociation.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['FirewallRuleGroupId'] = stub[:firewall_rule_group_id] unless stub[:firewall_rule_group_id].nil?
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Priority'] = stub[:priority] unless stub[:priority].nil?
        data['MutationProtection'] = stub[:mutation_protection] unless stub[:mutation_protection].nil?
        data['ManagedOwnerName'] = stub[:managed_owner_name] unless stub[:managed_owner_name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['CreatorRequestId'] = stub[:creator_request_id] unless stub[:creator_request_id].nil?
        data['CreationTime'] = stub[:creation_time] unless stub[:creation_time].nil?
        data['ModificationTime'] = stub[:modification_time] unless stub[:modification_time].nil?
        data
      end
    end

    # Operation Stubber for AssociateResolverEndpointIpAddress
    class AssociateResolverEndpointIpAddress
      def self.default(visited=[])
        {
          resolver_endpoint: ResolverEndpoint.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResolverEndpoint'] = ResolverEndpoint.stub(stub[:resolver_endpoint]) unless stub[:resolver_endpoint].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ResolverEndpoint
    class ResolverEndpoint
      def self.default(visited=[])
        return nil if visited.include?('ResolverEndpoint')
        visited = visited + ['ResolverEndpoint']
        {
          id: 'id',
          creator_request_id: 'creator_request_id',
          arn: 'arn',
          name: 'name',
          security_group_ids: SecurityGroupIds.default(visited),
          direction: 'direction',
          ip_address_count: 1,
          host_vpc_id: 'host_vpc_id',
          status: 'status',
          status_message: 'status_message',
          creation_time: 'creation_time',
          modification_time: 'modification_time',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResolverEndpoint.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['CreatorRequestId'] = stub[:creator_request_id] unless stub[:creator_request_id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['SecurityGroupIds'] = SecurityGroupIds.stub(stub[:security_group_ids]) unless stub[:security_group_ids].nil?
        data['Direction'] = stub[:direction] unless stub[:direction].nil?
        data['IpAddressCount'] = stub[:ip_address_count] unless stub[:ip_address_count].nil?
        data['HostVPCId'] = stub[:host_vpc_id] unless stub[:host_vpc_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['CreationTime'] = stub[:creation_time] unless stub[:creation_time].nil?
        data['ModificationTime'] = stub[:modification_time] unless stub[:modification_time].nil?
        data
      end
    end

    # List Stubber for SecurityGroupIds
    class SecurityGroupIds
      def self.default(visited=[])
        return nil if visited.include?('SecurityGroupIds')
        visited = visited + ['SecurityGroupIds']
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

    # Operation Stubber for AssociateResolverQueryLogConfig
    class AssociateResolverQueryLogConfig
      def self.default(visited=[])
        {
          resolver_query_log_config_association: ResolverQueryLogConfigAssociation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResolverQueryLogConfigAssociation'] = ResolverQueryLogConfigAssociation.stub(stub[:resolver_query_log_config_association]) unless stub[:resolver_query_log_config_association].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ResolverQueryLogConfigAssociation
    class ResolverQueryLogConfigAssociation
      def self.default(visited=[])
        return nil if visited.include?('ResolverQueryLogConfigAssociation')
        visited = visited + ['ResolverQueryLogConfigAssociation']
        {
          id: 'id',
          resolver_query_log_config_id: 'resolver_query_log_config_id',
          resource_id: 'resource_id',
          status: 'status',
          error: 'error',
          error_message: 'error_message',
          creation_time: 'creation_time',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResolverQueryLogConfigAssociation.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['ResolverQueryLogConfigId'] = stub[:resolver_query_log_config_id] unless stub[:resolver_query_log_config_id].nil?
        data['ResourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Error'] = stub[:error] unless stub[:error].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data['CreationTime'] = stub[:creation_time] unless stub[:creation_time].nil?
        data
      end
    end

    # Operation Stubber for AssociateResolverRule
    class AssociateResolverRule
      def self.default(visited=[])
        {
          resolver_rule_association: ResolverRuleAssociation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResolverRuleAssociation'] = ResolverRuleAssociation.stub(stub[:resolver_rule_association]) unless stub[:resolver_rule_association].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ResolverRuleAssociation
    class ResolverRuleAssociation
      def self.default(visited=[])
        return nil if visited.include?('ResolverRuleAssociation')
        visited = visited + ['ResolverRuleAssociation']
        {
          id: 'id',
          resolver_rule_id: 'resolver_rule_id',
          name: 'name',
          vpc_id: 'vpc_id',
          status: 'status',
          status_message: 'status_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResolverRuleAssociation.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['ResolverRuleId'] = stub[:resolver_rule_id] unless stub[:resolver_rule_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['VPCId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data
      end
    end

    # Operation Stubber for CreateFirewallDomainList
    class CreateFirewallDomainList
      def self.default(visited=[])
        {
          firewall_domain_list: FirewallDomainList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FirewallDomainList'] = FirewallDomainList.stub(stub[:firewall_domain_list]) unless stub[:firewall_domain_list].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for FirewallDomainList
    class FirewallDomainList
      def self.default(visited=[])
        return nil if visited.include?('FirewallDomainList')
        visited = visited + ['FirewallDomainList']
        {
          id: 'id',
          arn: 'arn',
          name: 'name',
          domain_count: 1,
          status: 'status',
          status_message: 'status_message',
          managed_owner_name: 'managed_owner_name',
          creator_request_id: 'creator_request_id',
          creation_time: 'creation_time',
          modification_time: 'modification_time',
        }
      end

      def self.stub(stub)
        stub ||= Types::FirewallDomainList.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['DomainCount'] = stub[:domain_count] unless stub[:domain_count].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['ManagedOwnerName'] = stub[:managed_owner_name] unless stub[:managed_owner_name].nil?
        data['CreatorRequestId'] = stub[:creator_request_id] unless stub[:creator_request_id].nil?
        data['CreationTime'] = stub[:creation_time] unless stub[:creation_time].nil?
        data['ModificationTime'] = stub[:modification_time] unless stub[:modification_time].nil?
        data
      end
    end

    # Operation Stubber for CreateFirewallRule
    class CreateFirewallRule
      def self.default(visited=[])
        {
          firewall_rule: FirewallRule.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FirewallRule'] = FirewallRule.stub(stub[:firewall_rule]) unless stub[:firewall_rule].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for FirewallRule
    class FirewallRule
      def self.default(visited=[])
        return nil if visited.include?('FirewallRule')
        visited = visited + ['FirewallRule']
        {
          firewall_rule_group_id: 'firewall_rule_group_id',
          firewall_domain_list_id: 'firewall_domain_list_id',
          name: 'name',
          priority: 1,
          action: 'action',
          block_response: 'block_response',
          block_override_domain: 'block_override_domain',
          block_override_dns_type: 'block_override_dns_type',
          block_override_ttl: 1,
          creator_request_id: 'creator_request_id',
          creation_time: 'creation_time',
          modification_time: 'modification_time',
        }
      end

      def self.stub(stub)
        stub ||= Types::FirewallRule.new
        data = {}
        data['FirewallRuleGroupId'] = stub[:firewall_rule_group_id] unless stub[:firewall_rule_group_id].nil?
        data['FirewallDomainListId'] = stub[:firewall_domain_list_id] unless stub[:firewall_domain_list_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Priority'] = stub[:priority] unless stub[:priority].nil?
        data['Action'] = stub[:action] unless stub[:action].nil?
        data['BlockResponse'] = stub[:block_response] unless stub[:block_response].nil?
        data['BlockOverrideDomain'] = stub[:block_override_domain] unless stub[:block_override_domain].nil?
        data['BlockOverrideDnsType'] = stub[:block_override_dns_type] unless stub[:block_override_dns_type].nil?
        data['BlockOverrideTtl'] = stub[:block_override_ttl] unless stub[:block_override_ttl].nil?
        data['CreatorRequestId'] = stub[:creator_request_id] unless stub[:creator_request_id].nil?
        data['CreationTime'] = stub[:creation_time] unless stub[:creation_time].nil?
        data['ModificationTime'] = stub[:modification_time] unless stub[:modification_time].nil?
        data
      end
    end

    # Operation Stubber for CreateFirewallRuleGroup
    class CreateFirewallRuleGroup
      def self.default(visited=[])
        {
          firewall_rule_group: FirewallRuleGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FirewallRuleGroup'] = FirewallRuleGroup.stub(stub[:firewall_rule_group]) unless stub[:firewall_rule_group].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for FirewallRuleGroup
    class FirewallRuleGroup
      def self.default(visited=[])
        return nil if visited.include?('FirewallRuleGroup')
        visited = visited + ['FirewallRuleGroup']
        {
          id: 'id',
          arn: 'arn',
          name: 'name',
          rule_count: 1,
          status: 'status',
          status_message: 'status_message',
          owner_id: 'owner_id',
          creator_request_id: 'creator_request_id',
          share_status: 'share_status',
          creation_time: 'creation_time',
          modification_time: 'modification_time',
        }
      end

      def self.stub(stub)
        stub ||= Types::FirewallRuleGroup.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['RuleCount'] = stub[:rule_count] unless stub[:rule_count].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['OwnerId'] = stub[:owner_id] unless stub[:owner_id].nil?
        data['CreatorRequestId'] = stub[:creator_request_id] unless stub[:creator_request_id].nil?
        data['ShareStatus'] = stub[:share_status] unless stub[:share_status].nil?
        data['CreationTime'] = stub[:creation_time] unless stub[:creation_time].nil?
        data['ModificationTime'] = stub[:modification_time] unless stub[:modification_time].nil?
        data
      end
    end

    # Operation Stubber for CreateResolverEndpoint
    class CreateResolverEndpoint
      def self.default(visited=[])
        {
          resolver_endpoint: ResolverEndpoint.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResolverEndpoint'] = ResolverEndpoint.stub(stub[:resolver_endpoint]) unless stub[:resolver_endpoint].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateResolverQueryLogConfig
    class CreateResolverQueryLogConfig
      def self.default(visited=[])
        {
          resolver_query_log_config: ResolverQueryLogConfig.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResolverQueryLogConfig'] = ResolverQueryLogConfig.stub(stub[:resolver_query_log_config]) unless stub[:resolver_query_log_config].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ResolverQueryLogConfig
    class ResolverQueryLogConfig
      def self.default(visited=[])
        return nil if visited.include?('ResolverQueryLogConfig')
        visited = visited + ['ResolverQueryLogConfig']
        {
          id: 'id',
          owner_id: 'owner_id',
          status: 'status',
          share_status: 'share_status',
          association_count: 1,
          arn: 'arn',
          name: 'name',
          destination_arn: 'destination_arn',
          creator_request_id: 'creator_request_id',
          creation_time: 'creation_time',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResolverQueryLogConfig.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['OwnerId'] = stub[:owner_id] unless stub[:owner_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['ShareStatus'] = stub[:share_status] unless stub[:share_status].nil?
        data['AssociationCount'] = stub[:association_count] unless stub[:association_count].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['DestinationArn'] = stub[:destination_arn] unless stub[:destination_arn].nil?
        data['CreatorRequestId'] = stub[:creator_request_id] unless stub[:creator_request_id].nil?
        data['CreationTime'] = stub[:creation_time] unless stub[:creation_time].nil?
        data
      end
    end

    # Operation Stubber for CreateResolverRule
    class CreateResolverRule
      def self.default(visited=[])
        {
          resolver_rule: ResolverRule.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResolverRule'] = ResolverRule.stub(stub[:resolver_rule]) unless stub[:resolver_rule].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ResolverRule
    class ResolverRule
      def self.default(visited=[])
        return nil if visited.include?('ResolverRule')
        visited = visited + ['ResolverRule']
        {
          id: 'id',
          creator_request_id: 'creator_request_id',
          arn: 'arn',
          domain_name: 'domain_name',
          status: 'status',
          status_message: 'status_message',
          rule_type: 'rule_type',
          name: 'name',
          target_ips: TargetList.default(visited),
          resolver_endpoint_id: 'resolver_endpoint_id',
          owner_id: 'owner_id',
          share_status: 'share_status',
          creation_time: 'creation_time',
          modification_time: 'modification_time',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResolverRule.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['CreatorRequestId'] = stub[:creator_request_id] unless stub[:creator_request_id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['DomainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['RuleType'] = stub[:rule_type] unless stub[:rule_type].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['TargetIps'] = TargetList.stub(stub[:target_ips]) unless stub[:target_ips].nil?
        data['ResolverEndpointId'] = stub[:resolver_endpoint_id] unless stub[:resolver_endpoint_id].nil?
        data['OwnerId'] = stub[:owner_id] unless stub[:owner_id].nil?
        data['ShareStatus'] = stub[:share_status] unless stub[:share_status].nil?
        data['CreationTime'] = stub[:creation_time] unless stub[:creation_time].nil?
        data['ModificationTime'] = stub[:modification_time] unless stub[:modification_time].nil?
        data
      end
    end

    # List Stubber for TargetList
    class TargetList
      def self.default(visited=[])
        return nil if visited.include?('TargetList')
        visited = visited + ['TargetList']
        [
          TargetAddress.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << TargetAddress.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TargetAddress
    class TargetAddress
      def self.default(visited=[])
        return nil if visited.include?('TargetAddress')
        visited = visited + ['TargetAddress']
        {
          ip: 'ip',
          port: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::TargetAddress.new
        data = {}
        data['Ip'] = stub[:ip] unless stub[:ip].nil?
        data['Port'] = stub[:port] unless stub[:port].nil?
        data
      end
    end

    # Operation Stubber for DeleteFirewallDomainList
    class DeleteFirewallDomainList
      def self.default(visited=[])
        {
          firewall_domain_list: FirewallDomainList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FirewallDomainList'] = FirewallDomainList.stub(stub[:firewall_domain_list]) unless stub[:firewall_domain_list].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteFirewallRule
    class DeleteFirewallRule
      def self.default(visited=[])
        {
          firewall_rule: FirewallRule.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FirewallRule'] = FirewallRule.stub(stub[:firewall_rule]) unless stub[:firewall_rule].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteFirewallRuleGroup
    class DeleteFirewallRuleGroup
      def self.default(visited=[])
        {
          firewall_rule_group: FirewallRuleGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FirewallRuleGroup'] = FirewallRuleGroup.stub(stub[:firewall_rule_group]) unless stub[:firewall_rule_group].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteResolverEndpoint
    class DeleteResolverEndpoint
      def self.default(visited=[])
        {
          resolver_endpoint: ResolverEndpoint.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResolverEndpoint'] = ResolverEndpoint.stub(stub[:resolver_endpoint]) unless stub[:resolver_endpoint].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteResolverQueryLogConfig
    class DeleteResolverQueryLogConfig
      def self.default(visited=[])
        {
          resolver_query_log_config: ResolverQueryLogConfig.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResolverQueryLogConfig'] = ResolverQueryLogConfig.stub(stub[:resolver_query_log_config]) unless stub[:resolver_query_log_config].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteResolverRule
    class DeleteResolverRule
      def self.default(visited=[])
        {
          resolver_rule: ResolverRule.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResolverRule'] = ResolverRule.stub(stub[:resolver_rule]) unless stub[:resolver_rule].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateFirewallRuleGroup
    class DisassociateFirewallRuleGroup
      def self.default(visited=[])
        {
          firewall_rule_group_association: FirewallRuleGroupAssociation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FirewallRuleGroupAssociation'] = FirewallRuleGroupAssociation.stub(stub[:firewall_rule_group_association]) unless stub[:firewall_rule_group_association].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateResolverEndpointIpAddress
    class DisassociateResolverEndpointIpAddress
      def self.default(visited=[])
        {
          resolver_endpoint: ResolverEndpoint.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResolverEndpoint'] = ResolverEndpoint.stub(stub[:resolver_endpoint]) unless stub[:resolver_endpoint].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateResolverQueryLogConfig
    class DisassociateResolverQueryLogConfig
      def self.default(visited=[])
        {
          resolver_query_log_config_association: ResolverQueryLogConfigAssociation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResolverQueryLogConfigAssociation'] = ResolverQueryLogConfigAssociation.stub(stub[:resolver_query_log_config_association]) unless stub[:resolver_query_log_config_association].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateResolverRule
    class DisassociateResolverRule
      def self.default(visited=[])
        {
          resolver_rule_association: ResolverRuleAssociation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResolverRuleAssociation'] = ResolverRuleAssociation.stub(stub[:resolver_rule_association]) unless stub[:resolver_rule_association].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetFirewallConfig
    class GetFirewallConfig
      def self.default(visited=[])
        {
          firewall_config: FirewallConfig.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FirewallConfig'] = FirewallConfig.stub(stub[:firewall_config]) unless stub[:firewall_config].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for FirewallConfig
    class FirewallConfig
      def self.default(visited=[])
        return nil if visited.include?('FirewallConfig')
        visited = visited + ['FirewallConfig']
        {
          id: 'id',
          resource_id: 'resource_id',
          owner_id: 'owner_id',
          firewall_fail_open: 'firewall_fail_open',
        }
      end

      def self.stub(stub)
        stub ||= Types::FirewallConfig.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['ResourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        data['OwnerId'] = stub[:owner_id] unless stub[:owner_id].nil?
        data['FirewallFailOpen'] = stub[:firewall_fail_open] unless stub[:firewall_fail_open].nil?
        data
      end
    end

    # Operation Stubber for GetFirewallDomainList
    class GetFirewallDomainList
      def self.default(visited=[])
        {
          firewall_domain_list: FirewallDomainList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FirewallDomainList'] = FirewallDomainList.stub(stub[:firewall_domain_list]) unless stub[:firewall_domain_list].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetFirewallRuleGroup
    class GetFirewallRuleGroup
      def self.default(visited=[])
        {
          firewall_rule_group: FirewallRuleGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FirewallRuleGroup'] = FirewallRuleGroup.stub(stub[:firewall_rule_group]) unless stub[:firewall_rule_group].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetFirewallRuleGroupAssociation
    class GetFirewallRuleGroupAssociation
      def self.default(visited=[])
        {
          firewall_rule_group_association: FirewallRuleGroupAssociation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FirewallRuleGroupAssociation'] = FirewallRuleGroupAssociation.stub(stub[:firewall_rule_group_association]) unless stub[:firewall_rule_group_association].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetFirewallRuleGroupPolicy
    class GetFirewallRuleGroupPolicy
      def self.default(visited=[])
        {
          firewall_rule_group_policy: 'firewall_rule_group_policy',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FirewallRuleGroupPolicy'] = stub[:firewall_rule_group_policy] unless stub[:firewall_rule_group_policy].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetResolverConfig
    class GetResolverConfig
      def self.default(visited=[])
        {
          resolver_config: ResolverConfig.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResolverConfig'] = ResolverConfig.stub(stub[:resolver_config]) unless stub[:resolver_config].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ResolverConfig
    class ResolverConfig
      def self.default(visited=[])
        return nil if visited.include?('ResolverConfig')
        visited = visited + ['ResolverConfig']
        {
          id: 'id',
          resource_id: 'resource_id',
          owner_id: 'owner_id',
          autodefined_reverse: 'autodefined_reverse',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResolverConfig.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['ResourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        data['OwnerId'] = stub[:owner_id] unless stub[:owner_id].nil?
        data['AutodefinedReverse'] = stub[:autodefined_reverse] unless stub[:autodefined_reverse].nil?
        data
      end
    end

    # Operation Stubber for GetResolverDnssecConfig
    class GetResolverDnssecConfig
      def self.default(visited=[])
        {
          resolver_dnssec_config: ResolverDnssecConfig.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResolverDNSSECConfig'] = ResolverDnssecConfig.stub(stub[:resolver_dnssec_config]) unless stub[:resolver_dnssec_config].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ResolverDnssecConfig
    class ResolverDnssecConfig
      def self.default(visited=[])
        return nil if visited.include?('ResolverDnssecConfig')
        visited = visited + ['ResolverDnssecConfig']
        {
          id: 'id',
          owner_id: 'owner_id',
          resource_id: 'resource_id',
          validation_status: 'validation_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResolverDnssecConfig.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['OwnerId'] = stub[:owner_id] unless stub[:owner_id].nil?
        data['ResourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        data['ValidationStatus'] = stub[:validation_status] unless stub[:validation_status].nil?
        data
      end
    end

    # Operation Stubber for GetResolverEndpoint
    class GetResolverEndpoint
      def self.default(visited=[])
        {
          resolver_endpoint: ResolverEndpoint.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResolverEndpoint'] = ResolverEndpoint.stub(stub[:resolver_endpoint]) unless stub[:resolver_endpoint].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetResolverQueryLogConfig
    class GetResolverQueryLogConfig
      def self.default(visited=[])
        {
          resolver_query_log_config: ResolverQueryLogConfig.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResolverQueryLogConfig'] = ResolverQueryLogConfig.stub(stub[:resolver_query_log_config]) unless stub[:resolver_query_log_config].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetResolverQueryLogConfigAssociation
    class GetResolverQueryLogConfigAssociation
      def self.default(visited=[])
        {
          resolver_query_log_config_association: ResolverQueryLogConfigAssociation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResolverQueryLogConfigAssociation'] = ResolverQueryLogConfigAssociation.stub(stub[:resolver_query_log_config_association]) unless stub[:resolver_query_log_config_association].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetResolverQueryLogConfigPolicy
    class GetResolverQueryLogConfigPolicy
      def self.default(visited=[])
        {
          resolver_query_log_config_policy: 'resolver_query_log_config_policy',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResolverQueryLogConfigPolicy'] = stub[:resolver_query_log_config_policy] unless stub[:resolver_query_log_config_policy].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetResolverRule
    class GetResolverRule
      def self.default(visited=[])
        {
          resolver_rule: ResolverRule.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResolverRule'] = ResolverRule.stub(stub[:resolver_rule]) unless stub[:resolver_rule].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetResolverRuleAssociation
    class GetResolverRuleAssociation
      def self.default(visited=[])
        {
          resolver_rule_association: ResolverRuleAssociation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResolverRuleAssociation'] = ResolverRuleAssociation.stub(stub[:resolver_rule_association]) unless stub[:resolver_rule_association].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetResolverRulePolicy
    class GetResolverRulePolicy
      def self.default(visited=[])
        {
          resolver_rule_policy: 'resolver_rule_policy',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResolverRulePolicy'] = stub[:resolver_rule_policy] unless stub[:resolver_rule_policy].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ImportFirewallDomains
    class ImportFirewallDomains
      def self.default(visited=[])
        {
          id: 'id',
          name: 'name',
          status: 'status',
          status_message: 'status_message',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListFirewallConfigs
    class ListFirewallConfigs
      def self.default(visited=[])
        {
          next_token: 'next_token',
          firewall_configs: FirewallConfigList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['FirewallConfigs'] = FirewallConfigList.stub(stub[:firewall_configs]) unless stub[:firewall_configs].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for FirewallConfigList
    class FirewallConfigList
      def self.default(visited=[])
        return nil if visited.include?('FirewallConfigList')
        visited = visited + ['FirewallConfigList']
        [
          FirewallConfig.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FirewallConfig.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListFirewallDomainLists
    class ListFirewallDomainLists
      def self.default(visited=[])
        {
          next_token: 'next_token',
          firewall_domain_lists: FirewallDomainListMetadataList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['FirewallDomainLists'] = FirewallDomainListMetadataList.stub(stub[:firewall_domain_lists]) unless stub[:firewall_domain_lists].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for FirewallDomainListMetadataList
    class FirewallDomainListMetadataList
      def self.default(visited=[])
        return nil if visited.include?('FirewallDomainListMetadataList')
        visited = visited + ['FirewallDomainListMetadataList']
        [
          FirewallDomainListMetadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FirewallDomainListMetadata.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FirewallDomainListMetadata
    class FirewallDomainListMetadata
      def self.default(visited=[])
        return nil if visited.include?('FirewallDomainListMetadata')
        visited = visited + ['FirewallDomainListMetadata']
        {
          id: 'id',
          arn: 'arn',
          name: 'name',
          creator_request_id: 'creator_request_id',
          managed_owner_name: 'managed_owner_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::FirewallDomainListMetadata.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['CreatorRequestId'] = stub[:creator_request_id] unless stub[:creator_request_id].nil?
        data['ManagedOwnerName'] = stub[:managed_owner_name] unless stub[:managed_owner_name].nil?
        data
      end
    end

    # Operation Stubber for ListFirewallDomains
    class ListFirewallDomains
      def self.default(visited=[])
        {
          next_token: 'next_token',
          domains: FirewallDomains.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Domains'] = FirewallDomains.stub(stub[:domains]) unless stub[:domains].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for FirewallDomains
    class FirewallDomains
      def self.default(visited=[])
        return nil if visited.include?('FirewallDomains')
        visited = visited + ['FirewallDomains']
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

    # Operation Stubber for ListFirewallRuleGroupAssociations
    class ListFirewallRuleGroupAssociations
      def self.default(visited=[])
        {
          next_token: 'next_token',
          firewall_rule_group_associations: FirewallRuleGroupAssociations.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['FirewallRuleGroupAssociations'] = FirewallRuleGroupAssociations.stub(stub[:firewall_rule_group_associations]) unless stub[:firewall_rule_group_associations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for FirewallRuleGroupAssociations
    class FirewallRuleGroupAssociations
      def self.default(visited=[])
        return nil if visited.include?('FirewallRuleGroupAssociations')
        visited = visited + ['FirewallRuleGroupAssociations']
        [
          FirewallRuleGroupAssociation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FirewallRuleGroupAssociation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListFirewallRuleGroups
    class ListFirewallRuleGroups
      def self.default(visited=[])
        {
          next_token: 'next_token',
          firewall_rule_groups: FirewallRuleGroupMetadataList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['FirewallRuleGroups'] = FirewallRuleGroupMetadataList.stub(stub[:firewall_rule_groups]) unless stub[:firewall_rule_groups].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for FirewallRuleGroupMetadataList
    class FirewallRuleGroupMetadataList
      def self.default(visited=[])
        return nil if visited.include?('FirewallRuleGroupMetadataList')
        visited = visited + ['FirewallRuleGroupMetadataList']
        [
          FirewallRuleGroupMetadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FirewallRuleGroupMetadata.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FirewallRuleGroupMetadata
    class FirewallRuleGroupMetadata
      def self.default(visited=[])
        return nil if visited.include?('FirewallRuleGroupMetadata')
        visited = visited + ['FirewallRuleGroupMetadata']
        {
          id: 'id',
          arn: 'arn',
          name: 'name',
          owner_id: 'owner_id',
          creator_request_id: 'creator_request_id',
          share_status: 'share_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::FirewallRuleGroupMetadata.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['OwnerId'] = stub[:owner_id] unless stub[:owner_id].nil?
        data['CreatorRequestId'] = stub[:creator_request_id] unless stub[:creator_request_id].nil?
        data['ShareStatus'] = stub[:share_status] unless stub[:share_status].nil?
        data
      end
    end

    # Operation Stubber for ListFirewallRules
    class ListFirewallRules
      def self.default(visited=[])
        {
          next_token: 'next_token',
          firewall_rules: FirewallRules.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['FirewallRules'] = FirewallRules.stub(stub[:firewall_rules]) unless stub[:firewall_rules].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for FirewallRules
    class FirewallRules
      def self.default(visited=[])
        return nil if visited.include?('FirewallRules')
        visited = visited + ['FirewallRules']
        [
          FirewallRule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FirewallRule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListResolverConfigs
    class ListResolverConfigs
      def self.default(visited=[])
        {
          next_token: 'next_token',
          resolver_configs: ResolverConfigList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['ResolverConfigs'] = ResolverConfigList.stub(stub[:resolver_configs]) unless stub[:resolver_configs].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ResolverConfigList
    class ResolverConfigList
      def self.default(visited=[])
        return nil if visited.include?('ResolverConfigList')
        visited = visited + ['ResolverConfigList']
        [
          ResolverConfig.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ResolverConfig.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListResolverDnssecConfigs
    class ListResolverDnssecConfigs
      def self.default(visited=[])
        {
          next_token: 'next_token',
          resolver_dnssec_configs: ResolverDnssecConfigList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['ResolverDnssecConfigs'] = ResolverDnssecConfigList.stub(stub[:resolver_dnssec_configs]) unless stub[:resolver_dnssec_configs].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ResolverDnssecConfigList
    class ResolverDnssecConfigList
      def self.default(visited=[])
        return nil if visited.include?('ResolverDnssecConfigList')
        visited = visited + ['ResolverDnssecConfigList']
        [
          ResolverDnssecConfig.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ResolverDnssecConfig.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListResolverEndpointIpAddresses
    class ListResolverEndpointIpAddresses
      def self.default(visited=[])
        {
          next_token: 'next_token',
          max_results: 1,
          ip_addresses: IpAddressesResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['MaxResults'] = stub[:max_results] unless stub[:max_results].nil?
        data['IpAddresses'] = IpAddressesResponse.stub(stub[:ip_addresses]) unless stub[:ip_addresses].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for IpAddressesResponse
    class IpAddressesResponse
      def self.default(visited=[])
        return nil if visited.include?('IpAddressesResponse')
        visited = visited + ['IpAddressesResponse']
        [
          IpAddressResponse.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << IpAddressResponse.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for IpAddressResponse
    class IpAddressResponse
      def self.default(visited=[])
        return nil if visited.include?('IpAddressResponse')
        visited = visited + ['IpAddressResponse']
        {
          ip_id: 'ip_id',
          subnet_id: 'subnet_id',
          ip: 'ip',
          status: 'status',
          status_message: 'status_message',
          creation_time: 'creation_time',
          modification_time: 'modification_time',
        }
      end

      def self.stub(stub)
        stub ||= Types::IpAddressResponse.new
        data = {}
        data['IpId'] = stub[:ip_id] unless stub[:ip_id].nil?
        data['SubnetId'] = stub[:subnet_id] unless stub[:subnet_id].nil?
        data['Ip'] = stub[:ip] unless stub[:ip].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['CreationTime'] = stub[:creation_time] unless stub[:creation_time].nil?
        data['ModificationTime'] = stub[:modification_time] unless stub[:modification_time].nil?
        data
      end
    end

    # Operation Stubber for ListResolverEndpoints
    class ListResolverEndpoints
      def self.default(visited=[])
        {
          next_token: 'next_token',
          max_results: 1,
          resolver_endpoints: ResolverEndpoints.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['MaxResults'] = stub[:max_results] unless stub[:max_results].nil?
        data['ResolverEndpoints'] = ResolverEndpoints.stub(stub[:resolver_endpoints]) unless stub[:resolver_endpoints].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ResolverEndpoints
    class ResolverEndpoints
      def self.default(visited=[])
        return nil if visited.include?('ResolverEndpoints')
        visited = visited + ['ResolverEndpoints']
        [
          ResolverEndpoint.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ResolverEndpoint.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListResolverQueryLogConfigAssociations
    class ListResolverQueryLogConfigAssociations
      def self.default(visited=[])
        {
          next_token: 'next_token',
          total_count: 1,
          total_filtered_count: 1,
          resolver_query_log_config_associations: ResolverQueryLogConfigAssociationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['TotalCount'] = stub[:total_count] unless stub[:total_count].nil?
        data['TotalFilteredCount'] = stub[:total_filtered_count] unless stub[:total_filtered_count].nil?
        data['ResolverQueryLogConfigAssociations'] = ResolverQueryLogConfigAssociationList.stub(stub[:resolver_query_log_config_associations]) unless stub[:resolver_query_log_config_associations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ResolverQueryLogConfigAssociationList
    class ResolverQueryLogConfigAssociationList
      def self.default(visited=[])
        return nil if visited.include?('ResolverQueryLogConfigAssociationList')
        visited = visited + ['ResolverQueryLogConfigAssociationList']
        [
          ResolverQueryLogConfigAssociation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ResolverQueryLogConfigAssociation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListResolverQueryLogConfigs
    class ListResolverQueryLogConfigs
      def self.default(visited=[])
        {
          next_token: 'next_token',
          total_count: 1,
          total_filtered_count: 1,
          resolver_query_log_configs: ResolverQueryLogConfigList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['TotalCount'] = stub[:total_count] unless stub[:total_count].nil?
        data['TotalFilteredCount'] = stub[:total_filtered_count] unless stub[:total_filtered_count].nil?
        data['ResolverQueryLogConfigs'] = ResolverQueryLogConfigList.stub(stub[:resolver_query_log_configs]) unless stub[:resolver_query_log_configs].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ResolverQueryLogConfigList
    class ResolverQueryLogConfigList
      def self.default(visited=[])
        return nil if visited.include?('ResolverQueryLogConfigList')
        visited = visited + ['ResolverQueryLogConfigList']
        [
          ResolverQueryLogConfig.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ResolverQueryLogConfig.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListResolverRuleAssociations
    class ListResolverRuleAssociations
      def self.default(visited=[])
        {
          next_token: 'next_token',
          max_results: 1,
          resolver_rule_associations: ResolverRuleAssociations.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['MaxResults'] = stub[:max_results] unless stub[:max_results].nil?
        data['ResolverRuleAssociations'] = ResolverRuleAssociations.stub(stub[:resolver_rule_associations]) unless stub[:resolver_rule_associations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ResolverRuleAssociations
    class ResolverRuleAssociations
      def self.default(visited=[])
        return nil if visited.include?('ResolverRuleAssociations')
        visited = visited + ['ResolverRuleAssociations']
        [
          ResolverRuleAssociation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ResolverRuleAssociation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListResolverRules
    class ListResolverRules
      def self.default(visited=[])
        {
          next_token: 'next_token',
          max_results: 1,
          resolver_rules: ResolverRules.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['MaxResults'] = stub[:max_results] unless stub[:max_results].nil?
        data['ResolverRules'] = ResolverRules.stub(stub[:resolver_rules]) unless stub[:resolver_rules].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ResolverRules
    class ResolverRules
      def self.default(visited=[])
        return nil if visited.include?('ResolverRules')
        visited = visited + ['ResolverRules']
        [
          ResolverRule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ResolverRule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
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

    # Operation Stubber for PutFirewallRuleGroupPolicy
    class PutFirewallRuleGroupPolicy
      def self.default(visited=[])
        {
          return_value: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ReturnValue'] = stub[:return_value] unless stub[:return_value].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutResolverQueryLogConfigPolicy
    class PutResolverQueryLogConfigPolicy
      def self.default(visited=[])
        {
          return_value: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ReturnValue'] = stub[:return_value] unless stub[:return_value].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutResolverRulePolicy
    class PutResolverRulePolicy
      def self.default(visited=[])
        {
          return_value: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ReturnValue'] = stub[:return_value] unless stub[:return_value].nil?
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

    # Operation Stubber for UpdateFirewallConfig
    class UpdateFirewallConfig
      def self.default(visited=[])
        {
          firewall_config: FirewallConfig.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FirewallConfig'] = FirewallConfig.stub(stub[:firewall_config]) unless stub[:firewall_config].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateFirewallDomains
    class UpdateFirewallDomains
      def self.default(visited=[])
        {
          id: 'id',
          name: 'name',
          status: 'status',
          status_message: 'status_message',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateFirewallRule
    class UpdateFirewallRule
      def self.default(visited=[])
        {
          firewall_rule: FirewallRule.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FirewallRule'] = FirewallRule.stub(stub[:firewall_rule]) unless stub[:firewall_rule].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateFirewallRuleGroupAssociation
    class UpdateFirewallRuleGroupAssociation
      def self.default(visited=[])
        {
          firewall_rule_group_association: FirewallRuleGroupAssociation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FirewallRuleGroupAssociation'] = FirewallRuleGroupAssociation.stub(stub[:firewall_rule_group_association]) unless stub[:firewall_rule_group_association].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateResolverConfig
    class UpdateResolverConfig
      def self.default(visited=[])
        {
          resolver_config: ResolverConfig.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResolverConfig'] = ResolverConfig.stub(stub[:resolver_config]) unless stub[:resolver_config].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateResolverDnssecConfig
    class UpdateResolverDnssecConfig
      def self.default(visited=[])
        {
          resolver_dnssec_config: ResolverDnssecConfig.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResolverDNSSECConfig'] = ResolverDnssecConfig.stub(stub[:resolver_dnssec_config]) unless stub[:resolver_dnssec_config].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateResolverEndpoint
    class UpdateResolverEndpoint
      def self.default(visited=[])
        {
          resolver_endpoint: ResolverEndpoint.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResolverEndpoint'] = ResolverEndpoint.stub(stub[:resolver_endpoint]) unless stub[:resolver_endpoint].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateResolverRule
    class UpdateResolverRule
      def self.default(visited=[])
        {
          resolver_rule: ResolverRule.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResolverRule'] = ResolverRule.stub(stub[:resolver_rule]) unless stub[:resolver_rule].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
