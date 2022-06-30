# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-macie'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::Macie
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#associate_member_account' do

    end

    describe '#associate_s3_resources' do

    end

    describe '#disassociate_member_account' do

    end

    describe '#disassociate_s3_resources' do

    end

    describe '#list_member_accounts' do

    end

    describe '#list_s3_resources' do

    end

    describe '#update_s3_resources' do

    end

  end
end
