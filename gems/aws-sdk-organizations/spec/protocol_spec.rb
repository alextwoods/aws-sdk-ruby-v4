# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-organizations'

module AWS::SDK::Organizations
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#accept_handshake' do

    end

    describe '#attach_policy' do

    end

    describe '#cancel_handshake' do

    end

    describe '#close_account' do

    end

    describe '#create_account' do

    end

    describe '#create_gov_cloud_account' do

    end

    describe '#create_organization' do

    end

    describe '#create_organizational_unit' do

    end

    describe '#create_policy' do

    end

    describe '#decline_handshake' do

    end

    describe '#delete_organization' do

    end

    describe '#delete_organizational_unit' do

    end

    describe '#delete_policy' do

    end

    describe '#deregister_delegated_administrator' do

    end

    describe '#describe_account' do

    end

    describe '#describe_create_account_status' do

    end

    describe '#describe_effective_policy' do

    end

    describe '#describe_handshake' do

    end

    describe '#describe_organization' do

    end

    describe '#describe_organizational_unit' do

    end

    describe '#describe_policy' do

    end

    describe '#detach_policy' do

    end

    describe '#disable_aws_service_access' do

    end

    describe '#disable_policy_type' do

    end

    describe '#enable_all_features' do

    end

    describe '#enable_aws_service_access' do

    end

    describe '#enable_policy_type' do

    end

    describe '#invite_account_to_organization' do

    end

    describe '#leave_organization' do

    end

    describe '#list_accounts' do

    end

    describe '#list_accounts_for_parent' do

    end

    describe '#list_aws_service_access_for_organization' do

    end

    describe '#list_children' do

    end

    describe '#list_create_account_status' do

    end

    describe '#list_delegated_administrators' do

    end

    describe '#list_delegated_services_for_account' do

    end

    describe '#list_handshakes_for_account' do

    end

    describe '#list_handshakes_for_organization' do

    end

    describe '#list_organizational_units_for_parent' do

    end

    describe '#list_parents' do

    end

    describe '#list_policies' do

    end

    describe '#list_policies_for_target' do

    end

    describe '#list_roots' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#list_targets_for_policy' do

    end

    describe '#move_account' do

    end

    describe '#register_delegated_administrator' do

    end

    describe '#remove_account_from_organization' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_organizational_unit' do

    end

    describe '#update_policy' do

    end

  end
end
