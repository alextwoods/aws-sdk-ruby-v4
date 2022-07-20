# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Route53Resolver
  module Parsers

    # Operation Parser for AssociateFirewallRuleGroup
    class AssociateFirewallRuleGroup
      def self.parse(http_resp)
        data = Types::AssociateFirewallRuleGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.firewall_rule_group_association = (FirewallRuleGroupAssociation.parse(map['FirewallRuleGroupAssociation']) unless map['FirewallRuleGroupAssociation'].nil?)
        data
      end
    end

    class FirewallRuleGroupAssociation
      def self.parse(map)
        data = Types::FirewallRuleGroupAssociation.new
        data.id = map['Id']
        data.arn = map['Arn']
        data.firewall_rule_group_id = map['FirewallRuleGroupId']
        data.vpc_id = map['VpcId']
        data.name = map['Name']
        data.priority = map['Priority']
        data.mutation_protection = map['MutationProtection']
        data.managed_owner_name = map['ManagedOwnerName']
        data.status = map['Status']
        data.status_message = map['StatusMessage']
        data.creator_request_id = map['CreatorRequestId']
        data.creation_time = map['CreationTime']
        data.modification_time = map['ModificationTime']
        return data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.resource_type = map['ResourceType']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
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
        data.resource_type = map['ResourceType']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InternalServiceErrorException
    class InternalServiceErrorException
      def self.parse(http_resp)
        data = Types::InternalServiceErrorException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for AssociateResolverEndpointIpAddress
    class AssociateResolverEndpointIpAddress
      def self.parse(http_resp)
        data = Types::AssociateResolverEndpointIpAddressOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resolver_endpoint = (ResolverEndpoint.parse(map['ResolverEndpoint']) unless map['ResolverEndpoint'].nil?)
        data
      end
    end

    class ResolverEndpoint
      def self.parse(map)
        data = Types::ResolverEndpoint.new
        data.id = map['Id']
        data.creator_request_id = map['CreatorRequestId']
        data.arn = map['Arn']
        data.name = map['Name']
        data.security_group_ids = (SecurityGroupIds.parse(map['SecurityGroupIds']) unless map['SecurityGroupIds'].nil?)
        data.direction = map['Direction']
        data.ip_address_count = map['IpAddressCount']
        data.host_vpc_id = map['HostVPCId']
        data.status = map['Status']
        data.status_message = map['StatusMessage']
        data.creation_time = map['CreationTime']
        data.modification_time = map['ModificationTime']
        return data
      end
    end

    class SecurityGroupIds
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Error Parser for InvalidParameterException
    class InvalidParameterException
      def self.parse(http_resp)
        data = Types::InvalidParameterException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.field_name = map['FieldName']
        data
      end
    end

    # Error Parser for ResourceExistsException
    class ResourceExistsException
      def self.parse(http_resp)
        data = Types::ResourceExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.resource_type = map['ResourceType']
        data
      end
    end

    # Error Parser for InvalidRequestException
    class InvalidRequestException
      def self.parse(http_resp)
        data = Types::InvalidRequestException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for AssociateResolverQueryLogConfig
    class AssociateResolverQueryLogConfig
      def self.parse(http_resp)
        data = Types::AssociateResolverQueryLogConfigOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resolver_query_log_config_association = (ResolverQueryLogConfigAssociation.parse(map['ResolverQueryLogConfigAssociation']) unless map['ResolverQueryLogConfigAssociation'].nil?)
        data
      end
    end

    class ResolverQueryLogConfigAssociation
      def self.parse(map)
        data = Types::ResolverQueryLogConfigAssociation.new
        data.id = map['Id']
        data.resolver_query_log_config_id = map['ResolverQueryLogConfigId']
        data.resource_id = map['ResourceId']
        data.status = map['Status']
        data.error = map['Error']
        data.error_message = map['ErrorMessage']
        data.creation_time = map['CreationTime']
        return data
      end
    end

    # Operation Parser for AssociateResolverRule
    class AssociateResolverRule
      def self.parse(http_resp)
        data = Types::AssociateResolverRuleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resolver_rule_association = (ResolverRuleAssociation.parse(map['ResolverRuleAssociation']) unless map['ResolverRuleAssociation'].nil?)
        data
      end
    end

    class ResolverRuleAssociation
      def self.parse(map)
        data = Types::ResolverRuleAssociation.new
        data.id = map['Id']
        data.resolver_rule_id = map['ResolverRuleId']
        data.name = map['Name']
        data.vpc_id = map['VPCId']
        data.status = map['Status']
        data.status_message = map['StatusMessage']
        return data
      end
    end

    # Error Parser for ResourceUnavailableException
    class ResourceUnavailableException
      def self.parse(http_resp)
        data = Types::ResourceUnavailableException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.resource_type = map['ResourceType']
        data
      end
    end

    # Operation Parser for CreateFirewallDomainList
    class CreateFirewallDomainList
      def self.parse(http_resp)
        data = Types::CreateFirewallDomainListOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.firewall_domain_list = (FirewallDomainList.parse(map['FirewallDomainList']) unless map['FirewallDomainList'].nil?)
        data
      end
    end

    class FirewallDomainList
      def self.parse(map)
        data = Types::FirewallDomainList.new
        data.id = map['Id']
        data.arn = map['Arn']
        data.name = map['Name']
        data.domain_count = map['DomainCount']
        data.status = map['Status']
        data.status_message = map['StatusMessage']
        data.managed_owner_name = map['ManagedOwnerName']
        data.creator_request_id = map['CreatorRequestId']
        data.creation_time = map['CreationTime']
        data.modification_time = map['ModificationTime']
        return data
      end
    end

    # Operation Parser for CreateFirewallRule
    class CreateFirewallRule
      def self.parse(http_resp)
        data = Types::CreateFirewallRuleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.firewall_rule = (FirewallRule.parse(map['FirewallRule']) unless map['FirewallRule'].nil?)
        data
      end
    end

    class FirewallRule
      def self.parse(map)
        data = Types::FirewallRule.new
        data.firewall_rule_group_id = map['FirewallRuleGroupId']
        data.firewall_domain_list_id = map['FirewallDomainListId']
        data.name = map['Name']
        data.priority = map['Priority']
        data.action = map['Action']
        data.block_response = map['BlockResponse']
        data.block_override_domain = map['BlockOverrideDomain']
        data.block_override_dns_type = map['BlockOverrideDnsType']
        data.block_override_ttl = map['BlockOverrideTtl']
        data.creator_request_id = map['CreatorRequestId']
        data.creation_time = map['CreationTime']
        data.modification_time = map['ModificationTime']
        return data
      end
    end

    # Operation Parser for CreateFirewallRuleGroup
    class CreateFirewallRuleGroup
      def self.parse(http_resp)
        data = Types::CreateFirewallRuleGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.firewall_rule_group = (FirewallRuleGroup.parse(map['FirewallRuleGroup']) unless map['FirewallRuleGroup'].nil?)
        data
      end
    end

    class FirewallRuleGroup
      def self.parse(map)
        data = Types::FirewallRuleGroup.new
        data.id = map['Id']
        data.arn = map['Arn']
        data.name = map['Name']
        data.rule_count = map['RuleCount']
        data.status = map['Status']
        data.status_message = map['StatusMessage']
        data.owner_id = map['OwnerId']
        data.creator_request_id = map['CreatorRequestId']
        data.share_status = map['ShareStatus']
        data.creation_time = map['CreationTime']
        data.modification_time = map['ModificationTime']
        return data
      end
    end

    # Operation Parser for CreateResolverEndpoint
    class CreateResolverEndpoint
      def self.parse(http_resp)
        data = Types::CreateResolverEndpointOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resolver_endpoint = (ResolverEndpoint.parse(map['ResolverEndpoint']) unless map['ResolverEndpoint'].nil?)
        data
      end
    end

    # Operation Parser for CreateResolverQueryLogConfig
    class CreateResolverQueryLogConfig
      def self.parse(http_resp)
        data = Types::CreateResolverQueryLogConfigOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resolver_query_log_config = (ResolverQueryLogConfig.parse(map['ResolverQueryLogConfig']) unless map['ResolverQueryLogConfig'].nil?)
        data
      end
    end

    class ResolverQueryLogConfig
      def self.parse(map)
        data = Types::ResolverQueryLogConfig.new
        data.id = map['Id']
        data.owner_id = map['OwnerId']
        data.status = map['Status']
        data.share_status = map['ShareStatus']
        data.association_count = map['AssociationCount']
        data.arn = map['Arn']
        data.name = map['Name']
        data.destination_arn = map['DestinationArn']
        data.creator_request_id = map['CreatorRequestId']
        data.creation_time = map['CreationTime']
        return data
      end
    end

    # Operation Parser for CreateResolverRule
    class CreateResolverRule
      def self.parse(http_resp)
        data = Types::CreateResolverRuleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resolver_rule = (ResolverRule.parse(map['ResolverRule']) unless map['ResolverRule'].nil?)
        data
      end
    end

    class ResolverRule
      def self.parse(map)
        data = Types::ResolverRule.new
        data.id = map['Id']
        data.creator_request_id = map['CreatorRequestId']
        data.arn = map['Arn']
        data.domain_name = map['DomainName']
        data.status = map['Status']
        data.status_message = map['StatusMessage']
        data.rule_type = map['RuleType']
        data.name = map['Name']
        data.target_ips = (TargetList.parse(map['TargetIps']) unless map['TargetIps'].nil?)
        data.resolver_endpoint_id = map['ResolverEndpointId']
        data.owner_id = map['OwnerId']
        data.share_status = map['ShareStatus']
        data.creation_time = map['CreationTime']
        data.modification_time = map['ModificationTime']
        return data
      end
    end

    class TargetList
      def self.parse(list)
        list.map do |value|
          TargetAddress.parse(value) unless value.nil?
        end
      end
    end

    class TargetAddress
      def self.parse(map)
        data = Types::TargetAddress.new
        data.ip = map['Ip']
        data.port = map['Port']
        return data
      end
    end

    # Operation Parser for DeleteFirewallDomainList
    class DeleteFirewallDomainList
      def self.parse(http_resp)
        data = Types::DeleteFirewallDomainListOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.firewall_domain_list = (FirewallDomainList.parse(map['FirewallDomainList']) unless map['FirewallDomainList'].nil?)
        data
      end
    end

    # Operation Parser for DeleteFirewallRule
    class DeleteFirewallRule
      def self.parse(http_resp)
        data = Types::DeleteFirewallRuleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.firewall_rule = (FirewallRule.parse(map['FirewallRule']) unless map['FirewallRule'].nil?)
        data
      end
    end

    # Operation Parser for DeleteFirewallRuleGroup
    class DeleteFirewallRuleGroup
      def self.parse(http_resp)
        data = Types::DeleteFirewallRuleGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.firewall_rule_group = (FirewallRuleGroup.parse(map['FirewallRuleGroup']) unless map['FirewallRuleGroup'].nil?)
        data
      end
    end

    # Operation Parser for DeleteResolverEndpoint
    class DeleteResolverEndpoint
      def self.parse(http_resp)
        data = Types::DeleteResolverEndpointOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resolver_endpoint = (ResolverEndpoint.parse(map['ResolverEndpoint']) unless map['ResolverEndpoint'].nil?)
        data
      end
    end

    # Operation Parser for DeleteResolverQueryLogConfig
    class DeleteResolverQueryLogConfig
      def self.parse(http_resp)
        data = Types::DeleteResolverQueryLogConfigOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resolver_query_log_config = (ResolverQueryLogConfig.parse(map['ResolverQueryLogConfig']) unless map['ResolverQueryLogConfig'].nil?)
        data
      end
    end

    # Operation Parser for DeleteResolverRule
    class DeleteResolverRule
      def self.parse(http_resp)
        data = Types::DeleteResolverRuleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resolver_rule = (ResolverRule.parse(map['ResolverRule']) unless map['ResolverRule'].nil?)
        data
      end
    end

    # Error Parser for ResourceInUseException
    class ResourceInUseException
      def self.parse(http_resp)
        data = Types::ResourceInUseException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.resource_type = map['ResourceType']
        data
      end
    end

    # Operation Parser for DisassociateFirewallRuleGroup
    class DisassociateFirewallRuleGroup
      def self.parse(http_resp)
        data = Types::DisassociateFirewallRuleGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.firewall_rule_group_association = (FirewallRuleGroupAssociation.parse(map['FirewallRuleGroupAssociation']) unless map['FirewallRuleGroupAssociation'].nil?)
        data
      end
    end

    # Operation Parser for DisassociateResolverEndpointIpAddress
    class DisassociateResolverEndpointIpAddress
      def self.parse(http_resp)
        data = Types::DisassociateResolverEndpointIpAddressOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resolver_endpoint = (ResolverEndpoint.parse(map['ResolverEndpoint']) unless map['ResolverEndpoint'].nil?)
        data
      end
    end

    # Operation Parser for DisassociateResolverQueryLogConfig
    class DisassociateResolverQueryLogConfig
      def self.parse(http_resp)
        data = Types::DisassociateResolverQueryLogConfigOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resolver_query_log_config_association = (ResolverQueryLogConfigAssociation.parse(map['ResolverQueryLogConfigAssociation']) unless map['ResolverQueryLogConfigAssociation'].nil?)
        data
      end
    end

    # Operation Parser for DisassociateResolverRule
    class DisassociateResolverRule
      def self.parse(http_resp)
        data = Types::DisassociateResolverRuleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resolver_rule_association = (ResolverRuleAssociation.parse(map['ResolverRuleAssociation']) unless map['ResolverRuleAssociation'].nil?)
        data
      end
    end

    # Operation Parser for GetFirewallConfig
    class GetFirewallConfig
      def self.parse(http_resp)
        data = Types::GetFirewallConfigOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.firewall_config = (FirewallConfig.parse(map['FirewallConfig']) unless map['FirewallConfig'].nil?)
        data
      end
    end

    class FirewallConfig
      def self.parse(map)
        data = Types::FirewallConfig.new
        data.id = map['Id']
        data.resource_id = map['ResourceId']
        data.owner_id = map['OwnerId']
        data.firewall_fail_open = map['FirewallFailOpen']
        return data
      end
    end

    # Operation Parser for GetFirewallDomainList
    class GetFirewallDomainList
      def self.parse(http_resp)
        data = Types::GetFirewallDomainListOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.firewall_domain_list = (FirewallDomainList.parse(map['FirewallDomainList']) unless map['FirewallDomainList'].nil?)
        data
      end
    end

    # Operation Parser for GetFirewallRuleGroup
    class GetFirewallRuleGroup
      def self.parse(http_resp)
        data = Types::GetFirewallRuleGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.firewall_rule_group = (FirewallRuleGroup.parse(map['FirewallRuleGroup']) unless map['FirewallRuleGroup'].nil?)
        data
      end
    end

    # Operation Parser for GetFirewallRuleGroupAssociation
    class GetFirewallRuleGroupAssociation
      def self.parse(http_resp)
        data = Types::GetFirewallRuleGroupAssociationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.firewall_rule_group_association = (FirewallRuleGroupAssociation.parse(map['FirewallRuleGroupAssociation']) unless map['FirewallRuleGroupAssociation'].nil?)
        data
      end
    end

    # Operation Parser for GetFirewallRuleGroupPolicy
    class GetFirewallRuleGroupPolicy
      def self.parse(http_resp)
        data = Types::GetFirewallRuleGroupPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.firewall_rule_group_policy = map['FirewallRuleGroupPolicy']
        data
      end
    end

    # Operation Parser for GetResolverConfig
    class GetResolverConfig
      def self.parse(http_resp)
        data = Types::GetResolverConfigOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resolver_config = (ResolverConfig.parse(map['ResolverConfig']) unless map['ResolverConfig'].nil?)
        data
      end
    end

    class ResolverConfig
      def self.parse(map)
        data = Types::ResolverConfig.new
        data.id = map['Id']
        data.resource_id = map['ResourceId']
        data.owner_id = map['OwnerId']
        data.autodefined_reverse = map['AutodefinedReverse']
        return data
      end
    end

    # Operation Parser for GetResolverDnssecConfig
    class GetResolverDnssecConfig
      def self.parse(http_resp)
        data = Types::GetResolverDnssecConfigOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resolver_dnssec_config = (ResolverDnssecConfig.parse(map['ResolverDNSSECConfig']) unless map['ResolverDNSSECConfig'].nil?)
        data
      end
    end

    class ResolverDnssecConfig
      def self.parse(map)
        data = Types::ResolverDnssecConfig.new
        data.id = map['Id']
        data.owner_id = map['OwnerId']
        data.resource_id = map['ResourceId']
        data.validation_status = map['ValidationStatus']
        return data
      end
    end

    # Operation Parser for GetResolverEndpoint
    class GetResolverEndpoint
      def self.parse(http_resp)
        data = Types::GetResolverEndpointOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resolver_endpoint = (ResolverEndpoint.parse(map['ResolverEndpoint']) unless map['ResolverEndpoint'].nil?)
        data
      end
    end

    # Operation Parser for GetResolverQueryLogConfig
    class GetResolverQueryLogConfig
      def self.parse(http_resp)
        data = Types::GetResolverQueryLogConfigOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resolver_query_log_config = (ResolverQueryLogConfig.parse(map['ResolverQueryLogConfig']) unless map['ResolverQueryLogConfig'].nil?)
        data
      end
    end

    # Operation Parser for GetResolverQueryLogConfigAssociation
    class GetResolverQueryLogConfigAssociation
      def self.parse(http_resp)
        data = Types::GetResolverQueryLogConfigAssociationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resolver_query_log_config_association = (ResolverQueryLogConfigAssociation.parse(map['ResolverQueryLogConfigAssociation']) unless map['ResolverQueryLogConfigAssociation'].nil?)
        data
      end
    end

    # Operation Parser for GetResolverQueryLogConfigPolicy
    class GetResolverQueryLogConfigPolicy
      def self.parse(http_resp)
        data = Types::GetResolverQueryLogConfigPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resolver_query_log_config_policy = map['ResolverQueryLogConfigPolicy']
        data
      end
    end

    # Error Parser for UnknownResourceException
    class UnknownResourceException
      def self.parse(http_resp)
        data = Types::UnknownResourceException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for GetResolverRule
    class GetResolverRule
      def self.parse(http_resp)
        data = Types::GetResolverRuleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resolver_rule = (ResolverRule.parse(map['ResolverRule']) unless map['ResolverRule'].nil?)
        data
      end
    end

    # Operation Parser for GetResolverRuleAssociation
    class GetResolverRuleAssociation
      def self.parse(http_resp)
        data = Types::GetResolverRuleAssociationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resolver_rule_association = (ResolverRuleAssociation.parse(map['ResolverRuleAssociation']) unless map['ResolverRuleAssociation'].nil?)
        data
      end
    end

    # Operation Parser for GetResolverRulePolicy
    class GetResolverRulePolicy
      def self.parse(http_resp)
        data = Types::GetResolverRulePolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resolver_rule_policy = map['ResolverRulePolicy']
        data
      end
    end

    # Operation Parser for ImportFirewallDomains
    class ImportFirewallDomains
      def self.parse(http_resp)
        data = Types::ImportFirewallDomainsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.id = map['Id']
        data.name = map['Name']
        data.status = map['Status']
        data.status_message = map['StatusMessage']
        data
      end
    end

    # Operation Parser for ListFirewallConfigs
    class ListFirewallConfigs
      def self.parse(http_resp)
        data = Types::ListFirewallConfigsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.firewall_configs = (FirewallConfigList.parse(map['FirewallConfigs']) unless map['FirewallConfigs'].nil?)
        data
      end
    end

    class FirewallConfigList
      def self.parse(list)
        list.map do |value|
          FirewallConfig.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListFirewallDomainLists
    class ListFirewallDomainLists
      def self.parse(http_resp)
        data = Types::ListFirewallDomainListsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.firewall_domain_lists = (FirewallDomainListMetadataList.parse(map['FirewallDomainLists']) unless map['FirewallDomainLists'].nil?)
        data
      end
    end

    class FirewallDomainListMetadataList
      def self.parse(list)
        list.map do |value|
          FirewallDomainListMetadata.parse(value) unless value.nil?
        end
      end
    end

    class FirewallDomainListMetadata
      def self.parse(map)
        data = Types::FirewallDomainListMetadata.new
        data.id = map['Id']
        data.arn = map['Arn']
        data.name = map['Name']
        data.creator_request_id = map['CreatorRequestId']
        data.managed_owner_name = map['ManagedOwnerName']
        return data
      end
    end

    # Operation Parser for ListFirewallDomains
    class ListFirewallDomains
      def self.parse(http_resp)
        data = Types::ListFirewallDomainsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.domains = (FirewallDomains.parse(map['Domains']) unless map['Domains'].nil?)
        data
      end
    end

    class FirewallDomains
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for ListFirewallRuleGroupAssociations
    class ListFirewallRuleGroupAssociations
      def self.parse(http_resp)
        data = Types::ListFirewallRuleGroupAssociationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.firewall_rule_group_associations = (FirewallRuleGroupAssociations.parse(map['FirewallRuleGroupAssociations']) unless map['FirewallRuleGroupAssociations'].nil?)
        data
      end
    end

    class FirewallRuleGroupAssociations
      def self.parse(list)
        list.map do |value|
          FirewallRuleGroupAssociation.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListFirewallRuleGroups
    class ListFirewallRuleGroups
      def self.parse(http_resp)
        data = Types::ListFirewallRuleGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.firewall_rule_groups = (FirewallRuleGroupMetadataList.parse(map['FirewallRuleGroups']) unless map['FirewallRuleGroups'].nil?)
        data
      end
    end

    class FirewallRuleGroupMetadataList
      def self.parse(list)
        list.map do |value|
          FirewallRuleGroupMetadata.parse(value) unless value.nil?
        end
      end
    end

    class FirewallRuleGroupMetadata
      def self.parse(map)
        data = Types::FirewallRuleGroupMetadata.new
        data.id = map['Id']
        data.arn = map['Arn']
        data.name = map['Name']
        data.owner_id = map['OwnerId']
        data.creator_request_id = map['CreatorRequestId']
        data.share_status = map['ShareStatus']
        return data
      end
    end

    # Operation Parser for ListFirewallRules
    class ListFirewallRules
      def self.parse(http_resp)
        data = Types::ListFirewallRulesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.firewall_rules = (FirewallRules.parse(map['FirewallRules']) unless map['FirewallRules'].nil?)
        data
      end
    end

    class FirewallRules
      def self.parse(list)
        list.map do |value|
          FirewallRule.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListResolverConfigs
    class ListResolverConfigs
      def self.parse(http_resp)
        data = Types::ListResolverConfigsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.resolver_configs = (ResolverConfigList.parse(map['ResolverConfigs']) unless map['ResolverConfigs'].nil?)
        data
      end
    end

    class ResolverConfigList
      def self.parse(list)
        list.map do |value|
          ResolverConfig.parse(value) unless value.nil?
        end
      end
    end

    # Error Parser for InvalidNextTokenException
    class InvalidNextTokenException
      def self.parse(http_resp)
        data = Types::InvalidNextTokenException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for ListResolverDnssecConfigs
    class ListResolverDnssecConfigs
      def self.parse(http_resp)
        data = Types::ListResolverDnssecConfigsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.resolver_dnssec_configs = (ResolverDnssecConfigList.parse(map['ResolverDnssecConfigs']) unless map['ResolverDnssecConfigs'].nil?)
        data
      end
    end

    class ResolverDnssecConfigList
      def self.parse(list)
        list.map do |value|
          ResolverDnssecConfig.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListResolverEndpointIpAddresses
    class ListResolverEndpointIpAddresses
      def self.parse(http_resp)
        data = Types::ListResolverEndpointIpAddressesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.max_results = map['MaxResults']
        data.ip_addresses = (IpAddressesResponse.parse(map['IpAddresses']) unless map['IpAddresses'].nil?)
        data
      end
    end

    class IpAddressesResponse
      def self.parse(list)
        list.map do |value|
          IpAddressResponse.parse(value) unless value.nil?
        end
      end
    end

    class IpAddressResponse
      def self.parse(map)
        data = Types::IpAddressResponse.new
        data.ip_id = map['IpId']
        data.subnet_id = map['SubnetId']
        data.ip = map['Ip']
        data.status = map['Status']
        data.status_message = map['StatusMessage']
        data.creation_time = map['CreationTime']
        data.modification_time = map['ModificationTime']
        return data
      end
    end

    # Operation Parser for ListResolverEndpoints
    class ListResolverEndpoints
      def self.parse(http_resp)
        data = Types::ListResolverEndpointsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.max_results = map['MaxResults']
        data.resolver_endpoints = (ResolverEndpoints.parse(map['ResolverEndpoints']) unless map['ResolverEndpoints'].nil?)
        data
      end
    end

    class ResolverEndpoints
      def self.parse(list)
        list.map do |value|
          ResolverEndpoint.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListResolverQueryLogConfigAssociations
    class ListResolverQueryLogConfigAssociations
      def self.parse(http_resp)
        data = Types::ListResolverQueryLogConfigAssociationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.total_count = map['TotalCount']
        data.total_filtered_count = map['TotalFilteredCount']
        data.resolver_query_log_config_associations = (ResolverQueryLogConfigAssociationList.parse(map['ResolverQueryLogConfigAssociations']) unless map['ResolverQueryLogConfigAssociations'].nil?)
        data
      end
    end

    class ResolverQueryLogConfigAssociationList
      def self.parse(list)
        list.map do |value|
          ResolverQueryLogConfigAssociation.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListResolverQueryLogConfigs
    class ListResolverQueryLogConfigs
      def self.parse(http_resp)
        data = Types::ListResolverQueryLogConfigsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.total_count = map['TotalCount']
        data.total_filtered_count = map['TotalFilteredCount']
        data.resolver_query_log_configs = (ResolverQueryLogConfigList.parse(map['ResolverQueryLogConfigs']) unless map['ResolverQueryLogConfigs'].nil?)
        data
      end
    end

    class ResolverQueryLogConfigList
      def self.parse(list)
        list.map do |value|
          ResolverQueryLogConfig.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListResolverRuleAssociations
    class ListResolverRuleAssociations
      def self.parse(http_resp)
        data = Types::ListResolverRuleAssociationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.max_results = map['MaxResults']
        data.resolver_rule_associations = (ResolverRuleAssociations.parse(map['ResolverRuleAssociations']) unless map['ResolverRuleAssociations'].nil?)
        data
      end
    end

    class ResolverRuleAssociations
      def self.parse(list)
        list.map do |value|
          ResolverRuleAssociation.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListResolverRules
    class ListResolverRules
      def self.parse(http_resp)
        data = Types::ListResolverRulesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.max_results = map['MaxResults']
        data.resolver_rules = (ResolverRules.parse(map['ResolverRules']) unless map['ResolverRules'].nil?)
        data
      end
    end

    class ResolverRules
      def self.parse(list)
        list.map do |value|
          ResolverRule.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tags = (TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class TagList
      def self.parse(list)
        list.map do |value|
          Tag.parse(value) unless value.nil?
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

    # Operation Parser for PutFirewallRuleGroupPolicy
    class PutFirewallRuleGroupPolicy
      def self.parse(http_resp)
        data = Types::PutFirewallRuleGroupPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.return_value = map['ReturnValue']
        data
      end
    end

    # Operation Parser for PutResolverQueryLogConfigPolicy
    class PutResolverQueryLogConfigPolicy
      def self.parse(http_resp)
        data = Types::PutResolverQueryLogConfigPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.return_value = map['ReturnValue']
        data
      end
    end

    # Error Parser for InvalidPolicyDocument
    class InvalidPolicyDocument
      def self.parse(http_resp)
        data = Types::InvalidPolicyDocument.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for PutResolverRulePolicy
    class PutResolverRulePolicy
      def self.parse(http_resp)
        data = Types::PutResolverRulePolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.return_value = map['ReturnValue']
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

    # Error Parser for InvalidTagException
    class InvalidTagException
      def self.parse(http_resp)
        data = Types::InvalidTagException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
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

    # Operation Parser for UpdateFirewallConfig
    class UpdateFirewallConfig
      def self.parse(http_resp)
        data = Types::UpdateFirewallConfigOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.firewall_config = (FirewallConfig.parse(map['FirewallConfig']) unless map['FirewallConfig'].nil?)
        data
      end
    end

    # Operation Parser for UpdateFirewallDomains
    class UpdateFirewallDomains
      def self.parse(http_resp)
        data = Types::UpdateFirewallDomainsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.id = map['Id']
        data.name = map['Name']
        data.status = map['Status']
        data.status_message = map['StatusMessage']
        data
      end
    end

    # Operation Parser for UpdateFirewallRule
    class UpdateFirewallRule
      def self.parse(http_resp)
        data = Types::UpdateFirewallRuleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.firewall_rule = (FirewallRule.parse(map['FirewallRule']) unless map['FirewallRule'].nil?)
        data
      end
    end

    # Operation Parser for UpdateFirewallRuleGroupAssociation
    class UpdateFirewallRuleGroupAssociation
      def self.parse(http_resp)
        data = Types::UpdateFirewallRuleGroupAssociationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.firewall_rule_group_association = (FirewallRuleGroupAssociation.parse(map['FirewallRuleGroupAssociation']) unless map['FirewallRuleGroupAssociation'].nil?)
        data
      end
    end

    # Operation Parser for UpdateResolverConfig
    class UpdateResolverConfig
      def self.parse(http_resp)
        data = Types::UpdateResolverConfigOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resolver_config = (ResolverConfig.parse(map['ResolverConfig']) unless map['ResolverConfig'].nil?)
        data
      end
    end

    # Operation Parser for UpdateResolverDnssecConfig
    class UpdateResolverDnssecConfig
      def self.parse(http_resp)
        data = Types::UpdateResolverDnssecConfigOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resolver_dnssec_config = (ResolverDnssecConfig.parse(map['ResolverDNSSECConfig']) unless map['ResolverDNSSECConfig'].nil?)
        data
      end
    end

    # Operation Parser for UpdateResolverEndpoint
    class UpdateResolverEndpoint
      def self.parse(http_resp)
        data = Types::UpdateResolverEndpointOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resolver_endpoint = (ResolverEndpoint.parse(map['ResolverEndpoint']) unless map['ResolverEndpoint'].nil?)
        data
      end
    end

    # Operation Parser for UpdateResolverRule
    class UpdateResolverRule
      def self.parse(http_resp)
        data = Types::UpdateResolverRuleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resolver_rule = (ResolverRule.parse(map['ResolverRule']) unless map['ResolverRule'].nil?)
        data
      end
    end
  end
end
