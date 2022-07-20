# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-iam'

module AWS::SDK::IAM
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#add_client_id_to_open_id_connect_provider' do

    end

    describe '#add_role_to_instance_profile' do

    end

    describe '#add_user_to_group' do

    end

    describe '#attach_group_policy' do

    end

    describe '#attach_role_policy' do

    end

    describe '#attach_user_policy' do

    end

    describe '#change_password' do

    end

    describe '#create_access_key' do

    end

    describe '#create_account_alias' do

    end

    describe '#create_group' do

    end

    describe '#create_instance_profile' do

    end

    describe '#create_login_profile' do

    end

    describe '#create_open_id_connect_provider' do

    end

    describe '#create_policy' do

    end

    describe '#create_policy_version' do

    end

    describe '#create_role' do

    end

    describe '#create_saml_provider' do

    end

    describe '#create_service_linked_role' do

    end

    describe '#create_service_specific_credential' do

    end

    describe '#create_user' do

    end

    describe '#create_virtual_mfa_device' do

    end

    describe '#deactivate_mfa_device' do

    end

    describe '#delete_access_key' do

    end

    describe '#delete_account_alias' do

    end

    describe '#delete_account_password_policy' do

    end

    describe '#delete_group' do

    end

    describe '#delete_group_policy' do

    end

    describe '#delete_instance_profile' do

    end

    describe '#delete_login_profile' do

    end

    describe '#delete_open_id_connect_provider' do

    end

    describe '#delete_policy' do

    end

    describe '#delete_policy_version' do

    end

    describe '#delete_role' do

    end

    describe '#delete_role_permissions_boundary' do

    end

    describe '#delete_role_policy' do

    end

    describe '#delete_saml_provider' do

    end

    describe '#delete_server_certificate' do

    end

    describe '#delete_service_linked_role' do

    end

    describe '#delete_service_specific_credential' do

    end

    describe '#delete_signing_certificate' do

    end

    describe '#delete_ssh_public_key' do

    end

    describe '#delete_user' do

    end

    describe '#delete_user_permissions_boundary' do

    end

    describe '#delete_user_policy' do

    end

    describe '#delete_virtual_mfa_device' do

    end

    describe '#detach_group_policy' do

    end

    describe '#detach_role_policy' do

    end

    describe '#detach_user_policy' do

    end

    describe '#enable_mfa_device' do

    end

    describe '#generate_credential_report' do

    end

    describe '#generate_organizations_access_report' do

    end

    describe '#generate_service_last_accessed_details' do

    end

    describe '#get_access_key_last_used' do

    end

    describe '#get_account_authorization_details' do

    end

    describe '#get_account_password_policy' do

    end

    describe '#get_account_summary' do

    end

    describe '#get_context_keys_for_custom_policy' do

    end

    describe '#get_context_keys_for_principal_policy' do

    end

    describe '#get_credential_report' do

    end

    describe '#get_group' do

    end

    describe '#get_group_policy' do

    end

    describe '#get_instance_profile' do

    end

    describe '#get_login_profile' do

    end

    describe '#get_open_id_connect_provider' do

    end

    describe '#get_organizations_access_report' do

    end

    describe '#get_policy' do

    end

    describe '#get_policy_version' do

    end

    describe '#get_role' do

    end

    describe '#get_role_policy' do

    end

    describe '#get_saml_provider' do

    end

    describe '#get_server_certificate' do

    end

    describe '#get_service_last_accessed_details' do

    end

    describe '#get_service_last_accessed_details_with_entities' do

    end

    describe '#get_service_linked_role_deletion_status' do

    end

    describe '#get_ssh_public_key' do

    end

    describe '#get_user' do

    end

    describe '#get_user_policy' do

    end

    describe '#list_access_keys' do

    end

    describe '#list_account_aliases' do

    end

    describe '#list_attached_group_policies' do

    end

    describe '#list_attached_role_policies' do

    end

    describe '#list_attached_user_policies' do

    end

    describe '#list_entities_for_policy' do

    end

    describe '#list_group_policies' do

    end

    describe '#list_groups' do

    end

    describe '#list_groups_for_user' do

    end

    describe '#list_instance_profiles' do

    end

    describe '#list_instance_profiles_for_role' do

    end

    describe '#list_instance_profile_tags' do

    end

    describe '#list_mfa_devices' do

    end

    describe '#list_mfa_device_tags' do

    end

    describe '#list_open_id_connect_providers' do

    end

    describe '#list_open_id_connect_provider_tags' do

    end

    describe '#list_policies' do

    end

    describe '#list_policies_granting_service_access' do

    end

    describe '#list_policy_tags' do

    end

    describe '#list_policy_versions' do

    end

    describe '#list_role_policies' do

    end

    describe '#list_roles' do

    end

    describe '#list_role_tags' do

    end

    describe '#list_saml_providers' do

    end

    describe '#list_saml_provider_tags' do

    end

    describe '#list_server_certificates' do

    end

    describe '#list_server_certificate_tags' do

    end

    describe '#list_service_specific_credentials' do

    end

    describe '#list_signing_certificates' do

    end

    describe '#list_ssh_public_keys' do

    end

    describe '#list_user_policies' do

    end

    describe '#list_users' do

    end

    describe '#list_user_tags' do

    end

    describe '#list_virtual_mfa_devices' do

    end

    describe '#put_group_policy' do

    end

    describe '#put_role_permissions_boundary' do

    end

    describe '#put_role_policy' do

    end

    describe '#put_user_permissions_boundary' do

    end

    describe '#put_user_policy' do

    end

    describe '#remove_client_id_from_open_id_connect_provider' do

    end

    describe '#remove_role_from_instance_profile' do

    end

    describe '#remove_user_from_group' do

    end

    describe '#reset_service_specific_credential' do

    end

    describe '#resync_mfa_device' do

    end

    describe '#set_default_policy_version' do

    end

    describe '#set_security_token_service_preferences' do

    end

    describe '#simulate_custom_policy' do

    end

    describe '#simulate_principal_policy' do

    end

    describe '#tag_instance_profile' do

    end

    describe '#tag_mfa_device' do

    end

    describe '#tag_open_id_connect_provider' do

    end

    describe '#tag_policy' do

    end

    describe '#tag_role' do

    end

    describe '#tag_saml_provider' do

    end

    describe '#tag_server_certificate' do

    end

    describe '#tag_user' do

    end

    describe '#untag_instance_profile' do

    end

    describe '#untag_mfa_device' do

    end

    describe '#untag_open_id_connect_provider' do

    end

    describe '#untag_policy' do

    end

    describe '#untag_role' do

    end

    describe '#untag_saml_provider' do

    end

    describe '#untag_server_certificate' do

    end

    describe '#untag_user' do

    end

    describe '#update_access_key' do

    end

    describe '#update_account_password_policy' do

    end

    describe '#update_assume_role_policy' do

    end

    describe '#update_group' do

    end

    describe '#update_login_profile' do

    end

    describe '#update_open_id_connect_provider_thumbprint' do

    end

    describe '#update_role' do

    end

    describe '#update_role_description' do

    end

    describe '#update_saml_provider' do

    end

    describe '#update_server_certificate' do

    end

    describe '#update_service_specific_credential' do

    end

    describe '#update_signing_certificate' do

    end

    describe '#update_ssh_public_key' do

    end

    describe '#update_user' do

    end

    describe '#upload_server_certificate' do

    end

    describe '#upload_signing_certificate' do

    end

    describe '#upload_ssh_public_key' do

    end

  end
end
