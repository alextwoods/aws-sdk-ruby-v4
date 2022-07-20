# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-ses'

module AWS::SDK::SES
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#clone_receipt_rule_set' do

    end

    describe '#create_configuration_set' do

    end

    describe '#create_configuration_set_event_destination' do

    end

    describe '#create_configuration_set_tracking_options' do

    end

    describe '#create_custom_verification_email_template' do

    end

    describe '#create_receipt_filter' do

    end

    describe '#create_receipt_rule' do

    end

    describe '#create_receipt_rule_set' do

    end

    describe '#create_template' do

    end

    describe '#delete_configuration_set' do

    end

    describe '#delete_configuration_set_event_destination' do

    end

    describe '#delete_configuration_set_tracking_options' do

    end

    describe '#delete_custom_verification_email_template' do

    end

    describe '#delete_identity' do

    end

    describe '#delete_identity_policy' do

    end

    describe '#delete_receipt_filter' do

    end

    describe '#delete_receipt_rule' do

    end

    describe '#delete_receipt_rule_set' do

    end

    describe '#delete_template' do

    end

    describe '#delete_verified_email_address' do

    end

    describe '#describe_active_receipt_rule_set' do

    end

    describe '#describe_configuration_set' do

    end

    describe '#describe_receipt_rule' do

    end

    describe '#describe_receipt_rule_set' do

    end

    describe '#get_account_sending_enabled' do

    end

    describe '#get_custom_verification_email_template' do

    end

    describe '#get_identity_dkim_attributes' do

    end

    describe '#get_identity_mail_from_domain_attributes' do

    end

    describe '#get_identity_notification_attributes' do

    end

    describe '#get_identity_policies' do

    end

    describe '#get_identity_verification_attributes' do

    end

    describe '#get_send_quota' do

    end

    describe '#get_send_statistics' do

    end

    describe '#get_template' do

    end

    describe '#list_configuration_sets' do

    end

    describe '#list_custom_verification_email_templates' do

    end

    describe '#list_identities' do

    end

    describe '#list_identity_policies' do

    end

    describe '#list_receipt_filters' do

    end

    describe '#list_receipt_rule_sets' do

    end

    describe '#list_templates' do

    end

    describe '#list_verified_email_addresses' do

    end

    describe '#put_configuration_set_delivery_options' do

    end

    describe '#put_identity_policy' do

    end

    describe '#reorder_receipt_rule_set' do

    end

    describe '#send_bounce' do

    end

    describe '#send_bulk_templated_email' do

    end

    describe '#send_custom_verification_email' do

    end

    describe '#send_email' do

    end

    describe '#send_raw_email' do

    end

    describe '#send_templated_email' do

    end

    describe '#set_active_receipt_rule_set' do

    end

    describe '#set_identity_dkim_enabled' do

    end

    describe '#set_identity_feedback_forwarding_enabled' do

    end

    describe '#set_identity_headers_in_notifications_enabled' do

    end

    describe '#set_identity_mail_from_domain' do

    end

    describe '#set_identity_notification_topic' do

    end

    describe '#set_receipt_rule_position' do

    end

    describe '#test_render_template' do

    end

    describe '#update_account_sending_enabled' do

    end

    describe '#update_configuration_set_event_destination' do

    end

    describe '#update_configuration_set_reputation_metrics_enabled' do

    end

    describe '#update_configuration_set_sending_enabled' do

    end

    describe '#update_configuration_set_tracking_options' do

    end

    describe '#update_custom_verification_email_template' do

    end

    describe '#update_receipt_rule' do

    end

    describe '#update_template' do

    end

    describe '#verify_domain_dkim' do

    end

    describe '#verify_domain_identity' do

    end

    describe '#verify_email_address' do

    end

    describe '#verify_email_identity' do

    end

  end
end
