# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-s3control'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::S3Control
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#create_access_point' do

    end

    describe '#create_access_point_for_object_lambda' do

    end

    describe '#create_bucket' do

    end

    describe '#create_job' do

    end

    describe '#create_multi_region_access_point' do

    end

    describe '#delete_access_point' do

    end

    describe '#delete_access_point_for_object_lambda' do

    end

    describe '#delete_access_point_policy' do

    end

    describe '#delete_access_point_policy_for_object_lambda' do

    end

    describe '#delete_bucket' do

    end

    describe '#delete_bucket_lifecycle_configuration' do

    end

    describe '#delete_bucket_policy' do

    end

    describe '#delete_bucket_tagging' do

    end

    describe '#delete_job_tagging' do

    end

    describe '#delete_multi_region_access_point' do

    end

    describe '#delete_public_access_block' do

    end

    describe '#delete_storage_lens_configuration' do

    end

    describe '#delete_storage_lens_configuration_tagging' do

    end

    describe '#describe_job' do

    end

    describe '#describe_multi_region_access_point_operation' do

    end

    describe '#get_access_point' do

    end

    describe '#get_access_point_configuration_for_object_lambda' do

    end

    describe '#get_access_point_for_object_lambda' do

    end

    describe '#get_access_point_policy' do

    end

    describe '#get_access_point_policy_for_object_lambda' do

    end

    describe '#get_access_point_policy_status' do

    end

    describe '#get_access_point_policy_status_for_object_lambda' do

    end

    describe '#get_bucket' do

    end

    describe '#get_bucket_lifecycle_configuration' do

    end

    describe '#get_bucket_policy' do

    end

    describe '#get_bucket_tagging' do

    end

    describe '#get_job_tagging' do

    end

    describe '#get_multi_region_access_point' do

    end

    describe '#get_multi_region_access_point_policy' do

    end

    describe '#get_multi_region_access_point_policy_status' do

    end

    describe '#get_public_access_block' do

    end

    describe '#get_storage_lens_configuration' do

    end

    describe '#get_storage_lens_configuration_tagging' do

    end

    describe '#list_access_points' do

    end

    describe '#list_access_points_for_object_lambda' do

    end

    describe '#list_jobs' do

    end

    describe '#list_multi_region_access_points' do

    end

    describe '#list_regional_buckets' do

    end

    describe '#list_storage_lens_configurations' do

    end

    describe '#put_access_point_configuration_for_object_lambda' do

    end

    describe '#put_access_point_policy' do

    end

    describe '#put_access_point_policy_for_object_lambda' do

    end

    describe '#put_bucket_lifecycle_configuration' do

    end

    describe '#put_bucket_policy' do

    end

    describe '#put_bucket_tagging' do

    end

    describe '#put_job_tagging' do

    end

    describe '#put_multi_region_access_point_policy' do

    end

    describe '#put_public_access_block' do

    end

    describe '#put_storage_lens_configuration' do

    end

    describe '#put_storage_lens_configuration_tagging' do

    end

    describe '#update_job_priority' do

    end

    describe '#update_job_status' do

    end

  end
end
