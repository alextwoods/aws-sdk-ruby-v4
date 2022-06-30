# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-chimesdkmessaging'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::ChimeSDKMessaging
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#associate_channel_flow' do

    end

    describe '#batch_create_channel_membership' do

    end

    describe '#channel_flow_callback' do

    end

    describe '#create_channel' do

    end

    describe '#create_channel_ban' do

    end

    describe '#create_channel_flow' do

    end

    describe '#create_channel_membership' do

    end

    describe '#create_channel_moderator' do

    end

    describe '#delete_channel' do

    end

    describe '#delete_channel_ban' do

    end

    describe '#delete_channel_flow' do

    end

    describe '#delete_channel_membership' do

    end

    describe '#delete_channel_message' do

    end

    describe '#delete_channel_moderator' do

    end

    describe '#describe_channel' do

    end

    describe '#describe_channel_ban' do

    end

    describe '#describe_channel_flow' do

    end

    describe '#describe_channel_membership' do

    end

    describe '#describe_channel_membership_for_app_instance_user' do

    end

    describe '#describe_channel_moderated_by_app_instance_user' do

    end

    describe '#describe_channel_moderator' do

    end

    describe '#disassociate_channel_flow' do

    end

    describe '#get_channel_membership_preferences' do

    end

    describe '#get_channel_message' do

    end

    describe '#get_channel_message_status' do

    end

    describe '#get_messaging_session_endpoint' do

    end

    describe '#list_channel_bans' do

    end

    describe '#list_channel_flows' do

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

    describe '#list_channels_associated_with_channel_flow' do

    end

    describe '#list_channels_moderated_by_app_instance_user' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#put_channel_membership_preferences' do

    end

    describe '#redact_channel_message' do

    end

    describe '#search_channels' do

    end

    describe '#send_channel_message' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_channel' do

    end

    describe '#update_channel_flow' do

    end

    describe '#update_channel_message' do

    end

    describe '#update_channel_read_marker' do

    end

  end
end
