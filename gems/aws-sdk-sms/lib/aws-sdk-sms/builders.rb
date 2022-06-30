# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::SMS
  module Builders

    # Operation Builder for CreateApp
    class CreateApp
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSServerMigrationService_V2016_10_24.CreateApp'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['roleName'] = input[:role_name] unless input[:role_name].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['serverGroups'] = Builders::ServerGroups.build(input[:server_groups]) unless input[:server_groups].nil?
        data['tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
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
        data['key'] = input[:key] unless input[:key].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # List Builder for ServerGroups
    class ServerGroups
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ServerGroup.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ServerGroup
    class ServerGroup
      def self.build(input)
        data = {}
        data['serverGroupId'] = input[:server_group_id] unless input[:server_group_id].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['serverList'] = Builders::ServerList.build(input[:server_list]) unless input[:server_list].nil?
        data
      end
    end

    # List Builder for ServerList
    class ServerList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Server.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Server
    class Server
      def self.build(input)
        data = {}
        data['serverId'] = input[:server_id] unless input[:server_id].nil?
        data['serverType'] = input[:server_type] unless input[:server_type].nil?
        data['vmServer'] = Builders::VmServer.build(input[:vm_server]) unless input[:vm_server].nil?
        data['replicationJobId'] = input[:replication_job_id] unless input[:replication_job_id].nil?
        data['replicationJobTerminated'] = input[:replication_job_terminated] unless input[:replication_job_terminated].nil?
        data
      end
    end

    # Structure Builder for VmServer
    class VmServer
      def self.build(input)
        data = {}
        data['vmServerAddress'] = Builders::VmServerAddress.build(input[:vm_server_address]) unless input[:vm_server_address].nil?
        data['vmName'] = input[:vm_name] unless input[:vm_name].nil?
        data['vmManagerName'] = input[:vm_manager_name] unless input[:vm_manager_name].nil?
        data['vmManagerType'] = input[:vm_manager_type] unless input[:vm_manager_type].nil?
        data['vmPath'] = input[:vm_path] unless input[:vm_path].nil?
        data
      end
    end

    # Structure Builder for VmServerAddress
    class VmServerAddress
      def self.build(input)
        data = {}
        data['vmManagerId'] = input[:vm_manager_id] unless input[:vm_manager_id].nil?
        data['vmId'] = input[:vm_id] unless input[:vm_id].nil?
        data
      end
    end

    # Operation Builder for CreateReplicationJob
    class CreateReplicationJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSServerMigrationService_V2016_10_24.CreateReplicationJob'
        data = {}
        data['serverId'] = input[:server_id] unless input[:server_id].nil?
        data['seedReplicationTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:seed_replication_time]).to_i unless input[:seed_replication_time].nil?
        data['frequency'] = input[:frequency] unless input[:frequency].nil?
        data['runOnce'] = input[:run_once] unless input[:run_once].nil?
        data['licenseType'] = input[:license_type] unless input[:license_type].nil?
        data['roleName'] = input[:role_name] unless input[:role_name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['numberOfRecentAmisToKeep'] = input[:number_of_recent_amis_to_keep] unless input[:number_of_recent_amis_to_keep].nil?
        data['encrypted'] = input[:encrypted] unless input[:encrypted].nil?
        data['kmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteApp
    class DeleteApp
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSServerMigrationService_V2016_10_24.DeleteApp'
        data = {}
        data['appId'] = input[:app_id] unless input[:app_id].nil?
        data['forceStopAppReplication'] = input[:force_stop_app_replication] unless input[:force_stop_app_replication].nil?
        data['forceTerminateApp'] = input[:force_terminate_app] unless input[:force_terminate_app].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteAppLaunchConfiguration
    class DeleteAppLaunchConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSServerMigrationService_V2016_10_24.DeleteAppLaunchConfiguration'
        data = {}
        data['appId'] = input[:app_id] unless input[:app_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteAppReplicationConfiguration
    class DeleteAppReplicationConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSServerMigrationService_V2016_10_24.DeleteAppReplicationConfiguration'
        data = {}
        data['appId'] = input[:app_id] unless input[:app_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteAppValidationConfiguration
    class DeleteAppValidationConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSServerMigrationService_V2016_10_24.DeleteAppValidationConfiguration'
        data = {}
        data['appId'] = input[:app_id] unless input[:app_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteReplicationJob
    class DeleteReplicationJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSServerMigrationService_V2016_10_24.DeleteReplicationJob'
        data = {}
        data['replicationJobId'] = input[:replication_job_id] unless input[:replication_job_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteServerCatalog
    class DeleteServerCatalog
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSServerMigrationService_V2016_10_24.DeleteServerCatalog'
        data = {}
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateConnector
    class DisassociateConnector
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSServerMigrationService_V2016_10_24.DisassociateConnector'
        data = {}
        data['connectorId'] = input[:connector_id] unless input[:connector_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GenerateChangeSet
    class GenerateChangeSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSServerMigrationService_V2016_10_24.GenerateChangeSet'
        data = {}
        data['appId'] = input[:app_id] unless input[:app_id].nil?
        data['changesetFormat'] = input[:changeset_format] unless input[:changeset_format].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GenerateTemplate
    class GenerateTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSServerMigrationService_V2016_10_24.GenerateTemplate'
        data = {}
        data['appId'] = input[:app_id] unless input[:app_id].nil?
        data['templateFormat'] = input[:template_format] unless input[:template_format].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetApp
    class GetApp
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSServerMigrationService_V2016_10_24.GetApp'
        data = {}
        data['appId'] = input[:app_id] unless input[:app_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetAppLaunchConfiguration
    class GetAppLaunchConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSServerMigrationService_V2016_10_24.GetAppLaunchConfiguration'
        data = {}
        data['appId'] = input[:app_id] unless input[:app_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetAppReplicationConfiguration
    class GetAppReplicationConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSServerMigrationService_V2016_10_24.GetAppReplicationConfiguration'
        data = {}
        data['appId'] = input[:app_id] unless input[:app_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetAppValidationConfiguration
    class GetAppValidationConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSServerMigrationService_V2016_10_24.GetAppValidationConfiguration'
        data = {}
        data['appId'] = input[:app_id] unless input[:app_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetAppValidationOutput
    class GetAppValidationOutput
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSServerMigrationService_V2016_10_24.GetAppValidationOutput'
        data = {}
        data['appId'] = input[:app_id] unless input[:app_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetConnectors
    class GetConnectors
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSServerMigrationService_V2016_10_24.GetConnectors'
        data = {}
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetReplicationJobs
    class GetReplicationJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSServerMigrationService_V2016_10_24.GetReplicationJobs'
        data = {}
        data['replicationJobId'] = input[:replication_job_id] unless input[:replication_job_id].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetReplicationRuns
    class GetReplicationRuns
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSServerMigrationService_V2016_10_24.GetReplicationRuns'
        data = {}
        data['replicationJobId'] = input[:replication_job_id] unless input[:replication_job_id].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetServers
    class GetServers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSServerMigrationService_V2016_10_24.GetServers'
        data = {}
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['vmServerAddressList'] = Builders::VmServerAddressList.build(input[:vm_server_address_list]) unless input[:vm_server_address_list].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for VmServerAddressList
    class VmServerAddressList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::VmServerAddress.build(element) unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ImportAppCatalog
    class ImportAppCatalog
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSServerMigrationService_V2016_10_24.ImportAppCatalog'
        data = {}
        data['roleName'] = input[:role_name] unless input[:role_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ImportServerCatalog
    class ImportServerCatalog
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSServerMigrationService_V2016_10_24.ImportServerCatalog'
        data = {}
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for LaunchApp
    class LaunchApp
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSServerMigrationService_V2016_10_24.LaunchApp'
        data = {}
        data['appId'] = input[:app_id] unless input[:app_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListApps
    class ListApps
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSServerMigrationService_V2016_10_24.ListApps'
        data = {}
        data['appIds'] = Builders::AppIds.build(input[:app_ids]) unless input[:app_ids].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for AppIds
    class AppIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for NotifyAppValidationOutput
    class NotifyAppValidationOutput
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSServerMigrationService_V2016_10_24.NotifyAppValidationOutput'
        data = {}
        data['appId'] = input[:app_id] unless input[:app_id].nil?
        data['notificationContext'] = Builders::NotificationContext.build(input[:notification_context]) unless input[:notification_context].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for NotificationContext
    class NotificationContext
      def self.build(input)
        data = {}
        data['validationId'] = input[:validation_id] unless input[:validation_id].nil?
        data['status'] = input[:status] unless input[:status].nil?
        data['statusMessage'] = input[:status_message] unless input[:status_message].nil?
        data
      end
    end

    # Operation Builder for PutAppLaunchConfiguration
    class PutAppLaunchConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSServerMigrationService_V2016_10_24.PutAppLaunchConfiguration'
        data = {}
        data['appId'] = input[:app_id] unless input[:app_id].nil?
        data['roleName'] = input[:role_name] unless input[:role_name].nil?
        data['autoLaunch'] = input[:auto_launch] unless input[:auto_launch].nil?
        data['serverGroupLaunchConfigurations'] = Builders::ServerGroupLaunchConfigurations.build(input[:server_group_launch_configurations]) unless input[:server_group_launch_configurations].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ServerGroupLaunchConfigurations
    class ServerGroupLaunchConfigurations
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ServerGroupLaunchConfiguration.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ServerGroupLaunchConfiguration
    class ServerGroupLaunchConfiguration
      def self.build(input)
        data = {}
        data['serverGroupId'] = input[:server_group_id] unless input[:server_group_id].nil?
        data['launchOrder'] = input[:launch_order] unless input[:launch_order].nil?
        data['serverLaunchConfigurations'] = Builders::ServerLaunchConfigurations.build(input[:server_launch_configurations]) unless input[:server_launch_configurations].nil?
        data
      end
    end

    # List Builder for ServerLaunchConfigurations
    class ServerLaunchConfigurations
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ServerLaunchConfiguration.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ServerLaunchConfiguration
    class ServerLaunchConfiguration
      def self.build(input)
        data = {}
        data['server'] = Builders::Server.build(input[:server]) unless input[:server].nil?
        data['logicalId'] = input[:logical_id] unless input[:logical_id].nil?
        data['vpc'] = input[:vpc] unless input[:vpc].nil?
        data['subnet'] = input[:subnet] unless input[:subnet].nil?
        data['securityGroup'] = input[:security_group] unless input[:security_group].nil?
        data['ec2KeyName'] = input[:ec2_key_name] unless input[:ec2_key_name].nil?
        data['userData'] = Builders::UserData.build(input[:user_data]) unless input[:user_data].nil?
        data['instanceType'] = input[:instance_type] unless input[:instance_type].nil?
        data['associatePublicIpAddress'] = input[:associate_public_ip_address] unless input[:associate_public_ip_address].nil?
        data['iamInstanceProfileName'] = input[:iam_instance_profile_name] unless input[:iam_instance_profile_name].nil?
        data['configureScript'] = Builders::S3Location.build(input[:configure_script]) unless input[:configure_script].nil?
        data['configureScriptType'] = input[:configure_script_type] unless input[:configure_script_type].nil?
        data
      end
    end

    # Structure Builder for S3Location
    class S3Location
      def self.build(input)
        data = {}
        data['bucket'] = input[:bucket] unless input[:bucket].nil?
        data['key'] = input[:key] unless input[:key].nil?
        data
      end
    end

    # Structure Builder for UserData
    class UserData
      def self.build(input)
        data = {}
        data['s3Location'] = Builders::S3Location.build(input[:s3_location]) unless input[:s3_location].nil?
        data
      end
    end

    # Operation Builder for PutAppReplicationConfiguration
    class PutAppReplicationConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSServerMigrationService_V2016_10_24.PutAppReplicationConfiguration'
        data = {}
        data['appId'] = input[:app_id] unless input[:app_id].nil?
        data['serverGroupReplicationConfigurations'] = Builders::ServerGroupReplicationConfigurations.build(input[:server_group_replication_configurations]) unless input[:server_group_replication_configurations].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ServerGroupReplicationConfigurations
    class ServerGroupReplicationConfigurations
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ServerGroupReplicationConfiguration.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ServerGroupReplicationConfiguration
    class ServerGroupReplicationConfiguration
      def self.build(input)
        data = {}
        data['serverGroupId'] = input[:server_group_id] unless input[:server_group_id].nil?
        data['serverReplicationConfigurations'] = Builders::ServerReplicationConfigurations.build(input[:server_replication_configurations]) unless input[:server_replication_configurations].nil?
        data
      end
    end

    # List Builder for ServerReplicationConfigurations
    class ServerReplicationConfigurations
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ServerReplicationConfiguration.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ServerReplicationConfiguration
    class ServerReplicationConfiguration
      def self.build(input)
        data = {}
        data['server'] = Builders::Server.build(input[:server]) unless input[:server].nil?
        data['serverReplicationParameters'] = Builders::ServerReplicationParameters.build(input[:server_replication_parameters]) unless input[:server_replication_parameters].nil?
        data
      end
    end

    # Structure Builder for ServerReplicationParameters
    class ServerReplicationParameters
      def self.build(input)
        data = {}
        data['seedTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:seed_time]).to_i unless input[:seed_time].nil?
        data['frequency'] = input[:frequency] unless input[:frequency].nil?
        data['runOnce'] = input[:run_once] unless input[:run_once].nil?
        data['licenseType'] = input[:license_type] unless input[:license_type].nil?
        data['numberOfRecentAmisToKeep'] = input[:number_of_recent_amis_to_keep] unless input[:number_of_recent_amis_to_keep].nil?
        data['encrypted'] = input[:encrypted] unless input[:encrypted].nil?
        data['kmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data
      end
    end

    # Operation Builder for PutAppValidationConfiguration
    class PutAppValidationConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSServerMigrationService_V2016_10_24.PutAppValidationConfiguration'
        data = {}
        data['appId'] = input[:app_id] unless input[:app_id].nil?
        data['appValidationConfigurations'] = Builders::AppValidationConfigurations.build(input[:app_validation_configurations]) unless input[:app_validation_configurations].nil?
        data['serverGroupValidationConfigurations'] = Builders::ServerGroupValidationConfigurations.build(input[:server_group_validation_configurations]) unless input[:server_group_validation_configurations].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ServerGroupValidationConfigurations
    class ServerGroupValidationConfigurations
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ServerGroupValidationConfiguration.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ServerGroupValidationConfiguration
    class ServerGroupValidationConfiguration
      def self.build(input)
        data = {}
        data['serverGroupId'] = input[:server_group_id] unless input[:server_group_id].nil?
        data['serverValidationConfigurations'] = Builders::ServerValidationConfigurations.build(input[:server_validation_configurations]) unless input[:server_validation_configurations].nil?
        data
      end
    end

    # List Builder for ServerValidationConfigurations
    class ServerValidationConfigurations
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ServerValidationConfiguration.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ServerValidationConfiguration
    class ServerValidationConfiguration
      def self.build(input)
        data = {}
        data['server'] = Builders::Server.build(input[:server]) unless input[:server].nil?
        data['validationId'] = input[:validation_id] unless input[:validation_id].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['serverValidationStrategy'] = input[:server_validation_strategy] unless input[:server_validation_strategy].nil?
        data['userDataValidationParameters'] = Builders::UserDataValidationParameters.build(input[:user_data_validation_parameters]) unless input[:user_data_validation_parameters].nil?
        data
      end
    end

    # Structure Builder for UserDataValidationParameters
    class UserDataValidationParameters
      def self.build(input)
        data = {}
        data['source'] = Builders::Source.build(input[:source]) unless input[:source].nil?
        data['scriptType'] = input[:script_type] unless input[:script_type].nil?
        data
      end
    end

    # Structure Builder for Source
    class Source
      def self.build(input)
        data = {}
        data['s3Location'] = Builders::S3Location.build(input[:s3_location]) unless input[:s3_location].nil?
        data
      end
    end

    # List Builder for AppValidationConfigurations
    class AppValidationConfigurations
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AppValidationConfiguration.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AppValidationConfiguration
    class AppValidationConfiguration
      def self.build(input)
        data = {}
        data['validationId'] = input[:validation_id] unless input[:validation_id].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['appValidationStrategy'] = input[:app_validation_strategy] unless input[:app_validation_strategy].nil?
        data['ssmValidationParameters'] = Builders::SSMValidationParameters.build(input[:ssm_validation_parameters]) unless input[:ssm_validation_parameters].nil?
        data
      end
    end

    # Structure Builder for SSMValidationParameters
    class SSMValidationParameters
      def self.build(input)
        data = {}
        data['source'] = Builders::Source.build(input[:source]) unless input[:source].nil?
        data['instanceId'] = input[:instance_id] unless input[:instance_id].nil?
        data['scriptType'] = input[:script_type] unless input[:script_type].nil?
        data['command'] = input[:command] unless input[:command].nil?
        data['executionTimeoutSeconds'] = input[:execution_timeout_seconds] unless input[:execution_timeout_seconds].nil?
        data['outputS3BucketName'] = input[:output_s3_bucket_name] unless input[:output_s3_bucket_name].nil?
        data
      end
    end

    # Operation Builder for StartAppReplication
    class StartAppReplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSServerMigrationService_V2016_10_24.StartAppReplication'
        data = {}
        data['appId'] = input[:app_id] unless input[:app_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartOnDemandAppReplication
    class StartOnDemandAppReplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSServerMigrationService_V2016_10_24.StartOnDemandAppReplication'
        data = {}
        data['appId'] = input[:app_id] unless input[:app_id].nil?
        data['description'] = input[:description] unless input[:description].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartOnDemandReplicationRun
    class StartOnDemandReplicationRun
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSServerMigrationService_V2016_10_24.StartOnDemandReplicationRun'
        data = {}
        data['replicationJobId'] = input[:replication_job_id] unless input[:replication_job_id].nil?
        data['description'] = input[:description] unless input[:description].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopAppReplication
    class StopAppReplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSServerMigrationService_V2016_10_24.StopAppReplication'
        data = {}
        data['appId'] = input[:app_id] unless input[:app_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TerminateApp
    class TerminateApp
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSServerMigrationService_V2016_10_24.TerminateApp'
        data = {}
        data['appId'] = input[:app_id] unless input[:app_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateApp
    class UpdateApp
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSServerMigrationService_V2016_10_24.UpdateApp'
        data = {}
        data['appId'] = input[:app_id] unless input[:app_id].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['roleName'] = input[:role_name] unless input[:role_name].nil?
        data['serverGroups'] = Builders::ServerGroups.build(input[:server_groups]) unless input[:server_groups].nil?
        data['tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateReplicationJob
    class UpdateReplicationJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSServerMigrationService_V2016_10_24.UpdateReplicationJob'
        data = {}
        data['replicationJobId'] = input[:replication_job_id] unless input[:replication_job_id].nil?
        data['frequency'] = input[:frequency] unless input[:frequency].nil?
        data['nextReplicationRunStartTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:next_replication_run_start_time]).to_i unless input[:next_replication_run_start_time].nil?
        data['licenseType'] = input[:license_type] unless input[:license_type].nil?
        data['roleName'] = input[:role_name] unless input[:role_name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['numberOfRecentAmisToKeep'] = input[:number_of_recent_amis_to_keep] unless input[:number_of_recent_amis_to_keep].nil?
        data['encrypted'] = input[:encrypted] unless input[:encrypted].nil?
        data['kmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
