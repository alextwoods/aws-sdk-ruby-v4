# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-mediaconnect'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::MediaConnect
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#add_flow_media_streams' do

    end

    describe '#add_flow_outputs' do

    end

    describe '#add_flow_sources' do

    end

    describe '#add_flow_vpc_interfaces' do

    end

    describe '#create_flow' do

    end

    describe '#delete_flow' do

    end

    describe '#describe_flow' do

    end

    describe '#describe_offering' do

    end

    describe '#describe_reservation' do

    end

    describe '#grant_flow_entitlements' do

    end

    describe '#list_entitlements' do

    end

    describe '#list_flows' do

    end

    describe '#list_offerings' do

    end

    describe '#list_reservations' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#purchase_offering' do

    end

    describe '#remove_flow_media_stream' do

    end

    describe '#remove_flow_output' do

    end

    describe '#remove_flow_source' do

    end

    describe '#remove_flow_vpc_interface' do

    end

    describe '#revoke_flow_entitlement' do

    end

    describe '#start_flow' do

    end

    describe '#stop_flow' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_flow' do

    end

    describe '#update_flow_entitlement' do

    end

    describe '#update_flow_media_stream' do

    end

    describe '#update_flow_output' do

    end

    describe '#update_flow_source' do

    end

  end
end
