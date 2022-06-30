# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-greengrass'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::Greengrass
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#associate_role_to_group' do

    end

    describe '#associate_service_role_to_account' do

    end

    describe '#create_connector_definition' do

    end

    describe '#create_connector_definition_version' do

    end

    describe '#create_core_definition' do

    end

    describe '#create_core_definition_version' do

    end

    describe '#create_deployment' do

    end

    describe '#create_device_definition' do

    end

    describe '#create_device_definition_version' do

    end

    describe '#create_function_definition' do

    end

    describe '#create_function_definition_version' do

    end

    describe '#create_group' do

    end

    describe '#create_group_certificate_authority' do

    end

    describe '#create_group_version' do

    end

    describe '#create_logger_definition' do

    end

    describe '#create_logger_definition_version' do

    end

    describe '#create_resource_definition' do

    end

    describe '#create_resource_definition_version' do

    end

    describe '#create_software_update_job' do

    end

    describe '#create_subscription_definition' do

    end

    describe '#create_subscription_definition_version' do

    end

    describe '#delete_connector_definition' do

    end

    describe '#delete_core_definition' do

    end

    describe '#delete_device_definition' do

    end

    describe '#delete_function_definition' do

    end

    describe '#delete_group' do

    end

    describe '#delete_logger_definition' do

    end

    describe '#delete_resource_definition' do

    end

    describe '#delete_subscription_definition' do

    end

    describe '#disassociate_role_from_group' do

    end

    describe '#disassociate_service_role_from_account' do

    end

    describe '#get_associated_role' do

    end

    describe '#get_bulk_deployment_status' do

    end

    describe '#get_connectivity_info' do

    end

    describe '#get_connector_definition' do

    end

    describe '#get_connector_definition_version' do

    end

    describe '#get_core_definition' do

    end

    describe '#get_core_definition_version' do

    end

    describe '#get_deployment_status' do

    end

    describe '#get_device_definition' do

    end

    describe '#get_device_definition_version' do

    end

    describe '#get_function_definition' do

    end

    describe '#get_function_definition_version' do

    end

    describe '#get_group' do

    end

    describe '#get_group_certificate_authority' do

    end

    describe '#get_group_certificate_configuration' do

    end

    describe '#get_group_version' do

    end

    describe '#get_logger_definition' do

    end

    describe '#get_logger_definition_version' do

    end

    describe '#get_resource_definition' do

    end

    describe '#get_resource_definition_version' do

    end

    describe '#get_service_role_for_account' do

    end

    describe '#get_subscription_definition' do

    end

    describe '#get_subscription_definition_version' do

    end

    describe '#get_thing_runtime_configuration' do

    end

    describe '#list_bulk_deployment_detailed_reports' do

    end

    describe '#list_bulk_deployments' do

    end

    describe '#list_connector_definitions' do

    end

    describe '#list_connector_definition_versions' do

    end

    describe '#list_core_definitions' do

    end

    describe '#list_core_definition_versions' do

    end

    describe '#list_deployments' do

    end

    describe '#list_device_definitions' do

    end

    describe '#list_device_definition_versions' do

    end

    describe '#list_function_definitions' do

    end

    describe '#list_function_definition_versions' do

    end

    describe '#list_group_certificate_authorities' do

    end

    describe '#list_groups' do

    end

    describe '#list_group_versions' do

    end

    describe '#list_logger_definitions' do

    end

    describe '#list_logger_definition_versions' do

    end

    describe '#list_resource_definitions' do

    end

    describe '#list_resource_definition_versions' do

    end

    describe '#list_subscription_definitions' do

    end

    describe '#list_subscription_definition_versions' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#reset_deployments' do

    end

    describe '#start_bulk_deployment' do

    end

    describe '#stop_bulk_deployment' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_connectivity_info' do

    end

    describe '#update_connector_definition' do

    end

    describe '#update_core_definition' do

    end

    describe '#update_device_definition' do

    end

    describe '#update_function_definition' do

    end

    describe '#update_group' do

    end

    describe '#update_group_certificate_configuration' do

    end

    describe '#update_logger_definition' do

    end

    describe '#update_resource_definition' do

    end

    describe '#update_subscription_definition' do

    end

    describe '#update_thing_runtime_configuration' do

    end

  end
end
