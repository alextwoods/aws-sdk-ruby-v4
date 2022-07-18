# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::FSx
  module Params

    module ActiveDirectoryBackupAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActiveDirectoryBackupAttributes, context: context)
        type = Types::ActiveDirectoryBackupAttributes.new
        type.domain_name = params[:domain_name]
        type.active_directory_id = params[:active_directory_id]
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ActiveDirectoryError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActiveDirectoryError, context: context)
        type = Types::ActiveDirectoryError.new
        type.active_directory_id = params[:active_directory_id]
        type.type = params[:type]
        type.message = params[:message]
        type
      end
    end

    module AdministrativeAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdministrativeAction, context: context)
        type = Types::AdministrativeAction.new
        type.administrative_action_type = params[:administrative_action_type]
        type.progress_percent = params[:progress_percent]
        type.request_time = params[:request_time]
        type.status = params[:status]
        type.target_file_system_values = FileSystem.build(params[:target_file_system_values], context: "#{context}[:target_file_system_values]") unless params[:target_file_system_values].nil?
        type.failure_details = AdministrativeActionFailureDetails.build(params[:failure_details], context: "#{context}[:failure_details]") unless params[:failure_details].nil?
        type.target_volume_values = Volume.build(params[:target_volume_values], context: "#{context}[:target_volume_values]") unless params[:target_volume_values].nil?
        type.target_snapshot_values = Snapshot.build(params[:target_snapshot_values], context: "#{context}[:target_snapshot_values]") unless params[:target_snapshot_values].nil?
        type
      end
    end

    module AdministrativeActionFailureDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdministrativeActionFailureDetails, context: context)
        type = Types::AdministrativeActionFailureDetails.new
        type.message = params[:message]
        type
      end
    end

    module AdministrativeActions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AdministrativeAction.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Alias
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Alias, context: context)
        type = Types::Alias.new
        type.name = params[:name]
        type.lifecycle = params[:lifecycle]
        type
      end
    end

    module Aliases
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Alias.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AlternateDNSNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AssociateFileSystemAliasesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateFileSystemAliasesInput, context: context)
        type = Types::AssociateFileSystemAliasesInput.new
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.file_system_id = params[:file_system_id]
        type.aliases = AlternateDNSNames.build(params[:aliases], context: "#{context}[:aliases]") unless params[:aliases].nil?
        type
      end
    end

    module AssociateFileSystemAliasesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateFileSystemAliasesOutput, context: context)
        type = Types::AssociateFileSystemAliasesOutput.new
        type.aliases = Aliases.build(params[:aliases], context: "#{context}[:aliases]") unless params[:aliases].nil?
        type
      end
    end

    module AutoExportPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoExportPolicy, context: context)
        type = Types::AutoExportPolicy.new
        type.events = EventTypes.build(params[:events], context: "#{context}[:events]") unless params[:events].nil?
        type
      end
    end

    module AutoImportPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoImportPolicy, context: context)
        type = Types::AutoImportPolicy.new
        type.events = EventTypes.build(params[:events], context: "#{context}[:events]") unless params[:events].nil?
        type
      end
    end

    module Backup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Backup, context: context)
        type = Types::Backup.new
        type.backup_id = params[:backup_id]
        type.lifecycle = params[:lifecycle]
        type.failure_details = BackupFailureDetails.build(params[:failure_details], context: "#{context}[:failure_details]") unless params[:failure_details].nil?
        type.type = params[:type]
        type.progress_percent = params[:progress_percent]
        type.creation_time = params[:creation_time]
        type.kms_key_id = params[:kms_key_id]
        type.resource_arn = params[:resource_arn]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.file_system = FileSystem.build(params[:file_system], context: "#{context}[:file_system]") unless params[:file_system].nil?
        type.directory_information = ActiveDirectoryBackupAttributes.build(params[:directory_information], context: "#{context}[:directory_information]") unless params[:directory_information].nil?
        type.owner_id = params[:owner_id]
        type.source_backup_id = params[:source_backup_id]
        type.source_backup_region = params[:source_backup_region]
        type.resource_type = params[:resource_type]
        type.volume = Volume.build(params[:volume], context: "#{context}[:volume]") unless params[:volume].nil?
        type
      end
    end

    module BackupBeingCopied
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BackupBeingCopied, context: context)
        type = Types::BackupBeingCopied.new
        type.message = params[:message]
        type.backup_id = params[:backup_id]
        type
      end
    end

    module BackupFailureDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BackupFailureDetails, context: context)
        type = Types::BackupFailureDetails.new
        type.message = params[:message]
        type
      end
    end

    module BackupIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module BackupInProgress
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BackupInProgress, context: context)
        type = Types::BackupInProgress.new
        type.message = params[:message]
        type
      end
    end

    module BackupNotFound
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BackupNotFound, context: context)
        type = Types::BackupNotFound.new
        type.message = params[:message]
        type
      end
    end

    module BackupRestoring
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BackupRestoring, context: context)
        type = Types::BackupRestoring.new
        type.message = params[:message]
        type.file_system_id = params[:file_system_id]
        type
      end
    end

    module Backups
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Backup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BadRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BadRequest, context: context)
        type = Types::BadRequest.new
        type.message = params[:message]
        type
      end
    end

    module CancelDataRepositoryTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelDataRepositoryTaskInput, context: context)
        type = Types::CancelDataRepositoryTaskInput.new
        type.task_id = params[:task_id]
        type
      end
    end

    module CancelDataRepositoryTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelDataRepositoryTaskOutput, context: context)
        type = Types::CancelDataRepositoryTaskOutput.new
        type.lifecycle = params[:lifecycle]
        type.task_id = params[:task_id]
        type
      end
    end

    module CompletionReport
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CompletionReport, context: context)
        type = Types::CompletionReport.new
        type.enabled = params[:enabled]
        type.path = params[:path]
        type.format = params[:format]
        type.scope = params[:scope]
        type
      end
    end

    module CopyBackupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CopyBackupInput, context: context)
        type = Types::CopyBackupInput.new
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.source_backup_id = params[:source_backup_id]
        type.source_region = params[:source_region]
        type.kms_key_id = params[:kms_key_id]
        type.copy_tags = params[:copy_tags]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CopyBackupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CopyBackupOutput, context: context)
        type = Types::CopyBackupOutput.new
        type.backup = Backup.build(params[:backup], context: "#{context}[:backup]") unless params[:backup].nil?
        type
      end
    end

    module CreateBackupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBackupInput, context: context)
        type = Types::CreateBackupInput.new
        type.file_system_id = params[:file_system_id]
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.volume_id = params[:volume_id]
        type
      end
    end

    module CreateBackupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBackupOutput, context: context)
        type = Types::CreateBackupOutput.new
        type.backup = Backup.build(params[:backup], context: "#{context}[:backup]") unless params[:backup].nil?
        type
      end
    end

    module CreateDataRepositoryAssociationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDataRepositoryAssociationInput, context: context)
        type = Types::CreateDataRepositoryAssociationInput.new
        type.file_system_id = params[:file_system_id]
        type.file_system_path = params[:file_system_path]
        type.data_repository_path = params[:data_repository_path]
        type.batch_import_meta_data_on_create = params[:batch_import_meta_data_on_create]
        type.imported_file_chunk_size = params[:imported_file_chunk_size]
        type.s3 = S3DataRepositoryConfiguration.build(params[:s3], context: "#{context}[:s3]") unless params[:s3].nil?
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateDataRepositoryAssociationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDataRepositoryAssociationOutput, context: context)
        type = Types::CreateDataRepositoryAssociationOutput.new
        type.association = DataRepositoryAssociation.build(params[:association], context: "#{context}[:association]") unless params[:association].nil?
        type
      end
    end

    module CreateDataRepositoryTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDataRepositoryTaskInput, context: context)
        type = Types::CreateDataRepositoryTaskInput.new
        type.type = params[:type]
        type.paths = DataRepositoryTaskPaths.build(params[:paths], context: "#{context}[:paths]") unless params[:paths].nil?
        type.file_system_id = params[:file_system_id]
        type.report = CompletionReport.build(params[:report], context: "#{context}[:report]") unless params[:report].nil?
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateDataRepositoryTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDataRepositoryTaskOutput, context: context)
        type = Types::CreateDataRepositoryTaskOutput.new
        type.data_repository_task = DataRepositoryTask.build(params[:data_repository_task], context: "#{context}[:data_repository_task]") unless params[:data_repository_task].nil?
        type
      end
    end

    module CreateFileSystemFromBackupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFileSystemFromBackupInput, context: context)
        type = Types::CreateFileSystemFromBackupInput.new
        type.backup_id = params[:backup_id]
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.subnet_ids = SubnetIds.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.security_group_ids = SecurityGroupIds.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.windows_configuration = CreateFileSystemWindowsConfiguration.build(params[:windows_configuration], context: "#{context}[:windows_configuration]") unless params[:windows_configuration].nil?
        type.lustre_configuration = CreateFileSystemLustreConfiguration.build(params[:lustre_configuration], context: "#{context}[:lustre_configuration]") unless params[:lustre_configuration].nil?
        type.storage_type = params[:storage_type]
        type.kms_key_id = params[:kms_key_id]
        type.file_system_type_version = params[:file_system_type_version]
        type.open_zfs_configuration = CreateFileSystemOpenZFSConfiguration.build(params[:open_zfs_configuration], context: "#{context}[:open_zfs_configuration]") unless params[:open_zfs_configuration].nil?
        type
      end
    end

    module CreateFileSystemFromBackupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFileSystemFromBackupOutput, context: context)
        type = Types::CreateFileSystemFromBackupOutput.new
        type.file_system = FileSystem.build(params[:file_system], context: "#{context}[:file_system]") unless params[:file_system].nil?
        type
      end
    end

    module CreateFileSystemInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFileSystemInput, context: context)
        type = Types::CreateFileSystemInput.new
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.file_system_type = params[:file_system_type]
        type.storage_capacity = params[:storage_capacity]
        type.storage_type = params[:storage_type]
        type.subnet_ids = SubnetIds.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.security_group_ids = SecurityGroupIds.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.kms_key_id = params[:kms_key_id]
        type.windows_configuration = CreateFileSystemWindowsConfiguration.build(params[:windows_configuration], context: "#{context}[:windows_configuration]") unless params[:windows_configuration].nil?
        type.lustre_configuration = CreateFileSystemLustreConfiguration.build(params[:lustre_configuration], context: "#{context}[:lustre_configuration]") unless params[:lustre_configuration].nil?
        type.ontap_configuration = CreateFileSystemOntapConfiguration.build(params[:ontap_configuration], context: "#{context}[:ontap_configuration]") unless params[:ontap_configuration].nil?
        type.file_system_type_version = params[:file_system_type_version]
        type.open_zfs_configuration = CreateFileSystemOpenZFSConfiguration.build(params[:open_zfs_configuration], context: "#{context}[:open_zfs_configuration]") unless params[:open_zfs_configuration].nil?
        type
      end
    end

    module CreateFileSystemLustreConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFileSystemLustreConfiguration, context: context)
        type = Types::CreateFileSystemLustreConfiguration.new
        type.weekly_maintenance_start_time = params[:weekly_maintenance_start_time]
        type.import_path = params[:import_path]
        type.export_path = params[:export_path]
        type.imported_file_chunk_size = params[:imported_file_chunk_size]
        type.deployment_type = params[:deployment_type]
        type.auto_import_policy = params[:auto_import_policy]
        type.per_unit_storage_throughput = params[:per_unit_storage_throughput]
        type.daily_automatic_backup_start_time = params[:daily_automatic_backup_start_time]
        type.automatic_backup_retention_days = params[:automatic_backup_retention_days]
        type.copy_tags_to_backups = params[:copy_tags_to_backups]
        type.drive_cache_type = params[:drive_cache_type]
        type.data_compression_type = params[:data_compression_type]
        type.log_configuration = LustreLogCreateConfiguration.build(params[:log_configuration], context: "#{context}[:log_configuration]") unless params[:log_configuration].nil?
        type.root_squash_configuration = LustreRootSquashConfiguration.build(params[:root_squash_configuration], context: "#{context}[:root_squash_configuration]") unless params[:root_squash_configuration].nil?
        type
      end
    end

    module CreateFileSystemOntapConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFileSystemOntapConfiguration, context: context)
        type = Types::CreateFileSystemOntapConfiguration.new
        type.automatic_backup_retention_days = params[:automatic_backup_retention_days]
        type.daily_automatic_backup_start_time = params[:daily_automatic_backup_start_time]
        type.deployment_type = params[:deployment_type]
        type.endpoint_ip_address_range = params[:endpoint_ip_address_range]
        type.fsx_admin_password = params[:fsx_admin_password]
        type.disk_iops_configuration = DiskIopsConfiguration.build(params[:disk_iops_configuration], context: "#{context}[:disk_iops_configuration]") unless params[:disk_iops_configuration].nil?
        type.preferred_subnet_id = params[:preferred_subnet_id]
        type.route_table_ids = RouteTableIds.build(params[:route_table_ids], context: "#{context}[:route_table_ids]") unless params[:route_table_ids].nil?
        type.throughput_capacity = params[:throughput_capacity]
        type.weekly_maintenance_start_time = params[:weekly_maintenance_start_time]
        type
      end
    end

    module CreateFileSystemOpenZFSConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFileSystemOpenZFSConfiguration, context: context)
        type = Types::CreateFileSystemOpenZFSConfiguration.new
        type.automatic_backup_retention_days = params[:automatic_backup_retention_days]
        type.copy_tags_to_backups = params[:copy_tags_to_backups]
        type.copy_tags_to_volumes = params[:copy_tags_to_volumes]
        type.daily_automatic_backup_start_time = params[:daily_automatic_backup_start_time]
        type.deployment_type = params[:deployment_type]
        type.throughput_capacity = params[:throughput_capacity]
        type.weekly_maintenance_start_time = params[:weekly_maintenance_start_time]
        type.disk_iops_configuration = DiskIopsConfiguration.build(params[:disk_iops_configuration], context: "#{context}[:disk_iops_configuration]") unless params[:disk_iops_configuration].nil?
        type.root_volume_configuration = OpenZFSCreateRootVolumeConfiguration.build(params[:root_volume_configuration], context: "#{context}[:root_volume_configuration]") unless params[:root_volume_configuration].nil?
        type
      end
    end

    module CreateFileSystemOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFileSystemOutput, context: context)
        type = Types::CreateFileSystemOutput.new
        type.file_system = FileSystem.build(params[:file_system], context: "#{context}[:file_system]") unless params[:file_system].nil?
        type
      end
    end

    module CreateFileSystemWindowsConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFileSystemWindowsConfiguration, context: context)
        type = Types::CreateFileSystemWindowsConfiguration.new
        type.active_directory_id = params[:active_directory_id]
        type.self_managed_active_directory_configuration = SelfManagedActiveDirectoryConfiguration.build(params[:self_managed_active_directory_configuration], context: "#{context}[:self_managed_active_directory_configuration]") unless params[:self_managed_active_directory_configuration].nil?
        type.deployment_type = params[:deployment_type]
        type.preferred_subnet_id = params[:preferred_subnet_id]
        type.throughput_capacity = params[:throughput_capacity]
        type.weekly_maintenance_start_time = params[:weekly_maintenance_start_time]
        type.daily_automatic_backup_start_time = params[:daily_automatic_backup_start_time]
        type.automatic_backup_retention_days = params[:automatic_backup_retention_days]
        type.copy_tags_to_backups = params[:copy_tags_to_backups]
        type.aliases = AlternateDNSNames.build(params[:aliases], context: "#{context}[:aliases]") unless params[:aliases].nil?
        type.audit_log_configuration = WindowsAuditLogCreateConfiguration.build(params[:audit_log_configuration], context: "#{context}[:audit_log_configuration]") unless params[:audit_log_configuration].nil?
        type
      end
    end

    module CreateOntapVolumeConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateOntapVolumeConfiguration, context: context)
        type = Types::CreateOntapVolumeConfiguration.new
        type.junction_path = params[:junction_path]
        type.security_style = params[:security_style]
        type.size_in_megabytes = params[:size_in_megabytes]
        type.storage_efficiency_enabled = params[:storage_efficiency_enabled]
        type.storage_virtual_machine_id = params[:storage_virtual_machine_id]
        type.tiering_policy = TieringPolicy.build(params[:tiering_policy], context: "#{context}[:tiering_policy]") unless params[:tiering_policy].nil?
        type
      end
    end

    module CreateOpenZFSOriginSnapshotConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateOpenZFSOriginSnapshotConfiguration, context: context)
        type = Types::CreateOpenZFSOriginSnapshotConfiguration.new
        type.snapshot_arn = params[:snapshot_arn]
        type.copy_strategy = params[:copy_strategy]
        type
      end
    end

    module CreateOpenZFSVolumeConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateOpenZFSVolumeConfiguration, context: context)
        type = Types::CreateOpenZFSVolumeConfiguration.new
        type.parent_volume_id = params[:parent_volume_id]
        type.storage_capacity_reservation_gi_b = params[:storage_capacity_reservation_gi_b]
        type.storage_capacity_quota_gi_b = params[:storage_capacity_quota_gi_b]
        type.record_size_ki_b = params[:record_size_ki_b]
        type.data_compression_type = params[:data_compression_type]
        type.copy_tags_to_snapshots = params[:copy_tags_to_snapshots]
        type.origin_snapshot = CreateOpenZFSOriginSnapshotConfiguration.build(params[:origin_snapshot], context: "#{context}[:origin_snapshot]") unless params[:origin_snapshot].nil?
        type.read_only = params[:read_only]
        type.nfs_exports = OpenZFSNfsExports.build(params[:nfs_exports], context: "#{context}[:nfs_exports]") unless params[:nfs_exports].nil?
        type.user_and_group_quotas = OpenZFSUserAndGroupQuotas.build(params[:user_and_group_quotas], context: "#{context}[:user_and_group_quotas]") unless params[:user_and_group_quotas].nil?
        type
      end
    end

    module CreateSnapshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSnapshotInput, context: context)
        type = Types::CreateSnapshotInput.new
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.name = params[:name]
        type.volume_id = params[:volume_id]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateSnapshotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSnapshotOutput, context: context)
        type = Types::CreateSnapshotOutput.new
        type.snapshot = Snapshot.build(params[:snapshot], context: "#{context}[:snapshot]") unless params[:snapshot].nil?
        type
      end
    end

    module CreateStorageVirtualMachineInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateStorageVirtualMachineInput, context: context)
        type = Types::CreateStorageVirtualMachineInput.new
        type.active_directory_configuration = CreateSvmActiveDirectoryConfiguration.build(params[:active_directory_configuration], context: "#{context}[:active_directory_configuration]") unless params[:active_directory_configuration].nil?
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.file_system_id = params[:file_system_id]
        type.name = params[:name]
        type.svm_admin_password = params[:svm_admin_password]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.root_volume_security_style = params[:root_volume_security_style]
        type
      end
    end

    module CreateStorageVirtualMachineOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateStorageVirtualMachineOutput, context: context)
        type = Types::CreateStorageVirtualMachineOutput.new
        type.storage_virtual_machine = StorageVirtualMachine.build(params[:storage_virtual_machine], context: "#{context}[:storage_virtual_machine]") unless params[:storage_virtual_machine].nil?
        type
      end
    end

    module CreateSvmActiveDirectoryConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSvmActiveDirectoryConfiguration, context: context)
        type = Types::CreateSvmActiveDirectoryConfiguration.new
        type.net_bios_name = params[:net_bios_name]
        type.self_managed_active_directory_configuration = SelfManagedActiveDirectoryConfiguration.build(params[:self_managed_active_directory_configuration], context: "#{context}[:self_managed_active_directory_configuration]") unless params[:self_managed_active_directory_configuration].nil?
        type
      end
    end

    module CreateVolumeFromBackupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVolumeFromBackupInput, context: context)
        type = Types::CreateVolumeFromBackupInput.new
        type.backup_id = params[:backup_id]
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.name = params[:name]
        type.ontap_configuration = CreateOntapVolumeConfiguration.build(params[:ontap_configuration], context: "#{context}[:ontap_configuration]") unless params[:ontap_configuration].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateVolumeFromBackupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVolumeFromBackupOutput, context: context)
        type = Types::CreateVolumeFromBackupOutput.new
        type.volume = Volume.build(params[:volume], context: "#{context}[:volume]") unless params[:volume].nil?
        type
      end
    end

    module CreateVolumeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVolumeInput, context: context)
        type = Types::CreateVolumeInput.new
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.volume_type = params[:volume_type]
        type.name = params[:name]
        type.ontap_configuration = CreateOntapVolumeConfiguration.build(params[:ontap_configuration], context: "#{context}[:ontap_configuration]") unless params[:ontap_configuration].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.open_zfs_configuration = CreateOpenZFSVolumeConfiguration.build(params[:open_zfs_configuration], context: "#{context}[:open_zfs_configuration]") unless params[:open_zfs_configuration].nil?
        type
      end
    end

    module CreateVolumeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVolumeOutput, context: context)
        type = Types::CreateVolumeOutput.new
        type.volume = Volume.build(params[:volume], context: "#{context}[:volume]") unless params[:volume].nil?
        type
      end
    end

    module DataRepositoryAssociation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataRepositoryAssociation, context: context)
        type = Types::DataRepositoryAssociation.new
        type.association_id = params[:association_id]
        type.resource_arn = params[:resource_arn]
        type.file_system_id = params[:file_system_id]
        type.lifecycle = params[:lifecycle]
        type.failure_details = DataRepositoryFailureDetails.build(params[:failure_details], context: "#{context}[:failure_details]") unless params[:failure_details].nil?
        type.file_system_path = params[:file_system_path]
        type.data_repository_path = params[:data_repository_path]
        type.batch_import_meta_data_on_create = params[:batch_import_meta_data_on_create]
        type.imported_file_chunk_size = params[:imported_file_chunk_size]
        type.s3 = S3DataRepositoryConfiguration.build(params[:s3], context: "#{context}[:s3]") unless params[:s3].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.creation_time = params[:creation_time]
        type
      end
    end

    module DataRepositoryAssociationIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DataRepositoryAssociationNotFound
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataRepositoryAssociationNotFound, context: context)
        type = Types::DataRepositoryAssociationNotFound.new
        type.message = params[:message]
        type
      end
    end

    module DataRepositoryAssociations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DataRepositoryAssociation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DataRepositoryConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataRepositoryConfiguration, context: context)
        type = Types::DataRepositoryConfiguration.new
        type.lifecycle = params[:lifecycle]
        type.import_path = params[:import_path]
        type.export_path = params[:export_path]
        type.imported_file_chunk_size = params[:imported_file_chunk_size]
        type.auto_import_policy = params[:auto_import_policy]
        type.failure_details = DataRepositoryFailureDetails.build(params[:failure_details], context: "#{context}[:failure_details]") unless params[:failure_details].nil?
        type
      end
    end

    module DataRepositoryFailureDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataRepositoryFailureDetails, context: context)
        type = Types::DataRepositoryFailureDetails.new
        type.message = params[:message]
        type
      end
    end

    module DataRepositoryTask
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataRepositoryTask, context: context)
        type = Types::DataRepositoryTask.new
        type.task_id = params[:task_id]
        type.lifecycle = params[:lifecycle]
        type.type = params[:type]
        type.creation_time = params[:creation_time]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.resource_arn = params[:resource_arn]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.file_system_id = params[:file_system_id]
        type.paths = DataRepositoryTaskPaths.build(params[:paths], context: "#{context}[:paths]") unless params[:paths].nil?
        type.failure_details = DataRepositoryTaskFailureDetails.build(params[:failure_details], context: "#{context}[:failure_details]") unless params[:failure_details].nil?
        type.status = DataRepositoryTaskStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type.report = CompletionReport.build(params[:report], context: "#{context}[:report]") unless params[:report].nil?
        type
      end
    end

    module DataRepositoryTaskEnded
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataRepositoryTaskEnded, context: context)
        type = Types::DataRepositoryTaskEnded.new
        type.message = params[:message]
        type
      end
    end

    module DataRepositoryTaskExecuting
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataRepositoryTaskExecuting, context: context)
        type = Types::DataRepositoryTaskExecuting.new
        type.message = params[:message]
        type
      end
    end

    module DataRepositoryTaskFailureDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataRepositoryTaskFailureDetails, context: context)
        type = Types::DataRepositoryTaskFailureDetails.new
        type.message = params[:message]
        type
      end
    end

    module DataRepositoryTaskFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataRepositoryTaskFilter, context: context)
        type = Types::DataRepositoryTaskFilter.new
        type.name = params[:name]
        type.values = DataRepositoryTaskFilterValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module DataRepositoryTaskFilterValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DataRepositoryTaskFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DataRepositoryTaskFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DataRepositoryTaskNotFound
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataRepositoryTaskNotFound, context: context)
        type = Types::DataRepositoryTaskNotFound.new
        type.message = params[:message]
        type
      end
    end

    module DataRepositoryTaskPaths
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DataRepositoryTaskStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataRepositoryTaskStatus, context: context)
        type = Types::DataRepositoryTaskStatus.new
        type.total_count = params[:total_count]
        type.succeeded_count = params[:succeeded_count]
        type.failed_count = params[:failed_count]
        type.last_updated_time = params[:last_updated_time]
        type
      end
    end

    module DataRepositoryTasks
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DataRepositoryTask.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeleteBackupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBackupInput, context: context)
        type = Types::DeleteBackupInput.new
        type.backup_id = params[:backup_id]
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type
      end
    end

    module DeleteBackupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBackupOutput, context: context)
        type = Types::DeleteBackupOutput.new
        type.backup_id = params[:backup_id]
        type.lifecycle = params[:lifecycle]
        type
      end
    end

    module DeleteDataRepositoryAssociationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDataRepositoryAssociationInput, context: context)
        type = Types::DeleteDataRepositoryAssociationInput.new
        type.association_id = params[:association_id]
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.delete_data_in_file_system = params[:delete_data_in_file_system]
        type
      end
    end

    module DeleteDataRepositoryAssociationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDataRepositoryAssociationOutput, context: context)
        type = Types::DeleteDataRepositoryAssociationOutput.new
        type.association_id = params[:association_id]
        type.lifecycle = params[:lifecycle]
        type.delete_data_in_file_system = params[:delete_data_in_file_system]
        type
      end
    end

    module DeleteFileSystemInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFileSystemInput, context: context)
        type = Types::DeleteFileSystemInput.new
        type.file_system_id = params[:file_system_id]
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.windows_configuration = DeleteFileSystemWindowsConfiguration.build(params[:windows_configuration], context: "#{context}[:windows_configuration]") unless params[:windows_configuration].nil?
        type.lustre_configuration = DeleteFileSystemLustreConfiguration.build(params[:lustre_configuration], context: "#{context}[:lustre_configuration]") unless params[:lustre_configuration].nil?
        type.open_zfs_configuration = DeleteFileSystemOpenZFSConfiguration.build(params[:open_zfs_configuration], context: "#{context}[:open_zfs_configuration]") unless params[:open_zfs_configuration].nil?
        type
      end
    end

    module DeleteFileSystemLustreConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFileSystemLustreConfiguration, context: context)
        type = Types::DeleteFileSystemLustreConfiguration.new
        type.skip_final_backup = params[:skip_final_backup]
        type.final_backup_tags = Tags.build(params[:final_backup_tags], context: "#{context}[:final_backup_tags]") unless params[:final_backup_tags].nil?
        type
      end
    end

    module DeleteFileSystemLustreResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFileSystemLustreResponse, context: context)
        type = Types::DeleteFileSystemLustreResponse.new
        type.final_backup_id = params[:final_backup_id]
        type.final_backup_tags = Tags.build(params[:final_backup_tags], context: "#{context}[:final_backup_tags]") unless params[:final_backup_tags].nil?
        type
      end
    end

    module DeleteFileSystemOpenZFSConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFileSystemOpenZFSConfiguration, context: context)
        type = Types::DeleteFileSystemOpenZFSConfiguration.new
        type.skip_final_backup = params[:skip_final_backup]
        type.final_backup_tags = Tags.build(params[:final_backup_tags], context: "#{context}[:final_backup_tags]") unless params[:final_backup_tags].nil?
        type.options = DeleteFileSystemOpenZFSOptions.build(params[:options], context: "#{context}[:options]") unless params[:options].nil?
        type
      end
    end

    module DeleteFileSystemOpenZFSOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DeleteFileSystemOpenZFSResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFileSystemOpenZFSResponse, context: context)
        type = Types::DeleteFileSystemOpenZFSResponse.new
        type.final_backup_id = params[:final_backup_id]
        type.final_backup_tags = Tags.build(params[:final_backup_tags], context: "#{context}[:final_backup_tags]") unless params[:final_backup_tags].nil?
        type
      end
    end

    module DeleteFileSystemOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFileSystemOutput, context: context)
        type = Types::DeleteFileSystemOutput.new
        type.file_system_id = params[:file_system_id]
        type.lifecycle = params[:lifecycle]
        type.windows_response = DeleteFileSystemWindowsResponse.build(params[:windows_response], context: "#{context}[:windows_response]") unless params[:windows_response].nil?
        type.lustre_response = DeleteFileSystemLustreResponse.build(params[:lustre_response], context: "#{context}[:lustre_response]") unless params[:lustre_response].nil?
        type.open_zfs_response = DeleteFileSystemOpenZFSResponse.build(params[:open_zfs_response], context: "#{context}[:open_zfs_response]") unless params[:open_zfs_response].nil?
        type
      end
    end

    module DeleteFileSystemWindowsConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFileSystemWindowsConfiguration, context: context)
        type = Types::DeleteFileSystemWindowsConfiguration.new
        type.skip_final_backup = params[:skip_final_backup]
        type.final_backup_tags = Tags.build(params[:final_backup_tags], context: "#{context}[:final_backup_tags]") unless params[:final_backup_tags].nil?
        type
      end
    end

    module DeleteFileSystemWindowsResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFileSystemWindowsResponse, context: context)
        type = Types::DeleteFileSystemWindowsResponse.new
        type.final_backup_id = params[:final_backup_id]
        type.final_backup_tags = Tags.build(params[:final_backup_tags], context: "#{context}[:final_backup_tags]") unless params[:final_backup_tags].nil?
        type
      end
    end

    module DeleteOpenZFSVolumeOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DeleteSnapshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSnapshotInput, context: context)
        type = Types::DeleteSnapshotInput.new
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.snapshot_id = params[:snapshot_id]
        type
      end
    end

    module DeleteSnapshotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSnapshotOutput, context: context)
        type = Types::DeleteSnapshotOutput.new
        type.snapshot_id = params[:snapshot_id]
        type.lifecycle = params[:lifecycle]
        type
      end
    end

    module DeleteStorageVirtualMachineInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteStorageVirtualMachineInput, context: context)
        type = Types::DeleteStorageVirtualMachineInput.new
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.storage_virtual_machine_id = params[:storage_virtual_machine_id]
        type
      end
    end

    module DeleteStorageVirtualMachineOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteStorageVirtualMachineOutput, context: context)
        type = Types::DeleteStorageVirtualMachineOutput.new
        type.storage_virtual_machine_id = params[:storage_virtual_machine_id]
        type.lifecycle = params[:lifecycle]
        type
      end
    end

    module DeleteVolumeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVolumeInput, context: context)
        type = Types::DeleteVolumeInput.new
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.volume_id = params[:volume_id]
        type.ontap_configuration = DeleteVolumeOntapConfiguration.build(params[:ontap_configuration], context: "#{context}[:ontap_configuration]") unless params[:ontap_configuration].nil?
        type.open_zfs_configuration = DeleteVolumeOpenZFSConfiguration.build(params[:open_zfs_configuration], context: "#{context}[:open_zfs_configuration]") unless params[:open_zfs_configuration].nil?
        type
      end
    end

    module DeleteVolumeOntapConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVolumeOntapConfiguration, context: context)
        type = Types::DeleteVolumeOntapConfiguration.new
        type.skip_final_backup = params[:skip_final_backup]
        type.final_backup_tags = Tags.build(params[:final_backup_tags], context: "#{context}[:final_backup_tags]") unless params[:final_backup_tags].nil?
        type
      end
    end

    module DeleteVolumeOntapResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVolumeOntapResponse, context: context)
        type = Types::DeleteVolumeOntapResponse.new
        type.final_backup_id = params[:final_backup_id]
        type.final_backup_tags = Tags.build(params[:final_backup_tags], context: "#{context}[:final_backup_tags]") unless params[:final_backup_tags].nil?
        type
      end
    end

    module DeleteVolumeOpenZFSConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVolumeOpenZFSConfiguration, context: context)
        type = Types::DeleteVolumeOpenZFSConfiguration.new
        type.options = DeleteOpenZFSVolumeOptions.build(params[:options], context: "#{context}[:options]") unless params[:options].nil?
        type
      end
    end

    module DeleteVolumeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVolumeOutput, context: context)
        type = Types::DeleteVolumeOutput.new
        type.volume_id = params[:volume_id]
        type.lifecycle = params[:lifecycle]
        type.ontap_response = DeleteVolumeOntapResponse.build(params[:ontap_response], context: "#{context}[:ontap_response]") unless params[:ontap_response].nil?
        type
      end
    end

    module DescribeBackupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBackupsInput, context: context)
        type = Types::DescribeBackupsInput.new
        type.backup_ids = BackupIds.build(params[:backup_ids], context: "#{context}[:backup_ids]") unless params[:backup_ids].nil?
        type.filters = Filters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeBackupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBackupsOutput, context: context)
        type = Types::DescribeBackupsOutput.new
        type.backups = Backups.build(params[:backups], context: "#{context}[:backups]") unless params[:backups].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeDataRepositoryAssociationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDataRepositoryAssociationsInput, context: context)
        type = Types::DescribeDataRepositoryAssociationsInput.new
        type.association_ids = DataRepositoryAssociationIds.build(params[:association_ids], context: "#{context}[:association_ids]") unless params[:association_ids].nil?
        type.filters = Filters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeDataRepositoryAssociationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDataRepositoryAssociationsOutput, context: context)
        type = Types::DescribeDataRepositoryAssociationsOutput.new
        type.associations = DataRepositoryAssociations.build(params[:associations], context: "#{context}[:associations]") unless params[:associations].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeDataRepositoryTasksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDataRepositoryTasksInput, context: context)
        type = Types::DescribeDataRepositoryTasksInput.new
        type.task_ids = TaskIds.build(params[:task_ids], context: "#{context}[:task_ids]") unless params[:task_ids].nil?
        type.filters = DataRepositoryTaskFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeDataRepositoryTasksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDataRepositoryTasksOutput, context: context)
        type = Types::DescribeDataRepositoryTasksOutput.new
        type.data_repository_tasks = DataRepositoryTasks.build(params[:data_repository_tasks], context: "#{context}[:data_repository_tasks]") unless params[:data_repository_tasks].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeFileSystemAliasesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFileSystemAliasesInput, context: context)
        type = Types::DescribeFileSystemAliasesInput.new
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.file_system_id = params[:file_system_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeFileSystemAliasesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFileSystemAliasesOutput, context: context)
        type = Types::DescribeFileSystemAliasesOutput.new
        type.aliases = Aliases.build(params[:aliases], context: "#{context}[:aliases]") unless params[:aliases].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeFileSystemsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFileSystemsInput, context: context)
        type = Types::DescribeFileSystemsInput.new
        type.file_system_ids = FileSystemIds.build(params[:file_system_ids], context: "#{context}[:file_system_ids]") unless params[:file_system_ids].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeFileSystemsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFileSystemsOutput, context: context)
        type = Types::DescribeFileSystemsOutput.new
        type.file_systems = FileSystems.build(params[:file_systems], context: "#{context}[:file_systems]") unless params[:file_systems].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeSnapshotsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSnapshotsInput, context: context)
        type = Types::DescribeSnapshotsInput.new
        type.snapshot_ids = SnapshotIds.build(params[:snapshot_ids], context: "#{context}[:snapshot_ids]") unless params[:snapshot_ids].nil?
        type.filters = SnapshotFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeSnapshotsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSnapshotsOutput, context: context)
        type = Types::DescribeSnapshotsOutput.new
        type.snapshots = Snapshots.build(params[:snapshots], context: "#{context}[:snapshots]") unless params[:snapshots].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeStorageVirtualMachinesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStorageVirtualMachinesInput, context: context)
        type = Types::DescribeStorageVirtualMachinesInput.new
        type.storage_virtual_machine_ids = StorageVirtualMachineIds.build(params[:storage_virtual_machine_ids], context: "#{context}[:storage_virtual_machine_ids]") unless params[:storage_virtual_machine_ids].nil?
        type.filters = StorageVirtualMachineFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeStorageVirtualMachinesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStorageVirtualMachinesOutput, context: context)
        type = Types::DescribeStorageVirtualMachinesOutput.new
        type.storage_virtual_machines = StorageVirtualMachines.build(params[:storage_virtual_machines], context: "#{context}[:storage_virtual_machines]") unless params[:storage_virtual_machines].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeVolumesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeVolumesInput, context: context)
        type = Types::DescribeVolumesInput.new
        type.volume_ids = VolumeIds.build(params[:volume_ids], context: "#{context}[:volume_ids]") unless params[:volume_ids].nil?
        type.filters = VolumeFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeVolumesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeVolumesOutput, context: context)
        type = Types::DescribeVolumesOutput.new
        type.volumes = Volumes.build(params[:volumes], context: "#{context}[:volumes]") unless params[:volumes].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DisassociateFileSystemAliasesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateFileSystemAliasesInput, context: context)
        type = Types::DisassociateFileSystemAliasesInput.new
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.file_system_id = params[:file_system_id]
        type.aliases = AlternateDNSNames.build(params[:aliases], context: "#{context}[:aliases]") unless params[:aliases].nil?
        type
      end
    end

    module DisassociateFileSystemAliasesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateFileSystemAliasesOutput, context: context)
        type = Types::DisassociateFileSystemAliasesOutput.new
        type.aliases = Aliases.build(params[:aliases], context: "#{context}[:aliases]") unless params[:aliases].nil?
        type
      end
    end

    module DiskIopsConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DiskIopsConfiguration, context: context)
        type = Types::DiskIopsConfiguration.new
        type.mode = params[:mode]
        type.iops = params[:iops]
        type
      end
    end

    module DnsIps
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module EventTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module FileSystem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FileSystem, context: context)
        type = Types::FileSystem.new
        type.owner_id = params[:owner_id]
        type.creation_time = params[:creation_time]
        type.file_system_id = params[:file_system_id]
        type.file_system_type = params[:file_system_type]
        type.lifecycle = params[:lifecycle]
        type.failure_details = FileSystemFailureDetails.build(params[:failure_details], context: "#{context}[:failure_details]") unless params[:failure_details].nil?
        type.storage_capacity = params[:storage_capacity]
        type.storage_type = params[:storage_type]
        type.vpc_id = params[:vpc_id]
        type.subnet_ids = SubnetIds.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.network_interface_ids = NetworkInterfaceIds.build(params[:network_interface_ids], context: "#{context}[:network_interface_ids]") unless params[:network_interface_ids].nil?
        type.dns_name = params[:dns_name]
        type.kms_key_id = params[:kms_key_id]
        type.resource_arn = params[:resource_arn]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.windows_configuration = WindowsFileSystemConfiguration.build(params[:windows_configuration], context: "#{context}[:windows_configuration]") unless params[:windows_configuration].nil?
        type.lustre_configuration = LustreFileSystemConfiguration.build(params[:lustre_configuration], context: "#{context}[:lustre_configuration]") unless params[:lustre_configuration].nil?
        type.administrative_actions = AdministrativeActions.build(params[:administrative_actions], context: "#{context}[:administrative_actions]") unless params[:administrative_actions].nil?
        type.ontap_configuration = OntapFileSystemConfiguration.build(params[:ontap_configuration], context: "#{context}[:ontap_configuration]") unless params[:ontap_configuration].nil?
        type.file_system_type_version = params[:file_system_type_version]
        type.open_zfs_configuration = OpenZFSFileSystemConfiguration.build(params[:open_zfs_configuration], context: "#{context}[:open_zfs_configuration]") unless params[:open_zfs_configuration].nil?
        type
      end
    end

    module FileSystemEndpoint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FileSystemEndpoint, context: context)
        type = Types::FileSystemEndpoint.new
        type.dns_name = params[:dns_name]
        type.ip_addresses = OntapEndpointIpAddresses.build(params[:ip_addresses], context: "#{context}[:ip_addresses]") unless params[:ip_addresses].nil?
        type
      end
    end

    module FileSystemEndpoints
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FileSystemEndpoints, context: context)
        type = Types::FileSystemEndpoints.new
        type.intercluster = FileSystemEndpoint.build(params[:intercluster], context: "#{context}[:intercluster]") unless params[:intercluster].nil?
        type.management = FileSystemEndpoint.build(params[:management], context: "#{context}[:management]") unless params[:management].nil?
        type
      end
    end

    module FileSystemFailureDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FileSystemFailureDetails, context: context)
        type = Types::FileSystemFailureDetails.new
        type.message = params[:message]
        type
      end
    end

    module FileSystemIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module FileSystemMaintenanceOperations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module FileSystemNotFound
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FileSystemNotFound, context: context)
        type = Types::FileSystemNotFound.new
        type.message = params[:message]
        type
      end
    end

    module FileSystems
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FileSystem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Filter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Filter, context: context)
        type = Types::Filter.new
        type.name = params[:name]
        type.values = FilterValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module FilterValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Filters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Filter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module IncompatibleParameterError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IncompatibleParameterError, context: context)
        type = Types::IncompatibleParameterError.new
        type.parameter = params[:parameter]
        type.message = params[:message]
        type
      end
    end

    module IncompatibleRegionForMultiAZ
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IncompatibleRegionForMultiAZ, context: context)
        type = Types::IncompatibleRegionForMultiAZ.new
        type.message = params[:message]
        type
      end
    end

    module InternalServerError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerError, context: context)
        type = Types::InternalServerError.new
        type.message = params[:message]
        type
      end
    end

    module InvalidDataRepositoryType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidDataRepositoryType, context: context)
        type = Types::InvalidDataRepositoryType.new
        type.message = params[:message]
        type
      end
    end

    module InvalidDestinationKmsKey
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidDestinationKmsKey, context: context)
        type = Types::InvalidDestinationKmsKey.new
        type.message = params[:message]
        type
      end
    end

    module InvalidExportPath
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidExportPath, context: context)
        type = Types::InvalidExportPath.new
        type.message = params[:message]
        type
      end
    end

    module InvalidImportPath
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidImportPath, context: context)
        type = Types::InvalidImportPath.new
        type.message = params[:message]
        type
      end
    end

    module InvalidNetworkSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidNetworkSettings, context: context)
        type = Types::InvalidNetworkSettings.new
        type.message = params[:message]
        type.invalid_subnet_id = params[:invalid_subnet_id]
        type.invalid_security_group_id = params[:invalid_security_group_id]
        type.invalid_route_table_id = params[:invalid_route_table_id]
        type
      end
    end

    module InvalidPerUnitStorageThroughput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidPerUnitStorageThroughput, context: context)
        type = Types::InvalidPerUnitStorageThroughput.new
        type.message = params[:message]
        type
      end
    end

    module InvalidRegion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRegion, context: context)
        type = Types::InvalidRegion.new
        type.message = params[:message]
        type
      end
    end

    module InvalidSourceKmsKey
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidSourceKmsKey, context: context)
        type = Types::InvalidSourceKmsKey.new
        type.message = params[:message]
        type
      end
    end

    module LifecycleTransitionReason
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LifecycleTransitionReason, context: context)
        type = Types::LifecycleTransitionReason.new
        type.message = params[:message]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module LustreFileSystemConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LustreFileSystemConfiguration, context: context)
        type = Types::LustreFileSystemConfiguration.new
        type.weekly_maintenance_start_time = params[:weekly_maintenance_start_time]
        type.data_repository_configuration = DataRepositoryConfiguration.build(params[:data_repository_configuration], context: "#{context}[:data_repository_configuration]") unless params[:data_repository_configuration].nil?
        type.deployment_type = params[:deployment_type]
        type.per_unit_storage_throughput = params[:per_unit_storage_throughput]
        type.mount_name = params[:mount_name]
        type.daily_automatic_backup_start_time = params[:daily_automatic_backup_start_time]
        type.automatic_backup_retention_days = params[:automatic_backup_retention_days]
        type.copy_tags_to_backups = params[:copy_tags_to_backups]
        type.drive_cache_type = params[:drive_cache_type]
        type.data_compression_type = params[:data_compression_type]
        type.log_configuration = LustreLogConfiguration.build(params[:log_configuration], context: "#{context}[:log_configuration]") unless params[:log_configuration].nil?
        type.root_squash_configuration = LustreRootSquashConfiguration.build(params[:root_squash_configuration], context: "#{context}[:root_squash_configuration]") unless params[:root_squash_configuration].nil?
        type
      end
    end

    module LustreLogConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LustreLogConfiguration, context: context)
        type = Types::LustreLogConfiguration.new
        type.level = params[:level]
        type.destination = params[:destination]
        type
      end
    end

    module LustreLogCreateConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LustreLogCreateConfiguration, context: context)
        type = Types::LustreLogCreateConfiguration.new
        type.level = params[:level]
        type.destination = params[:destination]
        type
      end
    end

    module LustreNoSquashNids
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module LustreRootSquashConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LustreRootSquashConfiguration, context: context)
        type = Types::LustreRootSquashConfiguration.new
        type.root_squash = params[:root_squash]
        type.no_squash_nids = LustreNoSquashNids.build(params[:no_squash_nids], context: "#{context}[:no_squash_nids]") unless params[:no_squash_nids].nil?
        type
      end
    end

    module MissingFileSystemConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MissingFileSystemConfiguration, context: context)
        type = Types::MissingFileSystemConfiguration.new
        type.message = params[:message]
        type
      end
    end

    module MissingVolumeConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MissingVolumeConfiguration, context: context)
        type = Types::MissingVolumeConfiguration.new
        type.message = params[:message]
        type
      end
    end

    module NetworkInterfaceIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module NotServiceResourceError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotServiceResourceError, context: context)
        type = Types::NotServiceResourceError.new
        type.resource_arn = params[:resource_arn]
        type.message = params[:message]
        type
      end
    end

    module OntapEndpointIpAddresses
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module OntapFileSystemConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OntapFileSystemConfiguration, context: context)
        type = Types::OntapFileSystemConfiguration.new
        type.automatic_backup_retention_days = params[:automatic_backup_retention_days]
        type.daily_automatic_backup_start_time = params[:daily_automatic_backup_start_time]
        type.deployment_type = params[:deployment_type]
        type.endpoint_ip_address_range = params[:endpoint_ip_address_range]
        type.endpoints = FileSystemEndpoints.build(params[:endpoints], context: "#{context}[:endpoints]") unless params[:endpoints].nil?
        type.disk_iops_configuration = DiskIopsConfiguration.build(params[:disk_iops_configuration], context: "#{context}[:disk_iops_configuration]") unless params[:disk_iops_configuration].nil?
        type.preferred_subnet_id = params[:preferred_subnet_id]
        type.route_table_ids = RouteTableIds.build(params[:route_table_ids], context: "#{context}[:route_table_ids]") unless params[:route_table_ids].nil?
        type.throughput_capacity = params[:throughput_capacity]
        type.weekly_maintenance_start_time = params[:weekly_maintenance_start_time]
        type
      end
    end

    module OntapVolumeConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OntapVolumeConfiguration, context: context)
        type = Types::OntapVolumeConfiguration.new
        type.flex_cache_endpoint_type = params[:flex_cache_endpoint_type]
        type.junction_path = params[:junction_path]
        type.security_style = params[:security_style]
        type.size_in_megabytes = params[:size_in_megabytes]
        type.storage_efficiency_enabled = params[:storage_efficiency_enabled]
        type.storage_virtual_machine_id = params[:storage_virtual_machine_id]
        type.storage_virtual_machine_root = params[:storage_virtual_machine_root]
        type.tiering_policy = TieringPolicy.build(params[:tiering_policy], context: "#{context}[:tiering_policy]") unless params[:tiering_policy].nil?
        type.uuid = params[:uuid]
        type.ontap_volume_type = params[:ontap_volume_type]
        type
      end
    end

    module OpenZFSClientConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OpenZFSClientConfiguration, context: context)
        type = Types::OpenZFSClientConfiguration.new
        type.clients = params[:clients]
        type.options = OpenZFSNfsExportOptions.build(params[:options], context: "#{context}[:options]") unless params[:options].nil?
        type
      end
    end

    module OpenZFSClientConfigurations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OpenZFSClientConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OpenZFSCreateRootVolumeConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OpenZFSCreateRootVolumeConfiguration, context: context)
        type = Types::OpenZFSCreateRootVolumeConfiguration.new
        type.record_size_ki_b = params[:record_size_ki_b]
        type.data_compression_type = params[:data_compression_type]
        type.nfs_exports = OpenZFSNfsExports.build(params[:nfs_exports], context: "#{context}[:nfs_exports]") unless params[:nfs_exports].nil?
        type.user_and_group_quotas = OpenZFSUserAndGroupQuotas.build(params[:user_and_group_quotas], context: "#{context}[:user_and_group_quotas]") unless params[:user_and_group_quotas].nil?
        type.copy_tags_to_snapshots = params[:copy_tags_to_snapshots]
        type.read_only = params[:read_only]
        type
      end
    end

    module OpenZFSFileSystemConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OpenZFSFileSystemConfiguration, context: context)
        type = Types::OpenZFSFileSystemConfiguration.new
        type.automatic_backup_retention_days = params[:automatic_backup_retention_days]
        type.copy_tags_to_backups = params[:copy_tags_to_backups]
        type.copy_tags_to_volumes = params[:copy_tags_to_volumes]
        type.daily_automatic_backup_start_time = params[:daily_automatic_backup_start_time]
        type.deployment_type = params[:deployment_type]
        type.throughput_capacity = params[:throughput_capacity]
        type.weekly_maintenance_start_time = params[:weekly_maintenance_start_time]
        type.disk_iops_configuration = DiskIopsConfiguration.build(params[:disk_iops_configuration], context: "#{context}[:disk_iops_configuration]") unless params[:disk_iops_configuration].nil?
        type.root_volume_id = params[:root_volume_id]
        type
      end
    end

    module OpenZFSNfsExport
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OpenZFSNfsExport, context: context)
        type = Types::OpenZFSNfsExport.new
        type.client_configurations = OpenZFSClientConfigurations.build(params[:client_configurations], context: "#{context}[:client_configurations]") unless params[:client_configurations].nil?
        type
      end
    end

    module OpenZFSNfsExportOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module OpenZFSNfsExports
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OpenZFSNfsExport.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OpenZFSOriginSnapshotConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OpenZFSOriginSnapshotConfiguration, context: context)
        type = Types::OpenZFSOriginSnapshotConfiguration.new
        type.snapshot_arn = params[:snapshot_arn]
        type.copy_strategy = params[:copy_strategy]
        type
      end
    end

    module OpenZFSUserAndGroupQuotas
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OpenZFSUserOrGroupQuota.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OpenZFSUserOrGroupQuota
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OpenZFSUserOrGroupQuota, context: context)
        type = Types::OpenZFSUserOrGroupQuota.new
        type.type = params[:type]
        type.id = params[:id]
        type.storage_capacity_quota_gi_b = params[:storage_capacity_quota_gi_b]
        type
      end
    end

    module OpenZFSVolumeConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OpenZFSVolumeConfiguration, context: context)
        type = Types::OpenZFSVolumeConfiguration.new
        type.parent_volume_id = params[:parent_volume_id]
        type.volume_path = params[:volume_path]
        type.storage_capacity_reservation_gi_b = params[:storage_capacity_reservation_gi_b]
        type.storage_capacity_quota_gi_b = params[:storage_capacity_quota_gi_b]
        type.record_size_ki_b = params[:record_size_ki_b]
        type.data_compression_type = params[:data_compression_type]
        type.copy_tags_to_snapshots = params[:copy_tags_to_snapshots]
        type.origin_snapshot = OpenZFSOriginSnapshotConfiguration.build(params[:origin_snapshot], context: "#{context}[:origin_snapshot]") unless params[:origin_snapshot].nil?
        type.read_only = params[:read_only]
        type.nfs_exports = OpenZFSNfsExports.build(params[:nfs_exports], context: "#{context}[:nfs_exports]") unless params[:nfs_exports].nil?
        type.user_and_group_quotas = OpenZFSUserAndGroupQuotas.build(params[:user_and_group_quotas], context: "#{context}[:user_and_group_quotas]") unless params[:user_and_group_quotas].nil?
        type
      end
    end

    module ReleaseFileSystemNfsV3LocksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReleaseFileSystemNfsV3LocksInput, context: context)
        type = Types::ReleaseFileSystemNfsV3LocksInput.new
        type.file_system_id = params[:file_system_id]
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type
      end
    end

    module ReleaseFileSystemNfsV3LocksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReleaseFileSystemNfsV3LocksOutput, context: context)
        type = Types::ReleaseFileSystemNfsV3LocksOutput.new
        type.file_system = FileSystem.build(params[:file_system], context: "#{context}[:file_system]") unless params[:file_system].nil?
        type
      end
    end

    module ResourceDoesNotSupportTagging
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceDoesNotSupportTagging, context: context)
        type = Types::ResourceDoesNotSupportTagging.new
        type.resource_arn = params[:resource_arn]
        type.message = params[:message]
        type
      end
    end

    module ResourceNotFound
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFound, context: context)
        type = Types::ResourceNotFound.new
        type.resource_arn = params[:resource_arn]
        type.message = params[:message]
        type
      end
    end

    module RestoreOpenZFSVolumeOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RestoreVolumeFromSnapshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RestoreVolumeFromSnapshotInput, context: context)
        type = Types::RestoreVolumeFromSnapshotInput.new
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.volume_id = params[:volume_id]
        type.snapshot_id = params[:snapshot_id]
        type.options = RestoreOpenZFSVolumeOptions.build(params[:options], context: "#{context}[:options]") unless params[:options].nil?
        type
      end
    end

    module RestoreVolumeFromSnapshotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RestoreVolumeFromSnapshotOutput, context: context)
        type = Types::RestoreVolumeFromSnapshotOutput.new
        type.volume_id = params[:volume_id]
        type.lifecycle = params[:lifecycle]
        type
      end
    end

    module RouteTableIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module S3DataRepositoryConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3DataRepositoryConfiguration, context: context)
        type = Types::S3DataRepositoryConfiguration.new
        type.auto_import_policy = AutoImportPolicy.build(params[:auto_import_policy], context: "#{context}[:auto_import_policy]") unless params[:auto_import_policy].nil?
        type.auto_export_policy = AutoExportPolicy.build(params[:auto_export_policy], context: "#{context}[:auto_export_policy]") unless params[:auto_export_policy].nil?
        type
      end
    end

    module SecurityGroupIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SelfManagedActiveDirectoryAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SelfManagedActiveDirectoryAttributes, context: context)
        type = Types::SelfManagedActiveDirectoryAttributes.new
        type.domain_name = params[:domain_name]
        type.organizational_unit_distinguished_name = params[:organizational_unit_distinguished_name]
        type.file_system_administrators_group = params[:file_system_administrators_group]
        type.user_name = params[:user_name]
        type.dns_ips = DnsIps.build(params[:dns_ips], context: "#{context}[:dns_ips]") unless params[:dns_ips].nil?
        type
      end
    end

    module SelfManagedActiveDirectoryConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SelfManagedActiveDirectoryConfiguration, context: context)
        type = Types::SelfManagedActiveDirectoryConfiguration.new
        type.domain_name = params[:domain_name]
        type.organizational_unit_distinguished_name = params[:organizational_unit_distinguished_name]
        type.file_system_administrators_group = params[:file_system_administrators_group]
        type.user_name = params[:user_name]
        type.password = params[:password]
        type.dns_ips = DnsIps.build(params[:dns_ips], context: "#{context}[:dns_ips]") unless params[:dns_ips].nil?
        type
      end
    end

    module SelfManagedActiveDirectoryConfigurationUpdates
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SelfManagedActiveDirectoryConfigurationUpdates, context: context)
        type = Types::SelfManagedActiveDirectoryConfigurationUpdates.new
        type.user_name = params[:user_name]
        type.password = params[:password]
        type.dns_ips = DnsIps.build(params[:dns_ips], context: "#{context}[:dns_ips]") unless params[:dns_ips].nil?
        type
      end
    end

    module ServiceLimitExceeded
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceLimitExceeded, context: context)
        type = Types::ServiceLimitExceeded.new
        type.limit = params[:limit]
        type.message = params[:message]
        type
      end
    end

    module Snapshot
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Snapshot, context: context)
        type = Types::Snapshot.new
        type.resource_arn = params[:resource_arn]
        type.snapshot_id = params[:snapshot_id]
        type.name = params[:name]
        type.volume_id = params[:volume_id]
        type.creation_time = params[:creation_time]
        type.lifecycle = params[:lifecycle]
        type.lifecycle_transition_reason = LifecycleTransitionReason.build(params[:lifecycle_transition_reason], context: "#{context}[:lifecycle_transition_reason]") unless params[:lifecycle_transition_reason].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.administrative_actions = AdministrativeActions.build(params[:administrative_actions], context: "#{context}[:administrative_actions]") unless params[:administrative_actions].nil?
        type
      end
    end

    module SnapshotFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SnapshotFilter, context: context)
        type = Types::SnapshotFilter.new
        type.name = params[:name]
        type.values = SnapshotFilterValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module SnapshotFilterValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SnapshotFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SnapshotFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SnapshotIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SnapshotNotFound
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SnapshotNotFound, context: context)
        type = Types::SnapshotNotFound.new
        type.message = params[:message]
        type
      end
    end

    module Snapshots
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Snapshot.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SourceBackupUnavailable
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SourceBackupUnavailable, context: context)
        type = Types::SourceBackupUnavailable.new
        type.message = params[:message]
        type.backup_id = params[:backup_id]
        type
      end
    end

    module StorageVirtualMachine
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StorageVirtualMachine, context: context)
        type = Types::StorageVirtualMachine.new
        type.active_directory_configuration = SvmActiveDirectoryConfiguration.build(params[:active_directory_configuration], context: "#{context}[:active_directory_configuration]") unless params[:active_directory_configuration].nil?
        type.creation_time = params[:creation_time]
        type.endpoints = SvmEndpoints.build(params[:endpoints], context: "#{context}[:endpoints]") unless params[:endpoints].nil?
        type.file_system_id = params[:file_system_id]
        type.lifecycle = params[:lifecycle]
        type.name = params[:name]
        type.resource_arn = params[:resource_arn]
        type.storage_virtual_machine_id = params[:storage_virtual_machine_id]
        type.subtype = params[:subtype]
        type.uuid = params[:uuid]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.lifecycle_transition_reason = LifecycleTransitionReason.build(params[:lifecycle_transition_reason], context: "#{context}[:lifecycle_transition_reason]") unless params[:lifecycle_transition_reason].nil?
        type.root_volume_security_style = params[:root_volume_security_style]
        type
      end
    end

    module StorageVirtualMachineFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StorageVirtualMachineFilter, context: context)
        type = Types::StorageVirtualMachineFilter.new
        type.name = params[:name]
        type.values = StorageVirtualMachineFilterValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module StorageVirtualMachineFilterValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module StorageVirtualMachineFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StorageVirtualMachineFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StorageVirtualMachineIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module StorageVirtualMachineNotFound
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StorageVirtualMachineNotFound, context: context)
        type = Types::StorageVirtualMachineNotFound.new
        type.message = params[:message]
        type
      end
    end

    module StorageVirtualMachines
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StorageVirtualMachine.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SubnetIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SvmActiveDirectoryConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SvmActiveDirectoryConfiguration, context: context)
        type = Types::SvmActiveDirectoryConfiguration.new
        type.net_bios_name = params[:net_bios_name]
        type.self_managed_active_directory_configuration = SelfManagedActiveDirectoryAttributes.build(params[:self_managed_active_directory_configuration], context: "#{context}[:self_managed_active_directory_configuration]") unless params[:self_managed_active_directory_configuration].nil?
        type
      end
    end

    module SvmEndpoint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SvmEndpoint, context: context)
        type = Types::SvmEndpoint.new
        type.dns_name = params[:dns_name]
        type.ip_addresses = OntapEndpointIpAddresses.build(params[:ip_addresses], context: "#{context}[:ip_addresses]") unless params[:ip_addresses].nil?
        type
      end
    end

    module SvmEndpoints
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SvmEndpoints, context: context)
        type = Types::SvmEndpoints.new
        type.iscsi = SvmEndpoint.build(params[:iscsi], context: "#{context}[:iscsi]") unless params[:iscsi].nil?
        type.management = SvmEndpoint.build(params[:management], context: "#{context}[:management]") unless params[:management].nil?
        type.nfs = SvmEndpoint.build(params[:nfs], context: "#{context}[:nfs]") unless params[:nfs].nil?
        type.smb = SvmEndpoint.build(params[:smb], context: "#{context}[:smb]") unless params[:smb].nil?
        type
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

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
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

    module TaskIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TieringPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TieringPolicy, context: context)
        type = Types::TieringPolicy.new
        type.cooling_period = params[:cooling_period]
        type.name = params[:name]
        type
      end
    end

    module UnsupportedOperation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsupportedOperation, context: context)
        type = Types::UnsupportedOperation.new
        type.message = params[:message]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeys.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module UpdateDataRepositoryAssociationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDataRepositoryAssociationInput, context: context)
        type = Types::UpdateDataRepositoryAssociationInput.new
        type.association_id = params[:association_id]
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.imported_file_chunk_size = params[:imported_file_chunk_size]
        type.s3 = S3DataRepositoryConfiguration.build(params[:s3], context: "#{context}[:s3]") unless params[:s3].nil?
        type
      end
    end

    module UpdateDataRepositoryAssociationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDataRepositoryAssociationOutput, context: context)
        type = Types::UpdateDataRepositoryAssociationOutput.new
        type.association = DataRepositoryAssociation.build(params[:association], context: "#{context}[:association]") unless params[:association].nil?
        type
      end
    end

    module UpdateFileSystemInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFileSystemInput, context: context)
        type = Types::UpdateFileSystemInput.new
        type.file_system_id = params[:file_system_id]
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.storage_capacity = params[:storage_capacity]
        type.windows_configuration = UpdateFileSystemWindowsConfiguration.build(params[:windows_configuration], context: "#{context}[:windows_configuration]") unless params[:windows_configuration].nil?
        type.lustre_configuration = UpdateFileSystemLustreConfiguration.build(params[:lustre_configuration], context: "#{context}[:lustre_configuration]") unless params[:lustre_configuration].nil?
        type.ontap_configuration = UpdateFileSystemOntapConfiguration.build(params[:ontap_configuration], context: "#{context}[:ontap_configuration]") unless params[:ontap_configuration].nil?
        type.open_zfs_configuration = UpdateFileSystemOpenZFSConfiguration.build(params[:open_zfs_configuration], context: "#{context}[:open_zfs_configuration]") unless params[:open_zfs_configuration].nil?
        type
      end
    end

    module UpdateFileSystemLustreConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFileSystemLustreConfiguration, context: context)
        type = Types::UpdateFileSystemLustreConfiguration.new
        type.weekly_maintenance_start_time = params[:weekly_maintenance_start_time]
        type.daily_automatic_backup_start_time = params[:daily_automatic_backup_start_time]
        type.automatic_backup_retention_days = params[:automatic_backup_retention_days]
        type.auto_import_policy = params[:auto_import_policy]
        type.data_compression_type = params[:data_compression_type]
        type.log_configuration = LustreLogCreateConfiguration.build(params[:log_configuration], context: "#{context}[:log_configuration]") unless params[:log_configuration].nil?
        type.root_squash_configuration = LustreRootSquashConfiguration.build(params[:root_squash_configuration], context: "#{context}[:root_squash_configuration]") unless params[:root_squash_configuration].nil?
        type
      end
    end

    module UpdateFileSystemOntapConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFileSystemOntapConfiguration, context: context)
        type = Types::UpdateFileSystemOntapConfiguration.new
        type.automatic_backup_retention_days = params[:automatic_backup_retention_days]
        type.daily_automatic_backup_start_time = params[:daily_automatic_backup_start_time]
        type.fsx_admin_password = params[:fsx_admin_password]
        type.weekly_maintenance_start_time = params[:weekly_maintenance_start_time]
        type.disk_iops_configuration = DiskIopsConfiguration.build(params[:disk_iops_configuration], context: "#{context}[:disk_iops_configuration]") unless params[:disk_iops_configuration].nil?
        type.throughput_capacity = params[:throughput_capacity]
        type
      end
    end

    module UpdateFileSystemOpenZFSConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFileSystemOpenZFSConfiguration, context: context)
        type = Types::UpdateFileSystemOpenZFSConfiguration.new
        type.automatic_backup_retention_days = params[:automatic_backup_retention_days]
        type.copy_tags_to_backups = params[:copy_tags_to_backups]
        type.copy_tags_to_volumes = params[:copy_tags_to_volumes]
        type.daily_automatic_backup_start_time = params[:daily_automatic_backup_start_time]
        type.throughput_capacity = params[:throughput_capacity]
        type.weekly_maintenance_start_time = params[:weekly_maintenance_start_time]
        type.disk_iops_configuration = DiskIopsConfiguration.build(params[:disk_iops_configuration], context: "#{context}[:disk_iops_configuration]") unless params[:disk_iops_configuration].nil?
        type
      end
    end

    module UpdateFileSystemOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFileSystemOutput, context: context)
        type = Types::UpdateFileSystemOutput.new
        type.file_system = FileSystem.build(params[:file_system], context: "#{context}[:file_system]") unless params[:file_system].nil?
        type
      end
    end

    module UpdateFileSystemWindowsConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFileSystemWindowsConfiguration, context: context)
        type = Types::UpdateFileSystemWindowsConfiguration.new
        type.weekly_maintenance_start_time = params[:weekly_maintenance_start_time]
        type.daily_automatic_backup_start_time = params[:daily_automatic_backup_start_time]
        type.automatic_backup_retention_days = params[:automatic_backup_retention_days]
        type.throughput_capacity = params[:throughput_capacity]
        type.self_managed_active_directory_configuration = SelfManagedActiveDirectoryConfigurationUpdates.build(params[:self_managed_active_directory_configuration], context: "#{context}[:self_managed_active_directory_configuration]") unless params[:self_managed_active_directory_configuration].nil?
        type.audit_log_configuration = WindowsAuditLogCreateConfiguration.build(params[:audit_log_configuration], context: "#{context}[:audit_log_configuration]") unless params[:audit_log_configuration].nil?
        type
      end
    end

    module UpdateOntapVolumeConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateOntapVolumeConfiguration, context: context)
        type = Types::UpdateOntapVolumeConfiguration.new
        type.junction_path = params[:junction_path]
        type.security_style = params[:security_style]
        type.size_in_megabytes = params[:size_in_megabytes]
        type.storage_efficiency_enabled = params[:storage_efficiency_enabled]
        type.tiering_policy = TieringPolicy.build(params[:tiering_policy], context: "#{context}[:tiering_policy]") unless params[:tiering_policy].nil?
        type
      end
    end

    module UpdateOpenZFSVolumeConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateOpenZFSVolumeConfiguration, context: context)
        type = Types::UpdateOpenZFSVolumeConfiguration.new
        type.storage_capacity_reservation_gi_b = params[:storage_capacity_reservation_gi_b]
        type.storage_capacity_quota_gi_b = params[:storage_capacity_quota_gi_b]
        type.record_size_ki_b = params[:record_size_ki_b]
        type.data_compression_type = params[:data_compression_type]
        type.nfs_exports = OpenZFSNfsExports.build(params[:nfs_exports], context: "#{context}[:nfs_exports]") unless params[:nfs_exports].nil?
        type.user_and_group_quotas = OpenZFSUserAndGroupQuotas.build(params[:user_and_group_quotas], context: "#{context}[:user_and_group_quotas]") unless params[:user_and_group_quotas].nil?
        type.read_only = params[:read_only]
        type
      end
    end

    module UpdateSnapshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSnapshotInput, context: context)
        type = Types::UpdateSnapshotInput.new
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.name = params[:name]
        type.snapshot_id = params[:snapshot_id]
        type
      end
    end

    module UpdateSnapshotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSnapshotOutput, context: context)
        type = Types::UpdateSnapshotOutput.new
        type.snapshot = Snapshot.build(params[:snapshot], context: "#{context}[:snapshot]") unless params[:snapshot].nil?
        type
      end
    end

    module UpdateStorageVirtualMachineInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateStorageVirtualMachineInput, context: context)
        type = Types::UpdateStorageVirtualMachineInput.new
        type.active_directory_configuration = UpdateSvmActiveDirectoryConfiguration.build(params[:active_directory_configuration], context: "#{context}[:active_directory_configuration]") unless params[:active_directory_configuration].nil?
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.storage_virtual_machine_id = params[:storage_virtual_machine_id]
        type.svm_admin_password = params[:svm_admin_password]
        type
      end
    end

    module UpdateStorageVirtualMachineOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateStorageVirtualMachineOutput, context: context)
        type = Types::UpdateStorageVirtualMachineOutput.new
        type.storage_virtual_machine = StorageVirtualMachine.build(params[:storage_virtual_machine], context: "#{context}[:storage_virtual_machine]") unless params[:storage_virtual_machine].nil?
        type
      end
    end

    module UpdateSvmActiveDirectoryConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSvmActiveDirectoryConfiguration, context: context)
        type = Types::UpdateSvmActiveDirectoryConfiguration.new
        type.self_managed_active_directory_configuration = SelfManagedActiveDirectoryConfigurationUpdates.build(params[:self_managed_active_directory_configuration], context: "#{context}[:self_managed_active_directory_configuration]") unless params[:self_managed_active_directory_configuration].nil?
        type
      end
    end

    module UpdateVolumeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateVolumeInput, context: context)
        type = Types::UpdateVolumeInput.new
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.volume_id = params[:volume_id]
        type.ontap_configuration = UpdateOntapVolumeConfiguration.build(params[:ontap_configuration], context: "#{context}[:ontap_configuration]") unless params[:ontap_configuration].nil?
        type.name = params[:name]
        type.open_zfs_configuration = UpdateOpenZFSVolumeConfiguration.build(params[:open_zfs_configuration], context: "#{context}[:open_zfs_configuration]") unless params[:open_zfs_configuration].nil?
        type
      end
    end

    module UpdateVolumeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateVolumeOutput, context: context)
        type = Types::UpdateVolumeOutput.new
        type.volume = Volume.build(params[:volume], context: "#{context}[:volume]") unless params[:volume].nil?
        type
      end
    end

    module Volume
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Volume, context: context)
        type = Types::Volume.new
        type.creation_time = params[:creation_time]
        type.file_system_id = params[:file_system_id]
        type.lifecycle = params[:lifecycle]
        type.name = params[:name]
        type.ontap_configuration = OntapVolumeConfiguration.build(params[:ontap_configuration], context: "#{context}[:ontap_configuration]") unless params[:ontap_configuration].nil?
        type.resource_arn = params[:resource_arn]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.volume_id = params[:volume_id]
        type.volume_type = params[:volume_type]
        type.lifecycle_transition_reason = LifecycleTransitionReason.build(params[:lifecycle_transition_reason], context: "#{context}[:lifecycle_transition_reason]") unless params[:lifecycle_transition_reason].nil?
        type.administrative_actions = AdministrativeActions.build(params[:administrative_actions], context: "#{context}[:administrative_actions]") unless params[:administrative_actions].nil?
        type.open_zfs_configuration = OpenZFSVolumeConfiguration.build(params[:open_zfs_configuration], context: "#{context}[:open_zfs_configuration]") unless params[:open_zfs_configuration].nil?
        type
      end
    end

    module VolumeFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VolumeFilter, context: context)
        type = Types::VolumeFilter.new
        type.name = params[:name]
        type.values = VolumeFilterValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module VolumeFilterValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module VolumeFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VolumeFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module VolumeIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module VolumeNotFound
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VolumeNotFound, context: context)
        type = Types::VolumeNotFound.new
        type.message = params[:message]
        type
      end
    end

    module Volumes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Volume.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module WindowsAuditLogConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WindowsAuditLogConfiguration, context: context)
        type = Types::WindowsAuditLogConfiguration.new
        type.file_access_audit_log_level = params[:file_access_audit_log_level]
        type.file_share_access_audit_log_level = params[:file_share_access_audit_log_level]
        type.audit_log_destination = params[:audit_log_destination]
        type
      end
    end

    module WindowsAuditLogCreateConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WindowsAuditLogCreateConfiguration, context: context)
        type = Types::WindowsAuditLogCreateConfiguration.new
        type.file_access_audit_log_level = params[:file_access_audit_log_level]
        type.file_share_access_audit_log_level = params[:file_share_access_audit_log_level]
        type.audit_log_destination = params[:audit_log_destination]
        type
      end
    end

    module WindowsFileSystemConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WindowsFileSystemConfiguration, context: context)
        type = Types::WindowsFileSystemConfiguration.new
        type.active_directory_id = params[:active_directory_id]
        type.self_managed_active_directory_configuration = SelfManagedActiveDirectoryAttributes.build(params[:self_managed_active_directory_configuration], context: "#{context}[:self_managed_active_directory_configuration]") unless params[:self_managed_active_directory_configuration].nil?
        type.deployment_type = params[:deployment_type]
        type.remote_administration_endpoint = params[:remote_administration_endpoint]
        type.preferred_subnet_id = params[:preferred_subnet_id]
        type.preferred_file_server_ip = params[:preferred_file_server_ip]
        type.throughput_capacity = params[:throughput_capacity]
        type.maintenance_operations_in_progress = FileSystemMaintenanceOperations.build(params[:maintenance_operations_in_progress], context: "#{context}[:maintenance_operations_in_progress]") unless params[:maintenance_operations_in_progress].nil?
        type.weekly_maintenance_start_time = params[:weekly_maintenance_start_time]
        type.daily_automatic_backup_start_time = params[:daily_automatic_backup_start_time]
        type.automatic_backup_retention_days = params[:automatic_backup_retention_days]
        type.copy_tags_to_backups = params[:copy_tags_to_backups]
        type.aliases = Aliases.build(params[:aliases], context: "#{context}[:aliases]") unless params[:aliases].nil?
        type.audit_log_configuration = WindowsAuditLogConfiguration.build(params[:audit_log_configuration], context: "#{context}[:audit_log_configuration]") unless params[:audit_log_configuration].nil?
        type
      end
    end

  end
end
