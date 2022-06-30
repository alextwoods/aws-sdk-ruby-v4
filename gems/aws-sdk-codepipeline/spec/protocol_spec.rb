# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-codepipeline'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::CodePipeline
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#acknowledge_job' do

    end

    describe '#acknowledge_third_party_job' do

    end

    describe '#create_custom_action_type' do

    end

    describe '#create_pipeline' do

    end

    describe '#delete_custom_action_type' do

    end

    describe '#delete_pipeline' do

    end

    describe '#delete_webhook' do

    end

    describe '#deregister_webhook_with_third_party' do

    end

    describe '#disable_stage_transition' do

    end

    describe '#enable_stage_transition' do

    end

    describe '#get_action_type' do

    end

    describe '#get_job_details' do

    end

    describe '#get_pipeline' do

    end

    describe '#get_pipeline_execution' do

    end

    describe '#get_pipeline_state' do

    end

    describe '#get_third_party_job_details' do

    end

    describe '#list_action_executions' do

    end

    describe '#list_action_types' do

    end

    describe '#list_pipeline_executions' do

    end

    describe '#list_pipelines' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#list_webhooks' do

    end

    describe '#poll_for_jobs' do

    end

    describe '#poll_for_third_party_jobs' do

    end

    describe '#put_action_revision' do

    end

    describe '#put_approval_result' do

    end

    describe '#put_job_failure_result' do

    end

    describe '#put_job_success_result' do

    end

    describe '#put_third_party_job_failure_result' do

    end

    describe '#put_third_party_job_success_result' do

    end

    describe '#put_webhook' do

    end

    describe '#register_webhook_with_third_party' do

    end

    describe '#retry_stage_execution' do

    end

    describe '#start_pipeline_execution' do

    end

    describe '#stop_pipeline_execution' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_action_type' do

    end

    describe '#update_pipeline' do

    end

  end
end
