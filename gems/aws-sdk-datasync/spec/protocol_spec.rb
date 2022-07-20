# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-datasync'

module AWS::SDK::DataSync
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#cancel_task_execution' do

    end

    describe '#create_agent' do

    end

    describe '#create_location_efs' do

    end

    describe '#create_location_fsx_lustre' do

    end

    describe '#create_location_fsx_open_zfs' do

    end

    describe '#create_location_fsx_windows' do

    end

    describe '#create_location_hdfs' do

    end

    describe '#create_location_nfs' do

    end

    describe '#create_location_object_storage' do

    end

    describe '#create_location_s3' do

    end

    describe '#create_location_smb' do

    end

    describe '#create_task' do

    end

    describe '#delete_agent' do

    end

    describe '#delete_location' do

    end

    describe '#delete_task' do

    end

    describe '#describe_agent' do

    end

    describe '#describe_location_efs' do

    end

    describe '#describe_location_fsx_lustre' do

    end

    describe '#describe_location_fsx_open_zfs' do

    end

    describe '#describe_location_fsx_windows' do

    end

    describe '#describe_location_hdfs' do

    end

    describe '#describe_location_nfs' do

    end

    describe '#describe_location_object_storage' do

    end

    describe '#describe_location_s3' do

    end

    describe '#describe_location_smb' do

    end

    describe '#describe_task' do

    end

    describe '#describe_task_execution' do

    end

    describe '#list_agents' do

    end

    describe '#list_locations' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#list_task_executions' do

    end

    describe '#list_tasks' do

    end

    describe '#start_task_execution' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_agent' do

    end

    describe '#update_location_hdfs' do

    end

    describe '#update_location_nfs' do

    end

    describe '#update_location_object_storage' do

    end

    describe '#update_location_smb' do

    end

    describe '#update_task' do

    end

    describe '#update_task_execution' do

    end

  end
end
