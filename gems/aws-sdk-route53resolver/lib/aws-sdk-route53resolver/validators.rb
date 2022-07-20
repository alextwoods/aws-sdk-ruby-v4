# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Route53Resolver
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AssociateFirewallRuleGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateFirewallRuleGroupInput, context: context)
        Hearth::Validator.validate!(input[:creator_request_id], ::String, context: "#{context}[:creator_request_id]")
        Hearth::Validator.validate!(input[:firewall_rule_group_id], ::String, context: "#{context}[:firewall_rule_group_id]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:mutation_protection], ::String, context: "#{context}[:mutation_protection]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class AssociateFirewallRuleGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateFirewallRuleGroupOutput, context: context)
        FirewallRuleGroupAssociation.validate!(input[:firewall_rule_group_association], context: "#{context}[:firewall_rule_group_association]") unless input[:firewall_rule_group_association].nil?
      end
    end

    class AssociateResolverEndpointIpAddressInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateResolverEndpointIpAddressInput, context: context)
        Hearth::Validator.validate!(input[:resolver_endpoint_id], ::String, context: "#{context}[:resolver_endpoint_id]")
        IpAddressUpdate.validate!(input[:ip_address], context: "#{context}[:ip_address]") unless input[:ip_address].nil?
      end
    end

    class AssociateResolverEndpointIpAddressOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateResolverEndpointIpAddressOutput, context: context)
        ResolverEndpoint.validate!(input[:resolver_endpoint], context: "#{context}[:resolver_endpoint]") unless input[:resolver_endpoint].nil?
      end
    end

    class AssociateResolverQueryLogConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateResolverQueryLogConfigInput, context: context)
        Hearth::Validator.validate!(input[:resolver_query_log_config_id], ::String, context: "#{context}[:resolver_query_log_config_id]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
      end
    end

    class AssociateResolverQueryLogConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateResolverQueryLogConfigOutput, context: context)
        ResolverQueryLogConfigAssociation.validate!(input[:resolver_query_log_config_association], context: "#{context}[:resolver_query_log_config_association]") unless input[:resolver_query_log_config_association].nil?
      end
    end

    class AssociateResolverRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateResolverRuleInput, context: context)
        Hearth::Validator.validate!(input[:resolver_rule_id], ::String, context: "#{context}[:resolver_rule_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
      end
    end

    class AssociateResolverRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateResolverRuleOutput, context: context)
        ResolverRuleAssociation.validate!(input[:resolver_rule_association], context: "#{context}[:resolver_rule_association]") unless input[:resolver_rule_association].nil?
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateFirewallDomainListInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFirewallDomainListInput, context: context)
        Hearth::Validator.validate!(input[:creator_request_id], ::String, context: "#{context}[:creator_request_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateFirewallDomainListOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFirewallDomainListOutput, context: context)
        FirewallDomainList.validate!(input[:firewall_domain_list], context: "#{context}[:firewall_domain_list]") unless input[:firewall_domain_list].nil?
      end
    end

    class CreateFirewallRuleGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFirewallRuleGroupInput, context: context)
        Hearth::Validator.validate!(input[:creator_request_id], ::String, context: "#{context}[:creator_request_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateFirewallRuleGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFirewallRuleGroupOutput, context: context)
        FirewallRuleGroup.validate!(input[:firewall_rule_group], context: "#{context}[:firewall_rule_group]") unless input[:firewall_rule_group].nil?
      end
    end

    class CreateFirewallRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFirewallRuleInput, context: context)
        Hearth::Validator.validate!(input[:creator_request_id], ::String, context: "#{context}[:creator_request_id]")
        Hearth::Validator.validate!(input[:firewall_rule_group_id], ::String, context: "#{context}[:firewall_rule_group_id]")
        Hearth::Validator.validate!(input[:firewall_domain_list_id], ::String, context: "#{context}[:firewall_domain_list_id]")
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Hearth::Validator.validate!(input[:block_response], ::String, context: "#{context}[:block_response]")
        Hearth::Validator.validate!(input[:block_override_domain], ::String, context: "#{context}[:block_override_domain]")
        Hearth::Validator.validate!(input[:block_override_dns_type], ::String, context: "#{context}[:block_override_dns_type]")
        Hearth::Validator.validate!(input[:block_override_ttl], ::Integer, context: "#{context}[:block_override_ttl]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class CreateFirewallRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFirewallRuleOutput, context: context)
        FirewallRule.validate!(input[:firewall_rule], context: "#{context}[:firewall_rule]") unless input[:firewall_rule].nil?
      end
    end

    class CreateResolverEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateResolverEndpointInput, context: context)
        Hearth::Validator.validate!(input[:creator_request_id], ::String, context: "#{context}[:creator_request_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        SecurityGroupIds.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        Hearth::Validator.validate!(input[:direction], ::String, context: "#{context}[:direction]")
        IpAddressesRequest.validate!(input[:ip_addresses], context: "#{context}[:ip_addresses]") unless input[:ip_addresses].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateResolverEndpointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateResolverEndpointOutput, context: context)
        ResolverEndpoint.validate!(input[:resolver_endpoint], context: "#{context}[:resolver_endpoint]") unless input[:resolver_endpoint].nil?
      end
    end

    class CreateResolverQueryLogConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateResolverQueryLogConfigInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:destination_arn], ::String, context: "#{context}[:destination_arn]")
        Hearth::Validator.validate!(input[:creator_request_id], ::String, context: "#{context}[:creator_request_id]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateResolverQueryLogConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateResolverQueryLogConfigOutput, context: context)
        ResolverQueryLogConfig.validate!(input[:resolver_query_log_config], context: "#{context}[:resolver_query_log_config]") unless input[:resolver_query_log_config].nil?
      end
    end

    class CreateResolverRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateResolverRuleInput, context: context)
        Hearth::Validator.validate!(input[:creator_request_id], ::String, context: "#{context}[:creator_request_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:rule_type], ::String, context: "#{context}[:rule_type]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        TargetList.validate!(input[:target_ips], context: "#{context}[:target_ips]") unless input[:target_ips].nil?
        Hearth::Validator.validate!(input[:resolver_endpoint_id], ::String, context: "#{context}[:resolver_endpoint_id]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateResolverRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateResolverRuleOutput, context: context)
        ResolverRule.validate!(input[:resolver_rule], context: "#{context}[:resolver_rule]") unless input[:resolver_rule].nil?
      end
    end

    class DeleteFirewallDomainListInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFirewallDomainListInput, context: context)
        Hearth::Validator.validate!(input[:firewall_domain_list_id], ::String, context: "#{context}[:firewall_domain_list_id]")
      end
    end

    class DeleteFirewallDomainListOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFirewallDomainListOutput, context: context)
        FirewallDomainList.validate!(input[:firewall_domain_list], context: "#{context}[:firewall_domain_list]") unless input[:firewall_domain_list].nil?
      end
    end

    class DeleteFirewallRuleGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFirewallRuleGroupInput, context: context)
        Hearth::Validator.validate!(input[:firewall_rule_group_id], ::String, context: "#{context}[:firewall_rule_group_id]")
      end
    end

    class DeleteFirewallRuleGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFirewallRuleGroupOutput, context: context)
        FirewallRuleGroup.validate!(input[:firewall_rule_group], context: "#{context}[:firewall_rule_group]") unless input[:firewall_rule_group].nil?
      end
    end

    class DeleteFirewallRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFirewallRuleInput, context: context)
        Hearth::Validator.validate!(input[:firewall_rule_group_id], ::String, context: "#{context}[:firewall_rule_group_id]")
        Hearth::Validator.validate!(input[:firewall_domain_list_id], ::String, context: "#{context}[:firewall_domain_list_id]")
      end
    end

    class DeleteFirewallRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFirewallRuleOutput, context: context)
        FirewallRule.validate!(input[:firewall_rule], context: "#{context}[:firewall_rule]") unless input[:firewall_rule].nil?
      end
    end

    class DeleteResolverEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResolverEndpointInput, context: context)
        Hearth::Validator.validate!(input[:resolver_endpoint_id], ::String, context: "#{context}[:resolver_endpoint_id]")
      end
    end

    class DeleteResolverEndpointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResolverEndpointOutput, context: context)
        ResolverEndpoint.validate!(input[:resolver_endpoint], context: "#{context}[:resolver_endpoint]") unless input[:resolver_endpoint].nil?
      end
    end

    class DeleteResolverQueryLogConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResolverQueryLogConfigInput, context: context)
        Hearth::Validator.validate!(input[:resolver_query_log_config_id], ::String, context: "#{context}[:resolver_query_log_config_id]")
      end
    end

    class DeleteResolverQueryLogConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResolverQueryLogConfigOutput, context: context)
        ResolverQueryLogConfig.validate!(input[:resolver_query_log_config], context: "#{context}[:resolver_query_log_config]") unless input[:resolver_query_log_config].nil?
      end
    end

    class DeleteResolverRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResolverRuleInput, context: context)
        Hearth::Validator.validate!(input[:resolver_rule_id], ::String, context: "#{context}[:resolver_rule_id]")
      end
    end

    class DeleteResolverRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResolverRuleOutput, context: context)
        ResolverRule.validate!(input[:resolver_rule], context: "#{context}[:resolver_rule]") unless input[:resolver_rule].nil?
      end
    end

    class DisassociateFirewallRuleGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateFirewallRuleGroupInput, context: context)
        Hearth::Validator.validate!(input[:firewall_rule_group_association_id], ::String, context: "#{context}[:firewall_rule_group_association_id]")
      end
    end

    class DisassociateFirewallRuleGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateFirewallRuleGroupOutput, context: context)
        FirewallRuleGroupAssociation.validate!(input[:firewall_rule_group_association], context: "#{context}[:firewall_rule_group_association]") unless input[:firewall_rule_group_association].nil?
      end
    end

    class DisassociateResolverEndpointIpAddressInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateResolverEndpointIpAddressInput, context: context)
        Hearth::Validator.validate!(input[:resolver_endpoint_id], ::String, context: "#{context}[:resolver_endpoint_id]")
        IpAddressUpdate.validate!(input[:ip_address], context: "#{context}[:ip_address]") unless input[:ip_address].nil?
      end
    end

    class DisassociateResolverEndpointIpAddressOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateResolverEndpointIpAddressOutput, context: context)
        ResolverEndpoint.validate!(input[:resolver_endpoint], context: "#{context}[:resolver_endpoint]") unless input[:resolver_endpoint].nil?
      end
    end

    class DisassociateResolverQueryLogConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateResolverQueryLogConfigInput, context: context)
        Hearth::Validator.validate!(input[:resolver_query_log_config_id], ::String, context: "#{context}[:resolver_query_log_config_id]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
      end
    end

    class DisassociateResolverQueryLogConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateResolverQueryLogConfigOutput, context: context)
        ResolverQueryLogConfigAssociation.validate!(input[:resolver_query_log_config_association], context: "#{context}[:resolver_query_log_config_association]") unless input[:resolver_query_log_config_association].nil?
      end
    end

    class DisassociateResolverRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateResolverRuleInput, context: context)
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:resolver_rule_id], ::String, context: "#{context}[:resolver_rule_id]")
      end
    end

    class DisassociateResolverRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateResolverRuleOutput, context: context)
        ResolverRuleAssociation.validate!(input[:resolver_rule_association], context: "#{context}[:resolver_rule_association]") unless input[:resolver_rule_association].nil?
      end
    end

    class Filter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Filter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        FilterValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
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

    class Filters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Filter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FirewallConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FirewallConfig, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:owner_id], ::String, context: "#{context}[:owner_id]")
        Hearth::Validator.validate!(input[:firewall_fail_open], ::String, context: "#{context}[:firewall_fail_open]")
      end
    end

    class FirewallConfigList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          FirewallConfig.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FirewallDomainList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FirewallDomainList, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:domain_count], ::Integer, context: "#{context}[:domain_count]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:managed_owner_name], ::String, context: "#{context}[:managed_owner_name]")
        Hearth::Validator.validate!(input[:creator_request_id], ::String, context: "#{context}[:creator_request_id]")
        Hearth::Validator.validate!(input[:creation_time], ::String, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:modification_time], ::String, context: "#{context}[:modification_time]")
      end
    end

    class FirewallDomainListMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FirewallDomainListMetadata, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:creator_request_id], ::String, context: "#{context}[:creator_request_id]")
        Hearth::Validator.validate!(input[:managed_owner_name], ::String, context: "#{context}[:managed_owner_name]")
      end
    end

    class FirewallDomainListMetadataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          FirewallDomainListMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FirewallDomains
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class FirewallRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FirewallRule, context: context)
        Hearth::Validator.validate!(input[:firewall_rule_group_id], ::String, context: "#{context}[:firewall_rule_group_id]")
        Hearth::Validator.validate!(input[:firewall_domain_list_id], ::String, context: "#{context}[:firewall_domain_list_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Hearth::Validator.validate!(input[:block_response], ::String, context: "#{context}[:block_response]")
        Hearth::Validator.validate!(input[:block_override_domain], ::String, context: "#{context}[:block_override_domain]")
        Hearth::Validator.validate!(input[:block_override_dns_type], ::String, context: "#{context}[:block_override_dns_type]")
        Hearth::Validator.validate!(input[:block_override_ttl], ::Integer, context: "#{context}[:block_override_ttl]")
        Hearth::Validator.validate!(input[:creator_request_id], ::String, context: "#{context}[:creator_request_id]")
        Hearth::Validator.validate!(input[:creation_time], ::String, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:modification_time], ::String, context: "#{context}[:modification_time]")
      end
    end

    class FirewallRuleGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FirewallRuleGroup, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:rule_count], ::Integer, context: "#{context}[:rule_count]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:owner_id], ::String, context: "#{context}[:owner_id]")
        Hearth::Validator.validate!(input[:creator_request_id], ::String, context: "#{context}[:creator_request_id]")
        Hearth::Validator.validate!(input[:share_status], ::String, context: "#{context}[:share_status]")
        Hearth::Validator.validate!(input[:creation_time], ::String, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:modification_time], ::String, context: "#{context}[:modification_time]")
      end
    end

    class FirewallRuleGroupAssociation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FirewallRuleGroupAssociation, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:firewall_rule_group_id], ::String, context: "#{context}[:firewall_rule_group_id]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
        Hearth::Validator.validate!(input[:mutation_protection], ::String, context: "#{context}[:mutation_protection]")
        Hearth::Validator.validate!(input[:managed_owner_name], ::String, context: "#{context}[:managed_owner_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:creator_request_id], ::String, context: "#{context}[:creator_request_id]")
        Hearth::Validator.validate!(input[:creation_time], ::String, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:modification_time], ::String, context: "#{context}[:modification_time]")
      end
    end

    class FirewallRuleGroupAssociations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          FirewallRuleGroupAssociation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FirewallRuleGroupMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FirewallRuleGroupMetadata, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:owner_id], ::String, context: "#{context}[:owner_id]")
        Hearth::Validator.validate!(input[:creator_request_id], ::String, context: "#{context}[:creator_request_id]")
        Hearth::Validator.validate!(input[:share_status], ::String, context: "#{context}[:share_status]")
      end
    end

    class FirewallRuleGroupMetadataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          FirewallRuleGroupMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FirewallRules
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          FirewallRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetFirewallConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFirewallConfigInput, context: context)
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
      end
    end

    class GetFirewallConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFirewallConfigOutput, context: context)
        FirewallConfig.validate!(input[:firewall_config], context: "#{context}[:firewall_config]") unless input[:firewall_config].nil?
      end
    end

    class GetFirewallDomainListInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFirewallDomainListInput, context: context)
        Hearth::Validator.validate!(input[:firewall_domain_list_id], ::String, context: "#{context}[:firewall_domain_list_id]")
      end
    end

    class GetFirewallDomainListOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFirewallDomainListOutput, context: context)
        FirewallDomainList.validate!(input[:firewall_domain_list], context: "#{context}[:firewall_domain_list]") unless input[:firewall_domain_list].nil?
      end
    end

    class GetFirewallRuleGroupAssociationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFirewallRuleGroupAssociationInput, context: context)
        Hearth::Validator.validate!(input[:firewall_rule_group_association_id], ::String, context: "#{context}[:firewall_rule_group_association_id]")
      end
    end

    class GetFirewallRuleGroupAssociationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFirewallRuleGroupAssociationOutput, context: context)
        FirewallRuleGroupAssociation.validate!(input[:firewall_rule_group_association], context: "#{context}[:firewall_rule_group_association]") unless input[:firewall_rule_group_association].nil?
      end
    end

    class GetFirewallRuleGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFirewallRuleGroupInput, context: context)
        Hearth::Validator.validate!(input[:firewall_rule_group_id], ::String, context: "#{context}[:firewall_rule_group_id]")
      end
    end

    class GetFirewallRuleGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFirewallRuleGroupOutput, context: context)
        FirewallRuleGroup.validate!(input[:firewall_rule_group], context: "#{context}[:firewall_rule_group]") unless input[:firewall_rule_group].nil?
      end
    end

    class GetFirewallRuleGroupPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFirewallRuleGroupPolicyInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class GetFirewallRuleGroupPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFirewallRuleGroupPolicyOutput, context: context)
        Hearth::Validator.validate!(input[:firewall_rule_group_policy], ::String, context: "#{context}[:firewall_rule_group_policy]")
      end
    end

    class GetResolverConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResolverConfigInput, context: context)
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
      end
    end

    class GetResolverConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResolverConfigOutput, context: context)
        ResolverConfig.validate!(input[:resolver_config], context: "#{context}[:resolver_config]") unless input[:resolver_config].nil?
      end
    end

    class GetResolverDnssecConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResolverDnssecConfigInput, context: context)
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
      end
    end

    class GetResolverDnssecConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResolverDnssecConfigOutput, context: context)
        ResolverDnssecConfig.validate!(input[:resolver_dnssec_config], context: "#{context}[:resolver_dnssec_config]") unless input[:resolver_dnssec_config].nil?
      end
    end

    class GetResolverEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResolverEndpointInput, context: context)
        Hearth::Validator.validate!(input[:resolver_endpoint_id], ::String, context: "#{context}[:resolver_endpoint_id]")
      end
    end

    class GetResolverEndpointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResolverEndpointOutput, context: context)
        ResolverEndpoint.validate!(input[:resolver_endpoint], context: "#{context}[:resolver_endpoint]") unless input[:resolver_endpoint].nil?
      end
    end

    class GetResolverQueryLogConfigAssociationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResolverQueryLogConfigAssociationInput, context: context)
        Hearth::Validator.validate!(input[:resolver_query_log_config_association_id], ::String, context: "#{context}[:resolver_query_log_config_association_id]")
      end
    end

    class GetResolverQueryLogConfigAssociationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResolverQueryLogConfigAssociationOutput, context: context)
        ResolverQueryLogConfigAssociation.validate!(input[:resolver_query_log_config_association], context: "#{context}[:resolver_query_log_config_association]") unless input[:resolver_query_log_config_association].nil?
      end
    end

    class GetResolverQueryLogConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResolverQueryLogConfigInput, context: context)
        Hearth::Validator.validate!(input[:resolver_query_log_config_id], ::String, context: "#{context}[:resolver_query_log_config_id]")
      end
    end

    class GetResolverQueryLogConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResolverQueryLogConfigOutput, context: context)
        ResolverQueryLogConfig.validate!(input[:resolver_query_log_config], context: "#{context}[:resolver_query_log_config]") unless input[:resolver_query_log_config].nil?
      end
    end

    class GetResolverQueryLogConfigPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResolverQueryLogConfigPolicyInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class GetResolverQueryLogConfigPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResolverQueryLogConfigPolicyOutput, context: context)
        Hearth::Validator.validate!(input[:resolver_query_log_config_policy], ::String, context: "#{context}[:resolver_query_log_config_policy]")
      end
    end

    class GetResolverRuleAssociationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResolverRuleAssociationInput, context: context)
        Hearth::Validator.validate!(input[:resolver_rule_association_id], ::String, context: "#{context}[:resolver_rule_association_id]")
      end
    end

    class GetResolverRuleAssociationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResolverRuleAssociationOutput, context: context)
        ResolverRuleAssociation.validate!(input[:resolver_rule_association], context: "#{context}[:resolver_rule_association]") unless input[:resolver_rule_association].nil?
      end
    end

    class GetResolverRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResolverRuleInput, context: context)
        Hearth::Validator.validate!(input[:resolver_rule_id], ::String, context: "#{context}[:resolver_rule_id]")
      end
    end

    class GetResolverRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResolverRuleOutput, context: context)
        ResolverRule.validate!(input[:resolver_rule], context: "#{context}[:resolver_rule]") unless input[:resolver_rule].nil?
      end
    end

    class GetResolverRulePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResolverRulePolicyInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class GetResolverRulePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResolverRulePolicyOutput, context: context)
        Hearth::Validator.validate!(input[:resolver_rule_policy], ::String, context: "#{context}[:resolver_rule_policy]")
      end
    end

    class ImportFirewallDomainsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportFirewallDomainsInput, context: context)
        Hearth::Validator.validate!(input[:firewall_domain_list_id], ::String, context: "#{context}[:firewall_domain_list_id]")
        Hearth::Validator.validate!(input[:operation], ::String, context: "#{context}[:operation]")
        Hearth::Validator.validate!(input[:domain_file_url], ::String, context: "#{context}[:domain_file_url]")
      end
    end

    class ImportFirewallDomainsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportFirewallDomainsOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
      end
    end

    class InternalServiceErrorException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServiceErrorException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidNextTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidNextTokenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidParameterException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParameterException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:field_name], ::String, context: "#{context}[:field_name]")
      end
    end

    class InvalidPolicyDocument
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidPolicyDocument, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidTagException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidTagException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class IpAddressRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IpAddressRequest, context: context)
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
        Hearth::Validator.validate!(input[:ip], ::String, context: "#{context}[:ip]")
      end
    end

    class IpAddressResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IpAddressResponse, context: context)
        Hearth::Validator.validate!(input[:ip_id], ::String, context: "#{context}[:ip_id]")
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
        Hearth::Validator.validate!(input[:ip], ::String, context: "#{context}[:ip]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:creation_time], ::String, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:modification_time], ::String, context: "#{context}[:modification_time]")
      end
    end

    class IpAddressUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IpAddressUpdate, context: context)
        Hearth::Validator.validate!(input[:ip_id], ::String, context: "#{context}[:ip_id]")
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
        Hearth::Validator.validate!(input[:ip], ::String, context: "#{context}[:ip]")
      end
    end

    class IpAddressesRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          IpAddressRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class IpAddressesResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          IpAddressResponse.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class ListFirewallConfigsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFirewallConfigsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListFirewallConfigsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFirewallConfigsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        FirewallConfigList.validate!(input[:firewall_configs], context: "#{context}[:firewall_configs]") unless input[:firewall_configs].nil?
      end
    end

    class ListFirewallDomainListsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFirewallDomainListsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListFirewallDomainListsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFirewallDomainListsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        FirewallDomainListMetadataList.validate!(input[:firewall_domain_lists], context: "#{context}[:firewall_domain_lists]") unless input[:firewall_domain_lists].nil?
      end
    end

    class ListFirewallDomainsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFirewallDomainsInput, context: context)
        Hearth::Validator.validate!(input[:firewall_domain_list_id], ::String, context: "#{context}[:firewall_domain_list_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListFirewallDomainsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFirewallDomainsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        FirewallDomains.validate!(input[:domains], context: "#{context}[:domains]") unless input[:domains].nil?
      end
    end

    class ListFirewallRuleGroupAssociationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFirewallRuleGroupAssociationsInput, context: context)
        Hearth::Validator.validate!(input[:firewall_rule_group_id], ::String, context: "#{context}[:firewall_rule_group_id]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListFirewallRuleGroupAssociationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFirewallRuleGroupAssociationsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        FirewallRuleGroupAssociations.validate!(input[:firewall_rule_group_associations], context: "#{context}[:firewall_rule_group_associations]") unless input[:firewall_rule_group_associations].nil?
      end
    end

    class ListFirewallRuleGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFirewallRuleGroupsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListFirewallRuleGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFirewallRuleGroupsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        FirewallRuleGroupMetadataList.validate!(input[:firewall_rule_groups], context: "#{context}[:firewall_rule_groups]") unless input[:firewall_rule_groups].nil?
      end
    end

    class ListFirewallRulesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFirewallRulesInput, context: context)
        Hearth::Validator.validate!(input[:firewall_rule_group_id], ::String, context: "#{context}[:firewall_rule_group_id]")
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListFirewallRulesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFirewallRulesOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        FirewallRules.validate!(input[:firewall_rules], context: "#{context}[:firewall_rules]") unless input[:firewall_rules].nil?
      end
    end

    class ListResolverConfigsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResolverConfigsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListResolverConfigsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResolverConfigsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        ResolverConfigList.validate!(input[:resolver_configs], context: "#{context}[:resolver_configs]") unless input[:resolver_configs].nil?
      end
    end

    class ListResolverDnssecConfigsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResolverDnssecConfigsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Filters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class ListResolverDnssecConfigsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResolverDnssecConfigsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        ResolverDnssecConfigList.validate!(input[:resolver_dnssec_configs], context: "#{context}[:resolver_dnssec_configs]") unless input[:resolver_dnssec_configs].nil?
      end
    end

    class ListResolverEndpointIpAddressesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResolverEndpointIpAddressesInput, context: context)
        Hearth::Validator.validate!(input[:resolver_endpoint_id], ::String, context: "#{context}[:resolver_endpoint_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListResolverEndpointIpAddressesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResolverEndpointIpAddressesOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        IpAddressesResponse.validate!(input[:ip_addresses], context: "#{context}[:ip_addresses]") unless input[:ip_addresses].nil?
      end
    end

    class ListResolverEndpointsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResolverEndpointsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Filters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class ListResolverEndpointsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResolverEndpointsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        ResolverEndpoints.validate!(input[:resolver_endpoints], context: "#{context}[:resolver_endpoints]") unless input[:resolver_endpoints].nil?
      end
    end

    class ListResolverQueryLogConfigAssociationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResolverQueryLogConfigAssociationsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Filters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
      end
    end

    class ListResolverQueryLogConfigAssociationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResolverQueryLogConfigAssociationsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:total_count], ::Integer, context: "#{context}[:total_count]")
        Hearth::Validator.validate!(input[:total_filtered_count], ::Integer, context: "#{context}[:total_filtered_count]")
        ResolverQueryLogConfigAssociationList.validate!(input[:resolver_query_log_config_associations], context: "#{context}[:resolver_query_log_config_associations]") unless input[:resolver_query_log_config_associations].nil?
      end
    end

    class ListResolverQueryLogConfigsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResolverQueryLogConfigsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Filters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
      end
    end

    class ListResolverQueryLogConfigsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResolverQueryLogConfigsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:total_count], ::Integer, context: "#{context}[:total_count]")
        Hearth::Validator.validate!(input[:total_filtered_count], ::Integer, context: "#{context}[:total_filtered_count]")
        ResolverQueryLogConfigList.validate!(input[:resolver_query_log_configs], context: "#{context}[:resolver_query_log_configs]") unless input[:resolver_query_log_configs].nil?
      end
    end

    class ListResolverRuleAssociationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResolverRuleAssociationsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Filters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class ListResolverRuleAssociationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResolverRuleAssociationsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        ResolverRuleAssociations.validate!(input[:resolver_rule_associations], context: "#{context}[:resolver_rule_associations]") unless input[:resolver_rule_associations].nil?
      end
    end

    class ListResolverRulesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResolverRulesInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Filters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class ListResolverRulesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResolverRulesOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        ResolverRules.validate!(input[:resolver_rules], context: "#{context}[:resolver_rules]") unless input[:resolver_rules].nil?
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class PutFirewallRuleGroupPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutFirewallRuleGroupPolicyInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:firewall_rule_group_policy], ::String, context: "#{context}[:firewall_rule_group_policy]")
      end
    end

    class PutFirewallRuleGroupPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutFirewallRuleGroupPolicyOutput, context: context)
        Hearth::Validator.validate!(input[:return_value], ::TrueClass, ::FalseClass, context: "#{context}[:return_value]")
      end
    end

    class PutResolverQueryLogConfigPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutResolverQueryLogConfigPolicyInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:resolver_query_log_config_policy], ::String, context: "#{context}[:resolver_query_log_config_policy]")
      end
    end

    class PutResolverQueryLogConfigPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutResolverQueryLogConfigPolicyOutput, context: context)
        Hearth::Validator.validate!(input[:return_value], ::TrueClass, ::FalseClass, context: "#{context}[:return_value]")
      end
    end

    class PutResolverRulePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutResolverRulePolicyInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:resolver_rule_policy], ::String, context: "#{context}[:resolver_rule_policy]")
      end
    end

    class PutResolverRulePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutResolverRulePolicyOutput, context: context)
        Hearth::Validator.validate!(input[:return_value], ::TrueClass, ::FalseClass, context: "#{context}[:return_value]")
      end
    end

    class ResolverConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResolverConfig, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:owner_id], ::String, context: "#{context}[:owner_id]")
        Hearth::Validator.validate!(input[:autodefined_reverse], ::String, context: "#{context}[:autodefined_reverse]")
      end
    end

    class ResolverConfigList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ResolverConfig.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResolverDnssecConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResolverDnssecConfig, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:owner_id], ::String, context: "#{context}[:owner_id]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:validation_status], ::String, context: "#{context}[:validation_status]")
      end
    end

    class ResolverDnssecConfigList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ResolverDnssecConfig.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResolverEndpoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResolverEndpoint, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:creator_request_id], ::String, context: "#{context}[:creator_request_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        SecurityGroupIds.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        Hearth::Validator.validate!(input[:direction], ::String, context: "#{context}[:direction]")
        Hearth::Validator.validate!(input[:ip_address_count], ::Integer, context: "#{context}[:ip_address_count]")
        Hearth::Validator.validate!(input[:host_vpc_id], ::String, context: "#{context}[:host_vpc_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:creation_time], ::String, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:modification_time], ::String, context: "#{context}[:modification_time]")
      end
    end

    class ResolverEndpoints
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ResolverEndpoint.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResolverQueryLogConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResolverQueryLogConfig, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:owner_id], ::String, context: "#{context}[:owner_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:share_status], ::String, context: "#{context}[:share_status]")
        Hearth::Validator.validate!(input[:association_count], ::Integer, context: "#{context}[:association_count]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:destination_arn], ::String, context: "#{context}[:destination_arn]")
        Hearth::Validator.validate!(input[:creator_request_id], ::String, context: "#{context}[:creator_request_id]")
        Hearth::Validator.validate!(input[:creation_time], ::String, context: "#{context}[:creation_time]")
      end
    end

    class ResolverQueryLogConfigAssociation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResolverQueryLogConfigAssociation, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:resolver_query_log_config_id], ::String, context: "#{context}[:resolver_query_log_config_id]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
        Hearth::Validator.validate!(input[:creation_time], ::String, context: "#{context}[:creation_time]")
      end
    end

    class ResolverQueryLogConfigAssociationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ResolverQueryLogConfigAssociation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResolverQueryLogConfigList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ResolverQueryLogConfig.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResolverRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResolverRule, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:creator_request_id], ::String, context: "#{context}[:creator_request_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:rule_type], ::String, context: "#{context}[:rule_type]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        TargetList.validate!(input[:target_ips], context: "#{context}[:target_ips]") unless input[:target_ips].nil?
        Hearth::Validator.validate!(input[:resolver_endpoint_id], ::String, context: "#{context}[:resolver_endpoint_id]")
        Hearth::Validator.validate!(input[:owner_id], ::String, context: "#{context}[:owner_id]")
        Hearth::Validator.validate!(input[:share_status], ::String, context: "#{context}[:share_status]")
        Hearth::Validator.validate!(input[:creation_time], ::String, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:modification_time], ::String, context: "#{context}[:modification_time]")
      end
    end

    class ResolverRuleAssociation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResolverRuleAssociation, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:resolver_rule_id], ::String, context: "#{context}[:resolver_rule_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
      end
    end

    class ResolverRuleAssociations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ResolverRuleAssociation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResolverRuleConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResolverRuleConfig, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        TargetList.validate!(input[:target_ips], context: "#{context}[:target_ips]") unless input[:target_ips].nil?
        Hearth::Validator.validate!(input[:resolver_endpoint_id], ::String, context: "#{context}[:resolver_endpoint_id]")
      end
    end

    class ResolverRules
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ResolverRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class ResourceInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceInUseException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class ResourceUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceUnavailableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class SecurityGroupIds
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
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TargetAddress
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TargetAddress, context: context)
        Hearth::Validator.validate!(input[:ip], ::String, context: "#{context}[:ip]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
      end
    end

    class TargetList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TargetAddress.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnknownResourceException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnknownResourceException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateFirewallConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFirewallConfigInput, context: context)
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:firewall_fail_open], ::String, context: "#{context}[:firewall_fail_open]")
      end
    end

    class UpdateFirewallConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFirewallConfigOutput, context: context)
        FirewallConfig.validate!(input[:firewall_config], context: "#{context}[:firewall_config]") unless input[:firewall_config].nil?
      end
    end

    class UpdateFirewallDomainsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFirewallDomainsInput, context: context)
        Hearth::Validator.validate!(input[:firewall_domain_list_id], ::String, context: "#{context}[:firewall_domain_list_id]")
        Hearth::Validator.validate!(input[:operation], ::String, context: "#{context}[:operation]")
        FirewallDomains.validate!(input[:domains], context: "#{context}[:domains]") unless input[:domains].nil?
      end
    end

    class UpdateFirewallDomainsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFirewallDomainsOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
      end
    end

    class UpdateFirewallRuleGroupAssociationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFirewallRuleGroupAssociationInput, context: context)
        Hearth::Validator.validate!(input[:firewall_rule_group_association_id], ::String, context: "#{context}[:firewall_rule_group_association_id]")
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
        Hearth::Validator.validate!(input[:mutation_protection], ::String, context: "#{context}[:mutation_protection]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class UpdateFirewallRuleGroupAssociationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFirewallRuleGroupAssociationOutput, context: context)
        FirewallRuleGroupAssociation.validate!(input[:firewall_rule_group_association], context: "#{context}[:firewall_rule_group_association]") unless input[:firewall_rule_group_association].nil?
      end
    end

    class UpdateFirewallRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFirewallRuleInput, context: context)
        Hearth::Validator.validate!(input[:firewall_rule_group_id], ::String, context: "#{context}[:firewall_rule_group_id]")
        Hearth::Validator.validate!(input[:firewall_domain_list_id], ::String, context: "#{context}[:firewall_domain_list_id]")
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Hearth::Validator.validate!(input[:block_response], ::String, context: "#{context}[:block_response]")
        Hearth::Validator.validate!(input[:block_override_domain], ::String, context: "#{context}[:block_override_domain]")
        Hearth::Validator.validate!(input[:block_override_dns_type], ::String, context: "#{context}[:block_override_dns_type]")
        Hearth::Validator.validate!(input[:block_override_ttl], ::Integer, context: "#{context}[:block_override_ttl]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class UpdateFirewallRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFirewallRuleOutput, context: context)
        FirewallRule.validate!(input[:firewall_rule], context: "#{context}[:firewall_rule]") unless input[:firewall_rule].nil?
      end
    end

    class UpdateResolverConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateResolverConfigInput, context: context)
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:autodefined_reverse_flag], ::String, context: "#{context}[:autodefined_reverse_flag]")
      end
    end

    class UpdateResolverConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateResolverConfigOutput, context: context)
        ResolverConfig.validate!(input[:resolver_config], context: "#{context}[:resolver_config]") unless input[:resolver_config].nil?
      end
    end

    class UpdateResolverDnssecConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateResolverDnssecConfigInput, context: context)
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:validation], ::String, context: "#{context}[:validation]")
      end
    end

    class UpdateResolverDnssecConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateResolverDnssecConfigOutput, context: context)
        ResolverDnssecConfig.validate!(input[:resolver_dnssec_config], context: "#{context}[:resolver_dnssec_config]") unless input[:resolver_dnssec_config].nil?
      end
    end

    class UpdateResolverEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateResolverEndpointInput, context: context)
        Hearth::Validator.validate!(input[:resolver_endpoint_id], ::String, context: "#{context}[:resolver_endpoint_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class UpdateResolverEndpointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateResolverEndpointOutput, context: context)
        ResolverEndpoint.validate!(input[:resolver_endpoint], context: "#{context}[:resolver_endpoint]") unless input[:resolver_endpoint].nil?
      end
    end

    class UpdateResolverRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateResolverRuleInput, context: context)
        Hearth::Validator.validate!(input[:resolver_rule_id], ::String, context: "#{context}[:resolver_rule_id]")
        ResolverRuleConfig.validate!(input[:config], context: "#{context}[:config]") unless input[:config].nil?
      end
    end

    class UpdateResolverRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateResolverRuleOutput, context: context)
        ResolverRule.validate!(input[:resolver_rule], context: "#{context}[:resolver_rule]") unless input[:resolver_rule].nil?
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

  end
end
