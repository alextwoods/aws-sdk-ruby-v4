# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-grafana'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::Grafana
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#associate_license' do

    end

    describe '#create_workspace' do

    end

    describe '#create_workspace_api_key' do

    end

    describe '#delete_workspace' do

    end

    describe '#delete_workspace_api_key' do

    end

    describe '#describe_workspace' do

    end

    describe '#describe_workspace_authentication' do

    end

    describe '#disassociate_license' do

    end

    describe '#list_permissions' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#list_workspaces' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_permissions' do

    end

    describe '#update_workspace' do

    end

    describe '#update_workspace_authentication' do

    end

  end
end
