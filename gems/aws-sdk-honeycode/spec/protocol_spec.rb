# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-honeycode'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::Honeycode
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#batch_create_table_rows' do

    end

    describe '#batch_delete_table_rows' do

    end

    describe '#batch_update_table_rows' do

    end

    describe '#batch_upsert_table_rows' do

    end

    describe '#describe_table_data_import_job' do

    end

    describe '#get_screen_data' do

    end

    describe '#invoke_screen_automation' do

    end

    describe '#list_table_columns' do

    end

    describe '#list_table_rows' do

    end

    describe '#list_tables' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#query_table_rows' do

    end

    describe '#start_table_data_import_job' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

  end
end
