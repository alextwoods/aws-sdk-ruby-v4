# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-firehose'

module AWS::SDK::Firehose
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#create_delivery_stream' do

    end

    describe '#delete_delivery_stream' do

    end

    describe '#describe_delivery_stream' do

    end

    describe '#list_delivery_streams' do

    end

    describe '#list_tags_for_delivery_stream' do

    end

    describe '#put_record' do

    end

    describe '#put_record_batch' do

    end

    describe '#start_delivery_stream_encryption' do

    end

    describe '#stop_delivery_stream_encryption' do

    end

    describe '#tag_delivery_stream' do

    end

    describe '#untag_delivery_stream' do

    end

    describe '#update_destination' do

    end

  end
end
