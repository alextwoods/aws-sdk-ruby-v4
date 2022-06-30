# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-lakeformation'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::LakeFormation
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#add_lf_tags_to_resource' do

    end

    describe '#batch_grant_permissions' do

    end

    describe '#batch_revoke_permissions' do

    end

    describe '#cancel_transaction' do

    end

    describe '#commit_transaction' do

    end

    describe '#create_data_cells_filter' do

    end

    describe '#create_lf_tag' do

    end

    describe '#delete_data_cells_filter' do

    end

    describe '#delete_lf_tag' do

    end

    describe '#delete_objects_on_cancel' do

    end

    describe '#deregister_resource' do

    end

    describe '#describe_resource' do

    end

    describe '#describe_transaction' do

    end

    describe '#extend_transaction' do

    end

    describe '#get_data_lake_settings' do

    end

    describe '#get_effective_permissions_for_path' do

    end

    describe '#get_lf_tag' do

    end

    describe '#get_query_state' do

    end

    describe '#get_query_statistics' do

    end

    describe '#get_resource_lf_tags' do

    end

    describe '#get_table_objects' do

    end

    describe '#get_temporary_glue_partition_credentials' do

    end

    describe '#get_temporary_glue_table_credentials' do

    end

    describe '#get_work_unit_results' do

    end

    describe '#get_work_units' do

    end

    describe '#grant_permissions' do

    end

    describe '#list_data_cells_filter' do

    end

    describe '#list_lf_tags' do

    end

    describe '#list_permissions' do

    end

    describe '#list_resources' do

    end

    describe '#list_table_storage_optimizers' do

    end

    describe '#list_transactions' do

    end

    describe '#put_data_lake_settings' do

    end

    describe '#register_resource' do

    end

    describe '#remove_lf_tags_from_resource' do

    end

    describe '#revoke_permissions' do

    end

    describe '#search_databases_by_lf_tags' do

    end

    describe '#search_tables_by_lf_tags' do

    end

    describe '#start_query_planning' do

    end

    describe '#start_transaction' do

    end

    describe '#update_lf_tag' do

    end

    describe '#update_resource' do

    end

    describe '#update_table_objects' do

    end

    describe '#update_table_storage_optimizer' do

    end

  end
end
