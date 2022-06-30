# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-servicediscovery'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::ServiceDiscovery
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#create_http_namespace' do

    end

    describe '#create_private_dns_namespace' do

    end

    describe '#create_public_dns_namespace' do

    end

    describe '#create_service' do

    end

    describe '#delete_namespace' do

    end

    describe '#delete_service' do

    end

    describe '#deregister_instance' do

    end

    describe '#discover_instances' do

    end

    describe '#get_instance' do

    end

    describe '#get_instances_health_status' do

    end

    describe '#get_namespace' do

    end

    describe '#get_operation' do

    end

    describe '#get_service' do

    end

    describe '#list_instances' do

    end

    describe '#list_namespaces' do

    end

    describe '#list_operations' do

    end

    describe '#list_services' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#register_instance' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_http_namespace' do

    end

    describe '#update_instance_custom_health_status' do

    end

    describe '#update_private_dns_namespace' do

    end

    describe '#update_public_dns_namespace' do

    end

    describe '#update_service' do

    end

  end
end
