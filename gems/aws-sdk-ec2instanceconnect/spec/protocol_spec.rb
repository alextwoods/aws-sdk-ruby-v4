# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-ec2instanceconnect'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::EC2InstanceConnect
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#send_serial_console_ssh_public_key' do

    end

    describe '#send_ssh_public_key' do

    end

  end
end
