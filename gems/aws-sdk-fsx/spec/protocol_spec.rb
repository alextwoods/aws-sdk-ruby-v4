# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-fsx'

module AWS::SDK::FSx
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#associate_file_system_aliases' do

    end

    describe '#cancel_data_repository_task' do

    end

    describe '#copy_backup' do

    end

    describe '#create_backup' do

    end

    describe '#create_data_repository_association' do

    end

    describe '#create_data_repository_task' do

    end

    describe '#create_file_system' do

    end

    describe '#create_file_system_from_backup' do

    end

    describe '#create_snapshot' do

    end

    describe '#create_storage_virtual_machine' do

    end

    describe '#create_volume' do

    end

    describe '#create_volume_from_backup' do

    end

    describe '#delete_backup' do

    end

    describe '#delete_data_repository_association' do

    end

    describe '#delete_file_system' do

    end

    describe '#delete_snapshot' do

    end

    describe '#delete_storage_virtual_machine' do

    end

    describe '#delete_volume' do

    end

    describe '#describe_backups' do

    end

    describe '#describe_data_repository_associations' do

    end

    describe '#describe_data_repository_tasks' do

    end

    describe '#describe_file_system_aliases' do

    end

    describe '#describe_file_systems' do

    end

    describe '#describe_snapshots' do

    end

    describe '#describe_storage_virtual_machines' do

    end

    describe '#describe_volumes' do

    end

    describe '#disassociate_file_system_aliases' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#release_file_system_nfs_v3_locks' do

    end

    describe '#restore_volume_from_snapshot' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_data_repository_association' do

    end

    describe '#update_file_system' do

    end

    describe '#update_snapshot' do

    end

    describe '#update_storage_virtual_machine' do

    end

    describe '#update_volume' do

    end

  end
end
