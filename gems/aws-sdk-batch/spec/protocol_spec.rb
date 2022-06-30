# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-batch'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::Batch
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#cancel_job' do

    end

    describe '#create_compute_environment' do

    end

    describe '#create_job_queue' do

    end

    describe '#create_scheduling_policy' do

    end

    describe '#delete_compute_environment' do

    end

    describe '#delete_job_queue' do

    end

    describe '#delete_scheduling_policy' do

    end

    describe '#deregister_job_definition' do

    end

    describe '#describe_compute_environments' do

    end

    describe '#describe_job_definitions' do

    end

    describe '#describe_job_queues' do

    end

    describe '#describe_jobs' do

    end

    describe '#describe_scheduling_policies' do

    end

    describe '#list_jobs' do

    end

    describe '#list_scheduling_policies' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#register_job_definition' do

    end

    describe '#submit_job' do

    end

    describe '#tag_resource' do

    end

    describe '#terminate_job' do

    end

    describe '#untag_resource' do

    end

    describe '#update_compute_environment' do

    end

    describe '#update_job_queue' do

    end

    describe '#update_scheduling_policy' do

    end

  end
end
