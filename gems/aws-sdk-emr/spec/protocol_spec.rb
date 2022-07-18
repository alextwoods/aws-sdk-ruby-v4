# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-emr'

module AWS::SDK::EMR
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#add_instance_fleet' do

    end

    describe '#add_instance_groups' do

    end

    describe '#add_job_flow_steps' do

    end

    describe '#add_tags' do

    end

    describe '#cancel_steps' do

    end

    describe '#create_security_configuration' do

    end

    describe '#create_studio' do

    end

    describe '#create_studio_session_mapping' do

    end

    describe '#delete_security_configuration' do

    end

    describe '#delete_studio' do

    end

    describe '#delete_studio_session_mapping' do

    end

    describe '#describe_cluster' do

    end

    describe '#describe_job_flows' do

    end

    describe '#describe_notebook_execution' do

    end

    describe '#describe_release_label' do

    end

    describe '#describe_security_configuration' do

    end

    describe '#describe_step' do

    end

    describe '#describe_studio' do

    end

    describe '#get_auto_termination_policy' do

    end

    describe '#get_block_public_access_configuration' do

    end

    describe '#get_managed_scaling_policy' do

    end

    describe '#get_studio_session_mapping' do

    end

    describe '#list_bootstrap_actions' do

    end

    describe '#list_clusters' do

    end

    describe '#list_instance_fleets' do

    end

    describe '#list_instance_groups' do

    end

    describe '#list_instances' do

    end

    describe '#list_notebook_executions' do

    end

    describe '#list_release_labels' do

    end

    describe '#list_security_configurations' do

    end

    describe '#list_steps' do

    end

    describe '#list_studios' do

    end

    describe '#list_studio_session_mappings' do

    end

    describe '#modify_cluster' do

    end

    describe '#modify_instance_fleet' do

    end

    describe '#modify_instance_groups' do

    end

    describe '#put_auto_scaling_policy' do

    end

    describe '#put_auto_termination_policy' do

    end

    describe '#put_block_public_access_configuration' do

    end

    describe '#put_managed_scaling_policy' do

    end

    describe '#remove_auto_scaling_policy' do

    end

    describe '#remove_auto_termination_policy' do

    end

    describe '#remove_managed_scaling_policy' do

    end

    describe '#remove_tags' do

    end

    describe '#run_job_flow' do

    end

    describe '#set_termination_protection' do

    end

    describe '#set_visible_to_all_users' do

    end

    describe '#start_notebook_execution' do

    end

    describe '#stop_notebook_execution' do

    end

    describe '#terminate_job_flows' do

    end

    describe '#update_studio' do

    end

    describe '#update_studio_session_mapping' do

    end

  end
end
