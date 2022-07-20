# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SMS
  module Parsers

    # Operation Parser for CreateApp
    class CreateApp
      def self.parse(http_resp)
        data = Types::CreateAppOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.app_summary = (AppSummary.parse(map['appSummary']) unless map['appSummary'].nil?)
        data.server_groups = (ServerGroups.parse(map['serverGroups']) unless map['serverGroups'].nil?)
        data.tags = (Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    class Tags
      def self.parse(list)
        list.map do |value|
          Tag.parse(value) unless value.nil?
        end
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['key']
        data.value = map['value']
        return data
      end
    end

    class ServerGroups
      def self.parse(list)
        list.map do |value|
          ServerGroup.parse(value) unless value.nil?
        end
      end
    end

    class ServerGroup
      def self.parse(map)
        data = Types::ServerGroup.new
        data.server_group_id = map['serverGroupId']
        data.name = map['name']
        data.server_list = (ServerList.parse(map['serverList']) unless map['serverList'].nil?)
        return data
      end
    end

    class ServerList
      def self.parse(list)
        list.map do |value|
          Server.parse(value) unless value.nil?
        end
      end
    end

    class Server
      def self.parse(map)
        data = Types::Server.new
        data.server_id = map['serverId']
        data.server_type = map['serverType']
        data.vm_server = (VmServer.parse(map['vmServer']) unless map['vmServer'].nil?)
        data.replication_job_id = map['replicationJobId']
        data.replication_job_terminated = map['replicationJobTerminated']
        return data
      end
    end

    class VmServer
      def self.parse(map)
        data = Types::VmServer.new
        data.vm_server_address = (VmServerAddress.parse(map['vmServerAddress']) unless map['vmServerAddress'].nil?)
        data.vm_name = map['vmName']
        data.vm_manager_name = map['vmManagerName']
        data.vm_manager_type = map['vmManagerType']
        data.vm_path = map['vmPath']
        return data
      end
    end

    class VmServerAddress
      def self.parse(map)
        data = Types::VmServerAddress.new
        data.vm_manager_id = map['vmManagerId']
        data.vm_id = map['vmId']
        return data
      end
    end

    class AppSummary
      def self.parse(map)
        data = Types::AppSummary.new
        data.app_id = map['appId']
        data.imported_app_id = map['importedAppId']
        data.name = map['name']
        data.description = map['description']
        data.status = map['status']
        data.status_message = map['statusMessage']
        data.replication_configuration_status = map['replicationConfigurationStatus']
        data.replication_status = map['replicationStatus']
        data.replication_status_message = map['replicationStatusMessage']
        data.latest_replication_time = Time.at(map['latestReplicationTime'].to_i) if map['latestReplicationTime']
        data.launch_configuration_status = map['launchConfigurationStatus']
        data.launch_status = map['launchStatus']
        data.launch_status_message = map['launchStatusMessage']
        data.launch_details = (LaunchDetails.parse(map['launchDetails']) unless map['launchDetails'].nil?)
        data.creation_time = Time.at(map['creationTime'].to_i) if map['creationTime']
        data.last_modified = Time.at(map['lastModified'].to_i) if map['lastModified']
        data.role_name = map['roleName']
        data.total_server_groups = map['totalServerGroups']
        data.total_servers = map['totalServers']
        return data
      end
    end

    class LaunchDetails
      def self.parse(map)
        data = Types::LaunchDetails.new
        data.latest_launch_time = Time.at(map['latestLaunchTime'].to_i) if map['latestLaunchTime']
        data.stack_name = map['stackName']
        data.stack_id = map['stackId']
        return data
      end
    end

    # Error Parser for OperationNotPermittedException
    class OperationNotPermittedException
      def self.parse(http_resp)
        data = Types::OperationNotPermittedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidParameterException
    class InvalidParameterException
      def self.parse(http_resp)
        data = Types::InvalidParameterException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for UnauthorizedOperationException
    class UnauthorizedOperationException
      def self.parse(http_resp)
        data = Types::UnauthorizedOperationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InternalError
    class InternalError
      def self.parse(http_resp)
        data = Types::InternalError.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for MissingRequiredParameterException
    class MissingRequiredParameterException
      def self.parse(http_resp)
        data = Types::MissingRequiredParameterException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreateReplicationJob
    class CreateReplicationJob
      def self.parse(http_resp)
        data = Types::CreateReplicationJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.replication_job_id = map['replicationJobId']
        data
      end
    end

    # Error Parser for ReplicationJobAlreadyExistsException
    class ReplicationJobAlreadyExistsException
      def self.parse(http_resp)
        data = Types::ReplicationJobAlreadyExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for NoConnectorsAvailableException
    class NoConnectorsAvailableException
      def self.parse(http_resp)
        data = Types::NoConnectorsAvailableException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for TemporarilyUnavailableException
    class TemporarilyUnavailableException
      def self.parse(http_resp)
        data = Types::TemporarilyUnavailableException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for ServerCannotBeReplicatedException
    class ServerCannotBeReplicatedException
      def self.parse(http_resp)
        data = Types::ServerCannotBeReplicatedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DeleteApp
    class DeleteApp
      def self.parse(http_resp)
        data = Types::DeleteAppOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteAppLaunchConfiguration
    class DeleteAppLaunchConfiguration
      def self.parse(http_resp)
        data = Types::DeleteAppLaunchConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteAppReplicationConfiguration
    class DeleteAppReplicationConfiguration
      def self.parse(http_resp)
        data = Types::DeleteAppReplicationConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteAppValidationConfiguration
    class DeleteAppValidationConfiguration
      def self.parse(http_resp)
        data = Types::DeleteAppValidationConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteReplicationJob
    class DeleteReplicationJob
      def self.parse(http_resp)
        data = Types::DeleteReplicationJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for ReplicationJobNotFoundException
    class ReplicationJobNotFoundException
      def self.parse(http_resp)
        data = Types::ReplicationJobNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DeleteServerCatalog
    class DeleteServerCatalog
      def self.parse(http_resp)
        data = Types::DeleteServerCatalogOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DisassociateConnector
    class DisassociateConnector
      def self.parse(http_resp)
        data = Types::DisassociateConnectorOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for GenerateChangeSet
    class GenerateChangeSet
      def self.parse(http_resp)
        data = Types::GenerateChangeSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.s3_location = (S3Location.parse(map['s3Location']) unless map['s3Location'].nil?)
        data
      end
    end

    class S3Location
      def self.parse(map)
        data = Types::S3Location.new
        data.bucket = map['bucket']
        data.key = map['key']
        return data
      end
    end

    # Operation Parser for GenerateTemplate
    class GenerateTemplate
      def self.parse(http_resp)
        data = Types::GenerateTemplateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.s3_location = (S3Location.parse(map['s3Location']) unless map['s3Location'].nil?)
        data
      end
    end

    # Operation Parser for GetApp
    class GetApp
      def self.parse(http_resp)
        data = Types::GetAppOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.app_summary = (AppSummary.parse(map['appSummary']) unless map['appSummary'].nil?)
        data.server_groups = (ServerGroups.parse(map['serverGroups']) unless map['serverGroups'].nil?)
        data.tags = (Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for GetAppLaunchConfiguration
    class GetAppLaunchConfiguration
      def self.parse(http_resp)
        data = Types::GetAppLaunchConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.app_id = map['appId']
        data.role_name = map['roleName']
        data.auto_launch = map['autoLaunch']
        data.server_group_launch_configurations = (ServerGroupLaunchConfigurations.parse(map['serverGroupLaunchConfigurations']) unless map['serverGroupLaunchConfigurations'].nil?)
        data
      end
    end

    class ServerGroupLaunchConfigurations
      def self.parse(list)
        list.map do |value|
          ServerGroupLaunchConfiguration.parse(value) unless value.nil?
        end
      end
    end

    class ServerGroupLaunchConfiguration
      def self.parse(map)
        data = Types::ServerGroupLaunchConfiguration.new
        data.server_group_id = map['serverGroupId']
        data.launch_order = map['launchOrder']
        data.server_launch_configurations = (ServerLaunchConfigurations.parse(map['serverLaunchConfigurations']) unless map['serverLaunchConfigurations'].nil?)
        return data
      end
    end

    class ServerLaunchConfigurations
      def self.parse(list)
        list.map do |value|
          ServerLaunchConfiguration.parse(value) unless value.nil?
        end
      end
    end

    class ServerLaunchConfiguration
      def self.parse(map)
        data = Types::ServerLaunchConfiguration.new
        data.server = (Server.parse(map['server']) unless map['server'].nil?)
        data.logical_id = map['logicalId']
        data.vpc = map['vpc']
        data.subnet = map['subnet']
        data.security_group = map['securityGroup']
        data.ec2_key_name = map['ec2KeyName']
        data.user_data = (UserData.parse(map['userData']) unless map['userData'].nil?)
        data.instance_type = map['instanceType']
        data.associate_public_ip_address = map['associatePublicIpAddress']
        data.iam_instance_profile_name = map['iamInstanceProfileName']
        data.configure_script = (S3Location.parse(map['configureScript']) unless map['configureScript'].nil?)
        data.configure_script_type = map['configureScriptType']
        return data
      end
    end

    class UserData
      def self.parse(map)
        data = Types::UserData.new
        data.s3_location = (S3Location.parse(map['s3Location']) unless map['s3Location'].nil?)
        return data
      end
    end

    # Operation Parser for GetAppReplicationConfiguration
    class GetAppReplicationConfiguration
      def self.parse(http_resp)
        data = Types::GetAppReplicationConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.server_group_replication_configurations = (ServerGroupReplicationConfigurations.parse(map['serverGroupReplicationConfigurations']) unless map['serverGroupReplicationConfigurations'].nil?)
        data
      end
    end

    class ServerGroupReplicationConfigurations
      def self.parse(list)
        list.map do |value|
          ServerGroupReplicationConfiguration.parse(value) unless value.nil?
        end
      end
    end

    class ServerGroupReplicationConfiguration
      def self.parse(map)
        data = Types::ServerGroupReplicationConfiguration.new
        data.server_group_id = map['serverGroupId']
        data.server_replication_configurations = (ServerReplicationConfigurations.parse(map['serverReplicationConfigurations']) unless map['serverReplicationConfigurations'].nil?)
        return data
      end
    end

    class ServerReplicationConfigurations
      def self.parse(list)
        list.map do |value|
          ServerReplicationConfiguration.parse(value) unless value.nil?
        end
      end
    end

    class ServerReplicationConfiguration
      def self.parse(map)
        data = Types::ServerReplicationConfiguration.new
        data.server = (Server.parse(map['server']) unless map['server'].nil?)
        data.server_replication_parameters = (ServerReplicationParameters.parse(map['serverReplicationParameters']) unless map['serverReplicationParameters'].nil?)
        return data
      end
    end

    class ServerReplicationParameters
      def self.parse(map)
        data = Types::ServerReplicationParameters.new
        data.seed_time = Time.at(map['seedTime'].to_i) if map['seedTime']
        data.frequency = map['frequency']
        data.run_once = map['runOnce']
        data.license_type = map['licenseType']
        data.number_of_recent_amis_to_keep = map['numberOfRecentAmisToKeep']
        data.encrypted = map['encrypted']
        data.kms_key_id = map['kmsKeyId']
        return data
      end
    end

    # Operation Parser for GetAppValidationConfiguration
    class GetAppValidationConfiguration
      def self.parse(http_resp)
        data = Types::GetAppValidationConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.app_validation_configurations = (AppValidationConfigurations.parse(map['appValidationConfigurations']) unless map['appValidationConfigurations'].nil?)
        data.server_group_validation_configurations = (ServerGroupValidationConfigurations.parse(map['serverGroupValidationConfigurations']) unless map['serverGroupValidationConfigurations'].nil?)
        data
      end
    end

    class ServerGroupValidationConfigurations
      def self.parse(list)
        list.map do |value|
          ServerGroupValidationConfiguration.parse(value) unless value.nil?
        end
      end
    end

    class ServerGroupValidationConfiguration
      def self.parse(map)
        data = Types::ServerGroupValidationConfiguration.new
        data.server_group_id = map['serverGroupId']
        data.server_validation_configurations = (ServerValidationConfigurations.parse(map['serverValidationConfigurations']) unless map['serverValidationConfigurations'].nil?)
        return data
      end
    end

    class ServerValidationConfigurations
      def self.parse(list)
        list.map do |value|
          ServerValidationConfiguration.parse(value) unless value.nil?
        end
      end
    end

    class ServerValidationConfiguration
      def self.parse(map)
        data = Types::ServerValidationConfiguration.new
        data.server = (Server.parse(map['server']) unless map['server'].nil?)
        data.validation_id = map['validationId']
        data.name = map['name']
        data.server_validation_strategy = map['serverValidationStrategy']
        data.user_data_validation_parameters = (UserDataValidationParameters.parse(map['userDataValidationParameters']) unless map['userDataValidationParameters'].nil?)
        return data
      end
    end

    class UserDataValidationParameters
      def self.parse(map)
        data = Types::UserDataValidationParameters.new
        data.source = (Source.parse(map['source']) unless map['source'].nil?)
        data.script_type = map['scriptType']
        return data
      end
    end

    class Source
      def self.parse(map)
        data = Types::Source.new
        data.s3_location = (S3Location.parse(map['s3Location']) unless map['s3Location'].nil?)
        return data
      end
    end

    class AppValidationConfigurations
      def self.parse(list)
        list.map do |value|
          AppValidationConfiguration.parse(value) unless value.nil?
        end
      end
    end

    class AppValidationConfiguration
      def self.parse(map)
        data = Types::AppValidationConfiguration.new
        data.validation_id = map['validationId']
        data.name = map['name']
        data.app_validation_strategy = map['appValidationStrategy']
        data.ssm_validation_parameters = (SSMValidationParameters.parse(map['ssmValidationParameters']) unless map['ssmValidationParameters'].nil?)
        return data
      end
    end

    class SSMValidationParameters
      def self.parse(map)
        data = Types::SSMValidationParameters.new
        data.source = (Source.parse(map['source']) unless map['source'].nil?)
        data.instance_id = map['instanceId']
        data.script_type = map['scriptType']
        data.command = map['command']
        data.execution_timeout_seconds = map['executionTimeoutSeconds']
        data.output_s3_bucket_name = map['outputS3BucketName']
        return data
      end
    end

    # Operation Parser for GetAppValidationOutput
    class GetAppValidationOutput
      def self.parse(http_resp)
        data = Types::GetAppValidationOutputOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.validation_output_list = (ValidationOutputList.parse(map['validationOutputList']) unless map['validationOutputList'].nil?)
        data
      end
    end

    class ValidationOutputList
      def self.parse(list)
        list.map do |value|
          ValidationOutput.parse(value) unless value.nil?
        end
      end
    end

    class ValidationOutput
      def self.parse(map)
        data = Types::ValidationOutput.new
        data.validation_id = map['validationId']
        data.name = map['name']
        data.status = map['status']
        data.status_message = map['statusMessage']
        data.latest_validation_time = Time.at(map['latestValidationTime'].to_i) if map['latestValidationTime']
        data.app_validation_output = (AppValidationOutput.parse(map['appValidationOutput']) unless map['appValidationOutput'].nil?)
        data.server_validation_output = (ServerValidationOutput.parse(map['serverValidationOutput']) unless map['serverValidationOutput'].nil?)
        return data
      end
    end

    class ServerValidationOutput
      def self.parse(map)
        data = Types::ServerValidationOutput.new
        data.server = (Server.parse(map['server']) unless map['server'].nil?)
        return data
      end
    end

    class AppValidationOutput
      def self.parse(map)
        data = Types::AppValidationOutput.new
        data.ssm_output = (SSMOutput.parse(map['ssmOutput']) unless map['ssmOutput'].nil?)
        return data
      end
    end

    class SSMOutput
      def self.parse(map)
        data = Types::SSMOutput.new
        data.s3_location = (S3Location.parse(map['s3Location']) unless map['s3Location'].nil?)
        return data
      end
    end

    # Operation Parser for GetConnectors
    class GetConnectors
      def self.parse(http_resp)
        data = Types::GetConnectorsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.connector_list = (ConnectorList.parse(map['connectorList']) unless map['connectorList'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ConnectorList
      def self.parse(list)
        list.map do |value|
          Connector.parse(value) unless value.nil?
        end
      end
    end

    class Connector
      def self.parse(map)
        data = Types::Connector.new
        data.connector_id = map['connectorId']
        data.version = map['version']
        data.status = map['status']
        data.capability_list = (ConnectorCapabilityList.parse(map['capabilityList']) unless map['capabilityList'].nil?)
        data.vm_manager_name = map['vmManagerName']
        data.vm_manager_type = map['vmManagerType']
        data.vm_manager_id = map['vmManagerId']
        data.ip_address = map['ipAddress']
        data.mac_address = map['macAddress']
        data.associated_on = Time.at(map['associatedOn'].to_i) if map['associatedOn']
        return data
      end
    end

    class ConnectorCapabilityList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for GetReplicationJobs
    class GetReplicationJobs
      def self.parse(http_resp)
        data = Types::GetReplicationJobsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.replication_job_list = (ReplicationJobList.parse(map['replicationJobList']) unless map['replicationJobList'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ReplicationJobList
      def self.parse(list)
        list.map do |value|
          ReplicationJob.parse(value) unless value.nil?
        end
      end
    end

    class ReplicationJob
      def self.parse(map)
        data = Types::ReplicationJob.new
        data.replication_job_id = map['replicationJobId']
        data.server_id = map['serverId']
        data.server_type = map['serverType']
        data.vm_server = (VmServer.parse(map['vmServer']) unless map['vmServer'].nil?)
        data.seed_replication_time = Time.at(map['seedReplicationTime'].to_i) if map['seedReplicationTime']
        data.frequency = map['frequency']
        data.run_once = map['runOnce']
        data.next_replication_run_start_time = Time.at(map['nextReplicationRunStartTime'].to_i) if map['nextReplicationRunStartTime']
        data.license_type = map['licenseType']
        data.role_name = map['roleName']
        data.latest_ami_id = map['latestAmiId']
        data.state = map['state']
        data.status_message = map['statusMessage']
        data.description = map['description']
        data.number_of_recent_amis_to_keep = map['numberOfRecentAmisToKeep']
        data.encrypted = map['encrypted']
        data.kms_key_id = map['kmsKeyId']
        data.replication_run_list = (ReplicationRunList.parse(map['replicationRunList']) unless map['replicationRunList'].nil?)
        return data
      end
    end

    class ReplicationRunList
      def self.parse(list)
        list.map do |value|
          ReplicationRun.parse(value) unless value.nil?
        end
      end
    end

    class ReplicationRun
      def self.parse(map)
        data = Types::ReplicationRun.new
        data.replication_run_id = map['replicationRunId']
        data.state = map['state']
        data.type = map['type']
        data.stage_details = (ReplicationRunStageDetails.parse(map['stageDetails']) unless map['stageDetails'].nil?)
        data.status_message = map['statusMessage']
        data.ami_id = map['amiId']
        data.scheduled_start_time = Time.at(map['scheduledStartTime'].to_i) if map['scheduledStartTime']
        data.completed_time = Time.at(map['completedTime'].to_i) if map['completedTime']
        data.description = map['description']
        data.encrypted = map['encrypted']
        data.kms_key_id = map['kmsKeyId']
        return data
      end
    end

    class ReplicationRunStageDetails
      def self.parse(map)
        data = Types::ReplicationRunStageDetails.new
        data.stage = map['stage']
        data.stage_progress = map['stageProgress']
        return data
      end
    end

    # Operation Parser for GetReplicationRuns
    class GetReplicationRuns
      def self.parse(http_resp)
        data = Types::GetReplicationRunsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.replication_job = (ReplicationJob.parse(map['replicationJob']) unless map['replicationJob'].nil?)
        data.replication_run_list = (ReplicationRunList.parse(map['replicationRunList']) unless map['replicationRunList'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for GetServers
    class GetServers
      def self.parse(http_resp)
        data = Types::GetServersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.last_modified_on = Time.at(map['lastModifiedOn'].to_i) if map['lastModifiedOn']
        data.server_catalog_status = map['serverCatalogStatus']
        data.server_list = (ServerList.parse(map['serverList']) unless map['serverList'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for ImportAppCatalog
    class ImportAppCatalog
      def self.parse(http_resp)
        data = Types::ImportAppCatalogOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for ImportServerCatalog
    class ImportServerCatalog
      def self.parse(http_resp)
        data = Types::ImportServerCatalogOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for LaunchApp
    class LaunchApp
      def self.parse(http_resp)
        data = Types::LaunchAppOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for ListApps
    class ListApps
      def self.parse(http_resp)
        data = Types::ListAppsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.apps = (Apps.parse(map['apps']) unless map['apps'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class Apps
      def self.parse(list)
        list.map do |value|
          AppSummary.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for NotifyAppValidationOutput
    class NotifyAppValidationOutput
      def self.parse(http_resp)
        data = Types::NotifyAppValidationOutputOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for PutAppLaunchConfiguration
    class PutAppLaunchConfiguration
      def self.parse(http_resp)
        data = Types::PutAppLaunchConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for PutAppReplicationConfiguration
    class PutAppReplicationConfiguration
      def self.parse(http_resp)
        data = Types::PutAppReplicationConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for PutAppValidationConfiguration
    class PutAppValidationConfiguration
      def self.parse(http_resp)
        data = Types::PutAppValidationConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for StartAppReplication
    class StartAppReplication
      def self.parse(http_resp)
        data = Types::StartAppReplicationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for StartOnDemandAppReplication
    class StartOnDemandAppReplication
      def self.parse(http_resp)
        data = Types::StartOnDemandAppReplicationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for StartOnDemandReplicationRun
    class StartOnDemandReplicationRun
      def self.parse(http_resp)
        data = Types::StartOnDemandReplicationRunOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.replication_run_id = map['replicationRunId']
        data
      end
    end

    # Error Parser for ReplicationRunLimitExceededException
    class ReplicationRunLimitExceededException
      def self.parse(http_resp)
        data = Types::ReplicationRunLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for DryRunOperationException
    class DryRunOperationException
      def self.parse(http_resp)
        data = Types::DryRunOperationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for StopAppReplication
    class StopAppReplication
      def self.parse(http_resp)
        data = Types::StopAppReplicationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for TerminateApp
    class TerminateApp
      def self.parse(http_resp)
        data = Types::TerminateAppOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateApp
    class UpdateApp
      def self.parse(http_resp)
        data = Types::UpdateAppOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.app_summary = (AppSummary.parse(map['appSummary']) unless map['appSummary'].nil?)
        data.server_groups = (ServerGroups.parse(map['serverGroups']) unless map['serverGroups'].nil?)
        data.tags = (Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for UpdateReplicationJob
    class UpdateReplicationJob
      def self.parse(http_resp)
        data = Types::UpdateReplicationJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end
  end
end
