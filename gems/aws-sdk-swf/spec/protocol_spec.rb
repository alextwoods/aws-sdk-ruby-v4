# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-swf'

module AWS::SDK::SWF
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#count_closed_workflow_executions' do

    end

    describe '#count_open_workflow_executions' do

    end

    describe '#count_pending_activity_tasks' do

    end

    describe '#count_pending_decision_tasks' do

    end

    describe '#deprecate_activity_type' do

    end

    describe '#deprecate_domain' do

    end

    describe '#deprecate_workflow_type' do

    end

    describe '#describe_activity_type' do

    end

    describe '#describe_domain' do

    end

    describe '#describe_workflow_execution' do

    end

    describe '#describe_workflow_type' do

    end

    describe '#get_workflow_execution_history' do

    end

    describe '#list_activity_types' do

    end

    describe '#list_closed_workflow_executions' do

    end

    describe '#list_domains' do

    end

    describe '#list_open_workflow_executions' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#list_workflow_types' do

    end

    describe '#poll_for_activity_task' do

    end

    describe '#poll_for_decision_task' do

    end

    describe '#record_activity_task_heartbeat' do

    end

    describe '#register_activity_type' do

    end

    describe '#register_domain' do

    end

    describe '#register_workflow_type' do

    end

    describe '#request_cancel_workflow_execution' do

    end

    describe '#respond_activity_task_canceled' do

    end

    describe '#respond_activity_task_completed' do

    end

    describe '#respond_activity_task_failed' do

    end

    describe '#respond_decision_task_completed' do

    end

    describe '#signal_workflow_execution' do

    end

    describe '#start_workflow_execution' do

    end

    describe '#tag_resource' do

    end

    describe '#terminate_workflow_execution' do

    end

    describe '#undeprecate_activity_type' do

    end

    describe '#undeprecate_domain' do

    end

    describe '#undeprecate_workflow_type' do

    end

    describe '#untag_resource' do

    end

  end
end
