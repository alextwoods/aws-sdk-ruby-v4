# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-wisdom'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::Wisdom
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#create_assistant' do

    end

    describe '#create_assistant_association' do

    end

    describe '#create_content' do

    end

    describe '#create_knowledge_base' do

    end

    describe '#create_session' do

    end

    describe '#delete_assistant' do

    end

    describe '#delete_assistant_association' do

    end

    describe '#delete_content' do

    end

    describe '#delete_knowledge_base' do

    end

    describe '#get_assistant' do

    end

    describe '#get_assistant_association' do

    end

    describe '#get_content' do

    end

    describe '#get_content_summary' do

    end

    describe '#get_knowledge_base' do

    end

    describe '#get_recommendations' do

    end

    describe '#get_session' do

    end

    describe '#list_assistant_associations' do

    end

    describe '#list_assistants' do

    end

    describe '#list_contents' do

    end

    describe '#list_knowledge_bases' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#notify_recommendations_received' do

    end

    describe '#query_assistant' do

    end

    describe '#remove_knowledge_base_template_uri' do

    end

    describe '#search_content' do

    end

    describe '#search_sessions' do

    end

    describe '#start_content_upload' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_content' do

    end

    describe '#update_knowledge_base_template_uri' do

    end

  end
end
