# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-iotwireless'

module AWS::SDK::IoTWireless
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#associate_aws_account_with_partner_account' do

    end

    describe '#associate_multicast_group_with_fuota_task' do

    end

    describe '#associate_wireless_device_with_fuota_task' do

    end

    describe '#associate_wireless_device_with_multicast_group' do

    end

    describe '#associate_wireless_device_with_thing' do

    end

    describe '#associate_wireless_gateway_with_certificate' do

    end

    describe '#associate_wireless_gateway_with_thing' do

    end

    describe '#cancel_multicast_group_session' do

    end

    describe '#create_destination' do

    end

    describe '#create_device_profile' do

    end

    describe '#create_fuota_task' do

    end

    describe '#create_multicast_group' do

    end

    describe '#create_network_analyzer_configuration' do

    end

    describe '#create_service_profile' do

    end

    describe '#create_wireless_device' do

    end

    describe '#create_wireless_gateway' do

    end

    describe '#create_wireless_gateway_task' do

    end

    describe '#create_wireless_gateway_task_definition' do

    end

    describe '#delete_destination' do

    end

    describe '#delete_device_profile' do

    end

    describe '#delete_fuota_task' do

    end

    describe '#delete_multicast_group' do

    end

    describe '#delete_network_analyzer_configuration' do

    end

    describe '#delete_queued_messages' do

    end

    describe '#delete_service_profile' do

    end

    describe '#delete_wireless_device' do

    end

    describe '#delete_wireless_gateway' do

    end

    describe '#delete_wireless_gateway_task' do

    end

    describe '#delete_wireless_gateway_task_definition' do

    end

    describe '#disassociate_aws_account_from_partner_account' do

    end

    describe '#disassociate_multicast_group_from_fuota_task' do

    end

    describe '#disassociate_wireless_device_from_fuota_task' do

    end

    describe '#disassociate_wireless_device_from_multicast_group' do

    end

    describe '#disassociate_wireless_device_from_thing' do

    end

    describe '#disassociate_wireless_gateway_from_certificate' do

    end

    describe '#disassociate_wireless_gateway_from_thing' do

    end

    describe '#get_destination' do

    end

    describe '#get_device_profile' do

    end

    describe '#get_event_configuration_by_resource_types' do

    end

    describe '#get_fuota_task' do

    end

    describe '#get_log_levels_by_resource_types' do

    end

    describe '#get_multicast_group' do

    end

    describe '#get_multicast_group_session' do

    end

    describe '#get_network_analyzer_configuration' do

    end

    describe '#get_partner_account' do

    end

    describe '#get_resource_event_configuration' do

    end

    describe '#get_resource_log_level' do

    end

    describe '#get_service_endpoint' do

    end

    describe '#get_service_profile' do

    end

    describe '#get_wireless_device' do

    end

    describe '#get_wireless_device_statistics' do

    end

    describe '#get_wireless_gateway' do

    end

    describe '#get_wireless_gateway_certificate' do

    end

    describe '#get_wireless_gateway_firmware_information' do

    end

    describe '#get_wireless_gateway_statistics' do

    end

    describe '#get_wireless_gateway_task' do

    end

    describe '#get_wireless_gateway_task_definition' do

    end

    describe '#list_destinations' do

    end

    describe '#list_device_profiles' do

    end

    describe '#list_event_configurations' do

    end

    describe '#list_fuota_tasks' do

    end

    describe '#list_multicast_groups' do

    end

    describe '#list_multicast_groups_by_fuota_task' do

    end

    describe '#list_network_analyzer_configurations' do

    end

    describe '#list_partner_accounts' do

    end

    describe '#list_queued_messages' do

    end

    describe '#list_service_profiles' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#list_wireless_devices' do

    end

    describe '#list_wireless_gateways' do

    end

    describe '#list_wireless_gateway_task_definitions' do

    end

    describe '#put_resource_log_level' do

    end

    describe '#reset_all_resource_log_levels' do

    end

    describe '#reset_resource_log_level' do

    end

    describe '#send_data_to_multicast_group' do

    end

    describe '#send_data_to_wireless_device' do

    end

    describe '#start_bulk_associate_wireless_device_with_multicast_group' do

    end

    describe '#start_bulk_disassociate_wireless_device_from_multicast_group' do

    end

    describe '#start_fuota_task' do

    end

    describe '#start_multicast_group_session' do

    end

    describe '#tag_resource' do

    end

    describe '#test_wireless_device' do

    end

    describe '#untag_resource' do

    end

    describe '#update_destination' do

    end

    describe '#update_event_configuration_by_resource_types' do

    end

    describe '#update_fuota_task' do

    end

    describe '#update_log_levels_by_resource_types' do

    end

    describe '#update_multicast_group' do

    end

    describe '#update_network_analyzer_configuration' do

    end

    describe '#update_partner_account' do

    end

    describe '#update_resource_event_configuration' do

    end

    describe '#update_wireless_device' do

    end

    describe '#update_wireless_gateway' do

    end

  end
end
