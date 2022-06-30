# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-dataexchange'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::DataExchange
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#cancel_job' do

    end

    describe '#create_data_set' do

    end

    describe '#create_event_action' do

    end

    describe '#create_job' do

    end

    describe '#create_revision' do

    end

    describe '#delete_asset' do

    end

    describe '#delete_data_set' do

    end

    describe '#delete_event_action' do

    end

    describe '#delete_revision' do

    end

    describe '#get_asset' do

    end

    describe '#get_data_set' do

    end

    describe '#get_event_action' do

    end

    describe '#get_job' do

    end

    describe '#get_revision' do

    end

    describe '#list_data_set_revisions' do

    end

    describe '#list_data_sets' do

    end

    describe '#list_event_actions' do

    end

    describe '#list_jobs' do

    end

    describe '#list_revision_assets' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#revoke_revision' do

    end

    describe '#send_api_asset' do

    end

    describe '#start_job' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_asset' do

    end

    describe '#update_data_set' do

    end

    describe '#update_event_action' do

    end

    describe '#update_revision' do

    end

  end
end
