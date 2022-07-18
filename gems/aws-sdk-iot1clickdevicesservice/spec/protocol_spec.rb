# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-iot1clickdevicesservice'

module AWS::SDK::IoT1ClickDevicesService
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#claim_devices_by_claim_code' do

    end

    describe '#describe_device' do

    end

    describe '#finalize_device_claim' do

    end

    describe '#get_device_methods' do

    end

    describe '#initiate_device_claim' do

    end

    describe '#invoke_device_method' do

    end

    describe '#list_device_events' do

    end

    describe '#list_devices' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#tag_resource' do

    end

    describe '#unclaim_device' do

    end

    describe '#untag_resource' do

    end

    describe '#update_device_state' do

    end

  end
end
