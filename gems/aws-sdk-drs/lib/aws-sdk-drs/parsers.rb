# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::Drs
  module Parsers

    # Operation Parser for CreateExtendedSourceServer
    class CreateExtendedSourceServer
      def self.parse(http_resp)
        data = Types::CreateExtendedSourceServerOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.source_server = (Parsers::SourceServer.parse(map['sourceServer']) unless map['sourceServer'].nil?)
        data
      end
    end

    class SourceServer
      def self.parse(map)
        data = Types::SourceServer.new
        data.source_server_id = map['sourceServerID']
        data.arn = map['arn']
        data.tags = (Parsers::TagsMap.parse(map['tags']) unless map['tags'].nil?)
        data.recovery_instance_id = map['recoveryInstanceId']
        data.last_launch_result = map['lastLaunchResult']
        data.data_replication_info = (Parsers::DataReplicationInfo.parse(map['dataReplicationInfo']) unless map['dataReplicationInfo'].nil?)
        data.life_cycle = (Parsers::LifeCycle.parse(map['lifeCycle']) unless map['lifeCycle'].nil?)
        data.source_properties = (Parsers::SourceProperties.parse(map['sourceProperties']) unless map['sourceProperties'].nil?)
        data.staging_area = (Parsers::StagingArea.parse(map['stagingArea']) unless map['stagingArea'].nil?)
        return data
      end
    end

    class StagingArea
      def self.parse(map)
        data = Types::StagingArea.new
        data.status = map['status']
        data.staging_account_id = map['stagingAccountID']
        data.staging_source_server_arn = map['stagingSourceServerArn']
        data.error_message = map['errorMessage']
        return data
      end
    end

    class SourceProperties
      def self.parse(map)
        data = Types::SourceProperties.new
        data.last_updated_date_time = map['lastUpdatedDateTime']
        data.recommended_instance_type = map['recommendedInstanceType']
        data.identification_hints = (Parsers::IdentificationHints.parse(map['identificationHints']) unless map['identificationHints'].nil?)
        data.network_interfaces = (Parsers::NetworkInterfaces.parse(map['networkInterfaces']) unless map['networkInterfaces'].nil?)
        data.disks = (Parsers::Disks.parse(map['disks']) unless map['disks'].nil?)
        data.cpus = (Parsers::Cpus.parse(map['cpus']) unless map['cpus'].nil?)
        data.ram_bytes = map['ramBytes']
        data.os = (Parsers::OS.parse(map['os']) unless map['os'].nil?)
        return data
      end
    end

    class OS
      def self.parse(map)
        data = Types::OS.new
        data.full_string = map['fullString']
        return data
      end
    end

    class Cpus
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::CPU.parse(value) unless value.nil?
        end
        data
      end
    end

    class CPU
      def self.parse(map)
        data = Types::CPU.new
        data.cores = map['cores']
        data.model_name = map['modelName']
        return data
      end
    end

    class Disks
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Disk.parse(value) unless value.nil?
        end
        data
      end
    end

    class Disk
      def self.parse(map)
        data = Types::Disk.new
        data.device_name = map['deviceName']
        data.bytes = map['bytes']
        return data
      end
    end

    class NetworkInterfaces
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::NetworkInterface.parse(value) unless value.nil?
        end
        data
      end
    end

    class NetworkInterface
      def self.parse(map)
        data = Types::NetworkInterface.new
        data.mac_address = map['macAddress']
        data.ips = (Parsers::IPsList.parse(map['ips']) unless map['ips'].nil?)
        data.is_primary = map['isPrimary']
        return data
      end
    end

    class IPsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class IdentificationHints
      def self.parse(map)
        data = Types::IdentificationHints.new
        data.fqdn = map['fqdn']
        data.hostname = map['hostname']
        data.vm_ware_uuid = map['vmWareUuid']
        data.aws_instance_id = map['awsInstanceID']
        return data
      end
    end

    class LifeCycle
      def self.parse(map)
        data = Types::LifeCycle.new
        data.added_to_service_date_time = map['addedToServiceDateTime']
        data.first_byte_date_time = map['firstByteDateTime']
        data.elapsed_replication_duration = map['elapsedReplicationDuration']
        data.last_seen_by_service_date_time = map['lastSeenByServiceDateTime']
        data.last_launch = (Parsers::LifeCycleLastLaunch.parse(map['lastLaunch']) unless map['lastLaunch'].nil?)
        return data
      end
    end

    class LifeCycleLastLaunch
      def self.parse(map)
        data = Types::LifeCycleLastLaunch.new
        data.initiated = (Parsers::LifeCycleLastLaunchInitiated.parse(map['initiated']) unless map['initiated'].nil?)
        return data
      end
    end

    class LifeCycleLastLaunchInitiated
      def self.parse(map)
        data = Types::LifeCycleLastLaunchInitiated.new
        data.api_call_date_time = map['apiCallDateTime']
        data.job_id = map['jobID']
        data.type = map['type']
        return data
      end
    end

    class DataReplicationInfo
      def self.parse(map)
        data = Types::DataReplicationInfo.new
        data.lag_duration = map['lagDuration']
        data.eta_date_time = map['etaDateTime']
        data.replicated_disks = (Parsers::DataReplicationInfoReplicatedDisks.parse(map['replicatedDisks']) unless map['replicatedDisks'].nil?)
        data.data_replication_state = map['dataReplicationState']
        data.data_replication_initiation = (Parsers::DataReplicationInitiation.parse(map['dataReplicationInitiation']) unless map['dataReplicationInitiation'].nil?)
        data.data_replication_error = (Parsers::DataReplicationError.parse(map['dataReplicationError']) unless map['dataReplicationError'].nil?)
        return data
      end
    end

    class DataReplicationError
      def self.parse(map)
        data = Types::DataReplicationError.new
        data.error = map['error']
        data.raw_error = map['rawError']
        return data
      end
    end

    class DataReplicationInitiation
      def self.parse(map)
        data = Types::DataReplicationInitiation.new
        data.start_date_time = map['startDateTime']
        data.next_attempt_date_time = map['nextAttemptDateTime']
        data.steps = (Parsers::DataReplicationInitiationSteps.parse(map['steps']) unless map['steps'].nil?)
        return data
      end
    end

    class DataReplicationInitiationSteps
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::DataReplicationInitiationStep.parse(value) unless value.nil?
        end
        data
      end
    end

    class DataReplicationInitiationStep
      def self.parse(map)
        data = Types::DataReplicationInitiationStep.new
        data.name = map['name']
        data.status = map['status']
        return data
      end
    end

    class DataReplicationInfoReplicatedDisks
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::DataReplicationInfoReplicatedDisk.parse(value) unless value.nil?
        end
        data
      end
    end

    class DataReplicationInfoReplicatedDisk
      def self.parse(map)
        data = Types::DataReplicationInfoReplicatedDisk.new
        data.device_name = map['deviceName']
        data.total_storage_bytes = map['totalStorageBytes']
        data.replicated_storage_bytes = map['replicatedStorageBytes']
        data.rescanned_storage_bytes = map['rescannedStorageBytes']
        data.backlogged_storage_bytes = map['backloggedStorageBytes']
        return data
      end
    end

    class TagsMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.code = map['code']
        data
      end
    end

    # Error Parser for UninitializedAccountException
    class UninitializedAccountException
      def self.parse(http_resp)
        data = Types::UninitializedAccountException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.code = map['code']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.code = map['code']
        data.resource_id = map['resourceId']
        data.resource_type = map['resourceType']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        data.retry_after_seconds = http_resp.headers['Retry-After']
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.service_code = map['serviceCode']
        data.quota_code = map['quotaCode']
        data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.code = map['code']
        data.resource_id = map['resourceId']
        data.resource_type = map['resourceType']
        data.service_code = map['serviceCode']
        data.quota_code = map['quotaCode']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.code = map['code']
        data.reason = map['reason']
        data.field_list = (Parsers::ValidationExceptionFieldList.parse(map['fieldList']) unless map['fieldList'].nil?)
        data
      end
    end

    class ValidationExceptionFieldList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ValidationExceptionField.parse(value) unless value.nil?
        end
        data
      end
    end

    class ValidationExceptionField
      def self.parse(map)
        data = Types::ValidationExceptionField.new
        data.name = map['name']
        data.message = map['message'] || map['Message']
        return data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        data.retry_after_seconds = http_resp.headers['Retry-After'].to_i unless http_resp.headers['Retry-After'].nil?
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateReplicationConfigurationTemplate
    class CreateReplicationConfigurationTemplate
      def self.parse(http_resp)
        data = Types::CreateReplicationConfigurationTemplateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.replication_configuration_template_id = map['replicationConfigurationTemplateID']
        data.arn = map['arn']
        data.staging_area_subnet_id = map['stagingAreaSubnetId']
        data.associate_default_security_group = map['associateDefaultSecurityGroup']
        data.replication_servers_security_groups_i_ds = (Parsers::ReplicationServersSecurityGroupsIDs.parse(map['replicationServersSecurityGroupsIDs']) unless map['replicationServersSecurityGroupsIDs'].nil?)
        data.replication_server_instance_type = map['replicationServerInstanceType']
        data.use_dedicated_replication_server = map['useDedicatedReplicationServer']
        data.default_large_staging_disk_type = map['defaultLargeStagingDiskType']
        data.ebs_encryption = map['ebsEncryption']
        data.ebs_encryption_key_arn = map['ebsEncryptionKeyArn']
        data.bandwidth_throttling = map['bandwidthThrottling']
        data.data_plane_routing = map['dataPlaneRouting']
        data.create_public_ip = map['createPublicIP']
        data.staging_area_tags = (Parsers::TagsMap.parse(map['stagingAreaTags']) unless map['stagingAreaTags'].nil?)
        data.tags = (Parsers::TagsMap.parse(map['tags']) unless map['tags'].nil?)
        data.pit_policy = (Parsers::PITPolicy.parse(map['pitPolicy']) unless map['pitPolicy'].nil?)
        data
      end
    end

    class PITPolicy
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::PITPolicyRule.parse(value) unless value.nil?
        end
        data
      end
    end

    class PITPolicyRule
      def self.parse(map)
        data = Types::PITPolicyRule.new
        data.rule_id = map['ruleID']
        data.units = map['units']
        data.interval = map['interval']
        data.retention_duration = map['retentionDuration']
        data.enabled = map['enabled']
        return data
      end
    end

    class ReplicationServersSecurityGroupsIDs
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DeleteJob
    class DeleteJob
      def self.parse(http_resp)
        data = Types::DeleteJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.code = map['code']
        data.resource_id = map['resourceId']
        data.resource_type = map['resourceType']
        data
      end
    end

    # Operation Parser for DeleteRecoveryInstance
    class DeleteRecoveryInstance
      def self.parse(http_resp)
        data = Types::DeleteRecoveryInstanceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteReplicationConfigurationTemplate
    class DeleteReplicationConfigurationTemplate
      def self.parse(http_resp)
        data = Types::DeleteReplicationConfigurationTemplateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteSourceServer
    class DeleteSourceServer
      def self.parse(http_resp)
        data = Types::DeleteSourceServerOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DescribeJobLogItems
    class DescribeJobLogItems
      def self.parse(http_resp)
        data = Types::DescribeJobLogItemsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (Parsers::JobLogs.parse(map['items']) unless map['items'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class JobLogs
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::JobLog.parse(value) unless value.nil?
        end
        data
      end
    end

    class JobLog
      def self.parse(map)
        data = Types::JobLog.new
        data.log_date_time = map['logDateTime']
        data.event = map['event']
        data.event_data = (Parsers::JobLogEventData.parse(map['eventData']) unless map['eventData'].nil?)
        return data
      end
    end

    class JobLogEventData
      def self.parse(map)
        data = Types::JobLogEventData.new
        data.source_server_id = map['sourceServerID']
        data.conversion_server_id = map['conversionServerID']
        data.target_instance_id = map['targetInstanceID']
        data.raw_error = map['rawError']
        data.conversion_properties = (Parsers::ConversionProperties.parse(map['conversionProperties']) unless map['conversionProperties'].nil?)
        return data
      end
    end

    class ConversionProperties
      def self.parse(map)
        data = Types::ConversionProperties.new
        data.volume_to_conversion_map = (Parsers::VolumeToConversionMap.parse(map['volumeToConversionMap']) unless map['volumeToConversionMap'].nil?)
        data.root_volume_name = map['rootVolumeName']
        data.force_uefi = map['forceUefi']
        data.data_timestamp = map['dataTimestamp']
        data.volume_to_volume_size = (Parsers::VolumeToSizeMap.parse(map['volumeToVolumeSize']) unless map['volumeToVolumeSize'].nil?)
        return data
      end
    end

    class VolumeToSizeMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class VolumeToConversionMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::ConversionMap.parse(value) unless value.nil?
        end
        data
      end
    end

    class ConversionMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeJobs
    class DescribeJobs
      def self.parse(http_resp)
        data = Types::DescribeJobsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (Parsers::JobsList.parse(map['items']) unless map['items'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class JobsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Job.parse(value) unless value.nil?
        end
        data
      end
    end

    class Job
      def self.parse(map)
        data = Types::Job.new
        data.job_id = map['jobID']
        data.arn = map['arn']
        data.type = map['type']
        data.initiated_by = map['initiatedBy']
        data.creation_date_time = map['creationDateTime']
        data.end_date_time = map['endDateTime']
        data.status = map['status']
        data.participating_servers = (Parsers::ParticipatingServers.parse(map['participatingServers']) unless map['participatingServers'].nil?)
        data.tags = (Parsers::TagsMap.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    class ParticipatingServers
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ParticipatingServer.parse(value) unless value.nil?
        end
        data
      end
    end

    class ParticipatingServer
      def self.parse(map)
        data = Types::ParticipatingServer.new
        data.source_server_id = map['sourceServerID']
        data.recovery_instance_id = map['recoveryInstanceID']
        data.launch_status = map['launchStatus']
        return data
      end
    end

    # Operation Parser for DescribeRecoveryInstances
    class DescribeRecoveryInstances
      def self.parse(http_resp)
        data = Types::DescribeRecoveryInstancesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['nextToken']
        data.items = (Parsers::DescribeRecoveryInstancesItems.parse(map['items']) unless map['items'].nil?)
        data
      end
    end

    class DescribeRecoveryInstancesItems
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::RecoveryInstance.parse(value) unless value.nil?
        end
        data
      end
    end

    class RecoveryInstance
      def self.parse(map)
        data = Types::RecoveryInstance.new
        data.ec2_instance_id = map['ec2InstanceID']
        data.ec2_instance_state = map['ec2InstanceState']
        data.job_id = map['jobID']
        data.recovery_instance_id = map['recoveryInstanceID']
        data.source_server_id = map['sourceServerID']
        data.arn = map['arn']
        data.tags = (Parsers::TagsMap.parse(map['tags']) unless map['tags'].nil?)
        data.failback = (Parsers::RecoveryInstanceFailback.parse(map['failback']) unless map['failback'].nil?)
        data.data_replication_info = (Parsers::RecoveryInstanceDataReplicationInfo.parse(map['dataReplicationInfo']) unless map['dataReplicationInfo'].nil?)
        data.recovery_instance_properties = (Parsers::RecoveryInstanceProperties.parse(map['recoveryInstanceProperties']) unless map['recoveryInstanceProperties'].nil?)
        data.point_in_time_snapshot_date_time = map['pointInTimeSnapshotDateTime']
        data.is_drill = map['isDrill']
        return data
      end
    end

    class RecoveryInstanceProperties
      def self.parse(map)
        data = Types::RecoveryInstanceProperties.new
        data.last_updated_date_time = map['lastUpdatedDateTime']
        data.identification_hints = (Parsers::IdentificationHints.parse(map['identificationHints']) unless map['identificationHints'].nil?)
        data.network_interfaces = (Parsers::NetworkInterfaces.parse(map['networkInterfaces']) unless map['networkInterfaces'].nil?)
        data.disks = (Parsers::RecoveryInstanceDisks.parse(map['disks']) unless map['disks'].nil?)
        data.cpus = (Parsers::Cpus.parse(map['cpus']) unless map['cpus'].nil?)
        data.ram_bytes = map['ramBytes']
        data.os = (Parsers::OS.parse(map['os']) unless map['os'].nil?)
        return data
      end
    end

    class RecoveryInstanceDisks
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::RecoveryInstanceDisk.parse(value) unless value.nil?
        end
        data
      end
    end

    class RecoveryInstanceDisk
      def self.parse(map)
        data = Types::RecoveryInstanceDisk.new
        data.internal_device_name = map['internalDeviceName']
        data.bytes = map['bytes']
        data.ebs_volume_id = map['ebsVolumeID']
        return data
      end
    end

    class RecoveryInstanceDataReplicationInfo
      def self.parse(map)
        data = Types::RecoveryInstanceDataReplicationInfo.new
        data.lag_duration = map['lagDuration']
        data.eta_date_time = map['etaDateTime']
        data.replicated_disks = (Parsers::RecoveryInstanceDataReplicationInfoReplicatedDisks.parse(map['replicatedDisks']) unless map['replicatedDisks'].nil?)
        data.data_replication_state = map['dataReplicationState']
        data.data_replication_initiation = (Parsers::RecoveryInstanceDataReplicationInitiation.parse(map['dataReplicationInitiation']) unless map['dataReplicationInitiation'].nil?)
        data.data_replication_error = (Parsers::RecoveryInstanceDataReplicationError.parse(map['dataReplicationError']) unless map['dataReplicationError'].nil?)
        return data
      end
    end

    class RecoveryInstanceDataReplicationError
      def self.parse(map)
        data = Types::RecoveryInstanceDataReplicationError.new
        data.error = map['error']
        data.raw_error = map['rawError']
        return data
      end
    end

    class RecoveryInstanceDataReplicationInitiation
      def self.parse(map)
        data = Types::RecoveryInstanceDataReplicationInitiation.new
        data.start_date_time = map['startDateTime']
        data.steps = (Parsers::RecoveryInstanceDataReplicationInitiationSteps.parse(map['steps']) unless map['steps'].nil?)
        return data
      end
    end

    class RecoveryInstanceDataReplicationInitiationSteps
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::RecoveryInstanceDataReplicationInitiationStep.parse(value) unless value.nil?
        end
        data
      end
    end

    class RecoveryInstanceDataReplicationInitiationStep
      def self.parse(map)
        data = Types::RecoveryInstanceDataReplicationInitiationStep.new
        data.name = map['name']
        data.status = map['status']
        return data
      end
    end

    class RecoveryInstanceDataReplicationInfoReplicatedDisks
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::RecoveryInstanceDataReplicationInfoReplicatedDisk.parse(value) unless value.nil?
        end
        data
      end
    end

    class RecoveryInstanceDataReplicationInfoReplicatedDisk
      def self.parse(map)
        data = Types::RecoveryInstanceDataReplicationInfoReplicatedDisk.new
        data.device_name = map['deviceName']
        data.total_storage_bytes = map['totalStorageBytes']
        data.replicated_storage_bytes = map['replicatedStorageBytes']
        data.rescanned_storage_bytes = map['rescannedStorageBytes']
        data.backlogged_storage_bytes = map['backloggedStorageBytes']
        return data
      end
    end

    class RecoveryInstanceFailback
      def self.parse(map)
        data = Types::RecoveryInstanceFailback.new
        data.failback_client_id = map['failbackClientID']
        data.failback_job_id = map['failbackJobID']
        data.failback_initiation_time = map['failbackInitiationTime']
        data.state = map['state']
        data.agent_last_seen_by_service_date_time = map['agentLastSeenByServiceDateTime']
        data.failback_client_last_seen_by_service_date_time = map['failbackClientLastSeenByServiceDateTime']
        data.failback_to_original_server = map['failbackToOriginalServer']
        data.first_byte_date_time = map['firstByteDateTime']
        data.elapsed_replication_duration = map['elapsedReplicationDuration']
        return data
      end
    end

    # Operation Parser for DescribeRecoverySnapshots
    class DescribeRecoverySnapshots
      def self.parse(http_resp)
        data = Types::DescribeRecoverySnapshotsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (Parsers::RecoverySnapshotsList.parse(map['items']) unless map['items'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class RecoverySnapshotsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::RecoverySnapshot.parse(value) unless value.nil?
        end
        data
      end
    end

    class RecoverySnapshot
      def self.parse(map)
        data = Types::RecoverySnapshot.new
        data.snapshot_id = map['snapshotID']
        data.source_server_id = map['sourceServerID']
        data.expected_timestamp = map['expectedTimestamp']
        data.timestamp = map['timestamp']
        data.ebs_snapshots = (Parsers::EbsSnapshotsList.parse(map['ebsSnapshots']) unless map['ebsSnapshots'].nil?)
        return data
      end
    end

    class EbsSnapshotsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeReplicationConfigurationTemplates
    class DescribeReplicationConfigurationTemplates
      def self.parse(http_resp)
        data = Types::DescribeReplicationConfigurationTemplatesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (Parsers::ReplicationConfigurationTemplates.parse(map['items']) unless map['items'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ReplicationConfigurationTemplates
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ReplicationConfigurationTemplate.parse(value) unless value.nil?
        end
        data
      end
    end

    class ReplicationConfigurationTemplate
      def self.parse(map)
        data = Types::ReplicationConfigurationTemplate.new
        data.replication_configuration_template_id = map['replicationConfigurationTemplateID']
        data.arn = map['arn']
        data.staging_area_subnet_id = map['stagingAreaSubnetId']
        data.associate_default_security_group = map['associateDefaultSecurityGroup']
        data.replication_servers_security_groups_i_ds = (Parsers::ReplicationServersSecurityGroupsIDs.parse(map['replicationServersSecurityGroupsIDs']) unless map['replicationServersSecurityGroupsIDs'].nil?)
        data.replication_server_instance_type = map['replicationServerInstanceType']
        data.use_dedicated_replication_server = map['useDedicatedReplicationServer']
        data.default_large_staging_disk_type = map['defaultLargeStagingDiskType']
        data.ebs_encryption = map['ebsEncryption']
        data.ebs_encryption_key_arn = map['ebsEncryptionKeyArn']
        data.bandwidth_throttling = map['bandwidthThrottling']
        data.data_plane_routing = map['dataPlaneRouting']
        data.create_public_ip = map['createPublicIP']
        data.staging_area_tags = (Parsers::TagsMap.parse(map['stagingAreaTags']) unless map['stagingAreaTags'].nil?)
        data.tags = (Parsers::TagsMap.parse(map['tags']) unless map['tags'].nil?)
        data.pit_policy = (Parsers::PITPolicy.parse(map['pitPolicy']) unless map['pitPolicy'].nil?)
        return data
      end
    end

    # Operation Parser for DescribeSourceServers
    class DescribeSourceServers
      def self.parse(http_resp)
        data = Types::DescribeSourceServersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (Parsers::SourceServersList.parse(map['items']) unless map['items'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class SourceServersList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SourceServer.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DisconnectRecoveryInstance
    class DisconnectRecoveryInstance
      def self.parse(http_resp)
        data = Types::DisconnectRecoveryInstanceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DisconnectSourceServer
    class DisconnectSourceServer
      def self.parse(http_resp)
        data = Types::DisconnectSourceServerOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.source_server_id = map['sourceServerID']
        data.arn = map['arn']
        data.tags = (Parsers::TagsMap.parse(map['tags']) unless map['tags'].nil?)
        data.recovery_instance_id = map['recoveryInstanceId']
        data.last_launch_result = map['lastLaunchResult']
        data.data_replication_info = (Parsers::DataReplicationInfo.parse(map['dataReplicationInfo']) unless map['dataReplicationInfo'].nil?)
        data.life_cycle = (Parsers::LifeCycle.parse(map['lifeCycle']) unless map['lifeCycle'].nil?)
        data.source_properties = (Parsers::SourceProperties.parse(map['sourceProperties']) unless map['sourceProperties'].nil?)
        data.staging_area = (Parsers::StagingArea.parse(map['stagingArea']) unless map['stagingArea'].nil?)
        data
      end
    end

    # Operation Parser for GetFailbackReplicationConfiguration
    class GetFailbackReplicationConfiguration
      def self.parse(http_resp)
        data = Types::GetFailbackReplicationConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.recovery_instance_id = map['recoveryInstanceID']
        data.name = map['name']
        data.bandwidth_throttling = map['bandwidthThrottling']
        data.use_private_ip = map['usePrivateIP']
        data
      end
    end

    # Operation Parser for GetLaunchConfiguration
    class GetLaunchConfiguration
      def self.parse(http_resp)
        data = Types::GetLaunchConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.source_server_id = map['sourceServerID']
        data.name = map['name']
        data.ec2_launch_template_id = map['ec2LaunchTemplateID']
        data.launch_disposition = map['launchDisposition']
        data.target_instance_type_right_sizing_method = map['targetInstanceTypeRightSizingMethod']
        data.copy_private_ip = map['copyPrivateIp']
        data.copy_tags = map['copyTags']
        data.licensing = (Parsers::Licensing.parse(map['licensing']) unless map['licensing'].nil?)
        data
      end
    end

    class Licensing
      def self.parse(map)
        data = Types::Licensing.new
        data.os_byol = map['osByol']
        return data
      end
    end

    # Operation Parser for GetReplicationConfiguration
    class GetReplicationConfiguration
      def self.parse(http_resp)
        data = Types::GetReplicationConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.source_server_id = map['sourceServerID']
        data.name = map['name']
        data.staging_area_subnet_id = map['stagingAreaSubnetId']
        data.associate_default_security_group = map['associateDefaultSecurityGroup']
        data.replication_servers_security_groups_i_ds = (Parsers::ReplicationServersSecurityGroupsIDs.parse(map['replicationServersSecurityGroupsIDs']) unless map['replicationServersSecurityGroupsIDs'].nil?)
        data.replication_server_instance_type = map['replicationServerInstanceType']
        data.use_dedicated_replication_server = map['useDedicatedReplicationServer']
        data.default_large_staging_disk_type = map['defaultLargeStagingDiskType']
        data.replicated_disks = (Parsers::ReplicationConfigurationReplicatedDisks.parse(map['replicatedDisks']) unless map['replicatedDisks'].nil?)
        data.ebs_encryption = map['ebsEncryption']
        data.ebs_encryption_key_arn = map['ebsEncryptionKeyArn']
        data.bandwidth_throttling = map['bandwidthThrottling']
        data.data_plane_routing = map['dataPlaneRouting']
        data.create_public_ip = map['createPublicIP']
        data.staging_area_tags = (Parsers::TagsMap.parse(map['stagingAreaTags']) unless map['stagingAreaTags'].nil?)
        data.pit_policy = (Parsers::PITPolicy.parse(map['pitPolicy']) unless map['pitPolicy'].nil?)
        data
      end
    end

    class ReplicationConfigurationReplicatedDisks
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ReplicationConfigurationReplicatedDisk.parse(value) unless value.nil?
        end
        data
      end
    end

    class ReplicationConfigurationReplicatedDisk
      def self.parse(map)
        data = Types::ReplicationConfigurationReplicatedDisk.new
        data.device_name = map['deviceName']
        data.is_boot_disk = map['isBootDisk']
        data.staging_disk_type = map['stagingDiskType']
        data.iops = map['iops']
        data.throughput = map['throughput']
        return data
      end
    end

    # Operation Parser for InitializeService
    class InitializeService
      def self.parse(http_resp)
        data = Types::InitializeServiceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for ListExtensibleSourceServers
    class ListExtensibleSourceServers
      def self.parse(http_resp)
        data = Types::ListExtensibleSourceServersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (Parsers::StagingSourceServersList.parse(map['items']) unless map['items'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class StagingSourceServersList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::StagingSourceServer.parse(value) unless value.nil?
        end
        data
      end
    end

    class StagingSourceServer
      def self.parse(map)
        data = Types::StagingSourceServer.new
        data.hostname = map['hostname']
        data.arn = map['arn']
        data.tags = (Parsers::TagsMap.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    # Operation Parser for ListStagingAccounts
    class ListStagingAccounts
      def self.parse(http_resp)
        data = Types::ListStagingAccountsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.accounts = (Parsers::Accounts.parse(map['accounts']) unless map['accounts'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class Accounts
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Account.parse(value) unless value.nil?
        end
        data
      end
    end

    class Account
      def self.parse(map)
        data = Types::Account.new
        data.account_id = map['accountID']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::TagsMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for RetryDataReplication
    class RetryDataReplication
      def self.parse(http_resp)
        data = Types::RetryDataReplicationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.source_server_id = map['sourceServerID']
        data.arn = map['arn']
        data.tags = (Parsers::TagsMap.parse(map['tags']) unless map['tags'].nil?)
        data.recovery_instance_id = map['recoveryInstanceId']
        data.last_launch_result = map['lastLaunchResult']
        data.data_replication_info = (Parsers::DataReplicationInfo.parse(map['dataReplicationInfo']) unless map['dataReplicationInfo'].nil?)
        data.life_cycle = (Parsers::LifeCycle.parse(map['lifeCycle']) unless map['lifeCycle'].nil?)
        data.source_properties = (Parsers::SourceProperties.parse(map['sourceProperties']) unless map['sourceProperties'].nil?)
        data.staging_area = (Parsers::StagingArea.parse(map['stagingArea']) unless map['stagingArea'].nil?)
        data
      end
    end

    # Operation Parser for StartFailbackLaunch
    class StartFailbackLaunch
      def self.parse(http_resp)
        data = Types::StartFailbackLaunchOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.job = (Parsers::Job.parse(map['job']) unless map['job'].nil?)
        data
      end
    end

    # Operation Parser for StartRecovery
    class StartRecovery
      def self.parse(http_resp)
        data = Types::StartRecoveryOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.job = (Parsers::Job.parse(map['job']) unless map['job'].nil?)
        data
      end
    end

    # Operation Parser for StopFailback
    class StopFailback
      def self.parse(http_resp)
        data = Types::StopFailbackOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for TerminateRecoveryInstances
    class TerminateRecoveryInstances
      def self.parse(http_resp)
        data = Types::TerminateRecoveryInstancesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.job = (Parsers::Job.parse(map['job']) unless map['job'].nil?)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateFailbackReplicationConfiguration
    class UpdateFailbackReplicationConfiguration
      def self.parse(http_resp)
        data = Types::UpdateFailbackReplicationConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateLaunchConfiguration
    class UpdateLaunchConfiguration
      def self.parse(http_resp)
        data = Types::UpdateLaunchConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.source_server_id = map['sourceServerID']
        data.name = map['name']
        data.ec2_launch_template_id = map['ec2LaunchTemplateID']
        data.launch_disposition = map['launchDisposition']
        data.target_instance_type_right_sizing_method = map['targetInstanceTypeRightSizingMethod']
        data.copy_private_ip = map['copyPrivateIp']
        data.copy_tags = map['copyTags']
        data.licensing = (Parsers::Licensing.parse(map['licensing']) unless map['licensing'].nil?)
        data
      end
    end

    # Operation Parser for UpdateReplicationConfiguration
    class UpdateReplicationConfiguration
      def self.parse(http_resp)
        data = Types::UpdateReplicationConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.source_server_id = map['sourceServerID']
        data.name = map['name']
        data.staging_area_subnet_id = map['stagingAreaSubnetId']
        data.associate_default_security_group = map['associateDefaultSecurityGroup']
        data.replication_servers_security_groups_i_ds = (Parsers::ReplicationServersSecurityGroupsIDs.parse(map['replicationServersSecurityGroupsIDs']) unless map['replicationServersSecurityGroupsIDs'].nil?)
        data.replication_server_instance_type = map['replicationServerInstanceType']
        data.use_dedicated_replication_server = map['useDedicatedReplicationServer']
        data.default_large_staging_disk_type = map['defaultLargeStagingDiskType']
        data.replicated_disks = (Parsers::ReplicationConfigurationReplicatedDisks.parse(map['replicatedDisks']) unless map['replicatedDisks'].nil?)
        data.ebs_encryption = map['ebsEncryption']
        data.ebs_encryption_key_arn = map['ebsEncryptionKeyArn']
        data.bandwidth_throttling = map['bandwidthThrottling']
        data.data_plane_routing = map['dataPlaneRouting']
        data.create_public_ip = map['createPublicIP']
        data.staging_area_tags = (Parsers::TagsMap.parse(map['stagingAreaTags']) unless map['stagingAreaTags'].nil?)
        data.pit_policy = (Parsers::PITPolicy.parse(map['pitPolicy']) unless map['pitPolicy'].nil?)
        data
      end
    end

    # Operation Parser for UpdateReplicationConfigurationTemplate
    class UpdateReplicationConfigurationTemplate
      def self.parse(http_resp)
        data = Types::UpdateReplicationConfigurationTemplateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.replication_configuration_template_id = map['replicationConfigurationTemplateID']
        data.arn = map['arn']
        data.staging_area_subnet_id = map['stagingAreaSubnetId']
        data.associate_default_security_group = map['associateDefaultSecurityGroup']
        data.replication_servers_security_groups_i_ds = (Parsers::ReplicationServersSecurityGroupsIDs.parse(map['replicationServersSecurityGroupsIDs']) unless map['replicationServersSecurityGroupsIDs'].nil?)
        data.replication_server_instance_type = map['replicationServerInstanceType']
        data.use_dedicated_replication_server = map['useDedicatedReplicationServer']
        data.default_large_staging_disk_type = map['defaultLargeStagingDiskType']
        data.ebs_encryption = map['ebsEncryption']
        data.ebs_encryption_key_arn = map['ebsEncryptionKeyArn']
        data.bandwidth_throttling = map['bandwidthThrottling']
        data.data_plane_routing = map['dataPlaneRouting']
        data.create_public_ip = map['createPublicIP']
        data.staging_area_tags = (Parsers::TagsMap.parse(map['stagingAreaTags']) unless map['stagingAreaTags'].nil?)
        data.tags = (Parsers::TagsMap.parse(map['tags']) unless map['tags'].nil?)
        data.pit_policy = (Parsers::PITPolicy.parse(map['pitPolicy']) unless map['pitPolicy'].nil?)
        data
      end
    end
  end
end
