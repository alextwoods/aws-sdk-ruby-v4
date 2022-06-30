# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-pinpointsmsvoice'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::PinpointSMSVoice
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#create_configuration_set' do

    end

    describe '#create_configuration_set_event_destination' do

    end

    describe '#delete_configuration_set' do

    end

    describe '#delete_configuration_set_event_destination' do

    end

    describe '#get_configuration_set_event_destinations' do

    end

    describe '#list_configuration_sets' do

    end

    describe '#send_voice_message' do

    end

    describe '#update_configuration_set_event_destination' do

    end

  end
end
