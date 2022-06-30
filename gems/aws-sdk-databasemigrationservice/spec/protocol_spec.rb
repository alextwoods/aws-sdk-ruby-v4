# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-databasemigrationservice'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::DatabaseMigrationService
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#add_tags_to_resource' do

    end

    describe '#apply_pending_maintenance_action' do

    end

    describe '#cancel_replication_task_assessment_run' do

    end

    describe '#create_endpoint' do

    end

    describe '#create_event_subscription' do

    end

    describe '#create_fleet_advisor_collector' do

    end

    describe '#create_replication_instance' do

    end

    describe '#create_replication_subnet_group' do

    end

    describe '#create_replication_task' do

    end

    describe '#delete_certificate' do

    end

    describe '#delete_connection' do

    end

    describe '#delete_endpoint' do

    end

    describe '#delete_event_subscription' do

    end

    describe '#delete_fleet_advisor_collector' do

    end

    describe '#delete_fleet_advisor_databases' do

    end

    describe '#delete_replication_instance' do

    end

    describe '#delete_replication_subnet_group' do

    end

    describe '#delete_replication_task' do

    end

    describe '#delete_replication_task_assessment_run' do

    end

    describe '#describe_account_attributes' do

    end

    describe '#describe_applicable_individual_assessments' do

    end

    describe '#describe_certificates' do

    end

    describe '#describe_connections' do

    end

    describe '#describe_endpoints' do

    end

    describe '#describe_endpoint_settings' do

    end

    describe '#describe_endpoint_types' do

    end

    describe '#describe_event_categories' do

    end

    describe '#describe_events' do

    end

    describe '#describe_event_subscriptions' do

    end

    describe '#describe_fleet_advisor_collectors' do

    end

    describe '#describe_fleet_advisor_databases' do

    end

    describe '#describe_fleet_advisor_lsa_analysis' do

    end

    describe '#describe_fleet_advisor_schema_object_summary' do

    end

    describe '#describe_fleet_advisor_schemas' do

    end

    describe '#describe_orderable_replication_instances' do

    end

    describe '#describe_pending_maintenance_actions' do

    end

    describe '#describe_refresh_schemas_status' do

    end

    describe '#describe_replication_instances' do

    end

    describe '#describe_replication_instance_task_logs' do

    end

    describe '#describe_replication_subnet_groups' do

    end

    describe '#describe_replication_task_assessment_results' do

    end

    describe '#describe_replication_task_assessment_runs' do

    end

    describe '#describe_replication_task_individual_assessments' do

    end

    describe '#describe_replication_tasks' do

    end

    describe '#describe_schemas' do

    end

    describe '#describe_table_statistics' do

    end

    describe '#import_certificate' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#modify_endpoint' do

    end

    describe '#modify_event_subscription' do

    end

    describe '#modify_replication_instance' do

    end

    describe '#modify_replication_subnet_group' do

    end

    describe '#modify_replication_task' do

    end

    describe '#move_replication_task' do

    end

    describe '#reboot_replication_instance' do

    end

    describe '#refresh_schemas' do

    end

    describe '#reload_tables' do

    end

    describe '#remove_tags_from_resource' do

    end

    describe '#run_fleet_advisor_lsa_analysis' do

    end

    describe '#start_replication_task' do

    end

    describe '#start_replication_task_assessment' do

    end

    describe '#start_replication_task_assessment_run' do

    end

    describe '#stop_replication_task' do

    end

    describe '#test_connection' do

    end

  end
end
