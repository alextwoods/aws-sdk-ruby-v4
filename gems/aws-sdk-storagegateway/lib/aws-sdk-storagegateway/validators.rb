# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::StorageGateway
  module Validators

    class ActivateGatewayInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActivateGatewayInput, context: context)
        Hearth::Validator.validate!(input[:activation_key], ::String, context: "#{context}[:activation_key]")
        Hearth::Validator.validate!(input[:gateway_name], ::String, context: "#{context}[:gateway_name]")
        Hearth::Validator.validate!(input[:gateway_timezone], ::String, context: "#{context}[:gateway_timezone]")
        Hearth::Validator.validate!(input[:gateway_region], ::String, context: "#{context}[:gateway_region]")
        Hearth::Validator.validate!(input[:gateway_type], ::String, context: "#{context}[:gateway_type]")
        Hearth::Validator.validate!(input[:tape_drive_type], ::String, context: "#{context}[:tape_drive_type]")
        Hearth::Validator.validate!(input[:medium_changer_type], ::String, context: "#{context}[:medium_changer_type]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ActivateGatewayOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActivateGatewayOutput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class AddCacheInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddCacheInput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        DiskIds.validate!(input[:disk_ids], context: "#{context}[:disk_ids]") unless input[:disk_ids].nil?
      end
    end

    class AddCacheOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddCacheOutput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class AddTagsToResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddTagsToResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class AddTagsToResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddTagsToResourceOutput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class AddUploadBufferInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddUploadBufferInput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        DiskIds.validate!(input[:disk_ids], context: "#{context}[:disk_ids]") unless input[:disk_ids].nil?
      end
    end

    class AddUploadBufferOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddUploadBufferOutput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class AddWorkingStorageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddWorkingStorageInput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        DiskIds.validate!(input[:disk_ids], context: "#{context}[:disk_ids]") unless input[:disk_ids].nil?
      end
    end

    class AddWorkingStorageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddWorkingStorageOutput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class AssignTapePoolInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssignTapePoolInput, context: context)
        Hearth::Validator.validate!(input[:tape_arn], ::String, context: "#{context}[:tape_arn]")
        Hearth::Validator.validate!(input[:pool_id], ::String, context: "#{context}[:pool_id]")
        Hearth::Validator.validate!(input[:bypass_governance_retention], ::TrueClass, ::FalseClass, context: "#{context}[:bypass_governance_retention]")
      end
    end

    class AssignTapePoolOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssignTapePoolOutput, context: context)
        Hearth::Validator.validate!(input[:tape_arn], ::String, context: "#{context}[:tape_arn]")
      end
    end

    class AssociateFileSystemInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateFileSystemInput, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        Hearth::Validator.validate!(input[:location_arn], ::String, context: "#{context}[:location_arn]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:audit_destination_arn], ::String, context: "#{context}[:audit_destination_arn]")
        CacheAttributes.validate!(input[:cache_attributes], context: "#{context}[:cache_attributes]") unless input[:cache_attributes].nil?
        EndpointNetworkConfiguration.validate!(input[:endpoint_network_configuration], context: "#{context}[:endpoint_network_configuration]") unless input[:endpoint_network_configuration].nil?
      end
    end

    class AssociateFileSystemOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateFileSystemOutput, context: context)
        Hearth::Validator.validate!(input[:file_system_association_arn], ::String, context: "#{context}[:file_system_association_arn]")
      end
    end

    class AttachVolumeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachVolumeInput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        Hearth::Validator.validate!(input[:target_name], ::String, context: "#{context}[:target_name]")
        Hearth::Validator.validate!(input[:volume_arn], ::String, context: "#{context}[:volume_arn]")
        Hearth::Validator.validate!(input[:network_interface_id], ::String, context: "#{context}[:network_interface_id]")
        Hearth::Validator.validate!(input[:disk_id], ::String, context: "#{context}[:disk_id]")
      end
    end

    class AttachVolumeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachVolumeOutput, context: context)
        Hearth::Validator.validate!(input[:volume_arn], ::String, context: "#{context}[:volume_arn]")
        Hearth::Validator.validate!(input[:target_arn], ::String, context: "#{context}[:target_arn]")
      end
    end

    class AutomaticTapeCreationPolicyInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutomaticTapeCreationPolicyInfo, context: context)
        AutomaticTapeCreationRules.validate!(input[:automatic_tape_creation_rules], context: "#{context}[:automatic_tape_creation_rules]") unless input[:automatic_tape_creation_rules].nil?
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class AutomaticTapeCreationPolicyInfos
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AutomaticTapeCreationPolicyInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AutomaticTapeCreationRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutomaticTapeCreationRule, context: context)
        Hearth::Validator.validate!(input[:tape_barcode_prefix], ::String, context: "#{context}[:tape_barcode_prefix]")
        Hearth::Validator.validate!(input[:pool_id], ::String, context: "#{context}[:pool_id]")
        Hearth::Validator.validate!(input[:tape_size_in_bytes], ::Integer, context: "#{context}[:tape_size_in_bytes]")
        Hearth::Validator.validate!(input[:minimum_num_tapes], ::Integer, context: "#{context}[:minimum_num_tapes]")
        Hearth::Validator.validate!(input[:worm], ::TrueClass, ::FalseClass, context: "#{context}[:worm]")
      end
    end

    class AutomaticTapeCreationRules
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AutomaticTapeCreationRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BandwidthRateLimitInterval
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BandwidthRateLimitInterval, context: context)
        Hearth::Validator.validate!(input[:start_hour_of_day], ::Integer, context: "#{context}[:start_hour_of_day]")
        Hearth::Validator.validate!(input[:start_minute_of_hour], ::Integer, context: "#{context}[:start_minute_of_hour]")
        Hearth::Validator.validate!(input[:end_hour_of_day], ::Integer, context: "#{context}[:end_hour_of_day]")
        Hearth::Validator.validate!(input[:end_minute_of_hour], ::Integer, context: "#{context}[:end_minute_of_hour]")
        DaysOfWeek.validate!(input[:days_of_week], context: "#{context}[:days_of_week]") unless input[:days_of_week].nil?
        Hearth::Validator.validate!(input[:average_upload_rate_limit_in_bits_per_sec], ::Integer, context: "#{context}[:average_upload_rate_limit_in_bits_per_sec]")
        Hearth::Validator.validate!(input[:average_download_rate_limit_in_bits_per_sec], ::Integer, context: "#{context}[:average_download_rate_limit_in_bits_per_sec]")
      end
    end

    class BandwidthRateLimitIntervals
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BandwidthRateLimitInterval.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CacheAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CacheAttributes, context: context)
        Hearth::Validator.validate!(input[:cache_stale_timeout_in_seconds], ::Integer, context: "#{context}[:cache_stale_timeout_in_seconds]")
      end
    end

    class CachediSCSIVolume
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CachediSCSIVolume, context: context)
        Hearth::Validator.validate!(input[:volume_arn], ::String, context: "#{context}[:volume_arn]")
        Hearth::Validator.validate!(input[:volume_id], ::String, context: "#{context}[:volume_id]")
        Hearth::Validator.validate!(input[:volume_type], ::String, context: "#{context}[:volume_type]")
        Hearth::Validator.validate!(input[:volume_status], ::String, context: "#{context}[:volume_status]")
        Hearth::Validator.validate!(input[:volume_attachment_status], ::String, context: "#{context}[:volume_attachment_status]")
        Hearth::Validator.validate!(input[:volume_size_in_bytes], ::Integer, context: "#{context}[:volume_size_in_bytes]")
        Hearth::Validator.validate!(input[:volume_progress], ::Float, context: "#{context}[:volume_progress]")
        Hearth::Validator.validate!(input[:source_snapshot_id], ::String, context: "#{context}[:source_snapshot_id]")
        VolumeiSCSIAttributes.validate!(input[:volumei_scsi_attributes], context: "#{context}[:volumei_scsi_attributes]") unless input[:volumei_scsi_attributes].nil?
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:volume_used_in_bytes], ::Integer, context: "#{context}[:volume_used_in_bytes]")
        Hearth::Validator.validate!(input[:kms_key], ::String, context: "#{context}[:kms_key]")
        Hearth::Validator.validate!(input[:target_name], ::String, context: "#{context}[:target_name]")
      end
    end

    class CachediSCSIVolumes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CachediSCSIVolume.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CancelArchivalInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelArchivalInput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        Hearth::Validator.validate!(input[:tape_arn], ::String, context: "#{context}[:tape_arn]")
      end
    end

    class CancelArchivalOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelArchivalOutput, context: context)
        Hearth::Validator.validate!(input[:tape_arn], ::String, context: "#{context}[:tape_arn]")
      end
    end

    class CancelRetrievalInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelRetrievalInput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        Hearth::Validator.validate!(input[:tape_arn], ::String, context: "#{context}[:tape_arn]")
      end
    end

    class CancelRetrievalOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelRetrievalOutput, context: context)
        Hearth::Validator.validate!(input[:tape_arn], ::String, context: "#{context}[:tape_arn]")
      end
    end

    class ChapCredentials
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ChapInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ChapInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChapInfo, context: context)
        Hearth::Validator.validate!(input[:target_arn], ::String, context: "#{context}[:target_arn]")
        Hearth::Validator.validate!(input[:secret_to_authenticate_initiator], ::String, context: "#{context}[:secret_to_authenticate_initiator]")
        Hearth::Validator.validate!(input[:initiator_name], ::String, context: "#{context}[:initiator_name]")
        Hearth::Validator.validate!(input[:secret_to_authenticate_target], ::String, context: "#{context}[:secret_to_authenticate_target]")
      end
    end

    class CreateCachediSCSIVolumeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCachediSCSIVolumeInput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        Hearth::Validator.validate!(input[:volume_size_in_bytes], ::Integer, context: "#{context}[:volume_size_in_bytes]")
        Hearth::Validator.validate!(input[:snapshot_id], ::String, context: "#{context}[:snapshot_id]")
        Hearth::Validator.validate!(input[:target_name], ::String, context: "#{context}[:target_name]")
        Hearth::Validator.validate!(input[:source_volume_arn], ::String, context: "#{context}[:source_volume_arn]")
        Hearth::Validator.validate!(input[:network_interface_id], ::String, context: "#{context}[:network_interface_id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:kms_encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:kms_encrypted]")
        Hearth::Validator.validate!(input[:kms_key], ::String, context: "#{context}[:kms_key]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateCachediSCSIVolumeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCachediSCSIVolumeOutput, context: context)
        Hearth::Validator.validate!(input[:volume_arn], ::String, context: "#{context}[:volume_arn]")
        Hearth::Validator.validate!(input[:target_arn], ::String, context: "#{context}[:target_arn]")
      end
    end

    class CreateNFSFileShareInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateNFSFileShareInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        NFSFileShareDefaults.validate!(input[:nfs_file_share_defaults], context: "#{context}[:nfs_file_share_defaults]") unless input[:nfs_file_share_defaults].nil?
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        Hearth::Validator.validate!(input[:kms_encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:kms_encrypted]")
        Hearth::Validator.validate!(input[:kms_key], ::String, context: "#{context}[:kms_key]")
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
        Hearth::Validator.validate!(input[:location_arn], ::String, context: "#{context}[:location_arn]")
        Hearth::Validator.validate!(input[:default_storage_class], ::String, context: "#{context}[:default_storage_class]")
        Hearth::Validator.validate!(input[:object_acl], ::String, context: "#{context}[:object_acl]")
        FileShareClientList.validate!(input[:client_list], context: "#{context}[:client_list]") unless input[:client_list].nil?
        Hearth::Validator.validate!(input[:squash], ::String, context: "#{context}[:squash]")
        Hearth::Validator.validate!(input[:read_only], ::TrueClass, ::FalseClass, context: "#{context}[:read_only]")
        Hearth::Validator.validate!(input[:guess_mime_type_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:guess_mime_type_enabled]")
        Hearth::Validator.validate!(input[:requester_pays], ::TrueClass, ::FalseClass, context: "#{context}[:requester_pays]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:file_share_name], ::String, context: "#{context}[:file_share_name]")
        CacheAttributes.validate!(input[:cache_attributes], context: "#{context}[:cache_attributes]") unless input[:cache_attributes].nil?
        Hearth::Validator.validate!(input[:notification_policy], ::String, context: "#{context}[:notification_policy]")
        Hearth::Validator.validate!(input[:vpc_endpoint_dns_name], ::String, context: "#{context}[:vpc_endpoint_dns_name]")
        Hearth::Validator.validate!(input[:bucket_region], ::String, context: "#{context}[:bucket_region]")
        Hearth::Validator.validate!(input[:audit_destination_arn], ::String, context: "#{context}[:audit_destination_arn]")
      end
    end

    class CreateNFSFileShareOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateNFSFileShareOutput, context: context)
        Hearth::Validator.validate!(input[:file_share_arn], ::String, context: "#{context}[:file_share_arn]")
      end
    end

    class CreateSMBFileShareInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSMBFileShareInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        Hearth::Validator.validate!(input[:kms_encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:kms_encrypted]")
        Hearth::Validator.validate!(input[:kms_key], ::String, context: "#{context}[:kms_key]")
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
        Hearth::Validator.validate!(input[:location_arn], ::String, context: "#{context}[:location_arn]")
        Hearth::Validator.validate!(input[:default_storage_class], ::String, context: "#{context}[:default_storage_class]")
        Hearth::Validator.validate!(input[:object_acl], ::String, context: "#{context}[:object_acl]")
        Hearth::Validator.validate!(input[:read_only], ::TrueClass, ::FalseClass, context: "#{context}[:read_only]")
        Hearth::Validator.validate!(input[:guess_mime_type_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:guess_mime_type_enabled]")
        Hearth::Validator.validate!(input[:requester_pays], ::TrueClass, ::FalseClass, context: "#{context}[:requester_pays]")
        Hearth::Validator.validate!(input[:smbacl_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:smbacl_enabled]")
        Hearth::Validator.validate!(input[:access_based_enumeration], ::TrueClass, ::FalseClass, context: "#{context}[:access_based_enumeration]")
        UserList.validate!(input[:admin_user_list], context: "#{context}[:admin_user_list]") unless input[:admin_user_list].nil?
        UserList.validate!(input[:valid_user_list], context: "#{context}[:valid_user_list]") unless input[:valid_user_list].nil?
        UserList.validate!(input[:invalid_user_list], context: "#{context}[:invalid_user_list]") unless input[:invalid_user_list].nil?
        Hearth::Validator.validate!(input[:audit_destination_arn], ::String, context: "#{context}[:audit_destination_arn]")
        Hearth::Validator.validate!(input[:authentication], ::String, context: "#{context}[:authentication]")
        Hearth::Validator.validate!(input[:case_sensitivity], ::String, context: "#{context}[:case_sensitivity]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:file_share_name], ::String, context: "#{context}[:file_share_name]")
        CacheAttributes.validate!(input[:cache_attributes], context: "#{context}[:cache_attributes]") unless input[:cache_attributes].nil?
        Hearth::Validator.validate!(input[:notification_policy], ::String, context: "#{context}[:notification_policy]")
        Hearth::Validator.validate!(input[:vpc_endpoint_dns_name], ::String, context: "#{context}[:vpc_endpoint_dns_name]")
        Hearth::Validator.validate!(input[:bucket_region], ::String, context: "#{context}[:bucket_region]")
        Hearth::Validator.validate!(input[:oplocks_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:oplocks_enabled]")
      end
    end

    class CreateSMBFileShareOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSMBFileShareOutput, context: context)
        Hearth::Validator.validate!(input[:file_share_arn], ::String, context: "#{context}[:file_share_arn]")
      end
    end

    class CreateSnapshotFromVolumeRecoveryPointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSnapshotFromVolumeRecoveryPointInput, context: context)
        Hearth::Validator.validate!(input[:volume_arn], ::String, context: "#{context}[:volume_arn]")
        Hearth::Validator.validate!(input[:snapshot_description], ::String, context: "#{context}[:snapshot_description]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateSnapshotFromVolumeRecoveryPointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSnapshotFromVolumeRecoveryPointOutput, context: context)
        Hearth::Validator.validate!(input[:snapshot_id], ::String, context: "#{context}[:snapshot_id]")
        Hearth::Validator.validate!(input[:volume_arn], ::String, context: "#{context}[:volume_arn]")
        Hearth::Validator.validate!(input[:volume_recovery_point_time], ::String, context: "#{context}[:volume_recovery_point_time]")
      end
    end

    class CreateSnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSnapshotInput, context: context)
        Hearth::Validator.validate!(input[:volume_arn], ::String, context: "#{context}[:volume_arn]")
        Hearth::Validator.validate!(input[:snapshot_description], ::String, context: "#{context}[:snapshot_description]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateSnapshotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSnapshotOutput, context: context)
        Hearth::Validator.validate!(input[:volume_arn], ::String, context: "#{context}[:volume_arn]")
        Hearth::Validator.validate!(input[:snapshot_id], ::String, context: "#{context}[:snapshot_id]")
      end
    end

    class CreateStorediSCSIVolumeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStorediSCSIVolumeInput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        Hearth::Validator.validate!(input[:disk_id], ::String, context: "#{context}[:disk_id]")
        Hearth::Validator.validate!(input[:snapshot_id], ::String, context: "#{context}[:snapshot_id]")
        Hearth::Validator.validate!(input[:preserve_existing_data], ::TrueClass, ::FalseClass, context: "#{context}[:preserve_existing_data]")
        Hearth::Validator.validate!(input[:target_name], ::String, context: "#{context}[:target_name]")
        Hearth::Validator.validate!(input[:network_interface_id], ::String, context: "#{context}[:network_interface_id]")
        Hearth::Validator.validate!(input[:kms_encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:kms_encrypted]")
        Hearth::Validator.validate!(input[:kms_key], ::String, context: "#{context}[:kms_key]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateStorediSCSIVolumeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStorediSCSIVolumeOutput, context: context)
        Hearth::Validator.validate!(input[:volume_arn], ::String, context: "#{context}[:volume_arn]")
        Hearth::Validator.validate!(input[:volume_size_in_bytes], ::Integer, context: "#{context}[:volume_size_in_bytes]")
        Hearth::Validator.validate!(input[:target_arn], ::String, context: "#{context}[:target_arn]")
      end
    end

    class CreateTapePoolInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTapePoolInput, context: context)
        Hearth::Validator.validate!(input[:pool_name], ::String, context: "#{context}[:pool_name]")
        Hearth::Validator.validate!(input[:storage_class], ::String, context: "#{context}[:storage_class]")
        Hearth::Validator.validate!(input[:retention_lock_type], ::String, context: "#{context}[:retention_lock_type]")
        Hearth::Validator.validate!(input[:retention_lock_time_in_days], ::Integer, context: "#{context}[:retention_lock_time_in_days]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateTapePoolOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTapePoolOutput, context: context)
        Hearth::Validator.validate!(input[:pool_arn], ::String, context: "#{context}[:pool_arn]")
      end
    end

    class CreateTapeWithBarcodeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTapeWithBarcodeInput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        Hearth::Validator.validate!(input[:tape_size_in_bytes], ::Integer, context: "#{context}[:tape_size_in_bytes]")
        Hearth::Validator.validate!(input[:tape_barcode], ::String, context: "#{context}[:tape_barcode]")
        Hearth::Validator.validate!(input[:kms_encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:kms_encrypted]")
        Hearth::Validator.validate!(input[:kms_key], ::String, context: "#{context}[:kms_key]")
        Hearth::Validator.validate!(input[:pool_id], ::String, context: "#{context}[:pool_id]")
        Hearth::Validator.validate!(input[:worm], ::TrueClass, ::FalseClass, context: "#{context}[:worm]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateTapeWithBarcodeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTapeWithBarcodeOutput, context: context)
        Hearth::Validator.validate!(input[:tape_arn], ::String, context: "#{context}[:tape_arn]")
      end
    end

    class CreateTapesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTapesInput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        Hearth::Validator.validate!(input[:tape_size_in_bytes], ::Integer, context: "#{context}[:tape_size_in_bytes]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:num_tapes_to_create], ::Integer, context: "#{context}[:num_tapes_to_create]")
        Hearth::Validator.validate!(input[:tape_barcode_prefix], ::String, context: "#{context}[:tape_barcode_prefix]")
        Hearth::Validator.validate!(input[:kms_encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:kms_encrypted]")
        Hearth::Validator.validate!(input[:kms_key], ::String, context: "#{context}[:kms_key]")
        Hearth::Validator.validate!(input[:pool_id], ::String, context: "#{context}[:pool_id]")
        Hearth::Validator.validate!(input[:worm], ::TrueClass, ::FalseClass, context: "#{context}[:worm]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateTapesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTapesOutput, context: context)
        TapeARNs.validate!(input[:tape_ar_ns], context: "#{context}[:tape_ar_ns]") unless input[:tape_ar_ns].nil?
      end
    end

    class DaysOfWeek
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Integer, context: "#{context}[#{index}]")
        end
      end
    end

    class DeleteAutomaticTapeCreationPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAutomaticTapeCreationPolicyInput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class DeleteAutomaticTapeCreationPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAutomaticTapeCreationPolicyOutput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class DeleteBandwidthRateLimitInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBandwidthRateLimitInput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        Hearth::Validator.validate!(input[:bandwidth_type], ::String, context: "#{context}[:bandwidth_type]")
      end
    end

    class DeleteBandwidthRateLimitOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBandwidthRateLimitOutput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class DeleteChapCredentialsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteChapCredentialsInput, context: context)
        Hearth::Validator.validate!(input[:target_arn], ::String, context: "#{context}[:target_arn]")
        Hearth::Validator.validate!(input[:initiator_name], ::String, context: "#{context}[:initiator_name]")
      end
    end

    class DeleteChapCredentialsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteChapCredentialsOutput, context: context)
        Hearth::Validator.validate!(input[:target_arn], ::String, context: "#{context}[:target_arn]")
        Hearth::Validator.validate!(input[:initiator_name], ::String, context: "#{context}[:initiator_name]")
      end
    end

    class DeleteFileShareInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFileShareInput, context: context)
        Hearth::Validator.validate!(input[:file_share_arn], ::String, context: "#{context}[:file_share_arn]")
        Hearth::Validator.validate!(input[:force_delete], ::TrueClass, ::FalseClass, context: "#{context}[:force_delete]")
      end
    end

    class DeleteFileShareOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFileShareOutput, context: context)
        Hearth::Validator.validate!(input[:file_share_arn], ::String, context: "#{context}[:file_share_arn]")
      end
    end

    class DeleteGatewayInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteGatewayInput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class DeleteGatewayOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteGatewayOutput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class DeleteSnapshotScheduleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSnapshotScheduleInput, context: context)
        Hearth::Validator.validate!(input[:volume_arn], ::String, context: "#{context}[:volume_arn]")
      end
    end

    class DeleteSnapshotScheduleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSnapshotScheduleOutput, context: context)
        Hearth::Validator.validate!(input[:volume_arn], ::String, context: "#{context}[:volume_arn]")
      end
    end

    class DeleteTapeArchiveInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTapeArchiveInput, context: context)
        Hearth::Validator.validate!(input[:tape_arn], ::String, context: "#{context}[:tape_arn]")
        Hearth::Validator.validate!(input[:bypass_governance_retention], ::TrueClass, ::FalseClass, context: "#{context}[:bypass_governance_retention]")
      end
    end

    class DeleteTapeArchiveOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTapeArchiveOutput, context: context)
        Hearth::Validator.validate!(input[:tape_arn], ::String, context: "#{context}[:tape_arn]")
      end
    end

    class DeleteTapeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTapeInput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        Hearth::Validator.validate!(input[:tape_arn], ::String, context: "#{context}[:tape_arn]")
        Hearth::Validator.validate!(input[:bypass_governance_retention], ::TrueClass, ::FalseClass, context: "#{context}[:bypass_governance_retention]")
      end
    end

    class DeleteTapeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTapeOutput, context: context)
        Hearth::Validator.validate!(input[:tape_arn], ::String, context: "#{context}[:tape_arn]")
      end
    end

    class DeleteTapePoolInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTapePoolInput, context: context)
        Hearth::Validator.validate!(input[:pool_arn], ::String, context: "#{context}[:pool_arn]")
      end
    end

    class DeleteTapePoolOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTapePoolOutput, context: context)
        Hearth::Validator.validate!(input[:pool_arn], ::String, context: "#{context}[:pool_arn]")
      end
    end

    class DeleteVolumeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVolumeInput, context: context)
        Hearth::Validator.validate!(input[:volume_arn], ::String, context: "#{context}[:volume_arn]")
      end
    end

    class DeleteVolumeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVolumeOutput, context: context)
        Hearth::Validator.validate!(input[:volume_arn], ::String, context: "#{context}[:volume_arn]")
      end
    end

    class DescribeAvailabilityMonitorTestInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAvailabilityMonitorTestInput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class DescribeAvailabilityMonitorTestOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAvailabilityMonitorTestOutput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
      end
    end

    class DescribeBandwidthRateLimitInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBandwidthRateLimitInput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class DescribeBandwidthRateLimitOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBandwidthRateLimitOutput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        Hearth::Validator.validate!(input[:average_upload_rate_limit_in_bits_per_sec], ::Integer, context: "#{context}[:average_upload_rate_limit_in_bits_per_sec]")
        Hearth::Validator.validate!(input[:average_download_rate_limit_in_bits_per_sec], ::Integer, context: "#{context}[:average_download_rate_limit_in_bits_per_sec]")
      end
    end

    class DescribeBandwidthRateLimitScheduleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBandwidthRateLimitScheduleInput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class DescribeBandwidthRateLimitScheduleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBandwidthRateLimitScheduleOutput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        BandwidthRateLimitIntervals.validate!(input[:bandwidth_rate_limit_intervals], context: "#{context}[:bandwidth_rate_limit_intervals]") unless input[:bandwidth_rate_limit_intervals].nil?
      end
    end

    class DescribeCacheInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCacheInput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class DescribeCacheOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCacheOutput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        DiskIds.validate!(input[:disk_ids], context: "#{context}[:disk_ids]") unless input[:disk_ids].nil?
        Hearth::Validator.validate!(input[:cache_allocated_in_bytes], ::Integer, context: "#{context}[:cache_allocated_in_bytes]")
        Hearth::Validator.validate!(input[:cache_used_percentage], ::Float, context: "#{context}[:cache_used_percentage]")
        Hearth::Validator.validate!(input[:cache_dirty_percentage], ::Float, context: "#{context}[:cache_dirty_percentage]")
        Hearth::Validator.validate!(input[:cache_hit_percentage], ::Float, context: "#{context}[:cache_hit_percentage]")
        Hearth::Validator.validate!(input[:cache_miss_percentage], ::Float, context: "#{context}[:cache_miss_percentage]")
      end
    end

    class DescribeCachediSCSIVolumesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCachediSCSIVolumesInput, context: context)
        VolumeARNs.validate!(input[:volume_ar_ns], context: "#{context}[:volume_ar_ns]") unless input[:volume_ar_ns].nil?
      end
    end

    class DescribeCachediSCSIVolumesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCachediSCSIVolumesOutput, context: context)
        CachediSCSIVolumes.validate!(input[:cachedi_scsi_volumes], context: "#{context}[:cachedi_scsi_volumes]") unless input[:cachedi_scsi_volumes].nil?
      end
    end

    class DescribeChapCredentialsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeChapCredentialsInput, context: context)
        Hearth::Validator.validate!(input[:target_arn], ::String, context: "#{context}[:target_arn]")
      end
    end

    class DescribeChapCredentialsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeChapCredentialsOutput, context: context)
        ChapCredentials.validate!(input[:chap_credentials], context: "#{context}[:chap_credentials]") unless input[:chap_credentials].nil?
      end
    end

    class DescribeFileSystemAssociationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFileSystemAssociationsInput, context: context)
        FileSystemAssociationARNList.validate!(input[:file_system_association_arn_list], context: "#{context}[:file_system_association_arn_list]") unless input[:file_system_association_arn_list].nil?
      end
    end

    class DescribeFileSystemAssociationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFileSystemAssociationsOutput, context: context)
        FileSystemAssociationInfoList.validate!(input[:file_system_association_info_list], context: "#{context}[:file_system_association_info_list]") unless input[:file_system_association_info_list].nil?
      end
    end

    class DescribeGatewayInformationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeGatewayInformationInput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class DescribeGatewayInformationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeGatewayInformationOutput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        Hearth::Validator.validate!(input[:gateway_id], ::String, context: "#{context}[:gateway_id]")
        Hearth::Validator.validate!(input[:gateway_name], ::String, context: "#{context}[:gateway_name]")
        Hearth::Validator.validate!(input[:gateway_timezone], ::String, context: "#{context}[:gateway_timezone]")
        Hearth::Validator.validate!(input[:gateway_state], ::String, context: "#{context}[:gateway_state]")
        GatewayNetworkInterfaces.validate!(input[:gateway_network_interfaces], context: "#{context}[:gateway_network_interfaces]") unless input[:gateway_network_interfaces].nil?
        Hearth::Validator.validate!(input[:gateway_type], ::String, context: "#{context}[:gateway_type]")
        Hearth::Validator.validate!(input[:next_update_availability_date], ::String, context: "#{context}[:next_update_availability_date]")
        Hearth::Validator.validate!(input[:last_software_update], ::String, context: "#{context}[:last_software_update]")
        Hearth::Validator.validate!(input[:ec2_instance_id], ::String, context: "#{context}[:ec2_instance_id]")
        Hearth::Validator.validate!(input[:ec2_instance_region], ::String, context: "#{context}[:ec2_instance_region]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:vpc_endpoint], ::String, context: "#{context}[:vpc_endpoint]")
        Hearth::Validator.validate!(input[:cloud_watch_log_group_arn], ::String, context: "#{context}[:cloud_watch_log_group_arn]")
        Hearth::Validator.validate!(input[:host_environment], ::String, context: "#{context}[:host_environment]")
        Hearth::Validator.validate!(input[:endpoint_type], ::String, context: "#{context}[:endpoint_type]")
        Hearth::Validator.validate!(input[:software_updates_end_date], ::String, context: "#{context}[:software_updates_end_date]")
        Hearth::Validator.validate!(input[:deprecation_date], ::String, context: "#{context}[:deprecation_date]")
        Hearth::Validator.validate!(input[:gateway_capacity], ::String, context: "#{context}[:gateway_capacity]")
        SupportedGatewayCapacities.validate!(input[:supported_gateway_capacities], context: "#{context}[:supported_gateway_capacities]") unless input[:supported_gateway_capacities].nil?
        Hearth::Validator.validate!(input[:host_environment_id], ::String, context: "#{context}[:host_environment_id]")
      end
    end

    class DescribeMaintenanceStartTimeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMaintenanceStartTimeInput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class DescribeMaintenanceStartTimeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMaintenanceStartTimeOutput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        Hearth::Validator.validate!(input[:hour_of_day], ::Integer, context: "#{context}[:hour_of_day]")
        Hearth::Validator.validate!(input[:minute_of_hour], ::Integer, context: "#{context}[:minute_of_hour]")
        Hearth::Validator.validate!(input[:day_of_week], ::Integer, context: "#{context}[:day_of_week]")
        Hearth::Validator.validate!(input[:day_of_month], ::Integer, context: "#{context}[:day_of_month]")
        Hearth::Validator.validate!(input[:timezone], ::String, context: "#{context}[:timezone]")
      end
    end

    class DescribeNFSFileSharesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeNFSFileSharesInput, context: context)
        FileShareARNList.validate!(input[:file_share_arn_list], context: "#{context}[:file_share_arn_list]") unless input[:file_share_arn_list].nil?
      end
    end

    class DescribeNFSFileSharesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeNFSFileSharesOutput, context: context)
        NFSFileShareInfoList.validate!(input[:nfs_file_share_info_list], context: "#{context}[:nfs_file_share_info_list]") unless input[:nfs_file_share_info_list].nil?
      end
    end

    class DescribeSMBFileSharesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSMBFileSharesInput, context: context)
        FileShareARNList.validate!(input[:file_share_arn_list], context: "#{context}[:file_share_arn_list]") unless input[:file_share_arn_list].nil?
      end
    end

    class DescribeSMBFileSharesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSMBFileSharesOutput, context: context)
        SMBFileShareInfoList.validate!(input[:smb_file_share_info_list], context: "#{context}[:smb_file_share_info_list]") unless input[:smb_file_share_info_list].nil?
      end
    end

    class DescribeSMBSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSMBSettingsInput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class DescribeSMBSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSMBSettingsOutput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:active_directory_status], ::String, context: "#{context}[:active_directory_status]")
        Hearth::Validator.validate!(input[:smb_guest_password_set], ::TrueClass, ::FalseClass, context: "#{context}[:smb_guest_password_set]")
        Hearth::Validator.validate!(input[:smb_security_strategy], ::String, context: "#{context}[:smb_security_strategy]")
        Hearth::Validator.validate!(input[:file_shares_visible], ::TrueClass, ::FalseClass, context: "#{context}[:file_shares_visible]")
        SMBLocalGroups.validate!(input[:smb_local_groups], context: "#{context}[:smb_local_groups]") unless input[:smb_local_groups].nil?
      end
    end

    class DescribeSnapshotScheduleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSnapshotScheduleInput, context: context)
        Hearth::Validator.validate!(input[:volume_arn], ::String, context: "#{context}[:volume_arn]")
      end
    end

    class DescribeSnapshotScheduleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSnapshotScheduleOutput, context: context)
        Hearth::Validator.validate!(input[:volume_arn], ::String, context: "#{context}[:volume_arn]")
        Hearth::Validator.validate!(input[:start_at], ::Integer, context: "#{context}[:start_at]")
        Hearth::Validator.validate!(input[:recurrence_in_hours], ::Integer, context: "#{context}[:recurrence_in_hours]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:timezone], ::String, context: "#{context}[:timezone]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class DescribeStorediSCSIVolumesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStorediSCSIVolumesInput, context: context)
        VolumeARNs.validate!(input[:volume_ar_ns], context: "#{context}[:volume_ar_ns]") unless input[:volume_ar_ns].nil?
      end
    end

    class DescribeStorediSCSIVolumesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStorediSCSIVolumesOutput, context: context)
        StorediSCSIVolumes.validate!(input[:storedi_scsi_volumes], context: "#{context}[:storedi_scsi_volumes]") unless input[:storedi_scsi_volumes].nil?
      end
    end

    class DescribeTapeArchivesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTapeArchivesInput, context: context)
        TapeARNs.validate!(input[:tape_ar_ns], context: "#{context}[:tape_ar_ns]") unless input[:tape_ar_ns].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class DescribeTapeArchivesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTapeArchivesOutput, context: context)
        TapeArchives.validate!(input[:tape_archives], context: "#{context}[:tape_archives]") unless input[:tape_archives].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeTapeRecoveryPointsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTapeRecoveryPointsInput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class DescribeTapeRecoveryPointsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTapeRecoveryPointsOutput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        TapeRecoveryPointInfos.validate!(input[:tape_recovery_point_infos], context: "#{context}[:tape_recovery_point_infos]") unless input[:tape_recovery_point_infos].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeTapesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTapesInput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        TapeARNs.validate!(input[:tape_ar_ns], context: "#{context}[:tape_ar_ns]") unless input[:tape_ar_ns].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class DescribeTapesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTapesOutput, context: context)
        Tapes.validate!(input[:tapes], context: "#{context}[:tapes]") unless input[:tapes].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeUploadBufferInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeUploadBufferInput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class DescribeUploadBufferOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeUploadBufferOutput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        DiskIds.validate!(input[:disk_ids], context: "#{context}[:disk_ids]") unless input[:disk_ids].nil?
        Hearth::Validator.validate!(input[:upload_buffer_used_in_bytes], ::Integer, context: "#{context}[:upload_buffer_used_in_bytes]")
        Hearth::Validator.validate!(input[:upload_buffer_allocated_in_bytes], ::Integer, context: "#{context}[:upload_buffer_allocated_in_bytes]")
      end
    end

    class DescribeVTLDevicesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeVTLDevicesInput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        VTLDeviceARNs.validate!(input[:vtl_device_ar_ns], context: "#{context}[:vtl_device_ar_ns]") unless input[:vtl_device_ar_ns].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class DescribeVTLDevicesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeVTLDevicesOutput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        VTLDevices.validate!(input[:vtl_devices], context: "#{context}[:vtl_devices]") unless input[:vtl_devices].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeWorkingStorageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeWorkingStorageInput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class DescribeWorkingStorageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeWorkingStorageOutput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        DiskIds.validate!(input[:disk_ids], context: "#{context}[:disk_ids]") unless input[:disk_ids].nil?
        Hearth::Validator.validate!(input[:working_storage_used_in_bytes], ::Integer, context: "#{context}[:working_storage_used_in_bytes]")
        Hearth::Validator.validate!(input[:working_storage_allocated_in_bytes], ::Integer, context: "#{context}[:working_storage_allocated_in_bytes]")
      end
    end

    class DetachVolumeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetachVolumeInput, context: context)
        Hearth::Validator.validate!(input[:volume_arn], ::String, context: "#{context}[:volume_arn]")
        Hearth::Validator.validate!(input[:force_detach], ::TrueClass, ::FalseClass, context: "#{context}[:force_detach]")
      end
    end

    class DetachVolumeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetachVolumeOutput, context: context)
        Hearth::Validator.validate!(input[:volume_arn], ::String, context: "#{context}[:volume_arn]")
      end
    end

    class DeviceiSCSIAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeviceiSCSIAttributes, context: context)
        Hearth::Validator.validate!(input[:target_arn], ::String, context: "#{context}[:target_arn]")
        Hearth::Validator.validate!(input[:network_interface_id], ::String, context: "#{context}[:network_interface_id]")
        Hearth::Validator.validate!(input[:network_interface_port], ::Integer, context: "#{context}[:network_interface_port]")
        Hearth::Validator.validate!(input[:chap_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:chap_enabled]")
      end
    end

    class DisableGatewayInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableGatewayInput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class DisableGatewayOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableGatewayOutput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class DisassociateFileSystemInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateFileSystemInput, context: context)
        Hearth::Validator.validate!(input[:file_system_association_arn], ::String, context: "#{context}[:file_system_association_arn]")
        Hearth::Validator.validate!(input[:force_delete], ::TrueClass, ::FalseClass, context: "#{context}[:force_delete]")
      end
    end

    class DisassociateFileSystemOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateFileSystemOutput, context: context)
        Hearth::Validator.validate!(input[:file_system_association_arn], ::String, context: "#{context}[:file_system_association_arn]")
      end
    end

    class Disk
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Disk, context: context)
        Hearth::Validator.validate!(input[:disk_id], ::String, context: "#{context}[:disk_id]")
        Hearth::Validator.validate!(input[:disk_path], ::String, context: "#{context}[:disk_path]")
        Hearth::Validator.validate!(input[:disk_node], ::String, context: "#{context}[:disk_node]")
        Hearth::Validator.validate!(input[:disk_status], ::String, context: "#{context}[:disk_status]")
        Hearth::Validator.validate!(input[:disk_size_in_bytes], ::Integer, context: "#{context}[:disk_size_in_bytes]")
        Hearth::Validator.validate!(input[:disk_allocation_type], ::String, context: "#{context}[:disk_allocation_type]")
        Hearth::Validator.validate!(input[:disk_allocation_resource], ::String, context: "#{context}[:disk_allocation_resource]")
        DiskAttributeList.validate!(input[:disk_attribute_list], context: "#{context}[:disk_attribute_list]") unless input[:disk_attribute_list].nil?
      end
    end

    class DiskAttributeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DiskIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Disks
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Disk.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EndpointNetworkConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EndpointNetworkConfiguration, context: context)
        IpAddressList.validate!(input[:ip_addresses], context: "#{context}[:ip_addresses]") unless input[:ip_addresses].nil?
      end
    end

    class FileShareARNList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class FileShareClientList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class FileShareInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FileShareInfo, context: context)
        Hearth::Validator.validate!(input[:file_share_type], ::String, context: "#{context}[:file_share_type]")
        Hearth::Validator.validate!(input[:file_share_arn], ::String, context: "#{context}[:file_share_arn]")
        Hearth::Validator.validate!(input[:file_share_id], ::String, context: "#{context}[:file_share_id]")
        Hearth::Validator.validate!(input[:file_share_status], ::String, context: "#{context}[:file_share_status]")
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class FileShareInfoList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          FileShareInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FileSystemAssociationARNList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class FileSystemAssociationInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FileSystemAssociationInfo, context: context)
        Hearth::Validator.validate!(input[:file_system_association_arn], ::String, context: "#{context}[:file_system_association_arn]")
        Hearth::Validator.validate!(input[:location_arn], ::String, context: "#{context}[:location_arn]")
        Hearth::Validator.validate!(input[:file_system_association_status], ::String, context: "#{context}[:file_system_association_status]")
        Hearth::Validator.validate!(input[:audit_destination_arn], ::String, context: "#{context}[:audit_destination_arn]")
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        CacheAttributes.validate!(input[:cache_attributes], context: "#{context}[:cache_attributes]") unless input[:cache_attributes].nil?
        EndpointNetworkConfiguration.validate!(input[:endpoint_network_configuration], context: "#{context}[:endpoint_network_configuration]") unless input[:endpoint_network_configuration].nil?
        FileSystemAssociationStatusDetails.validate!(input[:file_system_association_status_details], context: "#{context}[:file_system_association_status_details]") unless input[:file_system_association_status_details].nil?
      end
    end

    class FileSystemAssociationInfoList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          FileSystemAssociationInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FileSystemAssociationStatusDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FileSystemAssociationStatusDetail, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
      end
    end

    class FileSystemAssociationStatusDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          FileSystemAssociationStatusDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FileSystemAssociationSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FileSystemAssociationSummary, context: context)
        Hearth::Validator.validate!(input[:file_system_association_id], ::String, context: "#{context}[:file_system_association_id]")
        Hearth::Validator.validate!(input[:file_system_association_arn], ::String, context: "#{context}[:file_system_association_arn]")
        Hearth::Validator.validate!(input[:file_system_association_status], ::String, context: "#{context}[:file_system_association_status]")
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class FileSystemAssociationSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          FileSystemAssociationSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FolderList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class GatewayInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GatewayInfo, context: context)
        Hearth::Validator.validate!(input[:gateway_id], ::String, context: "#{context}[:gateway_id]")
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        Hearth::Validator.validate!(input[:gateway_type], ::String, context: "#{context}[:gateway_type]")
        Hearth::Validator.validate!(input[:gateway_operational_state], ::String, context: "#{context}[:gateway_operational_state]")
        Hearth::Validator.validate!(input[:gateway_name], ::String, context: "#{context}[:gateway_name]")
        Hearth::Validator.validate!(input[:ec2_instance_id], ::String, context: "#{context}[:ec2_instance_id]")
        Hearth::Validator.validate!(input[:ec2_instance_region], ::String, context: "#{context}[:ec2_instance_region]")
        Hearth::Validator.validate!(input[:host_environment], ::String, context: "#{context}[:host_environment]")
        Hearth::Validator.validate!(input[:host_environment_id], ::String, context: "#{context}[:host_environment_id]")
      end
    end

    class GatewayNetworkInterfaces
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          NetworkInterface.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Gateways
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          GatewayInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Hosts
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Initiators
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InternalServerError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerError, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        StorageGatewayError.validate!(input[:error], context: "#{context}[:error]") unless input[:error].nil?
      end
    end

    class InvalidGatewayRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidGatewayRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        StorageGatewayError.validate!(input[:error], context: "#{context}[:error]") unless input[:error].nil?
      end
    end

    class IpAddressList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class JoinDomainInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JoinDomainInput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:organizational_unit], ::String, context: "#{context}[:organizational_unit]")
        Hosts.validate!(input[:domain_controllers], context: "#{context}[:domain_controllers]") unless input[:domain_controllers].nil?
        Hearth::Validator.validate!(input[:timeout_in_seconds], ::Integer, context: "#{context}[:timeout_in_seconds]")
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
      end
    end

    class JoinDomainOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JoinDomainOutput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        Hearth::Validator.validate!(input[:active_directory_status], ::String, context: "#{context}[:active_directory_status]")
      end
    end

    class ListAutomaticTapeCreationPoliciesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAutomaticTapeCreationPoliciesInput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class ListAutomaticTapeCreationPoliciesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAutomaticTapeCreationPoliciesOutput, context: context)
        AutomaticTapeCreationPolicyInfos.validate!(input[:automatic_tape_creation_policy_infos], context: "#{context}[:automatic_tape_creation_policy_infos]") unless input[:automatic_tape_creation_policy_infos].nil?
      end
    end

    class ListFileSharesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFileSharesInput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListFileSharesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFileSharesOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        FileShareInfoList.validate!(input[:file_share_info_list], context: "#{context}[:file_share_info_list]") unless input[:file_share_info_list].nil?
      end
    end

    class ListFileSystemAssociationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFileSystemAssociationsInput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListFileSystemAssociationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFileSystemAssociationsOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        FileSystemAssociationSummaryList.validate!(input[:file_system_association_summary_list], context: "#{context}[:file_system_association_summary_list]") unless input[:file_system_association_summary_list].nil?
      end
    end

    class ListGatewaysInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGatewaysInput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class ListGatewaysOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGatewaysOutput, context: context)
        Gateways.validate!(input[:gateways], context: "#{context}[:gateways]") unless input[:gateways].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListLocalDisksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLocalDisksInput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class ListLocalDisksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLocalDisksOutput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        Disks.validate!(input[:disks], context: "#{context}[:disks]") unless input[:disks].nil?
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ListTapePoolsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTapePoolsInput, context: context)
        PoolARNs.validate!(input[:pool_ar_ns], context: "#{context}[:pool_ar_ns]") unless input[:pool_ar_ns].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class ListTapePoolsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTapePoolsOutput, context: context)
        PoolInfos.validate!(input[:pool_infos], context: "#{context}[:pool_infos]") unless input[:pool_infos].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListTapesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTapesInput, context: context)
        TapeARNs.validate!(input[:tape_ar_ns], context: "#{context}[:tape_ar_ns]") unless input[:tape_ar_ns].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class ListTapesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTapesOutput, context: context)
        TapeInfos.validate!(input[:tape_infos], context: "#{context}[:tape_infos]") unless input[:tape_infos].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListVolumeInitiatorsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListVolumeInitiatorsInput, context: context)
        Hearth::Validator.validate!(input[:volume_arn], ::String, context: "#{context}[:volume_arn]")
      end
    end

    class ListVolumeInitiatorsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListVolumeInitiatorsOutput, context: context)
        Initiators.validate!(input[:initiators], context: "#{context}[:initiators]") unless input[:initiators].nil?
      end
    end

    class ListVolumeRecoveryPointsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListVolumeRecoveryPointsInput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class ListVolumeRecoveryPointsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListVolumeRecoveryPointsOutput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        VolumeRecoveryPointInfos.validate!(input[:volume_recovery_point_infos], context: "#{context}[:volume_recovery_point_infos]") unless input[:volume_recovery_point_infos].nil?
      end
    end

    class ListVolumesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListVolumesInput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class ListVolumesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListVolumesOutput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        VolumeInfos.validate!(input[:volume_infos], context: "#{context}[:volume_infos]") unless input[:volume_infos].nil?
      end
    end

    class NFSFileShareDefaults
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NFSFileShareDefaults, context: context)
        Hearth::Validator.validate!(input[:file_mode], ::String, context: "#{context}[:file_mode]")
        Hearth::Validator.validate!(input[:directory_mode], ::String, context: "#{context}[:directory_mode]")
        Hearth::Validator.validate!(input[:group_id], ::Integer, context: "#{context}[:group_id]")
        Hearth::Validator.validate!(input[:owner_id], ::Integer, context: "#{context}[:owner_id]")
      end
    end

    class NFSFileShareInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NFSFileShareInfo, context: context)
        NFSFileShareDefaults.validate!(input[:nfs_file_share_defaults], context: "#{context}[:nfs_file_share_defaults]") unless input[:nfs_file_share_defaults].nil?
        Hearth::Validator.validate!(input[:file_share_arn], ::String, context: "#{context}[:file_share_arn]")
        Hearth::Validator.validate!(input[:file_share_id], ::String, context: "#{context}[:file_share_id]")
        Hearth::Validator.validate!(input[:file_share_status], ::String, context: "#{context}[:file_share_status]")
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        Hearth::Validator.validate!(input[:kms_encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:kms_encrypted]")
        Hearth::Validator.validate!(input[:kms_key], ::String, context: "#{context}[:kms_key]")
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
        Hearth::Validator.validate!(input[:location_arn], ::String, context: "#{context}[:location_arn]")
        Hearth::Validator.validate!(input[:default_storage_class], ::String, context: "#{context}[:default_storage_class]")
        Hearth::Validator.validate!(input[:object_acl], ::String, context: "#{context}[:object_acl]")
        FileShareClientList.validate!(input[:client_list], context: "#{context}[:client_list]") unless input[:client_list].nil?
        Hearth::Validator.validate!(input[:squash], ::String, context: "#{context}[:squash]")
        Hearth::Validator.validate!(input[:read_only], ::TrueClass, ::FalseClass, context: "#{context}[:read_only]")
        Hearth::Validator.validate!(input[:guess_mime_type_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:guess_mime_type_enabled]")
        Hearth::Validator.validate!(input[:requester_pays], ::TrueClass, ::FalseClass, context: "#{context}[:requester_pays]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:file_share_name], ::String, context: "#{context}[:file_share_name]")
        CacheAttributes.validate!(input[:cache_attributes], context: "#{context}[:cache_attributes]") unless input[:cache_attributes].nil?
        Hearth::Validator.validate!(input[:notification_policy], ::String, context: "#{context}[:notification_policy]")
        Hearth::Validator.validate!(input[:vpc_endpoint_dns_name], ::String, context: "#{context}[:vpc_endpoint_dns_name]")
        Hearth::Validator.validate!(input[:bucket_region], ::String, context: "#{context}[:bucket_region]")
        Hearth::Validator.validate!(input[:audit_destination_arn], ::String, context: "#{context}[:audit_destination_arn]")
      end
    end

    class NFSFileShareInfoList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          NFSFileShareInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NetworkInterface
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkInterface, context: context)
        Hearth::Validator.validate!(input[:ipv4_address], ::String, context: "#{context}[:ipv4_address]")
        Hearth::Validator.validate!(input[:mac_address], ::String, context: "#{context}[:mac_address]")
        Hearth::Validator.validate!(input[:ipv6_address], ::String, context: "#{context}[:ipv6_address]")
      end
    end

    class NotifyWhenUploadedInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotifyWhenUploadedInput, context: context)
        Hearth::Validator.validate!(input[:file_share_arn], ::String, context: "#{context}[:file_share_arn]")
      end
    end

    class NotifyWhenUploadedOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotifyWhenUploadedOutput, context: context)
        Hearth::Validator.validate!(input[:file_share_arn], ::String, context: "#{context}[:file_share_arn]")
        Hearth::Validator.validate!(input[:notification_id], ::String, context: "#{context}[:notification_id]")
      end
    end

    class PoolARNs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PoolInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PoolInfo, context: context)
        Hearth::Validator.validate!(input[:pool_arn], ::String, context: "#{context}[:pool_arn]")
        Hearth::Validator.validate!(input[:pool_name], ::String, context: "#{context}[:pool_name]")
        Hearth::Validator.validate!(input[:storage_class], ::String, context: "#{context}[:storage_class]")
        Hearth::Validator.validate!(input[:retention_lock_type], ::String, context: "#{context}[:retention_lock_type]")
        Hearth::Validator.validate!(input[:retention_lock_time_in_days], ::Integer, context: "#{context}[:retention_lock_time_in_days]")
        Hearth::Validator.validate!(input[:pool_status], ::String, context: "#{context}[:pool_status]")
      end
    end

    class PoolInfos
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PoolInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RefreshCacheInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RefreshCacheInput, context: context)
        Hearth::Validator.validate!(input[:file_share_arn], ::String, context: "#{context}[:file_share_arn]")
        FolderList.validate!(input[:folder_list], context: "#{context}[:folder_list]") unless input[:folder_list].nil?
        Hearth::Validator.validate!(input[:recursive], ::TrueClass, ::FalseClass, context: "#{context}[:recursive]")
      end
    end

    class RefreshCacheOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RefreshCacheOutput, context: context)
        Hearth::Validator.validate!(input[:file_share_arn], ::String, context: "#{context}[:file_share_arn]")
        Hearth::Validator.validate!(input[:notification_id], ::String, context: "#{context}[:notification_id]")
      end
    end

    class RemoveTagsFromResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveTagsFromResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagKeys.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class RemoveTagsFromResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveTagsFromResourceOutput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ResetCacheInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResetCacheInput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class ResetCacheOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResetCacheOutput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class RetrieveTapeArchiveInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RetrieveTapeArchiveInput, context: context)
        Hearth::Validator.validate!(input[:tape_arn], ::String, context: "#{context}[:tape_arn]")
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class RetrieveTapeArchiveOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RetrieveTapeArchiveOutput, context: context)
        Hearth::Validator.validate!(input[:tape_arn], ::String, context: "#{context}[:tape_arn]")
      end
    end

    class RetrieveTapeRecoveryPointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RetrieveTapeRecoveryPointInput, context: context)
        Hearth::Validator.validate!(input[:tape_arn], ::String, context: "#{context}[:tape_arn]")
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class RetrieveTapeRecoveryPointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RetrieveTapeRecoveryPointOutput, context: context)
        Hearth::Validator.validate!(input[:tape_arn], ::String, context: "#{context}[:tape_arn]")
      end
    end

    class SMBFileShareInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SMBFileShareInfo, context: context)
        Hearth::Validator.validate!(input[:file_share_arn], ::String, context: "#{context}[:file_share_arn]")
        Hearth::Validator.validate!(input[:file_share_id], ::String, context: "#{context}[:file_share_id]")
        Hearth::Validator.validate!(input[:file_share_status], ::String, context: "#{context}[:file_share_status]")
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        Hearth::Validator.validate!(input[:kms_encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:kms_encrypted]")
        Hearth::Validator.validate!(input[:kms_key], ::String, context: "#{context}[:kms_key]")
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
        Hearth::Validator.validate!(input[:location_arn], ::String, context: "#{context}[:location_arn]")
        Hearth::Validator.validate!(input[:default_storage_class], ::String, context: "#{context}[:default_storage_class]")
        Hearth::Validator.validate!(input[:object_acl], ::String, context: "#{context}[:object_acl]")
        Hearth::Validator.validate!(input[:read_only], ::TrueClass, ::FalseClass, context: "#{context}[:read_only]")
        Hearth::Validator.validate!(input[:guess_mime_type_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:guess_mime_type_enabled]")
        Hearth::Validator.validate!(input[:requester_pays], ::TrueClass, ::FalseClass, context: "#{context}[:requester_pays]")
        Hearth::Validator.validate!(input[:smbacl_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:smbacl_enabled]")
        Hearth::Validator.validate!(input[:access_based_enumeration], ::TrueClass, ::FalseClass, context: "#{context}[:access_based_enumeration]")
        UserList.validate!(input[:admin_user_list], context: "#{context}[:admin_user_list]") unless input[:admin_user_list].nil?
        UserList.validate!(input[:valid_user_list], context: "#{context}[:valid_user_list]") unless input[:valid_user_list].nil?
        UserList.validate!(input[:invalid_user_list], context: "#{context}[:invalid_user_list]") unless input[:invalid_user_list].nil?
        Hearth::Validator.validate!(input[:audit_destination_arn], ::String, context: "#{context}[:audit_destination_arn]")
        Hearth::Validator.validate!(input[:authentication], ::String, context: "#{context}[:authentication]")
        Hearth::Validator.validate!(input[:case_sensitivity], ::String, context: "#{context}[:case_sensitivity]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:file_share_name], ::String, context: "#{context}[:file_share_name]")
        CacheAttributes.validate!(input[:cache_attributes], context: "#{context}[:cache_attributes]") unless input[:cache_attributes].nil?
        Hearth::Validator.validate!(input[:notification_policy], ::String, context: "#{context}[:notification_policy]")
        Hearth::Validator.validate!(input[:vpc_endpoint_dns_name], ::String, context: "#{context}[:vpc_endpoint_dns_name]")
        Hearth::Validator.validate!(input[:bucket_region], ::String, context: "#{context}[:bucket_region]")
        Hearth::Validator.validate!(input[:oplocks_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:oplocks_enabled]")
      end
    end

    class SMBFileShareInfoList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SMBFileShareInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SMBLocalGroups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SMBLocalGroups, context: context)
        UserList.validate!(input[:gateway_admins], context: "#{context}[:gateway_admins]") unless input[:gateway_admins].nil?
      end
    end

    class ServiceUnavailableError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceUnavailableError, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        StorageGatewayError.validate!(input[:error], context: "#{context}[:error]") unless input[:error].nil?
      end
    end

    class SetLocalConsolePasswordInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetLocalConsolePasswordInput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        Hearth::Validator.validate!(input[:local_console_password], ::String, context: "#{context}[:local_console_password]")
      end
    end

    class SetLocalConsolePasswordOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetLocalConsolePasswordOutput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class SetSMBGuestPasswordInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetSMBGuestPasswordInput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
      end
    end

    class SetSMBGuestPasswordOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetSMBGuestPasswordOutput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class ShutdownGatewayInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ShutdownGatewayInput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class ShutdownGatewayOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ShutdownGatewayOutput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class StartAvailabilityMonitorTestInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartAvailabilityMonitorTestInput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class StartAvailabilityMonitorTestOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartAvailabilityMonitorTestOutput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class StartGatewayInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartGatewayInput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class StartGatewayOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartGatewayOutput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class StorageGatewayError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StorageGatewayError, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        ErrorDetails.validate!(input[:error_details], context: "#{context}[:error_details]") unless input[:error_details].nil?
      end
    end

    class StorediSCSIVolume
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StorediSCSIVolume, context: context)
        Hearth::Validator.validate!(input[:volume_arn], ::String, context: "#{context}[:volume_arn]")
        Hearth::Validator.validate!(input[:volume_id], ::String, context: "#{context}[:volume_id]")
        Hearth::Validator.validate!(input[:volume_type], ::String, context: "#{context}[:volume_type]")
        Hearth::Validator.validate!(input[:volume_status], ::String, context: "#{context}[:volume_status]")
        Hearth::Validator.validate!(input[:volume_attachment_status], ::String, context: "#{context}[:volume_attachment_status]")
        Hearth::Validator.validate!(input[:volume_size_in_bytes], ::Integer, context: "#{context}[:volume_size_in_bytes]")
        Hearth::Validator.validate!(input[:volume_progress], ::Float, context: "#{context}[:volume_progress]")
        Hearth::Validator.validate!(input[:volume_disk_id], ::String, context: "#{context}[:volume_disk_id]")
        Hearth::Validator.validate!(input[:source_snapshot_id], ::String, context: "#{context}[:source_snapshot_id]")
        Hearth::Validator.validate!(input[:preserved_existing_data], ::TrueClass, ::FalseClass, context: "#{context}[:preserved_existing_data]")
        VolumeiSCSIAttributes.validate!(input[:volumei_scsi_attributes], context: "#{context}[:volumei_scsi_attributes]") unless input[:volumei_scsi_attributes].nil?
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:volume_used_in_bytes], ::Integer, context: "#{context}[:volume_used_in_bytes]")
        Hearth::Validator.validate!(input[:kms_key], ::String, context: "#{context}[:kms_key]")
        Hearth::Validator.validate!(input[:target_name], ::String, context: "#{context}[:target_name]")
      end
    end

    class StorediSCSIVolumes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          StorediSCSIVolume.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SupportedGatewayCapacities
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagKeys
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Tags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Tape
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tape, context: context)
        Hearth::Validator.validate!(input[:tape_arn], ::String, context: "#{context}[:tape_arn]")
        Hearth::Validator.validate!(input[:tape_barcode], ::String, context: "#{context}[:tape_barcode]")
        Hearth::Validator.validate!(input[:tape_created_date], ::Time, context: "#{context}[:tape_created_date]")
        Hearth::Validator.validate!(input[:tape_size_in_bytes], ::Integer, context: "#{context}[:tape_size_in_bytes]")
        Hearth::Validator.validate!(input[:tape_status], ::String, context: "#{context}[:tape_status]")
        Hearth::Validator.validate!(input[:vtl_device], ::String, context: "#{context}[:vtl_device]")
        Hearth::Validator.validate!(input[:progress], ::Float, context: "#{context}[:progress]")
        Hearth::Validator.validate!(input[:tape_used_in_bytes], ::Integer, context: "#{context}[:tape_used_in_bytes]")
        Hearth::Validator.validate!(input[:kms_key], ::String, context: "#{context}[:kms_key]")
        Hearth::Validator.validate!(input[:pool_id], ::String, context: "#{context}[:pool_id]")
        Hearth::Validator.validate!(input[:worm], ::TrueClass, ::FalseClass, context: "#{context}[:worm]")
        Hearth::Validator.validate!(input[:retention_start_date], ::Time, context: "#{context}[:retention_start_date]")
        Hearth::Validator.validate!(input[:pool_entry_date], ::Time, context: "#{context}[:pool_entry_date]")
      end
    end

    class TapeARNs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TapeArchive
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TapeArchive, context: context)
        Hearth::Validator.validate!(input[:tape_arn], ::String, context: "#{context}[:tape_arn]")
        Hearth::Validator.validate!(input[:tape_barcode], ::String, context: "#{context}[:tape_barcode]")
        Hearth::Validator.validate!(input[:tape_created_date], ::Time, context: "#{context}[:tape_created_date]")
        Hearth::Validator.validate!(input[:tape_size_in_bytes], ::Integer, context: "#{context}[:tape_size_in_bytes]")
        Hearth::Validator.validate!(input[:completion_time], ::Time, context: "#{context}[:completion_time]")
        Hearth::Validator.validate!(input[:retrieved_to], ::String, context: "#{context}[:retrieved_to]")
        Hearth::Validator.validate!(input[:tape_status], ::String, context: "#{context}[:tape_status]")
        Hearth::Validator.validate!(input[:tape_used_in_bytes], ::Integer, context: "#{context}[:tape_used_in_bytes]")
        Hearth::Validator.validate!(input[:kms_key], ::String, context: "#{context}[:kms_key]")
        Hearth::Validator.validate!(input[:pool_id], ::String, context: "#{context}[:pool_id]")
        Hearth::Validator.validate!(input[:worm], ::TrueClass, ::FalseClass, context: "#{context}[:worm]")
        Hearth::Validator.validate!(input[:retention_start_date], ::Time, context: "#{context}[:retention_start_date]")
        Hearth::Validator.validate!(input[:pool_entry_date], ::Time, context: "#{context}[:pool_entry_date]")
      end
    end

    class TapeArchives
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TapeArchive.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TapeInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TapeInfo, context: context)
        Hearth::Validator.validate!(input[:tape_arn], ::String, context: "#{context}[:tape_arn]")
        Hearth::Validator.validate!(input[:tape_barcode], ::String, context: "#{context}[:tape_barcode]")
        Hearth::Validator.validate!(input[:tape_size_in_bytes], ::Integer, context: "#{context}[:tape_size_in_bytes]")
        Hearth::Validator.validate!(input[:tape_status], ::String, context: "#{context}[:tape_status]")
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        Hearth::Validator.validate!(input[:pool_id], ::String, context: "#{context}[:pool_id]")
        Hearth::Validator.validate!(input[:retention_start_date], ::Time, context: "#{context}[:retention_start_date]")
        Hearth::Validator.validate!(input[:pool_entry_date], ::Time, context: "#{context}[:pool_entry_date]")
      end
    end

    class TapeInfos
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TapeInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TapeRecoveryPointInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TapeRecoveryPointInfo, context: context)
        Hearth::Validator.validate!(input[:tape_arn], ::String, context: "#{context}[:tape_arn]")
        Hearth::Validator.validate!(input[:tape_recovery_point_time], ::Time, context: "#{context}[:tape_recovery_point_time]")
        Hearth::Validator.validate!(input[:tape_size_in_bytes], ::Integer, context: "#{context}[:tape_size_in_bytes]")
        Hearth::Validator.validate!(input[:tape_status], ::String, context: "#{context}[:tape_status]")
      end
    end

    class TapeRecoveryPointInfos
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TapeRecoveryPointInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Tapes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Tape.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UpdateAutomaticTapeCreationPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAutomaticTapeCreationPolicyInput, context: context)
        AutomaticTapeCreationRules.validate!(input[:automatic_tape_creation_rules], context: "#{context}[:automatic_tape_creation_rules]") unless input[:automatic_tape_creation_rules].nil?
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class UpdateAutomaticTapeCreationPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAutomaticTapeCreationPolicyOutput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class UpdateBandwidthRateLimitInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBandwidthRateLimitInput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        Hearth::Validator.validate!(input[:average_upload_rate_limit_in_bits_per_sec], ::Integer, context: "#{context}[:average_upload_rate_limit_in_bits_per_sec]")
        Hearth::Validator.validate!(input[:average_download_rate_limit_in_bits_per_sec], ::Integer, context: "#{context}[:average_download_rate_limit_in_bits_per_sec]")
      end
    end

    class UpdateBandwidthRateLimitOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBandwidthRateLimitOutput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class UpdateBandwidthRateLimitScheduleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBandwidthRateLimitScheduleInput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        BandwidthRateLimitIntervals.validate!(input[:bandwidth_rate_limit_intervals], context: "#{context}[:bandwidth_rate_limit_intervals]") unless input[:bandwidth_rate_limit_intervals].nil?
      end
    end

    class UpdateBandwidthRateLimitScheduleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBandwidthRateLimitScheduleOutput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class UpdateChapCredentialsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateChapCredentialsInput, context: context)
        Hearth::Validator.validate!(input[:target_arn], ::String, context: "#{context}[:target_arn]")
        Hearth::Validator.validate!(input[:secret_to_authenticate_initiator], ::String, context: "#{context}[:secret_to_authenticate_initiator]")
        Hearth::Validator.validate!(input[:initiator_name], ::String, context: "#{context}[:initiator_name]")
        Hearth::Validator.validate!(input[:secret_to_authenticate_target], ::String, context: "#{context}[:secret_to_authenticate_target]")
      end
    end

    class UpdateChapCredentialsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateChapCredentialsOutput, context: context)
        Hearth::Validator.validate!(input[:target_arn], ::String, context: "#{context}[:target_arn]")
        Hearth::Validator.validate!(input[:initiator_name], ::String, context: "#{context}[:initiator_name]")
      end
    end

    class UpdateFileSystemAssociationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFileSystemAssociationInput, context: context)
        Hearth::Validator.validate!(input[:file_system_association_arn], ::String, context: "#{context}[:file_system_association_arn]")
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
        Hearth::Validator.validate!(input[:audit_destination_arn], ::String, context: "#{context}[:audit_destination_arn]")
        CacheAttributes.validate!(input[:cache_attributes], context: "#{context}[:cache_attributes]") unless input[:cache_attributes].nil?
      end
    end

    class UpdateFileSystemAssociationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFileSystemAssociationOutput, context: context)
        Hearth::Validator.validate!(input[:file_system_association_arn], ::String, context: "#{context}[:file_system_association_arn]")
      end
    end

    class UpdateGatewayInformationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGatewayInformationInput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        Hearth::Validator.validate!(input[:gateway_name], ::String, context: "#{context}[:gateway_name]")
        Hearth::Validator.validate!(input[:gateway_timezone], ::String, context: "#{context}[:gateway_timezone]")
        Hearth::Validator.validate!(input[:cloud_watch_log_group_arn], ::String, context: "#{context}[:cloud_watch_log_group_arn]")
        Hearth::Validator.validate!(input[:gateway_capacity], ::String, context: "#{context}[:gateway_capacity]")
      end
    end

    class UpdateGatewayInformationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGatewayInformationOutput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        Hearth::Validator.validate!(input[:gateway_name], ::String, context: "#{context}[:gateway_name]")
      end
    end

    class UpdateGatewaySoftwareNowInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGatewaySoftwareNowInput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class UpdateGatewaySoftwareNowOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGatewaySoftwareNowOutput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class UpdateMaintenanceStartTimeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateMaintenanceStartTimeInput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        Hearth::Validator.validate!(input[:hour_of_day], ::Integer, context: "#{context}[:hour_of_day]")
        Hearth::Validator.validate!(input[:minute_of_hour], ::Integer, context: "#{context}[:minute_of_hour]")
        Hearth::Validator.validate!(input[:day_of_week], ::Integer, context: "#{context}[:day_of_week]")
        Hearth::Validator.validate!(input[:day_of_month], ::Integer, context: "#{context}[:day_of_month]")
      end
    end

    class UpdateMaintenanceStartTimeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateMaintenanceStartTimeOutput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class UpdateNFSFileShareInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateNFSFileShareInput, context: context)
        Hearth::Validator.validate!(input[:file_share_arn], ::String, context: "#{context}[:file_share_arn]")
        Hearth::Validator.validate!(input[:kms_encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:kms_encrypted]")
        Hearth::Validator.validate!(input[:kms_key], ::String, context: "#{context}[:kms_key]")
        NFSFileShareDefaults.validate!(input[:nfs_file_share_defaults], context: "#{context}[:nfs_file_share_defaults]") unless input[:nfs_file_share_defaults].nil?
        Hearth::Validator.validate!(input[:default_storage_class], ::String, context: "#{context}[:default_storage_class]")
        Hearth::Validator.validate!(input[:object_acl], ::String, context: "#{context}[:object_acl]")
        FileShareClientList.validate!(input[:client_list], context: "#{context}[:client_list]") unless input[:client_list].nil?
        Hearth::Validator.validate!(input[:squash], ::String, context: "#{context}[:squash]")
        Hearth::Validator.validate!(input[:read_only], ::TrueClass, ::FalseClass, context: "#{context}[:read_only]")
        Hearth::Validator.validate!(input[:guess_mime_type_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:guess_mime_type_enabled]")
        Hearth::Validator.validate!(input[:requester_pays], ::TrueClass, ::FalseClass, context: "#{context}[:requester_pays]")
        Hearth::Validator.validate!(input[:file_share_name], ::String, context: "#{context}[:file_share_name]")
        CacheAttributes.validate!(input[:cache_attributes], context: "#{context}[:cache_attributes]") unless input[:cache_attributes].nil?
        Hearth::Validator.validate!(input[:notification_policy], ::String, context: "#{context}[:notification_policy]")
        Hearth::Validator.validate!(input[:audit_destination_arn], ::String, context: "#{context}[:audit_destination_arn]")
      end
    end

    class UpdateNFSFileShareOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateNFSFileShareOutput, context: context)
        Hearth::Validator.validate!(input[:file_share_arn], ::String, context: "#{context}[:file_share_arn]")
      end
    end

    class UpdateSMBFileShareInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSMBFileShareInput, context: context)
        Hearth::Validator.validate!(input[:file_share_arn], ::String, context: "#{context}[:file_share_arn]")
        Hearth::Validator.validate!(input[:kms_encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:kms_encrypted]")
        Hearth::Validator.validate!(input[:kms_key], ::String, context: "#{context}[:kms_key]")
        Hearth::Validator.validate!(input[:default_storage_class], ::String, context: "#{context}[:default_storage_class]")
        Hearth::Validator.validate!(input[:object_acl], ::String, context: "#{context}[:object_acl]")
        Hearth::Validator.validate!(input[:read_only], ::TrueClass, ::FalseClass, context: "#{context}[:read_only]")
        Hearth::Validator.validate!(input[:guess_mime_type_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:guess_mime_type_enabled]")
        Hearth::Validator.validate!(input[:requester_pays], ::TrueClass, ::FalseClass, context: "#{context}[:requester_pays]")
        Hearth::Validator.validate!(input[:smbacl_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:smbacl_enabled]")
        Hearth::Validator.validate!(input[:access_based_enumeration], ::TrueClass, ::FalseClass, context: "#{context}[:access_based_enumeration]")
        UserList.validate!(input[:admin_user_list], context: "#{context}[:admin_user_list]") unless input[:admin_user_list].nil?
        UserList.validate!(input[:valid_user_list], context: "#{context}[:valid_user_list]") unless input[:valid_user_list].nil?
        UserList.validate!(input[:invalid_user_list], context: "#{context}[:invalid_user_list]") unless input[:invalid_user_list].nil?
        Hearth::Validator.validate!(input[:audit_destination_arn], ::String, context: "#{context}[:audit_destination_arn]")
        Hearth::Validator.validate!(input[:case_sensitivity], ::String, context: "#{context}[:case_sensitivity]")
        Hearth::Validator.validate!(input[:file_share_name], ::String, context: "#{context}[:file_share_name]")
        CacheAttributes.validate!(input[:cache_attributes], context: "#{context}[:cache_attributes]") unless input[:cache_attributes].nil?
        Hearth::Validator.validate!(input[:notification_policy], ::String, context: "#{context}[:notification_policy]")
        Hearth::Validator.validate!(input[:oplocks_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:oplocks_enabled]")
      end
    end

    class UpdateSMBFileShareOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSMBFileShareOutput, context: context)
        Hearth::Validator.validate!(input[:file_share_arn], ::String, context: "#{context}[:file_share_arn]")
      end
    end

    class UpdateSMBFileShareVisibilityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSMBFileShareVisibilityInput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        Hearth::Validator.validate!(input[:file_shares_visible], ::TrueClass, ::FalseClass, context: "#{context}[:file_shares_visible]")
      end
    end

    class UpdateSMBFileShareVisibilityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSMBFileShareVisibilityOutput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class UpdateSMBLocalGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSMBLocalGroupsInput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        SMBLocalGroups.validate!(input[:smb_local_groups], context: "#{context}[:smb_local_groups]") unless input[:smb_local_groups].nil?
      end
    end

    class UpdateSMBLocalGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSMBLocalGroupsOutput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class UpdateSMBSecurityStrategyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSMBSecurityStrategyInput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        Hearth::Validator.validate!(input[:smb_security_strategy], ::String, context: "#{context}[:smb_security_strategy]")
      end
    end

    class UpdateSMBSecurityStrategyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSMBSecurityStrategyOutput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class UpdateSnapshotScheduleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSnapshotScheduleInput, context: context)
        Hearth::Validator.validate!(input[:volume_arn], ::String, context: "#{context}[:volume_arn]")
        Hearth::Validator.validate!(input[:start_at], ::Integer, context: "#{context}[:start_at]")
        Hearth::Validator.validate!(input[:recurrence_in_hours], ::Integer, context: "#{context}[:recurrence_in_hours]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class UpdateSnapshotScheduleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSnapshotScheduleOutput, context: context)
        Hearth::Validator.validate!(input[:volume_arn], ::String, context: "#{context}[:volume_arn]")
      end
    end

    class UpdateVTLDeviceTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateVTLDeviceTypeInput, context: context)
        Hearth::Validator.validate!(input[:vtl_device_arn], ::String, context: "#{context}[:vtl_device_arn]")
        Hearth::Validator.validate!(input[:device_type], ::String, context: "#{context}[:device_type]")
      end
    end

    class UpdateVTLDeviceTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateVTLDeviceTypeOutput, context: context)
        Hearth::Validator.validate!(input[:vtl_device_arn], ::String, context: "#{context}[:vtl_device_arn]")
      end
    end

    class UserList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class VTLDevice
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VTLDevice, context: context)
        Hearth::Validator.validate!(input[:vtl_device_arn], ::String, context: "#{context}[:vtl_device_arn]")
        Hearth::Validator.validate!(input[:vtl_device_type], ::String, context: "#{context}[:vtl_device_type]")
        Hearth::Validator.validate!(input[:vtl_device_vendor], ::String, context: "#{context}[:vtl_device_vendor]")
        Hearth::Validator.validate!(input[:vtl_device_product_identifier], ::String, context: "#{context}[:vtl_device_product_identifier]")
        DeviceiSCSIAttributes.validate!(input[:devicei_scsi_attributes], context: "#{context}[:devicei_scsi_attributes]") unless input[:devicei_scsi_attributes].nil?
      end
    end

    class VTLDeviceARNs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class VTLDevices
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          VTLDevice.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class VolumeARNs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class VolumeInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VolumeInfo, context: context)
        Hearth::Validator.validate!(input[:volume_arn], ::String, context: "#{context}[:volume_arn]")
        Hearth::Validator.validate!(input[:volume_id], ::String, context: "#{context}[:volume_id]")
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        Hearth::Validator.validate!(input[:gateway_id], ::String, context: "#{context}[:gateway_id]")
        Hearth::Validator.validate!(input[:volume_type], ::String, context: "#{context}[:volume_type]")
        Hearth::Validator.validate!(input[:volume_size_in_bytes], ::Integer, context: "#{context}[:volume_size_in_bytes]")
        Hearth::Validator.validate!(input[:volume_attachment_status], ::String, context: "#{context}[:volume_attachment_status]")
      end
    end

    class VolumeInfos
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          VolumeInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class VolumeRecoveryPointInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VolumeRecoveryPointInfo, context: context)
        Hearth::Validator.validate!(input[:volume_arn], ::String, context: "#{context}[:volume_arn]")
        Hearth::Validator.validate!(input[:volume_size_in_bytes], ::Integer, context: "#{context}[:volume_size_in_bytes]")
        Hearth::Validator.validate!(input[:volume_usage_in_bytes], ::Integer, context: "#{context}[:volume_usage_in_bytes]")
        Hearth::Validator.validate!(input[:volume_recovery_point_time], ::String, context: "#{context}[:volume_recovery_point_time]")
      end
    end

    class VolumeRecoveryPointInfos
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          VolumeRecoveryPointInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class VolumeiSCSIAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VolumeiSCSIAttributes, context: context)
        Hearth::Validator.validate!(input[:target_arn], ::String, context: "#{context}[:target_arn]")
        Hearth::Validator.validate!(input[:network_interface_id], ::String, context: "#{context}[:network_interface_id]")
        Hearth::Validator.validate!(input[:network_interface_port], ::Integer, context: "#{context}[:network_interface_port]")
        Hearth::Validator.validate!(input[:lun_number], ::Integer, context: "#{context}[:lun_number]")
        Hearth::Validator.validate!(input[:chap_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:chap_enabled]")
      end
    end

    class ErrorDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

  end
end
