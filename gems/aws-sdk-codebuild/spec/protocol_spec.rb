# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-codebuild'

module AWS::SDK::CodeBuild
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#batch_delete_builds' do

    end

    describe '#batch_get_build_batches' do

    end

    describe '#batch_get_builds' do

    end

    describe '#batch_get_projects' do

    end

    describe '#batch_get_report_groups' do

    end

    describe '#batch_get_reports' do

    end

    describe '#create_project' do

    end

    describe '#create_report_group' do

    end

    describe '#create_webhook' do

    end

    describe '#delete_build_batch' do

    end

    describe '#delete_project' do

    end

    describe '#delete_report' do

    end

    describe '#delete_report_group' do

    end

    describe '#delete_resource_policy' do

    end

    describe '#delete_source_credentials' do

    end

    describe '#delete_webhook' do

    end

    describe '#describe_code_coverages' do

    end

    describe '#describe_test_cases' do

    end

    describe '#get_report_group_trend' do

    end

    describe '#get_resource_policy' do

    end

    describe '#import_source_credentials' do

    end

    describe '#invalidate_project_cache' do

    end

    describe '#list_build_batches' do

    end

    describe '#list_build_batches_for_project' do

    end

    describe '#list_builds' do

    end

    describe '#list_builds_for_project' do

    end

    describe '#list_curated_environment_images' do

    end

    describe '#list_projects' do

    end

    describe '#list_report_groups' do

    end

    describe '#list_reports' do

    end

    describe '#list_reports_for_report_group' do

    end

    describe '#list_shared_projects' do

    end

    describe '#list_shared_report_groups' do

    end

    describe '#list_source_credentials' do

    end

    describe '#put_resource_policy' do

    end

    describe '#retry_build' do

    end

    describe '#retry_build_batch' do

    end

    describe '#start_build' do

    end

    describe '#start_build_batch' do

    end

    describe '#stop_build' do

    end

    describe '#stop_build_batch' do

    end

    describe '#update_project' do

    end

    describe '#update_project_visibility' do

    end

    describe '#update_report_group' do

    end

    describe '#update_webhook' do

    end

  end
end
