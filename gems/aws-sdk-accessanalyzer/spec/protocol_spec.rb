# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-accessanalyzer'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::AccessAnalyzer
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#apply_archive_rule' do

    end

    describe '#cancel_policy_generation' do

    end

    describe '#create_access_preview' do

    end

    describe '#create_analyzer' do

    end

    describe '#create_archive_rule' do

    end

    describe '#delete_analyzer' do

    end

    describe '#delete_archive_rule' do

    end

    describe '#get_access_preview' do

    end

    describe '#get_analyzed_resource' do

    end

    describe '#get_analyzer' do

    end

    describe '#get_archive_rule' do

    end

    describe '#get_finding' do

    end

    describe '#get_generated_policy' do

    end

    describe '#list_access_preview_findings' do

    end

    describe '#list_access_previews' do

    end

    describe '#list_analyzed_resources' do

    end

    describe '#list_analyzers' do

    end

    describe '#list_archive_rules' do

    end

    describe '#list_findings' do

    end

    describe '#list_policy_generations' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#start_policy_generation' do

    end

    describe '#start_resource_scan' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_archive_rule' do

    end

    describe '#update_findings' do

    end

    describe '#validate_policy' do

    end

  end
end
