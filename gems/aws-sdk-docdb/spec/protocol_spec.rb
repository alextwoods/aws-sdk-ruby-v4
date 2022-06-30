# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-docdb'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::DocDB
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#add_source_identifier_to_subscription' do

    end

    describe '#add_tags_to_resource' do

    end

    describe '#apply_pending_maintenance_action' do

    end

    describe '#copy_db_cluster_parameter_group' do

    end

    describe '#copy_db_cluster_snapshot' do

    end

    describe '#create_db_cluster' do

    end

    describe '#create_db_cluster_parameter_group' do

    end

    describe '#create_db_cluster_snapshot' do

    end

    describe '#create_db_instance' do

    end

    describe '#create_db_subnet_group' do

    end

    describe '#create_event_subscription' do

    end

    describe '#create_global_cluster' do

    end

    describe '#delete_db_cluster' do

    end

    describe '#delete_db_cluster_parameter_group' do

    end

    describe '#delete_db_cluster_snapshot' do

    end

    describe '#delete_db_instance' do

    end

    describe '#delete_db_subnet_group' do

    end

    describe '#delete_event_subscription' do

    end

    describe '#delete_global_cluster' do

    end

    describe '#describe_certificates' do

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

    describe '#describe_db_instances' do

    end

    describe '#describe_db_subnet_groups' do

    end

    describe '#describe_engine_default_cluster_parameters' do

    end

    describe '#describe_event_categories' do

    end

    describe '#describe_events' do

    end

    describe '#describe_event_subscriptions' do

    end

    describe '#describe_global_clusters' do

    end

    describe '#describe_orderable_db_instance_options' do

    end

    describe '#describe_pending_maintenance_actions' do

    end

    describe '#failover_db_cluster' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#modify_db_cluster' do

    end

    describe '#modify_db_cluster_parameter_group' do

    end

    describe '#modify_db_cluster_snapshot_attribute' do

    end

    describe '#modify_db_instance' do

    end

    describe '#modify_db_subnet_group' do

    end

    describe '#modify_event_subscription' do

    end

    describe '#modify_global_cluster' do

    end

    describe '#reboot_db_instance' do

    end

    describe '#remove_from_global_cluster' do

    end

    describe '#remove_source_identifier_from_subscription' do

    end

    describe '#remove_tags_from_resource' do

    end

    describe '#reset_db_cluster_parameter_group' do

    end

    describe '#restore_db_cluster_from_snapshot' do

    end

    describe '#restore_db_cluster_to_point_in_time' do

    end

    describe '#start_db_cluster' do

    end

    describe '#stop_db_cluster' do

    end

  end
end
