# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-securityhub'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::SecurityHub
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#accept_administrator_invitation' do

    end

    describe '#accept_invitation' do

    end

    describe '#batch_disable_standards' do

    end

    describe '#batch_enable_standards' do

    end

    describe '#batch_import_findings' do

    end

    describe '#batch_update_findings' do

    end

    describe '#create_action_target' do

    end

    describe '#create_finding_aggregator' do

    end

    describe '#create_insight' do

    end

    describe '#create_members' do

    end

    describe '#decline_invitations' do

    end

    describe '#delete_action_target' do

    end

    describe '#delete_finding_aggregator' do

    end

    describe '#delete_insight' do

    end

    describe '#delete_invitations' do

    end

    describe '#delete_members' do

    end

    describe '#describe_action_targets' do

    end

    describe '#describe_hub' do

    end

    describe '#describe_organization_configuration' do

    end

    describe '#describe_products' do

    end

    describe '#describe_standards' do

    end

    describe '#describe_standards_controls' do

    end

    describe '#disable_import_findings_for_product' do

    end

    describe '#disable_organization_admin_account' do

    end

    describe '#disable_security_hub' do

    end

    describe '#disassociate_from_administrator_account' do

    end

    describe '#disassociate_from_master_account' do

    end

    describe '#disassociate_members' do

    end

    describe '#enable_import_findings_for_product' do

    end

    describe '#enable_organization_admin_account' do

    end

    describe '#enable_security_hub' do

    end

    describe '#get_administrator_account' do

    end

    describe '#get_enabled_standards' do

    end

    describe '#get_finding_aggregator' do

    end

    describe '#get_findings' do

    end

    describe '#get_insight_results' do

    end

    describe '#get_insights' do

    end

    describe '#get_invitations_count' do

    end

    describe '#get_master_account' do

    end

    describe '#get_members' do

    end

    describe '#invite_members' do

    end

    describe '#list_enabled_products_for_import' do

    end

    describe '#list_finding_aggregators' do

    end

    describe '#list_invitations' do

    end

    describe '#list_members' do

    end

    describe '#list_organization_admin_accounts' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_action_target' do

    end

    describe '#update_finding_aggregator' do

    end

    describe '#update_findings' do

    end

    describe '#update_insight' do

    end

    describe '#update_organization_configuration' do

    end

    describe '#update_security_hub_configuration' do

    end

    describe '#update_standards_control' do

    end

  end
end
