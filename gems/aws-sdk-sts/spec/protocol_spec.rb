# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-sts'

module AWS::SDK::STS
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:retry_strategy) { Hearth::Retry::Standard.new(max_attempts: 1) }
    let(:config) do
      Config.new(
        stub_responses: true,
        validate_input: false,
        endpoint: endpoint,
        retry_strategy: retry_strategy
      )
    end
    let(:client) { Client.new(config) }
    let(:before_send) do
      Class.new do
        def initialize(&block)
          @block = block
        end

        def read_before_transmit(context)
          @block.call(context)
        end
      end
    end

    let(:after_send) do
      Class.new do
        def initialize(&block)
          @block = block
        end

        def read_after_transmit(context)
          @block.call(context)
        end
      end
    end

    describe '#assume_role' do

    end

    describe '#assume_role_with_saml' do

    end

    describe '#assume_role_with_web_identity' do

    end

    describe '#decode_authorization_message' do

    end

    describe '#get_access_key_info' do

    end

    describe '#get_caller_identity' do

    end

    describe '#get_federation_token' do

    end

    describe '#get_session_token' do

    end

  end
end
