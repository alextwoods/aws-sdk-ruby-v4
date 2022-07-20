# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-redshift'

module AWS::SDK::Redshift
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#accept_reserved_node_exchange' do

    end

    describe '#add_partner' do

    end

    describe '#associate_data_share_consumer' do

    end

    describe '#authorize_cluster_security_group_ingress' do

    end

    describe '#authorize_data_share' do

    end

    describe '#authorize_endpoint_access' do

    end

    describe '#authorize_snapshot_access' do

    end

    describe '#batch_delete_cluster_snapshots' do

    end

    describe '#batch_modify_cluster_snapshots' do

    end

    describe '#cancel_resize' do

    end

    describe '#copy_cluster_snapshot' do

    end

    describe '#create_authentication_profile' do

    end

    describe '#create_cluster' do

    end

    describe '#create_cluster_parameter_group' do

    end

    describe '#create_cluster_security_group' do

    end

    describe '#create_cluster_snapshot' do

    end

    describe '#create_cluster_subnet_group' do

    end

    describe '#create_endpoint_access' do

    end

    describe '#create_event_subscription' do

    end

    describe '#create_hsm_client_certificate' do

    end

    describe '#create_hsm_configuration' do

    end

    describe '#create_scheduled_action' do

    end

    describe '#create_snapshot_copy_grant' do

    end

    describe '#create_snapshot_schedule' do

    end

    describe '#create_tags' do

    end

    describe '#create_usage_limit' do

    end

    describe '#deauthorize_data_share' do

    end

    describe '#delete_authentication_profile' do

    end

    describe '#delete_cluster' do

    end

    describe '#delete_cluster_parameter_group' do

    end

    describe '#delete_cluster_security_group' do

    end

    describe '#delete_cluster_snapshot' do

    end

    describe '#delete_cluster_subnet_group' do

    end

    describe '#delete_endpoint_access' do

    end

    describe '#delete_event_subscription' do

    end

    describe '#delete_hsm_client_certificate' do

    end

    describe '#delete_hsm_configuration' do

    end

    describe '#delete_partner' do

    end

    describe '#delete_scheduled_action' do

    end

    describe '#delete_snapshot_copy_grant' do

    end

    describe '#delete_snapshot_schedule' do

    end

    describe '#delete_tags' do

    end

    describe '#delete_usage_limit' do

    end

    describe '#describe_account_attributes' do

    end

    describe '#describe_authentication_profiles' do

    end

    describe '#describe_cluster_db_revisions' do

    end

    describe '#describe_cluster_parameter_groups' do

    end

    describe '#describe_cluster_parameters' do

    end

    describe '#describe_clusters' do

    end

    describe '#describe_cluster_security_groups' do

    end

    describe '#describe_cluster_snapshots' do

    end

    describe '#describe_cluster_subnet_groups' do

    end

    describe '#describe_cluster_tracks' do

    end

    describe '#describe_cluster_versions' do

    end

    describe '#describe_data_shares' do

    end

    describe '#describe_data_shares_for_consumer' do

    end

    describe '#describe_data_shares_for_producer' do

    end

    describe '#describe_default_cluster_parameters' do

    end

    describe '#describe_endpoint_access' do

    end

    describe '#describe_endpoint_authorization' do

    end

    describe '#describe_event_categories' do

    end

    describe '#describe_events' do

    end

    describe '#describe_event_subscriptions' do

    end

    describe '#describe_hsm_client_certificates' do

    end

    describe '#describe_hsm_configurations' do

    end

    describe '#describe_logging_status' do

    end

    describe '#describe_node_configuration_options' do

    end

    describe '#describe_orderable_cluster_options' do

    end

    describe '#describe_partners' do

    end

    describe '#describe_reserved_node_exchange_status' do

    end

    describe '#describe_reserved_node_offerings' do

    end

    describe '#describe_reserved_nodes' do

    end

    describe '#describe_resize' do

    end

    describe '#describe_scheduled_actions' do

    end

    describe '#describe_snapshot_copy_grants' do

    end

    describe '#describe_snapshot_schedules' do

    end

    describe '#describe_storage' do

    end

    describe '#describe_table_restore_status' do

    end

    describe '#describe_tags' do

    end

    describe '#describe_usage_limits' do

    end

    describe '#disable_logging' do

    end

    describe '#disable_snapshot_copy' do

    end

    describe '#disassociate_data_share_consumer' do

    end

    describe '#enable_logging' do

    end

    describe '#enable_snapshot_copy' do

    end

    describe '#get_cluster_credentials' do

    end

    describe '#get_cluster_credentials_with_iam' do

    end

    describe '#get_reserved_node_exchange_configuration_options' do

    end

    describe '#get_reserved_node_exchange_offerings' do

    end

    describe '#modify_aqua_configuration' do

    end

    describe '#modify_authentication_profile' do

    end

    describe '#modify_cluster' do

    end

    describe '#modify_cluster_db_revision' do

    end

    describe '#modify_cluster_iam_roles' do

    end

    describe '#modify_cluster_maintenance' do

    end

    describe '#modify_cluster_parameter_group' do

    end

    describe '#modify_cluster_snapshot' do

    end

    describe '#modify_cluster_snapshot_schedule' do

    end

    describe '#modify_cluster_subnet_group' do

    end

    describe '#modify_endpoint_access' do

    end

    describe '#modify_event_subscription' do

    end

    describe '#modify_scheduled_action' do

    end

    describe '#modify_snapshot_copy_retention_period' do

    end

    describe '#modify_snapshot_schedule' do

    end

    describe '#modify_usage_limit' do

    end

    describe '#pause_cluster' do

    end

    describe '#purchase_reserved_node_offering' do

    end

    describe '#reboot_cluster' do

    end

    describe '#reject_data_share' do

    end

    describe '#reset_cluster_parameter_group' do

    end

    describe '#resize_cluster' do

    end

    describe '#restore_from_cluster_snapshot' do

    end

    describe '#restore_table_from_cluster_snapshot' do

    end

    describe '#resume_cluster' do

    end

    describe '#revoke_cluster_security_group_ingress' do

    end

    describe '#revoke_endpoint_access' do

    end

    describe '#revoke_snapshot_access' do

    end

    describe '#rotate_encryption_key' do

    end

    describe '#update_partner_status' do

    end

  end
end
