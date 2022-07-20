# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-resiliencehub'

module AWS::SDK::Resiliencehub
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#add_draft_app_version_resource_mappings' do

    end

    describe '#create_app' do

    end

    describe '#create_recommendation_template' do

    end

    describe '#create_resiliency_policy' do

    end

    describe '#delete_app' do

    end

    describe '#delete_app_assessment' do

    end

    describe '#delete_recommendation_template' do

    end

    describe '#delete_resiliency_policy' do

    end

    describe '#describe_app' do

    end

    describe '#describe_app_assessment' do

    end

    describe '#describe_app_version_resources_resolution_status' do

    end

    describe '#describe_app_version_template' do

    end

    describe '#describe_draft_app_version_resources_import_status' do

    end

    describe '#describe_resiliency_policy' do

    end

    describe '#import_resources_to_draft_app_version' do

    end

    describe '#list_alarm_recommendations' do

    end

    describe '#list_app_assessments' do

    end

    describe '#list_app_component_compliances' do

    end

    describe '#list_app_component_recommendations' do

    end

    describe '#list_apps' do

    end

    describe '#list_app_version_resource_mappings' do

    end

    describe '#list_app_version_resources' do

    end

    describe '#list_app_versions' do

    end

    describe '#list_recommendation_templates' do

    end

    describe '#list_resiliency_policies' do

    end

    describe '#list_sop_recommendations' do

    end

    describe '#list_suggested_resiliency_policies' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#list_test_recommendations' do

    end

    describe '#list_unsupported_app_version_resources' do

    end

    describe '#publish_app_version' do

    end

    describe '#put_draft_app_version_template' do

    end

    describe '#remove_draft_app_version_resource_mappings' do

    end

    describe '#resolve_app_version_resources' do

    end

    describe '#start_app_assessment' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_app' do

    end

    describe '#update_resiliency_policy' do

    end

  end
end
