# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-sesv2'

module AWS::SDK::SESv2
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#create_configuration_set' do

    end

    describe '#create_configuration_set_event_destination' do

    end

    describe '#create_contact' do

    end

    describe '#create_contact_list' do

    end

    describe '#create_custom_verification_email_template' do

    end

    describe '#create_dedicated_ip_pool' do

    end

    describe '#create_deliverability_test_report' do

    end

    describe '#create_email_identity' do

    end

    describe '#create_email_identity_policy' do

    end

    describe '#create_email_template' do

    end

    describe '#create_import_job' do

    end

    describe '#delete_configuration_set' do

    end

    describe '#delete_configuration_set_event_destination' do

    end

    describe '#delete_contact' do

    end

    describe '#delete_contact_list' do

    end

    describe '#delete_custom_verification_email_template' do

    end

    describe '#delete_dedicated_ip_pool' do

    end

    describe '#delete_email_identity' do

    end

    describe '#delete_email_identity_policy' do

    end

    describe '#delete_email_template' do

    end

    describe '#delete_suppressed_destination' do

    end

    describe '#get_account' do

    end

    describe '#get_blacklist_reports' do

    end

    describe '#get_configuration_set' do

    end

    describe '#get_configuration_set_event_destinations' do

    end

    describe '#get_contact' do

    end

    describe '#get_contact_list' do

    end

    describe '#get_custom_verification_email_template' do

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

    describe '#get_email_identity_policies' do

    end

    describe '#get_email_template' do

    end

    describe '#get_import_job' do

    end

    describe '#get_suppressed_destination' do

    end

    describe '#list_configuration_sets' do

    end

    describe '#list_contact_lists' do

    end

    describe '#list_contacts' do

    end

    describe '#list_custom_verification_email_templates' do

    end

    describe '#list_dedicated_ip_pools' do

    end

    describe '#list_deliverability_test_reports' do

    end

    describe '#list_domain_deliverability_campaigns' do

    end

    describe '#list_email_identities' do

    end

    describe '#list_email_templates' do

    end

    describe '#list_import_jobs' do

    end

    describe '#list_suppressed_destinations' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#put_account_dedicated_ip_warmup_attributes' do

    end

    describe '#put_account_details' do

    end

    describe '#put_account_sending_attributes' do

    end

    describe '#put_account_suppression_attributes' do

    end

    describe '#put_configuration_set_delivery_options' do

    end

    describe '#put_configuration_set_reputation_options' do

    end

    describe '#put_configuration_set_sending_options' do

    end

    describe '#put_configuration_set_suppression_options' do

    end

    describe '#put_configuration_set_tracking_options' do

    end

    describe '#put_dedicated_ip_in_pool' do

    end

    describe '#put_dedicated_ip_warmup_attributes' do

    end

    describe '#put_deliverability_dashboard_option' do

    end

    describe '#put_email_identity_configuration_set_attributes' do

    end

    describe '#put_email_identity_dkim_attributes' do

    end

    describe '#put_email_identity_dkim_signing_attributes' do

    end

    describe '#put_email_identity_feedback_attributes' do

    end

    describe '#put_email_identity_mail_from_attributes' do

    end

    describe '#put_suppressed_destination' do

    end

    describe '#send_bulk_email' do

    end

    describe '#send_custom_verification_email' do

    end

    describe '#send_email' do

    end

    describe '#tag_resource' do

    end

    describe '#test_render_email_template' do

    end

    describe '#untag_resource' do

    end

    describe '#update_configuration_set_event_destination' do

    end

    describe '#update_contact' do

    end

    describe '#update_contact_list' do

    end

    describe '#update_custom_verification_email_template' do

    end

    describe '#update_email_identity_policy' do

    end

    describe '#update_email_template' do

    end

  end
end
