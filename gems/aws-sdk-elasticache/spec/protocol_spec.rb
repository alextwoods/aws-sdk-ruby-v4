# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-elasticache'

module AWS::SDK::ElastiCache
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#add_tags_to_resource' do

    end

    describe '#authorize_cache_security_group_ingress' do

    end

    describe '#batch_apply_update_action' do

    end

    describe '#batch_stop_update_action' do

    end

    describe '#complete_migration' do

    end

    describe '#copy_snapshot' do

    end

    describe '#create_cache_cluster' do

    end

    describe '#create_cache_parameter_group' do

    end

    describe '#create_cache_security_group' do

    end

    describe '#create_cache_subnet_group' do

    end

    describe '#create_global_replication_group' do

    end

    describe '#create_replication_group' do

    end

    describe '#create_snapshot' do

    end

    describe '#create_user' do

    end

    describe '#create_user_group' do

    end

    describe '#decrease_node_groups_in_global_replication_group' do

    end

    describe '#decrease_replica_count' do

    end

    describe '#delete_cache_cluster' do

    end

    describe '#delete_cache_parameter_group' do

    end

    describe '#delete_cache_security_group' do

    end

    describe '#delete_cache_subnet_group' do

    end

    describe '#delete_global_replication_group' do

    end

    describe '#delete_replication_group' do

    end

    describe '#delete_snapshot' do

    end

    describe '#delete_user' do

    end

    describe '#delete_user_group' do

    end

    describe '#describe_cache_clusters' do

    end

    describe '#describe_cache_engine_versions' do

    end

    describe '#describe_cache_parameter_groups' do

    end

    describe '#describe_cache_parameters' do

    end

    describe '#describe_cache_security_groups' do

    end

    describe '#describe_cache_subnet_groups' do

    end

    describe '#describe_engine_default_parameters' do

    end

    describe '#describe_events' do

    end

    describe '#describe_global_replication_groups' do

    end

    describe '#describe_replication_groups' do

    end

    describe '#describe_reserved_cache_nodes' do

    end

    describe '#describe_reserved_cache_nodes_offerings' do

    end

    describe '#describe_service_updates' do

    end

    describe '#describe_snapshots' do

    end

    describe '#describe_update_actions' do

    end

    describe '#describe_user_groups' do

    end

    describe '#describe_users' do

    end

    describe '#disassociate_global_replication_group' do

    end

    describe '#failover_global_replication_group' do

    end

    describe '#increase_node_groups_in_global_replication_group' do

    end

    describe '#increase_replica_count' do

    end

    describe '#list_allowed_node_type_modifications' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#modify_cache_cluster' do

    end

    describe '#modify_cache_parameter_group' do

    end

    describe '#modify_cache_subnet_group' do

    end

    describe '#modify_global_replication_group' do

    end

    describe '#modify_replication_group' do

    end

    describe '#modify_replication_group_shard_configuration' do

    end

    describe '#modify_user' do

    end

    describe '#modify_user_group' do

    end

    describe '#purchase_reserved_cache_nodes_offering' do

    end

    describe '#rebalance_slots_in_global_replication_group' do

    end

    describe '#reboot_cache_cluster' do

    end

    describe '#remove_tags_from_resource' do

    end

    describe '#reset_cache_parameter_group' do

    end

    describe '#revoke_cache_security_group_ingress' do

    end

    describe '#start_migration' do

    end

    describe '#test_failover' do

    end

  end
end
