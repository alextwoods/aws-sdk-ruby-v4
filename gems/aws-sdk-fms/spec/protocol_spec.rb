# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-fms'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::FMS
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#associate_admin_account' do

    end

    describe '#associate_third_party_firewall' do

    end

    describe '#delete_apps_list' do

    end

    describe '#delete_notification_channel' do

    end

    describe '#delete_policy' do

    end

    describe '#delete_protocols_list' do

    end

    describe '#disassociate_admin_account' do

    end

    describe '#disassociate_third_party_firewall' do

    end

    describe '#get_admin_account' do

    end

    describe '#get_apps_list' do

    end

    describe '#get_compliance_detail' do

    end

    describe '#get_notification_channel' do

    end

    describe '#get_policy' do

    end

    describe '#get_protection_status' do

    end

    describe '#get_protocols_list' do

    end

    describe '#get_third_party_firewall_association_status' do

    end

    describe '#get_violation_details' do

    end

    describe '#list_apps_lists' do

    end

    describe '#list_compliance_status' do

    end

    describe '#list_member_accounts' do

    end

    describe '#list_policies' do

    end

    describe '#list_protocols_lists' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#list_third_party_firewall_firewall_policies' do

    end

    describe '#put_apps_list' do

    end

    describe '#put_notification_channel' do

    end

    describe '#put_policy' do

    end

    describe '#put_protocols_list' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

  end
end
