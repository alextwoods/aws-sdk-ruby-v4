# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-globalaccelerator'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::GlobalAccelerator
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#add_custom_routing_endpoints' do

    end

    describe '#advertise_byoip_cidr' do

    end

    describe '#allow_custom_routing_traffic' do

    end

    describe '#create_accelerator' do

    end

    describe '#create_custom_routing_accelerator' do

    end

    describe '#create_custom_routing_endpoint_group' do

    end

    describe '#create_custom_routing_listener' do

    end

    describe '#create_endpoint_group' do

    end

    describe '#create_listener' do

    end

    describe '#delete_accelerator' do

    end

    describe '#delete_custom_routing_accelerator' do

    end

    describe '#delete_custom_routing_endpoint_group' do

    end

    describe '#delete_custom_routing_listener' do

    end

    describe '#delete_endpoint_group' do

    end

    describe '#delete_listener' do

    end

    describe '#deny_custom_routing_traffic' do

    end

    describe '#deprovision_byoip_cidr' do

    end

    describe '#describe_accelerator' do

    end

    describe '#describe_accelerator_attributes' do

    end

    describe '#describe_custom_routing_accelerator' do

    end

    describe '#describe_custom_routing_accelerator_attributes' do

    end

    describe '#describe_custom_routing_endpoint_group' do

    end

    describe '#describe_custom_routing_listener' do

    end

    describe '#describe_endpoint_group' do

    end

    describe '#describe_listener' do

    end

    describe '#list_accelerators' do

    end

    describe '#list_byoip_cidrs' do

    end

    describe '#list_custom_routing_accelerators' do

    end

    describe '#list_custom_routing_endpoint_groups' do

    end

    describe '#list_custom_routing_listeners' do

    end

    describe '#list_custom_routing_port_mappings' do

    end

    describe '#list_custom_routing_port_mappings_by_destination' do

    end

    describe '#list_endpoint_groups' do

    end

    describe '#list_listeners' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#provision_byoip_cidr' do

    end

    describe '#remove_custom_routing_endpoints' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_accelerator' do

    end

    describe '#update_accelerator_attributes' do

    end

    describe '#update_custom_routing_accelerator' do

    end

    describe '#update_custom_routing_accelerator_attributes' do

    end

    describe '#update_custom_routing_listener' do

    end

    describe '#update_endpoint_group' do

    end

    describe '#update_listener' do

    end

    describe '#withdraw_byoip_cidr' do

    end

  end
end
