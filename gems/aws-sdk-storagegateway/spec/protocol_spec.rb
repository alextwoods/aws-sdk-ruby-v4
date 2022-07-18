# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-storagegateway'

module AWS::SDK::StorageGateway
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#activate_gateway' do

    end

    describe '#add_cache' do

    end

    describe '#add_tags_to_resource' do

    end

    describe '#add_upload_buffer' do

    end

    describe '#add_working_storage' do

    end

    describe '#assign_tape_pool' do

    end

    describe '#associate_file_system' do

    end

    describe '#attach_volume' do

    end

    describe '#cancel_archival' do

    end

    describe '#cancel_retrieval' do

    end

    describe '#create_cachedi_scsi_volume' do

    end

    describe '#create_nfs_file_share' do

    end

    describe '#create_smb_file_share' do

    end

    describe '#create_snapshot' do

    end

    describe '#create_snapshot_from_volume_recovery_point' do

    end

    describe '#create_storedi_scsi_volume' do

    end

    describe '#create_tape_pool' do

    end

    describe '#create_tapes' do

    end

    describe '#create_tape_with_barcode' do

    end

    describe '#delete_automatic_tape_creation_policy' do

    end

    describe '#delete_bandwidth_rate_limit' do

    end

    describe '#delete_chap_credentials' do

    end

    describe '#delete_file_share' do

    end

    describe '#delete_gateway' do

    end

    describe '#delete_snapshot_schedule' do

    end

    describe '#delete_tape' do

    end

    describe '#delete_tape_archive' do

    end

    describe '#delete_tape_pool' do

    end

    describe '#delete_volume' do

    end

    describe '#describe_availability_monitor_test' do

    end

    describe '#describe_bandwidth_rate_limit' do

    end

    describe '#describe_bandwidth_rate_limit_schedule' do

    end

    describe '#describe_cache' do

    end

    describe '#describe_cachedi_scsi_volumes' do

    end

    describe '#describe_chap_credentials' do

    end

    describe '#describe_file_system_associations' do

    end

    describe '#describe_gateway_information' do

    end

    describe '#describe_maintenance_start_time' do

    end

    describe '#describe_nfs_file_shares' do

    end

    describe '#describe_smb_file_shares' do

    end

    describe '#describe_smb_settings' do

    end

    describe '#describe_snapshot_schedule' do

    end

    describe '#describe_storedi_scsi_volumes' do

    end

    describe '#describe_tape_archives' do

    end

    describe '#describe_tape_recovery_points' do

    end

    describe '#describe_tapes' do

    end

    describe '#describe_upload_buffer' do

    end

    describe '#describe_vtl_devices' do

    end

    describe '#describe_working_storage' do

    end

    describe '#detach_volume' do

    end

    describe '#disable_gateway' do

    end

    describe '#disassociate_file_system' do

    end

    describe '#join_domain' do

    end

    describe '#list_automatic_tape_creation_policies' do

    end

    describe '#list_file_shares' do

    end

    describe '#list_file_system_associations' do

    end

    describe '#list_gateways' do

    end

    describe '#list_local_disks' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#list_tape_pools' do

    end

    describe '#list_tapes' do

    end

    describe '#list_volume_initiators' do

    end

    describe '#list_volume_recovery_points' do

    end

    describe '#list_volumes' do

    end

    describe '#notify_when_uploaded' do

    end

    describe '#refresh_cache' do

    end

    describe '#remove_tags_from_resource' do

    end

    describe '#reset_cache' do

    end

    describe '#retrieve_tape_archive' do

    end

    describe '#retrieve_tape_recovery_point' do

    end

    describe '#set_local_console_password' do

    end

    describe '#set_smb_guest_password' do

    end

    describe '#shutdown_gateway' do

    end

    describe '#start_availability_monitor_test' do

    end

    describe '#start_gateway' do

    end

    describe '#update_automatic_tape_creation_policy' do

    end

    describe '#update_bandwidth_rate_limit' do

    end

    describe '#update_bandwidth_rate_limit_schedule' do

    end

    describe '#update_chap_credentials' do

    end

    describe '#update_file_system_association' do

    end

    describe '#update_gateway_information' do

    end

    describe '#update_gateway_software_now' do

    end

    describe '#update_maintenance_start_time' do

    end

    describe '#update_nfs_file_share' do

    end

    describe '#update_smb_file_share' do

    end

    describe '#update_smb_file_share_visibility' do

    end

    describe '#update_smb_local_groups' do

    end

    describe '#update_smb_security_strategy' do

    end

    describe '#update_snapshot_schedule' do

    end

    describe '#update_vtl_device_type' do

    end

  end
end
