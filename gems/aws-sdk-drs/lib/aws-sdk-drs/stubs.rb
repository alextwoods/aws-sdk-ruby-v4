# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Drs
  module Stubs

    # Operation Stubber for CreateExtendedSourceServer
    class CreateExtendedSourceServer
      def self.default(visited=[])
        {
          source_server: SourceServer.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['sourceServer'] = Stubs::SourceServer.stub(stub[:source_server]) unless stub[:source_server].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
          tags: TagsMap.default(visited),
          recovery_instance_id: 'recovery_instance_id',
          last_launch_result: 'last_launch_result',
          data_replication_info: DataReplicationInfo.default(visited),
          life_cycle: LifeCycle.default(visited),
          source_properties: SourceProperties.default(visited),
          staging_area: StagingArea.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SourceServer.new
        data = {}
        data['sourceServerID'] = stub[:source_server_id] unless stub[:source_server_id].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['tags'] = Stubs::TagsMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['recoveryInstanceId'] = stub[:recovery_instance_id] unless stub[:recovery_instance_id].nil?
        data['lastLaunchResult'] = stub[:last_launch_result] unless stub[:last_launch_result].nil?
        data['dataReplicationInfo'] = Stubs::DataReplicationInfo.stub(stub[:data_replication_info]) unless stub[:data_replication_info].nil?
        data['lifeCycle'] = Stubs::LifeCycle.stub(stub[:life_cycle]) unless stub[:life_cycle].nil?
        data['sourceProperties'] = Stubs::SourceProperties.stub(stub[:source_properties]) unless stub[:source_properties].nil?
        data['stagingArea'] = Stubs::StagingArea.stub(stub[:staging_area]) unless stub[:staging_area].nil?
        data
      end
    end

    # Structure Stubber for StagingArea
    class StagingArea
      def self.default(visited=[])
        return nil if visited.include?('StagingArea')
        visited = visited + ['StagingArea']
        {
          status: 'status',
          staging_account_id: 'staging_account_id',
          staging_source_server_arn: 'staging_source_server_arn',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::StagingArea.new
        data = {}
        data['status'] = stub[:status] unless stub[:status].nil?
        data['stagingAccountID'] = stub[:staging_account_id] unless stub[:staging_account_id].nil?
        data['stagingSourceServerArn'] = stub[:staging_source_server_arn] unless stub[:staging_source_server_arn].nil?
        data['errorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
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
        data['identificationHints'] = Stubs::IdentificationHints.stub(stub[:identification_hints]) unless stub[:identification_hints].nil?
        data['networkInterfaces'] = Stubs::NetworkInterfaces.stub(stub[:network_interfaces]) unless stub[:network_interfaces].nil?
        data['disks'] = Stubs::Disks.stub(stub[:disks]) unless stub[:disks].nil?
        data['cpus'] = Stubs::Cpus.stub(stub[:cpus]) unless stub[:cpus].nil?
        data['ramBytes'] = stub[:ram_bytes] unless stub[:ram_bytes].nil?
        data['os'] = Stubs::OS.stub(stub[:os]) unless stub[:os].nil?
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
          data << Stubs::CPU.stub(element) unless element.nil?
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
          data << Stubs::Disk.stub(element) unless element.nil?
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
          data << Stubs::NetworkInterface.stub(element) unless element.nil?
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
        data['ips'] = Stubs::IPsList.stub(stub[:ips]) unless stub[:ips].nil?
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
        }
      end

      def self.stub(stub)
        stub ||= Types::IdentificationHints.new
        data = {}
        data['fqdn'] = stub[:fqdn] unless stub[:fqdn].nil?
        data['hostname'] = stub[:hostname] unless stub[:hostname].nil?
        data['vmWareUuid'] = stub[:vm_ware_uuid] unless stub[:vm_ware_uuid].nil?
        data['awsInstanceID'] = stub[:aws_instance_id] unless stub[:aws_instance_id].nil?
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
          last_launch: LifeCycleLastLaunch.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LifeCycle.new
        data = {}
        data['addedToServiceDateTime'] = stub[:added_to_service_date_time] unless stub[:added_to_service_date_time].nil?
        data['firstByteDateTime'] = stub[:first_byte_date_time] unless stub[:first_byte_date_time].nil?
        data['elapsedReplicationDuration'] = stub[:elapsed_replication_duration] unless stub[:elapsed_replication_duration].nil?
        data['lastSeenByServiceDateTime'] = stub[:last_seen_by_service_date_time] unless stub[:last_seen_by_service_date_time].nil?
        data['lastLaunch'] = Stubs::LifeCycleLastLaunch.stub(stub[:last_launch]) unless stub[:last_launch].nil?
        data
      end
    end

    # Structure Stubber for LifeCycleLastLaunch
    class LifeCycleLastLaunch
      def self.default(visited=[])
        return nil if visited.include?('LifeCycleLastLaunch')
        visited = visited + ['LifeCycleLastLaunch']
        {
          initiated: LifeCycleLastLaunchInitiated.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LifeCycleLastLaunch.new
        data = {}
        data['initiated'] = Stubs::LifeCycleLastLaunchInitiated.stub(stub[:initiated]) unless stub[:initiated].nil?
        data
      end
    end

    # Structure Stubber for LifeCycleLastLaunchInitiated
    class LifeCycleLastLaunchInitiated
      def self.default(visited=[])
        return nil if visited.include?('LifeCycleLastLaunchInitiated')
        visited = visited + ['LifeCycleLastLaunchInitiated']
        {
          api_call_date_time: 'api_call_date_time',
          job_id: 'job_id',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::LifeCycleLastLaunchInitiated.new
        data = {}
        data['apiCallDateTime'] = stub[:api_call_date_time] unless stub[:api_call_date_time].nil?
        data['jobID'] = stub[:job_id] unless stub[:job_id].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
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
        }
      end

      def self.stub(stub)
        stub ||= Types::DataReplicationInfo.new
        data = {}
        data['lagDuration'] = stub[:lag_duration] unless stub[:lag_duration].nil?
        data['etaDateTime'] = stub[:eta_date_time] unless stub[:eta_date_time].nil?
        data['replicatedDisks'] = Stubs::DataReplicationInfoReplicatedDisks.stub(stub[:replicated_disks]) unless stub[:replicated_disks].nil?
        data['dataReplicationState'] = stub[:data_replication_state] unless stub[:data_replication_state].nil?
        data['dataReplicationInitiation'] = Stubs::DataReplicationInitiation.stub(stub[:data_replication_initiation]) unless stub[:data_replication_initiation].nil?
        data['dataReplicationError'] = Stubs::DataReplicationError.stub(stub[:data_replication_error]) unless stub[:data_replication_error].nil?
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
        data['steps'] = Stubs::DataReplicationInitiationSteps.stub(stub[:steps]) unless stub[:steps].nil?
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
          data << Stubs::DataReplicationInitiationStep.stub(element) unless element.nil?
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
          data << Stubs::DataReplicationInfoReplicatedDisk.stub(element) unless element.nil?
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
          pit_policy: PITPolicy.default(visited),
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
        data['replicationServersSecurityGroupsIDs'] = Stubs::ReplicationServersSecurityGroupsIDs.stub(stub[:replication_servers_security_groups_i_ds]) unless stub[:replication_servers_security_groups_i_ds].nil?
        data['replicationServerInstanceType'] = stub[:replication_server_instance_type] unless stub[:replication_server_instance_type].nil?
        data['useDedicatedReplicationServer'] = stub[:use_dedicated_replication_server] unless stub[:use_dedicated_replication_server].nil?
        data['defaultLargeStagingDiskType'] = stub[:default_large_staging_disk_type] unless stub[:default_large_staging_disk_type].nil?
        data['ebsEncryption'] = stub[:ebs_encryption] unless stub[:ebs_encryption].nil?
        data['ebsEncryptionKeyArn'] = stub[:ebs_encryption_key_arn] unless stub[:ebs_encryption_key_arn].nil?
        data['bandwidthThrottling'] = stub[:bandwidth_throttling] unless stub[:bandwidth_throttling].nil?
        data['dataPlaneRouting'] = stub[:data_plane_routing] unless stub[:data_plane_routing].nil?
        data['createPublicIP'] = stub[:create_public_ip] unless stub[:create_public_ip].nil?
        data['stagingAreaTags'] = Stubs::TagsMap.stub(stub[:staging_area_tags]) unless stub[:staging_area_tags].nil?
        data['tags'] = Stubs::TagsMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['pitPolicy'] = Stubs::PITPolicy.stub(stub[:pit_policy]) unless stub[:pit_policy].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for PITPolicy
    class PITPolicy
      def self.default(visited=[])
        return nil if visited.include?('PITPolicy')
        visited = visited + ['PITPolicy']
        [
          PITPolicyRule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PITPolicyRule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PITPolicyRule
    class PITPolicyRule
      def self.default(visited=[])
        return nil if visited.include?('PITPolicyRule')
        visited = visited + ['PITPolicyRule']
        {
          rule_id: 1,
          units: 'units',
          interval: 1,
          retention_duration: 1,
          enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::PITPolicyRule.new
        data = {}
        data['ruleID'] = stub[:rule_id] unless stub[:rule_id].nil?
        data['units'] = stub[:units] unless stub[:units].nil?
        data['interval'] = stub[:interval] unless stub[:interval].nil?
        data['retentionDuration'] = stub[:retention_duration] unless stub[:retention_duration].nil?
        data['enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data
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

    # Operation Stubber for DeleteRecoveryInstance
    class DeleteRecoveryInstance
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
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
        data['items'] = Stubs::JobLogs.stub(stub[:items]) unless stub[:items].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
          data << Stubs::JobLog.stub(element) unless element.nil?
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
        data['eventData'] = Stubs::JobLogEventData.stub(stub[:event_data]) unless stub[:event_data].nil?
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
          conversion_properties: ConversionProperties.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::JobLogEventData.new
        data = {}
        data['sourceServerID'] = stub[:source_server_id] unless stub[:source_server_id].nil?
        data['conversionServerID'] = stub[:conversion_server_id] unless stub[:conversion_server_id].nil?
        data['targetInstanceID'] = stub[:target_instance_id] unless stub[:target_instance_id].nil?
        data['rawError'] = stub[:raw_error] unless stub[:raw_error].nil?
        data['conversionProperties'] = Stubs::ConversionProperties.stub(stub[:conversion_properties]) unless stub[:conversion_properties].nil?
        data
      end
    end

    # Structure Stubber for ConversionProperties
    class ConversionProperties
      def self.default(visited=[])
        return nil if visited.include?('ConversionProperties')
        visited = visited + ['ConversionProperties']
        {
          volume_to_conversion_map: VolumeToConversionMap.default(visited),
          root_volume_name: 'root_volume_name',
          force_uefi: false,
          data_timestamp: 'data_timestamp',
          volume_to_volume_size: VolumeToSizeMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ConversionProperties.new
        data = {}
        data['volumeToConversionMap'] = Stubs::VolumeToConversionMap.stub(stub[:volume_to_conversion_map]) unless stub[:volume_to_conversion_map].nil?
        data['rootVolumeName'] = stub[:root_volume_name] unless stub[:root_volume_name].nil?
        data['forceUefi'] = stub[:force_uefi] unless stub[:force_uefi].nil?
        data['dataTimestamp'] = stub[:data_timestamp] unless stub[:data_timestamp].nil?
        data['volumeToVolumeSize'] = Stubs::VolumeToSizeMap.stub(stub[:volume_to_volume_size]) unless stub[:volume_to_volume_size].nil?
        data
      end
    end

    # Map Stubber for VolumeToSizeMap
    class VolumeToSizeMap
      def self.default(visited=[])
        return nil if visited.include?('VolumeToSizeMap')
        visited = visited + ['VolumeToSizeMap']
        {
          test_key: 1
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

    # Map Stubber for VolumeToConversionMap
    class VolumeToConversionMap
      def self.default(visited=[])
        return nil if visited.include?('VolumeToConversionMap')
        visited = visited + ['VolumeToConversionMap']
        {
          test_key: ConversionMap.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::ConversionMap.stub(value) unless value.nil?
        end
        data
      end
    end

    # Map Stubber for ConversionMap
    class ConversionMap
      def self.default(visited=[])
        return nil if visited.include?('ConversionMap')
        visited = visited + ['ConversionMap']
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
        data['items'] = Stubs::JobsList.stub(stub[:items]) unless stub[:items].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
          data << Stubs::Job.stub(element) unless element.nil?
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
        data['participatingServers'] = Stubs::ParticipatingServers.stub(stub[:participating_servers]) unless stub[:participating_servers].nil?
        data['tags'] = Stubs::TagsMap.stub(stub[:tags]) unless stub[:tags].nil?
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
          data << Stubs::ParticipatingServer.stub(element) unless element.nil?
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
          recovery_instance_id: 'recovery_instance_id',
          launch_status: 'launch_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::ParticipatingServer.new
        data = {}
        data['sourceServerID'] = stub[:source_server_id] unless stub[:source_server_id].nil?
        data['recoveryInstanceID'] = stub[:recovery_instance_id] unless stub[:recovery_instance_id].nil?
        data['launchStatus'] = stub[:launch_status] unless stub[:launch_status].nil?
        data
      end
    end

    # Operation Stubber for DescribeRecoveryInstances
    class DescribeRecoveryInstances
      def self.default(visited=[])
        {
          next_token: 'next_token',
          items: DescribeRecoveryInstancesItems.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['items'] = Stubs::DescribeRecoveryInstancesItems.stub(stub[:items]) unless stub[:items].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DescribeRecoveryInstancesItems
    class DescribeRecoveryInstancesItems
      def self.default(visited=[])
        return nil if visited.include?('DescribeRecoveryInstancesItems')
        visited = visited + ['DescribeRecoveryInstancesItems']
        [
          RecoveryInstance.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RecoveryInstance.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RecoveryInstance
    class RecoveryInstance
      def self.default(visited=[])
        return nil if visited.include?('RecoveryInstance')
        visited = visited + ['RecoveryInstance']
        {
          ec2_instance_id: 'ec2_instance_id',
          ec2_instance_state: 'ec2_instance_state',
          job_id: 'job_id',
          recovery_instance_id: 'recovery_instance_id',
          source_server_id: 'source_server_id',
          arn: 'arn',
          tags: TagsMap.default(visited),
          failback: RecoveryInstanceFailback.default(visited),
          data_replication_info: RecoveryInstanceDataReplicationInfo.default(visited),
          recovery_instance_properties: RecoveryInstanceProperties.default(visited),
          point_in_time_snapshot_date_time: 'point_in_time_snapshot_date_time',
          is_drill: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::RecoveryInstance.new
        data = {}
        data['ec2InstanceID'] = stub[:ec2_instance_id] unless stub[:ec2_instance_id].nil?
        data['ec2InstanceState'] = stub[:ec2_instance_state] unless stub[:ec2_instance_state].nil?
        data['jobID'] = stub[:job_id] unless stub[:job_id].nil?
        data['recoveryInstanceID'] = stub[:recovery_instance_id] unless stub[:recovery_instance_id].nil?
        data['sourceServerID'] = stub[:source_server_id] unless stub[:source_server_id].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['tags'] = Stubs::TagsMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['failback'] = Stubs::RecoveryInstanceFailback.stub(stub[:failback]) unless stub[:failback].nil?
        data['dataReplicationInfo'] = Stubs::RecoveryInstanceDataReplicationInfo.stub(stub[:data_replication_info]) unless stub[:data_replication_info].nil?
        data['recoveryInstanceProperties'] = Stubs::RecoveryInstanceProperties.stub(stub[:recovery_instance_properties]) unless stub[:recovery_instance_properties].nil?
        data['pointInTimeSnapshotDateTime'] = stub[:point_in_time_snapshot_date_time] unless stub[:point_in_time_snapshot_date_time].nil?
        data['isDrill'] = stub[:is_drill] unless stub[:is_drill].nil?
        data
      end
    end

    # Structure Stubber for RecoveryInstanceProperties
    class RecoveryInstanceProperties
      def self.default(visited=[])
        return nil if visited.include?('RecoveryInstanceProperties')
        visited = visited + ['RecoveryInstanceProperties']
        {
          last_updated_date_time: 'last_updated_date_time',
          identification_hints: IdentificationHints.default(visited),
          network_interfaces: NetworkInterfaces.default(visited),
          disks: RecoveryInstanceDisks.default(visited),
          cpus: Cpus.default(visited),
          ram_bytes: 1,
          os: OS.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RecoveryInstanceProperties.new
        data = {}
        data['lastUpdatedDateTime'] = stub[:last_updated_date_time] unless stub[:last_updated_date_time].nil?
        data['identificationHints'] = Stubs::IdentificationHints.stub(stub[:identification_hints]) unless stub[:identification_hints].nil?
        data['networkInterfaces'] = Stubs::NetworkInterfaces.stub(stub[:network_interfaces]) unless stub[:network_interfaces].nil?
        data['disks'] = Stubs::RecoveryInstanceDisks.stub(stub[:disks]) unless stub[:disks].nil?
        data['cpus'] = Stubs::Cpus.stub(stub[:cpus]) unless stub[:cpus].nil?
        data['ramBytes'] = stub[:ram_bytes] unless stub[:ram_bytes].nil?
        data['os'] = Stubs::OS.stub(stub[:os]) unless stub[:os].nil?
        data
      end
    end

    # List Stubber for RecoveryInstanceDisks
    class RecoveryInstanceDisks
      def self.default(visited=[])
        return nil if visited.include?('RecoveryInstanceDisks')
        visited = visited + ['RecoveryInstanceDisks']
        [
          RecoveryInstanceDisk.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RecoveryInstanceDisk.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RecoveryInstanceDisk
    class RecoveryInstanceDisk
      def self.default(visited=[])
        return nil if visited.include?('RecoveryInstanceDisk')
        visited = visited + ['RecoveryInstanceDisk']
        {
          internal_device_name: 'internal_device_name',
          bytes: 1,
          ebs_volume_id: 'ebs_volume_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::RecoveryInstanceDisk.new
        data = {}
        data['internalDeviceName'] = stub[:internal_device_name] unless stub[:internal_device_name].nil?
        data['bytes'] = stub[:bytes] unless stub[:bytes].nil?
        data['ebsVolumeID'] = stub[:ebs_volume_id] unless stub[:ebs_volume_id].nil?
        data
      end
    end

    # Structure Stubber for RecoveryInstanceDataReplicationInfo
    class RecoveryInstanceDataReplicationInfo
      def self.default(visited=[])
        return nil if visited.include?('RecoveryInstanceDataReplicationInfo')
        visited = visited + ['RecoveryInstanceDataReplicationInfo']
        {
          lag_duration: 'lag_duration',
          eta_date_time: 'eta_date_time',
          replicated_disks: RecoveryInstanceDataReplicationInfoReplicatedDisks.default(visited),
          data_replication_state: 'data_replication_state',
          data_replication_initiation: RecoveryInstanceDataReplicationInitiation.default(visited),
          data_replication_error: RecoveryInstanceDataReplicationError.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RecoveryInstanceDataReplicationInfo.new
        data = {}
        data['lagDuration'] = stub[:lag_duration] unless stub[:lag_duration].nil?
        data['etaDateTime'] = stub[:eta_date_time] unless stub[:eta_date_time].nil?
        data['replicatedDisks'] = Stubs::RecoveryInstanceDataReplicationInfoReplicatedDisks.stub(stub[:replicated_disks]) unless stub[:replicated_disks].nil?
        data['dataReplicationState'] = stub[:data_replication_state] unless stub[:data_replication_state].nil?
        data['dataReplicationInitiation'] = Stubs::RecoveryInstanceDataReplicationInitiation.stub(stub[:data_replication_initiation]) unless stub[:data_replication_initiation].nil?
        data['dataReplicationError'] = Stubs::RecoveryInstanceDataReplicationError.stub(stub[:data_replication_error]) unless stub[:data_replication_error].nil?
        data
      end
    end

    # Structure Stubber for RecoveryInstanceDataReplicationError
    class RecoveryInstanceDataReplicationError
      def self.default(visited=[])
        return nil if visited.include?('RecoveryInstanceDataReplicationError')
        visited = visited + ['RecoveryInstanceDataReplicationError']
        {
          error: 'error',
          raw_error: 'raw_error',
        }
      end

      def self.stub(stub)
        stub ||= Types::RecoveryInstanceDataReplicationError.new
        data = {}
        data['error'] = stub[:error] unless stub[:error].nil?
        data['rawError'] = stub[:raw_error] unless stub[:raw_error].nil?
        data
      end
    end

    # Structure Stubber for RecoveryInstanceDataReplicationInitiation
    class RecoveryInstanceDataReplicationInitiation
      def self.default(visited=[])
        return nil if visited.include?('RecoveryInstanceDataReplicationInitiation')
        visited = visited + ['RecoveryInstanceDataReplicationInitiation']
        {
          start_date_time: 'start_date_time',
          steps: RecoveryInstanceDataReplicationInitiationSteps.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RecoveryInstanceDataReplicationInitiation.new
        data = {}
        data['startDateTime'] = stub[:start_date_time] unless stub[:start_date_time].nil?
        data['steps'] = Stubs::RecoveryInstanceDataReplicationInitiationSteps.stub(stub[:steps]) unless stub[:steps].nil?
        data
      end
    end

    # List Stubber for RecoveryInstanceDataReplicationInitiationSteps
    class RecoveryInstanceDataReplicationInitiationSteps
      def self.default(visited=[])
        return nil if visited.include?('RecoveryInstanceDataReplicationInitiationSteps')
        visited = visited + ['RecoveryInstanceDataReplicationInitiationSteps']
        [
          RecoveryInstanceDataReplicationInitiationStep.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RecoveryInstanceDataReplicationInitiationStep.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RecoveryInstanceDataReplicationInitiationStep
    class RecoveryInstanceDataReplicationInitiationStep
      def self.default(visited=[])
        return nil if visited.include?('RecoveryInstanceDataReplicationInitiationStep')
        visited = visited + ['RecoveryInstanceDataReplicationInitiationStep']
        {
          name: 'name',
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::RecoveryInstanceDataReplicationInitiationStep.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # List Stubber for RecoveryInstanceDataReplicationInfoReplicatedDisks
    class RecoveryInstanceDataReplicationInfoReplicatedDisks
      def self.default(visited=[])
        return nil if visited.include?('RecoveryInstanceDataReplicationInfoReplicatedDisks')
        visited = visited + ['RecoveryInstanceDataReplicationInfoReplicatedDisks']
        [
          RecoveryInstanceDataReplicationInfoReplicatedDisk.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RecoveryInstanceDataReplicationInfoReplicatedDisk.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RecoveryInstanceDataReplicationInfoReplicatedDisk
    class RecoveryInstanceDataReplicationInfoReplicatedDisk
      def self.default(visited=[])
        return nil if visited.include?('RecoveryInstanceDataReplicationInfoReplicatedDisk')
        visited = visited + ['RecoveryInstanceDataReplicationInfoReplicatedDisk']
        {
          device_name: 'device_name',
          total_storage_bytes: 1,
          replicated_storage_bytes: 1,
          rescanned_storage_bytes: 1,
          backlogged_storage_bytes: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::RecoveryInstanceDataReplicationInfoReplicatedDisk.new
        data = {}
        data['deviceName'] = stub[:device_name] unless stub[:device_name].nil?
        data['totalStorageBytes'] = stub[:total_storage_bytes] unless stub[:total_storage_bytes].nil?
        data['replicatedStorageBytes'] = stub[:replicated_storage_bytes] unless stub[:replicated_storage_bytes].nil?
        data['rescannedStorageBytes'] = stub[:rescanned_storage_bytes] unless stub[:rescanned_storage_bytes].nil?
        data['backloggedStorageBytes'] = stub[:backlogged_storage_bytes] unless stub[:backlogged_storage_bytes].nil?
        data
      end
    end

    # Structure Stubber for RecoveryInstanceFailback
    class RecoveryInstanceFailback
      def self.default(visited=[])
        return nil if visited.include?('RecoveryInstanceFailback')
        visited = visited + ['RecoveryInstanceFailback']
        {
          failback_client_id: 'failback_client_id',
          failback_job_id: 'failback_job_id',
          failback_initiation_time: 'failback_initiation_time',
          state: 'state',
          agent_last_seen_by_service_date_time: 'agent_last_seen_by_service_date_time',
          failback_client_last_seen_by_service_date_time: 'failback_client_last_seen_by_service_date_time',
          failback_to_original_server: false,
          first_byte_date_time: 'first_byte_date_time',
          elapsed_replication_duration: 'elapsed_replication_duration',
        }
      end

      def self.stub(stub)
        stub ||= Types::RecoveryInstanceFailback.new
        data = {}
        data['failbackClientID'] = stub[:failback_client_id] unless stub[:failback_client_id].nil?
        data['failbackJobID'] = stub[:failback_job_id] unless stub[:failback_job_id].nil?
        data['failbackInitiationTime'] = stub[:failback_initiation_time] unless stub[:failback_initiation_time].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['agentLastSeenByServiceDateTime'] = stub[:agent_last_seen_by_service_date_time] unless stub[:agent_last_seen_by_service_date_time].nil?
        data['failbackClientLastSeenByServiceDateTime'] = stub[:failback_client_last_seen_by_service_date_time] unless stub[:failback_client_last_seen_by_service_date_time].nil?
        data['failbackToOriginalServer'] = stub[:failback_to_original_server] unless stub[:failback_to_original_server].nil?
        data['firstByteDateTime'] = stub[:first_byte_date_time] unless stub[:first_byte_date_time].nil?
        data['elapsedReplicationDuration'] = stub[:elapsed_replication_duration] unless stub[:elapsed_replication_duration].nil?
        data
      end
    end

    # Operation Stubber for DescribeRecoverySnapshots
    class DescribeRecoverySnapshots
      def self.default(visited=[])
        {
          items: RecoverySnapshotsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['items'] = Stubs::RecoverySnapshotsList.stub(stub[:items]) unless stub[:items].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for RecoverySnapshotsList
    class RecoverySnapshotsList
      def self.default(visited=[])
        return nil if visited.include?('RecoverySnapshotsList')
        visited = visited + ['RecoverySnapshotsList']
        [
          RecoverySnapshot.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RecoverySnapshot.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RecoverySnapshot
    class RecoverySnapshot
      def self.default(visited=[])
        return nil if visited.include?('RecoverySnapshot')
        visited = visited + ['RecoverySnapshot']
        {
          snapshot_id: 'snapshot_id',
          source_server_id: 'source_server_id',
          expected_timestamp: 'expected_timestamp',
          timestamp: 'timestamp',
          ebs_snapshots: EbsSnapshotsList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RecoverySnapshot.new
        data = {}
        data['snapshotID'] = stub[:snapshot_id] unless stub[:snapshot_id].nil?
        data['sourceServerID'] = stub[:source_server_id] unless stub[:source_server_id].nil?
        data['expectedTimestamp'] = stub[:expected_timestamp] unless stub[:expected_timestamp].nil?
        data['timestamp'] = stub[:timestamp] unless stub[:timestamp].nil?
        data['ebsSnapshots'] = Stubs::EbsSnapshotsList.stub(stub[:ebs_snapshots]) unless stub[:ebs_snapshots].nil?
        data
      end
    end

    # List Stubber for EbsSnapshotsList
    class EbsSnapshotsList
      def self.default(visited=[])
        return nil if visited.include?('EbsSnapshotsList')
        visited = visited + ['EbsSnapshotsList']
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
        data['items'] = Stubs::ReplicationConfigurationTemplates.stub(stub[:items]) unless stub[:items].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
          data << Stubs::ReplicationConfigurationTemplate.stub(element) unless element.nil?
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
          pit_policy: PITPolicy.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ReplicationConfigurationTemplate.new
        data = {}
        data['replicationConfigurationTemplateID'] = stub[:replication_configuration_template_id] unless stub[:replication_configuration_template_id].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['stagingAreaSubnetId'] = stub[:staging_area_subnet_id] unless stub[:staging_area_subnet_id].nil?
        data['associateDefaultSecurityGroup'] = stub[:associate_default_security_group] unless stub[:associate_default_security_group].nil?
        data['replicationServersSecurityGroupsIDs'] = Stubs::ReplicationServersSecurityGroupsIDs.stub(stub[:replication_servers_security_groups_i_ds]) unless stub[:replication_servers_security_groups_i_ds].nil?
        data['replicationServerInstanceType'] = stub[:replication_server_instance_type] unless stub[:replication_server_instance_type].nil?
        data['useDedicatedReplicationServer'] = stub[:use_dedicated_replication_server] unless stub[:use_dedicated_replication_server].nil?
        data['defaultLargeStagingDiskType'] = stub[:default_large_staging_disk_type] unless stub[:default_large_staging_disk_type].nil?
        data['ebsEncryption'] = stub[:ebs_encryption] unless stub[:ebs_encryption].nil?
        data['ebsEncryptionKeyArn'] = stub[:ebs_encryption_key_arn] unless stub[:ebs_encryption_key_arn].nil?
        data['bandwidthThrottling'] = stub[:bandwidth_throttling] unless stub[:bandwidth_throttling].nil?
        data['dataPlaneRouting'] = stub[:data_plane_routing] unless stub[:data_plane_routing].nil?
        data['createPublicIP'] = stub[:create_public_ip] unless stub[:create_public_ip].nil?
        data['stagingAreaTags'] = Stubs::TagsMap.stub(stub[:staging_area_tags]) unless stub[:staging_area_tags].nil?
        data['tags'] = Stubs::TagsMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['pitPolicy'] = Stubs::PITPolicy.stub(stub[:pit_policy]) unless stub[:pit_policy].nil?
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
        data['items'] = Stubs::SourceServersList.stub(stub[:items]) unless stub[:items].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
          data << Stubs::SourceServer.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DisconnectRecoveryInstance
    class DisconnectRecoveryInstance
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisconnectSourceServer
    class DisconnectSourceServer
      def self.default(visited=[])
        {
          source_server_id: 'source_server_id',
          arn: 'arn',
          tags: TagsMap.default(visited),
          recovery_instance_id: 'recovery_instance_id',
          last_launch_result: 'last_launch_result',
          data_replication_info: DataReplicationInfo.default(visited),
          life_cycle: LifeCycle.default(visited),
          source_properties: SourceProperties.default(visited),
          staging_area: StagingArea.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['sourceServerID'] = stub[:source_server_id] unless stub[:source_server_id].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['tags'] = Stubs::TagsMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['recoveryInstanceId'] = stub[:recovery_instance_id] unless stub[:recovery_instance_id].nil?
        data['lastLaunchResult'] = stub[:last_launch_result] unless stub[:last_launch_result].nil?
        data['dataReplicationInfo'] = Stubs::DataReplicationInfo.stub(stub[:data_replication_info]) unless stub[:data_replication_info].nil?
        data['lifeCycle'] = Stubs::LifeCycle.stub(stub[:life_cycle]) unless stub[:life_cycle].nil?
        data['sourceProperties'] = Stubs::SourceProperties.stub(stub[:source_properties]) unless stub[:source_properties].nil?
        data['stagingArea'] = Stubs::StagingArea.stub(stub[:staging_area]) unless stub[:staging_area].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetFailbackReplicationConfiguration
    class GetFailbackReplicationConfiguration
      def self.default(visited=[])
        {
          recovery_instance_id: 'recovery_instance_id',
          name: 'name',
          bandwidth_throttling: 1,
          use_private_ip: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['recoveryInstanceID'] = stub[:recovery_instance_id] unless stub[:recovery_instance_id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['bandwidthThrottling'] = stub[:bandwidth_throttling] unless stub[:bandwidth_throttling].nil?
        data['usePrivateIP'] = stub[:use_private_ip] unless stub[:use_private_ip].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        data['licensing'] = Stubs::Licensing.stub(stub[:licensing]) unless stub[:licensing].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
          pit_policy: PITPolicy.default(visited),
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
        data['replicationServersSecurityGroupsIDs'] = Stubs::ReplicationServersSecurityGroupsIDs.stub(stub[:replication_servers_security_groups_i_ds]) unless stub[:replication_servers_security_groups_i_ds].nil?
        data['replicationServerInstanceType'] = stub[:replication_server_instance_type] unless stub[:replication_server_instance_type].nil?
        data['useDedicatedReplicationServer'] = stub[:use_dedicated_replication_server] unless stub[:use_dedicated_replication_server].nil?
        data['defaultLargeStagingDiskType'] = stub[:default_large_staging_disk_type] unless stub[:default_large_staging_disk_type].nil?
        data['replicatedDisks'] = Stubs::ReplicationConfigurationReplicatedDisks.stub(stub[:replicated_disks]) unless stub[:replicated_disks].nil?
        data['ebsEncryption'] = stub[:ebs_encryption] unless stub[:ebs_encryption].nil?
        data['ebsEncryptionKeyArn'] = stub[:ebs_encryption_key_arn] unless stub[:ebs_encryption_key_arn].nil?
        data['bandwidthThrottling'] = stub[:bandwidth_throttling] unless stub[:bandwidth_throttling].nil?
        data['dataPlaneRouting'] = stub[:data_plane_routing] unless stub[:data_plane_routing].nil?
        data['createPublicIP'] = stub[:create_public_ip] unless stub[:create_public_ip].nil?
        data['stagingAreaTags'] = Stubs::TagsMap.stub(stub[:staging_area_tags]) unless stub[:staging_area_tags].nil?
        data['pitPolicy'] = Stubs::PITPolicy.stub(stub[:pit_policy]) unless stub[:pit_policy].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
          data << Stubs::ReplicationConfigurationReplicatedDisk.stub(element) unless element.nil?
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

    # Operation Stubber for ListExtensibleSourceServers
    class ListExtensibleSourceServers
      def self.default(visited=[])
        {
          items: StagingSourceServersList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['items'] = Stubs::StagingSourceServersList.stub(stub[:items]) unless stub[:items].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for StagingSourceServersList
    class StagingSourceServersList
      def self.default(visited=[])
        return nil if visited.include?('StagingSourceServersList')
        visited = visited + ['StagingSourceServersList']
        [
          StagingSourceServer.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::StagingSourceServer.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for StagingSourceServer
    class StagingSourceServer
      def self.default(visited=[])
        return nil if visited.include?('StagingSourceServer')
        visited = visited + ['StagingSourceServer']
        {
          hostname: 'hostname',
          arn: 'arn',
          tags: TagsMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::StagingSourceServer.new
        data = {}
        data['hostname'] = stub[:hostname] unless stub[:hostname].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['tags'] = Stubs::TagsMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for ListStagingAccounts
    class ListStagingAccounts
      def self.default(visited=[])
        {
          accounts: Accounts.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['accounts'] = Stubs::Accounts.stub(stub[:accounts]) unless stub[:accounts].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for Accounts
    class Accounts
      def self.default(visited=[])
        return nil if visited.include?('Accounts')
        visited = visited + ['Accounts']
        [
          Account.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Account.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Account
    class Account
      def self.default(visited=[])
        return nil if visited.include?('Account')
        visited = visited + ['Account']
        {
          account_id: 'account_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::Account.new
        data = {}
        data['accountID'] = stub[:account_id] unless stub[:account_id].nil?
        data
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
        data['tags'] = Stubs::TagsMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for RetryDataReplication
    class RetryDataReplication
      def self.default(visited=[])
        {
          source_server_id: 'source_server_id',
          arn: 'arn',
          tags: TagsMap.default(visited),
          recovery_instance_id: 'recovery_instance_id',
          last_launch_result: 'last_launch_result',
          data_replication_info: DataReplicationInfo.default(visited),
          life_cycle: LifeCycle.default(visited),
          source_properties: SourceProperties.default(visited),
          staging_area: StagingArea.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['sourceServerID'] = stub[:source_server_id] unless stub[:source_server_id].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['tags'] = Stubs::TagsMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['recoveryInstanceId'] = stub[:recovery_instance_id] unless stub[:recovery_instance_id].nil?
        data['lastLaunchResult'] = stub[:last_launch_result] unless stub[:last_launch_result].nil?
        data['dataReplicationInfo'] = Stubs::DataReplicationInfo.stub(stub[:data_replication_info]) unless stub[:data_replication_info].nil?
        data['lifeCycle'] = Stubs::LifeCycle.stub(stub[:life_cycle]) unless stub[:life_cycle].nil?
        data['sourceProperties'] = Stubs::SourceProperties.stub(stub[:source_properties]) unless stub[:source_properties].nil?
        data['stagingArea'] = Stubs::StagingArea.stub(stub[:staging_area]) unless stub[:staging_area].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StartFailbackLaunch
    class StartFailbackLaunch
      def self.default(visited=[])
        {
          job: Job.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['job'] = Stubs::Job.stub(stub[:job]) unless stub[:job].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StartRecovery
    class StartRecovery
      def self.default(visited=[])
        {
          job: Job.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['job'] = Stubs::Job.stub(stub[:job]) unless stub[:job].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StopFailback
    class StopFailback
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
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

    # Operation Stubber for TerminateRecoveryInstances
    class TerminateRecoveryInstances
      def self.default(visited=[])
        {
          job: Job.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['job'] = Stubs::Job.stub(stub[:job]) unless stub[:job].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Stubber for UpdateFailbackReplicationConfiguration
    class UpdateFailbackReplicationConfiguration
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
        data['licensing'] = Stubs::Licensing.stub(stub[:licensing]) unless stub[:licensing].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
          pit_policy: PITPolicy.default(visited),
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
        data['replicationServersSecurityGroupsIDs'] = Stubs::ReplicationServersSecurityGroupsIDs.stub(stub[:replication_servers_security_groups_i_ds]) unless stub[:replication_servers_security_groups_i_ds].nil?
        data['replicationServerInstanceType'] = stub[:replication_server_instance_type] unless stub[:replication_server_instance_type].nil?
        data['useDedicatedReplicationServer'] = stub[:use_dedicated_replication_server] unless stub[:use_dedicated_replication_server].nil?
        data['defaultLargeStagingDiskType'] = stub[:default_large_staging_disk_type] unless stub[:default_large_staging_disk_type].nil?
        data['replicatedDisks'] = Stubs::ReplicationConfigurationReplicatedDisks.stub(stub[:replicated_disks]) unless stub[:replicated_disks].nil?
        data['ebsEncryption'] = stub[:ebs_encryption] unless stub[:ebs_encryption].nil?
        data['ebsEncryptionKeyArn'] = stub[:ebs_encryption_key_arn] unless stub[:ebs_encryption_key_arn].nil?
        data['bandwidthThrottling'] = stub[:bandwidth_throttling] unless stub[:bandwidth_throttling].nil?
        data['dataPlaneRouting'] = stub[:data_plane_routing] unless stub[:data_plane_routing].nil?
        data['createPublicIP'] = stub[:create_public_ip] unless stub[:create_public_ip].nil?
        data['stagingAreaTags'] = Stubs::TagsMap.stub(stub[:staging_area_tags]) unless stub[:staging_area_tags].nil?
        data['pitPolicy'] = Stubs::PITPolicy.stub(stub[:pit_policy]) unless stub[:pit_policy].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
          pit_policy: PITPolicy.default(visited),
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
        data['replicationServersSecurityGroupsIDs'] = Stubs::ReplicationServersSecurityGroupsIDs.stub(stub[:replication_servers_security_groups_i_ds]) unless stub[:replication_servers_security_groups_i_ds].nil?
        data['replicationServerInstanceType'] = stub[:replication_server_instance_type] unless stub[:replication_server_instance_type].nil?
        data['useDedicatedReplicationServer'] = stub[:use_dedicated_replication_server] unless stub[:use_dedicated_replication_server].nil?
        data['defaultLargeStagingDiskType'] = stub[:default_large_staging_disk_type] unless stub[:default_large_staging_disk_type].nil?
        data['ebsEncryption'] = stub[:ebs_encryption] unless stub[:ebs_encryption].nil?
        data['ebsEncryptionKeyArn'] = stub[:ebs_encryption_key_arn] unless stub[:ebs_encryption_key_arn].nil?
        data['bandwidthThrottling'] = stub[:bandwidth_throttling] unless stub[:bandwidth_throttling].nil?
        data['dataPlaneRouting'] = stub[:data_plane_routing] unless stub[:data_plane_routing].nil?
        data['createPublicIP'] = stub[:create_public_ip] unless stub[:create_public_ip].nil?
        data['stagingAreaTags'] = Stubs::TagsMap.stub(stub[:staging_area_tags]) unless stub[:staging_area_tags].nil?
        data['tags'] = Stubs::TagsMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['pitPolicy'] = Stubs::PITPolicy.stub(stub[:pit_policy]) unless stub[:pit_policy].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
