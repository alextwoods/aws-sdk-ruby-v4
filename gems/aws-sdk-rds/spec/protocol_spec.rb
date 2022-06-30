# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-rds'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::RDS
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#add_role_to_db_cluster' do

    end

    describe '#add_role_to_db_instance' do

    end

    describe '#add_source_identifier_to_subscription' do

    end

    describe '#add_tags_to_resource' do

    end

    describe '#apply_pending_maintenance_action' do

    end

    describe '#authorize_db_security_group_ingress' do

    end

    describe '#backtrack_db_cluster' do

    end

    describe '#cancel_export_task' do

    end

    describe '#copy_db_cluster_parameter_group' do

    end

    describe '#copy_db_cluster_snapshot' do

    end

    describe '#copy_db_parameter_group' do

    end

    describe '#copy_db_snapshot' do

    end

    describe '#copy_option_group' do

    end

    describe '#create_custom_db_engine_version' do

    end

    describe '#create_db_cluster' do

    end

    describe '#create_db_cluster_endpoint' do

    end

    describe '#create_db_cluster_parameter_group' do

    end

    describe '#create_db_cluster_snapshot' do

    end

    describe '#create_db_instance' do

    end

    describe '#create_db_instance_read_replica' do

    end

    describe '#create_db_parameter_group' do

    end

    describe '#create_db_proxy' do

    end

    describe '#create_db_proxy_endpoint' do

    end

    describe '#create_db_security_group' do

    end

    describe '#create_db_snapshot' do

    end

    describe '#create_db_subnet_group' do

    end

    describe '#create_event_subscription' do

    end

    describe '#create_global_cluster' do

    end

    describe '#create_option_group' do

    end

    describe '#delete_custom_db_engine_version' do

    end

    describe '#delete_db_cluster' do

    end

    describe '#delete_db_cluster_endpoint' do

    end

    describe '#delete_db_cluster_parameter_group' do

    end

    describe '#delete_db_cluster_snapshot' do

    end

    describe '#delete_db_instance' do

    end

    describe '#delete_db_instance_automated_backup' do

    end

    describe '#delete_db_parameter_group' do

    end

    describe '#delete_db_proxy' do

    end

    describe '#delete_db_proxy_endpoint' do

    end

    describe '#delete_db_security_group' do

    end

    describe '#delete_db_snapshot' do

    end

    describe '#delete_db_subnet_group' do

    end

    describe '#delete_event_subscription' do

    end

    describe '#delete_global_cluster' do

    end

    describe '#delete_option_group' do

    end

    describe '#deregister_db_proxy_targets' do

    end

    describe '#describe_account_attributes' do

    end

    describe '#describe_certificates' do

    end

    describe '#describe_db_cluster_backtracks' do

    end

    describe '#describe_db_cluster_endpoints' do

    end

    describe '#describe_db_cluster_parameter_groups' do

    end

    describe '#describe_db_cluster_parameters' do

    end

    describe '#describe_db_clusters' do

    end

    describe '#describe_db_cluster_snapshot_attributes' do

    end

    describe '#describe_db_cluster_snapshots' do

    end

    describe '#describe_db_engine_versions' do

    end

    describe '#describe_db_instance_automated_backups' do

    end

    describe '#describe_db_instances' do

    end

    describe '#describe_db_log_files' do

    end

    describe '#describe_db_parameter_groups' do

    end

    describe '#describe_db_parameters' do

    end

    describe '#describe_db_proxies' do

    end

    describe '#describe_db_proxy_endpoints' do

    end

    describe '#describe_db_proxy_target_groups' do

    end

    describe '#describe_db_proxy_targets' do

    end

    describe '#describe_db_security_groups' do

    end

    describe '#describe_db_snapshot_attributes' do

    end

    describe '#describe_db_snapshots' do

    end

    describe '#describe_db_subnet_groups' do

    end

    describe '#describe_engine_default_cluster_parameters' do

    end

    describe '#describe_engine_default_parameters' do

    end

    describe '#describe_event_categories' do

    end

    describe '#describe_events' do

    end

    describe '#describe_event_subscriptions' do

    end

    describe '#describe_export_tasks' do

    end

    describe '#describe_global_clusters' do

    end

    describe '#describe_option_group_options' do

    end

    describe '#describe_option_groups' do

    end

    describe '#describe_orderable_db_instance_options' do

    end

    describe '#describe_pending_maintenance_actions' do

    end

    describe '#describe_reserved_db_instances' do

    end

    describe '#describe_reserved_db_instances_offerings' do

    end

    describe '#describe_source_regions' do

    end

    describe '#describe_valid_db_instance_modifications' do

    end

    describe '#download_db_log_file_portion' do

    end

    describe '#failover_db_cluster' do

    end

    describe '#failover_global_cluster' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#modify_certificates' do

    end

    describe '#modify_current_db_cluster_capacity' do

    end

    describe '#modify_custom_db_engine_version' do

    end

    describe '#modify_db_cluster' do

    end

    describe '#modify_db_cluster_endpoint' do

    end

    describe '#modify_db_cluster_parameter_group' do

    end

    describe '#modify_db_cluster_snapshot_attribute' do

    end

    describe '#modify_db_instance' do

    end

    describe '#modify_db_parameter_group' do

    end

    describe '#modify_db_proxy' do

    end

    describe '#modify_db_proxy_endpoint' do

    end

    describe '#modify_db_proxy_target_group' do

    end

    describe '#modify_db_snapshot' do

    end

    describe '#modify_db_snapshot_attribute' do

    end

    describe '#modify_db_subnet_group' do

    end

    describe '#modify_event_subscription' do

    end

    describe '#modify_global_cluster' do

    end

    describe '#modify_option_group' do

    end

    describe '#promote_read_replica' do

    end

    describe '#promote_read_replica_db_cluster' do

    end

    describe '#purchase_reserved_db_instances_offering' do

    end

    describe '#reboot_db_cluster' do

    end

    describe '#reboot_db_instance' do

    end

    describe '#register_db_proxy_targets' do

    end

    describe '#remove_from_global_cluster' do

    end

    describe '#remove_role_from_db_cluster' do

    end

    describe '#remove_role_from_db_instance' do

    end

    describe '#remove_source_identifier_from_subscription' do

    end

    describe '#remove_tags_from_resource' do

    end

    describe '#reset_db_cluster_parameter_group' do

    end

    describe '#reset_db_parameter_group' do

    end

    describe '#restore_db_cluster_from_s3' do

    end

    describe '#restore_db_cluster_from_snapshot' do

    end

    describe '#restore_db_cluster_to_point_in_time' do

    end

    describe '#restore_db_instance_from_db_snapshot' do

    end

    describe '#restore_db_instance_from_s3' do

    end

    describe '#restore_db_instance_to_point_in_time' do

    end

    describe '#revoke_db_security_group_ingress' do

    end

    describe '#start_activity_stream' do

    end

    describe '#start_db_cluster' do

    end

    describe '#start_db_instance' do

    end

    describe '#start_db_instance_automated_backups_replication' do

    end

    describe '#start_export_task' do

    end

    describe '#stop_activity_stream' do

    end

    describe '#stop_db_cluster' do

    end

    describe '#stop_db_instance' do

    end

    describe '#stop_db_instance_automated_backups_replication' do

    end

  end
end
