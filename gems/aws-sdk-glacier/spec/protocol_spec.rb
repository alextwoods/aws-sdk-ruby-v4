# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-glacier'

module AWS::SDK::Glacier
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#abort_multipart_upload' do

    end

    describe '#abort_vault_lock' do

    end

    describe '#add_tags_to_vault' do

    end

    describe '#complete_multipart_upload' do

    end

    describe '#complete_vault_lock' do

    end

    describe '#create_vault' do

    end

    describe '#delete_archive' do

    end

    describe '#delete_vault' do

    end

    describe '#delete_vault_access_policy' do

    end

    describe '#delete_vault_notifications' do

    end

    describe '#describe_job' do

    end

    describe '#describe_vault' do

    end

    describe '#get_data_retrieval_policy' do

    end

    describe '#get_job_output' do

    end

    describe '#get_vault_access_policy' do

    end

    describe '#get_vault_lock' do

    end

    describe '#get_vault_notifications' do

    end

    describe '#initiate_job' do

    end

    describe '#initiate_multipart_upload' do

    end

    describe '#initiate_vault_lock' do

    end

    describe '#list_jobs' do

    end

    describe '#list_multipart_uploads' do

    end

    describe '#list_parts' do

    end

    describe '#list_provisioned_capacity' do

    end

    describe '#list_tags_for_vault' do

    end

    describe '#list_vaults' do

    end

    describe '#purchase_provisioned_capacity' do

    end

    describe '#remove_tags_from_vault' do

    end

    describe '#set_data_retrieval_policy' do

    end

    describe '#set_vault_access_policy' do

    end

    describe '#set_vault_notifications' do

    end

    describe '#upload_archive' do

    end

    describe '#upload_multipart_part' do

    end

  end
end
