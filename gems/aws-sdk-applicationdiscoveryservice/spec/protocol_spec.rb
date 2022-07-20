# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-applicationdiscoveryservice'

module AWS::SDK::ApplicationDiscoveryService
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#associate_configuration_items_to_application' do

    end

    describe '#batch_delete_import_data' do

    end

    describe '#create_application' do

    end

    describe '#create_tags' do

    end

    describe '#delete_applications' do

    end

    describe '#delete_tags' do

    end

    describe '#describe_agents' do

    end

    describe '#describe_configurations' do

    end

    describe '#describe_continuous_exports' do

    end

    describe '#describe_export_configurations' do

    end

    describe '#describe_export_tasks' do

    end

    describe '#describe_import_tasks' do

    end

    describe '#describe_tags' do

    end

    describe '#disassociate_configuration_items_from_application' do

    end

    describe '#export_configurations' do

    end

    describe '#get_discovery_summary' do

    end

    describe '#list_configurations' do

    end

    describe '#list_server_neighbors' do

    end

    describe '#start_continuous_export' do

    end

    describe '#start_data_collection_by_agent_ids' do

    end

    describe '#start_export_task' do

    end

    describe '#start_import_task' do

    end

    describe '#stop_continuous_export' do

    end

    describe '#stop_data_collection_by_agent_ids' do

    end

    describe '#update_application' do

    end

  end
end
