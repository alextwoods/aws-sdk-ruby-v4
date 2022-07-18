# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-elasticloadbalancing'

module AWS::SDK::ElasticLoadBalancing
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#add_tags' do

    end

    describe '#apply_security_groups_to_load_balancer' do

    end

    describe '#attach_load_balancer_to_subnets' do

    end

    describe '#configure_health_check' do

    end

    describe '#create_app_cookie_stickiness_policy' do

    end

    describe '#create_lb_cookie_stickiness_policy' do

    end

    describe '#create_load_balancer' do

    end

    describe '#create_load_balancer_listeners' do

    end

    describe '#create_load_balancer_policy' do

    end

    describe '#delete_load_balancer' do

    end

    describe '#delete_load_balancer_listeners' do

    end

    describe '#delete_load_balancer_policy' do

    end

    describe '#deregister_instances_from_load_balancer' do

    end

    describe '#describe_account_limits' do

    end

    describe '#describe_instance_health' do

    end

    describe '#describe_load_balancer_attributes' do

    end

    describe '#describe_load_balancer_policies' do

    end

    describe '#describe_load_balancer_policy_types' do

    end

    describe '#describe_load_balancers' do

    end

    describe '#describe_tags' do

    end

    describe '#detach_load_balancer_from_subnets' do

    end

    describe '#disable_availability_zones_for_load_balancer' do

    end

    describe '#enable_availability_zones_for_load_balancer' do

    end

    describe '#modify_load_balancer_attributes' do

    end

    describe '#register_instances_with_load_balancer' do

    end

    describe '#remove_tags' do

    end

    describe '#set_load_balancer_listener_ssl_certificate' do

    end

    describe '#set_load_balancer_policies_for_backend_server' do

    end

    describe '#set_load_balancer_policies_of_listener' do

    end

  end
end
