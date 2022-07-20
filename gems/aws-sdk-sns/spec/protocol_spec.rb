# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-sns'

module AWS::SDK::SNS
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#add_permission' do

    end

    describe '#check_if_phone_number_is_opted_out' do

    end

    describe '#confirm_subscription' do

    end

    describe '#create_platform_application' do

    end

    describe '#create_platform_endpoint' do

    end

    describe '#create_sms_sandbox_phone_number' do

    end

    describe '#create_topic' do

    end

    describe '#delete_endpoint' do

    end

    describe '#delete_platform_application' do

    end

    describe '#delete_sms_sandbox_phone_number' do

    end

    describe '#delete_topic' do

    end

    describe '#get_endpoint_attributes' do

    end

    describe '#get_platform_application_attributes' do

    end

    describe '#get_sms_attributes' do

    end

    describe '#get_sms_sandbox_account_status' do

    end

    describe '#get_subscription_attributes' do

    end

    describe '#get_topic_attributes' do

    end

    describe '#list_endpoints_by_platform_application' do

    end

    describe '#list_origination_numbers' do

    end

    describe '#list_phone_numbers_opted_out' do

    end

    describe '#list_platform_applications' do

    end

    describe '#list_sms_sandbox_phone_numbers' do

    end

    describe '#list_subscriptions' do

    end

    describe '#list_subscriptions_by_topic' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#list_topics' do

    end

    describe '#opt_in_phone_number' do

    end

    describe '#publish' do

    end

    describe '#publish_batch' do

    end

    describe '#remove_permission' do

    end

    describe '#set_endpoint_attributes' do

    end

    describe '#set_platform_application_attributes' do

    end

    describe '#set_sms_attributes' do

    end

    describe '#set_subscription_attributes' do

    end

    describe '#set_topic_attributes' do

    end

    describe '#subscribe' do

    end

    describe '#tag_resource' do

    end

    describe '#unsubscribe' do

    end

    describe '#untag_resource' do

    end

    describe '#verify_sms_sandbox_phone_number' do

    end

  end
end
