# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-ivschat'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::Ivschat
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#create_chat_token' do

    end

    describe '#create_room' do

    end

    describe '#delete_message' do

    end

    describe '#delete_room' do

    end

    describe '#disconnect_user' do

    end

    describe '#get_room' do

    end

    describe '#list_rooms' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#send_event' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_room' do

    end

  end
end
