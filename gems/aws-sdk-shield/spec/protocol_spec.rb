# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-shield'

module AWS::SDK::Shield
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#associate_drt_log_bucket' do

    end

    describe '#associate_drt_role' do

    end

    describe '#associate_health_check' do

    end

    describe '#associate_proactive_engagement_details' do

    end

    describe '#create_protection' do

    end

    describe '#create_protection_group' do

    end

    describe '#create_subscription' do

    end

    describe '#delete_protection' do

    end

    describe '#delete_protection_group' do

    end

    describe '#delete_subscription' do

    end

    describe '#describe_attack' do

    end

    describe '#describe_attack_statistics' do

    end

    describe '#describe_drt_access' do

    end

    describe '#describe_emergency_contact_settings' do

    end

    describe '#describe_protection' do

    end

    describe '#describe_protection_group' do

    end

    describe '#describe_subscription' do

    end

    describe '#disable_application_layer_automatic_response' do

    end

    describe '#disable_proactive_engagement' do

    end

    describe '#disassociate_drt_log_bucket' do

    end

    describe '#disassociate_drt_role' do

    end

    describe '#disassociate_health_check' do

    end

    describe '#enable_application_layer_automatic_response' do

    end

    describe '#enable_proactive_engagement' do

    end

    describe '#get_subscription_state' do

    end

    describe '#list_attacks' do

    end

    describe '#list_protection_groups' do

    end

    describe '#list_protections' do

    end

    describe '#list_resources_in_protection_group' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_application_layer_automatic_response' do

    end

    describe '#update_emergency_contact_settings' do

    end

    describe '#update_protection_group' do

    end

    describe '#update_subscription' do

    end

  end
end
