# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-athena'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::Athena
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#batch_get_named_query' do

    end

    describe '#batch_get_query_execution' do

    end

    describe '#create_data_catalog' do

    end

    describe '#create_named_query' do

    end

    describe '#create_prepared_statement' do

    end

    describe '#create_work_group' do

    end

    describe '#delete_data_catalog' do

    end

    describe '#delete_named_query' do

    end

    describe '#delete_prepared_statement' do

    end

    describe '#delete_work_group' do

    end

    describe '#get_database' do

    end

    describe '#get_data_catalog' do

    end

    describe '#get_named_query' do

    end

    describe '#get_prepared_statement' do

    end

    describe '#get_query_execution' do

    end

    describe '#get_query_results' do

    end

    describe '#get_table_metadata' do

    end

    describe '#get_work_group' do

    end

    describe '#list_databases' do

    end

    describe '#list_data_catalogs' do

    end

    describe '#list_engine_versions' do

    end

    describe '#list_named_queries' do

    end

    describe '#list_prepared_statements' do

    end

    describe '#list_query_executions' do

    end

    describe '#list_table_metadata' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#list_work_groups' do

    end

    describe '#start_query_execution' do

    end

    describe '#stop_query_execution' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_data_catalog' do

    end

    describe '#update_named_query' do

    end

    describe '#update_prepared_statement' do

    end

    describe '#update_work_group' do

    end

  end
end
