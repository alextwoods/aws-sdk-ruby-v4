# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-elastictranscoder'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::ElasticTranscoder
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#cancel_job' do

    end

    describe '#create_job' do

    end

    describe '#create_pipeline' do

    end

    describe '#create_preset' do

    end

    describe '#delete_pipeline' do

    end

    describe '#delete_preset' do

    end

    describe '#list_jobs_by_pipeline' do

    end

    describe '#list_jobs_by_status' do

    end

    describe '#list_pipelines' do

    end

    describe '#list_presets' do

    end

    describe '#read_job' do

    end

    describe '#read_pipeline' do

    end

    describe '#read_preset' do

    end

    describe '#test_role' do

    end

    describe '#update_pipeline' do

    end

    describe '#update_pipeline_notifications' do

    end

    describe '#update_pipeline_status' do

    end

  end
end
