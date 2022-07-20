# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::Route53Resolver
  module Builders

    # Operation Builder for AssociateFirewallRuleGroup
    class AssociateFirewallRuleGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.AssociateFirewallRuleGroup'
        data = {}
        data['CreatorRequestId'] = input[:creator_request_id] unless input[:creator_request_id].nil?
        data['FirewallRuleGroupId'] = input[:firewall_rule_group_id] unless input[:firewall_rule_group_id].nil?
        data['VpcId'] = input[:vpc_id] unless input[:vpc_id].nil?
        data['Priority'] = input[:priority] unless input[:priority].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['MutationProtection'] = input[:mutation_protection] unless input[:mutation_protection].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Tag.build(element) unless element.nil?
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

    # Operation Builder for AssociateResolverEndpointIpAddress
    class AssociateResolverEndpointIpAddress
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.AssociateResolverEndpointIpAddress'
        data = {}
        data['ResolverEndpointId'] = input[:resolver_endpoint_id] unless input[:resolver_endpoint_id].nil?
        data['IpAddress'] = IpAddressUpdate.build(input[:ip_address]) unless input[:ip_address].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for IpAddressUpdate
    class IpAddressUpdate
      def self.build(input)
        data = {}
        data['IpId'] = input[:ip_id] unless input[:ip_id].nil?
        data['SubnetId'] = input[:subnet_id] unless input[:subnet_id].nil?
        data['Ip'] = input[:ip] unless input[:ip].nil?
        data
      end
    end

    # Operation Builder for AssociateResolverQueryLogConfig
    class AssociateResolverQueryLogConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.AssociateResolverQueryLogConfig'
        data = {}
        data['ResolverQueryLogConfigId'] = input[:resolver_query_log_config_id] unless input[:resolver_query_log_config_id].nil?
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AssociateResolverRule
    class AssociateResolverRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.AssociateResolverRule'
        data = {}
        data['ResolverRuleId'] = input[:resolver_rule_id] unless input[:resolver_rule_id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['VPCId'] = input[:vpc_id] unless input[:vpc_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateFirewallDomainList
    class CreateFirewallDomainList
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.CreateFirewallDomainList'
        data = {}
        data['CreatorRequestId'] = input[:creator_request_id] unless input[:creator_request_id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateFirewallRule
    class CreateFirewallRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.CreateFirewallRule'
        data = {}
        data['CreatorRequestId'] = input[:creator_request_id] unless input[:creator_request_id].nil?
        data['FirewallRuleGroupId'] = input[:firewall_rule_group_id] unless input[:firewall_rule_group_id].nil?
        data['FirewallDomainListId'] = input[:firewall_domain_list_id] unless input[:firewall_domain_list_id].nil?
        data['Priority'] = input[:priority] unless input[:priority].nil?
        data['Action'] = input[:action] unless input[:action].nil?
        data['BlockResponse'] = input[:block_response] unless input[:block_response].nil?
        data['BlockOverrideDomain'] = input[:block_override_domain] unless input[:block_override_domain].nil?
        data['BlockOverrideDnsType'] = input[:block_override_dns_type] unless input[:block_override_dns_type].nil?
        data['BlockOverrideTtl'] = input[:block_override_ttl] unless input[:block_override_ttl].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateFirewallRuleGroup
    class CreateFirewallRuleGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.CreateFirewallRuleGroup'
        data = {}
        data['CreatorRequestId'] = input[:creator_request_id] unless input[:creator_request_id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateResolverEndpoint
    class CreateResolverEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.CreateResolverEndpoint'
        data = {}
        data['CreatorRequestId'] = input[:creator_request_id] unless input[:creator_request_id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['SecurityGroupIds'] = SecurityGroupIds.build(input[:security_group_ids]) unless input[:security_group_ids].nil?
        data['Direction'] = input[:direction] unless input[:direction].nil?
        data['IpAddresses'] = IpAddressesRequest.build(input[:ip_addresses]) unless input[:ip_addresses].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for IpAddressesRequest
    class IpAddressesRequest
      def self.build(input)
        data = []
        input.each do |element|
          data << IpAddressRequest.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for IpAddressRequest
    class IpAddressRequest
      def self.build(input)
        data = {}
        data['SubnetId'] = input[:subnet_id] unless input[:subnet_id].nil?
        data['Ip'] = input[:ip] unless input[:ip].nil?
        data
      end
    end

    # List Builder for SecurityGroupIds
    class SecurityGroupIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateResolverQueryLogConfig
    class CreateResolverQueryLogConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.CreateResolverQueryLogConfig'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['DestinationArn'] = input[:destination_arn] unless input[:destination_arn].nil?
        data['CreatorRequestId'] = input[:creator_request_id] unless input[:creator_request_id].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateResolverRule
    class CreateResolverRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.CreateResolverRule'
        data = {}
        data['CreatorRequestId'] = input[:creator_request_id] unless input[:creator_request_id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['RuleType'] = input[:rule_type] unless input[:rule_type].nil?
        data['DomainName'] = input[:domain_name] unless input[:domain_name].nil?
        data['TargetIps'] = TargetList.build(input[:target_ips]) unless input[:target_ips].nil?
        data['ResolverEndpointId'] = input[:resolver_endpoint_id] unless input[:resolver_endpoint_id].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TargetList
    class TargetList
      def self.build(input)
        data = []
        input.each do |element|
          data << TargetAddress.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for TargetAddress
    class TargetAddress
      def self.build(input)
        data = {}
        data['Ip'] = input[:ip] unless input[:ip].nil?
        data['Port'] = input[:port] unless input[:port].nil?
        data
      end
    end

    # Operation Builder for DeleteFirewallDomainList
    class DeleteFirewallDomainList
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.DeleteFirewallDomainList'
        data = {}
        data['FirewallDomainListId'] = input[:firewall_domain_list_id] unless input[:firewall_domain_list_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteFirewallRule
    class DeleteFirewallRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.DeleteFirewallRule'
        data = {}
        data['FirewallRuleGroupId'] = input[:firewall_rule_group_id] unless input[:firewall_rule_group_id].nil?
        data['FirewallDomainListId'] = input[:firewall_domain_list_id] unless input[:firewall_domain_list_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteFirewallRuleGroup
    class DeleteFirewallRuleGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.DeleteFirewallRuleGroup'
        data = {}
        data['FirewallRuleGroupId'] = input[:firewall_rule_group_id] unless input[:firewall_rule_group_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteResolverEndpoint
    class DeleteResolverEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.DeleteResolverEndpoint'
        data = {}
        data['ResolverEndpointId'] = input[:resolver_endpoint_id] unless input[:resolver_endpoint_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteResolverQueryLogConfig
    class DeleteResolverQueryLogConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.DeleteResolverQueryLogConfig'
        data = {}
        data['ResolverQueryLogConfigId'] = input[:resolver_query_log_config_id] unless input[:resolver_query_log_config_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteResolverRule
    class DeleteResolverRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.DeleteResolverRule'
        data = {}
        data['ResolverRuleId'] = input[:resolver_rule_id] unless input[:resolver_rule_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateFirewallRuleGroup
    class DisassociateFirewallRuleGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.DisassociateFirewallRuleGroup'
        data = {}
        data['FirewallRuleGroupAssociationId'] = input[:firewall_rule_group_association_id] unless input[:firewall_rule_group_association_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateResolverEndpointIpAddress
    class DisassociateResolverEndpointIpAddress
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.DisassociateResolverEndpointIpAddress'
        data = {}
        data['ResolverEndpointId'] = input[:resolver_endpoint_id] unless input[:resolver_endpoint_id].nil?
        data['IpAddress'] = IpAddressUpdate.build(input[:ip_address]) unless input[:ip_address].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateResolverQueryLogConfig
    class DisassociateResolverQueryLogConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.DisassociateResolverQueryLogConfig'
        data = {}
        data['ResolverQueryLogConfigId'] = input[:resolver_query_log_config_id] unless input[:resolver_query_log_config_id].nil?
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateResolverRule
    class DisassociateResolverRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.DisassociateResolverRule'
        data = {}
        data['VPCId'] = input[:vpc_id] unless input[:vpc_id].nil?
        data['ResolverRuleId'] = input[:resolver_rule_id] unless input[:resolver_rule_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetFirewallConfig
    class GetFirewallConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.GetFirewallConfig'
        data = {}
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetFirewallDomainList
    class GetFirewallDomainList
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.GetFirewallDomainList'
        data = {}
        data['FirewallDomainListId'] = input[:firewall_domain_list_id] unless input[:firewall_domain_list_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetFirewallRuleGroup
    class GetFirewallRuleGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.GetFirewallRuleGroup'
        data = {}
        data['FirewallRuleGroupId'] = input[:firewall_rule_group_id] unless input[:firewall_rule_group_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetFirewallRuleGroupAssociation
    class GetFirewallRuleGroupAssociation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.GetFirewallRuleGroupAssociation'
        data = {}
        data['FirewallRuleGroupAssociationId'] = input[:firewall_rule_group_association_id] unless input[:firewall_rule_group_association_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetFirewallRuleGroupPolicy
    class GetFirewallRuleGroupPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.GetFirewallRuleGroupPolicy'
        data = {}
        data['Arn'] = input[:arn] unless input[:arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetResolverConfig
    class GetResolverConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.GetResolverConfig'
        data = {}
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetResolverDnssecConfig
    class GetResolverDnssecConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.GetResolverDnssecConfig'
        data = {}
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetResolverEndpoint
    class GetResolverEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.GetResolverEndpoint'
        data = {}
        data['ResolverEndpointId'] = input[:resolver_endpoint_id] unless input[:resolver_endpoint_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetResolverQueryLogConfig
    class GetResolverQueryLogConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.GetResolverQueryLogConfig'
        data = {}
        data['ResolverQueryLogConfigId'] = input[:resolver_query_log_config_id] unless input[:resolver_query_log_config_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetResolverQueryLogConfigAssociation
    class GetResolverQueryLogConfigAssociation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.GetResolverQueryLogConfigAssociation'
        data = {}
        data['ResolverQueryLogConfigAssociationId'] = input[:resolver_query_log_config_association_id] unless input[:resolver_query_log_config_association_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetResolverQueryLogConfigPolicy
    class GetResolverQueryLogConfigPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.GetResolverQueryLogConfigPolicy'
        data = {}
        data['Arn'] = input[:arn] unless input[:arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetResolverRule
    class GetResolverRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.GetResolverRule'
        data = {}
        data['ResolverRuleId'] = input[:resolver_rule_id] unless input[:resolver_rule_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetResolverRuleAssociation
    class GetResolverRuleAssociation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.GetResolverRuleAssociation'
        data = {}
        data['ResolverRuleAssociationId'] = input[:resolver_rule_association_id] unless input[:resolver_rule_association_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetResolverRulePolicy
    class GetResolverRulePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.GetResolverRulePolicy'
        data = {}
        data['Arn'] = input[:arn] unless input[:arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ImportFirewallDomains
    class ImportFirewallDomains
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.ImportFirewallDomains'
        data = {}
        data['FirewallDomainListId'] = input[:firewall_domain_list_id] unless input[:firewall_domain_list_id].nil?
        data['Operation'] = input[:operation] unless input[:operation].nil?
        data['DomainFileUrl'] = input[:domain_file_url] unless input[:domain_file_url].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListFirewallConfigs
    class ListFirewallConfigs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.ListFirewallConfigs'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListFirewallDomainLists
    class ListFirewallDomainLists
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.ListFirewallDomainLists'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListFirewallDomains
    class ListFirewallDomains
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.ListFirewallDomains'
        data = {}
        data['FirewallDomainListId'] = input[:firewall_domain_list_id] unless input[:firewall_domain_list_id].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListFirewallRuleGroupAssociations
    class ListFirewallRuleGroupAssociations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.ListFirewallRuleGroupAssociations'
        data = {}
        data['FirewallRuleGroupId'] = input[:firewall_rule_group_id] unless input[:firewall_rule_group_id].nil?
        data['VpcId'] = input[:vpc_id] unless input[:vpc_id].nil?
        data['Priority'] = input[:priority] unless input[:priority].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListFirewallRuleGroups
    class ListFirewallRuleGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.ListFirewallRuleGroups'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListFirewallRules
    class ListFirewallRules
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.ListFirewallRules'
        data = {}
        data['FirewallRuleGroupId'] = input[:firewall_rule_group_id] unless input[:firewall_rule_group_id].nil?
        data['Priority'] = input[:priority] unless input[:priority].nil?
        data['Action'] = input[:action] unless input[:action].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListResolverConfigs
    class ListResolverConfigs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.ListResolverConfigs'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListResolverDnssecConfigs
    class ListResolverDnssecConfigs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.ListResolverDnssecConfigs'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Filters'] = Filters.build(input[:filters]) unless input[:filters].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for Filters
    class Filters
      def self.build(input)
        data = []
        input.each do |element|
          data << Filter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Filter
    class Filter
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Values'] = FilterValues.build(input[:values]) unless input[:values].nil?
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

    # Operation Builder for ListResolverEndpointIpAddresses
    class ListResolverEndpointIpAddresses
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.ListResolverEndpointIpAddresses'
        data = {}
        data['ResolverEndpointId'] = input[:resolver_endpoint_id] unless input[:resolver_endpoint_id].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListResolverEndpoints
    class ListResolverEndpoints
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.ListResolverEndpoints'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Filters'] = Filters.build(input[:filters]) unless input[:filters].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListResolverQueryLogConfigAssociations
    class ListResolverQueryLogConfigAssociations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.ListResolverQueryLogConfigAssociations'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Filters'] = Filters.build(input[:filters]) unless input[:filters].nil?
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListResolverQueryLogConfigs
    class ListResolverQueryLogConfigs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.ListResolverQueryLogConfigs'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Filters'] = Filters.build(input[:filters]) unless input[:filters].nil?
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListResolverRuleAssociations
    class ListResolverRuleAssociations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.ListResolverRuleAssociations'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Filters'] = Filters.build(input[:filters]) unless input[:filters].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListResolverRules
    class ListResolverRules
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.ListResolverRules'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Filters'] = Filters.build(input[:filters]) unless input[:filters].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.ListTagsForResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutFirewallRuleGroupPolicy
    class PutFirewallRuleGroupPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.PutFirewallRuleGroupPolicy'
        data = {}
        data['Arn'] = input[:arn] unless input[:arn].nil?
        data['FirewallRuleGroupPolicy'] = input[:firewall_rule_group_policy] unless input[:firewall_rule_group_policy].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutResolverQueryLogConfigPolicy
    class PutResolverQueryLogConfigPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.PutResolverQueryLogConfigPolicy'
        data = {}
        data['Arn'] = input[:arn] unless input[:arn].nil?
        data['ResolverQueryLogConfigPolicy'] = input[:resolver_query_log_config_policy] unless input[:resolver_query_log_config_policy].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutResolverRulePolicy
    class PutResolverRulePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.PutResolverRulePolicy'
        data = {}
        data['Arn'] = input[:arn] unless input[:arn].nil?
        data['ResolverRulePolicy'] = input[:resolver_rule_policy] unless input[:resolver_rule_policy].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.TagResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.UntagResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['TagKeys'] = TagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Builder for UpdateFirewallConfig
    class UpdateFirewallConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.UpdateFirewallConfig'
        data = {}
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['FirewallFailOpen'] = input[:firewall_fail_open] unless input[:firewall_fail_open].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateFirewallDomains
    class UpdateFirewallDomains
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.UpdateFirewallDomains'
        data = {}
        data['FirewallDomainListId'] = input[:firewall_domain_list_id] unless input[:firewall_domain_list_id].nil?
        data['Operation'] = input[:operation] unless input[:operation].nil?
        data['Domains'] = FirewallDomains.build(input[:domains]) unless input[:domains].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for FirewallDomains
    class FirewallDomains
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateFirewallRule
    class UpdateFirewallRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.UpdateFirewallRule'
        data = {}
        data['FirewallRuleGroupId'] = input[:firewall_rule_group_id] unless input[:firewall_rule_group_id].nil?
        data['FirewallDomainListId'] = input[:firewall_domain_list_id] unless input[:firewall_domain_list_id].nil?
        data['Priority'] = input[:priority] unless input[:priority].nil?
        data['Action'] = input[:action] unless input[:action].nil?
        data['BlockResponse'] = input[:block_response] unless input[:block_response].nil?
        data['BlockOverrideDomain'] = input[:block_override_domain] unless input[:block_override_domain].nil?
        data['BlockOverrideDnsType'] = input[:block_override_dns_type] unless input[:block_override_dns_type].nil?
        data['BlockOverrideTtl'] = input[:block_override_ttl] unless input[:block_override_ttl].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateFirewallRuleGroupAssociation
    class UpdateFirewallRuleGroupAssociation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.UpdateFirewallRuleGroupAssociation'
        data = {}
        data['FirewallRuleGroupAssociationId'] = input[:firewall_rule_group_association_id] unless input[:firewall_rule_group_association_id].nil?
        data['Priority'] = input[:priority] unless input[:priority].nil?
        data['MutationProtection'] = input[:mutation_protection] unless input[:mutation_protection].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateResolverConfig
    class UpdateResolverConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.UpdateResolverConfig'
        data = {}
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['AutodefinedReverseFlag'] = input[:autodefined_reverse_flag] unless input[:autodefined_reverse_flag].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateResolverDnssecConfig
    class UpdateResolverDnssecConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.UpdateResolverDnssecConfig'
        data = {}
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['Validation'] = input[:validation] unless input[:validation].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateResolverEndpoint
    class UpdateResolverEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.UpdateResolverEndpoint'
        data = {}
        data['ResolverEndpointId'] = input[:resolver_endpoint_id] unless input[:resolver_endpoint_id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateResolverRule
    class UpdateResolverRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Resolver.UpdateResolverRule'
        data = {}
        data['ResolverRuleId'] = input[:resolver_rule_id] unless input[:resolver_rule_id].nil?
        data['Config'] = ResolverRuleConfig.build(input[:config]) unless input[:config].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ResolverRuleConfig
    class ResolverRuleConfig
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['TargetIps'] = TargetList.build(input[:target_ips]) unless input[:target_ips].nil?
        data['ResolverEndpointId'] = input[:resolver_endpoint_id] unless input[:resolver_endpoint_id].nil?
        data
      end
    end
  end
end
