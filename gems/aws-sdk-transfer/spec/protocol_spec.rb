# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-transfer'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::Transfer
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#create_access' do

    end

    describe '#create_server' do

    end

    describe '#create_user' do

    end

    describe '#create_workflow' do

    end

    describe '#delete_access' do

    end

    describe '#delete_server' do

    end

    describe '#delete_ssh_public_key' do

    end

    describe '#delete_user' do

    end

    describe '#delete_workflow' do

    end

    describe '#describe_access' do

    end

    describe '#describe_execution' do

    end

    describe '#describe_security_policy' do

    end

    describe '#describe_server' do

    end

    describe '#describe_user' do

    end

    describe '#describe_workflow' do

    end

    describe '#import_ssh_public_key' do

    end

    describe '#list_accesses' do

    end

    describe '#list_executions' do

    end

    describe '#list_security_policies' do

    end

    describe '#list_servers' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#list_users' do

    end

    describe '#list_workflows' do

    end

    describe '#send_workflow_step_state' do

    end

    describe '#start_server' do

    end

    describe '#stop_server' do

    end

    describe '#tag_resource' do

    end

    describe '#test_identity_provider' do

    end

    describe '#untag_resource' do

    end

    describe '#update_access' do

    end

    describe '#update_server' do

    end

    describe '#update_user' do

    end

  end
end
