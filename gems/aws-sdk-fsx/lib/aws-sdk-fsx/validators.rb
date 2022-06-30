# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::FSx
  module Validators

    class ActiveDirectoryBackupAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActiveDirectoryBackupAttributes, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:active_directory_id], ::String, context: "#{context}[:active_directory_id]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ActiveDirectoryError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActiveDirectoryError, context: context)
        Hearth::Validator.validate!(input[:active_directory_id], ::String, context: "#{context}[:active_directory_id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AdministrativeAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdministrativeAction, context: context)
        Hearth::Validator.validate!(input[:administrative_action_type], ::String, context: "#{context}[:administrative_action_type]")
        Hearth::Validator.validate!(input[:progress_percent], ::Integer, context: "#{context}[:progress_percent]")
        Hearth::Validator.validate!(input[:request_time], ::Time, context: "#{context}[:request_time]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::FileSystem.validate!(input[:target_file_system_values], context: "#{context}[:target_file_system_values]") unless input[:target_file_system_values].nil?
        Validators::AdministrativeActionFailureDetails.validate!(input[:failure_details], context: "#{context}[:failure_details]") unless input[:failure_details].nil?
        Validators::Volume.validate!(input[:target_volume_values], context: "#{context}[:target_volume_values]") unless input[:target_volume_values].nil?
        Validators::Snapshot.validate!(input[:target_snapshot_values], context: "#{context}[:target_snapshot_values]") unless input[:target_snapshot_values].nil?
      end
    end

    class AdministrativeActionFailureDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdministrativeActionFailureDetails, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AdministrativeActions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AdministrativeAction.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Alias
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Alias, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:lifecycle], ::String, context: "#{context}[:lifecycle]")
      end
    end

    class Aliases
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Alias.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AlternateDNSNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AssociateFileSystemAliasesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateFileSystemAliasesInput, context: context)
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:file_system_id], ::String, context: "#{context}[:file_system_id]")
        Validators::AlternateDNSNames.validate!(input[:aliases], context: "#{context}[:aliases]") unless input[:aliases].nil?
      end
    end

    class AssociateFileSystemAliasesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateFileSystemAliasesOutput, context: context)
        Validators::Aliases.validate!(input[:aliases], context: "#{context}[:aliases]") unless input[:aliases].nil?
      end
    end

    class AutoExportPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoExportPolicy, context: context)
        Validators::EventTypes.validate!(input[:events], context: "#{context}[:events]") unless input[:events].nil?
      end
    end

    class AutoImportPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoImportPolicy, context: context)
        Validators::EventTypes.validate!(input[:events], context: "#{context}[:events]") unless input[:events].nil?
      end
    end

    class Backup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Backup, context: context)
        Hearth::Validator.validate!(input[:backup_id], ::String, context: "#{context}[:backup_id]")
        Hearth::Validator.validate!(input[:lifecycle], ::String, context: "#{context}[:lifecycle]")
        Validators::BackupFailureDetails.validate!(input[:failure_details], context: "#{context}[:failure_details]") unless input[:failure_details].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:progress_percent], ::Integer, context: "#{context}[:progress_percent]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::FileSystem.validate!(input[:file_system], context: "#{context}[:file_system]") unless input[:file_system].nil?
        Validators::ActiveDirectoryBackupAttributes.validate!(input[:directory_information], context: "#{context}[:directory_information]") unless input[:directory_information].nil?
        Hearth::Validator.validate!(input[:owner_id], ::String, context: "#{context}[:owner_id]")
        Hearth::Validator.validate!(input[:source_backup_id], ::String, context: "#{context}[:source_backup_id]")
        Hearth::Validator.validate!(input[:source_backup_region], ::String, context: "#{context}[:source_backup_region]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Validators::Volume.validate!(input[:volume], context: "#{context}[:volume]") unless input[:volume].nil?
      end
    end

    class BackupBeingCopied
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BackupBeingCopied, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:backup_id], ::String, context: "#{context}[:backup_id]")
      end
    end

    class BackupFailureDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BackupFailureDetails, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BackupIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class BackupInProgress
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BackupInProgress, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BackupNotFound
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BackupNotFound, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BackupRestoring
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BackupRestoring, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:file_system_id], ::String, context: "#{context}[:file_system_id]")
      end
    end

    class Backups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Backup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BadRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BadRequest, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CancelDataRepositoryTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelDataRepositoryTaskInput, context: context)
        Hearth::Validator.validate!(input[:task_id], ::String, context: "#{context}[:task_id]")
      end
    end

    class CancelDataRepositoryTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelDataRepositoryTaskOutput, context: context)
        Hearth::Validator.validate!(input[:lifecycle], ::String, context: "#{context}[:lifecycle]")
        Hearth::Validator.validate!(input[:task_id], ::String, context: "#{context}[:task_id]")
      end
    end

    class CompletionReport
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CompletionReport, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Hearth::Validator.validate!(input[:scope], ::String, context: "#{context}[:scope]")
      end
    end

    class CopyBackupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CopyBackupInput, context: context)
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:source_backup_id], ::String, context: "#{context}[:source_backup_id]")
        Hearth::Validator.validate!(input[:source_region], ::String, context: "#{context}[:source_region]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:copy_tags], ::TrueClass, ::FalseClass, context: "#{context}[:copy_tags]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CopyBackupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CopyBackupOutput, context: context)
        Validators::Backup.validate!(input[:backup], context: "#{context}[:backup]") unless input[:backup].nil?
      end
    end

    class CreateBackupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBackupInput, context: context)
        Hearth::Validator.validate!(input[:file_system_id], ::String, context: "#{context}[:file_system_id]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:volume_id], ::String, context: "#{context}[:volume_id]")
      end
    end

    class CreateBackupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBackupOutput, context: context)
        Validators::Backup.validate!(input[:backup], context: "#{context}[:backup]") unless input[:backup].nil?
      end
    end

    class CreateDataRepositoryAssociationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDataRepositoryAssociationInput, context: context)
        Hearth::Validator.validate!(input[:file_system_id], ::String, context: "#{context}[:file_system_id]")
        Hearth::Validator.validate!(input[:file_system_path], ::String, context: "#{context}[:file_system_path]")
        Hearth::Validator.validate!(input[:data_repository_path], ::String, context: "#{context}[:data_repository_path]")
        Hearth::Validator.validate!(input[:batch_import_meta_data_on_create], ::TrueClass, ::FalseClass, context: "#{context}[:batch_import_meta_data_on_create]")
        Hearth::Validator.validate!(input[:imported_file_chunk_size], ::Integer, context: "#{context}[:imported_file_chunk_size]")
        Validators::S3DataRepositoryConfiguration.validate!(input[:s3], context: "#{context}[:s3]") unless input[:s3].nil?
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateDataRepositoryAssociationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDataRepositoryAssociationOutput, context: context)
        Validators::DataRepositoryAssociation.validate!(input[:association], context: "#{context}[:association]") unless input[:association].nil?
      end
    end

    class CreateDataRepositoryTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDataRepositoryTaskInput, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Validators::DataRepositoryTaskPaths.validate!(input[:paths], context: "#{context}[:paths]") unless input[:paths].nil?
        Hearth::Validator.validate!(input[:file_system_id], ::String, context: "#{context}[:file_system_id]")
        Validators::CompletionReport.validate!(input[:report], context: "#{context}[:report]") unless input[:report].nil?
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateDataRepositoryTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDataRepositoryTaskOutput, context: context)
        Validators::DataRepositoryTask.validate!(input[:data_repository_task], context: "#{context}[:data_repository_task]") unless input[:data_repository_task].nil?
      end
    end

    class CreateFileSystemFromBackupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFileSystemFromBackupInput, context: context)
        Hearth::Validator.validate!(input[:backup_id], ::String, context: "#{context}[:backup_id]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Validators::SubnetIds.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        Validators::SecurityGroupIds.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::CreateFileSystemWindowsConfiguration.validate!(input[:windows_configuration], context: "#{context}[:windows_configuration]") unless input[:windows_configuration].nil?
        Validators::CreateFileSystemLustreConfiguration.validate!(input[:lustre_configuration], context: "#{context}[:lustre_configuration]") unless input[:lustre_configuration].nil?
        Hearth::Validator.validate!(input[:storage_type], ::String, context: "#{context}[:storage_type]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:file_system_type_version], ::String, context: "#{context}[:file_system_type_version]")
        Validators::CreateFileSystemOpenZFSConfiguration.validate!(input[:open_zfs_configuration], context: "#{context}[:open_zfs_configuration]") unless input[:open_zfs_configuration].nil?
      end
    end

    class CreateFileSystemFromBackupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFileSystemFromBackupOutput, context: context)
        Validators::FileSystem.validate!(input[:file_system], context: "#{context}[:file_system]") unless input[:file_system].nil?
      end
    end

    class CreateFileSystemInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFileSystemInput, context: context)
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:file_system_type], ::String, context: "#{context}[:file_system_type]")
        Hearth::Validator.validate!(input[:storage_capacity], ::Integer, context: "#{context}[:storage_capacity]")
        Hearth::Validator.validate!(input[:storage_type], ::String, context: "#{context}[:storage_type]")
        Validators::SubnetIds.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        Validators::SecurityGroupIds.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Validators::CreateFileSystemWindowsConfiguration.validate!(input[:windows_configuration], context: "#{context}[:windows_configuration]") unless input[:windows_configuration].nil?
        Validators::CreateFileSystemLustreConfiguration.validate!(input[:lustre_configuration], context: "#{context}[:lustre_configuration]") unless input[:lustre_configuration].nil?
        Validators::CreateFileSystemOntapConfiguration.validate!(input[:ontap_configuration], context: "#{context}[:ontap_configuration]") unless input[:ontap_configuration].nil?
        Hearth::Validator.validate!(input[:file_system_type_version], ::String, context: "#{context}[:file_system_type_version]")
        Validators::CreateFileSystemOpenZFSConfiguration.validate!(input[:open_zfs_configuration], context: "#{context}[:open_zfs_configuration]") unless input[:open_zfs_configuration].nil?
      end
    end

    class CreateFileSystemLustreConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFileSystemLustreConfiguration, context: context)
        Hearth::Validator.validate!(input[:weekly_maintenance_start_time], ::String, context: "#{context}[:weekly_maintenance_start_time]")
        Hearth::Validator.validate!(input[:import_path], ::String, context: "#{context}[:import_path]")
        Hearth::Validator.validate!(input[:export_path], ::String, context: "#{context}[:export_path]")
        Hearth::Validator.validate!(input[:imported_file_chunk_size], ::Integer, context: "#{context}[:imported_file_chunk_size]")
        Hearth::Validator.validate!(input[:deployment_type], ::String, context: "#{context}[:deployment_type]")
        Hearth::Validator.validate!(input[:auto_import_policy], ::String, context: "#{context}[:auto_import_policy]")
        Hearth::Validator.validate!(input[:per_unit_storage_throughput], ::Integer, context: "#{context}[:per_unit_storage_throughput]")
        Hearth::Validator.validate!(input[:daily_automatic_backup_start_time], ::String, context: "#{context}[:daily_automatic_backup_start_time]")
        Hearth::Validator.validate!(input[:automatic_backup_retention_days], ::Integer, context: "#{context}[:automatic_backup_retention_days]")
        Hearth::Validator.validate!(input[:copy_tags_to_backups], ::TrueClass, ::FalseClass, context: "#{context}[:copy_tags_to_backups]")
        Hearth::Validator.validate!(input[:drive_cache_type], ::String, context: "#{context}[:drive_cache_type]")
        Hearth::Validator.validate!(input[:data_compression_type], ::String, context: "#{context}[:data_compression_type]")
        Validators::LustreLogCreateConfiguration.validate!(input[:log_configuration], context: "#{context}[:log_configuration]") unless input[:log_configuration].nil?
        Validators::LustreRootSquashConfiguration.validate!(input[:root_squash_configuration], context: "#{context}[:root_squash_configuration]") unless input[:root_squash_configuration].nil?
      end
    end

    class CreateFileSystemOntapConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFileSystemOntapConfiguration, context: context)
        Hearth::Validator.validate!(input[:automatic_backup_retention_days], ::Integer, context: "#{context}[:automatic_backup_retention_days]")
        Hearth::Validator.validate!(input[:daily_automatic_backup_start_time], ::String, context: "#{context}[:daily_automatic_backup_start_time]")
        Hearth::Validator.validate!(input[:deployment_type], ::String, context: "#{context}[:deployment_type]")
        Hearth::Validator.validate!(input[:endpoint_ip_address_range], ::String, context: "#{context}[:endpoint_ip_address_range]")
        Hearth::Validator.validate!(input[:fsx_admin_password], ::String, context: "#{context}[:fsx_admin_password]")
        Validators::DiskIopsConfiguration.validate!(input[:disk_iops_configuration], context: "#{context}[:disk_iops_configuration]") unless input[:disk_iops_configuration].nil?
        Hearth::Validator.validate!(input[:preferred_subnet_id], ::String, context: "#{context}[:preferred_subnet_id]")
        Validators::RouteTableIds.validate!(input[:route_table_ids], context: "#{context}[:route_table_ids]") unless input[:route_table_ids].nil?
        Hearth::Validator.validate!(input[:throughput_capacity], ::Integer, context: "#{context}[:throughput_capacity]")
        Hearth::Validator.validate!(input[:weekly_maintenance_start_time], ::String, context: "#{context}[:weekly_maintenance_start_time]")
      end
    end

    class CreateFileSystemOpenZFSConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFileSystemOpenZFSConfiguration, context: context)
        Hearth::Validator.validate!(input[:automatic_backup_retention_days], ::Integer, context: "#{context}[:automatic_backup_retention_days]")
        Hearth::Validator.validate!(input[:copy_tags_to_backups], ::TrueClass, ::FalseClass, context: "#{context}[:copy_tags_to_backups]")
        Hearth::Validator.validate!(input[:copy_tags_to_volumes], ::TrueClass, ::FalseClass, context: "#{context}[:copy_tags_to_volumes]")
        Hearth::Validator.validate!(input[:daily_automatic_backup_start_time], ::String, context: "#{context}[:daily_automatic_backup_start_time]")
        Hearth::Validator.validate!(input[:deployment_type], ::String, context: "#{context}[:deployment_type]")
        Hearth::Validator.validate!(input[:throughput_capacity], ::Integer, context: "#{context}[:throughput_capacity]")
        Hearth::Validator.validate!(input[:weekly_maintenance_start_time], ::String, context: "#{context}[:weekly_maintenance_start_time]")
        Validators::DiskIopsConfiguration.validate!(input[:disk_iops_configuration], context: "#{context}[:disk_iops_configuration]") unless input[:disk_iops_configuration].nil?
        Validators::OpenZFSCreateRootVolumeConfiguration.validate!(input[:root_volume_configuration], context: "#{context}[:root_volume_configuration]") unless input[:root_volume_configuration].nil?
      end
    end

    class CreateFileSystemOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFileSystemOutput, context: context)
        Validators::FileSystem.validate!(input[:file_system], context: "#{context}[:file_system]") unless input[:file_system].nil?
      end
    end

    class CreateFileSystemWindowsConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFileSystemWindowsConfiguration, context: context)
        Hearth::Validator.validate!(input[:active_directory_id], ::String, context: "#{context}[:active_directory_id]")
        Validators::SelfManagedActiveDirectoryConfiguration.validate!(input[:self_managed_active_directory_configuration], context: "#{context}[:self_managed_active_directory_configuration]") unless input[:self_managed_active_directory_configuration].nil?
        Hearth::Validator.validate!(input[:deployment_type], ::String, context: "#{context}[:deployment_type]")
        Hearth::Validator.validate!(input[:preferred_subnet_id], ::String, context: "#{context}[:preferred_subnet_id]")
        Hearth::Validator.validate!(input[:throughput_capacity], ::Integer, context: "#{context}[:throughput_capacity]")
        Hearth::Validator.validate!(input[:weekly_maintenance_start_time], ::String, context: "#{context}[:weekly_maintenance_start_time]")
        Hearth::Validator.validate!(input[:daily_automatic_backup_start_time], ::String, context: "#{context}[:daily_automatic_backup_start_time]")
        Hearth::Validator.validate!(input[:automatic_backup_retention_days], ::Integer, context: "#{context}[:automatic_backup_retention_days]")
        Hearth::Validator.validate!(input[:copy_tags_to_backups], ::TrueClass, ::FalseClass, context: "#{context}[:copy_tags_to_backups]")
        Validators::AlternateDNSNames.validate!(input[:aliases], context: "#{context}[:aliases]") unless input[:aliases].nil?
        Validators::WindowsAuditLogCreateConfiguration.validate!(input[:audit_log_configuration], context: "#{context}[:audit_log_configuration]") unless input[:audit_log_configuration].nil?
      end
    end

    class CreateOntapVolumeConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateOntapVolumeConfiguration, context: context)
        Hearth::Validator.validate!(input[:junction_path], ::String, context: "#{context}[:junction_path]")
        Hearth::Validator.validate!(input[:security_style], ::String, context: "#{context}[:security_style]")
        Hearth::Validator.validate!(input[:size_in_megabytes], ::Integer, context: "#{context}[:size_in_megabytes]")
        Hearth::Validator.validate!(input[:storage_efficiency_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:storage_efficiency_enabled]")
        Hearth::Validator.validate!(input[:storage_virtual_machine_id], ::String, context: "#{context}[:storage_virtual_machine_id]")
        Validators::TieringPolicy.validate!(input[:tiering_policy], context: "#{context}[:tiering_policy]") unless input[:tiering_policy].nil?
      end
    end

    class CreateOpenZFSOriginSnapshotConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateOpenZFSOriginSnapshotConfiguration, context: context)
        Hearth::Validator.validate!(input[:snapshot_arn], ::String, context: "#{context}[:snapshot_arn]")
        Hearth::Validator.validate!(input[:copy_strategy], ::String, context: "#{context}[:copy_strategy]")
      end
    end

    class CreateOpenZFSVolumeConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateOpenZFSVolumeConfiguration, context: context)
        Hearth::Validator.validate!(input[:parent_volume_id], ::String, context: "#{context}[:parent_volume_id]")
        Hearth::Validator.validate!(input[:storage_capacity_reservation_gi_b], ::Integer, context: "#{context}[:storage_capacity_reservation_gi_b]")
        Hearth::Validator.validate!(input[:storage_capacity_quota_gi_b], ::Integer, context: "#{context}[:storage_capacity_quota_gi_b]")
        Hearth::Validator.validate!(input[:record_size_ki_b], ::Integer, context: "#{context}[:record_size_ki_b]")
        Hearth::Validator.validate!(input[:data_compression_type], ::String, context: "#{context}[:data_compression_type]")
        Hearth::Validator.validate!(input[:copy_tags_to_snapshots], ::TrueClass, ::FalseClass, context: "#{context}[:copy_tags_to_snapshots]")
        Validators::CreateOpenZFSOriginSnapshotConfiguration.validate!(input[:origin_snapshot], context: "#{context}[:origin_snapshot]") unless input[:origin_snapshot].nil?
        Hearth::Validator.validate!(input[:read_only], ::TrueClass, ::FalseClass, context: "#{context}[:read_only]")
        Validators::OpenZFSNfsExports.validate!(input[:nfs_exports], context: "#{context}[:nfs_exports]") unless input[:nfs_exports].nil?
        Validators::OpenZFSUserAndGroupQuotas.validate!(input[:user_and_group_quotas], context: "#{context}[:user_and_group_quotas]") unless input[:user_and_group_quotas].nil?
      end
    end

    class CreateSnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSnapshotInput, context: context)
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:volume_id], ::String, context: "#{context}[:volume_id]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateSnapshotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSnapshotOutput, context: context)
        Validators::Snapshot.validate!(input[:snapshot], context: "#{context}[:snapshot]") unless input[:snapshot].nil?
      end
    end

    class CreateStorageVirtualMachineInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStorageVirtualMachineInput, context: context)
        Validators::CreateSvmActiveDirectoryConfiguration.validate!(input[:active_directory_configuration], context: "#{context}[:active_directory_configuration]") unless input[:active_directory_configuration].nil?
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:file_system_id], ::String, context: "#{context}[:file_system_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:svm_admin_password], ::String, context: "#{context}[:svm_admin_password]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:root_volume_security_style], ::String, context: "#{context}[:root_volume_security_style]")
      end
    end

    class CreateStorageVirtualMachineOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStorageVirtualMachineOutput, context: context)
        Validators::StorageVirtualMachine.validate!(input[:storage_virtual_machine], context: "#{context}[:storage_virtual_machine]") unless input[:storage_virtual_machine].nil?
      end
    end

    class CreateSvmActiveDirectoryConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSvmActiveDirectoryConfiguration, context: context)
        Hearth::Validator.validate!(input[:net_bios_name], ::String, context: "#{context}[:net_bios_name]")
        Validators::SelfManagedActiveDirectoryConfiguration.validate!(input[:self_managed_active_directory_configuration], context: "#{context}[:self_managed_active_directory_configuration]") unless input[:self_managed_active_directory_configuration].nil?
      end
    end

    class CreateVolumeFromBackupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVolumeFromBackupInput, context: context)
        Hearth::Validator.validate!(input[:backup_id], ::String, context: "#{context}[:backup_id]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::CreateOntapVolumeConfiguration.validate!(input[:ontap_configuration], context: "#{context}[:ontap_configuration]") unless input[:ontap_configuration].nil?
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateVolumeFromBackupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVolumeFromBackupOutput, context: context)
        Validators::Volume.validate!(input[:volume], context: "#{context}[:volume]") unless input[:volume].nil?
      end
    end

    class CreateVolumeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVolumeInput, context: context)
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:volume_type], ::String, context: "#{context}[:volume_type]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::CreateOntapVolumeConfiguration.validate!(input[:ontap_configuration], context: "#{context}[:ontap_configuration]") unless input[:ontap_configuration].nil?
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::CreateOpenZFSVolumeConfiguration.validate!(input[:open_zfs_configuration], context: "#{context}[:open_zfs_configuration]") unless input[:open_zfs_configuration].nil?
      end
    end

    class CreateVolumeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVolumeOutput, context: context)
        Validators::Volume.validate!(input[:volume], context: "#{context}[:volume]") unless input[:volume].nil?
      end
    end

    class DataRepositoryAssociation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataRepositoryAssociation, context: context)
        Hearth::Validator.validate!(input[:association_id], ::String, context: "#{context}[:association_id]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:file_system_id], ::String, context: "#{context}[:file_system_id]")
        Hearth::Validator.validate!(input[:lifecycle], ::String, context: "#{context}[:lifecycle]")
        Validators::DataRepositoryFailureDetails.validate!(input[:failure_details], context: "#{context}[:failure_details]") unless input[:failure_details].nil?
        Hearth::Validator.validate!(input[:file_system_path], ::String, context: "#{context}[:file_system_path]")
        Hearth::Validator.validate!(input[:data_repository_path], ::String, context: "#{context}[:data_repository_path]")
        Hearth::Validator.validate!(input[:batch_import_meta_data_on_create], ::TrueClass, ::FalseClass, context: "#{context}[:batch_import_meta_data_on_create]")
        Hearth::Validator.validate!(input[:imported_file_chunk_size], ::Integer, context: "#{context}[:imported_file_chunk_size]")
        Validators::S3DataRepositoryConfiguration.validate!(input[:s3], context: "#{context}[:s3]") unless input[:s3].nil?
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
      end
    end

    class DataRepositoryAssociationIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DataRepositoryAssociationNotFound
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataRepositoryAssociationNotFound, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DataRepositoryAssociations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DataRepositoryAssociation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DataRepositoryConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataRepositoryConfiguration, context: context)
        Hearth::Validator.validate!(input[:lifecycle], ::String, context: "#{context}[:lifecycle]")
        Hearth::Validator.validate!(input[:import_path], ::String, context: "#{context}[:import_path]")
        Hearth::Validator.validate!(input[:export_path], ::String, context: "#{context}[:export_path]")
        Hearth::Validator.validate!(input[:imported_file_chunk_size], ::Integer, context: "#{context}[:imported_file_chunk_size]")
        Hearth::Validator.validate!(input[:auto_import_policy], ::String, context: "#{context}[:auto_import_policy]")
        Validators::DataRepositoryFailureDetails.validate!(input[:failure_details], context: "#{context}[:failure_details]") unless input[:failure_details].nil?
      end
    end

    class DataRepositoryFailureDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataRepositoryFailureDetails, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DataRepositoryTask
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataRepositoryTask, context: context)
        Hearth::Validator.validate!(input[:task_id], ::String, context: "#{context}[:task_id]")
        Hearth::Validator.validate!(input[:lifecycle], ::String, context: "#{context}[:lifecycle]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:file_system_id], ::String, context: "#{context}[:file_system_id]")
        Validators::DataRepositoryTaskPaths.validate!(input[:paths], context: "#{context}[:paths]") unless input[:paths].nil?
        Validators::DataRepositoryTaskFailureDetails.validate!(input[:failure_details], context: "#{context}[:failure_details]") unless input[:failure_details].nil?
        Validators::DataRepositoryTaskStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
        Validators::CompletionReport.validate!(input[:report], context: "#{context}[:report]") unless input[:report].nil?
      end
    end

    class DataRepositoryTaskEnded
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataRepositoryTaskEnded, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DataRepositoryTaskExecuting
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataRepositoryTaskExecuting, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DataRepositoryTaskFailureDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataRepositoryTaskFailureDetails, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DataRepositoryTaskFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataRepositoryTaskFilter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::DataRepositoryTaskFilterValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class DataRepositoryTaskFilterValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DataRepositoryTaskFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DataRepositoryTaskFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DataRepositoryTaskNotFound
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataRepositoryTaskNotFound, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DataRepositoryTaskPaths
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DataRepositoryTaskStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataRepositoryTaskStatus, context: context)
        Hearth::Validator.validate!(input[:total_count], ::Integer, context: "#{context}[:total_count]")
        Hearth::Validator.validate!(input[:succeeded_count], ::Integer, context: "#{context}[:succeeded_count]")
        Hearth::Validator.validate!(input[:failed_count], ::Integer, context: "#{context}[:failed_count]")
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
      end
    end

    class DataRepositoryTasks
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DataRepositoryTask.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeleteBackupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBackupInput, context: context)
        Hearth::Validator.validate!(input[:backup_id], ::String, context: "#{context}[:backup_id]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class DeleteBackupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBackupOutput, context: context)
        Hearth::Validator.validate!(input[:backup_id], ::String, context: "#{context}[:backup_id]")
        Hearth::Validator.validate!(input[:lifecycle], ::String, context: "#{context}[:lifecycle]")
      end
    end

    class DeleteDataRepositoryAssociationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDataRepositoryAssociationInput, context: context)
        Hearth::Validator.validate!(input[:association_id], ::String, context: "#{context}[:association_id]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:delete_data_in_file_system], ::TrueClass, ::FalseClass, context: "#{context}[:delete_data_in_file_system]")
      end
    end

    class DeleteDataRepositoryAssociationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDataRepositoryAssociationOutput, context: context)
        Hearth::Validator.validate!(input[:association_id], ::String, context: "#{context}[:association_id]")
        Hearth::Validator.validate!(input[:lifecycle], ::String, context: "#{context}[:lifecycle]")
        Hearth::Validator.validate!(input[:delete_data_in_file_system], ::TrueClass, ::FalseClass, context: "#{context}[:delete_data_in_file_system]")
      end
    end

    class DeleteFileSystemInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFileSystemInput, context: context)
        Hearth::Validator.validate!(input[:file_system_id], ::String, context: "#{context}[:file_system_id]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Validators::DeleteFileSystemWindowsConfiguration.validate!(input[:windows_configuration], context: "#{context}[:windows_configuration]") unless input[:windows_configuration].nil?
        Validators::DeleteFileSystemLustreConfiguration.validate!(input[:lustre_configuration], context: "#{context}[:lustre_configuration]") unless input[:lustre_configuration].nil?
        Validators::DeleteFileSystemOpenZFSConfiguration.validate!(input[:open_zfs_configuration], context: "#{context}[:open_zfs_configuration]") unless input[:open_zfs_configuration].nil?
      end
    end

    class DeleteFileSystemLustreConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFileSystemLustreConfiguration, context: context)
        Hearth::Validator.validate!(input[:skip_final_backup], ::TrueClass, ::FalseClass, context: "#{context}[:skip_final_backup]")
        Validators::Tags.validate!(input[:final_backup_tags], context: "#{context}[:final_backup_tags]") unless input[:final_backup_tags].nil?
      end
    end

    class DeleteFileSystemLustreResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFileSystemLustreResponse, context: context)
        Hearth::Validator.validate!(input[:final_backup_id], ::String, context: "#{context}[:final_backup_id]")
        Validators::Tags.validate!(input[:final_backup_tags], context: "#{context}[:final_backup_tags]") unless input[:final_backup_tags].nil?
      end
    end

    class DeleteFileSystemOpenZFSConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFileSystemOpenZFSConfiguration, context: context)
        Hearth::Validator.validate!(input[:skip_final_backup], ::TrueClass, ::FalseClass, context: "#{context}[:skip_final_backup]")
        Validators::Tags.validate!(input[:final_backup_tags], context: "#{context}[:final_backup_tags]") unless input[:final_backup_tags].nil?
        Validators::DeleteFileSystemOpenZFSOptions.validate!(input[:options], context: "#{context}[:options]") unless input[:options].nil?
      end
    end

    class DeleteFileSystemOpenZFSOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DeleteFileSystemOpenZFSResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFileSystemOpenZFSResponse, context: context)
        Hearth::Validator.validate!(input[:final_backup_id], ::String, context: "#{context}[:final_backup_id]")
        Validators::Tags.validate!(input[:final_backup_tags], context: "#{context}[:final_backup_tags]") unless input[:final_backup_tags].nil?
      end
    end

    class DeleteFileSystemOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFileSystemOutput, context: context)
        Hearth::Validator.validate!(input[:file_system_id], ::String, context: "#{context}[:file_system_id]")
        Hearth::Validator.validate!(input[:lifecycle], ::String, context: "#{context}[:lifecycle]")
        Validators::DeleteFileSystemWindowsResponse.validate!(input[:windows_response], context: "#{context}[:windows_response]") unless input[:windows_response].nil?
        Validators::DeleteFileSystemLustreResponse.validate!(input[:lustre_response], context: "#{context}[:lustre_response]") unless input[:lustre_response].nil?
        Validators::DeleteFileSystemOpenZFSResponse.validate!(input[:open_zfs_response], context: "#{context}[:open_zfs_response]") unless input[:open_zfs_response].nil?
      end
    end

    class DeleteFileSystemWindowsConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFileSystemWindowsConfiguration, context: context)
        Hearth::Validator.validate!(input[:skip_final_backup], ::TrueClass, ::FalseClass, context: "#{context}[:skip_final_backup]")
        Validators::Tags.validate!(input[:final_backup_tags], context: "#{context}[:final_backup_tags]") unless input[:final_backup_tags].nil?
      end
    end

    class DeleteFileSystemWindowsResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFileSystemWindowsResponse, context: context)
        Hearth::Validator.validate!(input[:final_backup_id], ::String, context: "#{context}[:final_backup_id]")
        Validators::Tags.validate!(input[:final_backup_tags], context: "#{context}[:final_backup_tags]") unless input[:final_backup_tags].nil?
      end
    end

    class DeleteOpenZFSVolumeOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DeleteSnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSnapshotInput, context: context)
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:snapshot_id], ::String, context: "#{context}[:snapshot_id]")
      end
    end

    class DeleteSnapshotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSnapshotOutput, context: context)
        Hearth::Validator.validate!(input[:snapshot_id], ::String, context: "#{context}[:snapshot_id]")
        Hearth::Validator.validate!(input[:lifecycle], ::String, context: "#{context}[:lifecycle]")
      end
    end

    class DeleteStorageVirtualMachineInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteStorageVirtualMachineInput, context: context)
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:storage_virtual_machine_id], ::String, context: "#{context}[:storage_virtual_machine_id]")
      end
    end

    class DeleteStorageVirtualMachineOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteStorageVirtualMachineOutput, context: context)
        Hearth::Validator.validate!(input[:storage_virtual_machine_id], ::String, context: "#{context}[:storage_virtual_machine_id]")
        Hearth::Validator.validate!(input[:lifecycle], ::String, context: "#{context}[:lifecycle]")
      end
    end

    class DeleteVolumeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVolumeInput, context: context)
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:volume_id], ::String, context: "#{context}[:volume_id]")
        Validators::DeleteVolumeOntapConfiguration.validate!(input[:ontap_configuration], context: "#{context}[:ontap_configuration]") unless input[:ontap_configuration].nil?
        Validators::DeleteVolumeOpenZFSConfiguration.validate!(input[:open_zfs_configuration], context: "#{context}[:open_zfs_configuration]") unless input[:open_zfs_configuration].nil?
      end
    end

    class DeleteVolumeOntapConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVolumeOntapConfiguration, context: context)
        Hearth::Validator.validate!(input[:skip_final_backup], ::TrueClass, ::FalseClass, context: "#{context}[:skip_final_backup]")
        Validators::Tags.validate!(input[:final_backup_tags], context: "#{context}[:final_backup_tags]") unless input[:final_backup_tags].nil?
      end
    end

    class DeleteVolumeOntapResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVolumeOntapResponse, context: context)
        Hearth::Validator.validate!(input[:final_backup_id], ::String, context: "#{context}[:final_backup_id]")
        Validators::Tags.validate!(input[:final_backup_tags], context: "#{context}[:final_backup_tags]") unless input[:final_backup_tags].nil?
      end
    end

    class DeleteVolumeOpenZFSConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVolumeOpenZFSConfiguration, context: context)
        Validators::DeleteOpenZFSVolumeOptions.validate!(input[:options], context: "#{context}[:options]") unless input[:options].nil?
      end
    end

    class DeleteVolumeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVolumeOutput, context: context)
        Hearth::Validator.validate!(input[:volume_id], ::String, context: "#{context}[:volume_id]")
        Hearth::Validator.validate!(input[:lifecycle], ::String, context: "#{context}[:lifecycle]")
        Validators::DeleteVolumeOntapResponse.validate!(input[:ontap_response], context: "#{context}[:ontap_response]") unless input[:ontap_response].nil?
      end
    end

    class DescribeBackupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBackupsInput, context: context)
        Validators::BackupIds.validate!(input[:backup_ids], context: "#{context}[:backup_ids]") unless input[:backup_ids].nil?
        Validators::Filters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeBackupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBackupsOutput, context: context)
        Validators::Backups.validate!(input[:backups], context: "#{context}[:backups]") unless input[:backups].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeDataRepositoryAssociationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDataRepositoryAssociationsInput, context: context)
        Validators::DataRepositoryAssociationIds.validate!(input[:association_ids], context: "#{context}[:association_ids]") unless input[:association_ids].nil?
        Validators::Filters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeDataRepositoryAssociationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDataRepositoryAssociationsOutput, context: context)
        Validators::DataRepositoryAssociations.validate!(input[:associations], context: "#{context}[:associations]") unless input[:associations].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeDataRepositoryTasksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDataRepositoryTasksInput, context: context)
        Validators::TaskIds.validate!(input[:task_ids], context: "#{context}[:task_ids]") unless input[:task_ids].nil?
        Validators::DataRepositoryTaskFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeDataRepositoryTasksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDataRepositoryTasksOutput, context: context)
        Validators::DataRepositoryTasks.validate!(input[:data_repository_tasks], context: "#{context}[:data_repository_tasks]") unless input[:data_repository_tasks].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeFileSystemAliasesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFileSystemAliasesInput, context: context)
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:file_system_id], ::String, context: "#{context}[:file_system_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeFileSystemAliasesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFileSystemAliasesOutput, context: context)
        Validators::Aliases.validate!(input[:aliases], context: "#{context}[:aliases]") unless input[:aliases].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeFileSystemsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFileSystemsInput, context: context)
        Validators::FileSystemIds.validate!(input[:file_system_ids], context: "#{context}[:file_system_ids]") unless input[:file_system_ids].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeFileSystemsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFileSystemsOutput, context: context)
        Validators::FileSystems.validate!(input[:file_systems], context: "#{context}[:file_systems]") unless input[:file_systems].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeSnapshotsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSnapshotsInput, context: context)
        Validators::SnapshotIds.validate!(input[:snapshot_ids], context: "#{context}[:snapshot_ids]") unless input[:snapshot_ids].nil?
        Validators::SnapshotFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeSnapshotsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSnapshotsOutput, context: context)
        Validators::Snapshots.validate!(input[:snapshots], context: "#{context}[:snapshots]") unless input[:snapshots].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeStorageVirtualMachinesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStorageVirtualMachinesInput, context: context)
        Validators::StorageVirtualMachineIds.validate!(input[:storage_virtual_machine_ids], context: "#{context}[:storage_virtual_machine_ids]") unless input[:storage_virtual_machine_ids].nil?
        Validators::StorageVirtualMachineFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeStorageVirtualMachinesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStorageVirtualMachinesOutput, context: context)
        Validators::StorageVirtualMachines.validate!(input[:storage_virtual_machines], context: "#{context}[:storage_virtual_machines]") unless input[:storage_virtual_machines].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeVolumesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeVolumesInput, context: context)
        Validators::VolumeIds.validate!(input[:volume_ids], context: "#{context}[:volume_ids]") unless input[:volume_ids].nil?
        Validators::VolumeFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeVolumesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeVolumesOutput, context: context)
        Validators::Volumes.validate!(input[:volumes], context: "#{context}[:volumes]") unless input[:volumes].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DisassociateFileSystemAliasesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateFileSystemAliasesInput, context: context)
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:file_system_id], ::String, context: "#{context}[:file_system_id]")
        Validators::AlternateDNSNames.validate!(input[:aliases], context: "#{context}[:aliases]") unless input[:aliases].nil?
      end
    end

    class DisassociateFileSystemAliasesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateFileSystemAliasesOutput, context: context)
        Validators::Aliases.validate!(input[:aliases], context: "#{context}[:aliases]") unless input[:aliases].nil?
      end
    end

    class DiskIopsConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DiskIopsConfiguration, context: context)
        Hearth::Validator.validate!(input[:mode], ::String, context: "#{context}[:mode]")
        Hearth::Validator.validate!(input[:iops], ::Integer, context: "#{context}[:iops]")
      end
    end

    class DnsIps
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class EventTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class FileSystem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FileSystem, context: context)
        Hearth::Validator.validate!(input[:owner_id], ::String, context: "#{context}[:owner_id]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:file_system_id], ::String, context: "#{context}[:file_system_id]")
        Hearth::Validator.validate!(input[:file_system_type], ::String, context: "#{context}[:file_system_type]")
        Hearth::Validator.validate!(input[:lifecycle], ::String, context: "#{context}[:lifecycle]")
        Validators::FileSystemFailureDetails.validate!(input[:failure_details], context: "#{context}[:failure_details]") unless input[:failure_details].nil?
        Hearth::Validator.validate!(input[:storage_capacity], ::Integer, context: "#{context}[:storage_capacity]")
        Hearth::Validator.validate!(input[:storage_type], ::String, context: "#{context}[:storage_type]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Validators::SubnetIds.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        Validators::NetworkInterfaceIds.validate!(input[:network_interface_ids], context: "#{context}[:network_interface_ids]") unless input[:network_interface_ids].nil?
        Hearth::Validator.validate!(input[:dns_name], ::String, context: "#{context}[:dns_name]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::WindowsFileSystemConfiguration.validate!(input[:windows_configuration], context: "#{context}[:windows_configuration]") unless input[:windows_configuration].nil?
        Validators::LustreFileSystemConfiguration.validate!(input[:lustre_configuration], context: "#{context}[:lustre_configuration]") unless input[:lustre_configuration].nil?
        Validators::AdministrativeActions.validate!(input[:administrative_actions], context: "#{context}[:administrative_actions]") unless input[:administrative_actions].nil?
        Validators::OntapFileSystemConfiguration.validate!(input[:ontap_configuration], context: "#{context}[:ontap_configuration]") unless input[:ontap_configuration].nil?
        Hearth::Validator.validate!(input[:file_system_type_version], ::String, context: "#{context}[:file_system_type_version]")
        Validators::OpenZFSFileSystemConfiguration.validate!(input[:open_zfs_configuration], context: "#{context}[:open_zfs_configuration]") unless input[:open_zfs_configuration].nil?
      end
    end

    class FileSystemEndpoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FileSystemEndpoint, context: context)
        Hearth::Validator.validate!(input[:dns_name], ::String, context: "#{context}[:dns_name]")
        Validators::OntapEndpointIpAddresses.validate!(input[:ip_addresses], context: "#{context}[:ip_addresses]") unless input[:ip_addresses].nil?
      end
    end

    class FileSystemEndpoints
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FileSystemEndpoints, context: context)
        Validators::FileSystemEndpoint.validate!(input[:intercluster], context: "#{context}[:intercluster]") unless input[:intercluster].nil?
        Validators::FileSystemEndpoint.validate!(input[:management], context: "#{context}[:management]") unless input[:management].nil?
      end
    end

    class FileSystemFailureDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FileSystemFailureDetails, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class FileSystemIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class FileSystemMaintenanceOperations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class FileSystemNotFound
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FileSystemNotFound, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class FileSystems
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FileSystem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Filter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Filter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::FilterValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class FilterValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Filters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Filter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class IncompatibleParameterError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IncompatibleParameterError, context: context)
        Hearth::Validator.validate!(input[:parameter], ::String, context: "#{context}[:parameter]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class IncompatibleRegionForMultiAZ
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IncompatibleRegionForMultiAZ, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InternalServerError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerError, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidDataRepositoryType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidDataRepositoryType, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidDestinationKmsKey
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidDestinationKmsKey, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidExportPath
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidExportPath, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidImportPath
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidImportPath, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidNetworkSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidNetworkSettings, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:invalid_subnet_id], ::String, context: "#{context}[:invalid_subnet_id]")
        Hearth::Validator.validate!(input[:invalid_security_group_id], ::String, context: "#{context}[:invalid_security_group_id]")
        Hearth::Validator.validate!(input[:invalid_route_table_id], ::String, context: "#{context}[:invalid_route_table_id]")
      end
    end

    class InvalidPerUnitStorageThroughput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidPerUnitStorageThroughput, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRegion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRegion, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidSourceKmsKey
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidSourceKmsKey, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LifecycleTransitionReason
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LifecycleTransitionReason, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class LustreFileSystemConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LustreFileSystemConfiguration, context: context)
        Hearth::Validator.validate!(input[:weekly_maintenance_start_time], ::String, context: "#{context}[:weekly_maintenance_start_time]")
        Validators::DataRepositoryConfiguration.validate!(input[:data_repository_configuration], context: "#{context}[:data_repository_configuration]") unless input[:data_repository_configuration].nil?
        Hearth::Validator.validate!(input[:deployment_type], ::String, context: "#{context}[:deployment_type]")
        Hearth::Validator.validate!(input[:per_unit_storage_throughput], ::Integer, context: "#{context}[:per_unit_storage_throughput]")
        Hearth::Validator.validate!(input[:mount_name], ::String, context: "#{context}[:mount_name]")
        Hearth::Validator.validate!(input[:daily_automatic_backup_start_time], ::String, context: "#{context}[:daily_automatic_backup_start_time]")
        Hearth::Validator.validate!(input[:automatic_backup_retention_days], ::Integer, context: "#{context}[:automatic_backup_retention_days]")
        Hearth::Validator.validate!(input[:copy_tags_to_backups], ::TrueClass, ::FalseClass, context: "#{context}[:copy_tags_to_backups]")
        Hearth::Validator.validate!(input[:drive_cache_type], ::String, context: "#{context}[:drive_cache_type]")
        Hearth::Validator.validate!(input[:data_compression_type], ::String, context: "#{context}[:data_compression_type]")
        Validators::LustreLogConfiguration.validate!(input[:log_configuration], context: "#{context}[:log_configuration]") unless input[:log_configuration].nil?
        Validators::LustreRootSquashConfiguration.validate!(input[:root_squash_configuration], context: "#{context}[:root_squash_configuration]") unless input[:root_squash_configuration].nil?
      end
    end

    class LustreLogConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LustreLogConfiguration, context: context)
        Hearth::Validator.validate!(input[:level], ::String, context: "#{context}[:level]")
        Hearth::Validator.validate!(input[:destination], ::String, context: "#{context}[:destination]")
      end
    end

    class LustreLogCreateConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LustreLogCreateConfiguration, context: context)
        Hearth::Validator.validate!(input[:level], ::String, context: "#{context}[:level]")
        Hearth::Validator.validate!(input[:destination], ::String, context: "#{context}[:destination]")
      end
    end

    class LustreNoSquashNids
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class LustreRootSquashConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LustreRootSquashConfiguration, context: context)
        Hearth::Validator.validate!(input[:root_squash], ::String, context: "#{context}[:root_squash]")
        Validators::LustreNoSquashNids.validate!(input[:no_squash_nids], context: "#{context}[:no_squash_nids]") unless input[:no_squash_nids].nil?
      end
    end

    class MissingFileSystemConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MissingFileSystemConfiguration, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class MissingVolumeConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MissingVolumeConfiguration, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NetworkInterfaceIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class NotServiceResourceError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotServiceResourceError, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OntapEndpointIpAddresses
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class OntapFileSystemConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OntapFileSystemConfiguration, context: context)
        Hearth::Validator.validate!(input[:automatic_backup_retention_days], ::Integer, context: "#{context}[:automatic_backup_retention_days]")
        Hearth::Validator.validate!(input[:daily_automatic_backup_start_time], ::String, context: "#{context}[:daily_automatic_backup_start_time]")
        Hearth::Validator.validate!(input[:deployment_type], ::String, context: "#{context}[:deployment_type]")
        Hearth::Validator.validate!(input[:endpoint_ip_address_range], ::String, context: "#{context}[:endpoint_ip_address_range]")
        Validators::FileSystemEndpoints.validate!(input[:endpoints], context: "#{context}[:endpoints]") unless input[:endpoints].nil?
        Validators::DiskIopsConfiguration.validate!(input[:disk_iops_configuration], context: "#{context}[:disk_iops_configuration]") unless input[:disk_iops_configuration].nil?
        Hearth::Validator.validate!(input[:preferred_subnet_id], ::String, context: "#{context}[:preferred_subnet_id]")
        Validators::RouteTableIds.validate!(input[:route_table_ids], context: "#{context}[:route_table_ids]") unless input[:route_table_ids].nil?
        Hearth::Validator.validate!(input[:throughput_capacity], ::Integer, context: "#{context}[:throughput_capacity]")
        Hearth::Validator.validate!(input[:weekly_maintenance_start_time], ::String, context: "#{context}[:weekly_maintenance_start_time]")
      end
    end

    class OntapVolumeConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OntapVolumeConfiguration, context: context)
        Hearth::Validator.validate!(input[:flex_cache_endpoint_type], ::String, context: "#{context}[:flex_cache_endpoint_type]")
        Hearth::Validator.validate!(input[:junction_path], ::String, context: "#{context}[:junction_path]")
        Hearth::Validator.validate!(input[:security_style], ::String, context: "#{context}[:security_style]")
        Hearth::Validator.validate!(input[:size_in_megabytes], ::Integer, context: "#{context}[:size_in_megabytes]")
        Hearth::Validator.validate!(input[:storage_efficiency_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:storage_efficiency_enabled]")
        Hearth::Validator.validate!(input[:storage_virtual_machine_id], ::String, context: "#{context}[:storage_virtual_machine_id]")
        Hearth::Validator.validate!(input[:storage_virtual_machine_root], ::TrueClass, ::FalseClass, context: "#{context}[:storage_virtual_machine_root]")
        Validators::TieringPolicy.validate!(input[:tiering_policy], context: "#{context}[:tiering_policy]") unless input[:tiering_policy].nil?
        Hearth::Validator.validate!(input[:uuid], ::String, context: "#{context}[:uuid]")
        Hearth::Validator.validate!(input[:ontap_volume_type], ::String, context: "#{context}[:ontap_volume_type]")
      end
    end

    class OpenZFSClientConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OpenZFSClientConfiguration, context: context)
        Hearth::Validator.validate!(input[:clients], ::String, context: "#{context}[:clients]")
        Validators::OpenZFSNfsExportOptions.validate!(input[:options], context: "#{context}[:options]") unless input[:options].nil?
      end
    end

    class OpenZFSClientConfigurations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::OpenZFSClientConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OpenZFSCreateRootVolumeConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OpenZFSCreateRootVolumeConfiguration, context: context)
        Hearth::Validator.validate!(input[:record_size_ki_b], ::Integer, context: "#{context}[:record_size_ki_b]")
        Hearth::Validator.validate!(input[:data_compression_type], ::String, context: "#{context}[:data_compression_type]")
        Validators::OpenZFSNfsExports.validate!(input[:nfs_exports], context: "#{context}[:nfs_exports]") unless input[:nfs_exports].nil?
        Validators::OpenZFSUserAndGroupQuotas.validate!(input[:user_and_group_quotas], context: "#{context}[:user_and_group_quotas]") unless input[:user_and_group_quotas].nil?
        Hearth::Validator.validate!(input[:copy_tags_to_snapshots], ::TrueClass, ::FalseClass, context: "#{context}[:copy_tags_to_snapshots]")
        Hearth::Validator.validate!(input[:read_only], ::TrueClass, ::FalseClass, context: "#{context}[:read_only]")
      end
    end

    class OpenZFSFileSystemConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OpenZFSFileSystemConfiguration, context: context)
        Hearth::Validator.validate!(input[:automatic_backup_retention_days], ::Integer, context: "#{context}[:automatic_backup_retention_days]")
        Hearth::Validator.validate!(input[:copy_tags_to_backups], ::TrueClass, ::FalseClass, context: "#{context}[:copy_tags_to_backups]")
        Hearth::Validator.validate!(input[:copy_tags_to_volumes], ::TrueClass, ::FalseClass, context: "#{context}[:copy_tags_to_volumes]")
        Hearth::Validator.validate!(input[:daily_automatic_backup_start_time], ::String, context: "#{context}[:daily_automatic_backup_start_time]")
        Hearth::Validator.validate!(input[:deployment_type], ::String, context: "#{context}[:deployment_type]")
        Hearth::Validator.validate!(input[:throughput_capacity], ::Integer, context: "#{context}[:throughput_capacity]")
        Hearth::Validator.validate!(input[:weekly_maintenance_start_time], ::String, context: "#{context}[:weekly_maintenance_start_time]")
        Validators::DiskIopsConfiguration.validate!(input[:disk_iops_configuration], context: "#{context}[:disk_iops_configuration]") unless input[:disk_iops_configuration].nil?
        Hearth::Validator.validate!(input[:root_volume_id], ::String, context: "#{context}[:root_volume_id]")
      end
    end

    class OpenZFSNfsExport
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OpenZFSNfsExport, context: context)
        Validators::OpenZFSClientConfigurations.validate!(input[:client_configurations], context: "#{context}[:client_configurations]") unless input[:client_configurations].nil?
      end
    end

    class OpenZFSNfsExportOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class OpenZFSNfsExports
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::OpenZFSNfsExport.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OpenZFSOriginSnapshotConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OpenZFSOriginSnapshotConfiguration, context: context)
        Hearth::Validator.validate!(input[:snapshot_arn], ::String, context: "#{context}[:snapshot_arn]")
        Hearth::Validator.validate!(input[:copy_strategy], ::String, context: "#{context}[:copy_strategy]")
      end
    end

    class OpenZFSUserAndGroupQuotas
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::OpenZFSUserOrGroupQuota.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OpenZFSUserOrGroupQuota
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OpenZFSUserOrGroupQuota, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:id], ::Integer, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:storage_capacity_quota_gi_b], ::Integer, context: "#{context}[:storage_capacity_quota_gi_b]")
      end
    end

    class OpenZFSVolumeConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OpenZFSVolumeConfiguration, context: context)
        Hearth::Validator.validate!(input[:parent_volume_id], ::String, context: "#{context}[:parent_volume_id]")
        Hearth::Validator.validate!(input[:volume_path], ::String, context: "#{context}[:volume_path]")
        Hearth::Validator.validate!(input[:storage_capacity_reservation_gi_b], ::Integer, context: "#{context}[:storage_capacity_reservation_gi_b]")
        Hearth::Validator.validate!(input[:storage_capacity_quota_gi_b], ::Integer, context: "#{context}[:storage_capacity_quota_gi_b]")
        Hearth::Validator.validate!(input[:record_size_ki_b], ::Integer, context: "#{context}[:record_size_ki_b]")
        Hearth::Validator.validate!(input[:data_compression_type], ::String, context: "#{context}[:data_compression_type]")
        Hearth::Validator.validate!(input[:copy_tags_to_snapshots], ::TrueClass, ::FalseClass, context: "#{context}[:copy_tags_to_snapshots]")
        Validators::OpenZFSOriginSnapshotConfiguration.validate!(input[:origin_snapshot], context: "#{context}[:origin_snapshot]") unless input[:origin_snapshot].nil?
        Hearth::Validator.validate!(input[:read_only], ::TrueClass, ::FalseClass, context: "#{context}[:read_only]")
        Validators::OpenZFSNfsExports.validate!(input[:nfs_exports], context: "#{context}[:nfs_exports]") unless input[:nfs_exports].nil?
        Validators::OpenZFSUserAndGroupQuotas.validate!(input[:user_and_group_quotas], context: "#{context}[:user_and_group_quotas]") unless input[:user_and_group_quotas].nil?
      end
    end

    class ReleaseFileSystemNfsV3LocksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReleaseFileSystemNfsV3LocksInput, context: context)
        Hearth::Validator.validate!(input[:file_system_id], ::String, context: "#{context}[:file_system_id]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class ReleaseFileSystemNfsV3LocksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReleaseFileSystemNfsV3LocksOutput, context: context)
        Validators::FileSystem.validate!(input[:file_system], context: "#{context}[:file_system]") unless input[:file_system].nil?
      end
    end

    class ResourceDoesNotSupportTagging
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceDoesNotSupportTagging, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotFound
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFound, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RestoreOpenZFSVolumeOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RestoreVolumeFromSnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreVolumeFromSnapshotInput, context: context)
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:volume_id], ::String, context: "#{context}[:volume_id]")
        Hearth::Validator.validate!(input[:snapshot_id], ::String, context: "#{context}[:snapshot_id]")
        Validators::RestoreOpenZFSVolumeOptions.validate!(input[:options], context: "#{context}[:options]") unless input[:options].nil?
      end
    end

    class RestoreVolumeFromSnapshotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreVolumeFromSnapshotOutput, context: context)
        Hearth::Validator.validate!(input[:volume_id], ::String, context: "#{context}[:volume_id]")
        Hearth::Validator.validate!(input[:lifecycle], ::String, context: "#{context}[:lifecycle]")
      end
    end

    class RouteTableIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class S3DataRepositoryConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3DataRepositoryConfiguration, context: context)
        Validators::AutoImportPolicy.validate!(input[:auto_import_policy], context: "#{context}[:auto_import_policy]") unless input[:auto_import_policy].nil?
        Validators::AutoExportPolicy.validate!(input[:auto_export_policy], context: "#{context}[:auto_export_policy]") unless input[:auto_export_policy].nil?
      end
    end

    class SecurityGroupIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SelfManagedActiveDirectoryAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SelfManagedActiveDirectoryAttributes, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:organizational_unit_distinguished_name], ::String, context: "#{context}[:organizational_unit_distinguished_name]")
        Hearth::Validator.validate!(input[:file_system_administrators_group], ::String, context: "#{context}[:file_system_administrators_group]")
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Validators::DnsIps.validate!(input[:dns_ips], context: "#{context}[:dns_ips]") unless input[:dns_ips].nil?
      end
    end

    class SelfManagedActiveDirectoryConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SelfManagedActiveDirectoryConfiguration, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:organizational_unit_distinguished_name], ::String, context: "#{context}[:organizational_unit_distinguished_name]")
        Hearth::Validator.validate!(input[:file_system_administrators_group], ::String, context: "#{context}[:file_system_administrators_group]")
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
        Validators::DnsIps.validate!(input[:dns_ips], context: "#{context}[:dns_ips]") unless input[:dns_ips].nil?
      end
    end

    class SelfManagedActiveDirectoryConfigurationUpdates
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SelfManagedActiveDirectoryConfigurationUpdates, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
        Validators::DnsIps.validate!(input[:dns_ips], context: "#{context}[:dns_ips]") unless input[:dns_ips].nil?
      end
    end

    class ServiceLimitExceeded
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceLimitExceeded, context: context)
        Hearth::Validator.validate!(input[:limit], ::String, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Snapshot
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Snapshot, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:snapshot_id], ::String, context: "#{context}[:snapshot_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:volume_id], ::String, context: "#{context}[:volume_id]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:lifecycle], ::String, context: "#{context}[:lifecycle]")
        Validators::LifecycleTransitionReason.validate!(input[:lifecycle_transition_reason], context: "#{context}[:lifecycle_transition_reason]") unless input[:lifecycle_transition_reason].nil?
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::AdministrativeActions.validate!(input[:administrative_actions], context: "#{context}[:administrative_actions]") unless input[:administrative_actions].nil?
      end
    end

    class SnapshotFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SnapshotFilter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::SnapshotFilterValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class SnapshotFilterValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SnapshotFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SnapshotFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SnapshotIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SnapshotNotFound
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SnapshotNotFound, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Snapshots
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Snapshot.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SourceBackupUnavailable
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SourceBackupUnavailable, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:backup_id], ::String, context: "#{context}[:backup_id]")
      end
    end

    class StorageVirtualMachine
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StorageVirtualMachine, context: context)
        Validators::SvmActiveDirectoryConfiguration.validate!(input[:active_directory_configuration], context: "#{context}[:active_directory_configuration]") unless input[:active_directory_configuration].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Validators::SvmEndpoints.validate!(input[:endpoints], context: "#{context}[:endpoints]") unless input[:endpoints].nil?
        Hearth::Validator.validate!(input[:file_system_id], ::String, context: "#{context}[:file_system_id]")
        Hearth::Validator.validate!(input[:lifecycle], ::String, context: "#{context}[:lifecycle]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:storage_virtual_machine_id], ::String, context: "#{context}[:storage_virtual_machine_id]")
        Hearth::Validator.validate!(input[:subtype], ::String, context: "#{context}[:subtype]")
        Hearth::Validator.validate!(input[:uuid], ::String, context: "#{context}[:uuid]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::LifecycleTransitionReason.validate!(input[:lifecycle_transition_reason], context: "#{context}[:lifecycle_transition_reason]") unless input[:lifecycle_transition_reason].nil?
        Hearth::Validator.validate!(input[:root_volume_security_style], ::String, context: "#{context}[:root_volume_security_style]")
      end
    end

    class StorageVirtualMachineFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StorageVirtualMachineFilter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::StorageVirtualMachineFilterValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class StorageVirtualMachineFilterValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class StorageVirtualMachineFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::StorageVirtualMachineFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StorageVirtualMachineIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class StorageVirtualMachineNotFound
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StorageVirtualMachineNotFound, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class StorageVirtualMachines
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::StorageVirtualMachine.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SubnetIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SvmActiveDirectoryConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SvmActiveDirectoryConfiguration, context: context)
        Hearth::Validator.validate!(input[:net_bios_name], ::String, context: "#{context}[:net_bios_name]")
        Validators::SelfManagedActiveDirectoryAttributes.validate!(input[:self_managed_active_directory_configuration], context: "#{context}[:self_managed_active_directory_configuration]") unless input[:self_managed_active_directory_configuration].nil?
      end
    end

    class SvmEndpoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SvmEndpoint, context: context)
        Hearth::Validator.validate!(input[:dns_name], ::String, context: "#{context}[:dns_name]")
        Validators::OntapEndpointIpAddresses.validate!(input[:ip_addresses], context: "#{context}[:ip_addresses]") unless input[:ip_addresses].nil?
      end
    end

    class SvmEndpoints
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SvmEndpoints, context: context)
        Validators::SvmEndpoint.validate!(input[:iscsi], context: "#{context}[:iscsi]") unless input[:iscsi].nil?
        Validators::SvmEndpoint.validate!(input[:management], context: "#{context}[:management]") unless input[:management].nil?
        Validators::SvmEndpoint.validate!(input[:nfs], context: "#{context}[:nfs]") unless input[:nfs].nil?
        Validators::SvmEndpoint.validate!(input[:smb], context: "#{context}[:smb]") unless input[:smb].nil?
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

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class Tags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TaskIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TieringPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TieringPolicy, context: context)
        Hearth::Validator.validate!(input[:cooling_period], ::Integer, context: "#{context}[:cooling_period]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class UnsupportedOperation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsupportedOperation, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagKeys.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateDataRepositoryAssociationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDataRepositoryAssociationInput, context: context)
        Hearth::Validator.validate!(input[:association_id], ::String, context: "#{context}[:association_id]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:imported_file_chunk_size], ::Integer, context: "#{context}[:imported_file_chunk_size]")
        Validators::S3DataRepositoryConfiguration.validate!(input[:s3], context: "#{context}[:s3]") unless input[:s3].nil?
      end
    end

    class UpdateDataRepositoryAssociationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDataRepositoryAssociationOutput, context: context)
        Validators::DataRepositoryAssociation.validate!(input[:association], context: "#{context}[:association]") unless input[:association].nil?
      end
    end

    class UpdateFileSystemInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFileSystemInput, context: context)
        Hearth::Validator.validate!(input[:file_system_id], ::String, context: "#{context}[:file_system_id]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:storage_capacity], ::Integer, context: "#{context}[:storage_capacity]")
        Validators::UpdateFileSystemWindowsConfiguration.validate!(input[:windows_configuration], context: "#{context}[:windows_configuration]") unless input[:windows_configuration].nil?
        Validators::UpdateFileSystemLustreConfiguration.validate!(input[:lustre_configuration], context: "#{context}[:lustre_configuration]") unless input[:lustre_configuration].nil?
        Validators::UpdateFileSystemOntapConfiguration.validate!(input[:ontap_configuration], context: "#{context}[:ontap_configuration]") unless input[:ontap_configuration].nil?
        Validators::UpdateFileSystemOpenZFSConfiguration.validate!(input[:open_zfs_configuration], context: "#{context}[:open_zfs_configuration]") unless input[:open_zfs_configuration].nil?
      end
    end

    class UpdateFileSystemLustreConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFileSystemLustreConfiguration, context: context)
        Hearth::Validator.validate!(input[:weekly_maintenance_start_time], ::String, context: "#{context}[:weekly_maintenance_start_time]")
        Hearth::Validator.validate!(input[:daily_automatic_backup_start_time], ::String, context: "#{context}[:daily_automatic_backup_start_time]")
        Hearth::Validator.validate!(input[:automatic_backup_retention_days], ::Integer, context: "#{context}[:automatic_backup_retention_days]")
        Hearth::Validator.validate!(input[:auto_import_policy], ::String, context: "#{context}[:auto_import_policy]")
        Hearth::Validator.validate!(input[:data_compression_type], ::String, context: "#{context}[:data_compression_type]")
        Validators::LustreLogCreateConfiguration.validate!(input[:log_configuration], context: "#{context}[:log_configuration]") unless input[:log_configuration].nil?
        Validators::LustreRootSquashConfiguration.validate!(input[:root_squash_configuration], context: "#{context}[:root_squash_configuration]") unless input[:root_squash_configuration].nil?
      end
    end

    class UpdateFileSystemOntapConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFileSystemOntapConfiguration, context: context)
        Hearth::Validator.validate!(input[:automatic_backup_retention_days], ::Integer, context: "#{context}[:automatic_backup_retention_days]")
        Hearth::Validator.validate!(input[:daily_automatic_backup_start_time], ::String, context: "#{context}[:daily_automatic_backup_start_time]")
        Hearth::Validator.validate!(input[:fsx_admin_password], ::String, context: "#{context}[:fsx_admin_password]")
        Hearth::Validator.validate!(input[:weekly_maintenance_start_time], ::String, context: "#{context}[:weekly_maintenance_start_time]")
        Validators::DiskIopsConfiguration.validate!(input[:disk_iops_configuration], context: "#{context}[:disk_iops_configuration]") unless input[:disk_iops_configuration].nil?
        Hearth::Validator.validate!(input[:throughput_capacity], ::Integer, context: "#{context}[:throughput_capacity]")
      end
    end

    class UpdateFileSystemOpenZFSConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFileSystemOpenZFSConfiguration, context: context)
        Hearth::Validator.validate!(input[:automatic_backup_retention_days], ::Integer, context: "#{context}[:automatic_backup_retention_days]")
        Hearth::Validator.validate!(input[:copy_tags_to_backups], ::TrueClass, ::FalseClass, context: "#{context}[:copy_tags_to_backups]")
        Hearth::Validator.validate!(input[:copy_tags_to_volumes], ::TrueClass, ::FalseClass, context: "#{context}[:copy_tags_to_volumes]")
        Hearth::Validator.validate!(input[:daily_automatic_backup_start_time], ::String, context: "#{context}[:daily_automatic_backup_start_time]")
        Hearth::Validator.validate!(input[:throughput_capacity], ::Integer, context: "#{context}[:throughput_capacity]")
        Hearth::Validator.validate!(input[:weekly_maintenance_start_time], ::String, context: "#{context}[:weekly_maintenance_start_time]")
        Validators::DiskIopsConfiguration.validate!(input[:disk_iops_configuration], context: "#{context}[:disk_iops_configuration]") unless input[:disk_iops_configuration].nil?
      end
    end

    class UpdateFileSystemOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFileSystemOutput, context: context)
        Validators::FileSystem.validate!(input[:file_system], context: "#{context}[:file_system]") unless input[:file_system].nil?
      end
    end

    class UpdateFileSystemWindowsConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFileSystemWindowsConfiguration, context: context)
        Hearth::Validator.validate!(input[:weekly_maintenance_start_time], ::String, context: "#{context}[:weekly_maintenance_start_time]")
        Hearth::Validator.validate!(input[:daily_automatic_backup_start_time], ::String, context: "#{context}[:daily_automatic_backup_start_time]")
        Hearth::Validator.validate!(input[:automatic_backup_retention_days], ::Integer, context: "#{context}[:automatic_backup_retention_days]")
        Hearth::Validator.validate!(input[:throughput_capacity], ::Integer, context: "#{context}[:throughput_capacity]")
        Validators::SelfManagedActiveDirectoryConfigurationUpdates.validate!(input[:self_managed_active_directory_configuration], context: "#{context}[:self_managed_active_directory_configuration]") unless input[:self_managed_active_directory_configuration].nil?
        Validators::WindowsAuditLogCreateConfiguration.validate!(input[:audit_log_configuration], context: "#{context}[:audit_log_configuration]") unless input[:audit_log_configuration].nil?
      end
    end

    class UpdateOntapVolumeConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateOntapVolumeConfiguration, context: context)
        Hearth::Validator.validate!(input[:junction_path], ::String, context: "#{context}[:junction_path]")
        Hearth::Validator.validate!(input[:security_style], ::String, context: "#{context}[:security_style]")
        Hearth::Validator.validate!(input[:size_in_megabytes], ::Integer, context: "#{context}[:size_in_megabytes]")
        Hearth::Validator.validate!(input[:storage_efficiency_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:storage_efficiency_enabled]")
        Validators::TieringPolicy.validate!(input[:tiering_policy], context: "#{context}[:tiering_policy]") unless input[:tiering_policy].nil?
      end
    end

    class UpdateOpenZFSVolumeConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateOpenZFSVolumeConfiguration, context: context)
        Hearth::Validator.validate!(input[:storage_capacity_reservation_gi_b], ::Integer, context: "#{context}[:storage_capacity_reservation_gi_b]")
        Hearth::Validator.validate!(input[:storage_capacity_quota_gi_b], ::Integer, context: "#{context}[:storage_capacity_quota_gi_b]")
        Hearth::Validator.validate!(input[:record_size_ki_b], ::Integer, context: "#{context}[:record_size_ki_b]")
        Hearth::Validator.validate!(input[:data_compression_type], ::String, context: "#{context}[:data_compression_type]")
        Validators::OpenZFSNfsExports.validate!(input[:nfs_exports], context: "#{context}[:nfs_exports]") unless input[:nfs_exports].nil?
        Validators::OpenZFSUserAndGroupQuotas.validate!(input[:user_and_group_quotas], context: "#{context}[:user_and_group_quotas]") unless input[:user_and_group_quotas].nil?
        Hearth::Validator.validate!(input[:read_only], ::TrueClass, ::FalseClass, context: "#{context}[:read_only]")
      end
    end

    class UpdateSnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSnapshotInput, context: context)
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:snapshot_id], ::String, context: "#{context}[:snapshot_id]")
      end
    end

    class UpdateSnapshotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSnapshotOutput, context: context)
        Validators::Snapshot.validate!(input[:snapshot], context: "#{context}[:snapshot]") unless input[:snapshot].nil?
      end
    end

    class UpdateStorageVirtualMachineInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateStorageVirtualMachineInput, context: context)
        Validators::UpdateSvmActiveDirectoryConfiguration.validate!(input[:active_directory_configuration], context: "#{context}[:active_directory_configuration]") unless input[:active_directory_configuration].nil?
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:storage_virtual_machine_id], ::String, context: "#{context}[:storage_virtual_machine_id]")
        Hearth::Validator.validate!(input[:svm_admin_password], ::String, context: "#{context}[:svm_admin_password]")
      end
    end

    class UpdateStorageVirtualMachineOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateStorageVirtualMachineOutput, context: context)
        Validators::StorageVirtualMachine.validate!(input[:storage_virtual_machine], context: "#{context}[:storage_virtual_machine]") unless input[:storage_virtual_machine].nil?
      end
    end

    class UpdateSvmActiveDirectoryConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSvmActiveDirectoryConfiguration, context: context)
        Validators::SelfManagedActiveDirectoryConfigurationUpdates.validate!(input[:self_managed_active_directory_configuration], context: "#{context}[:self_managed_active_directory_configuration]") unless input[:self_managed_active_directory_configuration].nil?
      end
    end

    class UpdateVolumeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateVolumeInput, context: context)
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:volume_id], ::String, context: "#{context}[:volume_id]")
        Validators::UpdateOntapVolumeConfiguration.validate!(input[:ontap_configuration], context: "#{context}[:ontap_configuration]") unless input[:ontap_configuration].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::UpdateOpenZFSVolumeConfiguration.validate!(input[:open_zfs_configuration], context: "#{context}[:open_zfs_configuration]") unless input[:open_zfs_configuration].nil?
      end
    end

    class UpdateVolumeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateVolumeOutput, context: context)
        Validators::Volume.validate!(input[:volume], context: "#{context}[:volume]") unless input[:volume].nil?
      end
    end

    class Volume
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Volume, context: context)
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:file_system_id], ::String, context: "#{context}[:file_system_id]")
        Hearth::Validator.validate!(input[:lifecycle], ::String, context: "#{context}[:lifecycle]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::OntapVolumeConfiguration.validate!(input[:ontap_configuration], context: "#{context}[:ontap_configuration]") unless input[:ontap_configuration].nil?
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:volume_id], ::String, context: "#{context}[:volume_id]")
        Hearth::Validator.validate!(input[:volume_type], ::String, context: "#{context}[:volume_type]")
        Validators::LifecycleTransitionReason.validate!(input[:lifecycle_transition_reason], context: "#{context}[:lifecycle_transition_reason]") unless input[:lifecycle_transition_reason].nil?
        Validators::AdministrativeActions.validate!(input[:administrative_actions], context: "#{context}[:administrative_actions]") unless input[:administrative_actions].nil?
        Validators::OpenZFSVolumeConfiguration.validate!(input[:open_zfs_configuration], context: "#{context}[:open_zfs_configuration]") unless input[:open_zfs_configuration].nil?
      end
    end

    class VolumeFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VolumeFilter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::VolumeFilterValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class VolumeFilterValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class VolumeFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::VolumeFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class VolumeIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class VolumeNotFound
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VolumeNotFound, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Volumes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Volume.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class WindowsAuditLogConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WindowsAuditLogConfiguration, context: context)
        Hearth::Validator.validate!(input[:file_access_audit_log_level], ::String, context: "#{context}[:file_access_audit_log_level]")
        Hearth::Validator.validate!(input[:file_share_access_audit_log_level], ::String, context: "#{context}[:file_share_access_audit_log_level]")
        Hearth::Validator.validate!(input[:audit_log_destination], ::String, context: "#{context}[:audit_log_destination]")
      end
    end

    class WindowsAuditLogCreateConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WindowsAuditLogCreateConfiguration, context: context)
        Hearth::Validator.validate!(input[:file_access_audit_log_level], ::String, context: "#{context}[:file_access_audit_log_level]")
        Hearth::Validator.validate!(input[:file_share_access_audit_log_level], ::String, context: "#{context}[:file_share_access_audit_log_level]")
        Hearth::Validator.validate!(input[:audit_log_destination], ::String, context: "#{context}[:audit_log_destination]")
      end
    end

    class WindowsFileSystemConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WindowsFileSystemConfiguration, context: context)
        Hearth::Validator.validate!(input[:active_directory_id], ::String, context: "#{context}[:active_directory_id]")
        Validators::SelfManagedActiveDirectoryAttributes.validate!(input[:self_managed_active_directory_configuration], context: "#{context}[:self_managed_active_directory_configuration]") unless input[:self_managed_active_directory_configuration].nil?
        Hearth::Validator.validate!(input[:deployment_type], ::String, context: "#{context}[:deployment_type]")
        Hearth::Validator.validate!(input[:remote_administration_endpoint], ::String, context: "#{context}[:remote_administration_endpoint]")
        Hearth::Validator.validate!(input[:preferred_subnet_id], ::String, context: "#{context}[:preferred_subnet_id]")
        Hearth::Validator.validate!(input[:preferred_file_server_ip], ::String, context: "#{context}[:preferred_file_server_ip]")
        Hearth::Validator.validate!(input[:throughput_capacity], ::Integer, context: "#{context}[:throughput_capacity]")
        Validators::FileSystemMaintenanceOperations.validate!(input[:maintenance_operations_in_progress], context: "#{context}[:maintenance_operations_in_progress]") unless input[:maintenance_operations_in_progress].nil?
        Hearth::Validator.validate!(input[:weekly_maintenance_start_time], ::String, context: "#{context}[:weekly_maintenance_start_time]")
        Hearth::Validator.validate!(input[:daily_automatic_backup_start_time], ::String, context: "#{context}[:daily_automatic_backup_start_time]")
        Hearth::Validator.validate!(input[:automatic_backup_retention_days], ::Integer, context: "#{context}[:automatic_backup_retention_days]")
        Hearth::Validator.validate!(input[:copy_tags_to_backups], ::TrueClass, ::FalseClass, context: "#{context}[:copy_tags_to_backups]")
        Validators::Aliases.validate!(input[:aliases], context: "#{context}[:aliases]") unless input[:aliases].nil?
        Validators::WindowsAuditLogConfiguration.validate!(input[:audit_log_configuration], context: "#{context}[:audit_log_configuration]") unless input[:audit_log_configuration].nil?
      end
    end

  end
end
