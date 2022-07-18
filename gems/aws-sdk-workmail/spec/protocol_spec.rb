# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-workmail'

module AWS::SDK::WorkMail
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#associate_delegate_to_resource' do

    end

    describe '#associate_member_to_group' do

    end

    describe '#cancel_mailbox_export_job' do

    end

    describe '#create_alias' do

    end

    describe '#create_group' do

    end

    describe '#create_mobile_device_access_rule' do

    end

    describe '#create_organization' do

    end

    describe '#create_resource' do

    end

    describe '#create_user' do

    end

    describe '#delete_access_control_rule' do

    end

    describe '#delete_alias' do

    end

    describe '#delete_email_monitoring_configuration' do

    end

    describe '#delete_group' do

    end

    describe '#delete_mailbox_permissions' do

    end

    describe '#delete_mobile_device_access_override' do

    end

    describe '#delete_mobile_device_access_rule' do

    end

    describe '#delete_organization' do

    end

    describe '#delete_resource' do

    end

    describe '#delete_retention_policy' do

    end

    describe '#delete_user' do

    end

    describe '#deregister_from_work_mail' do

    end

    describe '#deregister_mail_domain' do

    end

    describe '#describe_email_monitoring_configuration' do

    end

    describe '#describe_group' do

    end

    describe '#describe_inbound_dmarc_settings' do

    end

    describe '#describe_mailbox_export_job' do

    end

    describe '#describe_organization' do

    end

    describe '#describe_resource' do

    end

    describe '#describe_user' do

    end

    describe '#disassociate_delegate_from_resource' do

    end

    describe '#disassociate_member_from_group' do

    end

    describe '#get_access_control_effect' do

    end

    describe '#get_default_retention_policy' do

    end

    describe '#get_mailbox_details' do

    end

    describe '#get_mail_domain' do

    end

    describe '#get_mobile_device_access_effect' do

    end

    describe '#get_mobile_device_access_override' do

    end

    describe '#list_access_control_rules' do

    end

    describe '#list_aliases' do

    end

    describe '#list_group_members' do

    end

    describe '#list_groups' do

    end

    describe '#list_mailbox_export_jobs' do

    end

    describe '#list_mailbox_permissions' do

    end

    describe '#list_mail_domains' do

    end

    describe '#list_mobile_device_access_overrides' do

    end

    describe '#list_mobile_device_access_rules' do

    end

    describe '#list_organizations' do

    end

    describe '#list_resource_delegates' do

    end

    describe '#list_resources' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#list_users' do

    end

    describe '#put_access_control_rule' do

    end

    describe '#put_email_monitoring_configuration' do

    end

    describe '#put_inbound_dmarc_settings' do

    end

    describe '#put_mailbox_permissions' do

    end

    describe '#put_mobile_device_access_override' do

    end

    describe '#put_retention_policy' do

    end

    describe '#register_mail_domain' do

    end

    describe '#register_to_work_mail' do

    end

    describe '#reset_password' do

    end

    describe '#start_mailbox_export_job' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_default_mail_domain' do

    end

    describe '#update_mailbox_quota' do

    end

    describe '#update_mobile_device_access_rule' do

    end

    describe '#update_primary_email_address' do

    end

    describe '#update_resource' do

    end

  end
end
