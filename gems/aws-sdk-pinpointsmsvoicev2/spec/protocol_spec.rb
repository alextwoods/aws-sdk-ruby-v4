# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-pinpointsmsvoicev2'

module AWS::SDK::PinpointSMSVoiceV2
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#associate_origination_identity' do

    end

    describe '#create_configuration_set' do

    end

    describe '#create_event_destination' do

    end

    describe '#create_opt_out_list' do

    end

    describe '#create_pool' do

    end

    describe '#delete_configuration_set' do

    end

    describe '#delete_default_message_type' do

    end

    describe '#delete_default_sender_id' do

    end

    describe '#delete_event_destination' do

    end

    describe '#delete_keyword' do

    end

    describe '#delete_opted_out_number' do

    end

    describe '#delete_opt_out_list' do

    end

    describe '#delete_pool' do

    end

    describe '#delete_text_message_spend_limit_override' do

    end

    describe '#delete_voice_message_spend_limit_override' do

    end

    describe '#describe_account_attributes' do

    end

    describe '#describe_account_limits' do

    end

    describe '#describe_configuration_sets' do

    end

    describe '#describe_keywords' do

    end

    describe '#describe_opted_out_numbers' do

    end

    describe '#describe_opt_out_lists' do

    end

    describe '#describe_phone_numbers' do

    end

    describe '#describe_pools' do

    end

    describe '#describe_sender_ids' do

    end

    describe '#describe_spend_limits' do

    end

    describe '#disassociate_origination_identity' do

    end

    describe '#list_pool_origination_identities' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#put_keyword' do

    end

    describe '#put_opted_out_number' do

    end

    describe '#release_phone_number' do

    end

    describe '#request_phone_number' do

    end

    describe '#send_text_message' do

    end

    describe '#send_voice_message' do

    end

    describe '#set_default_message_type' do

    end

    describe '#set_default_sender_id' do

    end

    describe '#set_text_message_spend_limit_override' do

    end

    describe '#set_voice_message_spend_limit_override' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_event_destination' do

    end

    describe '#update_phone_number' do

    end

    describe '#update_pool' do

    end

  end
end
