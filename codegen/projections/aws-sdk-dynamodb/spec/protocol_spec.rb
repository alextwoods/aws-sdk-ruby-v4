# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-dynamodb'

require 'hearth/xml/node_matcher'

module AWS::Dynamodb
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:client) { Client.new(stub_responses: true, endpoint: endpoint) }

    describe '#batch_execute_statement' do

    end
    describe '#batch_get_item' do

    end
    describe '#batch_write_item' do

    end
    describe '#create_backup' do

    end
    describe '#create_global_table' do

    end
    describe '#create_table' do

    end
    describe '#delete_backup' do

    end
    describe '#delete_item' do

    end
    describe '#delete_table' do

    end
    describe '#describe_backup' do

    end
    describe '#describe_continuous_backups' do

    end
    describe '#describe_contributor_insights' do

    end
    describe '#describe_endpoints' do

    end
    describe '#describe_export' do

    end
    describe '#describe_global_table' do

    end
    describe '#describe_global_table_settings' do

    end
    describe '#describe_kinesis_streaming_destination' do

    end
    describe '#describe_limits' do

    end
    describe '#describe_table' do

    end
    describe '#describe_table_replica_auto_scaling' do

    end
    describe '#describe_time_to_live' do

    end
    describe '#disable_kinesis_streaming_destination' do

    end
    describe '#enable_kinesis_streaming_destination' do

    end
    describe '#execute_statement' do

    end
    describe '#execute_transaction' do

    end
    describe '#export_table_to_point_in_time' do

    end
    describe '#get_item' do

    end
    describe '#list_backups' do

    end
    describe '#list_contributor_insights' do

    end
    describe '#list_exports' do

    end
    describe '#list_global_tables' do

    end
    describe '#list_tables' do

    end
    describe '#list_tags_of_resource' do

    end
    describe '#put_item' do

    end
    describe '#query' do

    end
    describe '#restore_table_from_backup' do

    end
    describe '#restore_table_to_point_in_time' do

    end
    describe '#scan' do

    end
    describe '#tag_resource' do

    end
    describe '#transact_get_items' do

    end
    describe '#transact_write_items' do

    end
    describe '#untag_resource' do

    end
    describe '#update_continuous_backups' do

    end
    describe '#update_contributor_insights' do

    end
    describe '#update_global_table' do

    end
    describe '#update_global_table_settings' do

    end
    describe '#update_item' do

    end
    describe '#update_table' do

    end
    describe '#update_table_replica_auto_scaling' do

    end
    describe '#update_time_to_live' do

    end
  end
end
