# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-chime'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::Chime
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#associate_phone_numbers_with_voice_connector' do

    end

    describe '#associate_phone_numbers_with_voice_connector_group' do

    end

    describe '#associate_phone_number_with_user' do

    end

    describe '#associate_signin_delegate_groups_with_account' do

    end

    describe '#batch_create_attendee' do

    end

    describe '#batch_create_channel_membership' do

    end

    describe '#batch_create_room_membership' do

    end

    describe '#batch_delete_phone_number' do

    end

    describe '#batch_suspend_user' do

    end

    describe '#batch_unsuspend_user' do

    end

    describe '#batch_update_phone_number' do

    end

    describe '#batch_update_user' do

    end

    describe '#create_account' do

    end

    describe '#create_app_instance' do

    end

    describe '#create_app_instance_admin' do

    end

    describe '#create_app_instance_user' do

    end

    describe '#create_attendee' do

    end

    describe '#create_bot' do

    end

    describe '#create_channel' do

    end

    describe '#create_channel_ban' do

    end

    describe '#create_channel_membership' do

    end

    describe '#create_channel_moderator' do

    end

    describe '#create_media_capture_pipeline' do

    end

    describe '#create_meeting' do

    end

    describe '#create_meeting_dial_out' do

    end

    describe '#create_meeting_with_attendees' do

    end

    describe '#create_phone_number_order' do

    end

    describe '#create_proxy_session' do

    end

    describe '#create_room' do

    end

    describe '#create_room_membership' do

    end

    describe '#create_sip_media_application' do

    end

    describe '#create_sip_media_application_call' do

    end

    describe '#create_sip_rule' do

    end

    describe '#create_user' do

    end

    describe '#create_voice_connector' do

    end

    describe '#create_voice_connector_group' do

    end

    describe '#delete_account' do

    end

    describe '#delete_app_instance' do

    end

    describe '#delete_app_instance_admin' do

    end

    describe '#delete_app_instance_streaming_configurations' do

    end

    describe '#delete_app_instance_user' do

    end

    describe '#delete_attendee' do

    end

    describe '#delete_channel' do

    end

    describe '#delete_channel_ban' do

    end

    describe '#delete_channel_membership' do

    end

    describe '#delete_channel_message' do

    end

    describe '#delete_channel_moderator' do

    end

    describe '#delete_events_configuration' do

    end

    describe '#delete_media_capture_pipeline' do

    end

    describe '#delete_meeting' do

    end

    describe '#delete_phone_number' do

    end

    describe '#delete_proxy_session' do

    end

    describe '#delete_room' do

    end

    describe '#delete_room_membership' do

    end

    describe '#delete_sip_media_application' do

    end

    describe '#delete_sip_rule' do

    end

    describe '#delete_voice_connector' do

    end

    describe '#delete_voice_connector_emergency_calling_configuration' do

    end

    describe '#delete_voice_connector_group' do

    end

    describe '#delete_voice_connector_origination' do

    end

    describe '#delete_voice_connector_proxy' do

    end

    describe '#delete_voice_connector_streaming_configuration' do

    end

    describe '#delete_voice_connector_termination' do

    end

    describe '#delete_voice_connector_termination_credentials' do

    end

    describe '#describe_app_instance' do

    end

    describe '#describe_app_instance_admin' do

    end

    describe '#describe_app_instance_user' do

    end

    describe '#describe_channel' do

    end

    describe '#describe_channel_ban' do

    end

    describe '#describe_channel_membership' do

    end

    describe '#describe_channel_membership_for_app_instance_user' do

    end

    describe '#describe_channel_moderated_by_app_instance_user' do

    end

    describe '#describe_channel_moderator' do

    end

    describe '#disassociate_phone_number_from_user' do

    end

    describe '#disassociate_phone_numbers_from_voice_connector' do

    end

    describe '#disassociate_phone_numbers_from_voice_connector_group' do

    end

    describe '#disassociate_signin_delegate_groups_from_account' do

    end

    describe '#get_account' do

    end

    describe '#get_account_settings' do

    end

    describe '#get_app_instance_retention_settings' do

    end

    describe '#get_app_instance_streaming_configurations' do

    end

    describe '#get_attendee' do

    end

    describe '#get_bot' do

    end

    describe '#get_channel_message' do

    end

    describe '#get_events_configuration' do

    end

    describe '#get_global_settings' do

    end

    describe '#get_media_capture_pipeline' do

    end

    describe '#get_meeting' do

    end

    describe '#get_messaging_session_endpoint' do

    end

    describe '#get_phone_number' do

    end

    describe '#get_phone_number_order' do

    end

    describe '#get_phone_number_settings' do

    end

    describe '#get_proxy_session' do

    end

    describe '#get_retention_settings' do

    end

    describe '#get_room' do

    end

    describe '#get_sip_media_application' do

    end

    describe '#get_sip_media_application_logging_configuration' do

    end

    describe '#get_sip_rule' do

    end

    describe '#get_user' do

    end

    describe '#get_user_settings' do

    end

    describe '#get_voice_connector' do

    end

    describe '#get_voice_connector_emergency_calling_configuration' do

    end

    describe '#get_voice_connector_group' do

    end

    describe '#get_voice_connector_logging_configuration' do

    end

    describe '#get_voice_connector_origination' do

    end

    describe '#get_voice_connector_proxy' do

    end

    describe '#get_voice_connector_streaming_configuration' do

    end

    describe '#get_voice_connector_termination' do

    end

    describe '#get_voice_connector_termination_health' do

    end

    describe '#invite_users' do

    end

    describe '#list_accounts' do

    end

    describe '#list_app_instance_admins' do

    end

    describe '#list_app_instances' do

    end

    describe '#list_app_instance_users' do

    end

    describe '#list_attendees' do

    end

    describe '#list_attendee_tags' do

    end

    describe '#list_bots' do

    end

    describe '#list_channel_bans' do

    end

    describe '#list_channel_memberships' do

    end

    describe '#list_channel_memberships_for_app_instance_user' do

    end

    describe '#list_channel_messages' do

    end

    describe '#list_channel_moderators' do

    end

    describe '#list_channels' do

    end

    describe '#list_channels_moderated_by_app_instance_user' do

    end

    describe '#list_media_capture_pipelines' do

    end

    describe '#list_meetings' do

    end

    describe '#list_meeting_tags' do

    end

    describe '#list_phone_number_orders' do

    end

    describe '#list_phone_numbers' do

    end

    describe '#list_proxy_sessions' do

    end

    describe '#list_room_memberships' do

    end

    describe '#list_rooms' do

    end

    describe '#list_sip_media_applications' do

    end

    describe '#list_sip_rules' do

    end

    describe '#list_supported_phone_number_countries' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#list_users' do

    end

    describe '#list_voice_connector_groups' do

    end

    describe '#list_voice_connectors' do

    end

    describe '#list_voice_connector_termination_credentials' do

    end

    describe '#logout_user' do

    end

    describe '#put_app_instance_retention_settings' do

    end

    describe '#put_app_instance_streaming_configurations' do

    end

    describe '#put_events_configuration' do

    end

    describe '#put_retention_settings' do

    end

    describe '#put_sip_media_application_logging_configuration' do

    end

    describe '#put_voice_connector_emergency_calling_configuration' do

    end

    describe '#put_voice_connector_logging_configuration' do

    end

    describe '#put_voice_connector_origination' do

    end

    describe '#put_voice_connector_proxy' do

    end

    describe '#put_voice_connector_streaming_configuration' do

    end

    describe '#put_voice_connector_termination' do

    end

    describe '#put_voice_connector_termination_credentials' do

    end

    describe '#redact_channel_message' do

    end

    describe '#redact_conversation_message' do

    end

    describe '#redact_room_message' do

    end

    describe '#regenerate_security_token' do

    end

    describe '#reset_personal_pin' do

    end

    describe '#restore_phone_number' do

    end

    describe '#search_available_phone_numbers' do

    end

    describe '#send_channel_message' do

    end

    describe '#start_meeting_transcription' do

    end

    describe '#stop_meeting_transcription' do

    end

    describe '#tag_attendee' do

    end

    describe '#tag_meeting' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_attendee' do

    end

    describe '#untag_meeting' do

    end

    describe '#untag_resource' do

    end

    describe '#update_account' do

    end

    describe '#update_account_settings' do

    end

    describe '#update_app_instance' do

    end

    describe '#update_app_instance_user' do

    end

    describe '#update_bot' do

    end

    describe '#update_channel' do

    end

    describe '#update_channel_message' do

    end

    describe '#update_channel_read_marker' do

    end

    describe '#update_global_settings' do

    end

    describe '#update_phone_number' do

    end

    describe '#update_phone_number_settings' do

    end

    describe '#update_proxy_session' do

    end

    describe '#update_room' do

    end

    describe '#update_room_membership' do

    end

    describe '#update_sip_media_application' do

    end

    describe '#update_sip_media_application_call' do

    end

    describe '#update_sip_rule' do

    end

    describe '#update_user' do

    end

    describe '#update_user_settings' do

    end

    describe '#update_voice_connector' do

    end

    describe '#update_voice_connector_group' do

    end

  end
end
