# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-groundstation'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::GroundStation
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#cancel_contact' do

    end

    describe '#create_config' do

    end

    describe '#create_dataflow_endpoint_group' do

    end

    describe '#create_mission_profile' do

    end

    describe '#delete_config' do

    end

    describe '#delete_dataflow_endpoint_group' do

    end

    describe '#delete_mission_profile' do

    end

    describe '#describe_contact' do

    end

    describe '#get_config' do

    end

    describe '#get_dataflow_endpoint_group' do

    end

    describe '#get_minute_usage' do

    end

    describe '#get_mission_profile' do

    end

    describe '#get_satellite' do

    end

    describe '#list_configs' do

    end

    describe '#list_contacts' do

    end

    describe '#list_dataflow_endpoint_groups' do

    end

    describe '#list_ground_stations' do

    end

    describe '#list_mission_profiles' do

    end

    describe '#list_satellites' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#reserve_contact' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_config' do

    end

    describe '#update_mission_profile' do

    end

  end
end
