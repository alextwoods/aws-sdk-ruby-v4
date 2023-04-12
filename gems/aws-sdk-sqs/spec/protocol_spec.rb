# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-sqs'

module AWS::SDK::SQS
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, validate_input: false, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#add_permission' do

    end

    describe '#change_message_visibility' do

    end

    describe '#change_message_visibility_batch' do

    end

    describe '#create_queue' do

    end

    describe '#delete_message' do

    end

    describe '#delete_message_batch' do

    end

    describe '#delete_queue' do

    end

    describe '#get_queue_attributes' do

    end

    describe '#get_queue_url' do

    end

    describe '#list_dead_letter_source_queues' do

    end

    describe '#list_queues' do

    end

    describe '#list_queue_tags' do

    end

    describe '#purge_queue' do

    end

    describe '#receive_message' do

    end

    describe '#remove_permission' do

    end

    describe '#send_message' do

    end

    describe '#send_message_batch' do

    end

    describe '#set_queue_attributes' do

    end

    describe '#tag_queue' do

    end

    describe '#untag_queue' do

    end

  end
end
