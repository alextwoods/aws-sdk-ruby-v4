# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-ecs'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::ECS
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#create_capacity_provider' do

    end

    describe '#create_cluster' do

    end

    describe '#create_service' do

    end

    describe '#create_task_set' do

    end

    describe '#delete_account_setting' do

    end

    describe '#delete_attributes' do

    end

    describe '#delete_capacity_provider' do

    end

    describe '#delete_cluster' do

    end

    describe '#delete_service' do

    end

    describe '#delete_task_set' do

    end

    describe '#deregister_container_instance' do

    end

    describe '#deregister_task_definition' do

    end

    describe '#describe_capacity_providers' do

    end

    describe '#describe_clusters' do

    end

    describe '#describe_container_instances' do

    end

    describe '#describe_services' do

    end

    describe '#describe_task_definition' do

    end

    describe '#describe_tasks' do

    end

    describe '#describe_task_sets' do

    end

    describe '#discover_poll_endpoint' do

    end

    describe '#execute_command' do

    end

    describe '#list_account_settings' do

    end

    describe '#list_attributes' do

    end

    describe '#list_clusters' do

    end

    describe '#list_container_instances' do

    end

    describe '#list_services' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#list_task_definition_families' do

    end

    describe '#list_task_definitions' do

    end

    describe '#list_tasks' do

    end

    describe '#put_account_setting' do

    end

    describe '#put_account_setting_default' do

    end

    describe '#put_attributes' do

    end

    describe '#put_cluster_capacity_providers' do

    end

    describe '#register_container_instance' do

    end

    describe '#register_task_definition' do

    end

    describe '#run_task' do

    end

    describe '#start_task' do

    end

    describe '#stop_task' do

    end

    describe '#submit_attachment_state_changes' do

    end

    describe '#submit_container_state_change' do

    end

    describe '#submit_task_state_change' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_capacity_provider' do

    end

    describe '#update_cluster' do

    end

    describe '#update_cluster_settings' do

    end

    describe '#update_container_agent' do

    end

    describe '#update_container_instances_state' do

    end

    describe '#update_service' do

    end

    describe '#update_service_primary_task_set' do

    end

    describe '#update_task_set' do

    end

  end
end
