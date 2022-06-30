# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-route53resolver'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::Route53Resolver
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#associate_firewall_rule_group' do

    end

    describe '#associate_resolver_endpoint_ip_address' do

    end

    describe '#associate_resolver_query_log_config' do

    end

    describe '#associate_resolver_rule' do

    end

    describe '#create_firewall_domain_list' do

    end

    describe '#create_firewall_rule' do

    end

    describe '#create_firewall_rule_group' do

    end

    describe '#create_resolver_endpoint' do

    end

    describe '#create_resolver_query_log_config' do

    end

    describe '#create_resolver_rule' do

    end

    describe '#delete_firewall_domain_list' do

    end

    describe '#delete_firewall_rule' do

    end

    describe '#delete_firewall_rule_group' do

    end

    describe '#delete_resolver_endpoint' do

    end

    describe '#delete_resolver_query_log_config' do

    end

    describe '#delete_resolver_rule' do

    end

    describe '#disassociate_firewall_rule_group' do

    end

    describe '#disassociate_resolver_endpoint_ip_address' do

    end

    describe '#disassociate_resolver_query_log_config' do

    end

    describe '#disassociate_resolver_rule' do

    end

    describe '#get_firewall_config' do

    end

    describe '#get_firewall_domain_list' do

    end

    describe '#get_firewall_rule_group' do

    end

    describe '#get_firewall_rule_group_association' do

    end

    describe '#get_firewall_rule_group_policy' do

    end

    describe '#get_resolver_config' do

    end

    describe '#get_resolver_dnssec_config' do

    end

    describe '#get_resolver_endpoint' do

    end

    describe '#get_resolver_query_log_config' do

    end

    describe '#get_resolver_query_log_config_association' do

    end

    describe '#get_resolver_query_log_config_policy' do

    end

    describe '#get_resolver_rule' do

    end

    describe '#get_resolver_rule_association' do

    end

    describe '#get_resolver_rule_policy' do

    end

    describe '#import_firewall_domains' do

    end

    describe '#list_firewall_configs' do

    end

    describe '#list_firewall_domain_lists' do

    end

    describe '#list_firewall_domains' do

    end

    describe '#list_firewall_rule_group_associations' do

    end

    describe '#list_firewall_rule_groups' do

    end

    describe '#list_firewall_rules' do

    end

    describe '#list_resolver_configs' do

    end

    describe '#list_resolver_dnssec_configs' do

    end

    describe '#list_resolver_endpoint_ip_addresses' do

    end

    describe '#list_resolver_endpoints' do

    end

    describe '#list_resolver_query_log_config_associations' do

    end

    describe '#list_resolver_query_log_configs' do

    end

    describe '#list_resolver_rule_associations' do

    end

    describe '#list_resolver_rules' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#put_firewall_rule_group_policy' do

    end

    describe '#put_resolver_query_log_config_policy' do

    end

    describe '#put_resolver_rule_policy' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_firewall_config' do

    end

    describe '#update_firewall_domains' do

    end

    describe '#update_firewall_rule' do

    end

    describe '#update_firewall_rule_group_association' do

    end

    describe '#update_resolver_config' do

    end

    describe '#update_resolver_dnssec_config' do

    end

    describe '#update_resolver_endpoint' do

    end

    describe '#update_resolver_rule' do

    end

  end
end
