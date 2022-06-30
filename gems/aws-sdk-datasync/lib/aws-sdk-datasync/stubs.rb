# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::DataSync
  module Stubs

    # Operation Stubber for CancelTaskExecution
    class CancelTaskExecution
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

    # Operation Stubber for CreateAgent
    class CreateAgent
      def self.default(visited=[])
        {
          agent_arn: 'agent_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AgentArn'] = stub[:agent_arn] unless stub[:agent_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateLocationEfs
    class CreateLocationEfs
      def self.default(visited=[])
        {
          location_arn: 'location_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LocationArn'] = stub[:location_arn] unless stub[:location_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateLocationFsxLustre
    class CreateLocationFsxLustre
      def self.default(visited=[])
        {
          location_arn: 'location_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LocationArn'] = stub[:location_arn] unless stub[:location_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateLocationFsxOpenZfs
    class CreateLocationFsxOpenZfs
      def self.default(visited=[])
        {
          location_arn: 'location_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LocationArn'] = stub[:location_arn] unless stub[:location_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateLocationFsxWindows
    class CreateLocationFsxWindows
      def self.default(visited=[])
        {
          location_arn: 'location_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LocationArn'] = stub[:location_arn] unless stub[:location_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateLocationHdfs
    class CreateLocationHdfs
      def self.default(visited=[])
        {
          location_arn: 'location_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LocationArn'] = stub[:location_arn] unless stub[:location_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateLocationNfs
    class CreateLocationNfs
      def self.default(visited=[])
        {
          location_arn: 'location_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LocationArn'] = stub[:location_arn] unless stub[:location_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateLocationObjectStorage
    class CreateLocationObjectStorage
      def self.default(visited=[])
        {
          location_arn: 'location_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LocationArn'] = stub[:location_arn] unless stub[:location_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateLocationS3
    class CreateLocationS3
      def self.default(visited=[])
        {
          location_arn: 'location_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LocationArn'] = stub[:location_arn] unless stub[:location_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateLocationSmb
    class CreateLocationSmb
      def self.default(visited=[])
        {
          location_arn: 'location_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LocationArn'] = stub[:location_arn] unless stub[:location_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateTask
    class CreateTask
      def self.default(visited=[])
        {
          task_arn: 'task_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TaskArn'] = stub[:task_arn] unless stub[:task_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteAgent
    class DeleteAgent
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

    # Operation Stubber for DeleteLocation
    class DeleteLocation
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

    # Operation Stubber for DeleteTask
    class DeleteTask
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

    # Operation Stubber for DescribeAgent
    class DescribeAgent
      def self.default(visited=[])
        {
          agent_arn: 'agent_arn',
          name: 'name',
          status: 'status',
          last_connection_time: Time.now,
          creation_time: Time.now,
          endpoint_type: 'endpoint_type',
          private_link_config: Stubs::PrivateLinkConfig.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AgentArn'] = stub[:agent_arn] unless stub[:agent_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['LastConnectionTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_connection_time]).to_i unless stub[:last_connection_time].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['EndpointType'] = stub[:endpoint_type] unless stub[:endpoint_type].nil?
        data['PrivateLinkConfig'] = Stubs::PrivateLinkConfig.stub(stub[:private_link_config]) unless stub[:private_link_config].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for PrivateLinkConfig
    class PrivateLinkConfig
      def self.default(visited=[])
        return nil if visited.include?('PrivateLinkConfig')
        visited = visited + ['PrivateLinkConfig']
        {
          vpc_endpoint_id: 'vpc_endpoint_id',
          private_link_endpoint: 'private_link_endpoint',
          subnet_arns: Stubs::PLSubnetArnList.default(visited),
          security_group_arns: Stubs::PLSecurityGroupArnList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PrivateLinkConfig.new
        data = {}
        data['VpcEndpointId'] = stub[:vpc_endpoint_id] unless stub[:vpc_endpoint_id].nil?
        data['PrivateLinkEndpoint'] = stub[:private_link_endpoint] unless stub[:private_link_endpoint].nil?
        data['SubnetArns'] = Stubs::PLSubnetArnList.stub(stub[:subnet_arns]) unless stub[:subnet_arns].nil?
        data['SecurityGroupArns'] = Stubs::PLSecurityGroupArnList.stub(stub[:security_group_arns]) unless stub[:security_group_arns].nil?
        data
      end
    end

    # List Stubber for PLSecurityGroupArnList
    class PLSecurityGroupArnList
      def self.default(visited=[])
        return nil if visited.include?('PLSecurityGroupArnList')
        visited = visited + ['PLSecurityGroupArnList']
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

    # List Stubber for PLSubnetArnList
    class PLSubnetArnList
      def self.default(visited=[])
        return nil if visited.include?('PLSubnetArnList')
        visited = visited + ['PLSubnetArnList']
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

    # Operation Stubber for DescribeLocationEfs
    class DescribeLocationEfs
      def self.default(visited=[])
        {
          location_arn: 'location_arn',
          location_uri: 'location_uri',
          ec2_config: Stubs::Ec2Config.default(visited),
          creation_time: Time.now,
          access_point_arn: 'access_point_arn',
          file_system_access_role_arn: 'file_system_access_role_arn',
          in_transit_encryption: 'in_transit_encryption',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LocationArn'] = stub[:location_arn] unless stub[:location_arn].nil?
        data['LocationUri'] = stub[:location_uri] unless stub[:location_uri].nil?
        data['Ec2Config'] = Stubs::Ec2Config.stub(stub[:ec2_config]) unless stub[:ec2_config].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['AccessPointArn'] = stub[:access_point_arn] unless stub[:access_point_arn].nil?
        data['FileSystemAccessRoleArn'] = stub[:file_system_access_role_arn] unless stub[:file_system_access_role_arn].nil?
        data['InTransitEncryption'] = stub[:in_transit_encryption] unless stub[:in_transit_encryption].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Ec2Config
    class Ec2Config
      def self.default(visited=[])
        return nil if visited.include?('Ec2Config')
        visited = visited + ['Ec2Config']
        {
          subnet_arn: 'subnet_arn',
          security_group_arns: Stubs::Ec2SecurityGroupArnList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Ec2Config.new
        data = {}
        data['SubnetArn'] = stub[:subnet_arn] unless stub[:subnet_arn].nil?
        data['SecurityGroupArns'] = Stubs::Ec2SecurityGroupArnList.stub(stub[:security_group_arns]) unless stub[:security_group_arns].nil?
        data
      end
    end

    # List Stubber for Ec2SecurityGroupArnList
    class Ec2SecurityGroupArnList
      def self.default(visited=[])
        return nil if visited.include?('Ec2SecurityGroupArnList')
        visited = visited + ['Ec2SecurityGroupArnList']
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

    # Operation Stubber for DescribeLocationFsxLustre
    class DescribeLocationFsxLustre
      def self.default(visited=[])
        {
          location_arn: 'location_arn',
          location_uri: 'location_uri',
          security_group_arns: Stubs::Ec2SecurityGroupArnList.default(visited),
          creation_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LocationArn'] = stub[:location_arn] unless stub[:location_arn].nil?
        data['LocationUri'] = stub[:location_uri] unless stub[:location_uri].nil?
        data['SecurityGroupArns'] = Stubs::Ec2SecurityGroupArnList.stub(stub[:security_group_arns]) unless stub[:security_group_arns].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeLocationFsxOpenZfs
    class DescribeLocationFsxOpenZfs
      def self.default(visited=[])
        {
          location_arn: 'location_arn',
          location_uri: 'location_uri',
          security_group_arns: Stubs::Ec2SecurityGroupArnList.default(visited),
          protocol: Stubs::FsxProtocol.default(visited),
          creation_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LocationArn'] = stub[:location_arn] unless stub[:location_arn].nil?
        data['LocationUri'] = stub[:location_uri] unless stub[:location_uri].nil?
        data['SecurityGroupArns'] = Stubs::Ec2SecurityGroupArnList.stub(stub[:security_group_arns]) unless stub[:security_group_arns].nil?
        data['Protocol'] = Stubs::FsxProtocol.stub(stub[:protocol]) unless stub[:protocol].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for FsxProtocol
    class FsxProtocol
      def self.default(visited=[])
        return nil if visited.include?('FsxProtocol')
        visited = visited + ['FsxProtocol']
        {
          nfs: Stubs::FsxProtocolNfs.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FsxProtocol.new
        data = {}
        data['NFS'] = Stubs::FsxProtocolNfs.stub(stub[:nfs]) unless stub[:nfs].nil?
        data
      end
    end

    # Structure Stubber for FsxProtocolNfs
    class FsxProtocolNfs
      def self.default(visited=[])
        return nil if visited.include?('FsxProtocolNfs')
        visited = visited + ['FsxProtocolNfs']
        {
          mount_options: Stubs::NfsMountOptions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FsxProtocolNfs.new
        data = {}
        data['MountOptions'] = Stubs::NfsMountOptions.stub(stub[:mount_options]) unless stub[:mount_options].nil?
        data
      end
    end

    # Structure Stubber for NfsMountOptions
    class NfsMountOptions
      def self.default(visited=[])
        return nil if visited.include?('NfsMountOptions')
        visited = visited + ['NfsMountOptions']
        {
          version: 'version',
        }
      end

      def self.stub(stub)
        stub ||= Types::NfsMountOptions.new
        data = {}
        data['Version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # Operation Stubber for DescribeLocationFsxWindows
    class DescribeLocationFsxWindows
      def self.default(visited=[])
        {
          location_arn: 'location_arn',
          location_uri: 'location_uri',
          security_group_arns: Stubs::Ec2SecurityGroupArnList.default(visited),
          creation_time: Time.now,
          user: 'user',
          domain: 'domain',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LocationArn'] = stub[:location_arn] unless stub[:location_arn].nil?
        data['LocationUri'] = stub[:location_uri] unless stub[:location_uri].nil?
        data['SecurityGroupArns'] = Stubs::Ec2SecurityGroupArnList.stub(stub[:security_group_arns]) unless stub[:security_group_arns].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['User'] = stub[:user] unless stub[:user].nil?
        data['Domain'] = stub[:domain] unless stub[:domain].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeLocationHdfs
    class DescribeLocationHdfs
      def self.default(visited=[])
        {
          location_arn: 'location_arn',
          location_uri: 'location_uri',
          name_nodes: Stubs::HdfsNameNodeList.default(visited),
          block_size: 1,
          replication_factor: 1,
          kms_key_provider_uri: 'kms_key_provider_uri',
          qop_configuration: Stubs::QopConfiguration.default(visited),
          authentication_type: 'authentication_type',
          simple_user: 'simple_user',
          kerberos_principal: 'kerberos_principal',
          agent_arns: Stubs::AgentArnList.default(visited),
          creation_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LocationArn'] = stub[:location_arn] unless stub[:location_arn].nil?
        data['LocationUri'] = stub[:location_uri] unless stub[:location_uri].nil?
        data['NameNodes'] = Stubs::HdfsNameNodeList.stub(stub[:name_nodes]) unless stub[:name_nodes].nil?
        data['BlockSize'] = stub[:block_size] unless stub[:block_size].nil?
        data['ReplicationFactor'] = stub[:replication_factor] unless stub[:replication_factor].nil?
        data['KmsKeyProviderUri'] = stub[:kms_key_provider_uri] unless stub[:kms_key_provider_uri].nil?
        data['QopConfiguration'] = Stubs::QopConfiguration.stub(stub[:qop_configuration]) unless stub[:qop_configuration].nil?
        data['AuthenticationType'] = stub[:authentication_type] unless stub[:authentication_type].nil?
        data['SimpleUser'] = stub[:simple_user] unless stub[:simple_user].nil?
        data['KerberosPrincipal'] = stub[:kerberos_principal] unless stub[:kerberos_principal].nil?
        data['AgentArns'] = Stubs::AgentArnList.stub(stub[:agent_arns]) unless stub[:agent_arns].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AgentArnList
    class AgentArnList
      def self.default(visited=[])
        return nil if visited.include?('AgentArnList')
        visited = visited + ['AgentArnList']
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

    # Structure Stubber for QopConfiguration
    class QopConfiguration
      def self.default(visited=[])
        return nil if visited.include?('QopConfiguration')
        visited = visited + ['QopConfiguration']
        {
          rpc_protection: 'rpc_protection',
          data_transfer_protection: 'data_transfer_protection',
        }
      end

      def self.stub(stub)
        stub ||= Types::QopConfiguration.new
        data = {}
        data['RpcProtection'] = stub[:rpc_protection] unless stub[:rpc_protection].nil?
        data['DataTransferProtection'] = stub[:data_transfer_protection] unless stub[:data_transfer_protection].nil?
        data
      end
    end

    # List Stubber for HdfsNameNodeList
    class HdfsNameNodeList
      def self.default(visited=[])
        return nil if visited.include?('HdfsNameNodeList')
        visited = visited + ['HdfsNameNodeList']
        [
          Stubs::HdfsNameNode.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::HdfsNameNode.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for HdfsNameNode
    class HdfsNameNode
      def self.default(visited=[])
        return nil if visited.include?('HdfsNameNode')
        visited = visited + ['HdfsNameNode']
        {
          hostname: 'hostname',
          port: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::HdfsNameNode.new
        data = {}
        data['Hostname'] = stub[:hostname] unless stub[:hostname].nil?
        data['Port'] = stub[:port] unless stub[:port].nil?
        data
      end
    end

    # Operation Stubber for DescribeLocationNfs
    class DescribeLocationNfs
      def self.default(visited=[])
        {
          location_arn: 'location_arn',
          location_uri: 'location_uri',
          on_prem_config: Stubs::OnPremConfig.default(visited),
          mount_options: Stubs::NfsMountOptions.default(visited),
          creation_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LocationArn'] = stub[:location_arn] unless stub[:location_arn].nil?
        data['LocationUri'] = stub[:location_uri] unless stub[:location_uri].nil?
        data['OnPremConfig'] = Stubs::OnPremConfig.stub(stub[:on_prem_config]) unless stub[:on_prem_config].nil?
        data['MountOptions'] = Stubs::NfsMountOptions.stub(stub[:mount_options]) unless stub[:mount_options].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for OnPremConfig
    class OnPremConfig
      def self.default(visited=[])
        return nil if visited.include?('OnPremConfig')
        visited = visited + ['OnPremConfig']
        {
          agent_arns: Stubs::AgentArnList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::OnPremConfig.new
        data = {}
        data['AgentArns'] = Stubs::AgentArnList.stub(stub[:agent_arns]) unless stub[:agent_arns].nil?
        data
      end
    end

    # Operation Stubber for DescribeLocationObjectStorage
    class DescribeLocationObjectStorage
      def self.default(visited=[])
        {
          location_arn: 'location_arn',
          location_uri: 'location_uri',
          access_key: 'access_key',
          server_port: 1,
          server_protocol: 'server_protocol',
          agent_arns: Stubs::AgentArnList.default(visited),
          creation_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LocationArn'] = stub[:location_arn] unless stub[:location_arn].nil?
        data['LocationUri'] = stub[:location_uri] unless stub[:location_uri].nil?
        data['AccessKey'] = stub[:access_key] unless stub[:access_key].nil?
        data['ServerPort'] = stub[:server_port] unless stub[:server_port].nil?
        data['ServerProtocol'] = stub[:server_protocol] unless stub[:server_protocol].nil?
        data['AgentArns'] = Stubs::AgentArnList.stub(stub[:agent_arns]) unless stub[:agent_arns].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeLocationS3
    class DescribeLocationS3
      def self.default(visited=[])
        {
          location_arn: 'location_arn',
          location_uri: 'location_uri',
          s3_storage_class: 's3_storage_class',
          s3_config: Stubs::S3Config.default(visited),
          agent_arns: Stubs::AgentArnList.default(visited),
          creation_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LocationArn'] = stub[:location_arn] unless stub[:location_arn].nil?
        data['LocationUri'] = stub[:location_uri] unless stub[:location_uri].nil?
        data['S3StorageClass'] = stub[:s3_storage_class] unless stub[:s3_storage_class].nil?
        data['S3Config'] = Stubs::S3Config.stub(stub[:s3_config]) unless stub[:s3_config].nil?
        data['AgentArns'] = Stubs::AgentArnList.stub(stub[:agent_arns]) unless stub[:agent_arns].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for S3Config
    class S3Config
      def self.default(visited=[])
        return nil if visited.include?('S3Config')
        visited = visited + ['S3Config']
        {
          bucket_access_role_arn: 'bucket_access_role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3Config.new
        data = {}
        data['BucketAccessRoleArn'] = stub[:bucket_access_role_arn] unless stub[:bucket_access_role_arn].nil?
        data
      end
    end

    # Operation Stubber for DescribeLocationSmb
    class DescribeLocationSmb
      def self.default(visited=[])
        {
          location_arn: 'location_arn',
          location_uri: 'location_uri',
          agent_arns: Stubs::AgentArnList.default(visited),
          user: 'user',
          domain: 'domain',
          mount_options: Stubs::SmbMountOptions.default(visited),
          creation_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LocationArn'] = stub[:location_arn] unless stub[:location_arn].nil?
        data['LocationUri'] = stub[:location_uri] unless stub[:location_uri].nil?
        data['AgentArns'] = Stubs::AgentArnList.stub(stub[:agent_arns]) unless stub[:agent_arns].nil?
        data['User'] = stub[:user] unless stub[:user].nil?
        data['Domain'] = stub[:domain] unless stub[:domain].nil?
        data['MountOptions'] = Stubs::SmbMountOptions.stub(stub[:mount_options]) unless stub[:mount_options].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for SmbMountOptions
    class SmbMountOptions
      def self.default(visited=[])
        return nil if visited.include?('SmbMountOptions')
        visited = visited + ['SmbMountOptions']
        {
          version: 'version',
        }
      end

      def self.stub(stub)
        stub ||= Types::SmbMountOptions.new
        data = {}
        data['Version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # Operation Stubber for DescribeTask
    class DescribeTask
      def self.default(visited=[])
        {
          task_arn: 'task_arn',
          status: 'status',
          name: 'name',
          current_task_execution_arn: 'current_task_execution_arn',
          source_location_arn: 'source_location_arn',
          destination_location_arn: 'destination_location_arn',
          cloud_watch_log_group_arn: 'cloud_watch_log_group_arn',
          source_network_interface_arns: Stubs::SourceNetworkInterfaceArns.default(visited),
          destination_network_interface_arns: Stubs::DestinationNetworkInterfaceArns.default(visited),
          options: Stubs::Options.default(visited),
          excludes: Stubs::FilterList.default(visited),
          schedule: Stubs::TaskSchedule.default(visited),
          error_code: 'error_code',
          error_detail: 'error_detail',
          creation_time: Time.now,
          includes: Stubs::FilterList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TaskArn'] = stub[:task_arn] unless stub[:task_arn].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['CurrentTaskExecutionArn'] = stub[:current_task_execution_arn] unless stub[:current_task_execution_arn].nil?
        data['SourceLocationArn'] = stub[:source_location_arn] unless stub[:source_location_arn].nil?
        data['DestinationLocationArn'] = stub[:destination_location_arn] unless stub[:destination_location_arn].nil?
        data['CloudWatchLogGroupArn'] = stub[:cloud_watch_log_group_arn] unless stub[:cloud_watch_log_group_arn].nil?
        data['SourceNetworkInterfaceArns'] = Stubs::SourceNetworkInterfaceArns.stub(stub[:source_network_interface_arns]) unless stub[:source_network_interface_arns].nil?
        data['DestinationNetworkInterfaceArns'] = Stubs::DestinationNetworkInterfaceArns.stub(stub[:destination_network_interface_arns]) unless stub[:destination_network_interface_arns].nil?
        data['Options'] = Stubs::Options.stub(stub[:options]) unless stub[:options].nil?
        data['Excludes'] = Stubs::FilterList.stub(stub[:excludes]) unless stub[:excludes].nil?
        data['Schedule'] = Stubs::TaskSchedule.stub(stub[:schedule]) unless stub[:schedule].nil?
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['ErrorDetail'] = stub[:error_detail] unless stub[:error_detail].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['Includes'] = Stubs::FilterList.stub(stub[:includes]) unless stub[:includes].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for FilterList
    class FilterList
      def self.default(visited=[])
        return nil if visited.include?('FilterList')
        visited = visited + ['FilterList']
        [
          Stubs::FilterRule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::FilterRule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FilterRule
    class FilterRule
      def self.default(visited=[])
        return nil if visited.include?('FilterRule')
        visited = visited + ['FilterRule']
        {
          filter_type: 'filter_type',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::FilterRule.new
        data = {}
        data['FilterType'] = stub[:filter_type] unless stub[:filter_type].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for TaskSchedule
    class TaskSchedule
      def self.default(visited=[])
        return nil if visited.include?('TaskSchedule')
        visited = visited + ['TaskSchedule']
        {
          schedule_expression: 'schedule_expression',
        }
      end

      def self.stub(stub)
        stub ||= Types::TaskSchedule.new
        data = {}
        data['ScheduleExpression'] = stub[:schedule_expression] unless stub[:schedule_expression].nil?
        data
      end
    end

    # Structure Stubber for Options
    class Options
      def self.default(visited=[])
        return nil if visited.include?('Options')
        visited = visited + ['Options']
        {
          verify_mode: 'verify_mode',
          overwrite_mode: 'overwrite_mode',
          atime: 'atime',
          mtime: 'mtime',
          uid: 'uid',
          gid: 'gid',
          preserve_deleted_files: 'preserve_deleted_files',
          preserve_devices: 'preserve_devices',
          posix_permissions: 'posix_permissions',
          bytes_per_second: 1,
          task_queueing: 'task_queueing',
          log_level: 'log_level',
          transfer_mode: 'transfer_mode',
          security_descriptor_copy_flags: 'security_descriptor_copy_flags',
          object_tags: 'object_tags',
        }
      end

      def self.stub(stub)
        stub ||= Types::Options.new
        data = {}
        data['VerifyMode'] = stub[:verify_mode] unless stub[:verify_mode].nil?
        data['OverwriteMode'] = stub[:overwrite_mode] unless stub[:overwrite_mode].nil?
        data['Atime'] = stub[:atime] unless stub[:atime].nil?
        data['Mtime'] = stub[:mtime] unless stub[:mtime].nil?
        data['Uid'] = stub[:uid] unless stub[:uid].nil?
        data['Gid'] = stub[:gid] unless stub[:gid].nil?
        data['PreserveDeletedFiles'] = stub[:preserve_deleted_files] unless stub[:preserve_deleted_files].nil?
        data['PreserveDevices'] = stub[:preserve_devices] unless stub[:preserve_devices].nil?
        data['PosixPermissions'] = stub[:posix_permissions] unless stub[:posix_permissions].nil?
        data['BytesPerSecond'] = stub[:bytes_per_second] unless stub[:bytes_per_second].nil?
        data['TaskQueueing'] = stub[:task_queueing] unless stub[:task_queueing].nil?
        data['LogLevel'] = stub[:log_level] unless stub[:log_level].nil?
        data['TransferMode'] = stub[:transfer_mode] unless stub[:transfer_mode].nil?
        data['SecurityDescriptorCopyFlags'] = stub[:security_descriptor_copy_flags] unless stub[:security_descriptor_copy_flags].nil?
        data['ObjectTags'] = stub[:object_tags] unless stub[:object_tags].nil?
        data
      end
    end

    # List Stubber for DestinationNetworkInterfaceArns
    class DestinationNetworkInterfaceArns
      def self.default(visited=[])
        return nil if visited.include?('DestinationNetworkInterfaceArns')
        visited = visited + ['DestinationNetworkInterfaceArns']
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

    # List Stubber for SourceNetworkInterfaceArns
    class SourceNetworkInterfaceArns
      def self.default(visited=[])
        return nil if visited.include?('SourceNetworkInterfaceArns')
        visited = visited + ['SourceNetworkInterfaceArns']
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

    # Operation Stubber for DescribeTaskExecution
    class DescribeTaskExecution
      def self.default(visited=[])
        {
          task_execution_arn: 'task_execution_arn',
          status: 'status',
          options: Stubs::Options.default(visited),
          excludes: Stubs::FilterList.default(visited),
          includes: Stubs::FilterList.default(visited),
          start_time: Time.now,
          estimated_files_to_transfer: 1,
          estimated_bytes_to_transfer: 1,
          files_transferred: 1,
          bytes_written: 1,
          bytes_transferred: 1,
          result: Stubs::TaskExecutionResultDetail.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TaskExecutionArn'] = stub[:task_execution_arn] unless stub[:task_execution_arn].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Options'] = Stubs::Options.stub(stub[:options]) unless stub[:options].nil?
        data['Excludes'] = Stubs::FilterList.stub(stub[:excludes]) unless stub[:excludes].nil?
        data['Includes'] = Stubs::FilterList.stub(stub[:includes]) unless stub[:includes].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['EstimatedFilesToTransfer'] = stub[:estimated_files_to_transfer] unless stub[:estimated_files_to_transfer].nil?
        data['EstimatedBytesToTransfer'] = stub[:estimated_bytes_to_transfer] unless stub[:estimated_bytes_to_transfer].nil?
        data['FilesTransferred'] = stub[:files_transferred] unless stub[:files_transferred].nil?
        data['BytesWritten'] = stub[:bytes_written] unless stub[:bytes_written].nil?
        data['BytesTransferred'] = stub[:bytes_transferred] unless stub[:bytes_transferred].nil?
        data['Result'] = Stubs::TaskExecutionResultDetail.stub(stub[:result]) unless stub[:result].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for TaskExecutionResultDetail
    class TaskExecutionResultDetail
      def self.default(visited=[])
        return nil if visited.include?('TaskExecutionResultDetail')
        visited = visited + ['TaskExecutionResultDetail']
        {
          prepare_duration: 1,
          prepare_status: 'prepare_status',
          total_duration: 1,
          transfer_duration: 1,
          transfer_status: 'transfer_status',
          verify_duration: 1,
          verify_status: 'verify_status',
          error_code: 'error_code',
          error_detail: 'error_detail',
        }
      end

      def self.stub(stub)
        stub ||= Types::TaskExecutionResultDetail.new
        data = {}
        data['PrepareDuration'] = stub[:prepare_duration] unless stub[:prepare_duration].nil?
        data['PrepareStatus'] = stub[:prepare_status] unless stub[:prepare_status].nil?
        data['TotalDuration'] = stub[:total_duration] unless stub[:total_duration].nil?
        data['TransferDuration'] = stub[:transfer_duration] unless stub[:transfer_duration].nil?
        data['TransferStatus'] = stub[:transfer_status] unless stub[:transfer_status].nil?
        data['VerifyDuration'] = stub[:verify_duration] unless stub[:verify_duration].nil?
        data['VerifyStatus'] = stub[:verify_status] unless stub[:verify_status].nil?
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['ErrorDetail'] = stub[:error_detail] unless stub[:error_detail].nil?
        data
      end
    end

    # Operation Stubber for ListAgents
    class ListAgents
      def self.default(visited=[])
        {
          agents: Stubs::AgentList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Agents'] = Stubs::AgentList.stub(stub[:agents]) unless stub[:agents].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AgentList
    class AgentList
      def self.default(visited=[])
        return nil if visited.include?('AgentList')
        visited = visited + ['AgentList']
        [
          Stubs::AgentListEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AgentListEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AgentListEntry
    class AgentListEntry
      def self.default(visited=[])
        return nil if visited.include?('AgentListEntry')
        visited = visited + ['AgentListEntry']
        {
          agent_arn: 'agent_arn',
          name: 'name',
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::AgentListEntry.new
        data = {}
        data['AgentArn'] = stub[:agent_arn] unless stub[:agent_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Operation Stubber for ListLocations
    class ListLocations
      def self.default(visited=[])
        {
          locations: Stubs::LocationList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Locations'] = Stubs::LocationList.stub(stub[:locations]) unless stub[:locations].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for LocationList
    class LocationList
      def self.default(visited=[])
        return nil if visited.include?('LocationList')
        visited = visited + ['LocationList']
        [
          Stubs::LocationListEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::LocationListEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LocationListEntry
    class LocationListEntry
      def self.default(visited=[])
        return nil if visited.include?('LocationListEntry')
        visited = visited + ['LocationListEntry']
        {
          location_arn: 'location_arn',
          location_uri: 'location_uri',
        }
      end

      def self.stub(stub)
        stub ||= Types::LocationListEntry.new
        data = {}
        data['LocationArn'] = stub[:location_arn] unless stub[:location_arn].nil?
        data['LocationUri'] = stub[:location_uri] unless stub[:location_uri].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Stubs::OutputTagList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Tags'] = Stubs::OutputTagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for OutputTagList
    class OutputTagList
      def self.default(visited=[])
        return nil if visited.include?('OutputTagList')
        visited = visited + ['OutputTagList']
        [
          Stubs::TagListEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TagListEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TagListEntry
    class TagListEntry
      def self.default(visited=[])
        return nil if visited.include?('TagListEntry')
        visited = visited + ['TagListEntry']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::TagListEntry.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for ListTaskExecutions
    class ListTaskExecutions
      def self.default(visited=[])
        {
          task_executions: Stubs::TaskExecutionList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TaskExecutions'] = Stubs::TaskExecutionList.stub(stub[:task_executions]) unless stub[:task_executions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TaskExecutionList
    class TaskExecutionList
      def self.default(visited=[])
        return nil if visited.include?('TaskExecutionList')
        visited = visited + ['TaskExecutionList']
        [
          Stubs::TaskExecutionListEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TaskExecutionListEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TaskExecutionListEntry
    class TaskExecutionListEntry
      def self.default(visited=[])
        return nil if visited.include?('TaskExecutionListEntry')
        visited = visited + ['TaskExecutionListEntry']
        {
          task_execution_arn: 'task_execution_arn',
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::TaskExecutionListEntry.new
        data = {}
        data['TaskExecutionArn'] = stub[:task_execution_arn] unless stub[:task_execution_arn].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Operation Stubber for ListTasks
    class ListTasks
      def self.default(visited=[])
        {
          tasks: Stubs::TaskList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Tasks'] = Stubs::TaskList.stub(stub[:tasks]) unless stub[:tasks].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TaskList
    class TaskList
      def self.default(visited=[])
        return nil if visited.include?('TaskList')
        visited = visited + ['TaskList']
        [
          Stubs::TaskListEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TaskListEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TaskListEntry
    class TaskListEntry
      def self.default(visited=[])
        return nil if visited.include?('TaskListEntry')
        visited = visited + ['TaskListEntry']
        {
          task_arn: 'task_arn',
          status: 'status',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::TaskListEntry.new
        data = {}
        data['TaskArn'] = stub[:task_arn] unless stub[:task_arn].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Operation Stubber for StartTaskExecution
    class StartTaskExecution
      def self.default(visited=[])
        {
          task_execution_arn: 'task_execution_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TaskExecutionArn'] = stub[:task_execution_arn] unless stub[:task_execution_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateAgent
    class UpdateAgent
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

    # Operation Stubber for UpdateLocationHdfs
    class UpdateLocationHdfs
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

    # Operation Stubber for UpdateLocationNfs
    class UpdateLocationNfs
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

    # Operation Stubber for UpdateLocationObjectStorage
    class UpdateLocationObjectStorage
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

    # Operation Stubber for UpdateLocationSmb
    class UpdateLocationSmb
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

    # Operation Stubber for UpdateTask
    class UpdateTask
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

    # Operation Stubber for UpdateTaskExecution
    class UpdateTaskExecution
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
