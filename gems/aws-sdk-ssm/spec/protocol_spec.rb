# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-ssm'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::SSM
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#add_tags_to_resource' do

    end

    describe '#associate_ops_item_related_item' do

    end

    describe '#cancel_command' do

    end

    describe '#cancel_maintenance_window_execution' do

    end

    describe '#create_activation' do

    end

    describe '#create_association' do

    end

    describe '#create_association_batch' do

    end

    describe '#create_document' do

    end

    describe '#create_maintenance_window' do

    end

    describe '#create_ops_item' do

    end

    describe '#create_ops_metadata' do

    end

    describe '#create_patch_baseline' do

    end

    describe '#create_resource_data_sync' do

    end

    describe '#delete_activation' do

    end

    describe '#delete_association' do

    end

    describe '#delete_document' do

    end

    describe '#delete_inventory' do

    end

    describe '#delete_maintenance_window' do

    end

    describe '#delete_ops_metadata' do

    end

    describe '#delete_parameter' do

    end

    describe '#delete_parameters' do

    end

    describe '#delete_patch_baseline' do

    end

    describe '#delete_resource_data_sync' do

    end

    describe '#deregister_managed_instance' do

    end

    describe '#deregister_patch_baseline_for_patch_group' do

    end

    describe '#deregister_target_from_maintenance_window' do

    end

    describe '#deregister_task_from_maintenance_window' do

    end

    describe '#describe_activations' do

    end

    describe '#describe_association' do

    end

    describe '#describe_association_executions' do

    end

    describe '#describe_association_execution_targets' do

    end

    describe '#describe_automation_executions' do

    end

    describe '#describe_automation_step_executions' do

    end

    describe '#describe_available_patches' do

    end

    describe '#describe_document' do

    end

    describe '#describe_document_permission' do

    end

    describe '#describe_effective_instance_associations' do

    end

    describe '#describe_effective_patches_for_patch_baseline' do

    end

    describe '#describe_instance_associations_status' do

    end

    describe '#describe_instance_information' do

    end

    describe '#describe_instance_patches' do

    end

    describe '#describe_instance_patch_states' do

    end

    describe '#describe_instance_patch_states_for_patch_group' do

    end

    describe '#describe_inventory_deletions' do

    end

    describe '#describe_maintenance_window_executions' do

    end

    describe '#describe_maintenance_window_execution_task_invocations' do

    end

    describe '#describe_maintenance_window_execution_tasks' do

    end

    describe '#describe_maintenance_windows' do

    end

    describe '#describe_maintenance_window_schedule' do

    end

    describe '#describe_maintenance_windows_for_target' do

    end

    describe '#describe_maintenance_window_targets' do

    end

    describe '#describe_maintenance_window_tasks' do

    end

    describe '#describe_ops_items' do

    end

    describe '#describe_parameters' do

    end

    describe '#describe_patch_baselines' do

    end

    describe '#describe_patch_groups' do

    end

    describe '#describe_patch_group_state' do

    end

    describe '#describe_patch_properties' do

    end

    describe '#describe_sessions' do

    end

    describe '#disassociate_ops_item_related_item' do

    end

    describe '#get_automation_execution' do

    end

    describe '#get_calendar_state' do

    end

    describe '#get_command_invocation' do

    end

    describe '#get_connection_status' do

    end

    describe '#get_default_patch_baseline' do

    end

    describe '#get_deployable_patch_snapshot_for_instance' do

    end

    describe '#get_document' do

    end

    describe '#get_inventory' do

    end

    describe '#get_inventory_schema' do

    end

    describe '#get_maintenance_window' do

    end

    describe '#get_maintenance_window_execution' do

    end

    describe '#get_maintenance_window_execution_task' do

    end

    describe '#get_maintenance_window_execution_task_invocation' do

    end

    describe '#get_maintenance_window_task' do

    end

    describe '#get_ops_item' do

    end

    describe '#get_ops_metadata' do

    end

    describe '#get_ops_summary' do

    end

    describe '#get_parameter' do

    end

    describe '#get_parameter_history' do

    end

    describe '#get_parameters' do

    end

    describe '#get_parameters_by_path' do

    end

    describe '#get_patch_baseline' do

    end

    describe '#get_patch_baseline_for_patch_group' do

    end

    describe '#get_service_setting' do

    end

    describe '#label_parameter_version' do

    end

    describe '#list_associations' do

    end

    describe '#list_association_versions' do

    end

    describe '#list_command_invocations' do

    end

    describe '#list_commands' do

    end

    describe '#list_compliance_items' do

    end

    describe '#list_compliance_summaries' do

    end

    describe '#list_document_metadata_history' do

    end

    describe '#list_documents' do

    end

    describe '#list_document_versions' do

    end

    describe '#list_inventory_entries' do

    end

    describe '#list_ops_item_events' do

    end

    describe '#list_ops_item_related_items' do

    end

    describe '#list_ops_metadata' do

    end

    describe '#list_resource_compliance_summaries' do

    end

    describe '#list_resource_data_sync' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#modify_document_permission' do

    end

    describe '#put_compliance_items' do

    end

    describe '#put_inventory' do

    end

    describe '#put_parameter' do

    end

    describe '#register_default_patch_baseline' do

    end

    describe '#register_patch_baseline_for_patch_group' do

    end

    describe '#register_target_with_maintenance_window' do

    end

    describe '#register_task_with_maintenance_window' do

    end

    describe '#remove_tags_from_resource' do

    end

    describe '#reset_service_setting' do

    end

    describe '#resume_session' do

    end

    describe '#send_automation_signal' do

    end

    describe '#send_command' do

    end

    describe '#start_associations_once' do

    end

    describe '#start_automation_execution' do

    end

    describe '#start_change_request_execution' do

    end

    describe '#start_session' do

    end

    describe '#stop_automation_execution' do

    end

    describe '#terminate_session' do

    end

    describe '#unlabel_parameter_version' do

    end

    describe '#update_association' do

    end

    describe '#update_association_status' do

    end

    describe '#update_document' do

    end

    describe '#update_document_default_version' do

    end

    describe '#update_document_metadata' do

    end

    describe '#update_maintenance_window' do

    end

    describe '#update_maintenance_window_target' do

    end

    describe '#update_maintenance_window_task' do

    end

    describe '#update_managed_instance_role' do

    end

    describe '#update_ops_item' do

    end

    describe '#update_ops_metadata' do

    end

    describe '#update_patch_baseline' do

    end

    describe '#update_resource_data_sync' do

    end

    describe '#update_service_setting' do

    end

  end
end
