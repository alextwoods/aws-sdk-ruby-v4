# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-pinpointemail'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::PinpointEmail
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#create_configuration_set' do

    end

    describe '#create_configuration_set_event_destination' do

    end

    describe '#create_dedicated_ip_pool' do

    end

    describe '#create_deliverability_test_report' do

    end

    describe '#create_email_identity' do

    end

    describe '#delete_configuration_set' do

    end

    describe '#delete_configuration_set_event_destination' do

    end

    describe '#delete_dedicated_ip_pool' do

    end

    describe '#delete_email_identity' do

    end

    describe '#get_account' do

    end

    describe '#get_blacklist_reports' do

    end

    describe '#get_configuration_set' do

    end

    describe '#get_configuration_set_event_destinations' do

    end

    describe '#get_dedicated_ip' do

    end

    describe '#get_dedicated_ips' do

    end

    describe '#get_deliverability_dashboard_options' do

    end

    describe '#get_deliverability_test_report' do

    end

    describe '#get_domain_deliverability_campaign' do

    end

    describe '#get_domain_statistics_report' do

    end

    describe '#get_email_identity' do

    end

    describe '#list_configuration_sets' do

    end

    describe '#list_dedicated_ip_pools' do

    end

    describe '#list_deliverability_test_reports' do

    end

    describe '#list_domain_deliverability_campaigns' do

    end

    describe '#list_email_identities' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#put_account_dedicated_ip_warmup_attributes' do

    end

    describe '#put_account_sending_attributes' do

    end

    describe '#put_configuration_set_delivery_options' do

    end

    describe '#put_configuration_set_reputation_options' do

    end

    describe '#put_configuration_set_sending_options' do

    end

    describe '#put_configuration_set_tracking_options' do

    end

    describe '#put_dedicated_ip_in_pool' do

    end

    describe '#put_dedicated_ip_warmup_attributes' do

    end

    describe '#put_deliverability_dashboard_option' do

    end

    describe '#put_email_identity_dkim_attributes' do

    end

    describe '#put_email_identity_feedback_attributes' do

    end

    describe '#put_email_identity_mail_from_attributes' do

    end

    describe '#send_email' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_configuration_set_event_destination' do

    end

  end
end
