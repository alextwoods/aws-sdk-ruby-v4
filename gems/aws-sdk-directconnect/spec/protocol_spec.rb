# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-directconnect'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::DirectConnect
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#accept_direct_connect_gateway_association_proposal' do

    end

    describe '#allocate_connection_on_interconnect' do

    end

    describe '#allocate_hosted_connection' do

    end

    describe '#allocate_private_virtual_interface' do

    end

    describe '#allocate_public_virtual_interface' do

    end

    describe '#allocate_transit_virtual_interface' do

    end

    describe '#associate_connection_with_lag' do

    end

    describe '#associate_hosted_connection' do

    end

    describe '#associate_mac_sec_key' do

    end

    describe '#associate_virtual_interface' do

    end

    describe '#confirm_connection' do

    end

    describe '#confirm_customer_agreement' do

    end

    describe '#confirm_private_virtual_interface' do

    end

    describe '#confirm_public_virtual_interface' do

    end

    describe '#confirm_transit_virtual_interface' do

    end

    describe '#create_bgp_peer' do

    end

    describe '#create_connection' do

    end

    describe '#create_direct_connect_gateway' do

    end

    describe '#create_direct_connect_gateway_association' do

    end

    describe '#create_direct_connect_gateway_association_proposal' do

    end

    describe '#create_interconnect' do

    end

    describe '#create_lag' do

    end

    describe '#create_private_virtual_interface' do

    end

    describe '#create_public_virtual_interface' do

    end

    describe '#create_transit_virtual_interface' do

    end

    describe '#delete_bgp_peer' do

    end

    describe '#delete_connection' do

    end

    describe '#delete_direct_connect_gateway' do

    end

    describe '#delete_direct_connect_gateway_association' do

    end

    describe '#delete_direct_connect_gateway_association_proposal' do

    end

    describe '#delete_interconnect' do

    end

    describe '#delete_lag' do

    end

    describe '#delete_virtual_interface' do

    end

    describe '#describe_connection_loa' do

    end

    describe '#describe_connections' do

    end

    describe '#describe_connections_on_interconnect' do

    end

    describe '#describe_customer_metadata' do

    end

    describe '#describe_direct_connect_gateway_association_proposals' do

    end

    describe '#describe_direct_connect_gateway_associations' do

    end

    describe '#describe_direct_connect_gateway_attachments' do

    end

    describe '#describe_direct_connect_gateways' do

    end

    describe '#describe_hosted_connections' do

    end

    describe '#describe_interconnect_loa' do

    end

    describe '#describe_interconnects' do

    end

    describe '#describe_lags' do

    end

    describe '#describe_loa' do

    end

    describe '#describe_locations' do

    end

    describe '#describe_router_configuration' do

    end

    describe '#describe_tags' do

    end

    describe '#describe_virtual_gateways' do

    end

    describe '#describe_virtual_interfaces' do

    end

    describe '#disassociate_connection_from_lag' do

    end

    describe '#disassociate_mac_sec_key' do

    end

    describe '#list_virtual_interface_test_history' do

    end

    describe '#start_bgp_failover_test' do

    end

    describe '#stop_bgp_failover_test' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_connection' do

    end

    describe '#update_direct_connect_gateway' do

    end

    describe '#update_direct_connect_gateway_association' do

    end

    describe '#update_lag' do

    end

    describe '#update_virtual_interface_attributes' do

    end

  end
end
