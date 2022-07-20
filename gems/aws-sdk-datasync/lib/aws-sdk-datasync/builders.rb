# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'
require 'stringio'

module AWS::SDK::DataSync
  module Builders

    # Operation Builder for CancelTaskExecution
    class CancelTaskExecution
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'FmrsService.CancelTaskExecution'
        data = {}
        data['TaskExecutionArn'] = input[:task_execution_arn] unless input[:task_execution_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateAgent
    class CreateAgent
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'FmrsService.CreateAgent'
        data = {}
        data['ActivationKey'] = input[:activation_key] unless input[:activation_key].nil?
        data['AgentName'] = input[:agent_name] unless input[:agent_name].nil?
        data['Tags'] = InputTagList.build(input[:tags]) unless input[:tags].nil?
        data['VpcEndpointId'] = input[:vpc_endpoint_id] unless input[:vpc_endpoint_id].nil?
        data['SubnetArns'] = PLSubnetArnList.build(input[:subnet_arns]) unless input[:subnet_arns].nil?
        data['SecurityGroupArns'] = PLSecurityGroupArnList.build(input[:security_group_arns]) unless input[:security_group_arns].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for PLSecurityGroupArnList
    class PLSecurityGroupArnList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for PLSubnetArnList
    class PLSubnetArnList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for InputTagList
    class InputTagList
      def self.build(input)
        data = []
        input.each do |element|
          data << TagListEntry.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for TagListEntry
    class TagListEntry
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for CreateLocationEfs
    class CreateLocationEfs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'FmrsService.CreateLocationEfs'
        data = {}
        data['Subdirectory'] = input[:subdirectory] unless input[:subdirectory].nil?
        data['EfsFilesystemArn'] = input[:efs_filesystem_arn] unless input[:efs_filesystem_arn].nil?
        data['Ec2Config'] = Ec2Config.build(input[:ec2_config]) unless input[:ec2_config].nil?
        data['Tags'] = InputTagList.build(input[:tags]) unless input[:tags].nil?
        data['AccessPointArn'] = input[:access_point_arn] unless input[:access_point_arn].nil?
        data['FileSystemAccessRoleArn'] = input[:file_system_access_role_arn] unless input[:file_system_access_role_arn].nil?
        data['InTransitEncryption'] = input[:in_transit_encryption] unless input[:in_transit_encryption].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for Ec2Config
    class Ec2Config
      def self.build(input)
        data = {}
        data['SubnetArn'] = input[:subnet_arn] unless input[:subnet_arn].nil?
        data['SecurityGroupArns'] = Ec2SecurityGroupArnList.build(input[:security_group_arns]) unless input[:security_group_arns].nil?
        data
      end
    end

    # List Builder for Ec2SecurityGroupArnList
    class Ec2SecurityGroupArnList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateLocationFsxLustre
    class CreateLocationFsxLustre
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'FmrsService.CreateLocationFsxLustre'
        data = {}
        data['FsxFilesystemArn'] = input[:fsx_filesystem_arn] unless input[:fsx_filesystem_arn].nil?
        data['SecurityGroupArns'] = Ec2SecurityGroupArnList.build(input[:security_group_arns]) unless input[:security_group_arns].nil?
        data['Subdirectory'] = input[:subdirectory] unless input[:subdirectory].nil?
        data['Tags'] = InputTagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateLocationFsxOpenZfs
    class CreateLocationFsxOpenZfs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'FmrsService.CreateLocationFsxOpenZfs'
        data = {}
        data['FsxFilesystemArn'] = input[:fsx_filesystem_arn] unless input[:fsx_filesystem_arn].nil?
        data['Protocol'] = FsxProtocol.build(input[:protocol]) unless input[:protocol].nil?
        data['SecurityGroupArns'] = Ec2SecurityGroupArnList.build(input[:security_group_arns]) unless input[:security_group_arns].nil?
        data['Subdirectory'] = input[:subdirectory] unless input[:subdirectory].nil?
        data['Tags'] = InputTagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for FsxProtocol
    class FsxProtocol
      def self.build(input)
        data = {}
        data['NFS'] = FsxProtocolNfs.build(input[:nfs]) unless input[:nfs].nil?
        data
      end
    end

    # Structure Builder for FsxProtocolNfs
    class FsxProtocolNfs
      def self.build(input)
        data = {}
        data['MountOptions'] = NfsMountOptions.build(input[:mount_options]) unless input[:mount_options].nil?
        data
      end
    end

    # Structure Builder for NfsMountOptions
    class NfsMountOptions
      def self.build(input)
        data = {}
        data['Version'] = input[:version] unless input[:version].nil?
        data
      end
    end

    # Operation Builder for CreateLocationFsxWindows
    class CreateLocationFsxWindows
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'FmrsService.CreateLocationFsxWindows'
        data = {}
        data['Subdirectory'] = input[:subdirectory] unless input[:subdirectory].nil?
        data['FsxFilesystemArn'] = input[:fsx_filesystem_arn] unless input[:fsx_filesystem_arn].nil?
        data['SecurityGroupArns'] = Ec2SecurityGroupArnList.build(input[:security_group_arns]) unless input[:security_group_arns].nil?
        data['Tags'] = InputTagList.build(input[:tags]) unless input[:tags].nil?
        data['User'] = input[:user] unless input[:user].nil?
        data['Domain'] = input[:domain] unless input[:domain].nil?
        data['Password'] = input[:password] unless input[:password].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateLocationHdfs
    class CreateLocationHdfs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'FmrsService.CreateLocationHdfs'
        data = {}
        data['Subdirectory'] = input[:subdirectory] unless input[:subdirectory].nil?
        data['NameNodes'] = HdfsNameNodeList.build(input[:name_nodes]) unless input[:name_nodes].nil?
        data['BlockSize'] = input[:block_size] unless input[:block_size].nil?
        data['ReplicationFactor'] = input[:replication_factor] unless input[:replication_factor].nil?
        data['KmsKeyProviderUri'] = input[:kms_key_provider_uri] unless input[:kms_key_provider_uri].nil?
        data['QopConfiguration'] = QopConfiguration.build(input[:qop_configuration]) unless input[:qop_configuration].nil?
        data['AuthenticationType'] = input[:authentication_type] unless input[:authentication_type].nil?
        data['SimpleUser'] = input[:simple_user] unless input[:simple_user].nil?
        data['KerberosPrincipal'] = input[:kerberos_principal] unless input[:kerberos_principal].nil?
        data['KerberosKeytab'] = ::Base64::encode64(input[:kerberos_keytab]).strip unless input[:kerberos_keytab].nil?
        data['KerberosKrb5Conf'] = ::Base64::encode64(input[:kerberos_krb5_conf]).strip unless input[:kerberos_krb5_conf].nil?
        data['AgentArns'] = AgentArnList.build(input[:agent_arns]) unless input[:agent_arns].nil?
        data['Tags'] = InputTagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for AgentArnList
    class AgentArnList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for QopConfiguration
    class QopConfiguration
      def self.build(input)
        data = {}
        data['RpcProtection'] = input[:rpc_protection] unless input[:rpc_protection].nil?
        data['DataTransferProtection'] = input[:data_transfer_protection] unless input[:data_transfer_protection].nil?
        data
      end
    end

    # List Builder for HdfsNameNodeList
    class HdfsNameNodeList
      def self.build(input)
        data = []
        input.each do |element|
          data << HdfsNameNode.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for HdfsNameNode
    class HdfsNameNode
      def self.build(input)
        data = {}
        data['Hostname'] = input[:hostname] unless input[:hostname].nil?
        data['Port'] = input[:port] unless input[:port].nil?
        data
      end
    end

    # Operation Builder for CreateLocationNfs
    class CreateLocationNfs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'FmrsService.CreateLocationNfs'
        data = {}
        data['Subdirectory'] = input[:subdirectory] unless input[:subdirectory].nil?
        data['ServerHostname'] = input[:server_hostname] unless input[:server_hostname].nil?
        data['OnPremConfig'] = OnPremConfig.build(input[:on_prem_config]) unless input[:on_prem_config].nil?
        data['MountOptions'] = NfsMountOptions.build(input[:mount_options]) unless input[:mount_options].nil?
        data['Tags'] = InputTagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for OnPremConfig
    class OnPremConfig
      def self.build(input)
        data = {}
        data['AgentArns'] = AgentArnList.build(input[:agent_arns]) unless input[:agent_arns].nil?
        data
      end
    end

    # Operation Builder for CreateLocationObjectStorage
    class CreateLocationObjectStorage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'FmrsService.CreateLocationObjectStorage'
        data = {}
        data['ServerHostname'] = input[:server_hostname] unless input[:server_hostname].nil?
        data['ServerPort'] = input[:server_port] unless input[:server_port].nil?
        data['ServerProtocol'] = input[:server_protocol] unless input[:server_protocol].nil?
        data['Subdirectory'] = input[:subdirectory] unless input[:subdirectory].nil?
        data['BucketName'] = input[:bucket_name] unless input[:bucket_name].nil?
        data['AccessKey'] = input[:access_key] unless input[:access_key].nil?
        data['SecretKey'] = input[:secret_key] unless input[:secret_key].nil?
        data['AgentArns'] = AgentArnList.build(input[:agent_arns]) unless input[:agent_arns].nil?
        data['Tags'] = InputTagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateLocationS3
    class CreateLocationS3
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'FmrsService.CreateLocationS3'
        data = {}
        data['Subdirectory'] = input[:subdirectory] unless input[:subdirectory].nil?
        data['S3BucketArn'] = input[:s3_bucket_arn] unless input[:s3_bucket_arn].nil?
        data['S3StorageClass'] = input[:s3_storage_class] unless input[:s3_storage_class].nil?
        data['S3Config'] = S3Config.build(input[:s3_config]) unless input[:s3_config].nil?
        data['AgentArns'] = AgentArnList.build(input[:agent_arns]) unless input[:agent_arns].nil?
        data['Tags'] = InputTagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for S3Config
    class S3Config
      def self.build(input)
        data = {}
        data['BucketAccessRoleArn'] = input[:bucket_access_role_arn] unless input[:bucket_access_role_arn].nil?
        data
      end
    end

    # Operation Builder for CreateLocationSmb
    class CreateLocationSmb
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'FmrsService.CreateLocationSmb'
        data = {}
        data['Subdirectory'] = input[:subdirectory] unless input[:subdirectory].nil?
        data['ServerHostname'] = input[:server_hostname] unless input[:server_hostname].nil?
        data['User'] = input[:user] unless input[:user].nil?
        data['Domain'] = input[:domain] unless input[:domain].nil?
        data['Password'] = input[:password] unless input[:password].nil?
        data['AgentArns'] = AgentArnList.build(input[:agent_arns]) unless input[:agent_arns].nil?
        data['MountOptions'] = SmbMountOptions.build(input[:mount_options]) unless input[:mount_options].nil?
        data['Tags'] = InputTagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for SmbMountOptions
    class SmbMountOptions
      def self.build(input)
        data = {}
        data['Version'] = input[:version] unless input[:version].nil?
        data
      end
    end

    # Operation Builder for CreateTask
    class CreateTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'FmrsService.CreateTask'
        data = {}
        data['SourceLocationArn'] = input[:source_location_arn] unless input[:source_location_arn].nil?
        data['DestinationLocationArn'] = input[:destination_location_arn] unless input[:destination_location_arn].nil?
        data['CloudWatchLogGroupArn'] = input[:cloud_watch_log_group_arn] unless input[:cloud_watch_log_group_arn].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Options'] = Options.build(input[:options]) unless input[:options].nil?
        data['Excludes'] = FilterList.build(input[:excludes]) unless input[:excludes].nil?
        data['Schedule'] = TaskSchedule.build(input[:schedule]) unless input[:schedule].nil?
        data['Tags'] = InputTagList.build(input[:tags]) unless input[:tags].nil?
        data['Includes'] = FilterList.build(input[:includes]) unless input[:includes].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for FilterList
    class FilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << FilterRule.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for FilterRule
    class FilterRule
      def self.build(input)
        data = {}
        data['FilterType'] = input[:filter_type] unless input[:filter_type].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Structure Builder for TaskSchedule
    class TaskSchedule
      def self.build(input)
        data = {}
        data['ScheduleExpression'] = input[:schedule_expression] unless input[:schedule_expression].nil?
        data
      end
    end

    # Structure Builder for Options
    class Options
      def self.build(input)
        data = {}
        data['VerifyMode'] = input[:verify_mode] unless input[:verify_mode].nil?
        data['OverwriteMode'] = input[:overwrite_mode] unless input[:overwrite_mode].nil?
        data['Atime'] = input[:atime] unless input[:atime].nil?
        data['Mtime'] = input[:mtime] unless input[:mtime].nil?
        data['Uid'] = input[:uid] unless input[:uid].nil?
        data['Gid'] = input[:gid] unless input[:gid].nil?
        data['PreserveDeletedFiles'] = input[:preserve_deleted_files] unless input[:preserve_deleted_files].nil?
        data['PreserveDevices'] = input[:preserve_devices] unless input[:preserve_devices].nil?
        data['PosixPermissions'] = input[:posix_permissions] unless input[:posix_permissions].nil?
        data['BytesPerSecond'] = input[:bytes_per_second] unless input[:bytes_per_second].nil?
        data['TaskQueueing'] = input[:task_queueing] unless input[:task_queueing].nil?
        data['LogLevel'] = input[:log_level] unless input[:log_level].nil?
        data['TransferMode'] = input[:transfer_mode] unless input[:transfer_mode].nil?
        data['SecurityDescriptorCopyFlags'] = input[:security_descriptor_copy_flags] unless input[:security_descriptor_copy_flags].nil?
        data['ObjectTags'] = input[:object_tags] unless input[:object_tags].nil?
        data
      end
    end

    # Operation Builder for DeleteAgent
    class DeleteAgent
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'FmrsService.DeleteAgent'
        data = {}
        data['AgentArn'] = input[:agent_arn] unless input[:agent_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteLocation
    class DeleteLocation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'FmrsService.DeleteLocation'
        data = {}
        data['LocationArn'] = input[:location_arn] unless input[:location_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteTask
    class DeleteTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'FmrsService.DeleteTask'
        data = {}
        data['TaskArn'] = input[:task_arn] unless input[:task_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeAgent
    class DescribeAgent
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'FmrsService.DescribeAgent'
        data = {}
        data['AgentArn'] = input[:agent_arn] unless input[:agent_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeLocationEfs
    class DescribeLocationEfs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'FmrsService.DescribeLocationEfs'
        data = {}
        data['LocationArn'] = input[:location_arn] unless input[:location_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeLocationFsxLustre
    class DescribeLocationFsxLustre
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'FmrsService.DescribeLocationFsxLustre'
        data = {}
        data['LocationArn'] = input[:location_arn] unless input[:location_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeLocationFsxOpenZfs
    class DescribeLocationFsxOpenZfs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'FmrsService.DescribeLocationFsxOpenZfs'
        data = {}
        data['LocationArn'] = input[:location_arn] unless input[:location_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeLocationFsxWindows
    class DescribeLocationFsxWindows
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'FmrsService.DescribeLocationFsxWindows'
        data = {}
        data['LocationArn'] = input[:location_arn] unless input[:location_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeLocationHdfs
    class DescribeLocationHdfs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'FmrsService.DescribeLocationHdfs'
        data = {}
        data['LocationArn'] = input[:location_arn] unless input[:location_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeLocationNfs
    class DescribeLocationNfs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'FmrsService.DescribeLocationNfs'
        data = {}
        data['LocationArn'] = input[:location_arn] unless input[:location_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeLocationObjectStorage
    class DescribeLocationObjectStorage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'FmrsService.DescribeLocationObjectStorage'
        data = {}
        data['LocationArn'] = input[:location_arn] unless input[:location_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeLocationS3
    class DescribeLocationS3
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'FmrsService.DescribeLocationS3'
        data = {}
        data['LocationArn'] = input[:location_arn] unless input[:location_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeLocationSmb
    class DescribeLocationSmb
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'FmrsService.DescribeLocationSmb'
        data = {}
        data['LocationArn'] = input[:location_arn] unless input[:location_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeTask
    class DescribeTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'FmrsService.DescribeTask'
        data = {}
        data['TaskArn'] = input[:task_arn] unless input[:task_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeTaskExecution
    class DescribeTaskExecution
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'FmrsService.DescribeTaskExecution'
        data = {}
        data['TaskExecutionArn'] = input[:task_execution_arn] unless input[:task_execution_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListAgents
    class ListAgents
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'FmrsService.ListAgents'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListLocations
    class ListLocations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'FmrsService.ListLocations'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Filters'] = LocationFilters.build(input[:filters]) unless input[:filters].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for LocationFilters
    class LocationFilters
      def self.build(input)
        data = []
        input.each do |element|
          data << LocationFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for LocationFilter
    class LocationFilter
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Values'] = FilterValues.build(input[:values]) unless input[:values].nil?
        data['Operator'] = input[:operator] unless input[:operator].nil?
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

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'FmrsService.ListTagsForResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTaskExecutions
    class ListTaskExecutions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'FmrsService.ListTaskExecutions'
        data = {}
        data['TaskArn'] = input[:task_arn] unless input[:task_arn].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTasks
    class ListTasks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'FmrsService.ListTasks'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Filters'] = TaskFilters.build(input[:filters]) unless input[:filters].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TaskFilters
    class TaskFilters
      def self.build(input)
        data = []
        input.each do |element|
          data << TaskFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for TaskFilter
    class TaskFilter
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Values'] = FilterValues.build(input[:values]) unless input[:values].nil?
        data['Operator'] = input[:operator] unless input[:operator].nil?
        data
      end
    end

    # Operation Builder for StartTaskExecution
    class StartTaskExecution
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'FmrsService.StartTaskExecution'
        data = {}
        data['TaskArn'] = input[:task_arn] unless input[:task_arn].nil?
        data['OverrideOptions'] = Options.build(input[:override_options]) unless input[:override_options].nil?
        data['Includes'] = FilterList.build(input[:includes]) unless input[:includes].nil?
        data['Excludes'] = FilterList.build(input[:excludes]) unless input[:excludes].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'FmrsService.TagResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Tags'] = InputTagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'FmrsService.UntagResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Keys'] = TagKeyList.build(input[:keys]) unless input[:keys].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateAgent
    class UpdateAgent
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'FmrsService.UpdateAgent'
        data = {}
        data['AgentArn'] = input[:agent_arn] unless input[:agent_arn].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateLocationHdfs
    class UpdateLocationHdfs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'FmrsService.UpdateLocationHdfs'
        data = {}
        data['LocationArn'] = input[:location_arn] unless input[:location_arn].nil?
        data['Subdirectory'] = input[:subdirectory] unless input[:subdirectory].nil?
        data['NameNodes'] = HdfsNameNodeList.build(input[:name_nodes]) unless input[:name_nodes].nil?
        data['BlockSize'] = input[:block_size] unless input[:block_size].nil?
        data['ReplicationFactor'] = input[:replication_factor] unless input[:replication_factor].nil?
        data['KmsKeyProviderUri'] = input[:kms_key_provider_uri] unless input[:kms_key_provider_uri].nil?
        data['QopConfiguration'] = QopConfiguration.build(input[:qop_configuration]) unless input[:qop_configuration].nil?
        data['AuthenticationType'] = input[:authentication_type] unless input[:authentication_type].nil?
        data['SimpleUser'] = input[:simple_user] unless input[:simple_user].nil?
        data['KerberosPrincipal'] = input[:kerberos_principal] unless input[:kerberos_principal].nil?
        data['KerberosKeytab'] = ::Base64::encode64(input[:kerberos_keytab]).strip unless input[:kerberos_keytab].nil?
        data['KerberosKrb5Conf'] = ::Base64::encode64(input[:kerberos_krb5_conf]).strip unless input[:kerberos_krb5_conf].nil?
        data['AgentArns'] = AgentArnList.build(input[:agent_arns]) unless input[:agent_arns].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateLocationNfs
    class UpdateLocationNfs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'FmrsService.UpdateLocationNfs'
        data = {}
        data['LocationArn'] = input[:location_arn] unless input[:location_arn].nil?
        data['Subdirectory'] = input[:subdirectory] unless input[:subdirectory].nil?
        data['OnPremConfig'] = OnPremConfig.build(input[:on_prem_config]) unless input[:on_prem_config].nil?
        data['MountOptions'] = NfsMountOptions.build(input[:mount_options]) unless input[:mount_options].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateLocationObjectStorage
    class UpdateLocationObjectStorage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'FmrsService.UpdateLocationObjectStorage'
        data = {}
        data['LocationArn'] = input[:location_arn] unless input[:location_arn].nil?
        data['ServerPort'] = input[:server_port] unless input[:server_port].nil?
        data['ServerProtocol'] = input[:server_protocol] unless input[:server_protocol].nil?
        data['Subdirectory'] = input[:subdirectory] unless input[:subdirectory].nil?
        data['AccessKey'] = input[:access_key] unless input[:access_key].nil?
        data['SecretKey'] = input[:secret_key] unless input[:secret_key].nil?
        data['AgentArns'] = AgentArnList.build(input[:agent_arns]) unless input[:agent_arns].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateLocationSmb
    class UpdateLocationSmb
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'FmrsService.UpdateLocationSmb'
        data = {}
        data['LocationArn'] = input[:location_arn] unless input[:location_arn].nil?
        data['Subdirectory'] = input[:subdirectory] unless input[:subdirectory].nil?
        data['User'] = input[:user] unless input[:user].nil?
        data['Domain'] = input[:domain] unless input[:domain].nil?
        data['Password'] = input[:password] unless input[:password].nil?
        data['AgentArns'] = AgentArnList.build(input[:agent_arns]) unless input[:agent_arns].nil?
        data['MountOptions'] = SmbMountOptions.build(input[:mount_options]) unless input[:mount_options].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateTask
    class UpdateTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'FmrsService.UpdateTask'
        data = {}
        data['TaskArn'] = input[:task_arn] unless input[:task_arn].nil?
        data['Options'] = Options.build(input[:options]) unless input[:options].nil?
        data['Excludes'] = FilterList.build(input[:excludes]) unless input[:excludes].nil?
        data['Schedule'] = TaskSchedule.build(input[:schedule]) unless input[:schedule].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['CloudWatchLogGroupArn'] = input[:cloud_watch_log_group_arn] unless input[:cloud_watch_log_group_arn].nil?
        data['Includes'] = FilterList.build(input[:includes]) unless input[:includes].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateTaskExecution
    class UpdateTaskExecution
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'FmrsService.UpdateTaskExecution'
        data = {}
        data['TaskExecutionArn'] = input[:task_execution_arn] unless input[:task_execution_arn].nil?
        data['Options'] = Options.build(input[:options]) unless input[:options].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
