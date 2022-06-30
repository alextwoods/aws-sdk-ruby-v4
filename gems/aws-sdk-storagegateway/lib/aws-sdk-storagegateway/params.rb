# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::StorageGateway
  module Params

    module ActivateGatewayInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActivateGatewayInput, context: context)
        type = Types::ActivateGatewayInput.new
        type.activation_key = params[:activation_key]
        type.gateway_name = params[:gateway_name]
        type.gateway_timezone = params[:gateway_timezone]
        type.gateway_region = params[:gateway_region]
        type.gateway_type = params[:gateway_type]
        type.tape_drive_type = params[:tape_drive_type]
        type.medium_changer_type = params[:medium_changer_type]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ActivateGatewayOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActivateGatewayOutput, context: context)
        type = Types::ActivateGatewayOutput.new
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module AddCacheInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddCacheInput, context: context)
        type = Types::AddCacheInput.new
        type.gateway_arn = params[:gateway_arn]
        type.disk_ids = DiskIds.build(params[:disk_ids], context: "#{context}[:disk_ids]") unless params[:disk_ids].nil?
        type
      end
    end

    module AddCacheOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddCacheOutput, context: context)
        type = Types::AddCacheOutput.new
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module AddTagsToResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddTagsToResourceInput, context: context)
        type = Types::AddTagsToResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module AddTagsToResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddTagsToResourceOutput, context: context)
        type = Types::AddTagsToResourceOutput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module AddUploadBufferInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddUploadBufferInput, context: context)
        type = Types::AddUploadBufferInput.new
        type.gateway_arn = params[:gateway_arn]
        type.disk_ids = DiskIds.build(params[:disk_ids], context: "#{context}[:disk_ids]") unless params[:disk_ids].nil?
        type
      end
    end

    module AddUploadBufferOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddUploadBufferOutput, context: context)
        type = Types::AddUploadBufferOutput.new
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module AddWorkingStorageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddWorkingStorageInput, context: context)
        type = Types::AddWorkingStorageInput.new
        type.gateway_arn = params[:gateway_arn]
        type.disk_ids = DiskIds.build(params[:disk_ids], context: "#{context}[:disk_ids]") unless params[:disk_ids].nil?
        type
      end
    end

    module AddWorkingStorageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddWorkingStorageOutput, context: context)
        type = Types::AddWorkingStorageOutput.new
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module AssignTapePoolInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssignTapePoolInput, context: context)
        type = Types::AssignTapePoolInput.new
        type.tape_arn = params[:tape_arn]
        type.pool_id = params[:pool_id]
        type.bypass_governance_retention = params[:bypass_governance_retention]
        type
      end
    end

    module AssignTapePoolOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssignTapePoolOutput, context: context)
        type = Types::AssignTapePoolOutput.new
        type.tape_arn = params[:tape_arn]
        type
      end
    end

    module AssociateFileSystemInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateFileSystemInput, context: context)
        type = Types::AssociateFileSystemInput.new
        type.user_name = params[:user_name]
        type.password = params[:password]
        type.client_token = params[:client_token]
        type.gateway_arn = params[:gateway_arn]
        type.location_arn = params[:location_arn]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.audit_destination_arn = params[:audit_destination_arn]
        type.cache_attributes = CacheAttributes.build(params[:cache_attributes], context: "#{context}[:cache_attributes]") unless params[:cache_attributes].nil?
        type.endpoint_network_configuration = EndpointNetworkConfiguration.build(params[:endpoint_network_configuration], context: "#{context}[:endpoint_network_configuration]") unless params[:endpoint_network_configuration].nil?
        type
      end
    end

    module AssociateFileSystemOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateFileSystemOutput, context: context)
        type = Types::AssociateFileSystemOutput.new
        type.file_system_association_arn = params[:file_system_association_arn]
        type
      end
    end

    module AttachVolumeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachVolumeInput, context: context)
        type = Types::AttachVolumeInput.new
        type.gateway_arn = params[:gateway_arn]
        type.target_name = params[:target_name]
        type.volume_arn = params[:volume_arn]
        type.network_interface_id = params[:network_interface_id]
        type.disk_id = params[:disk_id]
        type
      end
    end

    module AttachVolumeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachVolumeOutput, context: context)
        type = Types::AttachVolumeOutput.new
        type.volume_arn = params[:volume_arn]
        type.target_arn = params[:target_arn]
        type
      end
    end

    module AutomaticTapeCreationPolicyInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutomaticTapeCreationPolicyInfo, context: context)
        type = Types::AutomaticTapeCreationPolicyInfo.new
        type.automatic_tape_creation_rules = AutomaticTapeCreationRules.build(params[:automatic_tape_creation_rules], context: "#{context}[:automatic_tape_creation_rules]") unless params[:automatic_tape_creation_rules].nil?
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module AutomaticTapeCreationPolicyInfos
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AutomaticTapeCreationPolicyInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AutomaticTapeCreationRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutomaticTapeCreationRule, context: context)
        type = Types::AutomaticTapeCreationRule.new
        type.tape_barcode_prefix = params[:tape_barcode_prefix]
        type.pool_id = params[:pool_id]
        type.tape_size_in_bytes = params[:tape_size_in_bytes]
        type.minimum_num_tapes = params[:minimum_num_tapes]
        type.worm = params[:worm]
        type
      end
    end

    module AutomaticTapeCreationRules
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AutomaticTapeCreationRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BandwidthRateLimitInterval
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BandwidthRateLimitInterval, context: context)
        type = Types::BandwidthRateLimitInterval.new
        type.start_hour_of_day = params[:start_hour_of_day]
        type.start_minute_of_hour = params[:start_minute_of_hour]
        type.end_hour_of_day = params[:end_hour_of_day]
        type.end_minute_of_hour = params[:end_minute_of_hour]
        type.days_of_week = DaysOfWeek.build(params[:days_of_week], context: "#{context}[:days_of_week]") unless params[:days_of_week].nil?
        type.average_upload_rate_limit_in_bits_per_sec = params[:average_upload_rate_limit_in_bits_per_sec]
        type.average_download_rate_limit_in_bits_per_sec = params[:average_download_rate_limit_in_bits_per_sec]
        type
      end
    end

    module BandwidthRateLimitIntervals
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BandwidthRateLimitInterval.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CacheAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CacheAttributes, context: context)
        type = Types::CacheAttributes.new
        type.cache_stale_timeout_in_seconds = params[:cache_stale_timeout_in_seconds]
        type
      end
    end

    module CachediSCSIVolume
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CachediSCSIVolume, context: context)
        type = Types::CachediSCSIVolume.new
        type.volume_arn = params[:volume_arn]
        type.volume_id = params[:volume_id]
        type.volume_type = params[:volume_type]
        type.volume_status = params[:volume_status]
        type.volume_attachment_status = params[:volume_attachment_status]
        type.volume_size_in_bytes = params[:volume_size_in_bytes]
        type.volume_progress = params[:volume_progress]
        type.source_snapshot_id = params[:source_snapshot_id]
        type.volumei_scsi_attributes = VolumeiSCSIAttributes.build(params[:volumei_scsi_attributes], context: "#{context}[:volumei_scsi_attributes]") unless params[:volumei_scsi_attributes].nil?
        type.created_date = params[:created_date]
        type.volume_used_in_bytes = params[:volume_used_in_bytes]
        type.kms_key = params[:kms_key]
        type.target_name = params[:target_name]
        type
      end
    end

    module CachediSCSIVolumes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CachediSCSIVolume.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CancelArchivalInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelArchivalInput, context: context)
        type = Types::CancelArchivalInput.new
        type.gateway_arn = params[:gateway_arn]
        type.tape_arn = params[:tape_arn]
        type
      end
    end

    module CancelArchivalOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelArchivalOutput, context: context)
        type = Types::CancelArchivalOutput.new
        type.tape_arn = params[:tape_arn]
        type
      end
    end

    module CancelRetrievalInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelRetrievalInput, context: context)
        type = Types::CancelRetrievalInput.new
        type.gateway_arn = params[:gateway_arn]
        type.tape_arn = params[:tape_arn]
        type
      end
    end

    module CancelRetrievalOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelRetrievalOutput, context: context)
        type = Types::CancelRetrievalOutput.new
        type.tape_arn = params[:tape_arn]
        type
      end
    end

    module ChapCredentials
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ChapInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ChapInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChapInfo, context: context)
        type = Types::ChapInfo.new
        type.target_arn = params[:target_arn]
        type.secret_to_authenticate_initiator = params[:secret_to_authenticate_initiator]
        type.initiator_name = params[:initiator_name]
        type.secret_to_authenticate_target = params[:secret_to_authenticate_target]
        type
      end
    end

    module CreateCachediSCSIVolumeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCachediSCSIVolumeInput, context: context)
        type = Types::CreateCachediSCSIVolumeInput.new
        type.gateway_arn = params[:gateway_arn]
        type.volume_size_in_bytes = params[:volume_size_in_bytes]
        type.snapshot_id = params[:snapshot_id]
        type.target_name = params[:target_name]
        type.source_volume_arn = params[:source_volume_arn]
        type.network_interface_id = params[:network_interface_id]
        type.client_token = params[:client_token]
        type.kms_encrypted = params[:kms_encrypted]
        type.kms_key = params[:kms_key]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateCachediSCSIVolumeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCachediSCSIVolumeOutput, context: context)
        type = Types::CreateCachediSCSIVolumeOutput.new
        type.volume_arn = params[:volume_arn]
        type.target_arn = params[:target_arn]
        type
      end
    end

    module CreateNFSFileShareInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateNFSFileShareInput, context: context)
        type = Types::CreateNFSFileShareInput.new
        type.client_token = params[:client_token]
        type.nfs_file_share_defaults = NFSFileShareDefaults.build(params[:nfs_file_share_defaults], context: "#{context}[:nfs_file_share_defaults]") unless params[:nfs_file_share_defaults].nil?
        type.gateway_arn = params[:gateway_arn]
        type.kms_encrypted = params[:kms_encrypted]
        type.kms_key = params[:kms_key]
        type.role = params[:role]
        type.location_arn = params[:location_arn]
        type.default_storage_class = params[:default_storage_class]
        type.object_acl = params[:object_acl]
        type.client_list = FileShareClientList.build(params[:client_list], context: "#{context}[:client_list]") unless params[:client_list].nil?
        type.squash = params[:squash]
        type.read_only = params[:read_only]
        type.guess_mime_type_enabled = params[:guess_mime_type_enabled]
        type.requester_pays = params[:requester_pays]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.file_share_name = params[:file_share_name]
        type.cache_attributes = CacheAttributes.build(params[:cache_attributes], context: "#{context}[:cache_attributes]") unless params[:cache_attributes].nil?
        type.notification_policy = params[:notification_policy]
        type.vpc_endpoint_dns_name = params[:vpc_endpoint_dns_name]
        type.bucket_region = params[:bucket_region]
        type.audit_destination_arn = params[:audit_destination_arn]
        type
      end
    end

    module CreateNFSFileShareOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateNFSFileShareOutput, context: context)
        type = Types::CreateNFSFileShareOutput.new
        type.file_share_arn = params[:file_share_arn]
        type
      end
    end

    module CreateSMBFileShareInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSMBFileShareInput, context: context)
        type = Types::CreateSMBFileShareInput.new
        type.client_token = params[:client_token]
        type.gateway_arn = params[:gateway_arn]
        type.kms_encrypted = params[:kms_encrypted]
        type.kms_key = params[:kms_key]
        type.role = params[:role]
        type.location_arn = params[:location_arn]
        type.default_storage_class = params[:default_storage_class]
        type.object_acl = params[:object_acl]
        type.read_only = params[:read_only]
        type.guess_mime_type_enabled = params[:guess_mime_type_enabled]
        type.requester_pays = params[:requester_pays]
        type.smbacl_enabled = params[:smbacl_enabled]
        type.access_based_enumeration = params[:access_based_enumeration]
        type.admin_user_list = UserList.build(params[:admin_user_list], context: "#{context}[:admin_user_list]") unless params[:admin_user_list].nil?
        type.valid_user_list = UserList.build(params[:valid_user_list], context: "#{context}[:valid_user_list]") unless params[:valid_user_list].nil?
        type.invalid_user_list = UserList.build(params[:invalid_user_list], context: "#{context}[:invalid_user_list]") unless params[:invalid_user_list].nil?
        type.audit_destination_arn = params[:audit_destination_arn]
        type.authentication = params[:authentication]
        type.case_sensitivity = params[:case_sensitivity]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.file_share_name = params[:file_share_name]
        type.cache_attributes = CacheAttributes.build(params[:cache_attributes], context: "#{context}[:cache_attributes]") unless params[:cache_attributes].nil?
        type.notification_policy = params[:notification_policy]
        type.vpc_endpoint_dns_name = params[:vpc_endpoint_dns_name]
        type.bucket_region = params[:bucket_region]
        type.oplocks_enabled = params[:oplocks_enabled]
        type
      end
    end

    module CreateSMBFileShareOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSMBFileShareOutput, context: context)
        type = Types::CreateSMBFileShareOutput.new
        type.file_share_arn = params[:file_share_arn]
        type
      end
    end

    module CreateSnapshotFromVolumeRecoveryPointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSnapshotFromVolumeRecoveryPointInput, context: context)
        type = Types::CreateSnapshotFromVolumeRecoveryPointInput.new
        type.volume_arn = params[:volume_arn]
        type.snapshot_description = params[:snapshot_description]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateSnapshotFromVolumeRecoveryPointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSnapshotFromVolumeRecoveryPointOutput, context: context)
        type = Types::CreateSnapshotFromVolumeRecoveryPointOutput.new
        type.snapshot_id = params[:snapshot_id]
        type.volume_arn = params[:volume_arn]
        type.volume_recovery_point_time = params[:volume_recovery_point_time]
        type
      end
    end

    module CreateSnapshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSnapshotInput, context: context)
        type = Types::CreateSnapshotInput.new
        type.volume_arn = params[:volume_arn]
        type.snapshot_description = params[:snapshot_description]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateSnapshotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSnapshotOutput, context: context)
        type = Types::CreateSnapshotOutput.new
        type.volume_arn = params[:volume_arn]
        type.snapshot_id = params[:snapshot_id]
        type
      end
    end

    module CreateStorediSCSIVolumeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateStorediSCSIVolumeInput, context: context)
        type = Types::CreateStorediSCSIVolumeInput.new
        type.gateway_arn = params[:gateway_arn]
        type.disk_id = params[:disk_id]
        type.snapshot_id = params[:snapshot_id]
        type.preserve_existing_data = params[:preserve_existing_data]
        type.target_name = params[:target_name]
        type.network_interface_id = params[:network_interface_id]
        type.kms_encrypted = params[:kms_encrypted]
        type.kms_key = params[:kms_key]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateStorediSCSIVolumeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateStorediSCSIVolumeOutput, context: context)
        type = Types::CreateStorediSCSIVolumeOutput.new
        type.volume_arn = params[:volume_arn]
        type.volume_size_in_bytes = params[:volume_size_in_bytes]
        type.target_arn = params[:target_arn]
        type
      end
    end

    module CreateTapePoolInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTapePoolInput, context: context)
        type = Types::CreateTapePoolInput.new
        type.pool_name = params[:pool_name]
        type.storage_class = params[:storage_class]
        type.retention_lock_type = params[:retention_lock_type]
        type.retention_lock_time_in_days = params[:retention_lock_time_in_days]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateTapePoolOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTapePoolOutput, context: context)
        type = Types::CreateTapePoolOutput.new
        type.pool_arn = params[:pool_arn]
        type
      end
    end

    module CreateTapeWithBarcodeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTapeWithBarcodeInput, context: context)
        type = Types::CreateTapeWithBarcodeInput.new
        type.gateway_arn = params[:gateway_arn]
        type.tape_size_in_bytes = params[:tape_size_in_bytes]
        type.tape_barcode = params[:tape_barcode]
        type.kms_encrypted = params[:kms_encrypted]
        type.kms_key = params[:kms_key]
        type.pool_id = params[:pool_id]
        type.worm = params[:worm]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateTapeWithBarcodeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTapeWithBarcodeOutput, context: context)
        type = Types::CreateTapeWithBarcodeOutput.new
        type.tape_arn = params[:tape_arn]
        type
      end
    end

    module CreateTapesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTapesInput, context: context)
        type = Types::CreateTapesInput.new
        type.gateway_arn = params[:gateway_arn]
        type.tape_size_in_bytes = params[:tape_size_in_bytes]
        type.client_token = params[:client_token]
        type.num_tapes_to_create = params[:num_tapes_to_create]
        type.tape_barcode_prefix = params[:tape_barcode_prefix]
        type.kms_encrypted = params[:kms_encrypted]
        type.kms_key = params[:kms_key]
        type.pool_id = params[:pool_id]
        type.worm = params[:worm]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateTapesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTapesOutput, context: context)
        type = Types::CreateTapesOutput.new
        type.tape_ar_ns = TapeARNs.build(params[:tape_ar_ns], context: "#{context}[:tape_ar_ns]") unless params[:tape_ar_ns].nil?
        type
      end
    end

    module DaysOfWeek
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DeleteAutomaticTapeCreationPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAutomaticTapeCreationPolicyInput, context: context)
        type = Types::DeleteAutomaticTapeCreationPolicyInput.new
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module DeleteAutomaticTapeCreationPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAutomaticTapeCreationPolicyOutput, context: context)
        type = Types::DeleteAutomaticTapeCreationPolicyOutput.new
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module DeleteBandwidthRateLimitInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBandwidthRateLimitInput, context: context)
        type = Types::DeleteBandwidthRateLimitInput.new
        type.gateway_arn = params[:gateway_arn]
        type.bandwidth_type = params[:bandwidth_type]
        type
      end
    end

    module DeleteBandwidthRateLimitOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBandwidthRateLimitOutput, context: context)
        type = Types::DeleteBandwidthRateLimitOutput.new
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module DeleteChapCredentialsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteChapCredentialsInput, context: context)
        type = Types::DeleteChapCredentialsInput.new
        type.target_arn = params[:target_arn]
        type.initiator_name = params[:initiator_name]
        type
      end
    end

    module DeleteChapCredentialsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteChapCredentialsOutput, context: context)
        type = Types::DeleteChapCredentialsOutput.new
        type.target_arn = params[:target_arn]
        type.initiator_name = params[:initiator_name]
        type
      end
    end

    module DeleteFileShareInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFileShareInput, context: context)
        type = Types::DeleteFileShareInput.new
        type.file_share_arn = params[:file_share_arn]
        type.force_delete = params[:force_delete]
        type
      end
    end

    module DeleteFileShareOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFileShareOutput, context: context)
        type = Types::DeleteFileShareOutput.new
        type.file_share_arn = params[:file_share_arn]
        type
      end
    end

    module DeleteGatewayInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteGatewayInput, context: context)
        type = Types::DeleteGatewayInput.new
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module DeleteGatewayOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteGatewayOutput, context: context)
        type = Types::DeleteGatewayOutput.new
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module DeleteSnapshotScheduleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSnapshotScheduleInput, context: context)
        type = Types::DeleteSnapshotScheduleInput.new
        type.volume_arn = params[:volume_arn]
        type
      end
    end

    module DeleteSnapshotScheduleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSnapshotScheduleOutput, context: context)
        type = Types::DeleteSnapshotScheduleOutput.new
        type.volume_arn = params[:volume_arn]
        type
      end
    end

    module DeleteTapeArchiveInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTapeArchiveInput, context: context)
        type = Types::DeleteTapeArchiveInput.new
        type.tape_arn = params[:tape_arn]
        type.bypass_governance_retention = params[:bypass_governance_retention]
        type
      end
    end

    module DeleteTapeArchiveOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTapeArchiveOutput, context: context)
        type = Types::DeleteTapeArchiveOutput.new
        type.tape_arn = params[:tape_arn]
        type
      end
    end

    module DeleteTapeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTapeInput, context: context)
        type = Types::DeleteTapeInput.new
        type.gateway_arn = params[:gateway_arn]
        type.tape_arn = params[:tape_arn]
        type.bypass_governance_retention = params[:bypass_governance_retention]
        type
      end
    end

    module DeleteTapeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTapeOutput, context: context)
        type = Types::DeleteTapeOutput.new
        type.tape_arn = params[:tape_arn]
        type
      end
    end

    module DeleteTapePoolInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTapePoolInput, context: context)
        type = Types::DeleteTapePoolInput.new
        type.pool_arn = params[:pool_arn]
        type
      end
    end

    module DeleteTapePoolOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTapePoolOutput, context: context)
        type = Types::DeleteTapePoolOutput.new
        type.pool_arn = params[:pool_arn]
        type
      end
    end

    module DeleteVolumeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVolumeInput, context: context)
        type = Types::DeleteVolumeInput.new
        type.volume_arn = params[:volume_arn]
        type
      end
    end

    module DeleteVolumeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVolumeOutput, context: context)
        type = Types::DeleteVolumeOutput.new
        type.volume_arn = params[:volume_arn]
        type
      end
    end

    module DescribeAvailabilityMonitorTestInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAvailabilityMonitorTestInput, context: context)
        type = Types::DescribeAvailabilityMonitorTestInput.new
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module DescribeAvailabilityMonitorTestOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAvailabilityMonitorTestOutput, context: context)
        type = Types::DescribeAvailabilityMonitorTestOutput.new
        type.gateway_arn = params[:gateway_arn]
        type.status = params[:status]
        type.start_time = params[:start_time]
        type
      end
    end

    module DescribeBandwidthRateLimitInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBandwidthRateLimitInput, context: context)
        type = Types::DescribeBandwidthRateLimitInput.new
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module DescribeBandwidthRateLimitOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBandwidthRateLimitOutput, context: context)
        type = Types::DescribeBandwidthRateLimitOutput.new
        type.gateway_arn = params[:gateway_arn]
        type.average_upload_rate_limit_in_bits_per_sec = params[:average_upload_rate_limit_in_bits_per_sec]
        type.average_download_rate_limit_in_bits_per_sec = params[:average_download_rate_limit_in_bits_per_sec]
        type
      end
    end

    module DescribeBandwidthRateLimitScheduleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBandwidthRateLimitScheduleInput, context: context)
        type = Types::DescribeBandwidthRateLimitScheduleInput.new
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module DescribeBandwidthRateLimitScheduleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBandwidthRateLimitScheduleOutput, context: context)
        type = Types::DescribeBandwidthRateLimitScheduleOutput.new
        type.gateway_arn = params[:gateway_arn]
        type.bandwidth_rate_limit_intervals = BandwidthRateLimitIntervals.build(params[:bandwidth_rate_limit_intervals], context: "#{context}[:bandwidth_rate_limit_intervals]") unless params[:bandwidth_rate_limit_intervals].nil?
        type
      end
    end

    module DescribeCacheInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCacheInput, context: context)
        type = Types::DescribeCacheInput.new
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module DescribeCacheOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCacheOutput, context: context)
        type = Types::DescribeCacheOutput.new
        type.gateway_arn = params[:gateway_arn]
        type.disk_ids = DiskIds.build(params[:disk_ids], context: "#{context}[:disk_ids]") unless params[:disk_ids].nil?
        type.cache_allocated_in_bytes = params[:cache_allocated_in_bytes]
        type.cache_used_percentage = params[:cache_used_percentage]
        type.cache_dirty_percentage = params[:cache_dirty_percentage]
        type.cache_hit_percentage = params[:cache_hit_percentage]
        type.cache_miss_percentage = params[:cache_miss_percentage]
        type
      end
    end

    module DescribeCachediSCSIVolumesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCachediSCSIVolumesInput, context: context)
        type = Types::DescribeCachediSCSIVolumesInput.new
        type.volume_ar_ns = VolumeARNs.build(params[:volume_ar_ns], context: "#{context}[:volume_ar_ns]") unless params[:volume_ar_ns].nil?
        type
      end
    end

    module DescribeCachediSCSIVolumesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCachediSCSIVolumesOutput, context: context)
        type = Types::DescribeCachediSCSIVolumesOutput.new
        type.cachedi_scsi_volumes = CachediSCSIVolumes.build(params[:cachedi_scsi_volumes], context: "#{context}[:cachedi_scsi_volumes]") unless params[:cachedi_scsi_volumes].nil?
        type
      end
    end

    module DescribeChapCredentialsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeChapCredentialsInput, context: context)
        type = Types::DescribeChapCredentialsInput.new
        type.target_arn = params[:target_arn]
        type
      end
    end

    module DescribeChapCredentialsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeChapCredentialsOutput, context: context)
        type = Types::DescribeChapCredentialsOutput.new
        type.chap_credentials = ChapCredentials.build(params[:chap_credentials], context: "#{context}[:chap_credentials]") unless params[:chap_credentials].nil?
        type
      end
    end

    module DescribeFileSystemAssociationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFileSystemAssociationsInput, context: context)
        type = Types::DescribeFileSystemAssociationsInput.new
        type.file_system_association_arn_list = FileSystemAssociationARNList.build(params[:file_system_association_arn_list], context: "#{context}[:file_system_association_arn_list]") unless params[:file_system_association_arn_list].nil?
        type
      end
    end

    module DescribeFileSystemAssociationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFileSystemAssociationsOutput, context: context)
        type = Types::DescribeFileSystemAssociationsOutput.new
        type.file_system_association_info_list = FileSystemAssociationInfoList.build(params[:file_system_association_info_list], context: "#{context}[:file_system_association_info_list]") unless params[:file_system_association_info_list].nil?
        type
      end
    end

    module DescribeGatewayInformationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeGatewayInformationInput, context: context)
        type = Types::DescribeGatewayInformationInput.new
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module DescribeGatewayInformationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeGatewayInformationOutput, context: context)
        type = Types::DescribeGatewayInformationOutput.new
        type.gateway_arn = params[:gateway_arn]
        type.gateway_id = params[:gateway_id]
        type.gateway_name = params[:gateway_name]
        type.gateway_timezone = params[:gateway_timezone]
        type.gateway_state = params[:gateway_state]
        type.gateway_network_interfaces = GatewayNetworkInterfaces.build(params[:gateway_network_interfaces], context: "#{context}[:gateway_network_interfaces]") unless params[:gateway_network_interfaces].nil?
        type.gateway_type = params[:gateway_type]
        type.next_update_availability_date = params[:next_update_availability_date]
        type.last_software_update = params[:last_software_update]
        type.ec2_instance_id = params[:ec2_instance_id]
        type.ec2_instance_region = params[:ec2_instance_region]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.vpc_endpoint = params[:vpc_endpoint]
        type.cloud_watch_log_group_arn = params[:cloud_watch_log_group_arn]
        type.host_environment = params[:host_environment]
        type.endpoint_type = params[:endpoint_type]
        type.software_updates_end_date = params[:software_updates_end_date]
        type.deprecation_date = params[:deprecation_date]
        type.gateway_capacity = params[:gateway_capacity]
        type.supported_gateway_capacities = SupportedGatewayCapacities.build(params[:supported_gateway_capacities], context: "#{context}[:supported_gateway_capacities]") unless params[:supported_gateway_capacities].nil?
        type.host_environment_id = params[:host_environment_id]
        type
      end
    end

    module DescribeMaintenanceStartTimeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMaintenanceStartTimeInput, context: context)
        type = Types::DescribeMaintenanceStartTimeInput.new
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module DescribeMaintenanceStartTimeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMaintenanceStartTimeOutput, context: context)
        type = Types::DescribeMaintenanceStartTimeOutput.new
        type.gateway_arn = params[:gateway_arn]
        type.hour_of_day = params[:hour_of_day]
        type.minute_of_hour = params[:minute_of_hour]
        type.day_of_week = params[:day_of_week]
        type.day_of_month = params[:day_of_month]
        type.timezone = params[:timezone]
        type
      end
    end

    module DescribeNFSFileSharesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeNFSFileSharesInput, context: context)
        type = Types::DescribeNFSFileSharesInput.new
        type.file_share_arn_list = FileShareARNList.build(params[:file_share_arn_list], context: "#{context}[:file_share_arn_list]") unless params[:file_share_arn_list].nil?
        type
      end
    end

    module DescribeNFSFileSharesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeNFSFileSharesOutput, context: context)
        type = Types::DescribeNFSFileSharesOutput.new
        type.nfs_file_share_info_list = NFSFileShareInfoList.build(params[:nfs_file_share_info_list], context: "#{context}[:nfs_file_share_info_list]") unless params[:nfs_file_share_info_list].nil?
        type
      end
    end

    module DescribeSMBFileSharesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSMBFileSharesInput, context: context)
        type = Types::DescribeSMBFileSharesInput.new
        type.file_share_arn_list = FileShareARNList.build(params[:file_share_arn_list], context: "#{context}[:file_share_arn_list]") unless params[:file_share_arn_list].nil?
        type
      end
    end

    module DescribeSMBFileSharesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSMBFileSharesOutput, context: context)
        type = Types::DescribeSMBFileSharesOutput.new
        type.smb_file_share_info_list = SMBFileShareInfoList.build(params[:smb_file_share_info_list], context: "#{context}[:smb_file_share_info_list]") unless params[:smb_file_share_info_list].nil?
        type
      end
    end

    module DescribeSMBSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSMBSettingsInput, context: context)
        type = Types::DescribeSMBSettingsInput.new
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module DescribeSMBSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSMBSettingsOutput, context: context)
        type = Types::DescribeSMBSettingsOutput.new
        type.gateway_arn = params[:gateway_arn]
        type.domain_name = params[:domain_name]
        type.active_directory_status = params[:active_directory_status]
        type.smb_guest_password_set = params[:smb_guest_password_set]
        type.smb_security_strategy = params[:smb_security_strategy]
        type.file_shares_visible = params[:file_shares_visible]
        type.smb_local_groups = SMBLocalGroups.build(params[:smb_local_groups], context: "#{context}[:smb_local_groups]") unless params[:smb_local_groups].nil?
        type
      end
    end

    module DescribeSnapshotScheduleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSnapshotScheduleInput, context: context)
        type = Types::DescribeSnapshotScheduleInput.new
        type.volume_arn = params[:volume_arn]
        type
      end
    end

    module DescribeSnapshotScheduleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSnapshotScheduleOutput, context: context)
        type = Types::DescribeSnapshotScheduleOutput.new
        type.volume_arn = params[:volume_arn]
        type.start_at = params[:start_at]
        type.recurrence_in_hours = params[:recurrence_in_hours]
        type.description = params[:description]
        type.timezone = params[:timezone]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module DescribeStorediSCSIVolumesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStorediSCSIVolumesInput, context: context)
        type = Types::DescribeStorediSCSIVolumesInput.new
        type.volume_ar_ns = VolumeARNs.build(params[:volume_ar_ns], context: "#{context}[:volume_ar_ns]") unless params[:volume_ar_ns].nil?
        type
      end
    end

    module DescribeStorediSCSIVolumesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStorediSCSIVolumesOutput, context: context)
        type = Types::DescribeStorediSCSIVolumesOutput.new
        type.storedi_scsi_volumes = StorediSCSIVolumes.build(params[:storedi_scsi_volumes], context: "#{context}[:storedi_scsi_volumes]") unless params[:storedi_scsi_volumes].nil?
        type
      end
    end

    module DescribeTapeArchivesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTapeArchivesInput, context: context)
        type = Types::DescribeTapeArchivesInput.new
        type.tape_ar_ns = TapeARNs.build(params[:tape_ar_ns], context: "#{context}[:tape_ar_ns]") unless params[:tape_ar_ns].nil?
        type.marker = params[:marker]
        type.limit = params[:limit]
        type
      end
    end

    module DescribeTapeArchivesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTapeArchivesOutput, context: context)
        type = Types::DescribeTapeArchivesOutput.new
        type.tape_archives = TapeArchives.build(params[:tape_archives], context: "#{context}[:tape_archives]") unless params[:tape_archives].nil?
        type.marker = params[:marker]
        type
      end
    end

    module DescribeTapeRecoveryPointsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTapeRecoveryPointsInput, context: context)
        type = Types::DescribeTapeRecoveryPointsInput.new
        type.gateway_arn = params[:gateway_arn]
        type.marker = params[:marker]
        type.limit = params[:limit]
        type
      end
    end

    module DescribeTapeRecoveryPointsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTapeRecoveryPointsOutput, context: context)
        type = Types::DescribeTapeRecoveryPointsOutput.new
        type.gateway_arn = params[:gateway_arn]
        type.tape_recovery_point_infos = TapeRecoveryPointInfos.build(params[:tape_recovery_point_infos], context: "#{context}[:tape_recovery_point_infos]") unless params[:tape_recovery_point_infos].nil?
        type.marker = params[:marker]
        type
      end
    end

    module DescribeTapesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTapesInput, context: context)
        type = Types::DescribeTapesInput.new
        type.gateway_arn = params[:gateway_arn]
        type.tape_ar_ns = TapeARNs.build(params[:tape_ar_ns], context: "#{context}[:tape_ar_ns]") unless params[:tape_ar_ns].nil?
        type.marker = params[:marker]
        type.limit = params[:limit]
        type
      end
    end

    module DescribeTapesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTapesOutput, context: context)
        type = Types::DescribeTapesOutput.new
        type.tapes = Tapes.build(params[:tapes], context: "#{context}[:tapes]") unless params[:tapes].nil?
        type.marker = params[:marker]
        type
      end
    end

    module DescribeUploadBufferInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeUploadBufferInput, context: context)
        type = Types::DescribeUploadBufferInput.new
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module DescribeUploadBufferOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeUploadBufferOutput, context: context)
        type = Types::DescribeUploadBufferOutput.new
        type.gateway_arn = params[:gateway_arn]
        type.disk_ids = DiskIds.build(params[:disk_ids], context: "#{context}[:disk_ids]") unless params[:disk_ids].nil?
        type.upload_buffer_used_in_bytes = params[:upload_buffer_used_in_bytes]
        type.upload_buffer_allocated_in_bytes = params[:upload_buffer_allocated_in_bytes]
        type
      end
    end

    module DescribeVTLDevicesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeVTLDevicesInput, context: context)
        type = Types::DescribeVTLDevicesInput.new
        type.gateway_arn = params[:gateway_arn]
        type.vtl_device_ar_ns = VTLDeviceARNs.build(params[:vtl_device_ar_ns], context: "#{context}[:vtl_device_ar_ns]") unless params[:vtl_device_ar_ns].nil?
        type.marker = params[:marker]
        type.limit = params[:limit]
        type
      end
    end

    module DescribeVTLDevicesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeVTLDevicesOutput, context: context)
        type = Types::DescribeVTLDevicesOutput.new
        type.gateway_arn = params[:gateway_arn]
        type.vtl_devices = VTLDevices.build(params[:vtl_devices], context: "#{context}[:vtl_devices]") unless params[:vtl_devices].nil?
        type.marker = params[:marker]
        type
      end
    end

    module DescribeWorkingStorageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeWorkingStorageInput, context: context)
        type = Types::DescribeWorkingStorageInput.new
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module DescribeWorkingStorageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeWorkingStorageOutput, context: context)
        type = Types::DescribeWorkingStorageOutput.new
        type.gateway_arn = params[:gateway_arn]
        type.disk_ids = DiskIds.build(params[:disk_ids], context: "#{context}[:disk_ids]") unless params[:disk_ids].nil?
        type.working_storage_used_in_bytes = params[:working_storage_used_in_bytes]
        type.working_storage_allocated_in_bytes = params[:working_storage_allocated_in_bytes]
        type
      end
    end

    module DetachVolumeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetachVolumeInput, context: context)
        type = Types::DetachVolumeInput.new
        type.volume_arn = params[:volume_arn]
        type.force_detach = params[:force_detach]
        type
      end
    end

    module DetachVolumeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetachVolumeOutput, context: context)
        type = Types::DetachVolumeOutput.new
        type.volume_arn = params[:volume_arn]
        type
      end
    end

    module DeviceiSCSIAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeviceiSCSIAttributes, context: context)
        type = Types::DeviceiSCSIAttributes.new
        type.target_arn = params[:target_arn]
        type.network_interface_id = params[:network_interface_id]
        type.network_interface_port = params[:network_interface_port]
        type.chap_enabled = params[:chap_enabled]
        type
      end
    end

    module DisableGatewayInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableGatewayInput, context: context)
        type = Types::DisableGatewayInput.new
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module DisableGatewayOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableGatewayOutput, context: context)
        type = Types::DisableGatewayOutput.new
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module DisassociateFileSystemInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateFileSystemInput, context: context)
        type = Types::DisassociateFileSystemInput.new
        type.file_system_association_arn = params[:file_system_association_arn]
        type.force_delete = params[:force_delete]
        type
      end
    end

    module DisassociateFileSystemOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateFileSystemOutput, context: context)
        type = Types::DisassociateFileSystemOutput.new
        type.file_system_association_arn = params[:file_system_association_arn]
        type
      end
    end

    module Disk
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Disk, context: context)
        type = Types::Disk.new
        type.disk_id = params[:disk_id]
        type.disk_path = params[:disk_path]
        type.disk_node = params[:disk_node]
        type.disk_status = params[:disk_status]
        type.disk_size_in_bytes = params[:disk_size_in_bytes]
        type.disk_allocation_type = params[:disk_allocation_type]
        type.disk_allocation_resource = params[:disk_allocation_resource]
        type.disk_attribute_list = DiskAttributeList.build(params[:disk_attribute_list], context: "#{context}[:disk_attribute_list]") unless params[:disk_attribute_list].nil?
        type
      end
    end

    module DiskAttributeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DiskIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Disks
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Disk.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EndpointNetworkConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EndpointNetworkConfiguration, context: context)
        type = Types::EndpointNetworkConfiguration.new
        type.ip_addresses = IpAddressList.build(params[:ip_addresses], context: "#{context}[:ip_addresses]") unless params[:ip_addresses].nil?
        type
      end
    end

    module FileShareARNList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module FileShareClientList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module FileShareInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FileShareInfo, context: context)
        type = Types::FileShareInfo.new
        type.file_share_type = params[:file_share_type]
        type.file_share_arn = params[:file_share_arn]
        type.file_share_id = params[:file_share_id]
        type.file_share_status = params[:file_share_status]
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module FileShareInfoList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FileShareInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FileSystemAssociationARNList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module FileSystemAssociationInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FileSystemAssociationInfo, context: context)
        type = Types::FileSystemAssociationInfo.new
        type.file_system_association_arn = params[:file_system_association_arn]
        type.location_arn = params[:location_arn]
        type.file_system_association_status = params[:file_system_association_status]
        type.audit_destination_arn = params[:audit_destination_arn]
        type.gateway_arn = params[:gateway_arn]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.cache_attributes = CacheAttributes.build(params[:cache_attributes], context: "#{context}[:cache_attributes]") unless params[:cache_attributes].nil?
        type.endpoint_network_configuration = EndpointNetworkConfiguration.build(params[:endpoint_network_configuration], context: "#{context}[:endpoint_network_configuration]") unless params[:endpoint_network_configuration].nil?
        type.file_system_association_status_details = FileSystemAssociationStatusDetails.build(params[:file_system_association_status_details], context: "#{context}[:file_system_association_status_details]") unless params[:file_system_association_status_details].nil?
        type
      end
    end

    module FileSystemAssociationInfoList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FileSystemAssociationInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FileSystemAssociationStatusDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FileSystemAssociationStatusDetail, context: context)
        type = Types::FileSystemAssociationStatusDetail.new
        type.error_code = params[:error_code]
        type
      end
    end

    module FileSystemAssociationStatusDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FileSystemAssociationStatusDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FileSystemAssociationSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FileSystemAssociationSummary, context: context)
        type = Types::FileSystemAssociationSummary.new
        type.file_system_association_id = params[:file_system_association_id]
        type.file_system_association_arn = params[:file_system_association_arn]
        type.file_system_association_status = params[:file_system_association_status]
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module FileSystemAssociationSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FileSystemAssociationSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FolderList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module GatewayInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GatewayInfo, context: context)
        type = Types::GatewayInfo.new
        type.gateway_id = params[:gateway_id]
        type.gateway_arn = params[:gateway_arn]
        type.gateway_type = params[:gateway_type]
        type.gateway_operational_state = params[:gateway_operational_state]
        type.gateway_name = params[:gateway_name]
        type.ec2_instance_id = params[:ec2_instance_id]
        type.ec2_instance_region = params[:ec2_instance_region]
        type.host_environment = params[:host_environment]
        type.host_environment_id = params[:host_environment_id]
        type
      end
    end

    module GatewayNetworkInterfaces
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NetworkInterface.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Gateways
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GatewayInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Hosts
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Initiators
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InternalServerError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerError, context: context)
        type = Types::InternalServerError.new
        type.message = params[:message]
        type.error = StorageGatewayError.build(params[:error], context: "#{context}[:error]") unless params[:error].nil?
        type
      end
    end

    module InvalidGatewayRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidGatewayRequestException, context: context)
        type = Types::InvalidGatewayRequestException.new
        type.message = params[:message]
        type.error = StorageGatewayError.build(params[:error], context: "#{context}[:error]") unless params[:error].nil?
        type
      end
    end

    module IpAddressList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module JoinDomainInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JoinDomainInput, context: context)
        type = Types::JoinDomainInput.new
        type.gateway_arn = params[:gateway_arn]
        type.domain_name = params[:domain_name]
        type.organizational_unit = params[:organizational_unit]
        type.domain_controllers = Hosts.build(params[:domain_controllers], context: "#{context}[:domain_controllers]") unless params[:domain_controllers].nil?
        type.timeout_in_seconds = params[:timeout_in_seconds]
        type.user_name = params[:user_name]
        type.password = params[:password]
        type
      end
    end

    module JoinDomainOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JoinDomainOutput, context: context)
        type = Types::JoinDomainOutput.new
        type.gateway_arn = params[:gateway_arn]
        type.active_directory_status = params[:active_directory_status]
        type
      end
    end

    module ListAutomaticTapeCreationPoliciesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAutomaticTapeCreationPoliciesInput, context: context)
        type = Types::ListAutomaticTapeCreationPoliciesInput.new
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module ListAutomaticTapeCreationPoliciesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAutomaticTapeCreationPoliciesOutput, context: context)
        type = Types::ListAutomaticTapeCreationPoliciesOutput.new
        type.automatic_tape_creation_policy_infos = AutomaticTapeCreationPolicyInfos.build(params[:automatic_tape_creation_policy_infos], context: "#{context}[:automatic_tape_creation_policy_infos]") unless params[:automatic_tape_creation_policy_infos].nil?
        type
      end
    end

    module ListFileSharesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFileSharesInput, context: context)
        type = Types::ListFileSharesInput.new
        type.gateway_arn = params[:gateway_arn]
        type.limit = params[:limit]
        type.marker = params[:marker]
        type
      end
    end

    module ListFileSharesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFileSharesOutput, context: context)
        type = Types::ListFileSharesOutput.new
        type.marker = params[:marker]
        type.next_marker = params[:next_marker]
        type.file_share_info_list = FileShareInfoList.build(params[:file_share_info_list], context: "#{context}[:file_share_info_list]") unless params[:file_share_info_list].nil?
        type
      end
    end

    module ListFileSystemAssociationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFileSystemAssociationsInput, context: context)
        type = Types::ListFileSystemAssociationsInput.new
        type.gateway_arn = params[:gateway_arn]
        type.limit = params[:limit]
        type.marker = params[:marker]
        type
      end
    end

    module ListFileSystemAssociationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFileSystemAssociationsOutput, context: context)
        type = Types::ListFileSystemAssociationsOutput.new
        type.marker = params[:marker]
        type.next_marker = params[:next_marker]
        type.file_system_association_summary_list = FileSystemAssociationSummaryList.build(params[:file_system_association_summary_list], context: "#{context}[:file_system_association_summary_list]") unless params[:file_system_association_summary_list].nil?
        type
      end
    end

    module ListGatewaysInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGatewaysInput, context: context)
        type = Types::ListGatewaysInput.new
        type.marker = params[:marker]
        type.limit = params[:limit]
        type
      end
    end

    module ListGatewaysOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGatewaysOutput, context: context)
        type = Types::ListGatewaysOutput.new
        type.gateways = Gateways.build(params[:gateways], context: "#{context}[:gateways]") unless params[:gateways].nil?
        type.marker = params[:marker]
        type
      end
    end

    module ListLocalDisksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLocalDisksInput, context: context)
        type = Types::ListLocalDisksInput.new
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module ListLocalDisksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLocalDisksOutput, context: context)
        type = Types::ListLocalDisksOutput.new
        type.gateway_arn = params[:gateway_arn]
        type.disks = Disks.build(params[:disks], context: "#{context}[:disks]") unless params[:disks].nil?
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.marker = params[:marker]
        type.limit = params[:limit]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.resource_arn = params[:resource_arn]
        type.marker = params[:marker]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ListTapePoolsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTapePoolsInput, context: context)
        type = Types::ListTapePoolsInput.new
        type.pool_ar_ns = PoolARNs.build(params[:pool_ar_ns], context: "#{context}[:pool_ar_ns]") unless params[:pool_ar_ns].nil?
        type.marker = params[:marker]
        type.limit = params[:limit]
        type
      end
    end

    module ListTapePoolsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTapePoolsOutput, context: context)
        type = Types::ListTapePoolsOutput.new
        type.pool_infos = PoolInfos.build(params[:pool_infos], context: "#{context}[:pool_infos]") unless params[:pool_infos].nil?
        type.marker = params[:marker]
        type
      end
    end

    module ListTapesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTapesInput, context: context)
        type = Types::ListTapesInput.new
        type.tape_ar_ns = TapeARNs.build(params[:tape_ar_ns], context: "#{context}[:tape_ar_ns]") unless params[:tape_ar_ns].nil?
        type.marker = params[:marker]
        type.limit = params[:limit]
        type
      end
    end

    module ListTapesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTapesOutput, context: context)
        type = Types::ListTapesOutput.new
        type.tape_infos = TapeInfos.build(params[:tape_infos], context: "#{context}[:tape_infos]") unless params[:tape_infos].nil?
        type.marker = params[:marker]
        type
      end
    end

    module ListVolumeInitiatorsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListVolumeInitiatorsInput, context: context)
        type = Types::ListVolumeInitiatorsInput.new
        type.volume_arn = params[:volume_arn]
        type
      end
    end

    module ListVolumeInitiatorsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListVolumeInitiatorsOutput, context: context)
        type = Types::ListVolumeInitiatorsOutput.new
        type.initiators = Initiators.build(params[:initiators], context: "#{context}[:initiators]") unless params[:initiators].nil?
        type
      end
    end

    module ListVolumeRecoveryPointsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListVolumeRecoveryPointsInput, context: context)
        type = Types::ListVolumeRecoveryPointsInput.new
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module ListVolumeRecoveryPointsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListVolumeRecoveryPointsOutput, context: context)
        type = Types::ListVolumeRecoveryPointsOutput.new
        type.gateway_arn = params[:gateway_arn]
        type.volume_recovery_point_infos = VolumeRecoveryPointInfos.build(params[:volume_recovery_point_infos], context: "#{context}[:volume_recovery_point_infos]") unless params[:volume_recovery_point_infos].nil?
        type
      end
    end

    module ListVolumesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListVolumesInput, context: context)
        type = Types::ListVolumesInput.new
        type.gateway_arn = params[:gateway_arn]
        type.marker = params[:marker]
        type.limit = params[:limit]
        type
      end
    end

    module ListVolumesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListVolumesOutput, context: context)
        type = Types::ListVolumesOutput.new
        type.gateway_arn = params[:gateway_arn]
        type.marker = params[:marker]
        type.volume_infos = VolumeInfos.build(params[:volume_infos], context: "#{context}[:volume_infos]") unless params[:volume_infos].nil?
        type
      end
    end

    module NFSFileShareDefaults
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NFSFileShareDefaults, context: context)
        type = Types::NFSFileShareDefaults.new
        type.file_mode = params[:file_mode]
        type.directory_mode = params[:directory_mode]
        type.group_id = params[:group_id]
        type.owner_id = params[:owner_id]
        type
      end
    end

    module NFSFileShareInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NFSFileShareInfo, context: context)
        type = Types::NFSFileShareInfo.new
        type.nfs_file_share_defaults = NFSFileShareDefaults.build(params[:nfs_file_share_defaults], context: "#{context}[:nfs_file_share_defaults]") unless params[:nfs_file_share_defaults].nil?
        type.file_share_arn = params[:file_share_arn]
        type.file_share_id = params[:file_share_id]
        type.file_share_status = params[:file_share_status]
        type.gateway_arn = params[:gateway_arn]
        type.kms_encrypted = params[:kms_encrypted]
        type.kms_key = params[:kms_key]
        type.path = params[:path]
        type.role = params[:role]
        type.location_arn = params[:location_arn]
        type.default_storage_class = params[:default_storage_class]
        type.object_acl = params[:object_acl]
        type.client_list = FileShareClientList.build(params[:client_list], context: "#{context}[:client_list]") unless params[:client_list].nil?
        type.squash = params[:squash]
        type.read_only = params[:read_only]
        type.guess_mime_type_enabled = params[:guess_mime_type_enabled]
        type.requester_pays = params[:requester_pays]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.file_share_name = params[:file_share_name]
        type.cache_attributes = CacheAttributes.build(params[:cache_attributes], context: "#{context}[:cache_attributes]") unless params[:cache_attributes].nil?
        type.notification_policy = params[:notification_policy]
        type.vpc_endpoint_dns_name = params[:vpc_endpoint_dns_name]
        type.bucket_region = params[:bucket_region]
        type.audit_destination_arn = params[:audit_destination_arn]
        type
      end
    end

    module NFSFileShareInfoList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NFSFileShareInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NetworkInterface
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkInterface, context: context)
        type = Types::NetworkInterface.new
        type.ipv4_address = params[:ipv4_address]
        type.mac_address = params[:mac_address]
        type.ipv6_address = params[:ipv6_address]
        type
      end
    end

    module NotifyWhenUploadedInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotifyWhenUploadedInput, context: context)
        type = Types::NotifyWhenUploadedInput.new
        type.file_share_arn = params[:file_share_arn]
        type
      end
    end

    module NotifyWhenUploadedOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotifyWhenUploadedOutput, context: context)
        type = Types::NotifyWhenUploadedOutput.new
        type.file_share_arn = params[:file_share_arn]
        type.notification_id = params[:notification_id]
        type
      end
    end

    module PoolARNs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PoolInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PoolInfo, context: context)
        type = Types::PoolInfo.new
        type.pool_arn = params[:pool_arn]
        type.pool_name = params[:pool_name]
        type.storage_class = params[:storage_class]
        type.retention_lock_type = params[:retention_lock_type]
        type.retention_lock_time_in_days = params[:retention_lock_time_in_days]
        type.pool_status = params[:pool_status]
        type
      end
    end

    module PoolInfos
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PoolInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RefreshCacheInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RefreshCacheInput, context: context)
        type = Types::RefreshCacheInput.new
        type.file_share_arn = params[:file_share_arn]
        type.folder_list = FolderList.build(params[:folder_list], context: "#{context}[:folder_list]") unless params[:folder_list].nil?
        type.recursive = params[:recursive]
        type
      end
    end

    module RefreshCacheOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RefreshCacheOutput, context: context)
        type = Types::RefreshCacheOutput.new
        type.file_share_arn = params[:file_share_arn]
        type.notification_id = params[:notification_id]
        type
      end
    end

    module RemoveTagsFromResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveTagsFromResourceInput, context: context)
        type = Types::RemoveTagsFromResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeys.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module RemoveTagsFromResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveTagsFromResourceOutput, context: context)
        type = Types::RemoveTagsFromResourceOutput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ResetCacheInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResetCacheInput, context: context)
        type = Types::ResetCacheInput.new
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module ResetCacheOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResetCacheOutput, context: context)
        type = Types::ResetCacheOutput.new
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module RetrieveTapeArchiveInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RetrieveTapeArchiveInput, context: context)
        type = Types::RetrieveTapeArchiveInput.new
        type.tape_arn = params[:tape_arn]
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module RetrieveTapeArchiveOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RetrieveTapeArchiveOutput, context: context)
        type = Types::RetrieveTapeArchiveOutput.new
        type.tape_arn = params[:tape_arn]
        type
      end
    end

    module RetrieveTapeRecoveryPointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RetrieveTapeRecoveryPointInput, context: context)
        type = Types::RetrieveTapeRecoveryPointInput.new
        type.tape_arn = params[:tape_arn]
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module RetrieveTapeRecoveryPointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RetrieveTapeRecoveryPointOutput, context: context)
        type = Types::RetrieveTapeRecoveryPointOutput.new
        type.tape_arn = params[:tape_arn]
        type
      end
    end

    module SMBFileShareInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SMBFileShareInfo, context: context)
        type = Types::SMBFileShareInfo.new
        type.file_share_arn = params[:file_share_arn]
        type.file_share_id = params[:file_share_id]
        type.file_share_status = params[:file_share_status]
        type.gateway_arn = params[:gateway_arn]
        type.kms_encrypted = params[:kms_encrypted]
        type.kms_key = params[:kms_key]
        type.path = params[:path]
        type.role = params[:role]
        type.location_arn = params[:location_arn]
        type.default_storage_class = params[:default_storage_class]
        type.object_acl = params[:object_acl]
        type.read_only = params[:read_only]
        type.guess_mime_type_enabled = params[:guess_mime_type_enabled]
        type.requester_pays = params[:requester_pays]
        type.smbacl_enabled = params[:smbacl_enabled]
        type.access_based_enumeration = params[:access_based_enumeration]
        type.admin_user_list = UserList.build(params[:admin_user_list], context: "#{context}[:admin_user_list]") unless params[:admin_user_list].nil?
        type.valid_user_list = UserList.build(params[:valid_user_list], context: "#{context}[:valid_user_list]") unless params[:valid_user_list].nil?
        type.invalid_user_list = UserList.build(params[:invalid_user_list], context: "#{context}[:invalid_user_list]") unless params[:invalid_user_list].nil?
        type.audit_destination_arn = params[:audit_destination_arn]
        type.authentication = params[:authentication]
        type.case_sensitivity = params[:case_sensitivity]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.file_share_name = params[:file_share_name]
        type.cache_attributes = CacheAttributes.build(params[:cache_attributes], context: "#{context}[:cache_attributes]") unless params[:cache_attributes].nil?
        type.notification_policy = params[:notification_policy]
        type.vpc_endpoint_dns_name = params[:vpc_endpoint_dns_name]
        type.bucket_region = params[:bucket_region]
        type.oplocks_enabled = params[:oplocks_enabled]
        type
      end
    end

    module SMBFileShareInfoList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SMBFileShareInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SMBLocalGroups
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SMBLocalGroups, context: context)
        type = Types::SMBLocalGroups.new
        type.gateway_admins = UserList.build(params[:gateway_admins], context: "#{context}[:gateway_admins]") unless params[:gateway_admins].nil?
        type
      end
    end

    module ServiceUnavailableError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceUnavailableError, context: context)
        type = Types::ServiceUnavailableError.new
        type.message = params[:message]
        type.error = StorageGatewayError.build(params[:error], context: "#{context}[:error]") unless params[:error].nil?
        type
      end
    end

    module SetLocalConsolePasswordInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetLocalConsolePasswordInput, context: context)
        type = Types::SetLocalConsolePasswordInput.new
        type.gateway_arn = params[:gateway_arn]
        type.local_console_password = params[:local_console_password]
        type
      end
    end

    module SetLocalConsolePasswordOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetLocalConsolePasswordOutput, context: context)
        type = Types::SetLocalConsolePasswordOutput.new
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module SetSMBGuestPasswordInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetSMBGuestPasswordInput, context: context)
        type = Types::SetSMBGuestPasswordInput.new
        type.gateway_arn = params[:gateway_arn]
        type.password = params[:password]
        type
      end
    end

    module SetSMBGuestPasswordOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetSMBGuestPasswordOutput, context: context)
        type = Types::SetSMBGuestPasswordOutput.new
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module ShutdownGatewayInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ShutdownGatewayInput, context: context)
        type = Types::ShutdownGatewayInput.new
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module ShutdownGatewayOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ShutdownGatewayOutput, context: context)
        type = Types::ShutdownGatewayOutput.new
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module StartAvailabilityMonitorTestInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartAvailabilityMonitorTestInput, context: context)
        type = Types::StartAvailabilityMonitorTestInput.new
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module StartAvailabilityMonitorTestOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartAvailabilityMonitorTestOutput, context: context)
        type = Types::StartAvailabilityMonitorTestOutput.new
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module StartGatewayInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartGatewayInput, context: context)
        type = Types::StartGatewayInput.new
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module StartGatewayOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartGatewayOutput, context: context)
        type = Types::StartGatewayOutput.new
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module StorageGatewayError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StorageGatewayError, context: context)
        type = Types::StorageGatewayError.new
        type.error_code = params[:error_code]
        type.error_details = ErrorDetails.build(params[:error_details], context: "#{context}[:error_details]") unless params[:error_details].nil?
        type
      end
    end

    module StorediSCSIVolume
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StorediSCSIVolume, context: context)
        type = Types::StorediSCSIVolume.new
        type.volume_arn = params[:volume_arn]
        type.volume_id = params[:volume_id]
        type.volume_type = params[:volume_type]
        type.volume_status = params[:volume_status]
        type.volume_attachment_status = params[:volume_attachment_status]
        type.volume_size_in_bytes = params[:volume_size_in_bytes]
        type.volume_progress = params[:volume_progress]
        type.volume_disk_id = params[:volume_disk_id]
        type.source_snapshot_id = params[:source_snapshot_id]
        type.preserved_existing_data = params[:preserved_existing_data]
        type.volumei_scsi_attributes = VolumeiSCSIAttributes.build(params[:volumei_scsi_attributes], context: "#{context}[:volumei_scsi_attributes]") unless params[:volumei_scsi_attributes].nil?
        type.created_date = params[:created_date]
        type.volume_used_in_bytes = params[:volume_used_in_bytes]
        type.kms_key = params[:kms_key]
        type.target_name = params[:target_name]
        type
      end
    end

    module StorediSCSIVolumes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StorediSCSIVolume.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SupportedGatewayCapacities
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module TagKeys
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Tags
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Tape
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tape, context: context)
        type = Types::Tape.new
        type.tape_arn = params[:tape_arn]
        type.tape_barcode = params[:tape_barcode]
        type.tape_created_date = params[:tape_created_date]
        type.tape_size_in_bytes = params[:tape_size_in_bytes]
        type.tape_status = params[:tape_status]
        type.vtl_device = params[:vtl_device]
        type.progress = params[:progress]
        type.tape_used_in_bytes = params[:tape_used_in_bytes]
        type.kms_key = params[:kms_key]
        type.pool_id = params[:pool_id]
        type.worm = params[:worm]
        type.retention_start_date = params[:retention_start_date]
        type.pool_entry_date = params[:pool_entry_date]
        type
      end
    end

    module TapeARNs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TapeArchive
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TapeArchive, context: context)
        type = Types::TapeArchive.new
        type.tape_arn = params[:tape_arn]
        type.tape_barcode = params[:tape_barcode]
        type.tape_created_date = params[:tape_created_date]
        type.tape_size_in_bytes = params[:tape_size_in_bytes]
        type.completion_time = params[:completion_time]
        type.retrieved_to = params[:retrieved_to]
        type.tape_status = params[:tape_status]
        type.tape_used_in_bytes = params[:tape_used_in_bytes]
        type.kms_key = params[:kms_key]
        type.pool_id = params[:pool_id]
        type.worm = params[:worm]
        type.retention_start_date = params[:retention_start_date]
        type.pool_entry_date = params[:pool_entry_date]
        type
      end
    end

    module TapeArchives
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TapeArchive.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TapeInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TapeInfo, context: context)
        type = Types::TapeInfo.new
        type.tape_arn = params[:tape_arn]
        type.tape_barcode = params[:tape_barcode]
        type.tape_size_in_bytes = params[:tape_size_in_bytes]
        type.tape_status = params[:tape_status]
        type.gateway_arn = params[:gateway_arn]
        type.pool_id = params[:pool_id]
        type.retention_start_date = params[:retention_start_date]
        type.pool_entry_date = params[:pool_entry_date]
        type
      end
    end

    module TapeInfos
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TapeInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TapeRecoveryPointInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TapeRecoveryPointInfo, context: context)
        type = Types::TapeRecoveryPointInfo.new
        type.tape_arn = params[:tape_arn]
        type.tape_recovery_point_time = params[:tape_recovery_point_time]
        type.tape_size_in_bytes = params[:tape_size_in_bytes]
        type.tape_status = params[:tape_status]
        type
      end
    end

    module TapeRecoveryPointInfos
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TapeRecoveryPointInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Tapes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tape.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UpdateAutomaticTapeCreationPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAutomaticTapeCreationPolicyInput, context: context)
        type = Types::UpdateAutomaticTapeCreationPolicyInput.new
        type.automatic_tape_creation_rules = AutomaticTapeCreationRules.build(params[:automatic_tape_creation_rules], context: "#{context}[:automatic_tape_creation_rules]") unless params[:automatic_tape_creation_rules].nil?
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module UpdateAutomaticTapeCreationPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAutomaticTapeCreationPolicyOutput, context: context)
        type = Types::UpdateAutomaticTapeCreationPolicyOutput.new
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module UpdateBandwidthRateLimitInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBandwidthRateLimitInput, context: context)
        type = Types::UpdateBandwidthRateLimitInput.new
        type.gateway_arn = params[:gateway_arn]
        type.average_upload_rate_limit_in_bits_per_sec = params[:average_upload_rate_limit_in_bits_per_sec]
        type.average_download_rate_limit_in_bits_per_sec = params[:average_download_rate_limit_in_bits_per_sec]
        type
      end
    end

    module UpdateBandwidthRateLimitOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBandwidthRateLimitOutput, context: context)
        type = Types::UpdateBandwidthRateLimitOutput.new
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module UpdateBandwidthRateLimitScheduleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBandwidthRateLimitScheduleInput, context: context)
        type = Types::UpdateBandwidthRateLimitScheduleInput.new
        type.gateway_arn = params[:gateway_arn]
        type.bandwidth_rate_limit_intervals = BandwidthRateLimitIntervals.build(params[:bandwidth_rate_limit_intervals], context: "#{context}[:bandwidth_rate_limit_intervals]") unless params[:bandwidth_rate_limit_intervals].nil?
        type
      end
    end

    module UpdateBandwidthRateLimitScheduleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBandwidthRateLimitScheduleOutput, context: context)
        type = Types::UpdateBandwidthRateLimitScheduleOutput.new
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module UpdateChapCredentialsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateChapCredentialsInput, context: context)
        type = Types::UpdateChapCredentialsInput.new
        type.target_arn = params[:target_arn]
        type.secret_to_authenticate_initiator = params[:secret_to_authenticate_initiator]
        type.initiator_name = params[:initiator_name]
        type.secret_to_authenticate_target = params[:secret_to_authenticate_target]
        type
      end
    end

    module UpdateChapCredentialsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateChapCredentialsOutput, context: context)
        type = Types::UpdateChapCredentialsOutput.new
        type.target_arn = params[:target_arn]
        type.initiator_name = params[:initiator_name]
        type
      end
    end

    module UpdateFileSystemAssociationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFileSystemAssociationInput, context: context)
        type = Types::UpdateFileSystemAssociationInput.new
        type.file_system_association_arn = params[:file_system_association_arn]
        type.user_name = params[:user_name]
        type.password = params[:password]
        type.audit_destination_arn = params[:audit_destination_arn]
        type.cache_attributes = CacheAttributes.build(params[:cache_attributes], context: "#{context}[:cache_attributes]") unless params[:cache_attributes].nil?
        type
      end
    end

    module UpdateFileSystemAssociationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFileSystemAssociationOutput, context: context)
        type = Types::UpdateFileSystemAssociationOutput.new
        type.file_system_association_arn = params[:file_system_association_arn]
        type
      end
    end

    module UpdateGatewayInformationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGatewayInformationInput, context: context)
        type = Types::UpdateGatewayInformationInput.new
        type.gateway_arn = params[:gateway_arn]
        type.gateway_name = params[:gateway_name]
        type.gateway_timezone = params[:gateway_timezone]
        type.cloud_watch_log_group_arn = params[:cloud_watch_log_group_arn]
        type.gateway_capacity = params[:gateway_capacity]
        type
      end
    end

    module UpdateGatewayInformationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGatewayInformationOutput, context: context)
        type = Types::UpdateGatewayInformationOutput.new
        type.gateway_arn = params[:gateway_arn]
        type.gateway_name = params[:gateway_name]
        type
      end
    end

    module UpdateGatewaySoftwareNowInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGatewaySoftwareNowInput, context: context)
        type = Types::UpdateGatewaySoftwareNowInput.new
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module UpdateGatewaySoftwareNowOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGatewaySoftwareNowOutput, context: context)
        type = Types::UpdateGatewaySoftwareNowOutput.new
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module UpdateMaintenanceStartTimeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateMaintenanceStartTimeInput, context: context)
        type = Types::UpdateMaintenanceStartTimeInput.new
        type.gateway_arn = params[:gateway_arn]
        type.hour_of_day = params[:hour_of_day]
        type.minute_of_hour = params[:minute_of_hour]
        type.day_of_week = params[:day_of_week]
        type.day_of_month = params[:day_of_month]
        type
      end
    end

    module UpdateMaintenanceStartTimeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateMaintenanceStartTimeOutput, context: context)
        type = Types::UpdateMaintenanceStartTimeOutput.new
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module UpdateNFSFileShareInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateNFSFileShareInput, context: context)
        type = Types::UpdateNFSFileShareInput.new
        type.file_share_arn = params[:file_share_arn]
        type.kms_encrypted = params[:kms_encrypted]
        type.kms_key = params[:kms_key]
        type.nfs_file_share_defaults = NFSFileShareDefaults.build(params[:nfs_file_share_defaults], context: "#{context}[:nfs_file_share_defaults]") unless params[:nfs_file_share_defaults].nil?
        type.default_storage_class = params[:default_storage_class]
        type.object_acl = params[:object_acl]
        type.client_list = FileShareClientList.build(params[:client_list], context: "#{context}[:client_list]") unless params[:client_list].nil?
        type.squash = params[:squash]
        type.read_only = params[:read_only]
        type.guess_mime_type_enabled = params[:guess_mime_type_enabled]
        type.requester_pays = params[:requester_pays]
        type.file_share_name = params[:file_share_name]
        type.cache_attributes = CacheAttributes.build(params[:cache_attributes], context: "#{context}[:cache_attributes]") unless params[:cache_attributes].nil?
        type.notification_policy = params[:notification_policy]
        type.audit_destination_arn = params[:audit_destination_arn]
        type
      end
    end

    module UpdateNFSFileShareOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateNFSFileShareOutput, context: context)
        type = Types::UpdateNFSFileShareOutput.new
        type.file_share_arn = params[:file_share_arn]
        type
      end
    end

    module UpdateSMBFileShareInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSMBFileShareInput, context: context)
        type = Types::UpdateSMBFileShareInput.new
        type.file_share_arn = params[:file_share_arn]
        type.kms_encrypted = params[:kms_encrypted]
        type.kms_key = params[:kms_key]
        type.default_storage_class = params[:default_storage_class]
        type.object_acl = params[:object_acl]
        type.read_only = params[:read_only]
        type.guess_mime_type_enabled = params[:guess_mime_type_enabled]
        type.requester_pays = params[:requester_pays]
        type.smbacl_enabled = params[:smbacl_enabled]
        type.access_based_enumeration = params[:access_based_enumeration]
        type.admin_user_list = UserList.build(params[:admin_user_list], context: "#{context}[:admin_user_list]") unless params[:admin_user_list].nil?
        type.valid_user_list = UserList.build(params[:valid_user_list], context: "#{context}[:valid_user_list]") unless params[:valid_user_list].nil?
        type.invalid_user_list = UserList.build(params[:invalid_user_list], context: "#{context}[:invalid_user_list]") unless params[:invalid_user_list].nil?
        type.audit_destination_arn = params[:audit_destination_arn]
        type.case_sensitivity = params[:case_sensitivity]
        type.file_share_name = params[:file_share_name]
        type.cache_attributes = CacheAttributes.build(params[:cache_attributes], context: "#{context}[:cache_attributes]") unless params[:cache_attributes].nil?
        type.notification_policy = params[:notification_policy]
        type.oplocks_enabled = params[:oplocks_enabled]
        type
      end
    end

    module UpdateSMBFileShareOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSMBFileShareOutput, context: context)
        type = Types::UpdateSMBFileShareOutput.new
        type.file_share_arn = params[:file_share_arn]
        type
      end
    end

    module UpdateSMBFileShareVisibilityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSMBFileShareVisibilityInput, context: context)
        type = Types::UpdateSMBFileShareVisibilityInput.new
        type.gateway_arn = params[:gateway_arn]
        type.file_shares_visible = params[:file_shares_visible]
        type
      end
    end

    module UpdateSMBFileShareVisibilityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSMBFileShareVisibilityOutput, context: context)
        type = Types::UpdateSMBFileShareVisibilityOutput.new
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module UpdateSMBLocalGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSMBLocalGroupsInput, context: context)
        type = Types::UpdateSMBLocalGroupsInput.new
        type.gateway_arn = params[:gateway_arn]
        type.smb_local_groups = SMBLocalGroups.build(params[:smb_local_groups], context: "#{context}[:smb_local_groups]") unless params[:smb_local_groups].nil?
        type
      end
    end

    module UpdateSMBLocalGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSMBLocalGroupsOutput, context: context)
        type = Types::UpdateSMBLocalGroupsOutput.new
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module UpdateSMBSecurityStrategyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSMBSecurityStrategyInput, context: context)
        type = Types::UpdateSMBSecurityStrategyInput.new
        type.gateway_arn = params[:gateway_arn]
        type.smb_security_strategy = params[:smb_security_strategy]
        type
      end
    end

    module UpdateSMBSecurityStrategyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSMBSecurityStrategyOutput, context: context)
        type = Types::UpdateSMBSecurityStrategyOutput.new
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module UpdateSnapshotScheduleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSnapshotScheduleInput, context: context)
        type = Types::UpdateSnapshotScheduleInput.new
        type.volume_arn = params[:volume_arn]
        type.start_at = params[:start_at]
        type.recurrence_in_hours = params[:recurrence_in_hours]
        type.description = params[:description]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module UpdateSnapshotScheduleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSnapshotScheduleOutput, context: context)
        type = Types::UpdateSnapshotScheduleOutput.new
        type.volume_arn = params[:volume_arn]
        type
      end
    end

    module UpdateVTLDeviceTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateVTLDeviceTypeInput, context: context)
        type = Types::UpdateVTLDeviceTypeInput.new
        type.vtl_device_arn = params[:vtl_device_arn]
        type.device_type = params[:device_type]
        type
      end
    end

    module UpdateVTLDeviceTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateVTLDeviceTypeOutput, context: context)
        type = Types::UpdateVTLDeviceTypeOutput.new
        type.vtl_device_arn = params[:vtl_device_arn]
        type
      end
    end

    module UserList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module VTLDevice
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VTLDevice, context: context)
        type = Types::VTLDevice.new
        type.vtl_device_arn = params[:vtl_device_arn]
        type.vtl_device_type = params[:vtl_device_type]
        type.vtl_device_vendor = params[:vtl_device_vendor]
        type.vtl_device_product_identifier = params[:vtl_device_product_identifier]
        type.devicei_scsi_attributes = DeviceiSCSIAttributes.build(params[:devicei_scsi_attributes], context: "#{context}[:devicei_scsi_attributes]") unless params[:devicei_scsi_attributes].nil?
        type
      end
    end

    module VTLDeviceARNs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module VTLDevices
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VTLDevice.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module VolumeARNs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module VolumeInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VolumeInfo, context: context)
        type = Types::VolumeInfo.new
        type.volume_arn = params[:volume_arn]
        type.volume_id = params[:volume_id]
        type.gateway_arn = params[:gateway_arn]
        type.gateway_id = params[:gateway_id]
        type.volume_type = params[:volume_type]
        type.volume_size_in_bytes = params[:volume_size_in_bytes]
        type.volume_attachment_status = params[:volume_attachment_status]
        type
      end
    end

    module VolumeInfos
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VolumeInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module VolumeRecoveryPointInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VolumeRecoveryPointInfo, context: context)
        type = Types::VolumeRecoveryPointInfo.new
        type.volume_arn = params[:volume_arn]
        type.volume_size_in_bytes = params[:volume_size_in_bytes]
        type.volume_usage_in_bytes = params[:volume_usage_in_bytes]
        type.volume_recovery_point_time = params[:volume_recovery_point_time]
        type
      end
    end

    module VolumeRecoveryPointInfos
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VolumeRecoveryPointInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module VolumeiSCSIAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VolumeiSCSIAttributes, context: context)
        type = Types::VolumeiSCSIAttributes.new
        type.target_arn = params[:target_arn]
        type.network_interface_id = params[:network_interface_id]
        type.network_interface_port = params[:network_interface_port]
        type.lun_number = params[:lun_number]
        type.chap_enabled = params[:chap_enabled]
        type
      end
    end

    module ErrorDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

  end
end
