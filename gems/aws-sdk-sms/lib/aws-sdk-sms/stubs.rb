# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SMS
  module Stubs

    # Operation Stubber for CreateApp
    class CreateApp
      def self.default(visited=[])
        {
          app_summary: Stubs::AppSummary.default(visited),
          server_groups: Stubs::ServerGroups.default(visited),
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['appSummary'] = Stubs::AppSummary.stub(stub[:app_summary]) unless stub[:app_summary].nil?
        data['serverGroups'] = Stubs::ServerGroups.stub(stub[:server_groups]) unless stub[:server_groups].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Tags
    class Tags
      def self.default(visited=[])
        return nil if visited.include?('Tags')
        visited = visited + ['Tags']
        [
          Stubs::Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Tag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Tag
    class Tag
      def self.default(visited=[])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Tag.new
        data = {}
        data['key'] = stub[:key] unless stub[:key].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # List Stubber for ServerGroups
    class ServerGroups
      def self.default(visited=[])
        return nil if visited.include?('ServerGroups')
        visited = visited + ['ServerGroups']
        [
          Stubs::ServerGroup.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ServerGroup.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ServerGroup
    class ServerGroup
      def self.default(visited=[])
        return nil if visited.include?('ServerGroup')
        visited = visited + ['ServerGroup']
        {
          server_group_id: 'server_group_id',
          name: 'name',
          server_list: Stubs::ServerList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ServerGroup.new
        data = {}
        data['serverGroupId'] = stub[:server_group_id] unless stub[:server_group_id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['serverList'] = Stubs::ServerList.stub(stub[:server_list]) unless stub[:server_list].nil?
        data
      end
    end

    # List Stubber for ServerList
    class ServerList
      def self.default(visited=[])
        return nil if visited.include?('ServerList')
        visited = visited + ['ServerList']
        [
          Stubs::Server.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Server.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Server
    class Server
      def self.default(visited=[])
        return nil if visited.include?('Server')
        visited = visited + ['Server']
        {
          server_id: 'server_id',
          server_type: 'server_type',
          vm_server: Stubs::VmServer.default(visited),
          replication_job_id: 'replication_job_id',
          replication_job_terminated: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::Server.new
        data = {}
        data['serverId'] = stub[:server_id] unless stub[:server_id].nil?
        data['serverType'] = stub[:server_type] unless stub[:server_type].nil?
        data['vmServer'] = Stubs::VmServer.stub(stub[:vm_server]) unless stub[:vm_server].nil?
        data['replicationJobId'] = stub[:replication_job_id] unless stub[:replication_job_id].nil?
        data['replicationJobTerminated'] = stub[:replication_job_terminated] unless stub[:replication_job_terminated].nil?
        data
      end
    end

    # Structure Stubber for VmServer
    class VmServer
      def self.default(visited=[])
        return nil if visited.include?('VmServer')
        visited = visited + ['VmServer']
        {
          vm_server_address: Stubs::VmServerAddress.default(visited),
          vm_name: 'vm_name',
          vm_manager_name: 'vm_manager_name',
          vm_manager_type: 'vm_manager_type',
          vm_path: 'vm_path',
        }
      end

      def self.stub(stub)
        stub ||= Types::VmServer.new
        data = {}
        data['vmServerAddress'] = Stubs::VmServerAddress.stub(stub[:vm_server_address]) unless stub[:vm_server_address].nil?
        data['vmName'] = stub[:vm_name] unless stub[:vm_name].nil?
        data['vmManagerName'] = stub[:vm_manager_name] unless stub[:vm_manager_name].nil?
        data['vmManagerType'] = stub[:vm_manager_type] unless stub[:vm_manager_type].nil?
        data['vmPath'] = stub[:vm_path] unless stub[:vm_path].nil?
        data
      end
    end

    # Structure Stubber for VmServerAddress
    class VmServerAddress
      def self.default(visited=[])
        return nil if visited.include?('VmServerAddress')
        visited = visited + ['VmServerAddress']
        {
          vm_manager_id: 'vm_manager_id',
          vm_id: 'vm_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::VmServerAddress.new
        data = {}
        data['vmManagerId'] = stub[:vm_manager_id] unless stub[:vm_manager_id].nil?
        data['vmId'] = stub[:vm_id] unless stub[:vm_id].nil?
        data
      end
    end

    # Structure Stubber for AppSummary
    class AppSummary
      def self.default(visited=[])
        return nil if visited.include?('AppSummary')
        visited = visited + ['AppSummary']
        {
          app_id: 'app_id',
          imported_app_id: 'imported_app_id',
          name: 'name',
          description: 'description',
          status: 'status',
          status_message: 'status_message',
          replication_configuration_status: 'replication_configuration_status',
          replication_status: 'replication_status',
          replication_status_message: 'replication_status_message',
          latest_replication_time: Time.now,
          launch_configuration_status: 'launch_configuration_status',
          launch_status: 'launch_status',
          launch_status_message: 'launch_status_message',
          launch_details: Stubs::LaunchDetails.default(visited),
          creation_time: Time.now,
          last_modified: Time.now,
          role_name: 'role_name',
          total_server_groups: 1,
          total_servers: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AppSummary.new
        data = {}
        data['appId'] = stub[:app_id] unless stub[:app_id].nil?
        data['importedAppId'] = stub[:imported_app_id] unless stub[:imported_app_id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['statusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['replicationConfigurationStatus'] = stub[:replication_configuration_status] unless stub[:replication_configuration_status].nil?
        data['replicationStatus'] = stub[:replication_status] unless stub[:replication_status].nil?
        data['replicationStatusMessage'] = stub[:replication_status_message] unless stub[:replication_status_message].nil?
        data['latestReplicationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:latest_replication_time]).to_i unless stub[:latest_replication_time].nil?
        data['launchConfigurationStatus'] = stub[:launch_configuration_status] unless stub[:launch_configuration_status].nil?
        data['launchStatus'] = stub[:launch_status] unless stub[:launch_status].nil?
        data['launchStatusMessage'] = stub[:launch_status_message] unless stub[:launch_status_message].nil?
        data['launchDetails'] = Stubs::LaunchDetails.stub(stub[:launch_details]) unless stub[:launch_details].nil?
        data['creationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['lastModified'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified]).to_i unless stub[:last_modified].nil?
        data['roleName'] = stub[:role_name] unless stub[:role_name].nil?
        data['totalServerGroups'] = stub[:total_server_groups] unless stub[:total_server_groups].nil?
        data['totalServers'] = stub[:total_servers] unless stub[:total_servers].nil?
        data
      end
    end

    # Structure Stubber for LaunchDetails
    class LaunchDetails
      def self.default(visited=[])
        return nil if visited.include?('LaunchDetails')
        visited = visited + ['LaunchDetails']
        {
          latest_launch_time: Time.now,
          stack_name: 'stack_name',
          stack_id: 'stack_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::LaunchDetails.new
        data = {}
        data['latestLaunchTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:latest_launch_time]).to_i unless stub[:latest_launch_time].nil?
        data['stackName'] = stub[:stack_name] unless stub[:stack_name].nil?
        data['stackId'] = stub[:stack_id] unless stub[:stack_id].nil?
        data
      end
    end

    # Operation Stubber for CreateReplicationJob
    class CreateReplicationJob
      def self.default(visited=[])
        {
          replication_job_id: 'replication_job_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['replicationJobId'] = stub[:replication_job_id] unless stub[:replication_job_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteApp
    class DeleteApp
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteAppLaunchConfiguration
    class DeleteAppLaunchConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteAppReplicationConfiguration
    class DeleteAppReplicationConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteAppValidationConfiguration
    class DeleteAppValidationConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteReplicationJob
    class DeleteReplicationJob
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteServerCatalog
    class DeleteServerCatalog
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateConnector
    class DisassociateConnector
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GenerateChangeSet
    class GenerateChangeSet
      def self.default(visited=[])
        {
          s3_location: Stubs::S3Location.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['s3Location'] = Stubs::S3Location.stub(stub[:s3_location]) unless stub[:s3_location].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for S3Location
    class S3Location
      def self.default(visited=[])
        return nil if visited.include?('S3Location')
        visited = visited + ['S3Location']
        {
          bucket: 'bucket',
          key: 'key',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3Location.new
        data = {}
        data['bucket'] = stub[:bucket] unless stub[:bucket].nil?
        data['key'] = stub[:key] unless stub[:key].nil?
        data
      end
    end

    # Operation Stubber for GenerateTemplate
    class GenerateTemplate
      def self.default(visited=[])
        {
          s3_location: Stubs::S3Location.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['s3Location'] = Stubs::S3Location.stub(stub[:s3_location]) unless stub[:s3_location].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetApp
    class GetApp
      def self.default(visited=[])
        {
          app_summary: Stubs::AppSummary.default(visited),
          server_groups: Stubs::ServerGroups.default(visited),
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['appSummary'] = Stubs::AppSummary.stub(stub[:app_summary]) unless stub[:app_summary].nil?
        data['serverGroups'] = Stubs::ServerGroups.stub(stub[:server_groups]) unless stub[:server_groups].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetAppLaunchConfiguration
    class GetAppLaunchConfiguration
      def self.default(visited=[])
        {
          app_id: 'app_id',
          role_name: 'role_name',
          auto_launch: false,
          server_group_launch_configurations: Stubs::ServerGroupLaunchConfigurations.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['appId'] = stub[:app_id] unless stub[:app_id].nil?
        data['roleName'] = stub[:role_name] unless stub[:role_name].nil?
        data['autoLaunch'] = stub[:auto_launch] unless stub[:auto_launch].nil?
        data['serverGroupLaunchConfigurations'] = Stubs::ServerGroupLaunchConfigurations.stub(stub[:server_group_launch_configurations]) unless stub[:server_group_launch_configurations].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ServerGroupLaunchConfigurations
    class ServerGroupLaunchConfigurations
      def self.default(visited=[])
        return nil if visited.include?('ServerGroupLaunchConfigurations')
        visited = visited + ['ServerGroupLaunchConfigurations']
        [
          Stubs::ServerGroupLaunchConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ServerGroupLaunchConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ServerGroupLaunchConfiguration
    class ServerGroupLaunchConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ServerGroupLaunchConfiguration')
        visited = visited + ['ServerGroupLaunchConfiguration']
        {
          server_group_id: 'server_group_id',
          launch_order: 1,
          server_launch_configurations: Stubs::ServerLaunchConfigurations.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ServerGroupLaunchConfiguration.new
        data = {}
        data['serverGroupId'] = stub[:server_group_id] unless stub[:server_group_id].nil?
        data['launchOrder'] = stub[:launch_order] unless stub[:launch_order].nil?
        data['serverLaunchConfigurations'] = Stubs::ServerLaunchConfigurations.stub(stub[:server_launch_configurations]) unless stub[:server_launch_configurations].nil?
        data
      end
    end

    # List Stubber for ServerLaunchConfigurations
    class ServerLaunchConfigurations
      def self.default(visited=[])
        return nil if visited.include?('ServerLaunchConfigurations')
        visited = visited + ['ServerLaunchConfigurations']
        [
          Stubs::ServerLaunchConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ServerLaunchConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ServerLaunchConfiguration
    class ServerLaunchConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ServerLaunchConfiguration')
        visited = visited + ['ServerLaunchConfiguration']
        {
          server: Stubs::Server.default(visited),
          logical_id: 'logical_id',
          vpc: 'vpc',
          subnet: 'subnet',
          security_group: 'security_group',
          ec2_key_name: 'ec2_key_name',
          user_data: Stubs::UserData.default(visited),
          instance_type: 'instance_type',
          associate_public_ip_address: false,
          iam_instance_profile_name: 'iam_instance_profile_name',
          configure_script: Stubs::S3Location.default(visited),
          configure_script_type: 'configure_script_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::ServerLaunchConfiguration.new
        data = {}
        data['server'] = Stubs::Server.stub(stub[:server]) unless stub[:server].nil?
        data['logicalId'] = stub[:logical_id] unless stub[:logical_id].nil?
        data['vpc'] = stub[:vpc] unless stub[:vpc].nil?
        data['subnet'] = stub[:subnet] unless stub[:subnet].nil?
        data['securityGroup'] = stub[:security_group] unless stub[:security_group].nil?
        data['ec2KeyName'] = stub[:ec2_key_name] unless stub[:ec2_key_name].nil?
        data['userData'] = Stubs::UserData.stub(stub[:user_data]) unless stub[:user_data].nil?
        data['instanceType'] = stub[:instance_type] unless stub[:instance_type].nil?
        data['associatePublicIpAddress'] = stub[:associate_public_ip_address] unless stub[:associate_public_ip_address].nil?
        data['iamInstanceProfileName'] = stub[:iam_instance_profile_name] unless stub[:iam_instance_profile_name].nil?
        data['configureScript'] = Stubs::S3Location.stub(stub[:configure_script]) unless stub[:configure_script].nil?
        data['configureScriptType'] = stub[:configure_script_type] unless stub[:configure_script_type].nil?
        data
      end
    end

    # Structure Stubber for UserData
    class UserData
      def self.default(visited=[])
        return nil if visited.include?('UserData')
        visited = visited + ['UserData']
        {
          s3_location: Stubs::S3Location.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::UserData.new
        data = {}
        data['s3Location'] = Stubs::S3Location.stub(stub[:s3_location]) unless stub[:s3_location].nil?
        data
      end
    end

    # Operation Stubber for GetAppReplicationConfiguration
    class GetAppReplicationConfiguration
      def self.default(visited=[])
        {
          server_group_replication_configurations: Stubs::ServerGroupReplicationConfigurations.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['serverGroupReplicationConfigurations'] = Stubs::ServerGroupReplicationConfigurations.stub(stub[:server_group_replication_configurations]) unless stub[:server_group_replication_configurations].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ServerGroupReplicationConfigurations
    class ServerGroupReplicationConfigurations
      def self.default(visited=[])
        return nil if visited.include?('ServerGroupReplicationConfigurations')
        visited = visited + ['ServerGroupReplicationConfigurations']
        [
          Stubs::ServerGroupReplicationConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ServerGroupReplicationConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ServerGroupReplicationConfiguration
    class ServerGroupReplicationConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ServerGroupReplicationConfiguration')
        visited = visited + ['ServerGroupReplicationConfiguration']
        {
          server_group_id: 'server_group_id',
          server_replication_configurations: Stubs::ServerReplicationConfigurations.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ServerGroupReplicationConfiguration.new
        data = {}
        data['serverGroupId'] = stub[:server_group_id] unless stub[:server_group_id].nil?
        data['serverReplicationConfigurations'] = Stubs::ServerReplicationConfigurations.stub(stub[:server_replication_configurations]) unless stub[:server_replication_configurations].nil?
        data
      end
    end

    # List Stubber for ServerReplicationConfigurations
    class ServerReplicationConfigurations
      def self.default(visited=[])
        return nil if visited.include?('ServerReplicationConfigurations')
        visited = visited + ['ServerReplicationConfigurations']
        [
          Stubs::ServerReplicationConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ServerReplicationConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ServerReplicationConfiguration
    class ServerReplicationConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ServerReplicationConfiguration')
        visited = visited + ['ServerReplicationConfiguration']
        {
          server: Stubs::Server.default(visited),
          server_replication_parameters: Stubs::ServerReplicationParameters.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ServerReplicationConfiguration.new
        data = {}
        data['server'] = Stubs::Server.stub(stub[:server]) unless stub[:server].nil?
        data['serverReplicationParameters'] = Stubs::ServerReplicationParameters.stub(stub[:server_replication_parameters]) unless stub[:server_replication_parameters].nil?
        data
      end
    end

    # Structure Stubber for ServerReplicationParameters
    class ServerReplicationParameters
      def self.default(visited=[])
        return nil if visited.include?('ServerReplicationParameters')
        visited = visited + ['ServerReplicationParameters']
        {
          seed_time: Time.now,
          frequency: 1,
          run_once: false,
          license_type: 'license_type',
          number_of_recent_amis_to_keep: 1,
          encrypted: false,
          kms_key_id: 'kms_key_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::ServerReplicationParameters.new
        data = {}
        data['seedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:seed_time]).to_i unless stub[:seed_time].nil?
        data['frequency'] = stub[:frequency] unless stub[:frequency].nil?
        data['runOnce'] = stub[:run_once] unless stub[:run_once].nil?
        data['licenseType'] = stub[:license_type] unless stub[:license_type].nil?
        data['numberOfRecentAmisToKeep'] = stub[:number_of_recent_amis_to_keep] unless stub[:number_of_recent_amis_to_keep].nil?
        data['encrypted'] = stub[:encrypted] unless stub[:encrypted].nil?
        data['kmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data
      end
    end

    # Operation Stubber for GetAppValidationConfiguration
    class GetAppValidationConfiguration
      def self.default(visited=[])
        {
          app_validation_configurations: Stubs::AppValidationConfigurations.default(visited),
          server_group_validation_configurations: Stubs::ServerGroupValidationConfigurations.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['appValidationConfigurations'] = Stubs::AppValidationConfigurations.stub(stub[:app_validation_configurations]) unless stub[:app_validation_configurations].nil?
        data['serverGroupValidationConfigurations'] = Stubs::ServerGroupValidationConfigurations.stub(stub[:server_group_validation_configurations]) unless stub[:server_group_validation_configurations].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ServerGroupValidationConfigurations
    class ServerGroupValidationConfigurations
      def self.default(visited=[])
        return nil if visited.include?('ServerGroupValidationConfigurations')
        visited = visited + ['ServerGroupValidationConfigurations']
        [
          Stubs::ServerGroupValidationConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ServerGroupValidationConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ServerGroupValidationConfiguration
    class ServerGroupValidationConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ServerGroupValidationConfiguration')
        visited = visited + ['ServerGroupValidationConfiguration']
        {
          server_group_id: 'server_group_id',
          server_validation_configurations: Stubs::ServerValidationConfigurations.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ServerGroupValidationConfiguration.new
        data = {}
        data['serverGroupId'] = stub[:server_group_id] unless stub[:server_group_id].nil?
        data['serverValidationConfigurations'] = Stubs::ServerValidationConfigurations.stub(stub[:server_validation_configurations]) unless stub[:server_validation_configurations].nil?
        data
      end
    end

    # List Stubber for ServerValidationConfigurations
    class ServerValidationConfigurations
      def self.default(visited=[])
        return nil if visited.include?('ServerValidationConfigurations')
        visited = visited + ['ServerValidationConfigurations']
        [
          Stubs::ServerValidationConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ServerValidationConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ServerValidationConfiguration
    class ServerValidationConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ServerValidationConfiguration')
        visited = visited + ['ServerValidationConfiguration']
        {
          server: Stubs::Server.default(visited),
          validation_id: 'validation_id',
          name: 'name',
          server_validation_strategy: 'server_validation_strategy',
          user_data_validation_parameters: Stubs::UserDataValidationParameters.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ServerValidationConfiguration.new
        data = {}
        data['server'] = Stubs::Server.stub(stub[:server]) unless stub[:server].nil?
        data['validationId'] = stub[:validation_id] unless stub[:validation_id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['serverValidationStrategy'] = stub[:server_validation_strategy] unless stub[:server_validation_strategy].nil?
        data['userDataValidationParameters'] = Stubs::UserDataValidationParameters.stub(stub[:user_data_validation_parameters]) unless stub[:user_data_validation_parameters].nil?
        data
      end
    end

    # Structure Stubber for UserDataValidationParameters
    class UserDataValidationParameters
      def self.default(visited=[])
        return nil if visited.include?('UserDataValidationParameters')
        visited = visited + ['UserDataValidationParameters']
        {
          source: Stubs::Source.default(visited),
          script_type: 'script_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::UserDataValidationParameters.new
        data = {}
        data['source'] = Stubs::Source.stub(stub[:source]) unless stub[:source].nil?
        data['scriptType'] = stub[:script_type] unless stub[:script_type].nil?
        data
      end
    end

    # Structure Stubber for Source
    class Source
      def self.default(visited=[])
        return nil if visited.include?('Source')
        visited = visited + ['Source']
        {
          s3_location: Stubs::S3Location.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Source.new
        data = {}
        data['s3Location'] = Stubs::S3Location.stub(stub[:s3_location]) unless stub[:s3_location].nil?
        data
      end
    end

    # List Stubber for AppValidationConfigurations
    class AppValidationConfigurations
      def self.default(visited=[])
        return nil if visited.include?('AppValidationConfigurations')
        visited = visited + ['AppValidationConfigurations']
        [
          Stubs::AppValidationConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AppValidationConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AppValidationConfiguration
    class AppValidationConfiguration
      def self.default(visited=[])
        return nil if visited.include?('AppValidationConfiguration')
        visited = visited + ['AppValidationConfiguration']
        {
          validation_id: 'validation_id',
          name: 'name',
          app_validation_strategy: 'app_validation_strategy',
          ssm_validation_parameters: Stubs::SSMValidationParameters.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AppValidationConfiguration.new
        data = {}
        data['validationId'] = stub[:validation_id] unless stub[:validation_id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['appValidationStrategy'] = stub[:app_validation_strategy] unless stub[:app_validation_strategy].nil?
        data['ssmValidationParameters'] = Stubs::SSMValidationParameters.stub(stub[:ssm_validation_parameters]) unless stub[:ssm_validation_parameters].nil?
        data
      end
    end

    # Structure Stubber for SSMValidationParameters
    class SSMValidationParameters
      def self.default(visited=[])
        return nil if visited.include?('SSMValidationParameters')
        visited = visited + ['SSMValidationParameters']
        {
          source: Stubs::Source.default(visited),
          instance_id: 'instance_id',
          script_type: 'script_type',
          command: 'command',
          execution_timeout_seconds: 1,
          output_s3_bucket_name: 'output_s3_bucket_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::SSMValidationParameters.new
        data = {}
        data['source'] = Stubs::Source.stub(stub[:source]) unless stub[:source].nil?
        data['instanceId'] = stub[:instance_id] unless stub[:instance_id].nil?
        data['scriptType'] = stub[:script_type] unless stub[:script_type].nil?
        data['command'] = stub[:command] unless stub[:command].nil?
        data['executionTimeoutSeconds'] = stub[:execution_timeout_seconds] unless stub[:execution_timeout_seconds].nil?
        data['outputS3BucketName'] = stub[:output_s3_bucket_name] unless stub[:output_s3_bucket_name].nil?
        data
      end
    end

    # Operation Stubber for GetAppValidationOutput
    class GetAppValidationOutput
      def self.default(visited=[])
        {
          validation_output_list: Stubs::ValidationOutputList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['validationOutputList'] = Stubs::ValidationOutputList.stub(stub[:validation_output_list]) unless stub[:validation_output_list].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ValidationOutputList
    class ValidationOutputList
      def self.default(visited=[])
        return nil if visited.include?('ValidationOutputList')
        visited = visited + ['ValidationOutputList']
        [
          Stubs::ValidationOutput.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ValidationOutput.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ValidationOutput
    class ValidationOutput
      def self.default(visited=[])
        return nil if visited.include?('ValidationOutput')
        visited = visited + ['ValidationOutput']
        {
          validation_id: 'validation_id',
          name: 'name',
          status: 'status',
          status_message: 'status_message',
          latest_validation_time: Time.now,
          app_validation_output: Stubs::AppValidationOutput.default(visited),
          server_validation_output: Stubs::ServerValidationOutput.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ValidationOutput.new
        data = {}
        data['validationId'] = stub[:validation_id] unless stub[:validation_id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['statusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['latestValidationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:latest_validation_time]).to_i unless stub[:latest_validation_time].nil?
        data['appValidationOutput'] = Stubs::AppValidationOutput.stub(stub[:app_validation_output]) unless stub[:app_validation_output].nil?
        data['serverValidationOutput'] = Stubs::ServerValidationOutput.stub(stub[:server_validation_output]) unless stub[:server_validation_output].nil?
        data
      end
    end

    # Structure Stubber for ServerValidationOutput
    class ServerValidationOutput
      def self.default(visited=[])
        return nil if visited.include?('ServerValidationOutput')
        visited = visited + ['ServerValidationOutput']
        {
          server: Stubs::Server.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ServerValidationOutput.new
        data = {}
        data['server'] = Stubs::Server.stub(stub[:server]) unless stub[:server].nil?
        data
      end
    end

    # Structure Stubber for AppValidationOutput
    class AppValidationOutput
      def self.default(visited=[])
        return nil if visited.include?('AppValidationOutput')
        visited = visited + ['AppValidationOutput']
        {
          ssm_output: Stubs::SSMOutput.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AppValidationOutput.new
        data = {}
        data['ssmOutput'] = Stubs::SSMOutput.stub(stub[:ssm_output]) unless stub[:ssm_output].nil?
        data
      end
    end

    # Structure Stubber for SSMOutput
    class SSMOutput
      def self.default(visited=[])
        return nil if visited.include?('SSMOutput')
        visited = visited + ['SSMOutput']
        {
          s3_location: Stubs::S3Location.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SSMOutput.new
        data = {}
        data['s3Location'] = Stubs::S3Location.stub(stub[:s3_location]) unless stub[:s3_location].nil?
        data
      end
    end

    # Operation Stubber for GetConnectors
    class GetConnectors
      def self.default(visited=[])
        {
          connector_list: Stubs::ConnectorList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['connectorList'] = Stubs::ConnectorList.stub(stub[:connector_list]) unless stub[:connector_list].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ConnectorList
    class ConnectorList
      def self.default(visited=[])
        return nil if visited.include?('ConnectorList')
        visited = visited + ['ConnectorList']
        [
          Stubs::Connector.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Connector.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Connector
    class Connector
      def self.default(visited=[])
        return nil if visited.include?('Connector')
        visited = visited + ['Connector']
        {
          connector_id: 'connector_id',
          version: 'version',
          status: 'status',
          capability_list: Stubs::ConnectorCapabilityList.default(visited),
          vm_manager_name: 'vm_manager_name',
          vm_manager_type: 'vm_manager_type',
          vm_manager_id: 'vm_manager_id',
          ip_address: 'ip_address',
          mac_address: 'mac_address',
          associated_on: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Connector.new
        data = {}
        data['connectorId'] = stub[:connector_id] unless stub[:connector_id].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['capabilityList'] = Stubs::ConnectorCapabilityList.stub(stub[:capability_list]) unless stub[:capability_list].nil?
        data['vmManagerName'] = stub[:vm_manager_name] unless stub[:vm_manager_name].nil?
        data['vmManagerType'] = stub[:vm_manager_type] unless stub[:vm_manager_type].nil?
        data['vmManagerId'] = stub[:vm_manager_id] unless stub[:vm_manager_id].nil?
        data['ipAddress'] = stub[:ip_address] unless stub[:ip_address].nil?
        data['macAddress'] = stub[:mac_address] unless stub[:mac_address].nil?
        data['associatedOn'] = Hearth::TimeHelper.to_epoch_seconds(stub[:associated_on]).to_i unless stub[:associated_on].nil?
        data
      end
    end

    # List Stubber for ConnectorCapabilityList
    class ConnectorCapabilityList
      def self.default(visited=[])
        return nil if visited.include?('ConnectorCapabilityList')
        visited = visited + ['ConnectorCapabilityList']
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

    # Operation Stubber for GetReplicationJobs
    class GetReplicationJobs
      def self.default(visited=[])
        {
          replication_job_list: Stubs::ReplicationJobList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['replicationJobList'] = Stubs::ReplicationJobList.stub(stub[:replication_job_list]) unless stub[:replication_job_list].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ReplicationJobList
    class ReplicationJobList
      def self.default(visited=[])
        return nil if visited.include?('ReplicationJobList')
        visited = visited + ['ReplicationJobList']
        [
          Stubs::ReplicationJob.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ReplicationJob.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ReplicationJob
    class ReplicationJob
      def self.default(visited=[])
        return nil if visited.include?('ReplicationJob')
        visited = visited + ['ReplicationJob']
        {
          replication_job_id: 'replication_job_id',
          server_id: 'server_id',
          server_type: 'server_type',
          vm_server: Stubs::VmServer.default(visited),
          seed_replication_time: Time.now,
          frequency: 1,
          run_once: false,
          next_replication_run_start_time: Time.now,
          license_type: 'license_type',
          role_name: 'role_name',
          latest_ami_id: 'latest_ami_id',
          state: 'state',
          status_message: 'status_message',
          description: 'description',
          number_of_recent_amis_to_keep: 1,
          encrypted: false,
          kms_key_id: 'kms_key_id',
          replication_run_list: Stubs::ReplicationRunList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ReplicationJob.new
        data = {}
        data['replicationJobId'] = stub[:replication_job_id] unless stub[:replication_job_id].nil?
        data['serverId'] = stub[:server_id] unless stub[:server_id].nil?
        data['serverType'] = stub[:server_type] unless stub[:server_type].nil?
        data['vmServer'] = Stubs::VmServer.stub(stub[:vm_server]) unless stub[:vm_server].nil?
        data['seedReplicationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:seed_replication_time]).to_i unless stub[:seed_replication_time].nil?
        data['frequency'] = stub[:frequency] unless stub[:frequency].nil?
        data['runOnce'] = stub[:run_once] unless stub[:run_once].nil?
        data['nextReplicationRunStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:next_replication_run_start_time]).to_i unless stub[:next_replication_run_start_time].nil?
        data['licenseType'] = stub[:license_type] unless stub[:license_type].nil?
        data['roleName'] = stub[:role_name] unless stub[:role_name].nil?
        data['latestAmiId'] = stub[:latest_ami_id] unless stub[:latest_ami_id].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['statusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['numberOfRecentAmisToKeep'] = stub[:number_of_recent_amis_to_keep] unless stub[:number_of_recent_amis_to_keep].nil?
        data['encrypted'] = stub[:encrypted] unless stub[:encrypted].nil?
        data['kmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data['replicationRunList'] = Stubs::ReplicationRunList.stub(stub[:replication_run_list]) unless stub[:replication_run_list].nil?
        data
      end
    end

    # List Stubber for ReplicationRunList
    class ReplicationRunList
      def self.default(visited=[])
        return nil if visited.include?('ReplicationRunList')
        visited = visited + ['ReplicationRunList']
        [
          Stubs::ReplicationRun.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ReplicationRun.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ReplicationRun
    class ReplicationRun
      def self.default(visited=[])
        return nil if visited.include?('ReplicationRun')
        visited = visited + ['ReplicationRun']
        {
          replication_run_id: 'replication_run_id',
          state: 'state',
          type: 'type',
          stage_details: Stubs::ReplicationRunStageDetails.default(visited),
          status_message: 'status_message',
          ami_id: 'ami_id',
          scheduled_start_time: Time.now,
          completed_time: Time.now,
          description: 'description',
          encrypted: false,
          kms_key_id: 'kms_key_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::ReplicationRun.new
        data = {}
        data['replicationRunId'] = stub[:replication_run_id] unless stub[:replication_run_id].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['stageDetails'] = Stubs::ReplicationRunStageDetails.stub(stub[:stage_details]) unless stub[:stage_details].nil?
        data['statusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['amiId'] = stub[:ami_id] unless stub[:ami_id].nil?
        data['scheduledStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:scheduled_start_time]).to_i unless stub[:scheduled_start_time].nil?
        data['completedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:completed_time]).to_i unless stub[:completed_time].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['encrypted'] = stub[:encrypted] unless stub[:encrypted].nil?
        data['kmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data
      end
    end

    # Structure Stubber for ReplicationRunStageDetails
    class ReplicationRunStageDetails
      def self.default(visited=[])
        return nil if visited.include?('ReplicationRunStageDetails')
        visited = visited + ['ReplicationRunStageDetails']
        {
          stage: 'stage',
          stage_progress: 'stage_progress',
        }
      end

      def self.stub(stub)
        stub ||= Types::ReplicationRunStageDetails.new
        data = {}
        data['stage'] = stub[:stage] unless stub[:stage].nil?
        data['stageProgress'] = stub[:stage_progress] unless stub[:stage_progress].nil?
        data
      end
    end

    # Operation Stubber for GetReplicationRuns
    class GetReplicationRuns
      def self.default(visited=[])
        {
          replication_job: Stubs::ReplicationJob.default(visited),
          replication_run_list: Stubs::ReplicationRunList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['replicationJob'] = Stubs::ReplicationJob.stub(stub[:replication_job]) unless stub[:replication_job].nil?
        data['replicationRunList'] = Stubs::ReplicationRunList.stub(stub[:replication_run_list]) unless stub[:replication_run_list].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetServers
    class GetServers
      def self.default(visited=[])
        {
          last_modified_on: Time.now,
          server_catalog_status: 'server_catalog_status',
          server_list: Stubs::ServerList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['lastModifiedOn'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_on]).to_i unless stub[:last_modified_on].nil?
        data['serverCatalogStatus'] = stub[:server_catalog_status] unless stub[:server_catalog_status].nil?
        data['serverList'] = Stubs::ServerList.stub(stub[:server_list]) unless stub[:server_list].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ImportAppCatalog
    class ImportAppCatalog
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ImportServerCatalog
    class ImportServerCatalog
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for LaunchApp
    class LaunchApp
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListApps
    class ListApps
      def self.default(visited=[])
        {
          apps: Stubs::Apps.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['apps'] = Stubs::Apps.stub(stub[:apps]) unless stub[:apps].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Apps
    class Apps
      def self.default(visited=[])
        return nil if visited.include?('Apps')
        visited = visited + ['Apps']
        [
          Stubs::AppSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AppSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for NotifyAppValidationOutput
    class NotifyAppValidationOutput
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutAppLaunchConfiguration
    class PutAppLaunchConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutAppReplicationConfiguration
    class PutAppReplicationConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutAppValidationConfiguration
    class PutAppValidationConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartAppReplication
    class StartAppReplication
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartOnDemandAppReplication
    class StartOnDemandAppReplication
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartOnDemandReplicationRun
    class StartOnDemandReplicationRun
      def self.default(visited=[])
        {
          replication_run_id: 'replication_run_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['replicationRunId'] = stub[:replication_run_id] unless stub[:replication_run_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopAppReplication
    class StopAppReplication
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for TerminateApp
    class TerminateApp
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateApp
    class UpdateApp
      def self.default(visited=[])
        {
          app_summary: Stubs::AppSummary.default(visited),
          server_groups: Stubs::ServerGroups.default(visited),
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['appSummary'] = Stubs::AppSummary.stub(stub[:app_summary]) unless stub[:app_summary].nil?
        data['serverGroups'] = Stubs::ServerGroups.stub(stub[:server_groups]) unless stub[:server_groups].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateReplicationJob
    class UpdateReplicationJob
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
