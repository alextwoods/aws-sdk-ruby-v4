# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-cloudwatchevents'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::CloudWatchEvents
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#activate_event_source' do

    end

    describe '#cancel_replay' do

    end

    describe '#create_api_destination' do

    end

    describe '#create_archive' do

    end

    describe '#create_connection' do

    end

    describe '#create_event_bus' do

    end

    describe '#create_partner_event_source' do

    end

    describe '#deactivate_event_source' do

    end

    describe '#deauthorize_connection' do

    end

    describe '#delete_api_destination' do

    end

    describe '#delete_archive' do

    end

    describe '#delete_connection' do

    end

    describe '#delete_event_bus' do

    end

    describe '#delete_partner_event_source' do

    end

    describe '#delete_rule' do

    end

    describe '#describe_api_destination' do

    end

    describe '#describe_archive' do

    end

    describe '#describe_connection' do

    end

    describe '#describe_event_bus' do

    end

    describe '#describe_event_source' do

    end

    describe '#describe_partner_event_source' do

    end

    describe '#describe_replay' do

    end

    describe '#describe_rule' do

    end

    describe '#disable_rule' do

    end

    describe '#enable_rule' do

    end

    describe '#list_api_destinations' do

    end

    describe '#list_archives' do

    end

    describe '#list_connections' do

    end

    describe '#list_event_buses' do

    end

    describe '#list_event_sources' do

    end

    describe '#list_partner_event_source_accounts' do

    end

    describe '#list_partner_event_sources' do

    end

    describe '#list_replays' do

    end

    describe '#list_rule_names_by_target' do

    end

    describe '#list_rules' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#list_targets_by_rule' do

    end

    describe '#put_events' do

    end

    describe '#put_partner_events' do

    end

    describe '#put_permission' do

    end

    describe '#put_rule' do

    end

    describe '#put_targets' do

    end

    describe '#remove_permission' do

    end

    describe '#remove_targets' do

    end

    describe '#start_replay' do

    end

    describe '#tag_resource' do

    end

    describe '#test_event_pattern' do

    end

    describe '#untag_resource' do

    end

    describe '#update_api_destination' do

    end

    describe '#update_archive' do

    end

    describe '#update_connection' do

    end

  end
end
