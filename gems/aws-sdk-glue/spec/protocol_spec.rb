# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-glue'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::Glue
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#batch_create_partition' do

    end

    describe '#batch_delete_connection' do

    end

    describe '#batch_delete_partition' do

    end

    describe '#batch_delete_table' do

    end

    describe '#batch_delete_table_version' do

    end

    describe '#batch_get_blueprints' do

    end

    describe '#batch_get_crawlers' do

    end

    describe '#batch_get_custom_entity_types' do

    end

    describe '#batch_get_dev_endpoints' do

    end

    describe '#batch_get_jobs' do

    end

    describe '#batch_get_partition' do

    end

    describe '#batch_get_triggers' do

    end

    describe '#batch_get_workflows' do

    end

    describe '#batch_stop_job_run' do

    end

    describe '#batch_update_partition' do

    end

    describe '#cancel_ml_task_run' do

    end

    describe '#cancel_statement' do

    end

    describe '#check_schema_version_validity' do

    end

    describe '#create_blueprint' do

    end

    describe '#create_classifier' do

    end

    describe '#create_connection' do

    end

    describe '#create_crawler' do

    end

    describe '#create_custom_entity_type' do

    end

    describe '#create_database' do

    end

    describe '#create_dev_endpoint' do

    end

    describe '#create_job' do

    end

    describe '#create_ml_transform' do

    end

    describe '#create_partition' do

    end

    describe '#create_partition_index' do

    end

    describe '#create_registry' do

    end

    describe '#create_schema' do

    end

    describe '#create_script' do

    end

    describe '#create_security_configuration' do

    end

    describe '#create_session' do

    end

    describe '#create_table' do

    end

    describe '#create_trigger' do

    end

    describe '#create_user_defined_function' do

    end

    describe '#create_workflow' do

    end

    describe '#delete_blueprint' do

    end

    describe '#delete_classifier' do

    end

    describe '#delete_column_statistics_for_partition' do

    end

    describe '#delete_column_statistics_for_table' do

    end

    describe '#delete_connection' do

    end

    describe '#delete_crawler' do

    end

    describe '#delete_custom_entity_type' do

    end

    describe '#delete_database' do

    end

    describe '#delete_dev_endpoint' do

    end

    describe '#delete_job' do

    end

    describe '#delete_ml_transform' do

    end

    describe '#delete_partition' do

    end

    describe '#delete_partition_index' do

    end

    describe '#delete_registry' do

    end

    describe '#delete_resource_policy' do

    end

    describe '#delete_schema' do

    end

    describe '#delete_schema_versions' do

    end

    describe '#delete_security_configuration' do

    end

    describe '#delete_session' do

    end

    describe '#delete_table' do

    end

    describe '#delete_table_version' do

    end

    describe '#delete_trigger' do

    end

    describe '#delete_user_defined_function' do

    end

    describe '#delete_workflow' do

    end

    describe '#get_blueprint' do

    end

    describe '#get_blueprint_run' do

    end

    describe '#get_blueprint_runs' do

    end

    describe '#get_catalog_import_status' do

    end

    describe '#get_classifier' do

    end

    describe '#get_classifiers' do

    end

    describe '#get_column_statistics_for_partition' do

    end

    describe '#get_column_statistics_for_table' do

    end

    describe '#get_connection' do

    end

    describe '#get_connections' do

    end

    describe '#get_crawler' do

    end

    describe '#get_crawler_metrics' do

    end

    describe '#get_crawlers' do

    end

    describe '#get_custom_entity_type' do

    end

    describe '#get_database' do

    end

    describe '#get_databases' do

    end

    describe '#get_data_catalog_encryption_settings' do

    end

    describe '#get_dataflow_graph' do

    end

    describe '#get_dev_endpoint' do

    end

    describe '#get_dev_endpoints' do

    end

    describe '#get_job' do

    end

    describe '#get_job_bookmark' do

    end

    describe '#get_job_run' do

    end

    describe '#get_job_runs' do

    end

    describe '#get_jobs' do

    end

    describe '#get_mapping' do

    end

    describe '#get_ml_task_run' do

    end

    describe '#get_ml_task_runs' do

    end

    describe '#get_ml_transform' do

    end

    describe '#get_ml_transforms' do

    end

    describe '#get_partition' do

    end

    describe '#get_partition_indexes' do

    end

    describe '#get_partitions' do

    end

    describe '#get_plan' do

    end

    describe '#get_registry' do

    end

    describe '#get_resource_policies' do

    end

    describe '#get_resource_policy' do

    end

    describe '#get_schema' do

    end

    describe '#get_schema_by_definition' do

    end

    describe '#get_schema_version' do

    end

    describe '#get_schema_versions_diff' do

    end

    describe '#get_security_configuration' do

    end

    describe '#get_security_configurations' do

    end

    describe '#get_session' do

    end

    describe '#get_statement' do

    end

    describe '#get_table' do

    end

    describe '#get_tables' do

    end

    describe '#get_table_version' do

    end

    describe '#get_table_versions' do

    end

    describe '#get_tags' do

    end

    describe '#get_trigger' do

    end

    describe '#get_triggers' do

    end

    describe '#get_unfiltered_partition_metadata' do

    end

    describe '#get_unfiltered_partitions_metadata' do

    end

    describe '#get_unfiltered_table_metadata' do

    end

    describe '#get_user_defined_function' do

    end

    describe '#get_user_defined_functions' do

    end

    describe '#get_workflow' do

    end

    describe '#get_workflow_run' do

    end

    describe '#get_workflow_run_properties' do

    end

    describe '#get_workflow_runs' do

    end

    describe '#import_catalog_to_glue' do

    end

    describe '#list_blueprints' do

    end

    describe '#list_crawlers' do

    end

    describe '#list_custom_entity_types' do

    end

    describe '#list_dev_endpoints' do

    end

    describe '#list_jobs' do

    end

    describe '#list_ml_transforms' do

    end

    describe '#list_registries' do

    end

    describe '#list_schemas' do

    end

    describe '#list_schema_versions' do

    end

    describe '#list_sessions' do

    end

    describe '#list_statements' do

    end

    describe '#list_triggers' do

    end

    describe '#list_workflows' do

    end

    describe '#put_data_catalog_encryption_settings' do

    end

    describe '#put_resource_policy' do

    end

    describe '#put_schema_version_metadata' do

    end

    describe '#put_workflow_run_properties' do

    end

    describe '#query_schema_version_metadata' do

    end

    describe '#register_schema_version' do

    end

    describe '#remove_schema_version_metadata' do

    end

    describe '#reset_job_bookmark' do

    end

    describe '#resume_workflow_run' do

    end

    describe '#run_statement' do

    end

    describe '#search_tables' do

    end

    describe '#start_blueprint_run' do

    end

    describe '#start_crawler' do

    end

    describe '#start_crawler_schedule' do

    end

    describe '#start_export_labels_task_run' do

    end

    describe '#start_import_labels_task_run' do

    end

    describe '#start_job_run' do

    end

    describe '#start_ml_evaluation_task_run' do

    end

    describe '#start_ml_labeling_set_generation_task_run' do

    end

    describe '#start_trigger' do

    end

    describe '#start_workflow_run' do

    end

    describe '#stop_crawler' do

    end

    describe '#stop_crawler_schedule' do

    end

    describe '#stop_session' do

    end

    describe '#stop_trigger' do

    end

    describe '#stop_workflow_run' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_blueprint' do

    end

    describe '#update_classifier' do

    end

    describe '#update_column_statistics_for_partition' do

    end

    describe '#update_column_statistics_for_table' do

    end

    describe '#update_connection' do

    end

    describe '#update_crawler' do

    end

    describe '#update_crawler_schedule' do

    end

    describe '#update_database' do

    end

    describe '#update_dev_endpoint' do

    end

    describe '#update_job' do

    end

    describe '#update_ml_transform' do

    end

    describe '#update_partition' do

    end

    describe '#update_registry' do

    end

    describe '#update_schema' do

    end

    describe '#update_table' do

    end

    describe '#update_trigger' do

    end

    describe '#update_user_defined_function' do

    end

    describe '#update_workflow' do

    end

  end
end
