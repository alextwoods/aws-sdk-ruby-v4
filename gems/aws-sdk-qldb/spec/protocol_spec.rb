# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-qldb'

module AWS::SDK::QLDB
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#cancel_journal_kinesis_stream' do

    end

    describe '#create_ledger' do

    end

    describe '#delete_ledger' do

    end

    describe '#describe_journal_kinesis_stream' do

    end

    describe '#describe_journal_s3_export' do

    end

    describe '#describe_ledger' do

    end

    describe '#export_journal_to_s3' do

    end

    describe '#get_block' do

    end

    describe '#get_digest' do

    end

    describe '#get_revision' do

    end

    describe '#list_journal_kinesis_streams_for_ledger' do

    end

    describe '#list_journal_s3_exports' do

    end

    describe '#list_journal_s3_exports_for_ledger' do

    end

    describe '#list_ledgers' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#stream_journal_to_kinesis' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_ledger' do

    end

    describe '#update_ledger_permissions_mode' do

    end

  end
end
