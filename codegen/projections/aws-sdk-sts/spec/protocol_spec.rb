# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-sts'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::Sts
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

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
