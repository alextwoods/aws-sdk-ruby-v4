# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-synthetics'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::Synthetics
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#create_canary' do

    end

    describe '#delete_canary' do

    end

    describe '#describe_canaries' do

    end

    describe '#describe_canaries_last_run' do

    end

    describe '#describe_runtime_versions' do

    end

    describe '#get_canary' do

    end

    describe '#get_canary_runs' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#start_canary' do

    end

    describe '#stop_canary' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_canary' do

    end

  end
end
