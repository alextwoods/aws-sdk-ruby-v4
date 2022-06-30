# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-applicationautoscaling'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::ApplicationAutoScaling
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#delete_scaling_policy' do

    end

    describe '#delete_scheduled_action' do

    end

    describe '#deregister_scalable_target' do

    end

    describe '#describe_scalable_targets' do

    end

    describe '#describe_scaling_activities' do

    end

    describe '#describe_scaling_policies' do

    end

    describe '#describe_scheduled_actions' do

    end

    describe '#put_scaling_policy' do

    end

    describe '#put_scheduled_action' do

    end

    describe '#register_scalable_target' do

    end

  end
end
