# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-route53domains'

module AWS::SDK::Route53Domains
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#accept_domain_transfer_from_another_aws_account' do

    end

    describe '#cancel_domain_transfer_to_another_aws_account' do

    end

    describe '#check_domain_availability' do

    end

    describe '#check_domain_transferability' do

    end

    describe '#delete_domain' do

    end

    describe '#delete_tags_for_domain' do

    end

    describe '#disable_domain_auto_renew' do

    end

    describe '#disable_domain_transfer_lock' do

    end

    describe '#enable_domain_auto_renew' do

    end

    describe '#enable_domain_transfer_lock' do

    end

    describe '#get_contact_reachability_status' do

    end

    describe '#get_domain_detail' do

    end

    describe '#get_domain_suggestions' do

    end

    describe '#get_operation_detail' do

    end

    describe '#list_domains' do

    end

    describe '#list_operations' do

    end

    describe '#list_prices' do

    end

    describe '#list_tags_for_domain' do

    end

    describe '#register_domain' do

    end

    describe '#reject_domain_transfer_from_another_aws_account' do

    end

    describe '#renew_domain' do

    end

    describe '#resend_contact_reachability_email' do

    end

    describe '#retrieve_domain_auth_code' do

    end

    describe '#transfer_domain' do

    end

    describe '#transfer_domain_to_another_aws_account' do

    end

    describe '#update_domain_contact' do

    end

    describe '#update_domain_contact_privacy' do

    end

    describe '#update_domain_nameservers' do

    end

    describe '#update_tags_for_domain' do

    end

    describe '#view_billing' do

    end

  end
end
