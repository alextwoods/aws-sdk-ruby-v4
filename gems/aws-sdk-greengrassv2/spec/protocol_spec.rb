# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-greengrassv2'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::GreengrassV2
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#associate_service_role_to_account' do

    end

    describe '#batch_associate_client_device_with_core_device' do

    end

    describe '#batch_disassociate_client_device_from_core_device' do

    end

    describe '#cancel_deployment' do

    end

    describe '#create_component_version' do

    end

    describe '#create_deployment' do

    end

    describe '#delete_component' do

    end

    describe '#delete_core_device' do

    end

    describe '#delete_deployment' do

    end

    describe '#describe_component' do

    end

    describe '#disassociate_service_role_from_account' do

    end

    describe '#get_component' do

    end

    describe '#get_component_version_artifact' do

    end

    describe '#get_connectivity_info' do

    end

    describe '#get_core_device' do

    end

    describe '#get_deployment' do

    end

    describe '#get_service_role_for_account' do

    end

    describe '#list_client_devices_associated_with_core_device' do

    end

    describe '#list_components' do

    end

    describe '#list_component_versions' do

    end

    describe '#list_core_devices' do

    end

    describe '#list_deployments' do

    end

    describe '#list_effective_deployments' do

    end

    describe '#list_installed_components' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#resolve_component_candidates' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_connectivity_info' do

    end

  end
end
