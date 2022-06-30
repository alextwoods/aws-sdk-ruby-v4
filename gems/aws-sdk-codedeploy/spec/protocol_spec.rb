# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-codedeploy'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::CodeDeploy
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#add_tags_to_on_premises_instances' do

    end

    describe '#batch_get_application_revisions' do

    end

    describe '#batch_get_applications' do

    end

    describe '#batch_get_deployment_groups' do

    end

    describe '#batch_get_deployment_instances' do

    end

    describe '#batch_get_deployments' do

    end

    describe '#batch_get_deployment_targets' do

    end

    describe '#batch_get_on_premises_instances' do

    end

    describe '#continue_deployment' do

    end

    describe '#create_application' do

    end

    describe '#create_deployment' do

    end

    describe '#create_deployment_config' do

    end

    describe '#create_deployment_group' do

    end

    describe '#delete_application' do

    end

    describe '#delete_deployment_config' do

    end

    describe '#delete_deployment_group' do

    end

    describe '#delete_git_hub_account_token' do

    end

    describe '#delete_resources_by_external_id' do

    end

    describe '#deregister_on_premises_instance' do

    end

    describe '#get_application' do

    end

    describe '#get_application_revision' do

    end

    describe '#get_deployment' do

    end

    describe '#get_deployment_config' do

    end

    describe '#get_deployment_group' do

    end

    describe '#get_deployment_instance' do

    end

    describe '#get_deployment_target' do

    end

    describe '#get_on_premises_instance' do

    end

    describe '#list_application_revisions' do

    end

    describe '#list_applications' do

    end

    describe '#list_deployment_configs' do

    end

    describe '#list_deployment_groups' do

    end

    describe '#list_deployment_instances' do

    end

    describe '#list_deployments' do

    end

    describe '#list_deployment_targets' do

    end

    describe '#list_git_hub_account_token_names' do

    end

    describe '#list_on_premises_instances' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#put_lifecycle_event_hook_execution_status' do

    end

    describe '#register_application_revision' do

    end

    describe '#register_on_premises_instance' do

    end

    describe '#remove_tags_from_on_premises_instances' do

    end

    describe '#skip_wait_time_for_instance_termination' do

    end

    describe '#stop_deployment' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_application' do

    end

    describe '#update_deployment_group' do

    end

  end
end
