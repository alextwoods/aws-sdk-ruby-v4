# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-networkfirewall'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::NetworkFirewall
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#associate_firewall_policy' do

    end

    describe '#associate_subnets' do

    end

    describe '#create_firewall' do

    end

    describe '#create_firewall_policy' do

    end

    describe '#create_rule_group' do

    end

    describe '#delete_firewall' do

    end

    describe '#delete_firewall_policy' do

    end

    describe '#delete_resource_policy' do

    end

    describe '#delete_rule_group' do

    end

    describe '#describe_firewall' do

    end

    describe '#describe_firewall_policy' do

    end

    describe '#describe_logging_configuration' do

    end

    describe '#describe_resource_policy' do

    end

    describe '#describe_rule_group' do

    end

    describe '#describe_rule_group_metadata' do

    end

    describe '#disassociate_subnets' do

    end

    describe '#list_firewall_policies' do

    end

    describe '#list_firewalls' do

    end

    describe '#list_rule_groups' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#put_resource_policy' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_firewall_delete_protection' do

    end

    describe '#update_firewall_description' do

    end

    describe '#update_firewall_encryption_configuration' do

    end

    describe '#update_firewall_policy' do

    end

    describe '#update_firewall_policy_change_protection' do

    end

    describe '#update_logging_configuration' do

    end

    describe '#update_rule_group' do

    end

    describe '#update_subnet_change_protection' do

    end

  end
end
