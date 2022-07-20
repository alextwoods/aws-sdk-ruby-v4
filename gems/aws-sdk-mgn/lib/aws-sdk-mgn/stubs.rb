# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::Mgn
  module Stubs

    # Operation Stubber for ChangeServerLifeCycleState
    class ChangeServerLifeCycleState
      def self.default(visited=[])
        {
          source_server_id: 'source_server_id',
          arn: 'arn',
          is_archived: false,
          tags: TagsMap.default(visited),
          launched_instance: LaunchedInstance.default(visited),
          data_replication_info: DataReplicationInfo.default(visited),
          life_cycle: LifeCycle.default(visited),
          source_properties: SourceProperties.default(visited),
          replication_type: 'replication_type',
          vcenter_client_id: 'vcenter_client_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['sourceServerID'] = stub[:source_server_id] unless stub[:source_server_id].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['isArchived'] = stub[:is_archived] unless stub[:is_archived].nil?
        data['tags'] = TagsMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['launchedInstance'] = LaunchedInstance.stub(stub[:launched_instance]) unless stub[:launched_instance].nil?
        data['dataReplicationInfo'] = DataReplicationInfo.stub(stub[:data_replication_info]) unless stub[:data_replication_info].nil?
        data['lifeCycle'] = LifeCycle.stub(stub[:life_cycle]) unless stub[:life_cycle].nil?
        data['sourceProperties'] = SourceProperties.stub(stub[:source_properties]) unless stub[:source_properties].nil?
        data['replicationType'] = stub[:replication_type] unless stub[:replication_type].nil?
        data['vcenterClientID'] = stub[:vcenter_client_id] unless stub[:vcenter_client_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for SourceProperties
    class SourceProperties
      def self.default(visited=[])
        return nil if visited.include?('SourceProperties')
        visited = visited + ['SourceProperties']
        {
          last_updated_date_time: 'last_updated_date_time',
          recommended_instance_type: 'recommended_instance_type',
          identification_hints: IdentificationHints.default(visited),
          network_interfaces: NetworkInterfaces.default(visited),
          disks: Disks.default(visited),
          cpus: Cpus.default(visited),
          ram_bytes: 1,
          os: OS.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SourceProperties.new
        data = {}
        data['lastUpdatedDateTime'] = stub[:last_updated_date_time] unless stub[:last_updated_date_time].nil?
        data['recommendedInstanceType'] = stub[:recommended_instance_type] unless stub[:recommended_instance_type].nil?
        data['identificationHints'] = IdentificationHints.stub(stub[:identification_hints]) unless stub[:identification_hints].nil?
        data['networkInterfaces'] = NetworkInterfaces.stub(stub[:network_interfaces]) unless stub[:network_interfaces].nil?
        data['disks'] = Disks.stub(stub[:disks]) unless stub[:disks].nil?
        data['cpus'] = Cpus.stub(stub[:cpus]) unless stub[:cpus].nil?
        data['ramBytes'] = stub[:ram_bytes] unless stub[:ram_bytes].nil?
        data['os'] = OS.stub(stub[:os]) unless stub[:os].nil?
        data
      end
    end

    # Structure Stubber for OS
    class OS
      def self.default(visited=[])
        return nil if visited.include?('OS')
        visited = visited + ['OS']
        {
          full_string: 'full_string',
        }
      end

      def self.stub(stub)
        stub ||= Types::OS.new
        data = {}
        data['fullString'] = stub[:full_string] unless stub[:full_string].nil?
        data
      end
    end

    # List Stubber for Cpus
    class Cpus
      def self.default(visited=[])
        return nil if visited.include?('Cpus')
        visited = visited + ['Cpus']
        [
          CPU.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CPU.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CPU
    class CPU
      def self.default(visited=[])
        return nil if visited.include?('CPU')
        visited = visited + ['CPU']
        {
          cores: 1,
          model_name: 'model_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::CPU.new
        data = {}
        data['cores'] = stub[:cores] unless stub[:cores].nil?
        data['modelName'] = stub[:model_name] unless stub[:model_name].nil?
        data
      end
    end

    # List Stubber for Disks
    class Disks
      def self.default(visited=[])
        return nil if visited.include?('Disks')
        visited = visited + ['Disks']
        [
          Disk.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Disk.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Disk
    class Disk
      def self.default(visited=[])
        return nil if visited.include?('Disk')
        visited = visited + ['Disk']
        {
          device_name: 'device_name',
          bytes: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Disk.new
        data = {}
        data['deviceName'] = stub[:device_name] unless stub[:device_name].nil?
        data['bytes'] = stub[:bytes] unless stub[:bytes].nil?
        data
      end
    end

    # List Stubber for NetworkInterfaces
    class NetworkInterfaces
      def self.default(visited=[])
        return nil if visited.include?('NetworkInterfaces')
        visited = visited + ['NetworkInterfaces']
        [
          NetworkInterface.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << NetworkInterface.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for NetworkInterface
    class NetworkInterface
      def self.default(visited=[])
        return nil if visited.include?('NetworkInterface')
        visited = visited + ['NetworkInterface']
        {
          mac_address: 'mac_address',
          ips: IPsList.default(visited),
          is_primary: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::NetworkInterface.new
        data = {}
        data['macAddress'] = stub[:mac_address] unless stub[:mac_address].nil?
        data['ips'] = IPsList.stub(stub[:ips]) unless stub[:ips].nil?
        data['isPrimary'] = stub[:is_primary] unless stub[:is_primary].nil?
        data
      end
    end

    # List Stubber for IPsList
    class IPsList
      def self.default(visited=[])
        return nil if visited.include?('IPsList')
        visited = visited + ['IPsList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for IdentificationHints
    class IdentificationHints
      def self.default(visited=[])
        return nil if visited.include?('IdentificationHints')
        visited = visited + ['IdentificationHints']
        {
          fqdn: 'fqdn',
          hostname: 'hostname',
          vm_ware_uuid: 'vm_ware_uuid',
          aws_instance_id: 'aws_instance_id',
          vm_path: 'vm_path',
        }
      end

      def self.stub(stub)
        stub ||= Types::IdentificationHints.new
        data = {}
        data['fqdn'] = stub[:fqdn] unless stub[:fqdn].nil?
        data['hostname'] = stub[:hostname] unless stub[:hostname].nil?
        data['vmWareUuid'] = stub[:vm_ware_uuid] unless stub[:vm_ware_uuid].nil?
        data['awsInstanceID'] = stub[:aws_instance_id] unless stub[:aws_instance_id].nil?
        data['vmPath'] = stub[:vm_path] unless stub[:vm_path].nil?
        data
      end
    end

    # Structure Stubber for LifeCycle
    class LifeCycle
      def self.default(visited=[])
        return nil if visited.include?('LifeCycle')
        visited = visited + ['LifeCycle']
        {
          added_to_service_date_time: 'added_to_service_date_time',
          first_byte_date_time: 'first_byte_date_time',
          elapsed_replication_duration: 'elapsed_replication_duration',
          last_seen_by_service_date_time: 'last_seen_by_service_date_time',
          last_test: LifeCycleLastTest.default(visited),
          last_cutover: LifeCycleLastCutover.default(visited),
          state: 'state',
        }
      end

      def self.stub(stub)
        stub ||= Types::LifeCycle.new
        data = {}
        data['addedToServiceDateTime'] = stub[:added_to_service_date_time] unless stub[:added_to_service_date_time].nil?
        data['firstByteDateTime'] = stub[:first_byte_date_time] unless stub[:first_byte_date_time].nil?
        data['elapsedReplicationDuration'] = stub[:elapsed_replication_duration] unless stub[:elapsed_replication_duration].nil?
        data['lastSeenByServiceDateTime'] = stub[:last_seen_by_service_date_time] unless stub[:last_seen_by_service_date_time].nil?
        data['lastTest'] = LifeCycleLastTest.stub(stub[:last_test]) unless stub[:last_test].nil?
        data['lastCutover'] = LifeCycleLastCutover.stub(stub[:last_cutover]) unless stub[:last_cutover].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data
      end
    end

    # Structure Stubber for LifeCycleLastCutover
    class LifeCycleLastCutover
      def self.default(visited=[])
        return nil if visited.include?('LifeCycleLastCutover')
        visited = visited + ['LifeCycleLastCutover']
        {
          initiated: LifeCycleLastCutoverInitiated.default(visited),
          reverted: LifeCycleLastCutoverReverted.default(visited),
          finalized: LifeCycleLastCutoverFinalized.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LifeCycleLastCutover.new
        data = {}
        data['initiated'] = LifeCycleLastCutoverInitiated.stub(stub[:initiated]) unless stub[:initiated].nil?
        data['reverted'] = LifeCycleLastCutoverReverted.stub(stub[:reverted]) unless stub[:reverted].nil?
        data['finalized'] = LifeCycleLastCutoverFinalized.stub(stub[:finalized]) unless stub[:finalized].nil?
        data
      end
    end

    # Structure Stubber for LifeCycleLastCutoverFinalized
    class LifeCycleLastCutoverFinalized
      def self.default(visited=[])
        return nil if visited.include?('LifeCycleLastCutoverFinalized')
        visited = visited + ['LifeCycleLastCutoverFinalized']
        {
          api_call_date_time: 'api_call_date_time',
        }
      end

      def self.stub(stub)
        stub ||= Types::LifeCycleLastCutoverFinalized.new
        data = {}
        data['apiCallDateTime'] = stub[:api_call_date_time] unless stub[:api_call_date_time].nil?
        data
      end
    end

    # Structure Stubber for LifeCycleLastCutoverReverted
    class LifeCycleLastCutoverReverted
      def self.default(visited=[])
        return nil if visited.include?('LifeCycleLastCutoverReverted')
        visited = visited + ['LifeCycleLastCutoverReverted']
        {
          api_call_date_time: 'api_call_date_time',
        }
      end

      def self.stub(stub)
        stub ||= Types::LifeCycleLastCutoverReverted.new
        data = {}
        data['apiCallDateTime'] = stub[:api_call_date_time] unless stub[:api_call_date_time].nil?
        data
      end
    end

    # Structure Stubber for LifeCycleLastCutoverInitiated
    class LifeCycleLastCutoverInitiated
      def self.default(visited=[])
        return nil if visited.include?('LifeCycleLastCutoverInitiated')
        visited = visited + ['LifeCycleLastCutoverInitiated']
        {
          api_call_date_time: 'api_call_date_time',
          job_id: 'job_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::LifeCycleLastCutoverInitiated.new
        data = {}
        data['apiCallDateTime'] = stub[:api_call_date_time] unless stub[:api_call_date_time].nil?
        data['jobID'] = stub[:job_id] unless stub[:job_id].nil?
        data
      end
    end

    # Structure Stubber for LifeCycleLastTest
    class LifeCycleLastTest
      def self.default(visited=[])
        return nil if visited.include?('LifeCycleLastTest')
        visited = visited + ['LifeCycleLastTest']
        {
          initiated: LifeCycleLastTestInitiated.default(visited),
          reverted: LifeCycleLastTestReverted.default(visited),
          finalized: LifeCycleLastTestFinalized.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LifeCycleLastTest.new
        data = {}
        data['initiated'] = LifeCycleLastTestInitiated.stub(stub[:initiated]) unless stub[:initiated].nil?
        data['reverted'] = LifeCycleLastTestReverted.stub(stub[:reverted]) unless stub[:reverted].nil?
        data['finalized'] = LifeCycleLastTestFinalized.stub(stub[:finalized]) unless stub[:finalized].nil?
        data
      end
    end

    # Structure Stubber for LifeCycleLastTestFinalized
    class LifeCycleLastTestFinalized
      def self.default(visited=[])
        return nil if visited.include?('LifeCycleLastTestFinalized')
        visited = visited + ['LifeCycleLastTestFinalized']
        {
          api_call_date_time: 'api_call_date_time',
        }
      end

      def self.stub(stub)
        stub ||= Types::LifeCycleLastTestFinalized.new
        data = {}
        data['apiCallDateTime'] = stub[:api_call_date_time] unless stub[:api_call_date_time].nil?
        data
      end
    end

    # Structure Stubber for LifeCycleLastTestReverted
    class LifeCycleLastTestReverted
      def self.default(visited=[])
        return nil if visited.include?('LifeCycleLastTestReverted')
        visited = visited + ['LifeCycleLastTestReverted']
        {
          api_call_date_time: 'api_call_date_time',
        }
      end

      def self.stub(stub)
        stub ||= Types::LifeCycleLastTestReverted.new
        data = {}
        data['apiCallDateTime'] = stub[:api_call_date_time] unless stub[:api_call_date_time].nil?
        data
      end
    end

    # Structure Stubber for LifeCycleLastTestInitiated
    class LifeCycleLastTestInitiated
      def self.default(visited=[])
        return nil if visited.include?('LifeCycleLastTestInitiated')
        visited = visited + ['LifeCycleLastTestInitiated']
        {
          api_call_date_time: 'api_call_date_time',
          job_id: 'job_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::LifeCycleLastTestInitiated.new
        data = {}
        data['apiCallDateTime'] = stub[:api_call_date_time] unless stub[:api_call_date_time].nil?
        data['jobID'] = stub[:job_id] unless stub[:job_id].nil?
        data
      end
    end

    # Structure Stubber for DataReplicationInfo
    class DataReplicationInfo
      def self.default(visited=[])
        return nil if visited.include?('DataReplicationInfo')
        visited = visited + ['DataReplicationInfo']
        {
          lag_duration: 'lag_duration',
          eta_date_time: 'eta_date_time',
          replicated_disks: DataReplicationInfoReplicatedDisks.default(visited),
          data_replication_state: 'data_replication_state',
          data_replication_initiation: DataReplicationInitiation.default(visited),
          data_replication_error: DataReplicationError.default(visited),
          last_snapshot_date_time: 'last_snapshot_date_time',
        }
      end

      def self.stub(stub)
        stub ||= Types::DataReplicationInfo.new
        data = {}
        data['lagDuration'] = stub[:lag_duration] unless stub[:lag_duration].nil?
        data['etaDateTime'] = stub[:eta_date_time] unless stub[:eta_date_time].nil?
        data['replicatedDisks'] = DataReplicationInfoReplicatedDisks.stub(stub[:replicated_disks]) unless stub[:replicated_disks].nil?
        data['dataReplicationState'] = stub[:data_replication_state] unless stub[:data_replication_state].nil?
        data['dataReplicationInitiation'] = DataReplicationInitiation.stub(stub[:data_replication_initiation]) unless stub[:data_replication_initiation].nil?
        data['dataReplicationError'] = DataReplicationError.stub(stub[:data_replication_error]) unless stub[:data_replication_error].nil?
        data['lastSnapshotDateTime'] = stub[:last_snapshot_date_time] unless stub[:last_snapshot_date_time].nil?
        data
      end
    end

    # Structure Stubber for DataReplicationError
    class DataReplicationError
      def self.default(visited=[])
        return nil if visited.include?('DataReplicationError')
        visited = visited + ['DataReplicationError']
        {
          error: 'error',
          raw_error: 'raw_error',
        }
      end

      def self.stub(stub)
        stub ||= Types::DataReplicationError.new
        data = {}
        data['error'] = stub[:error] unless stub[:error].nil?
        data['rawError'] = stub[:raw_error] unless stub[:raw_error].nil?
        data
      end
    end

    # Structure Stubber for DataReplicationInitiation
    class DataReplicationInitiation
      def self.default(visited=[])
        return nil if visited.include?('DataReplicationInitiation')
        visited = visited + ['DataReplicationInitiation']
        {
          start_date_time: 'start_date_time',
          next_attempt_date_time: 'next_attempt_date_time',
          steps: DataReplicationInitiationSteps.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DataReplicationInitiation.new
        data = {}
        data['startDateTime'] = stub[:start_date_time] unless stub[:start_date_time].nil?
        data['nextAttemptDateTime'] = stub[:next_attempt_date_time] unless stub[:next_attempt_date_time].nil?
        data['steps'] = DataReplicationInitiationSteps.stub(stub[:steps]) unless stub[:steps].nil?
        data
      end
    end

    # List Stubber for DataReplicationInitiationSteps
    class DataReplicationInitiationSteps
      def self.default(visited=[])
        return nil if visited.include?('DataReplicationInitiationSteps')
        visited = visited + ['DataReplicationInitiationSteps']
        [
          DataReplicationInitiationStep.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DataReplicationInitiationStep.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DataReplicationInitiationStep
    class DataReplicationInitiationStep
      def self.default(visited=[])
        return nil if visited.include?('DataReplicationInitiationStep')
        visited = visited + ['DataReplicationInitiationStep']
        {
          name: 'name',
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::DataReplicationInitiationStep.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # List Stubber for DataReplicationInfoReplicatedDisks
    class DataReplicationInfoReplicatedDisks
      def self.default(visited=[])
        return nil if visited.include?('DataReplicationInfoReplicatedDisks')
        visited = visited + ['DataReplicationInfoReplicatedDisks']
        [
          DataReplicationInfoReplicatedDisk.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DataReplicationInfoReplicatedDisk.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DataReplicationInfoReplicatedDisk
    class DataReplicationInfoReplicatedDisk
      def self.default(visited=[])
        return nil if visited.include?('DataReplicationInfoReplicatedDisk')
        visited = visited + ['DataReplicationInfoReplicatedDisk']
        {
          device_name: 'device_name',
          total_storage_bytes: 1,
          replicated_storage_bytes: 1,
          rescanned_storage_bytes: 1,
          backlogged_storage_bytes: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::DataReplicationInfoReplicatedDisk.new
        data = {}
        data['deviceName'] = stub[:device_name] unless stub[:device_name].nil?
        data['totalStorageBytes'] = stub[:total_storage_bytes] unless stub[:total_storage_bytes].nil?
        data['replicatedStorageBytes'] = stub[:replicated_storage_bytes] unless stub[:replicated_storage_bytes].nil?
        data['rescannedStorageBytes'] = stub[:rescanned_storage_bytes] unless stub[:rescanned_storage_bytes].nil?
        data['backloggedStorageBytes'] = stub[:backlogged_storage_bytes] unless stub[:backlogged_storage_bytes].nil?
        data
      end
    end

    # Structure Stubber for LaunchedInstance
    class LaunchedInstance
      def self.default(visited=[])
        return nil if visited.include?('LaunchedInstance')
        visited = visited + ['LaunchedInstance']
        {
          ec2_instance_id: 'ec2_instance_id',
          job_id: 'job_id',
          first_boot: 'first_boot',
        }
      end

      def self.stub(stub)
        stub ||= Types::LaunchedInstance.new
        data = {}
        data['ec2InstanceID'] = stub[:ec2_instance_id] unless stub[:ec2_instance_id].nil?
        data['jobID'] = stub[:job_id] unless stub[:job_id].nil?
        data['firstBoot'] = stub[:first_boot] unless stub[:first_boot].nil?
        data
      end
    end

    # Map Stubber for TagsMap
    class TagsMap
      def self.default(visited=[])
        return nil if visited.include?('TagsMap')
        visited = visited + ['TagsMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for CreateReplicationConfigurationTemplate
    class CreateReplicationConfigurationTemplate
      def self.default(visited=[])
        {
          replication_configuration_template_id: 'replication_configuration_template_id',
          arn: 'arn',
          staging_area_subnet_id: 'staging_area_subnet_id',
          associate_default_security_group: false,
          replication_servers_security_groups_i_ds: ReplicationServersSecurityGroupsIDs.default(visited),
          replication_server_instance_type: 'replication_server_instance_type',
          use_dedicated_replication_server: false,
          default_large_staging_disk_type: 'default_large_staging_disk_type',
          ebs_encryption: 'ebs_encryption',
          ebs_encryption_key_arn: 'ebs_encryption_key_arn',
          bandwidth_throttling: 1,
          data_plane_routing: 'data_plane_routing',
          create_public_ip: false,
          staging_area_tags: TagsMap.default(visited),
          tags: TagsMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['replicationConfigurationTemplateID'] = stub[:replication_configuration_template_id] unless stub[:replication_configuration_template_id].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['stagingAreaSubnetId'] = stub[:staging_area_subnet_id] unless stub[:staging_area_subnet_id].nil?
        data['associateDefaultSecurityGroup'] = stub[:associate_default_security_group] unless stub[:associate_default_security_group].nil?
        data['replicationServersSecurityGroupsIDs'] = ReplicationServersSecurityGroupsIDs.stub(stub[:replication_servers_security_groups_i_ds]) unless stub[:replication_servers_security_groups_i_ds].nil?
        data['replicationServerInstanceType'] = stub[:replication_server_instance_type] unless stub[:replication_server_instance_type].nil?
        data['useDedicatedReplicationServer'] = stub[:use_dedicated_replication_server] unless stub[:use_dedicated_replication_server].nil?
        data['defaultLargeStagingDiskType'] = stub[:default_large_staging_disk_type] unless stub[:default_large_staging_disk_type].nil?
        data['ebsEncryption'] = stub[:ebs_encryption] unless stub[:ebs_encryption].nil?
        data['ebsEncryptionKeyArn'] = stub[:ebs_encryption_key_arn] unless stub[:ebs_encryption_key_arn].nil?
        data['bandwidthThrottling'] = stub[:bandwidth_throttling] unless stub[:bandwidth_throttling].nil?
        data['dataPlaneRouting'] = stub[:data_plane_routing] unless stub[:data_plane_routing].nil?
        data['createPublicIP'] = stub[:create_public_ip] unless stub[:create_public_ip].nil?
        data['stagingAreaTags'] = TagsMap.stub(stub[:staging_area_tags]) unless stub[:staging_area_tags].nil?
        data['tags'] = TagsMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ReplicationServersSecurityGroupsIDs
    class ReplicationServersSecurityGroupsIDs
      def self.default(visited=[])
        return nil if visited.include?('ReplicationServersSecurityGroupsIDs')
        visited = visited + ['ReplicationServersSecurityGroupsIDs']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DeleteJob
    class DeleteJob
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteReplicationConfigurationTemplate
    class DeleteReplicationConfigurationTemplate
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteSourceServer
    class DeleteSourceServer
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteVcenterClient
    class DeleteVcenterClient
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DescribeJobLogItems
    class DescribeJobLogItems
      def self.default(visited=[])
        {
          items: JobLogs.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['items'] = JobLogs.stub(stub[:items]) unless stub[:items].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for JobLogs
    class JobLogs
      def self.default(visited=[])
        return nil if visited.include?('JobLogs')
        visited = visited + ['JobLogs']
        [
          JobLog.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << JobLog.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for JobLog
    class JobLog
      def self.default(visited=[])
        return nil if visited.include?('JobLog')
        visited = visited + ['JobLog']
        {
          log_date_time: 'log_date_time',
          event: 'event',
          event_data: JobLogEventData.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::JobLog.new
        data = {}
        data['logDateTime'] = stub[:log_date_time] unless stub[:log_date_time].nil?
        data['event'] = stub[:event] unless stub[:event].nil?
        data['eventData'] = JobLogEventData.stub(stub[:event_data]) unless stub[:event_data].nil?
        data
      end
    end

    # Structure Stubber for JobLogEventData
    class JobLogEventData
      def self.default(visited=[])
        return nil if visited.include?('JobLogEventData')
        visited = visited + ['JobLogEventData']
        {
          source_server_id: 'source_server_id',
          conversion_server_id: 'conversion_server_id',
          target_instance_id: 'target_instance_id',
          raw_error: 'raw_error',
        }
      end

      def self.stub(stub)
        stub ||= Types::JobLogEventData.new
        data = {}
        data['sourceServerID'] = stub[:source_server_id] unless stub[:source_server_id].nil?
        data['conversionServerID'] = stub[:conversion_server_id] unless stub[:conversion_server_id].nil?
        data['targetInstanceID'] = stub[:target_instance_id] unless stub[:target_instance_id].nil?
        data['rawError'] = stub[:raw_error] unless stub[:raw_error].nil?
        data
      end
    end

    # Operation Stubber for DescribeJobs
    class DescribeJobs
      def self.default(visited=[])
        {
          items: JobsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['items'] = JobsList.stub(stub[:items]) unless stub[:items].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for JobsList
    class JobsList
      def self.default(visited=[])
        return nil if visited.include?('JobsList')
        visited = visited + ['JobsList']
        [
          Job.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Job.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Job
    class Job
      def self.default(visited=[])
        return nil if visited.include?('Job')
        visited = visited + ['Job']
        {
          job_id: 'job_id',
          arn: 'arn',
          type: 'type',
          initiated_by: 'initiated_by',
          creation_date_time: 'creation_date_time',
          end_date_time: 'end_date_time',
          status: 'status',
          participating_servers: ParticipatingServers.default(visited),
          tags: TagsMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Job.new
        data = {}
        data['jobID'] = stub[:job_id] unless stub[:job_id].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['initiatedBy'] = stub[:initiated_by] unless stub[:initiated_by].nil?
        data['creationDateTime'] = stub[:creation_date_time] unless stub[:creation_date_time].nil?
        data['endDateTime'] = stub[:end_date_time] unless stub[:end_date_time].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['participatingServers'] = ParticipatingServers.stub(stub[:participating_servers]) unless stub[:participating_servers].nil?
        data['tags'] = TagsMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # List Stubber for ParticipatingServers
    class ParticipatingServers
      def self.default(visited=[])
        return nil if visited.include?('ParticipatingServers')
        visited = visited + ['ParticipatingServers']
        [
          ParticipatingServer.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ParticipatingServer.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ParticipatingServer
    class ParticipatingServer
      def self.default(visited=[])
        return nil if visited.include?('ParticipatingServer')
        visited = visited + ['ParticipatingServer']
        {
          source_server_id: 'source_server_id',
          launch_status: 'launch_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::ParticipatingServer.new
        data = {}
        data['sourceServerID'] = stub[:source_server_id] unless stub[:source_server_id].nil?
        data['launchStatus'] = stub[:launch_status] unless stub[:launch_status].nil?
        data
      end
    end

    # Operation Stubber for DescribeReplicationConfigurationTemplates
    class DescribeReplicationConfigurationTemplates
      def self.default(visited=[])
        {
          items: ReplicationConfigurationTemplates.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['items'] = ReplicationConfigurationTemplates.stub(stub[:items]) unless stub[:items].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ReplicationConfigurationTemplates
    class ReplicationConfigurationTemplates
      def self.default(visited=[])
        return nil if visited.include?('ReplicationConfigurationTemplates')
        visited = visited + ['ReplicationConfigurationTemplates']
        [
          ReplicationConfigurationTemplate.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ReplicationConfigurationTemplate.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ReplicationConfigurationTemplate
    class ReplicationConfigurationTemplate
      def self.default(visited=[])
        return nil if visited.include?('ReplicationConfigurationTemplate')
        visited = visited + ['ReplicationConfigurationTemplate']
        {
          replication_configuration_template_id: 'replication_configuration_template_id',
          arn: 'arn',
          staging_area_subnet_id: 'staging_area_subnet_id',
          associate_default_security_group: false,
          replication_servers_security_groups_i_ds: ReplicationServersSecurityGroupsIDs.default(visited),
          replication_server_instance_type: 'replication_server_instance_type',
          use_dedicated_replication_server: false,
          default_large_staging_disk_type: 'default_large_staging_disk_type',
          ebs_encryption: 'ebs_encryption',
          ebs_encryption_key_arn: 'ebs_encryption_key_arn',
          bandwidth_throttling: 1,
          data_plane_routing: 'data_plane_routing',
          create_public_ip: false,
          staging_area_tags: TagsMap.default(visited),
          tags: TagsMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ReplicationConfigurationTemplate.new
        data = {}
        data['replicationConfigurationTemplateID'] = stub[:replication_configuration_template_id] unless stub[:replication_configuration_template_id].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['stagingAreaSubnetId'] = stub[:staging_area_subnet_id] unless stub[:staging_area_subnet_id].nil?
        data['associateDefaultSecurityGroup'] = stub[:associate_default_security_group] unless stub[:associate_default_security_group].nil?
        data['replicationServersSecurityGroupsIDs'] = ReplicationServersSecurityGroupsIDs.stub(stub[:replication_servers_security_groups_i_ds]) unless stub[:replication_servers_security_groups_i_ds].nil?
        data['replicationServerInstanceType'] = stub[:replication_server_instance_type] unless stub[:replication_server_instance_type].nil?
        data['useDedicatedReplicationServer'] = stub[:use_dedicated_replication_server] unless stub[:use_dedicated_replication_server].nil?
        data['defaultLargeStagingDiskType'] = stub[:default_large_staging_disk_type] unless stub[:default_large_staging_disk_type].nil?
        data['ebsEncryption'] = stub[:ebs_encryption] unless stub[:ebs_encryption].nil?
        data['ebsEncryptionKeyArn'] = stub[:ebs_encryption_key_arn] unless stub[:ebs_encryption_key_arn].nil?
        data['bandwidthThrottling'] = stub[:bandwidth_throttling] unless stub[:bandwidth_throttling].nil?
        data['dataPlaneRouting'] = stub[:data_plane_routing] unless stub[:data_plane_routing].nil?
        data['createPublicIP'] = stub[:create_public_ip] unless stub[:create_public_ip].nil?
        data['stagingAreaTags'] = TagsMap.stub(stub[:staging_area_tags]) unless stub[:staging_area_tags].nil?
        data['tags'] = TagsMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for DescribeSourceServers
    class DescribeSourceServers
      def self.default(visited=[])
        {
          items: SourceServersList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['items'] = SourceServersList.stub(stub[:items]) unless stub[:items].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for SourceServersList
    class SourceServersList
      def self.default(visited=[])
        return nil if visited.include?('SourceServersList')
        visited = visited + ['SourceServersList']
        [
          SourceServer.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SourceServer.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SourceServer
    class SourceServer
      def self.default(visited=[])
        return nil if visited.include?('SourceServer')
        visited = visited + ['SourceServer']
        {
          source_server_id: 'source_server_id',
          arn: 'arn',
          is_archived: false,
          tags: TagsMap.default(visited),
          launched_instance: LaunchedInstance.default(visited),
          data_replication_info: DataReplicationInfo.default(visited),
          life_cycle: LifeCycle.default(visited),
          source_properties: SourceProperties.default(visited),
          replication_type: 'replication_type',
          vcenter_client_id: 'vcenter_client_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::SourceServer.new
        data = {}
        data['sourceServerID'] = stub[:source_server_id] unless stub[:source_server_id].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['isArchived'] = stub[:is_archived] unless stub[:is_archived].nil?
        data['tags'] = TagsMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['launchedInstance'] = LaunchedInstance.stub(stub[:launched_instance]) unless stub[:launched_instance].nil?
        data['dataReplicationInfo'] = DataReplicationInfo.stub(stub[:data_replication_info]) unless stub[:data_replication_info].nil?
        data['lifeCycle'] = LifeCycle.stub(stub[:life_cycle]) unless stub[:life_cycle].nil?
        data['sourceProperties'] = SourceProperties.stub(stub[:source_properties]) unless stub[:source_properties].nil?
        data['replicationType'] = stub[:replication_type] unless stub[:replication_type].nil?
        data['vcenterClientID'] = stub[:vcenter_client_id] unless stub[:vcenter_client_id].nil?
        data
      end
    end

    # Operation Stubber for DescribeVcenterClients
    class DescribeVcenterClients
      def self.default(visited=[])
        {
          items: VcenterClientList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['items'] = VcenterClientList.stub(stub[:items]) unless stub[:items].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for VcenterClientList
    class VcenterClientList
      def self.default(visited=[])
        return nil if visited.include?('VcenterClientList')
        visited = visited + ['VcenterClientList']
        [
          VcenterClient.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << VcenterClient.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for VcenterClient
    class VcenterClient
      def self.default(visited=[])
        return nil if visited.include?('VcenterClient')
        visited = visited + ['VcenterClient']
        {
          vcenter_client_id: 'vcenter_client_id',
          arn: 'arn',
          hostname: 'hostname',
          vcenter_uuid: 'vcenter_uuid',
          datacenter_name: 'datacenter_name',
          last_seen_datetime: 'last_seen_datetime',
          source_server_tags: TagsMap.default(visited),
          tags: TagsMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VcenterClient.new
        data = {}
        data['vcenterClientID'] = stub[:vcenter_client_id] unless stub[:vcenter_client_id].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['hostname'] = stub[:hostname] unless stub[:hostname].nil?
        data['vcenterUUID'] = stub[:vcenter_uuid] unless stub[:vcenter_uuid].nil?
        data['datacenterName'] = stub[:datacenter_name] unless stub[:datacenter_name].nil?
        data['lastSeenDatetime'] = stub[:last_seen_datetime] unless stub[:last_seen_datetime].nil?
        data['sourceServerTags'] = TagsMap.stub(stub[:source_server_tags]) unless stub[:source_server_tags].nil?
        data['tags'] = TagsMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for DisconnectFromService
    class DisconnectFromService
      def self.default(visited=[])
        {
          source_server_id: 'source_server_id',
          arn: 'arn',
          is_archived: false,
          tags: TagsMap.default(visited),
          launched_instance: LaunchedInstance.default(visited),
          data_replication_info: DataReplicationInfo.default(visited),
          life_cycle: LifeCycle.default(visited),
          source_properties: SourceProperties.default(visited),
          replication_type: 'replication_type',
          vcenter_client_id: 'vcenter_client_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['sourceServerID'] = stub[:source_server_id] unless stub[:source_server_id].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['isArchived'] = stub[:is_archived] unless stub[:is_archived].nil?
        data['tags'] = TagsMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['launchedInstance'] = LaunchedInstance.stub(stub[:launched_instance]) unless stub[:launched_instance].nil?
        data['dataReplicationInfo'] = DataReplicationInfo.stub(stub[:data_replication_info]) unless stub[:data_replication_info].nil?
        data['lifeCycle'] = LifeCycle.stub(stub[:life_cycle]) unless stub[:life_cycle].nil?
        data['sourceProperties'] = SourceProperties.stub(stub[:source_properties]) unless stub[:source_properties].nil?
        data['replicationType'] = stub[:replication_type] unless stub[:replication_type].nil?
        data['vcenterClientID'] = stub[:vcenter_client_id] unless stub[:vcenter_client_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for FinalizeCutover
    class FinalizeCutover
      def self.default(visited=[])
        {
          source_server_id: 'source_server_id',
          arn: 'arn',
          is_archived: false,
          tags: TagsMap.default(visited),
          launched_instance: LaunchedInstance.default(visited),
          data_replication_info: DataReplicationInfo.default(visited),
          life_cycle: LifeCycle.default(visited),
          source_properties: SourceProperties.default(visited),
          replication_type: 'replication_type',
          vcenter_client_id: 'vcenter_client_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['sourceServerID'] = stub[:source_server_id] unless stub[:source_server_id].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['isArchived'] = stub[:is_archived] unless stub[:is_archived].nil?
        data['tags'] = TagsMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['launchedInstance'] = LaunchedInstance.stub(stub[:launched_instance]) unless stub[:launched_instance].nil?
        data['dataReplicationInfo'] = DataReplicationInfo.stub(stub[:data_replication_info]) unless stub[:data_replication_info].nil?
        data['lifeCycle'] = LifeCycle.stub(stub[:life_cycle]) unless stub[:life_cycle].nil?
        data['sourceProperties'] = SourceProperties.stub(stub[:source_properties]) unless stub[:source_properties].nil?
        data['replicationType'] = stub[:replication_type] unless stub[:replication_type].nil?
        data['vcenterClientID'] = stub[:vcenter_client_id] unless stub[:vcenter_client_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetLaunchConfiguration
    class GetLaunchConfiguration
      def self.default(visited=[])
        {
          source_server_id: 'source_server_id',
          name: 'name',
          ec2_launch_template_id: 'ec2_launch_template_id',
          launch_disposition: 'launch_disposition',
          target_instance_type_right_sizing_method: 'target_instance_type_right_sizing_method',
          copy_private_ip: false,
          copy_tags: false,
          licensing: Licensing.default(visited),
          boot_mode: 'boot_mode',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['sourceServerID'] = stub[:source_server_id] unless stub[:source_server_id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['ec2LaunchTemplateID'] = stub[:ec2_launch_template_id] unless stub[:ec2_launch_template_id].nil?
        data['launchDisposition'] = stub[:launch_disposition] unless stub[:launch_disposition].nil?
        data['targetInstanceTypeRightSizingMethod'] = stub[:target_instance_type_right_sizing_method] unless stub[:target_instance_type_right_sizing_method].nil?
        data['copyPrivateIp'] = stub[:copy_private_ip] unless stub[:copy_private_ip].nil?
        data['copyTags'] = stub[:copy_tags] unless stub[:copy_tags].nil?
        data['licensing'] = Licensing.stub(stub[:licensing]) unless stub[:licensing].nil?
        data['bootMode'] = stub[:boot_mode] unless stub[:boot_mode].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Licensing
    class Licensing
      def self.default(visited=[])
        return nil if visited.include?('Licensing')
        visited = visited + ['Licensing']
        {
          os_byol: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::Licensing.new
        data = {}
        data['osByol'] = stub[:os_byol] unless stub[:os_byol].nil?
        data
      end
    end

    # Operation Stubber for GetReplicationConfiguration
    class GetReplicationConfiguration
      def self.default(visited=[])
        {
          source_server_id: 'source_server_id',
          name: 'name',
          staging_area_subnet_id: 'staging_area_subnet_id',
          associate_default_security_group: false,
          replication_servers_security_groups_i_ds: ReplicationServersSecurityGroupsIDs.default(visited),
          replication_server_instance_type: 'replication_server_instance_type',
          use_dedicated_replication_server: false,
          default_large_staging_disk_type: 'default_large_staging_disk_type',
          replicated_disks: ReplicationConfigurationReplicatedDisks.default(visited),
          ebs_encryption: 'ebs_encryption',
          ebs_encryption_key_arn: 'ebs_encryption_key_arn',
          bandwidth_throttling: 1,
          data_plane_routing: 'data_plane_routing',
          create_public_ip: false,
          staging_area_tags: TagsMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['sourceServerID'] = stub[:source_server_id] unless stub[:source_server_id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['stagingAreaSubnetId'] = stub[:staging_area_subnet_id] unless stub[:staging_area_subnet_id].nil?
        data['associateDefaultSecurityGroup'] = stub[:associate_default_security_group] unless stub[:associate_default_security_group].nil?
        data['replicationServersSecurityGroupsIDs'] = ReplicationServersSecurityGroupsIDs.stub(stub[:replication_servers_security_groups_i_ds]) unless stub[:replication_servers_security_groups_i_ds].nil?
        data['replicationServerInstanceType'] = stub[:replication_server_instance_type] unless stub[:replication_server_instance_type].nil?
        data['useDedicatedReplicationServer'] = stub[:use_dedicated_replication_server] unless stub[:use_dedicated_replication_server].nil?
        data['defaultLargeStagingDiskType'] = stub[:default_large_staging_disk_type] unless stub[:default_large_staging_disk_type].nil?
        data['replicatedDisks'] = ReplicationConfigurationReplicatedDisks.stub(stub[:replicated_disks]) unless stub[:replicated_disks].nil?
        data['ebsEncryption'] = stub[:ebs_encryption] unless stub[:ebs_encryption].nil?
        data['ebsEncryptionKeyArn'] = stub[:ebs_encryption_key_arn] unless stub[:ebs_encryption_key_arn].nil?
        data['bandwidthThrottling'] = stub[:bandwidth_throttling] unless stub[:bandwidth_throttling].nil?
        data['dataPlaneRouting'] = stub[:data_plane_routing] unless stub[:data_plane_routing].nil?
        data['createPublicIP'] = stub[:create_public_ip] unless stub[:create_public_ip].nil?
        data['stagingAreaTags'] = TagsMap.stub(stub[:staging_area_tags]) unless stub[:staging_area_tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ReplicationConfigurationReplicatedDisks
    class ReplicationConfigurationReplicatedDisks
      def self.default(visited=[])
        return nil if visited.include?('ReplicationConfigurationReplicatedDisks')
        visited = visited + ['ReplicationConfigurationReplicatedDisks']
        [
          ReplicationConfigurationReplicatedDisk.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ReplicationConfigurationReplicatedDisk.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ReplicationConfigurationReplicatedDisk
    class ReplicationConfigurationReplicatedDisk
      def self.default(visited=[])
        return nil if visited.include?('ReplicationConfigurationReplicatedDisk')
        visited = visited + ['ReplicationConfigurationReplicatedDisk']
        {
          device_name: 'device_name',
          is_boot_disk: false,
          staging_disk_type: 'staging_disk_type',
          iops: 1,
          throughput: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ReplicationConfigurationReplicatedDisk.new
        data = {}
        data['deviceName'] = stub[:device_name] unless stub[:device_name].nil?
        data['isBootDisk'] = stub[:is_boot_disk] unless stub[:is_boot_disk].nil?
        data['stagingDiskType'] = stub[:staging_disk_type] unless stub[:staging_disk_type].nil?
        data['iops'] = stub[:iops] unless stub[:iops].nil?
        data['throughput'] = stub[:throughput] unless stub[:throughput].nil?
        data
      end
    end

    # Operation Stubber for InitializeService
    class InitializeService
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagsMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tags'] = TagsMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for MarkAsArchived
    class MarkAsArchived
      def self.default(visited=[])
        {
          source_server_id: 'source_server_id',
          arn: 'arn',
          is_archived: false,
          tags: TagsMap.default(visited),
          launched_instance: LaunchedInstance.default(visited),
          data_replication_info: DataReplicationInfo.default(visited),
          life_cycle: LifeCycle.default(visited),
          source_properties: SourceProperties.default(visited),
          replication_type: 'replication_type',
          vcenter_client_id: 'vcenter_client_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['sourceServerID'] = stub[:source_server_id] unless stub[:source_server_id].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['isArchived'] = stub[:is_archived] unless stub[:is_archived].nil?
        data['tags'] = TagsMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['launchedInstance'] = LaunchedInstance.stub(stub[:launched_instance]) unless stub[:launched_instance].nil?
        data['dataReplicationInfo'] = DataReplicationInfo.stub(stub[:data_replication_info]) unless stub[:data_replication_info].nil?
        data['lifeCycle'] = LifeCycle.stub(stub[:life_cycle]) unless stub[:life_cycle].nil?
        data['sourceProperties'] = SourceProperties.stub(stub[:source_properties]) unless stub[:source_properties].nil?
        data['replicationType'] = stub[:replication_type] unless stub[:replication_type].nil?
        data['vcenterClientID'] = stub[:vcenter_client_id] unless stub[:vcenter_client_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for RetryDataReplication
    class RetryDataReplication
      def self.default(visited=[])
        {
          source_server_id: 'source_server_id',
          arn: 'arn',
          is_archived: false,
          tags: TagsMap.default(visited),
          launched_instance: LaunchedInstance.default(visited),
          data_replication_info: DataReplicationInfo.default(visited),
          life_cycle: LifeCycle.default(visited),
          source_properties: SourceProperties.default(visited),
          replication_type: 'replication_type',
          vcenter_client_id: 'vcenter_client_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['sourceServerID'] = stub[:source_server_id] unless stub[:source_server_id].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['isArchived'] = stub[:is_archived] unless stub[:is_archived].nil?
        data['tags'] = TagsMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['launchedInstance'] = LaunchedInstance.stub(stub[:launched_instance]) unless stub[:launched_instance].nil?
        data['dataReplicationInfo'] = DataReplicationInfo.stub(stub[:data_replication_info]) unless stub[:data_replication_info].nil?
        data['lifeCycle'] = LifeCycle.stub(stub[:life_cycle]) unless stub[:life_cycle].nil?
        data['sourceProperties'] = SourceProperties.stub(stub[:source_properties]) unless stub[:source_properties].nil?
        data['replicationType'] = stub[:replication_type] unless stub[:replication_type].nil?
        data['vcenterClientID'] = stub[:vcenter_client_id] unless stub[:vcenter_client_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StartCutover
    class StartCutover
      def self.default(visited=[])
        {
          job: Job.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['job'] = Job.stub(stub[:job]) unless stub[:job].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StartReplication
    class StartReplication
      def self.default(visited=[])
        {
          source_server_id: 'source_server_id',
          arn: 'arn',
          is_archived: false,
          tags: TagsMap.default(visited),
          launched_instance: LaunchedInstance.default(visited),
          data_replication_info: DataReplicationInfo.default(visited),
          life_cycle: LifeCycle.default(visited),
          source_properties: SourceProperties.default(visited),
          replication_type: 'replication_type',
          vcenter_client_id: 'vcenter_client_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['sourceServerID'] = stub[:source_server_id] unless stub[:source_server_id].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['isArchived'] = stub[:is_archived] unless stub[:is_archived].nil?
        data['tags'] = TagsMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['launchedInstance'] = LaunchedInstance.stub(stub[:launched_instance]) unless stub[:launched_instance].nil?
        data['dataReplicationInfo'] = DataReplicationInfo.stub(stub[:data_replication_info]) unless stub[:data_replication_info].nil?
        data['lifeCycle'] = LifeCycle.stub(stub[:life_cycle]) unless stub[:life_cycle].nil?
        data['sourceProperties'] = SourceProperties.stub(stub[:source_properties]) unless stub[:source_properties].nil?
        data['replicationType'] = stub[:replication_type] unless stub[:replication_type].nil?
        data['vcenterClientID'] = stub[:vcenter_client_id] unless stub[:vcenter_client_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StartTest
    class StartTest
      def self.default(visited=[])
        {
          job: Job.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['job'] = Job.stub(stub[:job]) unless stub[:job].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for TerminateTargetInstances
    class TerminateTargetInstances
      def self.default(visited=[])
        {
          job: Job.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['job'] = Job.stub(stub[:job]) unless stub[:job].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateLaunchConfiguration
    class UpdateLaunchConfiguration
      def self.default(visited=[])
        {
          source_server_id: 'source_server_id',
          name: 'name',
          ec2_launch_template_id: 'ec2_launch_template_id',
          launch_disposition: 'launch_disposition',
          target_instance_type_right_sizing_method: 'target_instance_type_right_sizing_method',
          copy_private_ip: false,
          copy_tags: false,
          licensing: Licensing.default(visited),
          boot_mode: 'boot_mode',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['sourceServerID'] = stub[:source_server_id] unless stub[:source_server_id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['ec2LaunchTemplateID'] = stub[:ec2_launch_template_id] unless stub[:ec2_launch_template_id].nil?
        data['launchDisposition'] = stub[:launch_disposition] unless stub[:launch_disposition].nil?
        data['targetInstanceTypeRightSizingMethod'] = stub[:target_instance_type_right_sizing_method] unless stub[:target_instance_type_right_sizing_method].nil?
        data['copyPrivateIp'] = stub[:copy_private_ip] unless stub[:copy_private_ip].nil?
        data['copyTags'] = stub[:copy_tags] unless stub[:copy_tags].nil?
        data['licensing'] = Licensing.stub(stub[:licensing]) unless stub[:licensing].nil?
        data['bootMode'] = stub[:boot_mode] unless stub[:boot_mode].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateReplicationConfiguration
    class UpdateReplicationConfiguration
      def self.default(visited=[])
        {
          source_server_id: 'source_server_id',
          name: 'name',
          staging_area_subnet_id: 'staging_area_subnet_id',
          associate_default_security_group: false,
          replication_servers_security_groups_i_ds: ReplicationServersSecurityGroupsIDs.default(visited),
          replication_server_instance_type: 'replication_server_instance_type',
          use_dedicated_replication_server: false,
          default_large_staging_disk_type: 'default_large_staging_disk_type',
          replicated_disks: ReplicationConfigurationReplicatedDisks.default(visited),
          ebs_encryption: 'ebs_encryption',
          ebs_encryption_key_arn: 'ebs_encryption_key_arn',
          bandwidth_throttling: 1,
          data_plane_routing: 'data_plane_routing',
          create_public_ip: false,
          staging_area_tags: TagsMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['sourceServerID'] = stub[:source_server_id] unless stub[:source_server_id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['stagingAreaSubnetId'] = stub[:staging_area_subnet_id] unless stub[:staging_area_subnet_id].nil?
        data['associateDefaultSecurityGroup'] = stub[:associate_default_security_group] unless stub[:associate_default_security_group].nil?
        data['replicationServersSecurityGroupsIDs'] = ReplicationServersSecurityGroupsIDs.stub(stub[:replication_servers_security_groups_i_ds]) unless stub[:replication_servers_security_groups_i_ds].nil?
        data['replicationServerInstanceType'] = stub[:replication_server_instance_type] unless stub[:replication_server_instance_type].nil?
        data['useDedicatedReplicationServer'] = stub[:use_dedicated_replication_server] unless stub[:use_dedicated_replication_server].nil?
        data['defaultLargeStagingDiskType'] = stub[:default_large_staging_disk_type] unless stub[:default_large_staging_disk_type].nil?
        data['replicatedDisks'] = ReplicationConfigurationReplicatedDisks.stub(stub[:replicated_disks]) unless stub[:replicated_disks].nil?
        data['ebsEncryption'] = stub[:ebs_encryption] unless stub[:ebs_encryption].nil?
        data['ebsEncryptionKeyArn'] = stub[:ebs_encryption_key_arn] unless stub[:ebs_encryption_key_arn].nil?
        data['bandwidthThrottling'] = stub[:bandwidth_throttling] unless stub[:bandwidth_throttling].nil?
        data['dataPlaneRouting'] = stub[:data_plane_routing] unless stub[:data_plane_routing].nil?
        data['createPublicIP'] = stub[:create_public_ip] unless stub[:create_public_ip].nil?
        data['stagingAreaTags'] = TagsMap.stub(stub[:staging_area_tags]) unless stub[:staging_area_tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateReplicationConfigurationTemplate
    class UpdateReplicationConfigurationTemplate
      def self.default(visited=[])
        {
          replication_configuration_template_id: 'replication_configuration_template_id',
          arn: 'arn',
          staging_area_subnet_id: 'staging_area_subnet_id',
          associate_default_security_group: false,
          replication_servers_security_groups_i_ds: ReplicationServersSecurityGroupsIDs.default(visited),
          replication_server_instance_type: 'replication_server_instance_type',
          use_dedicated_replication_server: false,
          default_large_staging_disk_type: 'default_large_staging_disk_type',
          ebs_encryption: 'ebs_encryption',
          ebs_encryption_key_arn: 'ebs_encryption_key_arn',
          bandwidth_throttling: 1,
          data_plane_routing: 'data_plane_routing',
          create_public_ip: false,
          staging_area_tags: TagsMap.default(visited),
          tags: TagsMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['replicationConfigurationTemplateID'] = stub[:replication_configuration_template_id] unless stub[:replication_configuration_template_id].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['stagingAreaSubnetId'] = stub[:staging_area_subnet_id] unless stub[:staging_area_subnet_id].nil?
        data['associateDefaultSecurityGroup'] = stub[:associate_default_security_group] unless stub[:associate_default_security_group].nil?
        data['replicationServersSecurityGroupsIDs'] = ReplicationServersSecurityGroupsIDs.stub(stub[:replication_servers_security_groups_i_ds]) unless stub[:replication_servers_security_groups_i_ds].nil?
        data['replicationServerInstanceType'] = stub[:replication_server_instance_type] unless stub[:replication_server_instance_type].nil?
        data['useDedicatedReplicationServer'] = stub[:use_dedicated_replication_server] unless stub[:use_dedicated_replication_server].nil?
        data['defaultLargeStagingDiskType'] = stub[:default_large_staging_disk_type] unless stub[:default_large_staging_disk_type].nil?
        data['ebsEncryption'] = stub[:ebs_encryption] unless stub[:ebs_encryption].nil?
        data['ebsEncryptionKeyArn'] = stub[:ebs_encryption_key_arn] unless stub[:ebs_encryption_key_arn].nil?
        data['bandwidthThrottling'] = stub[:bandwidth_throttling] unless stub[:bandwidth_throttling].nil?
        data['dataPlaneRouting'] = stub[:data_plane_routing] unless stub[:data_plane_routing].nil?
        data['createPublicIP'] = stub[:create_public_ip] unless stub[:create_public_ip].nil?
        data['stagingAreaTags'] = TagsMap.stub(stub[:staging_area_tags]) unless stub[:staging_area_tags].nil?
        data['tags'] = TagsMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateSourceServerReplicationType
    class UpdateSourceServerReplicationType
      def self.default(visited=[])
        {
          source_server_id: 'source_server_id',
          arn: 'arn',
          is_archived: false,
          tags: TagsMap.default(visited),
          launched_instance: LaunchedInstance.default(visited),
          data_replication_info: DataReplicationInfo.default(visited),
          life_cycle: LifeCycle.default(visited),
          source_properties: SourceProperties.default(visited),
          replication_type: 'replication_type',
          vcenter_client_id: 'vcenter_client_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['sourceServerID'] = stub[:source_server_id] unless stub[:source_server_id].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['isArchived'] = stub[:is_archived] unless stub[:is_archived].nil?
        data['tags'] = TagsMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['launchedInstance'] = LaunchedInstance.stub(stub[:launched_instance]) unless stub[:launched_instance].nil?
        data['dataReplicationInfo'] = DataReplicationInfo.stub(stub[:data_replication_info]) unless stub[:data_replication_info].nil?
        data['lifeCycle'] = LifeCycle.stub(stub[:life_cycle]) unless stub[:life_cycle].nil?
        data['sourceProperties'] = SourceProperties.stub(stub[:source_properties]) unless stub[:source_properties].nil?
        data['replicationType'] = stub[:replication_type] unless stub[:replication_type].nil?
        data['vcenterClientID'] = stub[:vcenter_client_id] unless stub[:vcenter_client_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
