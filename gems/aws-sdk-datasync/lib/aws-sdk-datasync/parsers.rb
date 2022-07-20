# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::DataSync
  module Parsers

    # Operation Parser for CancelTaskExecution
    class CancelTaskExecution
      def self.parse(http_resp)
        data = Types::CancelTaskExecutionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for InternalException
    class InternalException
      def self.parse(http_resp)
        data = Types::InternalException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data.error_code = map['errorCode']
        data
      end
    end

    # Error Parser for InvalidRequestException
    class InvalidRequestException
      def self.parse(http_resp)
        data = Types::InvalidRequestException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data.error_code = map['errorCode']
        data.datasync_error_code = map['datasyncErrorCode']
        data
      end
    end

    # Operation Parser for CreateAgent
    class CreateAgent
      def self.parse(http_resp)
        data = Types::CreateAgentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.agent_arn = map['AgentArn']
        data
      end
    end

    # Operation Parser for CreateLocationEfs
    class CreateLocationEfs
      def self.parse(http_resp)
        data = Types::CreateLocationEfsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.location_arn = map['LocationArn']
        data
      end
    end

    # Operation Parser for CreateLocationFsxLustre
    class CreateLocationFsxLustre
      def self.parse(http_resp)
        data = Types::CreateLocationFsxLustreOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.location_arn = map['LocationArn']
        data
      end
    end

    # Operation Parser for CreateLocationFsxOpenZfs
    class CreateLocationFsxOpenZfs
      def self.parse(http_resp)
        data = Types::CreateLocationFsxOpenZfsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.location_arn = map['LocationArn']
        data
      end
    end

    # Operation Parser for CreateLocationFsxWindows
    class CreateLocationFsxWindows
      def self.parse(http_resp)
        data = Types::CreateLocationFsxWindowsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.location_arn = map['LocationArn']
        data
      end
    end

    # Operation Parser for CreateLocationHdfs
    class CreateLocationHdfs
      def self.parse(http_resp)
        data = Types::CreateLocationHdfsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.location_arn = map['LocationArn']
        data
      end
    end

    # Operation Parser for CreateLocationNfs
    class CreateLocationNfs
      def self.parse(http_resp)
        data = Types::CreateLocationNfsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.location_arn = map['LocationArn']
        data
      end
    end

    # Operation Parser for CreateLocationObjectStorage
    class CreateLocationObjectStorage
      def self.parse(http_resp)
        data = Types::CreateLocationObjectStorageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.location_arn = map['LocationArn']
        data
      end
    end

    # Operation Parser for CreateLocationS3
    class CreateLocationS3
      def self.parse(http_resp)
        data = Types::CreateLocationS3Output.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.location_arn = map['LocationArn']
        data
      end
    end

    # Operation Parser for CreateLocationSmb
    class CreateLocationSmb
      def self.parse(http_resp)
        data = Types::CreateLocationSmbOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.location_arn = map['LocationArn']
        data
      end
    end

    # Operation Parser for CreateTask
    class CreateTask
      def self.parse(http_resp)
        data = Types::CreateTaskOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.task_arn = map['TaskArn']
        data
      end
    end

    # Operation Parser for DeleteAgent
    class DeleteAgent
      def self.parse(http_resp)
        data = Types::DeleteAgentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteLocation
    class DeleteLocation
      def self.parse(http_resp)
        data = Types::DeleteLocationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteTask
    class DeleteTask
      def self.parse(http_resp)
        data = Types::DeleteTaskOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DescribeAgent
    class DescribeAgent
      def self.parse(http_resp)
        data = Types::DescribeAgentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.agent_arn = map['AgentArn']
        data.name = map['Name']
        data.status = map['Status']
        data.last_connection_time = Time.at(map['LastConnectionTime'].to_i) if map['LastConnectionTime']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.endpoint_type = map['EndpointType']
        data.private_link_config = (PrivateLinkConfig.parse(map['PrivateLinkConfig']) unless map['PrivateLinkConfig'].nil?)
        data
      end
    end

    class PrivateLinkConfig
      def self.parse(map)
        data = Types::PrivateLinkConfig.new
        data.vpc_endpoint_id = map['VpcEndpointId']
        data.private_link_endpoint = map['PrivateLinkEndpoint']
        data.subnet_arns = (PLSubnetArnList.parse(map['SubnetArns']) unless map['SubnetArns'].nil?)
        data.security_group_arns = (PLSecurityGroupArnList.parse(map['SecurityGroupArns']) unless map['SecurityGroupArns'].nil?)
        return data
      end
    end

    class PLSecurityGroupArnList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class PLSubnetArnList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeLocationEfs
    class DescribeLocationEfs
      def self.parse(http_resp)
        data = Types::DescribeLocationEfsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.location_arn = map['LocationArn']
        data.location_uri = map['LocationUri']
        data.ec2_config = (Ec2Config.parse(map['Ec2Config']) unless map['Ec2Config'].nil?)
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.access_point_arn = map['AccessPointArn']
        data.file_system_access_role_arn = map['FileSystemAccessRoleArn']
        data.in_transit_encryption = map['InTransitEncryption']
        data
      end
    end

    class Ec2Config
      def self.parse(map)
        data = Types::Ec2Config.new
        data.subnet_arn = map['SubnetArn']
        data.security_group_arns = (Ec2SecurityGroupArnList.parse(map['SecurityGroupArns']) unless map['SecurityGroupArns'].nil?)
        return data
      end
    end

    class Ec2SecurityGroupArnList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeLocationFsxLustre
    class DescribeLocationFsxLustre
      def self.parse(http_resp)
        data = Types::DescribeLocationFsxLustreOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.location_arn = map['LocationArn']
        data.location_uri = map['LocationUri']
        data.security_group_arns = (Ec2SecurityGroupArnList.parse(map['SecurityGroupArns']) unless map['SecurityGroupArns'].nil?)
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data
      end
    end

    # Operation Parser for DescribeLocationFsxOpenZfs
    class DescribeLocationFsxOpenZfs
      def self.parse(http_resp)
        data = Types::DescribeLocationFsxOpenZfsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.location_arn = map['LocationArn']
        data.location_uri = map['LocationUri']
        data.security_group_arns = (Ec2SecurityGroupArnList.parse(map['SecurityGroupArns']) unless map['SecurityGroupArns'].nil?)
        data.protocol = (FsxProtocol.parse(map['Protocol']) unless map['Protocol'].nil?)
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data
      end
    end

    class FsxProtocol
      def self.parse(map)
        data = Types::FsxProtocol.new
        data.nfs = (FsxProtocolNfs.parse(map['NFS']) unless map['NFS'].nil?)
        return data
      end
    end

    class FsxProtocolNfs
      def self.parse(map)
        data = Types::FsxProtocolNfs.new
        data.mount_options = (NfsMountOptions.parse(map['MountOptions']) unless map['MountOptions'].nil?)
        return data
      end
    end

    class NfsMountOptions
      def self.parse(map)
        data = Types::NfsMountOptions.new
        data.version = map['Version']
        return data
      end
    end

    # Operation Parser for DescribeLocationFsxWindows
    class DescribeLocationFsxWindows
      def self.parse(http_resp)
        data = Types::DescribeLocationFsxWindowsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.location_arn = map['LocationArn']
        data.location_uri = map['LocationUri']
        data.security_group_arns = (Ec2SecurityGroupArnList.parse(map['SecurityGroupArns']) unless map['SecurityGroupArns'].nil?)
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.user = map['User']
        data.domain = map['Domain']
        data
      end
    end

    # Operation Parser for DescribeLocationHdfs
    class DescribeLocationHdfs
      def self.parse(http_resp)
        data = Types::DescribeLocationHdfsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.location_arn = map['LocationArn']
        data.location_uri = map['LocationUri']
        data.name_nodes = (HdfsNameNodeList.parse(map['NameNodes']) unless map['NameNodes'].nil?)
        data.block_size = map['BlockSize']
        data.replication_factor = map['ReplicationFactor']
        data.kms_key_provider_uri = map['KmsKeyProviderUri']
        data.qop_configuration = (QopConfiguration.parse(map['QopConfiguration']) unless map['QopConfiguration'].nil?)
        data.authentication_type = map['AuthenticationType']
        data.simple_user = map['SimpleUser']
        data.kerberos_principal = map['KerberosPrincipal']
        data.agent_arns = (AgentArnList.parse(map['AgentArns']) unless map['AgentArns'].nil?)
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data
      end
    end

    class AgentArnList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class QopConfiguration
      def self.parse(map)
        data = Types::QopConfiguration.new
        data.rpc_protection = map['RpcProtection']
        data.data_transfer_protection = map['DataTransferProtection']
        return data
      end
    end

    class HdfsNameNodeList
      def self.parse(list)
        list.map do |value|
          HdfsNameNode.parse(value) unless value.nil?
        end
      end
    end

    class HdfsNameNode
      def self.parse(map)
        data = Types::HdfsNameNode.new
        data.hostname = map['Hostname']
        data.port = map['Port']
        return data
      end
    end

    # Operation Parser for DescribeLocationNfs
    class DescribeLocationNfs
      def self.parse(http_resp)
        data = Types::DescribeLocationNfsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.location_arn = map['LocationArn']
        data.location_uri = map['LocationUri']
        data.on_prem_config = (OnPremConfig.parse(map['OnPremConfig']) unless map['OnPremConfig'].nil?)
        data.mount_options = (NfsMountOptions.parse(map['MountOptions']) unless map['MountOptions'].nil?)
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data
      end
    end

    class OnPremConfig
      def self.parse(map)
        data = Types::OnPremConfig.new
        data.agent_arns = (AgentArnList.parse(map['AgentArns']) unless map['AgentArns'].nil?)
        return data
      end
    end

    # Operation Parser for DescribeLocationObjectStorage
    class DescribeLocationObjectStorage
      def self.parse(http_resp)
        data = Types::DescribeLocationObjectStorageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.location_arn = map['LocationArn']
        data.location_uri = map['LocationUri']
        data.access_key = map['AccessKey']
        data.server_port = map['ServerPort']
        data.server_protocol = map['ServerProtocol']
        data.agent_arns = (AgentArnList.parse(map['AgentArns']) unless map['AgentArns'].nil?)
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data
      end
    end

    # Operation Parser for DescribeLocationS3
    class DescribeLocationS3
      def self.parse(http_resp)
        data = Types::DescribeLocationS3Output.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.location_arn = map['LocationArn']
        data.location_uri = map['LocationUri']
        data.s3_storage_class = map['S3StorageClass']
        data.s3_config = (S3Config.parse(map['S3Config']) unless map['S3Config'].nil?)
        data.agent_arns = (AgentArnList.parse(map['AgentArns']) unless map['AgentArns'].nil?)
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data
      end
    end

    class S3Config
      def self.parse(map)
        data = Types::S3Config.new
        data.bucket_access_role_arn = map['BucketAccessRoleArn']
        return data
      end
    end

    # Operation Parser for DescribeLocationSmb
    class DescribeLocationSmb
      def self.parse(http_resp)
        data = Types::DescribeLocationSmbOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.location_arn = map['LocationArn']
        data.location_uri = map['LocationUri']
        data.agent_arns = (AgentArnList.parse(map['AgentArns']) unless map['AgentArns'].nil?)
        data.user = map['User']
        data.domain = map['Domain']
        data.mount_options = (SmbMountOptions.parse(map['MountOptions']) unless map['MountOptions'].nil?)
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data
      end
    end

    class SmbMountOptions
      def self.parse(map)
        data = Types::SmbMountOptions.new
        data.version = map['Version']
        return data
      end
    end

    # Operation Parser for DescribeTask
    class DescribeTask
      def self.parse(http_resp)
        data = Types::DescribeTaskOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.task_arn = map['TaskArn']
        data.status = map['Status']
        data.name = map['Name']
        data.current_task_execution_arn = map['CurrentTaskExecutionArn']
        data.source_location_arn = map['SourceLocationArn']
        data.destination_location_arn = map['DestinationLocationArn']
        data.cloud_watch_log_group_arn = map['CloudWatchLogGroupArn']
        data.source_network_interface_arns = (SourceNetworkInterfaceArns.parse(map['SourceNetworkInterfaceArns']) unless map['SourceNetworkInterfaceArns'].nil?)
        data.destination_network_interface_arns = (DestinationNetworkInterfaceArns.parse(map['DestinationNetworkInterfaceArns']) unless map['DestinationNetworkInterfaceArns'].nil?)
        data.options = (Options.parse(map['Options']) unless map['Options'].nil?)
        data.excludes = (FilterList.parse(map['Excludes']) unless map['Excludes'].nil?)
        data.schedule = (TaskSchedule.parse(map['Schedule']) unless map['Schedule'].nil?)
        data.error_code = map['ErrorCode']
        data.error_detail = map['ErrorDetail']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.includes = (FilterList.parse(map['Includes']) unless map['Includes'].nil?)
        data
      end
    end

    class FilterList
      def self.parse(list)
        list.map do |value|
          FilterRule.parse(value) unless value.nil?
        end
      end
    end

    class FilterRule
      def self.parse(map)
        data = Types::FilterRule.new
        data.filter_type = map['FilterType']
        data.value = map['Value']
        return data
      end
    end

    class TaskSchedule
      def self.parse(map)
        data = Types::TaskSchedule.new
        data.schedule_expression = map['ScheduleExpression']
        return data
      end
    end

    class Options
      def self.parse(map)
        data = Types::Options.new
        data.verify_mode = map['VerifyMode']
        data.overwrite_mode = map['OverwriteMode']
        data.atime = map['Atime']
        data.mtime = map['Mtime']
        data.uid = map['Uid']
        data.gid = map['Gid']
        data.preserve_deleted_files = map['PreserveDeletedFiles']
        data.preserve_devices = map['PreserveDevices']
        data.posix_permissions = map['PosixPermissions']
        data.bytes_per_second = map['BytesPerSecond']
        data.task_queueing = map['TaskQueueing']
        data.log_level = map['LogLevel']
        data.transfer_mode = map['TransferMode']
        data.security_descriptor_copy_flags = map['SecurityDescriptorCopyFlags']
        data.object_tags = map['ObjectTags']
        return data
      end
    end

    class DestinationNetworkInterfaceArns
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class SourceNetworkInterfaceArns
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeTaskExecution
    class DescribeTaskExecution
      def self.parse(http_resp)
        data = Types::DescribeTaskExecutionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.task_execution_arn = map['TaskExecutionArn']
        data.status = map['Status']
        data.options = (Options.parse(map['Options']) unless map['Options'].nil?)
        data.excludes = (FilterList.parse(map['Excludes']) unless map['Excludes'].nil?)
        data.includes = (FilterList.parse(map['Includes']) unless map['Includes'].nil?)
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.estimated_files_to_transfer = map['EstimatedFilesToTransfer']
        data.estimated_bytes_to_transfer = map['EstimatedBytesToTransfer']
        data.files_transferred = map['FilesTransferred']
        data.bytes_written = map['BytesWritten']
        data.bytes_transferred = map['BytesTransferred']
        data.result = (TaskExecutionResultDetail.parse(map['Result']) unless map['Result'].nil?)
        data
      end
    end

    class TaskExecutionResultDetail
      def self.parse(map)
        data = Types::TaskExecutionResultDetail.new
        data.prepare_duration = map['PrepareDuration']
        data.prepare_status = map['PrepareStatus']
        data.total_duration = map['TotalDuration']
        data.transfer_duration = map['TransferDuration']
        data.transfer_status = map['TransferStatus']
        data.verify_duration = map['VerifyDuration']
        data.verify_status = map['VerifyStatus']
        data.error_code = map['ErrorCode']
        data.error_detail = map['ErrorDetail']
        return data
      end
    end

    # Operation Parser for ListAgents
    class ListAgents
      def self.parse(http_resp)
        data = Types::ListAgentsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.agents = (AgentList.parse(map['Agents']) unless map['Agents'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class AgentList
      def self.parse(list)
        list.map do |value|
          AgentListEntry.parse(value) unless value.nil?
        end
      end
    end

    class AgentListEntry
      def self.parse(map)
        data = Types::AgentListEntry.new
        data.agent_arn = map['AgentArn']
        data.name = map['Name']
        data.status = map['Status']
        return data
      end
    end

    # Operation Parser for ListLocations
    class ListLocations
      def self.parse(http_resp)
        data = Types::ListLocationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.locations = (LocationList.parse(map['Locations']) unless map['Locations'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class LocationList
      def self.parse(list)
        list.map do |value|
          LocationListEntry.parse(value) unless value.nil?
        end
      end
    end

    class LocationListEntry
      def self.parse(map)
        data = Types::LocationListEntry.new
        data.location_arn = map['LocationArn']
        data.location_uri = map['LocationUri']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tags = (OutputTagList.parse(map['Tags']) unless map['Tags'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class OutputTagList
      def self.parse(list)
        list.map do |value|
          TagListEntry.parse(value) unless value.nil?
        end
      end
    end

    class TagListEntry
      def self.parse(map)
        data = Types::TagListEntry.new
        data.key = map['Key']
        data.value = map['Value']
        return data
      end
    end

    # Operation Parser for ListTaskExecutions
    class ListTaskExecutions
      def self.parse(http_resp)
        data = Types::ListTaskExecutionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.task_executions = (TaskExecutionList.parse(map['TaskExecutions']) unless map['TaskExecutions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class TaskExecutionList
      def self.parse(list)
        list.map do |value|
          TaskExecutionListEntry.parse(value) unless value.nil?
        end
      end
    end

    class TaskExecutionListEntry
      def self.parse(map)
        data = Types::TaskExecutionListEntry.new
        data.task_execution_arn = map['TaskExecutionArn']
        data.status = map['Status']
        return data
      end
    end

    # Operation Parser for ListTasks
    class ListTasks
      def self.parse(http_resp)
        data = Types::ListTasksOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tasks = (TaskList.parse(map['Tasks']) unless map['Tasks'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class TaskList
      def self.parse(list)
        list.map do |value|
          TaskListEntry.parse(value) unless value.nil?
        end
      end
    end

    class TaskListEntry
      def self.parse(map)
        data = Types::TaskListEntry.new
        data.task_arn = map['TaskArn']
        data.status = map['Status']
        data.name = map['Name']
        return data
      end
    end

    # Operation Parser for StartTaskExecution
    class StartTaskExecution
      def self.parse(http_resp)
        data = Types::StartTaskExecutionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.task_execution_arn = map['TaskExecutionArn']
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

    # Operation Parser for UpdateAgent
    class UpdateAgent
      def self.parse(http_resp)
        data = Types::UpdateAgentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateLocationHdfs
    class UpdateLocationHdfs
      def self.parse(http_resp)
        data = Types::UpdateLocationHdfsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateLocationNfs
    class UpdateLocationNfs
      def self.parse(http_resp)
        data = Types::UpdateLocationNfsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateLocationObjectStorage
    class UpdateLocationObjectStorage
      def self.parse(http_resp)
        data = Types::UpdateLocationObjectStorageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateLocationSmb
    class UpdateLocationSmb
      def self.parse(http_resp)
        data = Types::UpdateLocationSmbOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateTask
    class UpdateTask
      def self.parse(http_resp)
        data = Types::UpdateTaskOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateTaskExecution
    class UpdateTaskExecution
      def self.parse(http_resp)
        data = Types::UpdateTaskExecutionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end
  end
end
