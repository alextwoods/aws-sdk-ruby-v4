# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-billingconductor'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::Billingconductor
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#associate_accounts' do

    end

    describe '#associate_pricing_rules' do

    end

    describe '#batch_associate_resources_to_custom_line_item' do

    end

    describe '#batch_disassociate_resources_from_custom_line_item' do

    end

    describe '#create_billing_group' do

    end

    describe '#create_custom_line_item' do

    end

    describe '#create_pricing_plan' do

    end

    describe '#create_pricing_rule' do

    end

    describe '#delete_billing_group' do

    end

    describe '#delete_custom_line_item' do

    end

    describe '#delete_pricing_plan' do

    end

    describe '#delete_pricing_rule' do

    end

    describe '#disassociate_accounts' do

    end

    describe '#disassociate_pricing_rules' do

    end

    describe '#list_account_associations' do

    end

    describe '#list_billing_group_cost_reports' do

    end

    describe '#list_billing_groups' do

    end

    describe '#list_custom_line_items' do

    end

    describe '#list_pricing_plans' do

    end

    describe '#list_pricing_plans_associated_with_pricing_rule' do

    end

    describe '#list_pricing_rules' do

    end

    describe '#list_pricing_rules_associated_to_pricing_plan' do

    end

    describe '#list_resources_associated_to_custom_line_item' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_billing_group' do

    end

    describe '#update_custom_line_item' do

    end

    describe '#update_pricing_plan' do

    end

    describe '#update_pricing_rule' do

    end

  end
end
