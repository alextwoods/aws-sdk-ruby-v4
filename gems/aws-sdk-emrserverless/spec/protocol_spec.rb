# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-emrserverless'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::EMRServerless
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#cancel_job_run' do

    end

    describe '#create_application' do

    end

    describe '#delete_application' do

    end

    describe '#get_application' do

    end

    describe '#get_job_run' do

    end

    describe '#list_applications' do

    end

    describe '#list_job_runs' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#start_application' do

    end

    describe '#start_job_run' do

    end

    describe '#stop_application' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_application' do

    end

  end
end
