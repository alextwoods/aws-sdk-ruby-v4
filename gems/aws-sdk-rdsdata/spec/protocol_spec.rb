# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-rdsdata'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::RDSData
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#batch_execute_statement' do

    end

    describe '#begin_transaction' do

    end

    describe '#commit_transaction' do

    end

    describe '#execute_sql' do

    end

    describe '#execute_statement' do

    end

    describe '#rollback_transaction' do

    end

  end
end
