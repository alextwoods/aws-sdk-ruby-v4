# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::FSx
  module Builders

    # Operation Builder for AssociateFileSystemAliases
    class AssociateFileSystemAliases
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSSimbaAPIService_v20180301.AssociateFileSystemAliases'
        data = {}
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['FileSystemId'] = input[:file_system_id] unless input[:file_system_id].nil?
        data['Aliases'] = Builders::AlternateDNSNames.build(input[:aliases]) unless input[:aliases].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for AlternateDNSNames
    class AlternateDNSNames
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CancelDataRepositoryTask
    class CancelDataRepositoryTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSSimbaAPIService_v20180301.CancelDataRepositoryTask'
        data = {}
        data['TaskId'] = input[:task_id] unless input[:task_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CopyBackup
    class CopyBackup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSSimbaAPIService_v20180301.CopyBackup'
        data = {}
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['SourceBackupId'] = input[:source_backup_id] unless input[:source_backup_id].nil?
        data['SourceRegion'] = input[:source_region] unless input[:source_region].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data['CopyTags'] = input[:copy_tags] unless input[:copy_tags].nil?
        data['Tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for Tags
    class Tags
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for CreateBackup
    class CreateBackup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSSimbaAPIService_v20180301.CreateBackup'
        data = {}
        data['FileSystemId'] = input[:file_system_id] unless input[:file_system_id].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['Tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        data['VolumeId'] = input[:volume_id] unless input[:volume_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateDataRepositoryAssociation
    class CreateDataRepositoryAssociation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSSimbaAPIService_v20180301.CreateDataRepositoryAssociation'
        data = {}
        data['FileSystemId'] = input[:file_system_id] unless input[:file_system_id].nil?
        data['FileSystemPath'] = input[:file_system_path] unless input[:file_system_path].nil?
        data['DataRepositoryPath'] = input[:data_repository_path] unless input[:data_repository_path].nil?
        data['BatchImportMetaDataOnCreate'] = input[:batch_import_meta_data_on_create] unless input[:batch_import_meta_data_on_create].nil?
        data['ImportedFileChunkSize'] = input[:imported_file_chunk_size] unless input[:imported_file_chunk_size].nil?
        data['S3'] = Builders::S3DataRepositoryConfiguration.build(input[:s3]) unless input[:s3].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['Tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for S3DataRepositoryConfiguration
    class S3DataRepositoryConfiguration
      def self.build(input)
        data = {}
        data['AutoImportPolicy'] = Builders::AutoImportPolicy.build(input[:auto_import_policy]) unless input[:auto_import_policy].nil?
        data['AutoExportPolicy'] = Builders::AutoExportPolicy.build(input[:auto_export_policy]) unless input[:auto_export_policy].nil?
        data
      end
    end

    # Structure Builder for AutoExportPolicy
    class AutoExportPolicy
      def self.build(input)
        data = {}
        data['Events'] = Builders::EventTypes.build(input[:events]) unless input[:events].nil?
        data
      end
    end

    # List Builder for EventTypes
    class EventTypes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AutoImportPolicy
    class AutoImportPolicy
      def self.build(input)
        data = {}
        data['Events'] = Builders::EventTypes.build(input[:events]) unless input[:events].nil?
        data
      end
    end

    # Operation Builder for CreateDataRepositoryTask
    class CreateDataRepositoryTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSSimbaAPIService_v20180301.CreateDataRepositoryTask'
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data['Paths'] = Builders::DataRepositoryTaskPaths.build(input[:paths]) unless input[:paths].nil?
        data['FileSystemId'] = input[:file_system_id] unless input[:file_system_id].nil?
        data['Report'] = Builders::CompletionReport.build(input[:report]) unless input[:report].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['Tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for CompletionReport
    class CompletionReport
      def self.build(input)
        data = {}
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data['Path'] = input[:path] unless input[:path].nil?
        data['Format'] = input[:format] unless input[:format].nil?
        data['Scope'] = input[:scope] unless input[:scope].nil?
        data
      end
    end

    # List Builder for DataRepositoryTaskPaths
    class DataRepositoryTaskPaths
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateFileSystem
    class CreateFileSystem
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSSimbaAPIService_v20180301.CreateFileSystem'
        data = {}
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['FileSystemType'] = input[:file_system_type] unless input[:file_system_type].nil?
        data['StorageCapacity'] = input[:storage_capacity] unless input[:storage_capacity].nil?
        data['StorageType'] = input[:storage_type] unless input[:storage_type].nil?
        data['SubnetIds'] = Builders::SubnetIds.build(input[:subnet_ids]) unless input[:subnet_ids].nil?
        data['SecurityGroupIds'] = Builders::SecurityGroupIds.build(input[:security_group_ids]) unless input[:security_group_ids].nil?
        data['Tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data['WindowsConfiguration'] = Builders::CreateFileSystemWindowsConfiguration.build(input[:windows_configuration]) unless input[:windows_configuration].nil?
        data['LustreConfiguration'] = Builders::CreateFileSystemLustreConfiguration.build(input[:lustre_configuration]) unless input[:lustre_configuration].nil?
        data['OntapConfiguration'] = Builders::CreateFileSystemOntapConfiguration.build(input[:ontap_configuration]) unless input[:ontap_configuration].nil?
        data['FileSystemTypeVersion'] = input[:file_system_type_version] unless input[:file_system_type_version].nil?
        data['OpenZFSConfiguration'] = Builders::CreateFileSystemOpenZFSConfiguration.build(input[:open_zfs_configuration]) unless input[:open_zfs_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for CreateFileSystemOpenZFSConfiguration
    class CreateFileSystemOpenZFSConfiguration
      def self.build(input)
        data = {}
        data['AutomaticBackupRetentionDays'] = input[:automatic_backup_retention_days] unless input[:automatic_backup_retention_days].nil?
        data['CopyTagsToBackups'] = input[:copy_tags_to_backups] unless input[:copy_tags_to_backups].nil?
        data['CopyTagsToVolumes'] = input[:copy_tags_to_volumes] unless input[:copy_tags_to_volumes].nil?
        data['DailyAutomaticBackupStartTime'] = input[:daily_automatic_backup_start_time] unless input[:daily_automatic_backup_start_time].nil?
        data['DeploymentType'] = input[:deployment_type] unless input[:deployment_type].nil?
        data['ThroughputCapacity'] = input[:throughput_capacity] unless input[:throughput_capacity].nil?
        data['WeeklyMaintenanceStartTime'] = input[:weekly_maintenance_start_time] unless input[:weekly_maintenance_start_time].nil?
        data['DiskIopsConfiguration'] = Builders::DiskIopsConfiguration.build(input[:disk_iops_configuration]) unless input[:disk_iops_configuration].nil?
        data['RootVolumeConfiguration'] = Builders::OpenZFSCreateRootVolumeConfiguration.build(input[:root_volume_configuration]) unless input[:root_volume_configuration].nil?
        data
      end
    end

    # Structure Builder for OpenZFSCreateRootVolumeConfiguration
    class OpenZFSCreateRootVolumeConfiguration
      def self.build(input)
        data = {}
        data['RecordSizeKiB'] = input[:record_size_ki_b] unless input[:record_size_ki_b].nil?
        data['DataCompressionType'] = input[:data_compression_type] unless input[:data_compression_type].nil?
        data['NfsExports'] = Builders::OpenZFSNfsExports.build(input[:nfs_exports]) unless input[:nfs_exports].nil?
        data['UserAndGroupQuotas'] = Builders::OpenZFSUserAndGroupQuotas.build(input[:user_and_group_quotas]) unless input[:user_and_group_quotas].nil?
        data['CopyTagsToSnapshots'] = input[:copy_tags_to_snapshots] unless input[:copy_tags_to_snapshots].nil?
        data['ReadOnly'] = input[:read_only] unless input[:read_only].nil?
        data
      end
    end

    # List Builder for OpenZFSUserAndGroupQuotas
    class OpenZFSUserAndGroupQuotas
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::OpenZFSUserOrGroupQuota.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for OpenZFSUserOrGroupQuota
    class OpenZFSUserOrGroupQuota
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data['Id'] = input[:id] unless input[:id].nil?
        data['StorageCapacityQuotaGiB'] = input[:storage_capacity_quota_gi_b] unless input[:storage_capacity_quota_gi_b].nil?
        data
      end
    end

    # List Builder for OpenZFSNfsExports
    class OpenZFSNfsExports
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::OpenZFSNfsExport.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for OpenZFSNfsExport
    class OpenZFSNfsExport
      def self.build(input)
        data = {}
        data['ClientConfigurations'] = Builders::OpenZFSClientConfigurations.build(input[:client_configurations]) unless input[:client_configurations].nil?
        data
      end
    end

    # List Builder for OpenZFSClientConfigurations
    class OpenZFSClientConfigurations
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::OpenZFSClientConfiguration.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for OpenZFSClientConfiguration
    class OpenZFSClientConfiguration
      def self.build(input)
        data = {}
        data['Clients'] = input[:clients] unless input[:clients].nil?
        data['Options'] = Builders::OpenZFSNfsExportOptions.build(input[:options]) unless input[:options].nil?
        data
      end
    end

    # List Builder for OpenZFSNfsExportOptions
    class OpenZFSNfsExportOptions
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DiskIopsConfiguration
    class DiskIopsConfiguration
      def self.build(input)
        data = {}
        data['Mode'] = input[:mode] unless input[:mode].nil?
        data['Iops'] = input[:iops] unless input[:iops].nil?
        data
      end
    end

    # Structure Builder for CreateFileSystemOntapConfiguration
    class CreateFileSystemOntapConfiguration
      def self.build(input)
        data = {}
        data['AutomaticBackupRetentionDays'] = input[:automatic_backup_retention_days] unless input[:automatic_backup_retention_days].nil?
        data['DailyAutomaticBackupStartTime'] = input[:daily_automatic_backup_start_time] unless input[:daily_automatic_backup_start_time].nil?
        data['DeploymentType'] = input[:deployment_type] unless input[:deployment_type].nil?
        data['EndpointIpAddressRange'] = input[:endpoint_ip_address_range] unless input[:endpoint_ip_address_range].nil?
        data['FsxAdminPassword'] = input[:fsx_admin_password] unless input[:fsx_admin_password].nil?
        data['DiskIopsConfiguration'] = Builders::DiskIopsConfiguration.build(input[:disk_iops_configuration]) unless input[:disk_iops_configuration].nil?
        data['PreferredSubnetId'] = input[:preferred_subnet_id] unless input[:preferred_subnet_id].nil?
        data['RouteTableIds'] = Builders::RouteTableIds.build(input[:route_table_ids]) unless input[:route_table_ids].nil?
        data['ThroughputCapacity'] = input[:throughput_capacity] unless input[:throughput_capacity].nil?
        data['WeeklyMaintenanceStartTime'] = input[:weekly_maintenance_start_time] unless input[:weekly_maintenance_start_time].nil?
        data
      end
    end

    # List Builder for RouteTableIds
    class RouteTableIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CreateFileSystemLustreConfiguration
    class CreateFileSystemLustreConfiguration
      def self.build(input)
        data = {}
        data['WeeklyMaintenanceStartTime'] = input[:weekly_maintenance_start_time] unless input[:weekly_maintenance_start_time].nil?
        data['ImportPath'] = input[:import_path] unless input[:import_path].nil?
        data['ExportPath'] = input[:export_path] unless input[:export_path].nil?
        data['ImportedFileChunkSize'] = input[:imported_file_chunk_size] unless input[:imported_file_chunk_size].nil?
        data['DeploymentType'] = input[:deployment_type] unless input[:deployment_type].nil?
        data['AutoImportPolicy'] = input[:auto_import_policy] unless input[:auto_import_policy].nil?
        data['PerUnitStorageThroughput'] = input[:per_unit_storage_throughput] unless input[:per_unit_storage_throughput].nil?
        data['DailyAutomaticBackupStartTime'] = input[:daily_automatic_backup_start_time] unless input[:daily_automatic_backup_start_time].nil?
        data['AutomaticBackupRetentionDays'] = input[:automatic_backup_retention_days] unless input[:automatic_backup_retention_days].nil?
        data['CopyTagsToBackups'] = input[:copy_tags_to_backups] unless input[:copy_tags_to_backups].nil?
        data['DriveCacheType'] = input[:drive_cache_type] unless input[:drive_cache_type].nil?
        data['DataCompressionType'] = input[:data_compression_type] unless input[:data_compression_type].nil?
        data['LogConfiguration'] = Builders::LustreLogCreateConfiguration.build(input[:log_configuration]) unless input[:log_configuration].nil?
        data['RootSquashConfiguration'] = Builders::LustreRootSquashConfiguration.build(input[:root_squash_configuration]) unless input[:root_squash_configuration].nil?
        data
      end
    end

    # Structure Builder for LustreRootSquashConfiguration
    class LustreRootSquashConfiguration
      def self.build(input)
        data = {}
        data['RootSquash'] = input[:root_squash] unless input[:root_squash].nil?
        data['NoSquashNids'] = Builders::LustreNoSquashNids.build(input[:no_squash_nids]) unless input[:no_squash_nids].nil?
        data
      end
    end

    # List Builder for LustreNoSquashNids
    class LustreNoSquashNids
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for LustreLogCreateConfiguration
    class LustreLogCreateConfiguration
      def self.build(input)
        data = {}
        data['Level'] = input[:level] unless input[:level].nil?
        data['Destination'] = input[:destination] unless input[:destination].nil?
        data
      end
    end

    # Structure Builder for CreateFileSystemWindowsConfiguration
    class CreateFileSystemWindowsConfiguration
      def self.build(input)
        data = {}
        data['ActiveDirectoryId'] = input[:active_directory_id] unless input[:active_directory_id].nil?
        data['SelfManagedActiveDirectoryConfiguration'] = Builders::SelfManagedActiveDirectoryConfiguration.build(input[:self_managed_active_directory_configuration]) unless input[:self_managed_active_directory_configuration].nil?
        data['DeploymentType'] = input[:deployment_type] unless input[:deployment_type].nil?
        data['PreferredSubnetId'] = input[:preferred_subnet_id] unless input[:preferred_subnet_id].nil?
        data['ThroughputCapacity'] = input[:throughput_capacity] unless input[:throughput_capacity].nil?
        data['WeeklyMaintenanceStartTime'] = input[:weekly_maintenance_start_time] unless input[:weekly_maintenance_start_time].nil?
        data['DailyAutomaticBackupStartTime'] = input[:daily_automatic_backup_start_time] unless input[:daily_automatic_backup_start_time].nil?
        data['AutomaticBackupRetentionDays'] = input[:automatic_backup_retention_days] unless input[:automatic_backup_retention_days].nil?
        data['CopyTagsToBackups'] = input[:copy_tags_to_backups] unless input[:copy_tags_to_backups].nil?
        data['Aliases'] = Builders::AlternateDNSNames.build(input[:aliases]) unless input[:aliases].nil?
        data['AuditLogConfiguration'] = Builders::WindowsAuditLogCreateConfiguration.build(input[:audit_log_configuration]) unless input[:audit_log_configuration].nil?
        data
      end
    end

    # Structure Builder for WindowsAuditLogCreateConfiguration
    class WindowsAuditLogCreateConfiguration
      def self.build(input)
        data = {}
        data['FileAccessAuditLogLevel'] = input[:file_access_audit_log_level] unless input[:file_access_audit_log_level].nil?
        data['FileShareAccessAuditLogLevel'] = input[:file_share_access_audit_log_level] unless input[:file_share_access_audit_log_level].nil?
        data['AuditLogDestination'] = input[:audit_log_destination] unless input[:audit_log_destination].nil?
        data
      end
    end

    # Structure Builder for SelfManagedActiveDirectoryConfiguration
    class SelfManagedActiveDirectoryConfiguration
      def self.build(input)
        data = {}
        data['DomainName'] = input[:domain_name] unless input[:domain_name].nil?
        data['OrganizationalUnitDistinguishedName'] = input[:organizational_unit_distinguished_name] unless input[:organizational_unit_distinguished_name].nil?
        data['FileSystemAdministratorsGroup'] = input[:file_system_administrators_group] unless input[:file_system_administrators_group].nil?
        data['UserName'] = input[:user_name] unless input[:user_name].nil?
        data['Password'] = input[:password] unless input[:password].nil?
        data['DnsIps'] = Builders::DnsIps.build(input[:dns_ips]) unless input[:dns_ips].nil?
        data
      end
    end

    # List Builder for DnsIps
    class DnsIps
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for SecurityGroupIds
    class SecurityGroupIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for SubnetIds
    class SubnetIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateFileSystemFromBackup
    class CreateFileSystemFromBackup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSSimbaAPIService_v20180301.CreateFileSystemFromBackup'
        data = {}
        data['BackupId'] = input[:backup_id] unless input[:backup_id].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['SubnetIds'] = Builders::SubnetIds.build(input[:subnet_ids]) unless input[:subnet_ids].nil?
        data['SecurityGroupIds'] = Builders::SecurityGroupIds.build(input[:security_group_ids]) unless input[:security_group_ids].nil?
        data['Tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        data['WindowsConfiguration'] = Builders::CreateFileSystemWindowsConfiguration.build(input[:windows_configuration]) unless input[:windows_configuration].nil?
        data['LustreConfiguration'] = Builders::CreateFileSystemLustreConfiguration.build(input[:lustre_configuration]) unless input[:lustre_configuration].nil?
        data['StorageType'] = input[:storage_type] unless input[:storage_type].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data['FileSystemTypeVersion'] = input[:file_system_type_version] unless input[:file_system_type_version].nil?
        data['OpenZFSConfiguration'] = Builders::CreateFileSystemOpenZFSConfiguration.build(input[:open_zfs_configuration]) unless input[:open_zfs_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateSnapshot
    class CreateSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSSimbaAPIService_v20180301.CreateSnapshot'
        data = {}
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['VolumeId'] = input[:volume_id] unless input[:volume_id].nil?
        data['Tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateStorageVirtualMachine
    class CreateStorageVirtualMachine
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSSimbaAPIService_v20180301.CreateStorageVirtualMachine'
        data = {}
        data['ActiveDirectoryConfiguration'] = Builders::CreateSvmActiveDirectoryConfiguration.build(input[:active_directory_configuration]) unless input[:active_directory_configuration].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['FileSystemId'] = input[:file_system_id] unless input[:file_system_id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['SvmAdminPassword'] = input[:svm_admin_password] unless input[:svm_admin_password].nil?
        data['Tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        data['RootVolumeSecurityStyle'] = input[:root_volume_security_style] unless input[:root_volume_security_style].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for CreateSvmActiveDirectoryConfiguration
    class CreateSvmActiveDirectoryConfiguration
      def self.build(input)
        data = {}
        data['NetBiosName'] = input[:net_bios_name] unless input[:net_bios_name].nil?
        data['SelfManagedActiveDirectoryConfiguration'] = Builders::SelfManagedActiveDirectoryConfiguration.build(input[:self_managed_active_directory_configuration]) unless input[:self_managed_active_directory_configuration].nil?
        data
      end
    end

    # Operation Builder for CreateVolume
    class CreateVolume
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSSimbaAPIService_v20180301.CreateVolume'
        data = {}
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['VolumeType'] = input[:volume_type] unless input[:volume_type].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['OntapConfiguration'] = Builders::CreateOntapVolumeConfiguration.build(input[:ontap_configuration]) unless input[:ontap_configuration].nil?
        data['Tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        data['OpenZFSConfiguration'] = Builders::CreateOpenZFSVolumeConfiguration.build(input[:open_zfs_configuration]) unless input[:open_zfs_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for CreateOpenZFSVolumeConfiguration
    class CreateOpenZFSVolumeConfiguration
      def self.build(input)
        data = {}
        data['ParentVolumeId'] = input[:parent_volume_id] unless input[:parent_volume_id].nil?
        data['StorageCapacityReservationGiB'] = input[:storage_capacity_reservation_gi_b] unless input[:storage_capacity_reservation_gi_b].nil?
        data['StorageCapacityQuotaGiB'] = input[:storage_capacity_quota_gi_b] unless input[:storage_capacity_quota_gi_b].nil?
        data['RecordSizeKiB'] = input[:record_size_ki_b] unless input[:record_size_ki_b].nil?
        data['DataCompressionType'] = input[:data_compression_type] unless input[:data_compression_type].nil?
        data['CopyTagsToSnapshots'] = input[:copy_tags_to_snapshots] unless input[:copy_tags_to_snapshots].nil?
        data['OriginSnapshot'] = Builders::CreateOpenZFSOriginSnapshotConfiguration.build(input[:origin_snapshot]) unless input[:origin_snapshot].nil?
        data['ReadOnly'] = input[:read_only] unless input[:read_only].nil?
        data['NfsExports'] = Builders::OpenZFSNfsExports.build(input[:nfs_exports]) unless input[:nfs_exports].nil?
        data['UserAndGroupQuotas'] = Builders::OpenZFSUserAndGroupQuotas.build(input[:user_and_group_quotas]) unless input[:user_and_group_quotas].nil?
        data
      end
    end

    # Structure Builder for CreateOpenZFSOriginSnapshotConfiguration
    class CreateOpenZFSOriginSnapshotConfiguration
      def self.build(input)
        data = {}
        data['SnapshotARN'] = input[:snapshot_arn] unless input[:snapshot_arn].nil?
        data['CopyStrategy'] = input[:copy_strategy] unless input[:copy_strategy].nil?
        data
      end
    end

    # Structure Builder for CreateOntapVolumeConfiguration
    class CreateOntapVolumeConfiguration
      def self.build(input)
        data = {}
        data['JunctionPath'] = input[:junction_path] unless input[:junction_path].nil?
        data['SecurityStyle'] = input[:security_style] unless input[:security_style].nil?
        data['SizeInMegabytes'] = input[:size_in_megabytes] unless input[:size_in_megabytes].nil?
        data['StorageEfficiencyEnabled'] = input[:storage_efficiency_enabled] unless input[:storage_efficiency_enabled].nil?
        data['StorageVirtualMachineId'] = input[:storage_virtual_machine_id] unless input[:storage_virtual_machine_id].nil?
        data['TieringPolicy'] = Builders::TieringPolicy.build(input[:tiering_policy]) unless input[:tiering_policy].nil?
        data
      end
    end

    # Structure Builder for TieringPolicy
    class TieringPolicy
      def self.build(input)
        data = {}
        data['CoolingPeriod'] = input[:cooling_period] unless input[:cooling_period].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data
      end
    end

    # Operation Builder for CreateVolumeFromBackup
    class CreateVolumeFromBackup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSSimbaAPIService_v20180301.CreateVolumeFromBackup'
        data = {}
        data['BackupId'] = input[:backup_id] unless input[:backup_id].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['OntapConfiguration'] = Builders::CreateOntapVolumeConfiguration.build(input[:ontap_configuration]) unless input[:ontap_configuration].nil?
        data['Tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteBackup
    class DeleteBackup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSSimbaAPIService_v20180301.DeleteBackup'
        data = {}
        data['BackupId'] = input[:backup_id] unless input[:backup_id].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteDataRepositoryAssociation
    class DeleteDataRepositoryAssociation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSSimbaAPIService_v20180301.DeleteDataRepositoryAssociation'
        data = {}
        data['AssociationId'] = input[:association_id] unless input[:association_id].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['DeleteDataInFileSystem'] = input[:delete_data_in_file_system] unless input[:delete_data_in_file_system].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteFileSystem
    class DeleteFileSystem
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSSimbaAPIService_v20180301.DeleteFileSystem'
        data = {}
        data['FileSystemId'] = input[:file_system_id] unless input[:file_system_id].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['WindowsConfiguration'] = Builders::DeleteFileSystemWindowsConfiguration.build(input[:windows_configuration]) unless input[:windows_configuration].nil?
        data['LustreConfiguration'] = Builders::DeleteFileSystemLustreConfiguration.build(input[:lustre_configuration]) unless input[:lustre_configuration].nil?
        data['OpenZFSConfiguration'] = Builders::DeleteFileSystemOpenZFSConfiguration.build(input[:open_zfs_configuration]) unless input[:open_zfs_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DeleteFileSystemOpenZFSConfiguration
    class DeleteFileSystemOpenZFSConfiguration
      def self.build(input)
        data = {}
        data['SkipFinalBackup'] = input[:skip_final_backup] unless input[:skip_final_backup].nil?
        data['FinalBackupTags'] = Builders::Tags.build(input[:final_backup_tags]) unless input[:final_backup_tags].nil?
        data['Options'] = Builders::DeleteFileSystemOpenZFSOptions.build(input[:options]) unless input[:options].nil?
        data
      end
    end

    # List Builder for DeleteFileSystemOpenZFSOptions
    class DeleteFileSystemOpenZFSOptions
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DeleteFileSystemLustreConfiguration
    class DeleteFileSystemLustreConfiguration
      def self.build(input)
        data = {}
        data['SkipFinalBackup'] = input[:skip_final_backup] unless input[:skip_final_backup].nil?
        data['FinalBackupTags'] = Builders::Tags.build(input[:final_backup_tags]) unless input[:final_backup_tags].nil?
        data
      end
    end

    # Structure Builder for DeleteFileSystemWindowsConfiguration
    class DeleteFileSystemWindowsConfiguration
      def self.build(input)
        data = {}
        data['SkipFinalBackup'] = input[:skip_final_backup] unless input[:skip_final_backup].nil?
        data['FinalBackupTags'] = Builders::Tags.build(input[:final_backup_tags]) unless input[:final_backup_tags].nil?
        data
      end
    end

    # Operation Builder for DeleteSnapshot
    class DeleteSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSSimbaAPIService_v20180301.DeleteSnapshot'
        data = {}
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['SnapshotId'] = input[:snapshot_id] unless input[:snapshot_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteStorageVirtualMachine
    class DeleteStorageVirtualMachine
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSSimbaAPIService_v20180301.DeleteStorageVirtualMachine'
        data = {}
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['StorageVirtualMachineId'] = input[:storage_virtual_machine_id] unless input[:storage_virtual_machine_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteVolume
    class DeleteVolume
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSSimbaAPIService_v20180301.DeleteVolume'
        data = {}
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['VolumeId'] = input[:volume_id] unless input[:volume_id].nil?
        data['OntapConfiguration'] = Builders::DeleteVolumeOntapConfiguration.build(input[:ontap_configuration]) unless input[:ontap_configuration].nil?
        data['OpenZFSConfiguration'] = Builders::DeleteVolumeOpenZFSConfiguration.build(input[:open_zfs_configuration]) unless input[:open_zfs_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DeleteVolumeOpenZFSConfiguration
    class DeleteVolumeOpenZFSConfiguration
      def self.build(input)
        data = {}
        data['Options'] = Builders::DeleteOpenZFSVolumeOptions.build(input[:options]) unless input[:options].nil?
        data
      end
    end

    # List Builder for DeleteOpenZFSVolumeOptions
    class DeleteOpenZFSVolumeOptions
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DeleteVolumeOntapConfiguration
    class DeleteVolumeOntapConfiguration
      def self.build(input)
        data = {}
        data['SkipFinalBackup'] = input[:skip_final_backup] unless input[:skip_final_backup].nil?
        data['FinalBackupTags'] = Builders::Tags.build(input[:final_backup_tags]) unless input[:final_backup_tags].nil?
        data
      end
    end

    # Operation Builder for DescribeBackups
    class DescribeBackups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSSimbaAPIService_v20180301.DescribeBackups'
        data = {}
        data['BackupIds'] = Builders::BackupIds.build(input[:backup_ids]) unless input[:backup_ids].nil?
        data['Filters'] = Builders::Filters.build(input[:filters]) unless input[:filters].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for Filters
    class Filters
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Filter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Filter
    class Filter
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Values'] = Builders::FilterValues.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for FilterValues
    class FilterValues
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for BackupIds
    class BackupIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeDataRepositoryAssociations
    class DescribeDataRepositoryAssociations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSSimbaAPIService_v20180301.DescribeDataRepositoryAssociations'
        data = {}
        data['AssociationIds'] = Builders::DataRepositoryAssociationIds.build(input[:association_ids]) unless input[:association_ids].nil?
        data['Filters'] = Builders::Filters.build(input[:filters]) unless input[:filters].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for DataRepositoryAssociationIds
    class DataRepositoryAssociationIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeDataRepositoryTasks
    class DescribeDataRepositoryTasks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSSimbaAPIService_v20180301.DescribeDataRepositoryTasks'
        data = {}
        data['TaskIds'] = Builders::TaskIds.build(input[:task_ids]) unless input[:task_ids].nil?
        data['Filters'] = Builders::DataRepositoryTaskFilters.build(input[:filters]) unless input[:filters].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for DataRepositoryTaskFilters
    class DataRepositoryTaskFilters
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::DataRepositoryTaskFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DataRepositoryTaskFilter
    class DataRepositoryTaskFilter
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Values'] = Builders::DataRepositoryTaskFilterValues.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for DataRepositoryTaskFilterValues
    class DataRepositoryTaskFilterValues
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for TaskIds
    class TaskIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeFileSystemAliases
    class DescribeFileSystemAliases
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSSimbaAPIService_v20180301.DescribeFileSystemAliases'
        data = {}
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['FileSystemId'] = input[:file_system_id] unless input[:file_system_id].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeFileSystems
    class DescribeFileSystems
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSSimbaAPIService_v20180301.DescribeFileSystems'
        data = {}
        data['FileSystemIds'] = Builders::FileSystemIds.build(input[:file_system_ids]) unless input[:file_system_ids].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for FileSystemIds
    class FileSystemIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeSnapshots
    class DescribeSnapshots
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSSimbaAPIService_v20180301.DescribeSnapshots'
        data = {}
        data['SnapshotIds'] = Builders::SnapshotIds.build(input[:snapshot_ids]) unless input[:snapshot_ids].nil?
        data['Filters'] = Builders::SnapshotFilters.build(input[:filters]) unless input[:filters].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SnapshotFilters
    class SnapshotFilters
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::SnapshotFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SnapshotFilter
    class SnapshotFilter
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Values'] = Builders::SnapshotFilterValues.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for SnapshotFilterValues
    class SnapshotFilterValues
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for SnapshotIds
    class SnapshotIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeStorageVirtualMachines
    class DescribeStorageVirtualMachines
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSSimbaAPIService_v20180301.DescribeStorageVirtualMachines'
        data = {}
        data['StorageVirtualMachineIds'] = Builders::StorageVirtualMachineIds.build(input[:storage_virtual_machine_ids]) unless input[:storage_virtual_machine_ids].nil?
        data['Filters'] = Builders::StorageVirtualMachineFilters.build(input[:filters]) unless input[:filters].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for StorageVirtualMachineFilters
    class StorageVirtualMachineFilters
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::StorageVirtualMachineFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for StorageVirtualMachineFilter
    class StorageVirtualMachineFilter
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Values'] = Builders::StorageVirtualMachineFilterValues.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for StorageVirtualMachineFilterValues
    class StorageVirtualMachineFilterValues
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for StorageVirtualMachineIds
    class StorageVirtualMachineIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeVolumes
    class DescribeVolumes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSSimbaAPIService_v20180301.DescribeVolumes'
        data = {}
        data['VolumeIds'] = Builders::VolumeIds.build(input[:volume_ids]) unless input[:volume_ids].nil?
        data['Filters'] = Builders::VolumeFilters.build(input[:filters]) unless input[:filters].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for VolumeFilters
    class VolumeFilters
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::VolumeFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for VolumeFilter
    class VolumeFilter
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Values'] = Builders::VolumeFilterValues.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for VolumeFilterValues
    class VolumeFilterValues
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for VolumeIds
    class VolumeIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DisassociateFileSystemAliases
    class DisassociateFileSystemAliases
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSSimbaAPIService_v20180301.DisassociateFileSystemAliases'
        data = {}
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['FileSystemId'] = input[:file_system_id] unless input[:file_system_id].nil?
        data['Aliases'] = Builders::AlternateDNSNames.build(input[:aliases]) unless input[:aliases].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSSimbaAPIService_v20180301.ListTagsForResource'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ReleaseFileSystemNfsV3Locks
    class ReleaseFileSystemNfsV3Locks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSSimbaAPIService_v20180301.ReleaseFileSystemNfsV3Locks'
        data = {}
        data['FileSystemId'] = input[:file_system_id] unless input[:file_system_id].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RestoreVolumeFromSnapshot
    class RestoreVolumeFromSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSSimbaAPIService_v20180301.RestoreVolumeFromSnapshot'
        data = {}
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['VolumeId'] = input[:volume_id] unless input[:volume_id].nil?
        data['SnapshotId'] = input[:snapshot_id] unless input[:snapshot_id].nil?
        data['Options'] = Builders::RestoreOpenZFSVolumeOptions.build(input[:options]) unless input[:options].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for RestoreOpenZFSVolumeOptions
    class RestoreOpenZFSVolumeOptions
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSSimbaAPIService_v20180301.TagResource'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSSimbaAPIService_v20180301.UntagResource'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['TagKeys'] = Builders::TagKeys.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagKeys
    class TagKeys
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateDataRepositoryAssociation
    class UpdateDataRepositoryAssociation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSSimbaAPIService_v20180301.UpdateDataRepositoryAssociation'
        data = {}
        data['AssociationId'] = input[:association_id] unless input[:association_id].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['ImportedFileChunkSize'] = input[:imported_file_chunk_size] unless input[:imported_file_chunk_size].nil?
        data['S3'] = Builders::S3DataRepositoryConfiguration.build(input[:s3]) unless input[:s3].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateFileSystem
    class UpdateFileSystem
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSSimbaAPIService_v20180301.UpdateFileSystem'
        data = {}
        data['FileSystemId'] = input[:file_system_id] unless input[:file_system_id].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['StorageCapacity'] = input[:storage_capacity] unless input[:storage_capacity].nil?
        data['WindowsConfiguration'] = Builders::UpdateFileSystemWindowsConfiguration.build(input[:windows_configuration]) unless input[:windows_configuration].nil?
        data['LustreConfiguration'] = Builders::UpdateFileSystemLustreConfiguration.build(input[:lustre_configuration]) unless input[:lustre_configuration].nil?
        data['OntapConfiguration'] = Builders::UpdateFileSystemOntapConfiguration.build(input[:ontap_configuration]) unless input[:ontap_configuration].nil?
        data['OpenZFSConfiguration'] = Builders::UpdateFileSystemOpenZFSConfiguration.build(input[:open_zfs_configuration]) unless input[:open_zfs_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for UpdateFileSystemOpenZFSConfiguration
    class UpdateFileSystemOpenZFSConfiguration
      def self.build(input)
        data = {}
        data['AutomaticBackupRetentionDays'] = input[:automatic_backup_retention_days] unless input[:automatic_backup_retention_days].nil?
        data['CopyTagsToBackups'] = input[:copy_tags_to_backups] unless input[:copy_tags_to_backups].nil?
        data['CopyTagsToVolumes'] = input[:copy_tags_to_volumes] unless input[:copy_tags_to_volumes].nil?
        data['DailyAutomaticBackupStartTime'] = input[:daily_automatic_backup_start_time] unless input[:daily_automatic_backup_start_time].nil?
        data['ThroughputCapacity'] = input[:throughput_capacity] unless input[:throughput_capacity].nil?
        data['WeeklyMaintenanceStartTime'] = input[:weekly_maintenance_start_time] unless input[:weekly_maintenance_start_time].nil?
        data['DiskIopsConfiguration'] = Builders::DiskIopsConfiguration.build(input[:disk_iops_configuration]) unless input[:disk_iops_configuration].nil?
        data
      end
    end

    # Structure Builder for UpdateFileSystemOntapConfiguration
    class UpdateFileSystemOntapConfiguration
      def self.build(input)
        data = {}
        data['AutomaticBackupRetentionDays'] = input[:automatic_backup_retention_days] unless input[:automatic_backup_retention_days].nil?
        data['DailyAutomaticBackupStartTime'] = input[:daily_automatic_backup_start_time] unless input[:daily_automatic_backup_start_time].nil?
        data['FsxAdminPassword'] = input[:fsx_admin_password] unless input[:fsx_admin_password].nil?
        data['WeeklyMaintenanceStartTime'] = input[:weekly_maintenance_start_time] unless input[:weekly_maintenance_start_time].nil?
        data['DiskIopsConfiguration'] = Builders::DiskIopsConfiguration.build(input[:disk_iops_configuration]) unless input[:disk_iops_configuration].nil?
        data['ThroughputCapacity'] = input[:throughput_capacity] unless input[:throughput_capacity].nil?
        data
      end
    end

    # Structure Builder for UpdateFileSystemLustreConfiguration
    class UpdateFileSystemLustreConfiguration
      def self.build(input)
        data = {}
        data['WeeklyMaintenanceStartTime'] = input[:weekly_maintenance_start_time] unless input[:weekly_maintenance_start_time].nil?
        data['DailyAutomaticBackupStartTime'] = input[:daily_automatic_backup_start_time] unless input[:daily_automatic_backup_start_time].nil?
        data['AutomaticBackupRetentionDays'] = input[:automatic_backup_retention_days] unless input[:automatic_backup_retention_days].nil?
        data['AutoImportPolicy'] = input[:auto_import_policy] unless input[:auto_import_policy].nil?
        data['DataCompressionType'] = input[:data_compression_type] unless input[:data_compression_type].nil?
        data['LogConfiguration'] = Builders::LustreLogCreateConfiguration.build(input[:log_configuration]) unless input[:log_configuration].nil?
        data['RootSquashConfiguration'] = Builders::LustreRootSquashConfiguration.build(input[:root_squash_configuration]) unless input[:root_squash_configuration].nil?
        data
      end
    end

    # Structure Builder for UpdateFileSystemWindowsConfiguration
    class UpdateFileSystemWindowsConfiguration
      def self.build(input)
        data = {}
        data['WeeklyMaintenanceStartTime'] = input[:weekly_maintenance_start_time] unless input[:weekly_maintenance_start_time].nil?
        data['DailyAutomaticBackupStartTime'] = input[:daily_automatic_backup_start_time] unless input[:daily_automatic_backup_start_time].nil?
        data['AutomaticBackupRetentionDays'] = input[:automatic_backup_retention_days] unless input[:automatic_backup_retention_days].nil?
        data['ThroughputCapacity'] = input[:throughput_capacity] unless input[:throughput_capacity].nil?
        data['SelfManagedActiveDirectoryConfiguration'] = Builders::SelfManagedActiveDirectoryConfigurationUpdates.build(input[:self_managed_active_directory_configuration]) unless input[:self_managed_active_directory_configuration].nil?
        data['AuditLogConfiguration'] = Builders::WindowsAuditLogCreateConfiguration.build(input[:audit_log_configuration]) unless input[:audit_log_configuration].nil?
        data
      end
    end

    # Structure Builder for SelfManagedActiveDirectoryConfigurationUpdates
    class SelfManagedActiveDirectoryConfigurationUpdates
      def self.build(input)
        data = {}
        data['UserName'] = input[:user_name] unless input[:user_name].nil?
        data['Password'] = input[:password] unless input[:password].nil?
        data['DnsIps'] = Builders::DnsIps.build(input[:dns_ips]) unless input[:dns_ips].nil?
        data
      end
    end

    # Operation Builder for UpdateSnapshot
    class UpdateSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSSimbaAPIService_v20180301.UpdateSnapshot'
        data = {}
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['SnapshotId'] = input[:snapshot_id] unless input[:snapshot_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateStorageVirtualMachine
    class UpdateStorageVirtualMachine
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSSimbaAPIService_v20180301.UpdateStorageVirtualMachine'
        data = {}
        data['ActiveDirectoryConfiguration'] = Builders::UpdateSvmActiveDirectoryConfiguration.build(input[:active_directory_configuration]) unless input[:active_directory_configuration].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['StorageVirtualMachineId'] = input[:storage_virtual_machine_id] unless input[:storage_virtual_machine_id].nil?
        data['SvmAdminPassword'] = input[:svm_admin_password] unless input[:svm_admin_password].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for UpdateSvmActiveDirectoryConfiguration
    class UpdateSvmActiveDirectoryConfiguration
      def self.build(input)
        data = {}
        data['SelfManagedActiveDirectoryConfiguration'] = Builders::SelfManagedActiveDirectoryConfigurationUpdates.build(input[:self_managed_active_directory_configuration]) unless input[:self_managed_active_directory_configuration].nil?
        data
      end
    end

    # Operation Builder for UpdateVolume
    class UpdateVolume
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSSimbaAPIService_v20180301.UpdateVolume'
        data = {}
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['VolumeId'] = input[:volume_id] unless input[:volume_id].nil?
        data['OntapConfiguration'] = Builders::UpdateOntapVolumeConfiguration.build(input[:ontap_configuration]) unless input[:ontap_configuration].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['OpenZFSConfiguration'] = Builders::UpdateOpenZFSVolumeConfiguration.build(input[:open_zfs_configuration]) unless input[:open_zfs_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for UpdateOpenZFSVolumeConfiguration
    class UpdateOpenZFSVolumeConfiguration
      def self.build(input)
        data = {}
        data['StorageCapacityReservationGiB'] = input[:storage_capacity_reservation_gi_b] unless input[:storage_capacity_reservation_gi_b].nil?
        data['StorageCapacityQuotaGiB'] = input[:storage_capacity_quota_gi_b] unless input[:storage_capacity_quota_gi_b].nil?
        data['RecordSizeKiB'] = input[:record_size_ki_b] unless input[:record_size_ki_b].nil?
        data['DataCompressionType'] = input[:data_compression_type] unless input[:data_compression_type].nil?
        data['NfsExports'] = Builders::OpenZFSNfsExports.build(input[:nfs_exports]) unless input[:nfs_exports].nil?
        data['UserAndGroupQuotas'] = Builders::OpenZFSUserAndGroupQuotas.build(input[:user_and_group_quotas]) unless input[:user_and_group_quotas].nil?
        data['ReadOnly'] = input[:read_only] unless input[:read_only].nil?
        data
      end
    end

    # Structure Builder for UpdateOntapVolumeConfiguration
    class UpdateOntapVolumeConfiguration
      def self.build(input)
        data = {}
        data['JunctionPath'] = input[:junction_path] unless input[:junction_path].nil?
        data['SecurityStyle'] = input[:security_style] unless input[:security_style].nil?
        data['SizeInMegabytes'] = input[:size_in_megabytes] unless input[:size_in_megabytes].nil?
        data['StorageEfficiencyEnabled'] = input[:storage_efficiency_enabled] unless input[:storage_efficiency_enabled].nil?
        data['TieringPolicy'] = Builders::TieringPolicy.build(input[:tiering_policy]) unless input[:tiering_policy].nil?
        data
      end
    end
  end
end
