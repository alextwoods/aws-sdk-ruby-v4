# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-emrcontainers'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::EMRContainers
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#cancel_job_run' do

    end

    describe '#create_managed_endpoint' do

    end

    describe '#create_virtual_cluster' do

    end

    describe '#delete_managed_endpoint' do

    end

    describe '#delete_virtual_cluster' do

    end

    describe '#describe_job_run' do

    end

    describe '#describe_managed_endpoint' do

    end

    describe '#describe_virtual_cluster' do

    end

    describe '#list_job_runs' do

    end

    describe '#list_managed_endpoints' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#list_virtual_clusters' do

    end

    describe '#start_job_run' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

  end
end
