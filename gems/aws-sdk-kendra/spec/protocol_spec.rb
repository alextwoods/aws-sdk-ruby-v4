# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-kendra'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::Kendra
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#associate_entities_to_experience' do

    end

    describe '#associate_personas_to_entities' do

    end

    describe '#batch_delete_document' do

    end

    describe '#batch_get_document_status' do

    end

    describe '#batch_put_document' do

    end

    describe '#clear_query_suggestions' do

    end

    describe '#create_data_source' do

    end

    describe '#create_experience' do

    end

    describe '#create_faq' do

    end

    describe '#create_index' do

    end

    describe '#create_query_suggestions_block_list' do

    end

    describe '#create_thesaurus' do

    end

    describe '#delete_data_source' do

    end

    describe '#delete_experience' do

    end

    describe '#delete_faq' do

    end

    describe '#delete_index' do

    end

    describe '#delete_principal_mapping' do

    end

    describe '#delete_query_suggestions_block_list' do

    end

    describe '#delete_thesaurus' do

    end

    describe '#describe_data_source' do

    end

    describe '#describe_experience' do

    end

    describe '#describe_faq' do

    end

    describe '#describe_index' do

    end

    describe '#describe_principal_mapping' do

    end

    describe '#describe_query_suggestions_block_list' do

    end

    describe '#describe_query_suggestions_config' do

    end

    describe '#describe_thesaurus' do

    end

    describe '#disassociate_entities_from_experience' do

    end

    describe '#disassociate_personas_from_entities' do

    end

    describe '#get_query_suggestions' do

    end

    describe '#get_snapshots' do

    end

    describe '#list_data_sources' do

    end

    describe '#list_data_source_sync_jobs' do

    end

    describe '#list_entity_personas' do

    end

    describe '#list_experience_entities' do

    end

    describe '#list_experiences' do

    end

    describe '#list_faqs' do

    end

    describe '#list_groups_older_than_ordering_id' do

    end

    describe '#list_indices' do

    end

    describe '#list_query_suggestions_block_lists' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#list_thesauri' do

    end

    describe '#put_principal_mapping' do

    end

    describe '#query' do

    end

    describe '#start_data_source_sync_job' do

    end

    describe '#stop_data_source_sync_job' do

    end

    describe '#submit_feedback' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_data_source' do

    end

    describe '#update_experience' do

    end

    describe '#update_index' do

    end

    describe '#update_query_suggestions_block_list' do

    end

    describe '#update_query_suggestions_config' do

    end

    describe '#update_thesaurus' do

    end

  end
end
