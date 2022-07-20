# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-worklink'

module AWS::SDK::WorkLink
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#associate_domain' do

    end

    describe '#associate_website_authorization_provider' do

    end

    describe '#associate_website_certificate_authority' do

    end

    describe '#create_fleet' do

    end

    describe '#delete_fleet' do

    end

    describe '#describe_audit_stream_configuration' do

    end

    describe '#describe_company_network_configuration' do

    end

    describe '#describe_device' do

    end

    describe '#describe_device_policy_configuration' do

    end

    describe '#describe_domain' do

    end

    describe '#describe_fleet_metadata' do

    end

    describe '#describe_identity_provider_configuration' do

    end

    describe '#describe_website_certificate_authority' do

    end

    describe '#disassociate_domain' do

    end

    describe '#disassociate_website_authorization_provider' do

    end

    describe '#disassociate_website_certificate_authority' do

    end

    describe '#list_devices' do

    end

    describe '#list_domains' do

    end

    describe '#list_fleets' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#list_website_authorization_providers' do

    end

    describe '#list_website_certificate_authorities' do

    end

    describe '#restore_domain_access' do

    end

    describe '#revoke_domain_access' do

    end

    describe '#sign_out_user' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_audit_stream_configuration' do

    end

    describe '#update_company_network_configuration' do

    end

    describe '#update_device_policy_configuration' do

    end

    describe '#update_domain_metadata' do

    end

    describe '#update_fleet_metadata' do

    end

    describe '#update_identity_provider_configuration' do

    end

  end
end
