# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-amp'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::Amp
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#create_alert_manager_definition' do

    end

    describe '#create_rule_groups_namespace' do

    end

    describe '#create_workspace' do

    end

    describe '#delete_alert_manager_definition' do

    end

    describe '#delete_rule_groups_namespace' do

    end

    describe '#delete_workspace' do

    end

    describe '#describe_alert_manager_definition' do

    end

    describe '#describe_rule_groups_namespace' do

    end

    describe '#describe_workspace' do

    end

    describe '#list_rule_groups_namespaces' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#list_workspaces' do

    end

    describe '#put_alert_manager_definition' do

    end

    describe '#put_rule_groups_namespace' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_workspace_alias' do

    end

  end
end
