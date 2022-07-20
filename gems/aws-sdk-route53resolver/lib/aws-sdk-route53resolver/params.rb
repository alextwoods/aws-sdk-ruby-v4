# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::Route53Resolver
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module AssociateFirewallRuleGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateFirewallRuleGroupInput, context: context)
        type = Types::AssociateFirewallRuleGroupInput.new
        type.creator_request_id = params[:creator_request_id] || ::SecureRandom.uuid
        type.firewall_rule_group_id = params[:firewall_rule_group_id]
        type.vpc_id = params[:vpc_id]
        type.priority = params[:priority]
        type.name = params[:name]
        type.mutation_protection = params[:mutation_protection]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module AssociateFirewallRuleGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateFirewallRuleGroupOutput, context: context)
        type = Types::AssociateFirewallRuleGroupOutput.new
        type.firewall_rule_group_association = FirewallRuleGroupAssociation.build(params[:firewall_rule_group_association], context: "#{context}[:firewall_rule_group_association]") unless params[:firewall_rule_group_association].nil?
        type
      end
    end

    module AssociateResolverEndpointIpAddressInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateResolverEndpointIpAddressInput, context: context)
        type = Types::AssociateResolverEndpointIpAddressInput.new
        type.resolver_endpoint_id = params[:resolver_endpoint_id]
        type.ip_address = IpAddressUpdate.build(params[:ip_address], context: "#{context}[:ip_address]") unless params[:ip_address].nil?
        type
      end
    end

    module AssociateResolverEndpointIpAddressOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateResolverEndpointIpAddressOutput, context: context)
        type = Types::AssociateResolverEndpointIpAddressOutput.new
        type.resolver_endpoint = ResolverEndpoint.build(params[:resolver_endpoint], context: "#{context}[:resolver_endpoint]") unless params[:resolver_endpoint].nil?
        type
      end
    end

    module AssociateResolverQueryLogConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateResolverQueryLogConfigInput, context: context)
        type = Types::AssociateResolverQueryLogConfigInput.new
        type.resolver_query_log_config_id = params[:resolver_query_log_config_id]
        type.resource_id = params[:resource_id]
        type
      end
    end

    module AssociateResolverQueryLogConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateResolverQueryLogConfigOutput, context: context)
        type = Types::AssociateResolverQueryLogConfigOutput.new
        type.resolver_query_log_config_association = ResolverQueryLogConfigAssociation.build(params[:resolver_query_log_config_association], context: "#{context}[:resolver_query_log_config_association]") unless params[:resolver_query_log_config_association].nil?
        type
      end
    end

    module AssociateResolverRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateResolverRuleInput, context: context)
        type = Types::AssociateResolverRuleInput.new
        type.resolver_rule_id = params[:resolver_rule_id]
        type.name = params[:name]
        type.vpc_id = params[:vpc_id]
        type
      end
    end

    module AssociateResolverRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateResolverRuleOutput, context: context)
        type = Types::AssociateResolverRuleOutput.new
        type.resolver_rule_association = ResolverRuleAssociation.build(params[:resolver_rule_association], context: "#{context}[:resolver_rule_association]") unless params[:resolver_rule_association].nil?
        type
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type
      end
    end

    module CreateFirewallDomainListInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFirewallDomainListInput, context: context)
        type = Types::CreateFirewallDomainListInput.new
        type.creator_request_id = params[:creator_request_id] || ::SecureRandom.uuid
        type.name = params[:name]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateFirewallDomainListOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFirewallDomainListOutput, context: context)
        type = Types::CreateFirewallDomainListOutput.new
        type.firewall_domain_list = FirewallDomainList.build(params[:firewall_domain_list], context: "#{context}[:firewall_domain_list]") unless params[:firewall_domain_list].nil?
        type
      end
    end

    module CreateFirewallRuleGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFirewallRuleGroupInput, context: context)
        type = Types::CreateFirewallRuleGroupInput.new
        type.creator_request_id = params[:creator_request_id] || ::SecureRandom.uuid
        type.name = params[:name]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateFirewallRuleGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFirewallRuleGroupOutput, context: context)
        type = Types::CreateFirewallRuleGroupOutput.new
        type.firewall_rule_group = FirewallRuleGroup.build(params[:firewall_rule_group], context: "#{context}[:firewall_rule_group]") unless params[:firewall_rule_group].nil?
        type
      end
    end

    module CreateFirewallRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFirewallRuleInput, context: context)
        type = Types::CreateFirewallRuleInput.new
        type.creator_request_id = params[:creator_request_id] || ::SecureRandom.uuid
        type.firewall_rule_group_id = params[:firewall_rule_group_id]
        type.firewall_domain_list_id = params[:firewall_domain_list_id]
        type.priority = params[:priority]
        type.action = params[:action]
        type.block_response = params[:block_response]
        type.block_override_domain = params[:block_override_domain]
        type.block_override_dns_type = params[:block_override_dns_type]
        type.block_override_ttl = params[:block_override_ttl]
        type.name = params[:name]
        type
      end
    end

    module CreateFirewallRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFirewallRuleOutput, context: context)
        type = Types::CreateFirewallRuleOutput.new
        type.firewall_rule = FirewallRule.build(params[:firewall_rule], context: "#{context}[:firewall_rule]") unless params[:firewall_rule].nil?
        type
      end
    end

    module CreateResolverEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateResolverEndpointInput, context: context)
        type = Types::CreateResolverEndpointInput.new
        type.creator_request_id = params[:creator_request_id]
        type.name = params[:name]
        type.security_group_ids = SecurityGroupIds.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.direction = params[:direction]
        type.ip_addresses = IpAddressesRequest.build(params[:ip_addresses], context: "#{context}[:ip_addresses]") unless params[:ip_addresses].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateResolverEndpointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateResolverEndpointOutput, context: context)
        type = Types::CreateResolverEndpointOutput.new
        type.resolver_endpoint = ResolverEndpoint.build(params[:resolver_endpoint], context: "#{context}[:resolver_endpoint]") unless params[:resolver_endpoint].nil?
        type
      end
    end

    module CreateResolverQueryLogConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateResolverQueryLogConfigInput, context: context)
        type = Types::CreateResolverQueryLogConfigInput.new
        type.name = params[:name]
        type.destination_arn = params[:destination_arn]
        type.creator_request_id = params[:creator_request_id] || ::SecureRandom.uuid
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateResolverQueryLogConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateResolverQueryLogConfigOutput, context: context)
        type = Types::CreateResolverQueryLogConfigOutput.new
        type.resolver_query_log_config = ResolverQueryLogConfig.build(params[:resolver_query_log_config], context: "#{context}[:resolver_query_log_config]") unless params[:resolver_query_log_config].nil?
        type
      end
    end

    module CreateResolverRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateResolverRuleInput, context: context)
        type = Types::CreateResolverRuleInput.new
        type.creator_request_id = params[:creator_request_id]
        type.name = params[:name]
        type.rule_type = params[:rule_type]
        type.domain_name = params[:domain_name]
        type.target_ips = TargetList.build(params[:target_ips], context: "#{context}[:target_ips]") unless params[:target_ips].nil?
        type.resolver_endpoint_id = params[:resolver_endpoint_id]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateResolverRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateResolverRuleOutput, context: context)
        type = Types::CreateResolverRuleOutput.new
        type.resolver_rule = ResolverRule.build(params[:resolver_rule], context: "#{context}[:resolver_rule]") unless params[:resolver_rule].nil?
        type
      end
    end

    module DeleteFirewallDomainListInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFirewallDomainListInput, context: context)
        type = Types::DeleteFirewallDomainListInput.new
        type.firewall_domain_list_id = params[:firewall_domain_list_id]
        type
      end
    end

    module DeleteFirewallDomainListOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFirewallDomainListOutput, context: context)
        type = Types::DeleteFirewallDomainListOutput.new
        type.firewall_domain_list = FirewallDomainList.build(params[:firewall_domain_list], context: "#{context}[:firewall_domain_list]") unless params[:firewall_domain_list].nil?
        type
      end
    end

    module DeleteFirewallRuleGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFirewallRuleGroupInput, context: context)
        type = Types::DeleteFirewallRuleGroupInput.new
        type.firewall_rule_group_id = params[:firewall_rule_group_id]
        type
      end
    end

    module DeleteFirewallRuleGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFirewallRuleGroupOutput, context: context)
        type = Types::DeleteFirewallRuleGroupOutput.new
        type.firewall_rule_group = FirewallRuleGroup.build(params[:firewall_rule_group], context: "#{context}[:firewall_rule_group]") unless params[:firewall_rule_group].nil?
        type
      end
    end

    module DeleteFirewallRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFirewallRuleInput, context: context)
        type = Types::DeleteFirewallRuleInput.new
        type.firewall_rule_group_id = params[:firewall_rule_group_id]
        type.firewall_domain_list_id = params[:firewall_domain_list_id]
        type
      end
    end

    module DeleteFirewallRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFirewallRuleOutput, context: context)
        type = Types::DeleteFirewallRuleOutput.new
        type.firewall_rule = FirewallRule.build(params[:firewall_rule], context: "#{context}[:firewall_rule]") unless params[:firewall_rule].nil?
        type
      end
    end

    module DeleteResolverEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteResolverEndpointInput, context: context)
        type = Types::DeleteResolverEndpointInput.new
        type.resolver_endpoint_id = params[:resolver_endpoint_id]
        type
      end
    end

    module DeleteResolverEndpointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteResolverEndpointOutput, context: context)
        type = Types::DeleteResolverEndpointOutput.new
        type.resolver_endpoint = ResolverEndpoint.build(params[:resolver_endpoint], context: "#{context}[:resolver_endpoint]") unless params[:resolver_endpoint].nil?
        type
      end
    end

    module DeleteResolverQueryLogConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteResolverQueryLogConfigInput, context: context)
        type = Types::DeleteResolverQueryLogConfigInput.new
        type.resolver_query_log_config_id = params[:resolver_query_log_config_id]
        type
      end
    end

    module DeleteResolverQueryLogConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteResolverQueryLogConfigOutput, context: context)
        type = Types::DeleteResolverQueryLogConfigOutput.new
        type.resolver_query_log_config = ResolverQueryLogConfig.build(params[:resolver_query_log_config], context: "#{context}[:resolver_query_log_config]") unless params[:resolver_query_log_config].nil?
        type
      end
    end

    module DeleteResolverRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteResolverRuleInput, context: context)
        type = Types::DeleteResolverRuleInput.new
        type.resolver_rule_id = params[:resolver_rule_id]
        type
      end
    end

    module DeleteResolverRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteResolverRuleOutput, context: context)
        type = Types::DeleteResolverRuleOutput.new
        type.resolver_rule = ResolverRule.build(params[:resolver_rule], context: "#{context}[:resolver_rule]") unless params[:resolver_rule].nil?
        type
      end
    end

    module DisassociateFirewallRuleGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateFirewallRuleGroupInput, context: context)
        type = Types::DisassociateFirewallRuleGroupInput.new
        type.firewall_rule_group_association_id = params[:firewall_rule_group_association_id]
        type
      end
    end

    module DisassociateFirewallRuleGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateFirewallRuleGroupOutput, context: context)
        type = Types::DisassociateFirewallRuleGroupOutput.new
        type.firewall_rule_group_association = FirewallRuleGroupAssociation.build(params[:firewall_rule_group_association], context: "#{context}[:firewall_rule_group_association]") unless params[:firewall_rule_group_association].nil?
        type
      end
    end

    module DisassociateResolverEndpointIpAddressInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateResolverEndpointIpAddressInput, context: context)
        type = Types::DisassociateResolverEndpointIpAddressInput.new
        type.resolver_endpoint_id = params[:resolver_endpoint_id]
        type.ip_address = IpAddressUpdate.build(params[:ip_address], context: "#{context}[:ip_address]") unless params[:ip_address].nil?
        type
      end
    end

    module DisassociateResolverEndpointIpAddressOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateResolverEndpointIpAddressOutput, context: context)
        type = Types::DisassociateResolverEndpointIpAddressOutput.new
        type.resolver_endpoint = ResolverEndpoint.build(params[:resolver_endpoint], context: "#{context}[:resolver_endpoint]") unless params[:resolver_endpoint].nil?
        type
      end
    end

    module DisassociateResolverQueryLogConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateResolverQueryLogConfigInput, context: context)
        type = Types::DisassociateResolverQueryLogConfigInput.new
        type.resolver_query_log_config_id = params[:resolver_query_log_config_id]
        type.resource_id = params[:resource_id]
        type
      end
    end

    module DisassociateResolverQueryLogConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateResolverQueryLogConfigOutput, context: context)
        type = Types::DisassociateResolverQueryLogConfigOutput.new
        type.resolver_query_log_config_association = ResolverQueryLogConfigAssociation.build(params[:resolver_query_log_config_association], context: "#{context}[:resolver_query_log_config_association]") unless params[:resolver_query_log_config_association].nil?
        type
      end
    end

    module DisassociateResolverRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateResolverRuleInput, context: context)
        type = Types::DisassociateResolverRuleInput.new
        type.vpc_id = params[:vpc_id]
        type.resolver_rule_id = params[:resolver_rule_id]
        type
      end
    end

    module DisassociateResolverRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateResolverRuleOutput, context: context)
        type = Types::DisassociateResolverRuleOutput.new
        type.resolver_rule_association = ResolverRuleAssociation.build(params[:resolver_rule_association], context: "#{context}[:resolver_rule_association]") unless params[:resolver_rule_association].nil?
        type
      end
    end

    module Filter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Filter, context: context)
        type = Types::Filter.new
        type.name = params[:name]
        type.values = FilterValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
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

    module Filters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Filter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FirewallConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FirewallConfig, context: context)
        type = Types::FirewallConfig.new
        type.id = params[:id]
        type.resource_id = params[:resource_id]
        type.owner_id = params[:owner_id]
        type.firewall_fail_open = params[:firewall_fail_open]
        type
      end
    end

    module FirewallConfigList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FirewallConfig.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FirewallDomainList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FirewallDomainList, context: context)
        type = Types::FirewallDomainList.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.name = params[:name]
        type.domain_count = params[:domain_count]
        type.status = params[:status]
        type.status_message = params[:status_message]
        type.managed_owner_name = params[:managed_owner_name]
        type.creator_request_id = params[:creator_request_id]
        type.creation_time = params[:creation_time]
        type.modification_time = params[:modification_time]
        type
      end
    end

    module FirewallDomainListMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FirewallDomainListMetadata, context: context)
        type = Types::FirewallDomainListMetadata.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.name = params[:name]
        type.creator_request_id = params[:creator_request_id]
        type.managed_owner_name = params[:managed_owner_name]
        type
      end
    end

    module FirewallDomainListMetadataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FirewallDomainListMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FirewallDomains
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module FirewallRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FirewallRule, context: context)
        type = Types::FirewallRule.new
        type.firewall_rule_group_id = params[:firewall_rule_group_id]
        type.firewall_domain_list_id = params[:firewall_domain_list_id]
        type.name = params[:name]
        type.priority = params[:priority]
        type.action = params[:action]
        type.block_response = params[:block_response]
        type.block_override_domain = params[:block_override_domain]
        type.block_override_dns_type = params[:block_override_dns_type]
        type.block_override_ttl = params[:block_override_ttl]
        type.creator_request_id = params[:creator_request_id]
        type.creation_time = params[:creation_time]
        type.modification_time = params[:modification_time]
        type
      end
    end

    module FirewallRuleGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FirewallRuleGroup, context: context)
        type = Types::FirewallRuleGroup.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.name = params[:name]
        type.rule_count = params[:rule_count]
        type.status = params[:status]
        type.status_message = params[:status_message]
        type.owner_id = params[:owner_id]
        type.creator_request_id = params[:creator_request_id]
        type.share_status = params[:share_status]
        type.creation_time = params[:creation_time]
        type.modification_time = params[:modification_time]
        type
      end
    end

    module FirewallRuleGroupAssociation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FirewallRuleGroupAssociation, context: context)
        type = Types::FirewallRuleGroupAssociation.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.firewall_rule_group_id = params[:firewall_rule_group_id]
        type.vpc_id = params[:vpc_id]
        type.name = params[:name]
        type.priority = params[:priority]
        type.mutation_protection = params[:mutation_protection]
        type.managed_owner_name = params[:managed_owner_name]
        type.status = params[:status]
        type.status_message = params[:status_message]
        type.creator_request_id = params[:creator_request_id]
        type.creation_time = params[:creation_time]
        type.modification_time = params[:modification_time]
        type
      end
    end

    module FirewallRuleGroupAssociations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FirewallRuleGroupAssociation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FirewallRuleGroupMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FirewallRuleGroupMetadata, context: context)
        type = Types::FirewallRuleGroupMetadata.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.name = params[:name]
        type.owner_id = params[:owner_id]
        type.creator_request_id = params[:creator_request_id]
        type.share_status = params[:share_status]
        type
      end
    end

    module FirewallRuleGroupMetadataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FirewallRuleGroupMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FirewallRules
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FirewallRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GetFirewallConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFirewallConfigInput, context: context)
        type = Types::GetFirewallConfigInput.new
        type.resource_id = params[:resource_id]
        type
      end
    end

    module GetFirewallConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFirewallConfigOutput, context: context)
        type = Types::GetFirewallConfigOutput.new
        type.firewall_config = FirewallConfig.build(params[:firewall_config], context: "#{context}[:firewall_config]") unless params[:firewall_config].nil?
        type
      end
    end

    module GetFirewallDomainListInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFirewallDomainListInput, context: context)
        type = Types::GetFirewallDomainListInput.new
        type.firewall_domain_list_id = params[:firewall_domain_list_id]
        type
      end
    end

    module GetFirewallDomainListOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFirewallDomainListOutput, context: context)
        type = Types::GetFirewallDomainListOutput.new
        type.firewall_domain_list = FirewallDomainList.build(params[:firewall_domain_list], context: "#{context}[:firewall_domain_list]") unless params[:firewall_domain_list].nil?
        type
      end
    end

    module GetFirewallRuleGroupAssociationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFirewallRuleGroupAssociationInput, context: context)
        type = Types::GetFirewallRuleGroupAssociationInput.new
        type.firewall_rule_group_association_id = params[:firewall_rule_group_association_id]
        type
      end
    end

    module GetFirewallRuleGroupAssociationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFirewallRuleGroupAssociationOutput, context: context)
        type = Types::GetFirewallRuleGroupAssociationOutput.new
        type.firewall_rule_group_association = FirewallRuleGroupAssociation.build(params[:firewall_rule_group_association], context: "#{context}[:firewall_rule_group_association]") unless params[:firewall_rule_group_association].nil?
        type
      end
    end

    module GetFirewallRuleGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFirewallRuleGroupInput, context: context)
        type = Types::GetFirewallRuleGroupInput.new
        type.firewall_rule_group_id = params[:firewall_rule_group_id]
        type
      end
    end

    module GetFirewallRuleGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFirewallRuleGroupOutput, context: context)
        type = Types::GetFirewallRuleGroupOutput.new
        type.firewall_rule_group = FirewallRuleGroup.build(params[:firewall_rule_group], context: "#{context}[:firewall_rule_group]") unless params[:firewall_rule_group].nil?
        type
      end
    end

    module GetFirewallRuleGroupPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFirewallRuleGroupPolicyInput, context: context)
        type = Types::GetFirewallRuleGroupPolicyInput.new
        type.arn = params[:arn]
        type
      end
    end

    module GetFirewallRuleGroupPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFirewallRuleGroupPolicyOutput, context: context)
        type = Types::GetFirewallRuleGroupPolicyOutput.new
        type.firewall_rule_group_policy = params[:firewall_rule_group_policy]
        type
      end
    end

    module GetResolverConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResolverConfigInput, context: context)
        type = Types::GetResolverConfigInput.new
        type.resource_id = params[:resource_id]
        type
      end
    end

    module GetResolverConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResolverConfigOutput, context: context)
        type = Types::GetResolverConfigOutput.new
        type.resolver_config = ResolverConfig.build(params[:resolver_config], context: "#{context}[:resolver_config]") unless params[:resolver_config].nil?
        type
      end
    end

    module GetResolverDnssecConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResolverDnssecConfigInput, context: context)
        type = Types::GetResolverDnssecConfigInput.new
        type.resource_id = params[:resource_id]
        type
      end
    end

    module GetResolverDnssecConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResolverDnssecConfigOutput, context: context)
        type = Types::GetResolverDnssecConfigOutput.new
        type.resolver_dnssec_config = ResolverDnssecConfig.build(params[:resolver_dnssec_config], context: "#{context}[:resolver_dnssec_config]") unless params[:resolver_dnssec_config].nil?
        type
      end
    end

    module GetResolverEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResolverEndpointInput, context: context)
        type = Types::GetResolverEndpointInput.new
        type.resolver_endpoint_id = params[:resolver_endpoint_id]
        type
      end
    end

    module GetResolverEndpointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResolverEndpointOutput, context: context)
        type = Types::GetResolverEndpointOutput.new
        type.resolver_endpoint = ResolverEndpoint.build(params[:resolver_endpoint], context: "#{context}[:resolver_endpoint]") unless params[:resolver_endpoint].nil?
        type
      end
    end

    module GetResolverQueryLogConfigAssociationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResolverQueryLogConfigAssociationInput, context: context)
        type = Types::GetResolverQueryLogConfigAssociationInput.new
        type.resolver_query_log_config_association_id = params[:resolver_query_log_config_association_id]
        type
      end
    end

    module GetResolverQueryLogConfigAssociationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResolverQueryLogConfigAssociationOutput, context: context)
        type = Types::GetResolverQueryLogConfigAssociationOutput.new
        type.resolver_query_log_config_association = ResolverQueryLogConfigAssociation.build(params[:resolver_query_log_config_association], context: "#{context}[:resolver_query_log_config_association]") unless params[:resolver_query_log_config_association].nil?
        type
      end
    end

    module GetResolverQueryLogConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResolverQueryLogConfigInput, context: context)
        type = Types::GetResolverQueryLogConfigInput.new
        type.resolver_query_log_config_id = params[:resolver_query_log_config_id]
        type
      end
    end

    module GetResolverQueryLogConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResolverQueryLogConfigOutput, context: context)
        type = Types::GetResolverQueryLogConfigOutput.new
        type.resolver_query_log_config = ResolverQueryLogConfig.build(params[:resolver_query_log_config], context: "#{context}[:resolver_query_log_config]") unless params[:resolver_query_log_config].nil?
        type
      end
    end

    module GetResolverQueryLogConfigPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResolverQueryLogConfigPolicyInput, context: context)
        type = Types::GetResolverQueryLogConfigPolicyInput.new
        type.arn = params[:arn]
        type
      end
    end

    module GetResolverQueryLogConfigPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResolverQueryLogConfigPolicyOutput, context: context)
        type = Types::GetResolverQueryLogConfigPolicyOutput.new
        type.resolver_query_log_config_policy = params[:resolver_query_log_config_policy]
        type
      end
    end

    module GetResolverRuleAssociationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResolverRuleAssociationInput, context: context)
        type = Types::GetResolverRuleAssociationInput.new
        type.resolver_rule_association_id = params[:resolver_rule_association_id]
        type
      end
    end

    module GetResolverRuleAssociationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResolverRuleAssociationOutput, context: context)
        type = Types::GetResolverRuleAssociationOutput.new
        type.resolver_rule_association = ResolverRuleAssociation.build(params[:resolver_rule_association], context: "#{context}[:resolver_rule_association]") unless params[:resolver_rule_association].nil?
        type
      end
    end

    module GetResolverRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResolverRuleInput, context: context)
        type = Types::GetResolverRuleInput.new
        type.resolver_rule_id = params[:resolver_rule_id]
        type
      end
    end

    module GetResolverRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResolverRuleOutput, context: context)
        type = Types::GetResolverRuleOutput.new
        type.resolver_rule = ResolverRule.build(params[:resolver_rule], context: "#{context}[:resolver_rule]") unless params[:resolver_rule].nil?
        type
      end
    end

    module GetResolverRulePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResolverRulePolicyInput, context: context)
        type = Types::GetResolverRulePolicyInput.new
        type.arn = params[:arn]
        type
      end
    end

    module GetResolverRulePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResolverRulePolicyOutput, context: context)
        type = Types::GetResolverRulePolicyOutput.new
        type.resolver_rule_policy = params[:resolver_rule_policy]
        type
      end
    end

    module ImportFirewallDomainsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportFirewallDomainsInput, context: context)
        type = Types::ImportFirewallDomainsInput.new
        type.firewall_domain_list_id = params[:firewall_domain_list_id]
        type.operation = params[:operation]
        type.domain_file_url = params[:domain_file_url]
        type
      end
    end

    module ImportFirewallDomainsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportFirewallDomainsOutput, context: context)
        type = Types::ImportFirewallDomainsOutput.new
        type.id = params[:id]
        type.name = params[:name]
        type.status = params[:status]
        type.status_message = params[:status_message]
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

    module InvalidNextTokenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidNextTokenException, context: context)
        type = Types::InvalidNextTokenException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidParameterException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidParameterException, context: context)
        type = Types::InvalidParameterException.new
        type.message = params[:message]
        type.field_name = params[:field_name]
        type
      end
    end

    module InvalidPolicyDocument
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidPolicyDocument, context: context)
        type = Types::InvalidPolicyDocument.new
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

    module InvalidTagException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidTagException, context: context)
        type = Types::InvalidTagException.new
        type.message = params[:message]
        type
      end
    end

    module IpAddressRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IpAddressRequest, context: context)
        type = Types::IpAddressRequest.new
        type.subnet_id = params[:subnet_id]
        type.ip = params[:ip]
        type
      end
    end

    module IpAddressResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IpAddressResponse, context: context)
        type = Types::IpAddressResponse.new
        type.ip_id = params[:ip_id]
        type.subnet_id = params[:subnet_id]
        type.ip = params[:ip]
        type.status = params[:status]
        type.status_message = params[:status_message]
        type.creation_time = params[:creation_time]
        type.modification_time = params[:modification_time]
        type
      end
    end

    module IpAddressUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IpAddressUpdate, context: context)
        type = Types::IpAddressUpdate.new
        type.ip_id = params[:ip_id]
        type.subnet_id = params[:subnet_id]
        type.ip = params[:ip]
        type
      end
    end

    module IpAddressesRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << IpAddressRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module IpAddressesResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << IpAddressResponse.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.message = params[:message]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module ListFirewallConfigsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFirewallConfigsInput, context: context)
        type = Types::ListFirewallConfigsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListFirewallConfigsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFirewallConfigsOutput, context: context)
        type = Types::ListFirewallConfigsOutput.new
        type.next_token = params[:next_token]
        type.firewall_configs = FirewallConfigList.build(params[:firewall_configs], context: "#{context}[:firewall_configs]") unless params[:firewall_configs].nil?
        type
      end
    end

    module ListFirewallDomainListsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFirewallDomainListsInput, context: context)
        type = Types::ListFirewallDomainListsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListFirewallDomainListsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFirewallDomainListsOutput, context: context)
        type = Types::ListFirewallDomainListsOutput.new
        type.next_token = params[:next_token]
        type.firewall_domain_lists = FirewallDomainListMetadataList.build(params[:firewall_domain_lists], context: "#{context}[:firewall_domain_lists]") unless params[:firewall_domain_lists].nil?
        type
      end
    end

    module ListFirewallDomainsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFirewallDomainsInput, context: context)
        type = Types::ListFirewallDomainsInput.new
        type.firewall_domain_list_id = params[:firewall_domain_list_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListFirewallDomainsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFirewallDomainsOutput, context: context)
        type = Types::ListFirewallDomainsOutput.new
        type.next_token = params[:next_token]
        type.domains = FirewallDomains.build(params[:domains], context: "#{context}[:domains]") unless params[:domains].nil?
        type
      end
    end

    module ListFirewallRuleGroupAssociationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFirewallRuleGroupAssociationsInput, context: context)
        type = Types::ListFirewallRuleGroupAssociationsInput.new
        type.firewall_rule_group_id = params[:firewall_rule_group_id]
        type.vpc_id = params[:vpc_id]
        type.priority = params[:priority]
        type.status = params[:status]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListFirewallRuleGroupAssociationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFirewallRuleGroupAssociationsOutput, context: context)
        type = Types::ListFirewallRuleGroupAssociationsOutput.new
        type.next_token = params[:next_token]
        type.firewall_rule_group_associations = FirewallRuleGroupAssociations.build(params[:firewall_rule_group_associations], context: "#{context}[:firewall_rule_group_associations]") unless params[:firewall_rule_group_associations].nil?
        type
      end
    end

    module ListFirewallRuleGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFirewallRuleGroupsInput, context: context)
        type = Types::ListFirewallRuleGroupsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListFirewallRuleGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFirewallRuleGroupsOutput, context: context)
        type = Types::ListFirewallRuleGroupsOutput.new
        type.next_token = params[:next_token]
        type.firewall_rule_groups = FirewallRuleGroupMetadataList.build(params[:firewall_rule_groups], context: "#{context}[:firewall_rule_groups]") unless params[:firewall_rule_groups].nil?
        type
      end
    end

    module ListFirewallRulesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFirewallRulesInput, context: context)
        type = Types::ListFirewallRulesInput.new
        type.firewall_rule_group_id = params[:firewall_rule_group_id]
        type.priority = params[:priority]
        type.action = params[:action]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListFirewallRulesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFirewallRulesOutput, context: context)
        type = Types::ListFirewallRulesOutput.new
        type.next_token = params[:next_token]
        type.firewall_rules = FirewallRules.build(params[:firewall_rules], context: "#{context}[:firewall_rules]") unless params[:firewall_rules].nil?
        type
      end
    end

    module ListResolverConfigsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResolverConfigsInput, context: context)
        type = Types::ListResolverConfigsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListResolverConfigsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResolverConfigsOutput, context: context)
        type = Types::ListResolverConfigsOutput.new
        type.next_token = params[:next_token]
        type.resolver_configs = ResolverConfigList.build(params[:resolver_configs], context: "#{context}[:resolver_configs]") unless params[:resolver_configs].nil?
        type
      end
    end

    module ListResolverDnssecConfigsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResolverDnssecConfigsInput, context: context)
        type = Types::ListResolverDnssecConfigsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.filters = Filters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module ListResolverDnssecConfigsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResolverDnssecConfigsOutput, context: context)
        type = Types::ListResolverDnssecConfigsOutput.new
        type.next_token = params[:next_token]
        type.resolver_dnssec_configs = ResolverDnssecConfigList.build(params[:resolver_dnssec_configs], context: "#{context}[:resolver_dnssec_configs]") unless params[:resolver_dnssec_configs].nil?
        type
      end
    end

    module ListResolverEndpointIpAddressesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResolverEndpointIpAddressesInput, context: context)
        type = Types::ListResolverEndpointIpAddressesInput.new
        type.resolver_endpoint_id = params[:resolver_endpoint_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListResolverEndpointIpAddressesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResolverEndpointIpAddressesOutput, context: context)
        type = Types::ListResolverEndpointIpAddressesOutput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.ip_addresses = IpAddressesResponse.build(params[:ip_addresses], context: "#{context}[:ip_addresses]") unless params[:ip_addresses].nil?
        type
      end
    end

    module ListResolverEndpointsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResolverEndpointsInput, context: context)
        type = Types::ListResolverEndpointsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.filters = Filters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module ListResolverEndpointsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResolverEndpointsOutput, context: context)
        type = Types::ListResolverEndpointsOutput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.resolver_endpoints = ResolverEndpoints.build(params[:resolver_endpoints], context: "#{context}[:resolver_endpoints]") unless params[:resolver_endpoints].nil?
        type
      end
    end

    module ListResolverQueryLogConfigAssociationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResolverQueryLogConfigAssociationsInput, context: context)
        type = Types::ListResolverQueryLogConfigAssociationsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.filters = Filters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.sort_by = params[:sort_by]
        type.sort_order = params[:sort_order]
        type
      end
    end

    module ListResolverQueryLogConfigAssociationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResolverQueryLogConfigAssociationsOutput, context: context)
        type = Types::ListResolverQueryLogConfigAssociationsOutput.new
        type.next_token = params[:next_token]
        type.total_count = params[:total_count]
        type.total_filtered_count = params[:total_filtered_count]
        type.resolver_query_log_config_associations = ResolverQueryLogConfigAssociationList.build(params[:resolver_query_log_config_associations], context: "#{context}[:resolver_query_log_config_associations]") unless params[:resolver_query_log_config_associations].nil?
        type
      end
    end

    module ListResolverQueryLogConfigsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResolverQueryLogConfigsInput, context: context)
        type = Types::ListResolverQueryLogConfigsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.filters = Filters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.sort_by = params[:sort_by]
        type.sort_order = params[:sort_order]
        type
      end
    end

    module ListResolverQueryLogConfigsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResolverQueryLogConfigsOutput, context: context)
        type = Types::ListResolverQueryLogConfigsOutput.new
        type.next_token = params[:next_token]
        type.total_count = params[:total_count]
        type.total_filtered_count = params[:total_filtered_count]
        type.resolver_query_log_configs = ResolverQueryLogConfigList.build(params[:resolver_query_log_configs], context: "#{context}[:resolver_query_log_configs]") unless params[:resolver_query_log_configs].nil?
        type
      end
    end

    module ListResolverRuleAssociationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResolverRuleAssociationsInput, context: context)
        type = Types::ListResolverRuleAssociationsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.filters = Filters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module ListResolverRuleAssociationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResolverRuleAssociationsOutput, context: context)
        type = Types::ListResolverRuleAssociationsOutput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.resolver_rule_associations = ResolverRuleAssociations.build(params[:resolver_rule_associations], context: "#{context}[:resolver_rule_associations]") unless params[:resolver_rule_associations].nil?
        type
      end
    end

    module ListResolverRulesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResolverRulesInput, context: context)
        type = Types::ListResolverRulesInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.filters = Filters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module ListResolverRulesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResolverRulesOutput, context: context)
        type = Types::ListResolverRulesOutput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.resolver_rules = ResolverRules.build(params[:resolver_rules], context: "#{context}[:resolver_rules]") unless params[:resolver_rules].nil?
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module PutFirewallRuleGroupPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutFirewallRuleGroupPolicyInput, context: context)
        type = Types::PutFirewallRuleGroupPolicyInput.new
        type.arn = params[:arn]
        type.firewall_rule_group_policy = params[:firewall_rule_group_policy]
        type
      end
    end

    module PutFirewallRuleGroupPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutFirewallRuleGroupPolicyOutput, context: context)
        type = Types::PutFirewallRuleGroupPolicyOutput.new
        type.return_value = params[:return_value]
        type
      end
    end

    module PutResolverQueryLogConfigPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutResolverQueryLogConfigPolicyInput, context: context)
        type = Types::PutResolverQueryLogConfigPolicyInput.new
        type.arn = params[:arn]
        type.resolver_query_log_config_policy = params[:resolver_query_log_config_policy]
        type
      end
    end

    module PutResolverQueryLogConfigPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutResolverQueryLogConfigPolicyOutput, context: context)
        type = Types::PutResolverQueryLogConfigPolicyOutput.new
        type.return_value = params[:return_value]
        type
      end
    end

    module PutResolverRulePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutResolverRulePolicyInput, context: context)
        type = Types::PutResolverRulePolicyInput.new
        type.arn = params[:arn]
        type.resolver_rule_policy = params[:resolver_rule_policy]
        type
      end
    end

    module PutResolverRulePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutResolverRulePolicyOutput, context: context)
        type = Types::PutResolverRulePolicyOutput.new
        type.return_value = params[:return_value]
        type
      end
    end

    module ResolverConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResolverConfig, context: context)
        type = Types::ResolverConfig.new
        type.id = params[:id]
        type.resource_id = params[:resource_id]
        type.owner_id = params[:owner_id]
        type.autodefined_reverse = params[:autodefined_reverse]
        type
      end
    end

    module ResolverConfigList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResolverConfig.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResolverDnssecConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResolverDnssecConfig, context: context)
        type = Types::ResolverDnssecConfig.new
        type.id = params[:id]
        type.owner_id = params[:owner_id]
        type.resource_id = params[:resource_id]
        type.validation_status = params[:validation_status]
        type
      end
    end

    module ResolverDnssecConfigList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResolverDnssecConfig.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResolverEndpoint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResolverEndpoint, context: context)
        type = Types::ResolverEndpoint.new
        type.id = params[:id]
        type.creator_request_id = params[:creator_request_id]
        type.arn = params[:arn]
        type.name = params[:name]
        type.security_group_ids = SecurityGroupIds.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.direction = params[:direction]
        type.ip_address_count = params[:ip_address_count]
        type.host_vpc_id = params[:host_vpc_id]
        type.status = params[:status]
        type.status_message = params[:status_message]
        type.creation_time = params[:creation_time]
        type.modification_time = params[:modification_time]
        type
      end
    end

    module ResolverEndpoints
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResolverEndpoint.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResolverQueryLogConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResolverQueryLogConfig, context: context)
        type = Types::ResolverQueryLogConfig.new
        type.id = params[:id]
        type.owner_id = params[:owner_id]
        type.status = params[:status]
        type.share_status = params[:share_status]
        type.association_count = params[:association_count]
        type.arn = params[:arn]
        type.name = params[:name]
        type.destination_arn = params[:destination_arn]
        type.creator_request_id = params[:creator_request_id]
        type.creation_time = params[:creation_time]
        type
      end
    end

    module ResolverQueryLogConfigAssociation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResolverQueryLogConfigAssociation, context: context)
        type = Types::ResolverQueryLogConfigAssociation.new
        type.id = params[:id]
        type.resolver_query_log_config_id = params[:resolver_query_log_config_id]
        type.resource_id = params[:resource_id]
        type.status = params[:status]
        type.error = params[:error]
        type.error_message = params[:error_message]
        type.creation_time = params[:creation_time]
        type
      end
    end

    module ResolverQueryLogConfigAssociationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResolverQueryLogConfigAssociation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResolverQueryLogConfigList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResolverQueryLogConfig.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResolverRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResolverRule, context: context)
        type = Types::ResolverRule.new
        type.id = params[:id]
        type.creator_request_id = params[:creator_request_id]
        type.arn = params[:arn]
        type.domain_name = params[:domain_name]
        type.status = params[:status]
        type.status_message = params[:status_message]
        type.rule_type = params[:rule_type]
        type.name = params[:name]
        type.target_ips = TargetList.build(params[:target_ips], context: "#{context}[:target_ips]") unless params[:target_ips].nil?
        type.resolver_endpoint_id = params[:resolver_endpoint_id]
        type.owner_id = params[:owner_id]
        type.share_status = params[:share_status]
        type.creation_time = params[:creation_time]
        type.modification_time = params[:modification_time]
        type
      end
    end

    module ResolverRuleAssociation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResolverRuleAssociation, context: context)
        type = Types::ResolverRuleAssociation.new
        type.id = params[:id]
        type.resolver_rule_id = params[:resolver_rule_id]
        type.name = params[:name]
        type.vpc_id = params[:vpc_id]
        type.status = params[:status]
        type.status_message = params[:status_message]
        type
      end
    end

    module ResolverRuleAssociations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResolverRuleAssociation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResolverRuleConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResolverRuleConfig, context: context)
        type = Types::ResolverRuleConfig.new
        type.name = params[:name]
        type.target_ips = TargetList.build(params[:target_ips], context: "#{context}[:target_ips]") unless params[:target_ips].nil?
        type.resolver_endpoint_id = params[:resolver_endpoint_id]
        type
      end
    end

    module ResolverRules
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResolverRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceExistsException, context: context)
        type = Types::ResourceExistsException.new
        type.message = params[:message]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module ResourceInUseException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceInUseException, context: context)
        type = Types::ResourceInUseException.new
        type.message = params[:message]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module ResourceUnavailableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceUnavailableException, context: context)
        type = Types::ResourceUnavailableException.new
        type.message = params[:message]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module SecurityGroupIds
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

    module TargetAddress
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TargetAddress, context: context)
        type = Types::TargetAddress.new
        type.ip = params[:ip]
        type.port = params[:port]
        type
      end
    end

    module TargetList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TargetAddress.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type
      end
    end

    module UnknownResourceException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnknownResourceException, context: context)
        type = Types::UnknownResourceException.new
        type.message = params[:message]
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

    module UpdateFirewallConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFirewallConfigInput, context: context)
        type = Types::UpdateFirewallConfigInput.new
        type.resource_id = params[:resource_id]
        type.firewall_fail_open = params[:firewall_fail_open]
        type
      end
    end

    module UpdateFirewallConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFirewallConfigOutput, context: context)
        type = Types::UpdateFirewallConfigOutput.new
        type.firewall_config = FirewallConfig.build(params[:firewall_config], context: "#{context}[:firewall_config]") unless params[:firewall_config].nil?
        type
      end
    end

    module UpdateFirewallDomainsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFirewallDomainsInput, context: context)
        type = Types::UpdateFirewallDomainsInput.new
        type.firewall_domain_list_id = params[:firewall_domain_list_id]
        type.operation = params[:operation]
        type.domains = FirewallDomains.build(params[:domains], context: "#{context}[:domains]") unless params[:domains].nil?
        type
      end
    end

    module UpdateFirewallDomainsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFirewallDomainsOutput, context: context)
        type = Types::UpdateFirewallDomainsOutput.new
        type.id = params[:id]
        type.name = params[:name]
        type.status = params[:status]
        type.status_message = params[:status_message]
        type
      end
    end

    module UpdateFirewallRuleGroupAssociationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFirewallRuleGroupAssociationInput, context: context)
        type = Types::UpdateFirewallRuleGroupAssociationInput.new
        type.firewall_rule_group_association_id = params[:firewall_rule_group_association_id]
        type.priority = params[:priority]
        type.mutation_protection = params[:mutation_protection]
        type.name = params[:name]
        type
      end
    end

    module UpdateFirewallRuleGroupAssociationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFirewallRuleGroupAssociationOutput, context: context)
        type = Types::UpdateFirewallRuleGroupAssociationOutput.new
        type.firewall_rule_group_association = FirewallRuleGroupAssociation.build(params[:firewall_rule_group_association], context: "#{context}[:firewall_rule_group_association]") unless params[:firewall_rule_group_association].nil?
        type
      end
    end

    module UpdateFirewallRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFirewallRuleInput, context: context)
        type = Types::UpdateFirewallRuleInput.new
        type.firewall_rule_group_id = params[:firewall_rule_group_id]
        type.firewall_domain_list_id = params[:firewall_domain_list_id]
        type.priority = params[:priority]
        type.action = params[:action]
        type.block_response = params[:block_response]
        type.block_override_domain = params[:block_override_domain]
        type.block_override_dns_type = params[:block_override_dns_type]
        type.block_override_ttl = params[:block_override_ttl]
        type.name = params[:name]
        type
      end
    end

    module UpdateFirewallRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFirewallRuleOutput, context: context)
        type = Types::UpdateFirewallRuleOutput.new
        type.firewall_rule = FirewallRule.build(params[:firewall_rule], context: "#{context}[:firewall_rule]") unless params[:firewall_rule].nil?
        type
      end
    end

    module UpdateResolverConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateResolverConfigInput, context: context)
        type = Types::UpdateResolverConfigInput.new
        type.resource_id = params[:resource_id]
        type.autodefined_reverse_flag = params[:autodefined_reverse_flag]
        type
      end
    end

    module UpdateResolverConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateResolverConfigOutput, context: context)
        type = Types::UpdateResolverConfigOutput.new
        type.resolver_config = ResolverConfig.build(params[:resolver_config], context: "#{context}[:resolver_config]") unless params[:resolver_config].nil?
        type
      end
    end

    module UpdateResolverDnssecConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateResolverDnssecConfigInput, context: context)
        type = Types::UpdateResolverDnssecConfigInput.new
        type.resource_id = params[:resource_id]
        type.validation = params[:validation]
        type
      end
    end

    module UpdateResolverDnssecConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateResolverDnssecConfigOutput, context: context)
        type = Types::UpdateResolverDnssecConfigOutput.new
        type.resolver_dnssec_config = ResolverDnssecConfig.build(params[:resolver_dnssec_config], context: "#{context}[:resolver_dnssec_config]") unless params[:resolver_dnssec_config].nil?
        type
      end
    end

    module UpdateResolverEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateResolverEndpointInput, context: context)
        type = Types::UpdateResolverEndpointInput.new
        type.resolver_endpoint_id = params[:resolver_endpoint_id]
        type.name = params[:name]
        type
      end
    end

    module UpdateResolverEndpointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateResolverEndpointOutput, context: context)
        type = Types::UpdateResolverEndpointOutput.new
        type.resolver_endpoint = ResolverEndpoint.build(params[:resolver_endpoint], context: "#{context}[:resolver_endpoint]") unless params[:resolver_endpoint].nil?
        type
      end
    end

    module UpdateResolverRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateResolverRuleInput, context: context)
        type = Types::UpdateResolverRuleInput.new
        type.resolver_rule_id = params[:resolver_rule_id]
        type.config = ResolverRuleConfig.build(params[:config], context: "#{context}[:config]") unless params[:config].nil?
        type
      end
    end

    module UpdateResolverRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateResolverRuleOutput, context: context)
        type = Types::UpdateResolverRuleOutput.new
        type.resolver_rule = ResolverRule.build(params[:resolver_rule], context: "#{context}[:resolver_rule]") unless params[:resolver_rule].nil?
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type
      end
    end

  end
end
