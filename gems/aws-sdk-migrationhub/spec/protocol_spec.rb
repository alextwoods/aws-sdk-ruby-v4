# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-migrationhub'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::MigrationHub
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#associate_created_artifact' do

    end

    describe '#associate_discovered_resource' do

    end

    describe '#create_progress_update_stream' do

    end

    describe '#delete_progress_update_stream' do

    end

    describe '#describe_application_state' do

    end

    describe '#describe_migration_task' do

    end

    describe '#disassociate_created_artifact' do

    end

    describe '#disassociate_discovered_resource' do

    end

    describe '#import_migration_task' do

    end

    describe '#list_application_states' do

    end

    describe '#list_created_artifacts' do

    end

    describe '#list_discovered_resources' do

    end

    describe '#list_migration_tasks' do

    end

    describe '#list_progress_update_streams' do

    end

    describe '#notify_application_state' do

    end

    describe '#notify_migration_task_state' do

    end

    describe '#put_resource_attributes' do

    end

  end
end
