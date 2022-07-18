# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-autoscaling'

module AWS::SDK::AutoScaling
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#attach_instances' do

    end

    describe '#attach_load_balancers' do

    end

    describe '#attach_load_balancer_target_groups' do

    end

    describe '#batch_delete_scheduled_action' do

    end

    describe '#batch_put_scheduled_update_group_action' do

    end

    describe '#cancel_instance_refresh' do

    end

    describe '#complete_lifecycle_action' do

    end

    describe '#create_auto_scaling_group' do

    end

    describe '#create_launch_configuration' do

    end

    describe '#create_or_update_tags' do

    end

    describe '#delete_auto_scaling_group' do

    end

    describe '#delete_launch_configuration' do

    end

    describe '#delete_lifecycle_hook' do

    end

    describe '#delete_notification_configuration' do

    end

    describe '#delete_policy' do

    end

    describe '#delete_scheduled_action' do

    end

    describe '#delete_tags' do

    end

    describe '#delete_warm_pool' do

    end

    describe '#describe_account_limits' do

    end

    describe '#describe_adjustment_types' do

    end

    describe '#describe_auto_scaling_groups' do

    end

    describe '#describe_auto_scaling_instances' do

    end

    describe '#describe_auto_scaling_notification_types' do

    end

    describe '#describe_instance_refreshes' do

    end

    describe '#describe_launch_configurations' do

    end

    describe '#describe_lifecycle_hooks' do

    end

    describe '#describe_lifecycle_hook_types' do

    end

    describe '#describe_load_balancers' do

    end

    describe '#describe_load_balancer_target_groups' do

    end

    describe '#describe_metric_collection_types' do

    end

    describe '#describe_notification_configurations' do

    end

    describe '#describe_policies' do

    end

    describe '#describe_scaling_activities' do

    end

    describe '#describe_scaling_process_types' do

    end

    describe '#describe_scheduled_actions' do

    end

    describe '#describe_tags' do

    end

    describe '#describe_termination_policy_types' do

    end

    describe '#describe_warm_pool' do

    end

    describe '#detach_instances' do

    end

    describe '#detach_load_balancers' do

    end

    describe '#detach_load_balancer_target_groups' do

    end

    describe '#disable_metrics_collection' do

    end

    describe '#enable_metrics_collection' do

    end

    describe '#enter_standby' do

    end

    describe '#execute_policy' do

    end

    describe '#exit_standby' do

    end

    describe '#get_predictive_scaling_forecast' do

    end

    describe '#put_lifecycle_hook' do

    end

    describe '#put_notification_configuration' do

    end

    describe '#put_scaling_policy' do

    end

    describe '#put_scheduled_update_group_action' do

    end

    describe '#put_warm_pool' do

    end

    describe '#record_lifecycle_action_heartbeat' do

    end

    describe '#resume_processes' do

    end

    describe '#set_desired_capacity' do

    end

    describe '#set_instance_health' do

    end

    describe '#set_instance_protection' do

    end

    describe '#start_instance_refresh' do

    end

    describe '#suspend_processes' do

    end

    describe '#terminate_instance_in_auto_scaling_group' do

    end

    describe '#update_auto_scaling_group' do

    end

  end
end
