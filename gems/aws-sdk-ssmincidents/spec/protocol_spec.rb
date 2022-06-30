# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-ssmincidents'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::SSMIncidents
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#create_replication_set' do

    end

    describe '#create_response_plan' do

    end

    describe '#create_timeline_event' do

    end

    describe '#delete_incident_record' do

    end

    describe '#delete_replication_set' do

    end

    describe '#delete_resource_policy' do

    end

    describe '#delete_response_plan' do

    end

    describe '#delete_timeline_event' do

    end

    describe '#get_incident_record' do

    end

    describe '#get_replication_set' do

    end

    describe '#get_resource_policies' do

    end

    describe '#get_response_plan' do

    end

    describe '#get_timeline_event' do

    end

    describe '#list_incident_records' do

    end

    describe '#list_related_items' do

    end

    describe '#list_replication_sets' do

    end

    describe '#list_response_plans' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#list_timeline_events' do

    end

    describe '#put_resource_policy' do

    end

    describe '#start_incident' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_deletion_protection' do

    end

    describe '#update_incident_record' do

    end

    describe '#update_related_items' do

    end

    describe '#update_replication_set' do

    end

    describe '#update_response_plan' do

    end

    describe '#update_timeline_event' do

    end

  end
end
