# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-opsworks'

module AWS::SDK::OpsWorks
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#assign_instance' do

    end

    describe '#assign_volume' do

    end

    describe '#associate_elastic_ip' do

    end

    describe '#attach_elastic_load_balancer' do

    end

    describe '#clone_stack' do

    end

    describe '#create_app' do

    end

    describe '#create_deployment' do

    end

    describe '#create_instance' do

    end

    describe '#create_layer' do

    end

    describe '#create_stack' do

    end

    describe '#create_user_profile' do

    end

    describe '#delete_app' do

    end

    describe '#delete_instance' do

    end

    describe '#delete_layer' do

    end

    describe '#delete_stack' do

    end

    describe '#delete_user_profile' do

    end

    describe '#deregister_ecs_cluster' do

    end

    describe '#deregister_elastic_ip' do

    end

    describe '#deregister_instance' do

    end

    describe '#deregister_rds_db_instance' do

    end

    describe '#deregister_volume' do

    end

    describe '#describe_agent_versions' do

    end

    describe '#describe_apps' do

    end

    describe '#describe_commands' do

    end

    describe '#describe_deployments' do

    end

    describe '#describe_ecs_clusters' do

    end

    describe '#describe_elastic_ips' do

    end

    describe '#describe_elastic_load_balancers' do

    end

    describe '#describe_instances' do

    end

    describe '#describe_layers' do

    end

    describe '#describe_load_based_auto_scaling' do

    end

    describe '#describe_my_user_profile' do

    end

    describe '#describe_operating_systems' do

    end

    describe '#describe_permissions' do

    end

    describe '#describe_raid_arrays' do

    end

    describe '#describe_rds_db_instances' do

    end

    describe '#describe_service_errors' do

    end

    describe '#describe_stack_provisioning_parameters' do

    end

    describe '#describe_stacks' do

    end

    describe '#describe_stack_summary' do

    end

    describe '#describe_time_based_auto_scaling' do

    end

    describe '#describe_user_profiles' do

    end

    describe '#describe_volumes' do

    end

    describe '#detach_elastic_load_balancer' do

    end

    describe '#disassociate_elastic_ip' do

    end

    describe '#get_hostname_suggestion' do

    end

    describe '#grant_access' do

    end

    describe '#list_tags' do

    end

    describe '#reboot_instance' do

    end

    describe '#register_ecs_cluster' do

    end

    describe '#register_elastic_ip' do

    end

    describe '#register_instance' do

    end

    describe '#register_rds_db_instance' do

    end

    describe '#register_volume' do

    end

    describe '#set_load_based_auto_scaling' do

    end

    describe '#set_permission' do

    end

    describe '#set_time_based_auto_scaling' do

    end

    describe '#start_instance' do

    end

    describe '#start_stack' do

    end

    describe '#stop_instance' do

    end

    describe '#stop_stack' do

    end

    describe '#tag_resource' do

    end

    describe '#unassign_instance' do

    end

    describe '#unassign_volume' do

    end

    describe '#untag_resource' do

    end

    describe '#update_app' do

    end

    describe '#update_elastic_ip' do

    end

    describe '#update_instance' do

    end

    describe '#update_layer' do

    end

    describe '#update_my_user_profile' do

    end

    describe '#update_rds_db_instance' do

    end

    describe '#update_stack' do

    end

    describe '#update_user_profile' do

    end

    describe '#update_volume' do

    end

  end
end
