# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::FSx
  module Parsers

    # Operation Parser for AssociateFileSystemAliases
    class AssociateFileSystemAliases
      def self.parse(http_resp)
        data = Types::AssociateFileSystemAliasesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.aliases = (Parsers::Aliases.parse(map['Aliases']) unless map['Aliases'].nil?)
        data
      end
    end

    class Aliases
      def self.parse(list)
        list.map do |value|
          Parsers::Alias.parse(value) unless value.nil?
        end
      end
    end

    class Alias
      def self.parse(map)
        data = Types::Alias.new
        data.name = map['Name']
        data.lifecycle = map['Lifecycle']
        return data
      end
    end

    # Error Parser for InternalServerError
    class InternalServerError
      def self.parse(http_resp)
        data = Types::InternalServerError.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for BadRequest
    class BadRequest
      def self.parse(http_resp)
        data = Types::BadRequest.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for FileSystemNotFound
    class FileSystemNotFound
      def self.parse(http_resp)
        data = Types::FileSystemNotFound.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CancelDataRepositoryTask
    class CancelDataRepositoryTask
      def self.parse(http_resp)
        data = Types::CancelDataRepositoryTaskOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.lifecycle = map['Lifecycle']
        data.task_id = map['TaskId']
        data
      end
    end

    # Error Parser for DataRepositoryTaskNotFound
    class DataRepositoryTaskNotFound
      def self.parse(http_resp)
        data = Types::DataRepositoryTaskNotFound.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for DataRepositoryTaskEnded
    class DataRepositoryTaskEnded
      def self.parse(http_resp)
        data = Types::DataRepositoryTaskEnded.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for UnsupportedOperation
    class UnsupportedOperation
      def self.parse(http_resp)
        data = Types::UnsupportedOperation.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CopyBackup
    class CopyBackup
      def self.parse(http_resp)
        data = Types::CopyBackupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.backup = (Parsers::Backup.parse(map['Backup']) unless map['Backup'].nil?)
        data
      end
    end

    class Backup
      def self.parse(map)
        data = Types::Backup.new
        data.backup_id = map['BackupId']
        data.lifecycle = map['Lifecycle']
        data.failure_details = (Parsers::BackupFailureDetails.parse(map['FailureDetails']) unless map['FailureDetails'].nil?)
        data.type = map['Type']
        data.progress_percent = map['ProgressPercent']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.kms_key_id = map['KmsKeyId']
        data.resource_arn = map['ResourceARN']
        data.tags = (Parsers::Tags.parse(map['Tags']) unless map['Tags'].nil?)
        data.file_system = (Parsers::FileSystem.parse(map['FileSystem']) unless map['FileSystem'].nil?)
        data.directory_information = (Parsers::ActiveDirectoryBackupAttributes.parse(map['DirectoryInformation']) unless map['DirectoryInformation'].nil?)
        data.owner_id = map['OwnerId']
        data.source_backup_id = map['SourceBackupId']
        data.source_backup_region = map['SourceBackupRegion']
        data.resource_type = map['ResourceType']
        data.volume = (Parsers::Volume.parse(map['Volume']) unless map['Volume'].nil?)
        return data
      end
    end

    class Volume
      def self.parse(map)
        data = Types::Volume.new
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.file_system_id = map['FileSystemId']
        data.lifecycle = map['Lifecycle']
        data.name = map['Name']
        data.ontap_configuration = (Parsers::OntapVolumeConfiguration.parse(map['OntapConfiguration']) unless map['OntapConfiguration'].nil?)
        data.resource_arn = map['ResourceARN']
        data.tags = (Parsers::Tags.parse(map['Tags']) unless map['Tags'].nil?)
        data.volume_id = map['VolumeId']
        data.volume_type = map['VolumeType']
        data.lifecycle_transition_reason = (Parsers::LifecycleTransitionReason.parse(map['LifecycleTransitionReason']) unless map['LifecycleTransitionReason'].nil?)
        data.administrative_actions = (Parsers::AdministrativeActions.parse(map['AdministrativeActions']) unless map['AdministrativeActions'].nil?)
        data.open_zfs_configuration = (Parsers::OpenZFSVolumeConfiguration.parse(map['OpenZFSConfiguration']) unless map['OpenZFSConfiguration'].nil?)
        return data
      end
    end

    class OpenZFSVolumeConfiguration
      def self.parse(map)
        data = Types::OpenZFSVolumeConfiguration.new
        data.parent_volume_id = map['ParentVolumeId']
        data.volume_path = map['VolumePath']
        data.storage_capacity_reservation_gi_b = map['StorageCapacityReservationGiB']
        data.storage_capacity_quota_gi_b = map['StorageCapacityQuotaGiB']
        data.record_size_ki_b = map['RecordSizeKiB']
        data.data_compression_type = map['DataCompressionType']
        data.copy_tags_to_snapshots = map['CopyTagsToSnapshots']
        data.origin_snapshot = (Parsers::OpenZFSOriginSnapshotConfiguration.parse(map['OriginSnapshot']) unless map['OriginSnapshot'].nil?)
        data.read_only = map['ReadOnly']
        data.nfs_exports = (Parsers::OpenZFSNfsExports.parse(map['NfsExports']) unless map['NfsExports'].nil?)
        data.user_and_group_quotas = (Parsers::OpenZFSUserAndGroupQuotas.parse(map['UserAndGroupQuotas']) unless map['UserAndGroupQuotas'].nil?)
        return data
      end
    end

    class OpenZFSUserAndGroupQuotas
      def self.parse(list)
        list.map do |value|
          Parsers::OpenZFSUserOrGroupQuota.parse(value) unless value.nil?
        end
      end
    end

    class OpenZFSUserOrGroupQuota
      def self.parse(map)
        data = Types::OpenZFSUserOrGroupQuota.new
        data.type = map['Type']
        data.id = map['Id']
        data.storage_capacity_quota_gi_b = map['StorageCapacityQuotaGiB']
        return data
      end
    end

    class OpenZFSNfsExports
      def self.parse(list)
        list.map do |value|
          Parsers::OpenZFSNfsExport.parse(value) unless value.nil?
        end
      end
    end

    class OpenZFSNfsExport
      def self.parse(map)
        data = Types::OpenZFSNfsExport.new
        data.client_configurations = (Parsers::OpenZFSClientConfigurations.parse(map['ClientConfigurations']) unless map['ClientConfigurations'].nil?)
        return data
      end
    end

    class OpenZFSClientConfigurations
      def self.parse(list)
        list.map do |value|
          Parsers::OpenZFSClientConfiguration.parse(value) unless value.nil?
        end
      end
    end

    class OpenZFSClientConfiguration
      def self.parse(map)
        data = Types::OpenZFSClientConfiguration.new
        data.clients = map['Clients']
        data.options = (Parsers::OpenZFSNfsExportOptions.parse(map['Options']) unless map['Options'].nil?)
        return data
      end
    end

    class OpenZFSNfsExportOptions
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class OpenZFSOriginSnapshotConfiguration
      def self.parse(map)
        data = Types::OpenZFSOriginSnapshotConfiguration.new
        data.snapshot_arn = map['SnapshotARN']
        data.copy_strategy = map['CopyStrategy']
        return data
      end
    end

    class AdministrativeActions
      def self.parse(list)
        list.map do |value|
          Parsers::AdministrativeAction.parse(value) unless value.nil?
        end
      end
    end

    class AdministrativeAction
      def self.parse(map)
        data = Types::AdministrativeAction.new
        data.administrative_action_type = map['AdministrativeActionType']
        data.progress_percent = map['ProgressPercent']
        data.request_time = Time.at(map['RequestTime'].to_i) if map['RequestTime']
        data.status = map['Status']
        data.target_file_system_values = (Parsers::FileSystem.parse(map['TargetFileSystemValues']) unless map['TargetFileSystemValues'].nil?)
        data.failure_details = (Parsers::AdministrativeActionFailureDetails.parse(map['FailureDetails']) unless map['FailureDetails'].nil?)
        data.target_volume_values = (Parsers::Volume.parse(map['TargetVolumeValues']) unless map['TargetVolumeValues'].nil?)
        data.target_snapshot_values = (Parsers::Snapshot.parse(map['TargetSnapshotValues']) unless map['TargetSnapshotValues'].nil?)
        return data
      end
    end

    class Snapshot
      def self.parse(map)
        data = Types::Snapshot.new
        data.resource_arn = map['ResourceARN']
        data.snapshot_id = map['SnapshotId']
        data.name = map['Name']
        data.volume_id = map['VolumeId']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.lifecycle = map['Lifecycle']
        data.lifecycle_transition_reason = (Parsers::LifecycleTransitionReason.parse(map['LifecycleTransitionReason']) unless map['LifecycleTransitionReason'].nil?)
        data.tags = (Parsers::Tags.parse(map['Tags']) unless map['Tags'].nil?)
        data.administrative_actions = (Parsers::AdministrativeActions.parse(map['AdministrativeActions']) unless map['AdministrativeActions'].nil?)
        return data
      end
    end

    class Tags
      def self.parse(list)
        list.map do |value|
          Parsers::Tag.parse(value) unless value.nil?
        end
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['Key']
        data.value = map['Value']
        return data
      end
    end

    class LifecycleTransitionReason
      def self.parse(map)
        data = Types::LifecycleTransitionReason.new
        data.message = map['Message']
        return data
      end
    end

    class AdministrativeActionFailureDetails
      def self.parse(map)
        data = Types::AdministrativeActionFailureDetails.new
        data.message = map['Message']
        return data
      end
    end

    class FileSystem
      def self.parse(map)
        data = Types::FileSystem.new
        data.owner_id = map['OwnerId']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.file_system_id = map['FileSystemId']
        data.file_system_type = map['FileSystemType']
        data.lifecycle = map['Lifecycle']
        data.failure_details = (Parsers::FileSystemFailureDetails.parse(map['FailureDetails']) unless map['FailureDetails'].nil?)
        data.storage_capacity = map['StorageCapacity']
        data.storage_type = map['StorageType']
        data.vpc_id = map['VpcId']
        data.subnet_ids = (Parsers::SubnetIds.parse(map['SubnetIds']) unless map['SubnetIds'].nil?)
        data.network_interface_ids = (Parsers::NetworkInterfaceIds.parse(map['NetworkInterfaceIds']) unless map['NetworkInterfaceIds'].nil?)
        data.dns_name = map['DNSName']
        data.kms_key_id = map['KmsKeyId']
        data.resource_arn = map['ResourceARN']
        data.tags = (Parsers::Tags.parse(map['Tags']) unless map['Tags'].nil?)
        data.windows_configuration = (Parsers::WindowsFileSystemConfiguration.parse(map['WindowsConfiguration']) unless map['WindowsConfiguration'].nil?)
        data.lustre_configuration = (Parsers::LustreFileSystemConfiguration.parse(map['LustreConfiguration']) unless map['LustreConfiguration'].nil?)
        data.administrative_actions = (Parsers::AdministrativeActions.parse(map['AdministrativeActions']) unless map['AdministrativeActions'].nil?)
        data.ontap_configuration = (Parsers::OntapFileSystemConfiguration.parse(map['OntapConfiguration']) unless map['OntapConfiguration'].nil?)
        data.file_system_type_version = map['FileSystemTypeVersion']
        data.open_zfs_configuration = (Parsers::OpenZFSFileSystemConfiguration.parse(map['OpenZFSConfiguration']) unless map['OpenZFSConfiguration'].nil?)
        return data
      end
    end

    class OpenZFSFileSystemConfiguration
      def self.parse(map)
        data = Types::OpenZFSFileSystemConfiguration.new
        data.automatic_backup_retention_days = map['AutomaticBackupRetentionDays']
        data.copy_tags_to_backups = map['CopyTagsToBackups']
        data.copy_tags_to_volumes = map['CopyTagsToVolumes']
        data.daily_automatic_backup_start_time = map['DailyAutomaticBackupStartTime']
        data.deployment_type = map['DeploymentType']
        data.throughput_capacity = map['ThroughputCapacity']
        data.weekly_maintenance_start_time = map['WeeklyMaintenanceStartTime']
        data.disk_iops_configuration = (Parsers::DiskIopsConfiguration.parse(map['DiskIopsConfiguration']) unless map['DiskIopsConfiguration'].nil?)
        data.root_volume_id = map['RootVolumeId']
        return data
      end
    end

    class DiskIopsConfiguration
      def self.parse(map)
        data = Types::DiskIopsConfiguration.new
        data.mode = map['Mode']
        data.iops = map['Iops']
        return data
      end
    end

    class OntapFileSystemConfiguration
      def self.parse(map)
        data = Types::OntapFileSystemConfiguration.new
        data.automatic_backup_retention_days = map['AutomaticBackupRetentionDays']
        data.daily_automatic_backup_start_time = map['DailyAutomaticBackupStartTime']
        data.deployment_type = map['DeploymentType']
        data.endpoint_ip_address_range = map['EndpointIpAddressRange']
        data.endpoints = (Parsers::FileSystemEndpoints.parse(map['Endpoints']) unless map['Endpoints'].nil?)
        data.disk_iops_configuration = (Parsers::DiskIopsConfiguration.parse(map['DiskIopsConfiguration']) unless map['DiskIopsConfiguration'].nil?)
        data.preferred_subnet_id = map['PreferredSubnetId']
        data.route_table_ids = (Parsers::RouteTableIds.parse(map['RouteTableIds']) unless map['RouteTableIds'].nil?)
        data.throughput_capacity = map['ThroughputCapacity']
        data.weekly_maintenance_start_time = map['WeeklyMaintenanceStartTime']
        return data
      end
    end

    class RouteTableIds
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class FileSystemEndpoints
      def self.parse(map)
        data = Types::FileSystemEndpoints.new
        data.intercluster = (Parsers::FileSystemEndpoint.parse(map['Intercluster']) unless map['Intercluster'].nil?)
        data.management = (Parsers::FileSystemEndpoint.parse(map['Management']) unless map['Management'].nil?)
        return data
      end
    end

    class FileSystemEndpoint
      def self.parse(map)
        data = Types::FileSystemEndpoint.new
        data.dns_name = map['DNSName']
        data.ip_addresses = (Parsers::OntapEndpointIpAddresses.parse(map['IpAddresses']) unless map['IpAddresses'].nil?)
        return data
      end
    end

    class OntapEndpointIpAddresses
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class LustreFileSystemConfiguration
      def self.parse(map)
        data = Types::LustreFileSystemConfiguration.new
        data.weekly_maintenance_start_time = map['WeeklyMaintenanceStartTime']
        data.data_repository_configuration = (Parsers::DataRepositoryConfiguration.parse(map['DataRepositoryConfiguration']) unless map['DataRepositoryConfiguration'].nil?)
        data.deployment_type = map['DeploymentType']
        data.per_unit_storage_throughput = map['PerUnitStorageThroughput']
        data.mount_name = map['MountName']
        data.daily_automatic_backup_start_time = map['DailyAutomaticBackupStartTime']
        data.automatic_backup_retention_days = map['AutomaticBackupRetentionDays']
        data.copy_tags_to_backups = map['CopyTagsToBackups']
        data.drive_cache_type = map['DriveCacheType']
        data.data_compression_type = map['DataCompressionType']
        data.log_configuration = (Parsers::LustreLogConfiguration.parse(map['LogConfiguration']) unless map['LogConfiguration'].nil?)
        data.root_squash_configuration = (Parsers::LustreRootSquashConfiguration.parse(map['RootSquashConfiguration']) unless map['RootSquashConfiguration'].nil?)
        return data
      end
    end

    class LustreRootSquashConfiguration
      def self.parse(map)
        data = Types::LustreRootSquashConfiguration.new
        data.root_squash = map['RootSquash']
        data.no_squash_nids = (Parsers::LustreNoSquashNids.parse(map['NoSquashNids']) unless map['NoSquashNids'].nil?)
        return data
      end
    end

    class LustreNoSquashNids
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class LustreLogConfiguration
      def self.parse(map)
        data = Types::LustreLogConfiguration.new
        data.level = map['Level']
        data.destination = map['Destination']
        return data
      end
    end

    class DataRepositoryConfiguration
      def self.parse(map)
        data = Types::DataRepositoryConfiguration.new
        data.lifecycle = map['Lifecycle']
        data.import_path = map['ImportPath']
        data.export_path = map['ExportPath']
        data.imported_file_chunk_size = map['ImportedFileChunkSize']
        data.auto_import_policy = map['AutoImportPolicy']
        data.failure_details = (Parsers::DataRepositoryFailureDetails.parse(map['FailureDetails']) unless map['FailureDetails'].nil?)
        return data
      end
    end

    class DataRepositoryFailureDetails
      def self.parse(map)
        data = Types::DataRepositoryFailureDetails.new
        data.message = map['Message']
        return data
      end
    end

    class WindowsFileSystemConfiguration
      def self.parse(map)
        data = Types::WindowsFileSystemConfiguration.new
        data.active_directory_id = map['ActiveDirectoryId']
        data.self_managed_active_directory_configuration = (Parsers::SelfManagedActiveDirectoryAttributes.parse(map['SelfManagedActiveDirectoryConfiguration']) unless map['SelfManagedActiveDirectoryConfiguration'].nil?)
        data.deployment_type = map['DeploymentType']
        data.remote_administration_endpoint = map['RemoteAdministrationEndpoint']
        data.preferred_subnet_id = map['PreferredSubnetId']
        data.preferred_file_server_ip = map['PreferredFileServerIp']
        data.throughput_capacity = map['ThroughputCapacity']
        data.maintenance_operations_in_progress = (Parsers::FileSystemMaintenanceOperations.parse(map['MaintenanceOperationsInProgress']) unless map['MaintenanceOperationsInProgress'].nil?)
        data.weekly_maintenance_start_time = map['WeeklyMaintenanceStartTime']
        data.daily_automatic_backup_start_time = map['DailyAutomaticBackupStartTime']
        data.automatic_backup_retention_days = map['AutomaticBackupRetentionDays']
        data.copy_tags_to_backups = map['CopyTagsToBackups']
        data.aliases = (Parsers::Aliases.parse(map['Aliases']) unless map['Aliases'].nil?)
        data.audit_log_configuration = (Parsers::WindowsAuditLogConfiguration.parse(map['AuditLogConfiguration']) unless map['AuditLogConfiguration'].nil?)
        return data
      end
    end

    class WindowsAuditLogConfiguration
      def self.parse(map)
        data = Types::WindowsAuditLogConfiguration.new
        data.file_access_audit_log_level = map['FileAccessAuditLogLevel']
        data.file_share_access_audit_log_level = map['FileShareAccessAuditLogLevel']
        data.audit_log_destination = map['AuditLogDestination']
        return data
      end
    end

    class FileSystemMaintenanceOperations
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class SelfManagedActiveDirectoryAttributes
      def self.parse(map)
        data = Types::SelfManagedActiveDirectoryAttributes.new
        data.domain_name = map['DomainName']
        data.organizational_unit_distinguished_name = map['OrganizationalUnitDistinguishedName']
        data.file_system_administrators_group = map['FileSystemAdministratorsGroup']
        data.user_name = map['UserName']
        data.dns_ips = (Parsers::DnsIps.parse(map['DnsIps']) unless map['DnsIps'].nil?)
        return data
      end
    end

    class DnsIps
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class NetworkInterfaceIds
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class SubnetIds
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class FileSystemFailureDetails
      def self.parse(map)
        data = Types::FileSystemFailureDetails.new
        data.message = map['Message']
        return data
      end
    end

    class OntapVolumeConfiguration
      def self.parse(map)
        data = Types::OntapVolumeConfiguration.new
        data.flex_cache_endpoint_type = map['FlexCacheEndpointType']
        data.junction_path = map['JunctionPath']
        data.security_style = map['SecurityStyle']
        data.size_in_megabytes = map['SizeInMegabytes']
        data.storage_efficiency_enabled = map['StorageEfficiencyEnabled']
        data.storage_virtual_machine_id = map['StorageVirtualMachineId']
        data.storage_virtual_machine_root = map['StorageVirtualMachineRoot']
        data.tiering_policy = (Parsers::TieringPolicy.parse(map['TieringPolicy']) unless map['TieringPolicy'].nil?)
        data.uuid = map['UUID']
        data.ontap_volume_type = map['OntapVolumeType']
        return data
      end
    end

    class TieringPolicy
      def self.parse(map)
        data = Types::TieringPolicy.new
        data.cooling_period = map['CoolingPeriod']
        data.name = map['Name']
        return data
      end
    end

    class ActiveDirectoryBackupAttributes
      def self.parse(map)
        data = Types::ActiveDirectoryBackupAttributes.new
        data.domain_name = map['DomainName']
        data.active_directory_id = map['ActiveDirectoryId']
        data.resource_arn = map['ResourceARN']
        return data
      end
    end

    class BackupFailureDetails
      def self.parse(map)
        data = Types::BackupFailureDetails.new
        data.message = map['Message']
        return data
      end
    end

    # Error Parser for InvalidSourceKmsKey
    class InvalidSourceKmsKey
      def self.parse(http_resp)
        data = Types::InvalidSourceKmsKey.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for IncompatibleParameterError
    class IncompatibleParameterError
      def self.parse(http_resp)
        data = Types::IncompatibleParameterError.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.parameter = map['Parameter']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for SourceBackupUnavailable
    class SourceBackupUnavailable
      def self.parse(http_resp)
        data = Types::SourceBackupUnavailable.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.backup_id = map['BackupId']
        data
      end
    end

    # Error Parser for InvalidRegion
    class InvalidRegion
      def self.parse(http_resp)
        data = Types::InvalidRegion.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for IncompatibleRegionForMultiAZ
    class IncompatibleRegionForMultiAZ
      def self.parse(http_resp)
        data = Types::IncompatibleRegionForMultiAZ.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for BackupNotFound
    class BackupNotFound
      def self.parse(http_resp)
        data = Types::BackupNotFound.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidDestinationKmsKey
    class InvalidDestinationKmsKey
      def self.parse(http_resp)
        data = Types::InvalidDestinationKmsKey.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ServiceLimitExceeded
    class ServiceLimitExceeded
      def self.parse(http_resp)
        data = Types::ServiceLimitExceeded.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.limit = map['Limit']
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateBackup
    class CreateBackup
      def self.parse(http_resp)
        data = Types::CreateBackupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.backup = (Parsers::Backup.parse(map['Backup']) unless map['Backup'].nil?)
        data
      end
    end

    # Error Parser for BackupInProgress
    class BackupInProgress
      def self.parse(http_resp)
        data = Types::BackupInProgress.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for VolumeNotFound
    class VolumeNotFound
      def self.parse(http_resp)
        data = Types::VolumeNotFound.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateDataRepositoryAssociation
    class CreateDataRepositoryAssociation
      def self.parse(http_resp)
        data = Types::CreateDataRepositoryAssociationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.association = (Parsers::DataRepositoryAssociation.parse(map['Association']) unless map['Association'].nil?)
        data
      end
    end

    class DataRepositoryAssociation
      def self.parse(map)
        data = Types::DataRepositoryAssociation.new
        data.association_id = map['AssociationId']
        data.resource_arn = map['ResourceARN']
        data.file_system_id = map['FileSystemId']
        data.lifecycle = map['Lifecycle']
        data.failure_details = (Parsers::DataRepositoryFailureDetails.parse(map['FailureDetails']) unless map['FailureDetails'].nil?)
        data.file_system_path = map['FileSystemPath']
        data.data_repository_path = map['DataRepositoryPath']
        data.batch_import_meta_data_on_create = map['BatchImportMetaDataOnCreate']
        data.imported_file_chunk_size = map['ImportedFileChunkSize']
        data.s3 = (Parsers::S3DataRepositoryConfiguration.parse(map['S3']) unless map['S3'].nil?)
        data.tags = (Parsers::Tags.parse(map['Tags']) unless map['Tags'].nil?)
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        return data
      end
    end

    class S3DataRepositoryConfiguration
      def self.parse(map)
        data = Types::S3DataRepositoryConfiguration.new
        data.auto_import_policy = (Parsers::AutoImportPolicy.parse(map['AutoImportPolicy']) unless map['AutoImportPolicy'].nil?)
        data.auto_export_policy = (Parsers::AutoExportPolicy.parse(map['AutoExportPolicy']) unless map['AutoExportPolicy'].nil?)
        return data
      end
    end

    class AutoExportPolicy
      def self.parse(map)
        data = Types::AutoExportPolicy.new
        data.events = (Parsers::EventTypes.parse(map['Events']) unless map['Events'].nil?)
        return data
      end
    end

    class EventTypes
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class AutoImportPolicy
      def self.parse(map)
        data = Types::AutoImportPolicy.new
        data.events = (Parsers::EventTypes.parse(map['Events']) unless map['Events'].nil?)
        return data
      end
    end

    # Operation Parser for CreateDataRepositoryTask
    class CreateDataRepositoryTask
      def self.parse(http_resp)
        data = Types::CreateDataRepositoryTaskOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.data_repository_task = (Parsers::DataRepositoryTask.parse(map['DataRepositoryTask']) unless map['DataRepositoryTask'].nil?)
        data
      end
    end

    class DataRepositoryTask
      def self.parse(map)
        data = Types::DataRepositoryTask.new
        data.task_id = map['TaskId']
        data.lifecycle = map['Lifecycle']
        data.type = map['Type']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        data.resource_arn = map['ResourceARN']
        data.tags = (Parsers::Tags.parse(map['Tags']) unless map['Tags'].nil?)
        data.file_system_id = map['FileSystemId']
        data.paths = (Parsers::DataRepositoryTaskPaths.parse(map['Paths']) unless map['Paths'].nil?)
        data.failure_details = (Parsers::DataRepositoryTaskFailureDetails.parse(map['FailureDetails']) unless map['FailureDetails'].nil?)
        data.status = (Parsers::DataRepositoryTaskStatus.parse(map['Status']) unless map['Status'].nil?)
        data.report = (Parsers::CompletionReport.parse(map['Report']) unless map['Report'].nil?)
        return data
      end
    end

    class CompletionReport
      def self.parse(map)
        data = Types::CompletionReport.new
        data.enabled = map['Enabled']
        data.path = map['Path']
        data.format = map['Format']
        data.scope = map['Scope']
        return data
      end
    end

    class DataRepositoryTaskStatus
      def self.parse(map)
        data = Types::DataRepositoryTaskStatus.new
        data.total_count = map['TotalCount']
        data.succeeded_count = map['SucceededCount']
        data.failed_count = map['FailedCount']
        data.last_updated_time = Time.at(map['LastUpdatedTime'].to_i) if map['LastUpdatedTime']
        return data
      end
    end

    class DataRepositoryTaskFailureDetails
      def self.parse(map)
        data = Types::DataRepositoryTaskFailureDetails.new
        data.message = map['Message']
        return data
      end
    end

    class DataRepositoryTaskPaths
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Error Parser for DataRepositoryTaskExecuting
    class DataRepositoryTaskExecuting
      def self.parse(http_resp)
        data = Types::DataRepositoryTaskExecuting.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateFileSystem
    class CreateFileSystem
      def self.parse(http_resp)
        data = Types::CreateFileSystemOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.file_system = (Parsers::FileSystem.parse(map['FileSystem']) unless map['FileSystem'].nil?)
        data
      end
    end

    # Error Parser for InvalidPerUnitStorageThroughput
    class InvalidPerUnitStorageThroughput
      def self.parse(http_resp)
        data = Types::InvalidPerUnitStorageThroughput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidNetworkSettings
    class InvalidNetworkSettings
      def self.parse(http_resp)
        data = Types::InvalidNetworkSettings.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.invalid_subnet_id = map['InvalidSubnetId']
        data.invalid_security_group_id = map['InvalidSecurityGroupId']
        data.invalid_route_table_id = map['InvalidRouteTableId']
        data
      end
    end

    # Error Parser for InvalidExportPath
    class InvalidExportPath
      def self.parse(http_resp)
        data = Types::InvalidExportPath.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for MissingFileSystemConfiguration
    class MissingFileSystemConfiguration
      def self.parse(http_resp)
        data = Types::MissingFileSystemConfiguration.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidImportPath
    class InvalidImportPath
      def self.parse(http_resp)
        data = Types::InvalidImportPath.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ActiveDirectoryError
    class ActiveDirectoryError
      def self.parse(http_resp)
        data = Types::ActiveDirectoryError.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.active_directory_id = map['ActiveDirectoryId']
        data.type = map['Type']
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateFileSystemFromBackup
    class CreateFileSystemFromBackup
      def self.parse(http_resp)
        data = Types::CreateFileSystemFromBackupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.file_system = (Parsers::FileSystem.parse(map['FileSystem']) unless map['FileSystem'].nil?)
        data
      end
    end

    # Operation Parser for CreateSnapshot
    class CreateSnapshot
      def self.parse(http_resp)
        data = Types::CreateSnapshotOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.snapshot = (Parsers::Snapshot.parse(map['Snapshot']) unless map['Snapshot'].nil?)
        data
      end
    end

    # Operation Parser for CreateStorageVirtualMachine
    class CreateStorageVirtualMachine
      def self.parse(http_resp)
        data = Types::CreateStorageVirtualMachineOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.storage_virtual_machine = (Parsers::StorageVirtualMachine.parse(map['StorageVirtualMachine']) unless map['StorageVirtualMachine'].nil?)
        data
      end
    end

    class StorageVirtualMachine
      def self.parse(map)
        data = Types::StorageVirtualMachine.new
        data.active_directory_configuration = (Parsers::SvmActiveDirectoryConfiguration.parse(map['ActiveDirectoryConfiguration']) unless map['ActiveDirectoryConfiguration'].nil?)
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.endpoints = (Parsers::SvmEndpoints.parse(map['Endpoints']) unless map['Endpoints'].nil?)
        data.file_system_id = map['FileSystemId']
        data.lifecycle = map['Lifecycle']
        data.name = map['Name']
        data.resource_arn = map['ResourceARN']
        data.storage_virtual_machine_id = map['StorageVirtualMachineId']
        data.subtype = map['Subtype']
        data.uuid = map['UUID']
        data.tags = (Parsers::Tags.parse(map['Tags']) unless map['Tags'].nil?)
        data.lifecycle_transition_reason = (Parsers::LifecycleTransitionReason.parse(map['LifecycleTransitionReason']) unless map['LifecycleTransitionReason'].nil?)
        data.root_volume_security_style = map['RootVolumeSecurityStyle']
        return data
      end
    end

    class SvmEndpoints
      def self.parse(map)
        data = Types::SvmEndpoints.new
        data.iscsi = (Parsers::SvmEndpoint.parse(map['Iscsi']) unless map['Iscsi'].nil?)
        data.management = (Parsers::SvmEndpoint.parse(map['Management']) unless map['Management'].nil?)
        data.nfs = (Parsers::SvmEndpoint.parse(map['Nfs']) unless map['Nfs'].nil?)
        data.smb = (Parsers::SvmEndpoint.parse(map['Smb']) unless map['Smb'].nil?)
        return data
      end
    end

    class SvmEndpoint
      def self.parse(map)
        data = Types::SvmEndpoint.new
        data.dns_name = map['DNSName']
        data.ip_addresses = (Parsers::OntapEndpointIpAddresses.parse(map['IpAddresses']) unless map['IpAddresses'].nil?)
        return data
      end
    end

    class SvmActiveDirectoryConfiguration
      def self.parse(map)
        data = Types::SvmActiveDirectoryConfiguration.new
        data.net_bios_name = map['NetBiosName']
        data.self_managed_active_directory_configuration = (Parsers::SelfManagedActiveDirectoryAttributes.parse(map['SelfManagedActiveDirectoryConfiguration']) unless map['SelfManagedActiveDirectoryConfiguration'].nil?)
        return data
      end
    end

    # Operation Parser for CreateVolume
    class CreateVolume
      def self.parse(http_resp)
        data = Types::CreateVolumeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.volume = (Parsers::Volume.parse(map['Volume']) unless map['Volume'].nil?)
        data
      end
    end

    # Error Parser for StorageVirtualMachineNotFound
    class StorageVirtualMachineNotFound
      def self.parse(http_resp)
        data = Types::StorageVirtualMachineNotFound.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for MissingVolumeConfiguration
    class MissingVolumeConfiguration
      def self.parse(http_resp)
        data = Types::MissingVolumeConfiguration.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateVolumeFromBackup
    class CreateVolumeFromBackup
      def self.parse(http_resp)
        data = Types::CreateVolumeFromBackupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.volume = (Parsers::Volume.parse(map['Volume']) unless map['Volume'].nil?)
        data
      end
    end

    # Operation Parser for DeleteBackup
    class DeleteBackup
      def self.parse(http_resp)
        data = Types::DeleteBackupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.backup_id = map['BackupId']
        data.lifecycle = map['Lifecycle']
        data
      end
    end

    # Error Parser for BackupRestoring
    class BackupRestoring
      def self.parse(http_resp)
        data = Types::BackupRestoring.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.file_system_id = map['FileSystemId']
        data
      end
    end

    # Error Parser for BackupBeingCopied
    class BackupBeingCopied
      def self.parse(http_resp)
        data = Types::BackupBeingCopied.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.backup_id = map['BackupId']
        data
      end
    end

    # Operation Parser for DeleteDataRepositoryAssociation
    class DeleteDataRepositoryAssociation
      def self.parse(http_resp)
        data = Types::DeleteDataRepositoryAssociationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.association_id = map['AssociationId']
        data.lifecycle = map['Lifecycle']
        data.delete_data_in_file_system = map['DeleteDataInFileSystem']
        data
      end
    end

    # Error Parser for DataRepositoryAssociationNotFound
    class DataRepositoryAssociationNotFound
      def self.parse(http_resp)
        data = Types::DataRepositoryAssociationNotFound.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteFileSystem
    class DeleteFileSystem
      def self.parse(http_resp)
        data = Types::DeleteFileSystemOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.file_system_id = map['FileSystemId']
        data.lifecycle = map['Lifecycle']
        data.windows_response = (Parsers::DeleteFileSystemWindowsResponse.parse(map['WindowsResponse']) unless map['WindowsResponse'].nil?)
        data.lustre_response = (Parsers::DeleteFileSystemLustreResponse.parse(map['LustreResponse']) unless map['LustreResponse'].nil?)
        data.open_zfs_response = (Parsers::DeleteFileSystemOpenZFSResponse.parse(map['OpenZFSResponse']) unless map['OpenZFSResponse'].nil?)
        data
      end
    end

    class DeleteFileSystemOpenZFSResponse
      def self.parse(map)
        data = Types::DeleteFileSystemOpenZFSResponse.new
        data.final_backup_id = map['FinalBackupId']
        data.final_backup_tags = (Parsers::Tags.parse(map['FinalBackupTags']) unless map['FinalBackupTags'].nil?)
        return data
      end
    end

    class DeleteFileSystemLustreResponse
      def self.parse(map)
        data = Types::DeleteFileSystemLustreResponse.new
        data.final_backup_id = map['FinalBackupId']
        data.final_backup_tags = (Parsers::Tags.parse(map['FinalBackupTags']) unless map['FinalBackupTags'].nil?)
        return data
      end
    end

    class DeleteFileSystemWindowsResponse
      def self.parse(map)
        data = Types::DeleteFileSystemWindowsResponse.new
        data.final_backup_id = map['FinalBackupId']
        data.final_backup_tags = (Parsers::Tags.parse(map['FinalBackupTags']) unless map['FinalBackupTags'].nil?)
        return data
      end
    end

    # Operation Parser for DeleteSnapshot
    class DeleteSnapshot
      def self.parse(http_resp)
        data = Types::DeleteSnapshotOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.snapshot_id = map['SnapshotId']
        data.lifecycle = map['Lifecycle']
        data
      end
    end

    # Error Parser for SnapshotNotFound
    class SnapshotNotFound
      def self.parse(http_resp)
        data = Types::SnapshotNotFound.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteStorageVirtualMachine
    class DeleteStorageVirtualMachine
      def self.parse(http_resp)
        data = Types::DeleteStorageVirtualMachineOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.storage_virtual_machine_id = map['StorageVirtualMachineId']
        data.lifecycle = map['Lifecycle']
        data
      end
    end

    # Operation Parser for DeleteVolume
    class DeleteVolume
      def self.parse(http_resp)
        data = Types::DeleteVolumeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.volume_id = map['VolumeId']
        data.lifecycle = map['Lifecycle']
        data.ontap_response = (Parsers::DeleteVolumeOntapResponse.parse(map['OntapResponse']) unless map['OntapResponse'].nil?)
        data
      end
    end

    class DeleteVolumeOntapResponse
      def self.parse(map)
        data = Types::DeleteVolumeOntapResponse.new
        data.final_backup_id = map['FinalBackupId']
        data.final_backup_tags = (Parsers::Tags.parse(map['FinalBackupTags']) unless map['FinalBackupTags'].nil?)
        return data
      end
    end

    # Operation Parser for DescribeBackups
    class DescribeBackups
      def self.parse(http_resp)
        data = Types::DescribeBackupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.backups = (Parsers::Backups.parse(map['Backups']) unless map['Backups'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class Backups
      def self.parse(list)
        list.map do |value|
          Parsers::Backup.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeDataRepositoryAssociations
    class DescribeDataRepositoryAssociations
      def self.parse(http_resp)
        data = Types::DescribeDataRepositoryAssociationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.associations = (Parsers::DataRepositoryAssociations.parse(map['Associations']) unless map['Associations'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DataRepositoryAssociations
      def self.parse(list)
        list.map do |value|
          Parsers::DataRepositoryAssociation.parse(value) unless value.nil?
        end
      end
    end

    # Error Parser for InvalidDataRepositoryType
    class InvalidDataRepositoryType
      def self.parse(http_resp)
        data = Types::InvalidDataRepositoryType.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DescribeDataRepositoryTasks
    class DescribeDataRepositoryTasks
      def self.parse(http_resp)
        data = Types::DescribeDataRepositoryTasksOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.data_repository_tasks = (Parsers::DataRepositoryTasks.parse(map['DataRepositoryTasks']) unless map['DataRepositoryTasks'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DataRepositoryTasks
      def self.parse(list)
        list.map do |value|
          Parsers::DataRepositoryTask.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeFileSystemAliases
    class DescribeFileSystemAliases
      def self.parse(http_resp)
        data = Types::DescribeFileSystemAliasesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.aliases = (Parsers::Aliases.parse(map['Aliases']) unless map['Aliases'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for DescribeFileSystems
    class DescribeFileSystems
      def self.parse(http_resp)
        data = Types::DescribeFileSystemsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.file_systems = (Parsers::FileSystems.parse(map['FileSystems']) unless map['FileSystems'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class FileSystems
      def self.parse(list)
        list.map do |value|
          Parsers::FileSystem.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeSnapshots
    class DescribeSnapshots
      def self.parse(http_resp)
        data = Types::DescribeSnapshotsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.snapshots = (Parsers::Snapshots.parse(map['Snapshots']) unless map['Snapshots'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class Snapshots
      def self.parse(list)
        list.map do |value|
          Parsers::Snapshot.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeStorageVirtualMachines
    class DescribeStorageVirtualMachines
      def self.parse(http_resp)
        data = Types::DescribeStorageVirtualMachinesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.storage_virtual_machines = (Parsers::StorageVirtualMachines.parse(map['StorageVirtualMachines']) unless map['StorageVirtualMachines'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class StorageVirtualMachines
      def self.parse(list)
        list.map do |value|
          Parsers::StorageVirtualMachine.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeVolumes
    class DescribeVolumes
      def self.parse(http_resp)
        data = Types::DescribeVolumesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.volumes = (Parsers::Volumes.parse(map['Volumes']) unless map['Volumes'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class Volumes
      def self.parse(list)
        list.map do |value|
          Parsers::Volume.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for DisassociateFileSystemAliases
    class DisassociateFileSystemAliases
      def self.parse(http_resp)
        data = Types::DisassociateFileSystemAliasesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.aliases = (Parsers::Aliases.parse(map['Aliases']) unless map['Aliases'].nil?)
        data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tags = (Parsers::Tags.parse(map['Tags']) unless map['Tags'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Error Parser for NotServiceResourceError
    class NotServiceResourceError
      def self.parse(http_resp)
        data = Types::NotServiceResourceError.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resource_arn = map['ResourceARN']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ResourceDoesNotSupportTagging
    class ResourceDoesNotSupportTagging
      def self.parse(http_resp)
        data = Types::ResourceDoesNotSupportTagging.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resource_arn = map['ResourceARN']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ResourceNotFound
    class ResourceNotFound
      def self.parse(http_resp)
        data = Types::ResourceNotFound.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resource_arn = map['ResourceARN']
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for ReleaseFileSystemNfsV3Locks
    class ReleaseFileSystemNfsV3Locks
      def self.parse(http_resp)
        data = Types::ReleaseFileSystemNfsV3LocksOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.file_system = (Parsers::FileSystem.parse(map['FileSystem']) unless map['FileSystem'].nil?)
        data
      end
    end

    # Operation Parser for RestoreVolumeFromSnapshot
    class RestoreVolumeFromSnapshot
      def self.parse(http_resp)
        data = Types::RestoreVolumeFromSnapshotOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.volume_id = map['VolumeId']
        data.lifecycle = map['Lifecycle']
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateDataRepositoryAssociation
    class UpdateDataRepositoryAssociation
      def self.parse(http_resp)
        data = Types::UpdateDataRepositoryAssociationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.association = (Parsers::DataRepositoryAssociation.parse(map['Association']) unless map['Association'].nil?)
        data
      end
    end

    # Operation Parser for UpdateFileSystem
    class UpdateFileSystem
      def self.parse(http_resp)
        data = Types::UpdateFileSystemOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.file_system = (Parsers::FileSystem.parse(map['FileSystem']) unless map['FileSystem'].nil?)
        data
      end
    end

    # Operation Parser for UpdateSnapshot
    class UpdateSnapshot
      def self.parse(http_resp)
        data = Types::UpdateSnapshotOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.snapshot = (Parsers::Snapshot.parse(map['Snapshot']) unless map['Snapshot'].nil?)
        data
      end
    end

    # Operation Parser for UpdateStorageVirtualMachine
    class UpdateStorageVirtualMachine
      def self.parse(http_resp)
        data = Types::UpdateStorageVirtualMachineOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.storage_virtual_machine = (Parsers::StorageVirtualMachine.parse(map['StorageVirtualMachine']) unless map['StorageVirtualMachine'].nil?)
        data
      end
    end

    # Operation Parser for UpdateVolume
    class UpdateVolume
      def self.parse(http_resp)
        data = Types::UpdateVolumeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.volume = (Parsers::Volume.parse(map['Volume']) unless map['Volume'].nil?)
        data
      end
    end
  end
end
