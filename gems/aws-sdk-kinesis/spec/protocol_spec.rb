# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-kinesis'

module AWS::SDK::Kinesis
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#add_tags_to_stream' do

    end

    describe '#create_stream' do

    end

    describe '#decrease_stream_retention_period' do

    end

    describe '#delete_stream' do

    end

    describe '#deregister_stream_consumer' do

    end

    describe '#describe_limits' do

    end

    describe '#describe_stream' do

    end

    describe '#describe_stream_consumer' do

    end

    describe '#describe_stream_summary' do

    end

    describe '#disable_enhanced_monitoring' do

    end

    describe '#enable_enhanced_monitoring' do

    end

    describe '#get_records' do

    end

    describe '#get_shard_iterator' do

    end

    describe '#increase_stream_retention_period' do

    end

    describe '#list_shards' do

    end

    describe '#list_stream_consumers' do

    end

    describe '#list_streams' do

    end

    describe '#list_tags_for_stream' do

    end

    describe '#merge_shards' do

    end

    describe '#put_record' do

    end

    describe '#put_records' do

    end

    describe '#register_stream_consumer' do

    end

    describe '#remove_tags_from_stream' do

    end

    describe '#split_shard' do

    end

    describe '#start_stream_encryption' do

    end

    describe '#stop_stream_encryption' do

    end

    describe '#subscribe_to_shard' do

    end

    describe '#update_shard_count' do

    end

    describe '#update_stream_mode' do

    end

  end
end
