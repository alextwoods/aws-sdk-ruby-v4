# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-timestreamquery'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::TimestreamQuery
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#cancel_query' do

    end

    describe '#create_scheduled_query' do

    end

    describe '#delete_scheduled_query' do

    end

    describe '#describe_endpoints' do

    end

    describe '#describe_scheduled_query' do

    end

    describe '#execute_scheduled_query' do

    end

    describe '#list_scheduled_queries' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#prepare_query' do

    end

    describe '#query' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_scheduled_query' do

    end

  end
end
