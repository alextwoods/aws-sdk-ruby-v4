# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-braket'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::Braket
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#cancel_job' do

    end

    describe '#cancel_quantum_task' do

    end

    describe '#create_job' do

    end

    describe '#create_quantum_task' do

    end

    describe '#get_device' do

    end

    describe '#get_job' do

    end

    describe '#get_quantum_task' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#search_devices' do

    end

    describe '#search_jobs' do

    end

    describe '#search_quantum_tasks' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

  end
end
