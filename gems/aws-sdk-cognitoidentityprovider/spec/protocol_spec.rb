# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-cognitoidentityprovider'

module AWS::SDK::CognitoIdentityProvider
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#add_custom_attributes' do

    end

    describe '#admin_add_user_to_group' do

    end

    describe '#admin_confirm_sign_up' do

    end

    describe '#admin_create_user' do

    end

    describe '#admin_delete_user' do

    end

    describe '#admin_delete_user_attributes' do

    end

    describe '#admin_disable_provider_for_user' do

    end

    describe '#admin_disable_user' do

    end

    describe '#admin_enable_user' do

    end

    describe '#admin_forget_device' do

    end

    describe '#admin_get_device' do

    end

    describe '#admin_get_user' do

    end

    describe '#admin_initiate_auth' do

    end

    describe '#admin_link_provider_for_user' do

    end

    describe '#admin_list_devices' do

    end

    describe '#admin_list_groups_for_user' do

    end

    describe '#admin_list_user_auth_events' do

    end

    describe '#admin_remove_user_from_group' do

    end

    describe '#admin_reset_user_password' do

    end

    describe '#admin_respond_to_auth_challenge' do

    end

    describe '#admin_set_user_mfa_preference' do

    end

    describe '#admin_set_user_password' do

    end

    describe '#admin_set_user_settings' do

    end

    describe '#admin_update_auth_event_feedback' do

    end

    describe '#admin_update_device_status' do

    end

    describe '#admin_update_user_attributes' do

    end

    describe '#admin_user_global_sign_out' do

    end

    describe '#associate_software_token' do

    end

    describe '#change_password' do

    end

    describe '#confirm_device' do

    end

    describe '#confirm_forgot_password' do

    end

    describe '#confirm_sign_up' do

    end

    describe '#create_group' do

    end

    describe '#create_identity_provider' do

    end

    describe '#create_resource_server' do

    end

    describe '#create_user_import_job' do

    end

    describe '#create_user_pool' do

    end

    describe '#create_user_pool_client' do

    end

    describe '#create_user_pool_domain' do

    end

    describe '#delete_group' do

    end

    describe '#delete_identity_provider' do

    end

    describe '#delete_resource_server' do

    end

    describe '#delete_user' do

    end

    describe '#delete_user_attributes' do

    end

    describe '#delete_user_pool' do

    end

    describe '#delete_user_pool_client' do

    end

    describe '#delete_user_pool_domain' do

    end

    describe '#describe_identity_provider' do

    end

    describe '#describe_resource_server' do

    end

    describe '#describe_risk_configuration' do

    end

    describe '#describe_user_import_job' do

    end

    describe '#describe_user_pool' do

    end

    describe '#describe_user_pool_client' do

    end

    describe '#describe_user_pool_domain' do

    end

    describe '#forget_device' do

    end

    describe '#forgot_password' do

    end

    describe '#get_csv_header' do

    end

    describe '#get_device' do

    end

    describe '#get_group' do

    end

    describe '#get_identity_provider_by_identifier' do

    end

    describe '#get_signing_certificate' do

    end

    describe '#get_ui_customization' do

    end

    describe '#get_user' do

    end

    describe '#get_user_attribute_verification_code' do

    end

    describe '#get_user_pool_mfa_config' do

    end

    describe '#global_sign_out' do

    end

    describe '#initiate_auth' do

    end

    describe '#list_devices' do

    end

    describe '#list_groups' do

    end

    describe '#list_identity_providers' do

    end

    describe '#list_resource_servers' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#list_user_import_jobs' do

    end

    describe '#list_user_pool_clients' do

    end

    describe '#list_user_pools' do

    end

    describe '#list_users' do

    end

    describe '#list_users_in_group' do

    end

    describe '#resend_confirmation_code' do

    end

    describe '#respond_to_auth_challenge' do

    end

    describe '#revoke_token' do

    end

    describe '#set_risk_configuration' do

    end

    describe '#set_ui_customization' do

    end

    describe '#set_user_mfa_preference' do

    end

    describe '#set_user_pool_mfa_config' do

    end

    describe '#set_user_settings' do

    end

    describe '#sign_up' do

    end

    describe '#start_user_import_job' do

    end

    describe '#stop_user_import_job' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_auth_event_feedback' do

    end

    describe '#update_device_status' do

    end

    describe '#update_group' do

    end

    describe '#update_identity_provider' do

    end

    describe '#update_resource_server' do

    end

    describe '#update_user_attributes' do

    end

    describe '#update_user_pool' do

    end

    describe '#update_user_pool_client' do

    end

    describe '#update_user_pool_domain' do

    end

    describe '#verify_software_token' do

    end

    describe '#verify_user_attribute' do

    end

  end
end
