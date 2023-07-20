# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-s3'

module AWS::SDK::S3
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:retry_strategy) { Hearth::Retry::Standard.new(max_attempts: 1) }
    let(:config) do
      Config.new(
        stub_responses: true,
        validate_input: false,
        endpoint: endpoint,
        retry_strategy: retry_strategy
      )
    end
    let(:client) { Client.new(config) }
    let(:before_send) do
      Class.new do
        def initialize(&block)
          @block = block
        end

        def read_before_transmit(context)
          @block.call(context)
        end
      end
    end

    let(:after_send) do
      Class.new do
        def initialize(&block)
          @block = block
        end

        def read_after_transmit(context)
          @block.call(context)
        end
      end
    end

    describe '#abort_multipart_upload' do

    end

    describe '#complete_multipart_upload' do

    end

    describe '#copy_object' do

    end

    describe '#create_bucket' do

    end

    describe '#create_multipart_upload' do

    end

    describe '#delete_bucket' do

    end

    describe '#delete_bucket_analytics_configuration' do

    end

    describe '#delete_bucket_cors' do

    end

    describe '#delete_bucket_encryption' do

    end

    describe '#delete_bucket_intelligent_tiering_configuration' do

    end

    describe '#delete_bucket_inventory_configuration' do

    end

    describe '#delete_bucket_lifecycle' do

    end

    describe '#delete_bucket_metrics_configuration' do

    end

    describe '#delete_bucket_ownership_controls' do

    end

    describe '#delete_bucket_policy' do

    end

    describe '#delete_bucket_replication' do

    end

    describe '#delete_bucket_tagging' do

    end

    describe '#delete_bucket_website' do

    end

    describe '#delete_object' do

    end

    describe '#delete_objects' do

    end

    describe '#delete_object_tagging' do

    end

    describe '#delete_public_access_block' do

    end

    describe '#get_bucket_accelerate_configuration' do

    end

    describe '#get_bucket_acl' do

    end

    describe '#get_bucket_analytics_configuration' do

    end

    describe '#get_bucket_cors' do

    end

    describe '#get_bucket_encryption' do

    end

    describe '#get_bucket_intelligent_tiering_configuration' do

    end

    describe '#get_bucket_inventory_configuration' do

    end

    describe '#get_bucket_lifecycle_configuration' do

    end

    describe '#get_bucket_location' do

    end

    describe '#get_bucket_logging' do

    end

    describe '#get_bucket_metrics_configuration' do

    end

    describe '#get_bucket_notification_configuration' do

    end

    describe '#get_bucket_ownership_controls' do

    end

    describe '#get_bucket_policy' do

    end

    describe '#get_bucket_policy_status' do

    end

    describe '#get_bucket_replication' do

    end

    describe '#get_bucket_request_payment' do

    end

    describe '#get_bucket_tagging' do

    end

    describe '#get_bucket_versioning' do

    end

    describe '#get_bucket_website' do

    end

    describe '#get_object' do

    end

    describe '#get_object_acl' do

    end

    describe '#get_object_attributes' do

    end

    describe '#get_object_legal_hold' do

    end

    describe '#get_object_lock_configuration' do

    end

    describe '#get_object_retention' do

    end

    describe '#get_object_tagging' do

    end

    describe '#get_object_torrent' do

    end

    describe '#get_public_access_block' do

    end

    describe '#head_bucket' do

    end

    describe '#head_object' do

    end

    describe '#list_bucket_analytics_configurations' do

    end

    describe '#list_bucket_intelligent_tiering_configurations' do

    end

    describe '#list_bucket_inventory_configurations' do

    end

    describe '#list_bucket_metrics_configurations' do

    end

    describe '#list_buckets' do

    end

    describe '#list_multipart_uploads' do

    end

    describe '#list_objects' do

    end

    describe '#list_objects_v2' do

    end

    describe '#list_object_versions' do

    end

    describe '#list_parts' do

    end

    describe '#put_bucket_accelerate_configuration' do

    end

    describe '#put_bucket_acl' do

    end

    describe '#put_bucket_analytics_configuration' do

    end

    describe '#put_bucket_cors' do

    end

    describe '#put_bucket_encryption' do

    end

    describe '#put_bucket_intelligent_tiering_configuration' do

    end

    describe '#put_bucket_inventory_configuration' do

    end

    describe '#put_bucket_lifecycle_configuration' do

    end

    describe '#put_bucket_logging' do

    end

    describe '#put_bucket_metrics_configuration' do

    end

    describe '#put_bucket_notification_configuration' do

    end

    describe '#put_bucket_ownership_controls' do

    end

    describe '#put_bucket_policy' do

    end

    describe '#put_bucket_replication' do

    end

    describe '#put_bucket_request_payment' do

    end

    describe '#put_bucket_tagging' do

    end

    describe '#put_bucket_versioning' do

    end

    describe '#put_bucket_website' do

    end

    describe '#put_object' do

    end

    describe '#put_object_acl' do

    end

    describe '#put_object_legal_hold' do

    end

    describe '#put_object_lock_configuration' do

    end

    describe '#put_object_retention' do

    end

    describe '#put_object_tagging' do

    end

    describe '#put_public_access_block' do

    end

    describe '#restore_object' do

    end

    describe '#select_object_content' do

    end

    describe '#upload_part' do

    end

    describe '#upload_part_copy' do

    end

    describe '#write_get_object_response' do

    end

  end
end
