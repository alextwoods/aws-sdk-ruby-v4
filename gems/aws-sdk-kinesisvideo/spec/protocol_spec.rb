# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-kinesisvideo'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::KinesisVideo
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#create_signaling_channel' do

    end

    describe '#create_stream' do

    end

    describe '#delete_signaling_channel' do

    end

    describe '#delete_stream' do

    end

    describe '#describe_image_generation_configuration' do

    end

    describe '#describe_notification_configuration' do

    end

    describe '#describe_signaling_channel' do

    end

    describe '#describe_stream' do

    end

    describe '#get_data_endpoint' do

    end

    describe '#get_signaling_channel_endpoint' do

    end

    describe '#list_signaling_channels' do

    end

    describe '#list_streams' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#list_tags_for_stream' do

    end

    describe '#tag_resource' do

    end

    describe '#tag_stream' do

    end

    describe '#untag_resource' do

    end

    describe '#untag_stream' do

    end

    describe '#update_data_retention' do

    end

    describe '#update_image_generation_configuration' do

    end

    describe '#update_notification_configuration' do

    end

    describe '#update_signaling_channel' do

    end

    describe '#update_stream' do

    end

  end
end
