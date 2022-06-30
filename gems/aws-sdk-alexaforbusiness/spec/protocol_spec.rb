# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-alexaforbusiness'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::AlexaForBusiness
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#approve_skill' do

    end

    describe '#associate_contact_with_address_book' do

    end

    describe '#associate_device_with_network_profile' do

    end

    describe '#associate_device_with_room' do

    end

    describe '#associate_skill_group_with_room' do

    end

    describe '#associate_skill_with_skill_group' do

    end

    describe '#associate_skill_with_users' do

    end

    describe '#create_address_book' do

    end

    describe '#create_business_report_schedule' do

    end

    describe '#create_conference_provider' do

    end

    describe '#create_contact' do

    end

    describe '#create_gateway_group' do

    end

    describe '#create_network_profile' do

    end

    describe '#create_profile' do

    end

    describe '#create_room' do

    end

    describe '#create_skill_group' do

    end

    describe '#create_user' do

    end

    describe '#delete_address_book' do

    end

    describe '#delete_business_report_schedule' do

    end

    describe '#delete_conference_provider' do

    end

    describe '#delete_contact' do

    end

    describe '#delete_device' do

    end

    describe '#delete_device_usage_data' do

    end

    describe '#delete_gateway_group' do

    end

    describe '#delete_network_profile' do

    end

    describe '#delete_profile' do

    end

    describe '#delete_room' do

    end

    describe '#delete_room_skill_parameter' do

    end

    describe '#delete_skill_authorization' do

    end

    describe '#delete_skill_group' do

    end

    describe '#delete_user' do

    end

    describe '#disassociate_contact_from_address_book' do

    end

    describe '#disassociate_device_from_room' do

    end

    describe '#disassociate_skill_from_skill_group' do

    end

    describe '#disassociate_skill_from_users' do

    end

    describe '#disassociate_skill_group_from_room' do

    end

    describe '#forget_smart_home_appliances' do

    end

    describe '#get_address_book' do

    end

    describe '#get_conference_preference' do

    end

    describe '#get_conference_provider' do

    end

    describe '#get_contact' do

    end

    describe '#get_device' do

    end

    describe '#get_gateway' do

    end

    describe '#get_gateway_group' do

    end

    describe '#get_invitation_configuration' do

    end

    describe '#get_network_profile' do

    end

    describe '#get_profile' do

    end

    describe '#get_room' do

    end

    describe '#get_room_skill_parameter' do

    end

    describe '#get_skill_group' do

    end

    describe '#list_business_report_schedules' do

    end

    describe '#list_conference_providers' do

    end

    describe '#list_device_events' do

    end

    describe '#list_gateway_groups' do

    end

    describe '#list_gateways' do

    end

    describe '#list_skills' do

    end

    describe '#list_skills_store_categories' do

    end

    describe '#list_skills_store_skills_by_category' do

    end

    describe '#list_smart_home_appliances' do

    end

    describe '#list_tags' do

    end

    describe '#put_conference_preference' do

    end

    describe '#put_invitation_configuration' do

    end

    describe '#put_room_skill_parameter' do

    end

    describe '#put_skill_authorization' do

    end

    describe '#register_avs_device' do

    end

    describe '#reject_skill' do

    end

    describe '#resolve_room' do

    end

    describe '#revoke_invitation' do

    end

    describe '#search_address_books' do

    end

    describe '#search_contacts' do

    end

    describe '#search_devices' do

    end

    describe '#search_network_profiles' do

    end

    describe '#search_profiles' do

    end

    describe '#search_rooms' do

    end

    describe '#search_skill_groups' do

    end

    describe '#search_users' do

    end

    describe '#send_announcement' do

    end

    describe '#send_invitation' do

    end

    describe '#start_device_sync' do

    end

    describe '#start_smart_home_appliance_discovery' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_address_book' do

    end

    describe '#update_business_report_schedule' do

    end

    describe '#update_conference_provider' do

    end

    describe '#update_contact' do

    end

    describe '#update_device' do

    end

    describe '#update_gateway' do

    end

    describe '#update_gateway_group' do

    end

    describe '#update_network_profile' do

    end

    describe '#update_profile' do

    end

    describe '#update_room' do

    end

    describe '#update_skill_group' do

    end

  end
end
