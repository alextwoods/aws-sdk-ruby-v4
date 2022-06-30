# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Transfer
  module Stubs

    # Operation Stubber for CreateAccess
    class CreateAccess
      def self.default(visited=[])
        {
          server_id: 'server_id',
          external_id: 'external_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ServerId'] = stub[:server_id] unless stub[:server_id].nil?
        data['ExternalId'] = stub[:external_id] unless stub[:external_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateServer
    class CreateServer
      def self.default(visited=[])
        {
          server_id: 'server_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ServerId'] = stub[:server_id] unless stub[:server_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateUser
    class CreateUser
      def self.default(visited=[])
        {
          server_id: 'server_id',
          user_name: 'user_name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ServerId'] = stub[:server_id] unless stub[:server_id].nil?
        data['UserName'] = stub[:user_name] unless stub[:user_name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateWorkflow
    class CreateWorkflow
      def self.default(visited=[])
        {
          workflow_id: 'workflow_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['WorkflowId'] = stub[:workflow_id] unless stub[:workflow_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteAccess
    class DeleteAccess
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

    # Operation Stubber for DeleteServer
    class DeleteServer
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

    # Operation Stubber for DeleteSshPublicKey
    class DeleteSshPublicKey
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

    # Operation Stubber for DeleteUser
    class DeleteUser
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

    # Operation Stubber for DeleteWorkflow
    class DeleteWorkflow
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

    # Operation Stubber for DescribeAccess
    class DescribeAccess
      def self.default(visited=[])
        {
          server_id: 'server_id',
          access: Stubs::DescribedAccess.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ServerId'] = stub[:server_id] unless stub[:server_id].nil?
        data['Access'] = Stubs::DescribedAccess.stub(stub[:access]) unless stub[:access].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for DescribedAccess
    class DescribedAccess
      def self.default(visited=[])
        return nil if visited.include?('DescribedAccess')
        visited = visited + ['DescribedAccess']
        {
          home_directory: 'home_directory',
          home_directory_mappings: Stubs::HomeDirectoryMappings.default(visited),
          home_directory_type: 'home_directory_type',
          policy: 'policy',
          posix_profile: Stubs::PosixProfile.default(visited),
          role: 'role',
          external_id: 'external_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::DescribedAccess.new
        data = {}
        data['HomeDirectory'] = stub[:home_directory] unless stub[:home_directory].nil?
        data['HomeDirectoryMappings'] = Stubs::HomeDirectoryMappings.stub(stub[:home_directory_mappings]) unless stub[:home_directory_mappings].nil?
        data['HomeDirectoryType'] = stub[:home_directory_type] unless stub[:home_directory_type].nil?
        data['Policy'] = stub[:policy] unless stub[:policy].nil?
        data['PosixProfile'] = Stubs::PosixProfile.stub(stub[:posix_profile]) unless stub[:posix_profile].nil?
        data['Role'] = stub[:role] unless stub[:role].nil?
        data['ExternalId'] = stub[:external_id] unless stub[:external_id].nil?
        data
      end
    end

    # Structure Stubber for PosixProfile
    class PosixProfile
      def self.default(visited=[])
        return nil if visited.include?('PosixProfile')
        visited = visited + ['PosixProfile']
        {
          uid: 1,
          gid: 1,
          secondary_gids: Stubs::SecondaryGids.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PosixProfile.new
        data = {}
        data['Uid'] = stub[:uid] unless stub[:uid].nil?
        data['Gid'] = stub[:gid] unless stub[:gid].nil?
        data['SecondaryGids'] = Stubs::SecondaryGids.stub(stub[:secondary_gids]) unless stub[:secondary_gids].nil?
        data
      end
    end

    # List Stubber for SecondaryGids
    class SecondaryGids
      def self.default(visited=[])
        return nil if visited.include?('SecondaryGids')
        visited = visited + ['SecondaryGids']
        [
          1
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

    # List Stubber for HomeDirectoryMappings
    class HomeDirectoryMappings
      def self.default(visited=[])
        return nil if visited.include?('HomeDirectoryMappings')
        visited = visited + ['HomeDirectoryMappings']
        [
          Stubs::HomeDirectoryMapEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::HomeDirectoryMapEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for HomeDirectoryMapEntry
    class HomeDirectoryMapEntry
      def self.default(visited=[])
        return nil if visited.include?('HomeDirectoryMapEntry')
        visited = visited + ['HomeDirectoryMapEntry']
        {
          entry: 'entry',
          target: 'target',
        }
      end

      def self.stub(stub)
        stub ||= Types::HomeDirectoryMapEntry.new
        data = {}
        data['Entry'] = stub[:entry] unless stub[:entry].nil?
        data['Target'] = stub[:target] unless stub[:target].nil?
        data
      end
    end

    # Operation Stubber for DescribeExecution
    class DescribeExecution
      def self.default(visited=[])
        {
          workflow_id: 'workflow_id',
          execution: Stubs::DescribedExecution.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['WorkflowId'] = stub[:workflow_id] unless stub[:workflow_id].nil?
        data['Execution'] = Stubs::DescribedExecution.stub(stub[:execution]) unless stub[:execution].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for DescribedExecution
    class DescribedExecution
      def self.default(visited=[])
        return nil if visited.include?('DescribedExecution')
        visited = visited + ['DescribedExecution']
        {
          execution_id: 'execution_id',
          initial_file_location: Stubs::FileLocation.default(visited),
          service_metadata: Stubs::ServiceMetadata.default(visited),
          execution_role: 'execution_role',
          logging_configuration: Stubs::LoggingConfiguration.default(visited),
          posix_profile: Stubs::PosixProfile.default(visited),
          status: 'status',
          results: Stubs::ExecutionResults.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DescribedExecution.new
        data = {}
        data['ExecutionId'] = stub[:execution_id] unless stub[:execution_id].nil?
        data['InitialFileLocation'] = Stubs::FileLocation.stub(stub[:initial_file_location]) unless stub[:initial_file_location].nil?
        data['ServiceMetadata'] = Stubs::ServiceMetadata.stub(stub[:service_metadata]) unless stub[:service_metadata].nil?
        data['ExecutionRole'] = stub[:execution_role] unless stub[:execution_role].nil?
        data['LoggingConfiguration'] = Stubs::LoggingConfiguration.stub(stub[:logging_configuration]) unless stub[:logging_configuration].nil?
        data['PosixProfile'] = Stubs::PosixProfile.stub(stub[:posix_profile]) unless stub[:posix_profile].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Results'] = Stubs::ExecutionResults.stub(stub[:results]) unless stub[:results].nil?
        data
      end
    end

    # Structure Stubber for ExecutionResults
    class ExecutionResults
      def self.default(visited=[])
        return nil if visited.include?('ExecutionResults')
        visited = visited + ['ExecutionResults']
        {
          steps: Stubs::ExecutionStepResults.default(visited),
          on_exception_steps: Stubs::ExecutionStepResults.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ExecutionResults.new
        data = {}
        data['Steps'] = Stubs::ExecutionStepResults.stub(stub[:steps]) unless stub[:steps].nil?
        data['OnExceptionSteps'] = Stubs::ExecutionStepResults.stub(stub[:on_exception_steps]) unless stub[:on_exception_steps].nil?
        data
      end
    end

    # List Stubber for ExecutionStepResults
    class ExecutionStepResults
      def self.default(visited=[])
        return nil if visited.include?('ExecutionStepResults')
        visited = visited + ['ExecutionStepResults']
        [
          Stubs::ExecutionStepResult.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ExecutionStepResult.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ExecutionStepResult
    class ExecutionStepResult
      def self.default(visited=[])
        return nil if visited.include?('ExecutionStepResult')
        visited = visited + ['ExecutionStepResult']
        {
          step_type: 'step_type',
          outputs: 'outputs',
          error: Stubs::ExecutionError.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ExecutionStepResult.new
        data = {}
        data['StepType'] = stub[:step_type] unless stub[:step_type].nil?
        data['Outputs'] = stub[:outputs] unless stub[:outputs].nil?
        data['Error'] = Stubs::ExecutionError.stub(stub[:error]) unless stub[:error].nil?
        data
      end
    end

    # Structure Stubber for ExecutionError
    class ExecutionError
      def self.default(visited=[])
        return nil if visited.include?('ExecutionError')
        visited = visited + ['ExecutionError']
        {
          type: 'type',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::ExecutionError.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Structure Stubber for LoggingConfiguration
    class LoggingConfiguration
      def self.default(visited=[])
        return nil if visited.include?('LoggingConfiguration')
        visited = visited + ['LoggingConfiguration']
        {
          logging_role: 'logging_role',
          log_group_name: 'log_group_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::LoggingConfiguration.new
        data = {}
        data['LoggingRole'] = stub[:logging_role] unless stub[:logging_role].nil?
        data['LogGroupName'] = stub[:log_group_name] unless stub[:log_group_name].nil?
        data
      end
    end

    # Structure Stubber for ServiceMetadata
    class ServiceMetadata
      def self.default(visited=[])
        return nil if visited.include?('ServiceMetadata')
        visited = visited + ['ServiceMetadata']
        {
          user_details: Stubs::UserDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ServiceMetadata.new
        data = {}
        data['UserDetails'] = Stubs::UserDetails.stub(stub[:user_details]) unless stub[:user_details].nil?
        data
      end
    end

    # Structure Stubber for UserDetails
    class UserDetails
      def self.default(visited=[])
        return nil if visited.include?('UserDetails')
        visited = visited + ['UserDetails']
        {
          user_name: 'user_name',
          server_id: 'server_id',
          session_id: 'session_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::UserDetails.new
        data = {}
        data['UserName'] = stub[:user_name] unless stub[:user_name].nil?
        data['ServerId'] = stub[:server_id] unless stub[:server_id].nil?
        data['SessionId'] = stub[:session_id] unless stub[:session_id].nil?
        data
      end
    end

    # Structure Stubber for FileLocation
    class FileLocation
      def self.default(visited=[])
        return nil if visited.include?('FileLocation')
        visited = visited + ['FileLocation']
        {
          s3_file_location: Stubs::S3FileLocation.default(visited),
          efs_file_location: Stubs::EfsFileLocation.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FileLocation.new
        data = {}
        data['S3FileLocation'] = Stubs::S3FileLocation.stub(stub[:s3_file_location]) unless stub[:s3_file_location].nil?
        data['EfsFileLocation'] = Stubs::EfsFileLocation.stub(stub[:efs_file_location]) unless stub[:efs_file_location].nil?
        data
      end
    end

    # Structure Stubber for EfsFileLocation
    class EfsFileLocation
      def self.default(visited=[])
        return nil if visited.include?('EfsFileLocation')
        visited = visited + ['EfsFileLocation']
        {
          file_system_id: 'file_system_id',
          path: 'path',
        }
      end

      def self.stub(stub)
        stub ||= Types::EfsFileLocation.new
        data = {}
        data['FileSystemId'] = stub[:file_system_id] unless stub[:file_system_id].nil?
        data['Path'] = stub[:path] unless stub[:path].nil?
        data
      end
    end

    # Structure Stubber for S3FileLocation
    class S3FileLocation
      def self.default(visited=[])
        return nil if visited.include?('S3FileLocation')
        visited = visited + ['S3FileLocation']
        {
          bucket: 'bucket',
          key: 'key',
          version_id: 'version_id',
          etag: 'etag',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3FileLocation.new
        data = {}
        data['Bucket'] = stub[:bucket] unless stub[:bucket].nil?
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['VersionId'] = stub[:version_id] unless stub[:version_id].nil?
        data['Etag'] = stub[:etag] unless stub[:etag].nil?
        data
      end
    end

    # Operation Stubber for DescribeSecurityPolicy
    class DescribeSecurityPolicy
      def self.default(visited=[])
        {
          security_policy: Stubs::DescribedSecurityPolicy.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SecurityPolicy'] = Stubs::DescribedSecurityPolicy.stub(stub[:security_policy]) unless stub[:security_policy].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for DescribedSecurityPolicy
    class DescribedSecurityPolicy
      def self.default(visited=[])
        return nil if visited.include?('DescribedSecurityPolicy')
        visited = visited + ['DescribedSecurityPolicy']
        {
          fips: false,
          security_policy_name: 'security_policy_name',
          ssh_ciphers: Stubs::SecurityPolicyOptions.default(visited),
          ssh_kexs: Stubs::SecurityPolicyOptions.default(visited),
          ssh_macs: Stubs::SecurityPolicyOptions.default(visited),
          tls_ciphers: Stubs::SecurityPolicyOptions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DescribedSecurityPolicy.new
        data = {}
        data['Fips'] = stub[:fips] unless stub[:fips].nil?
        data['SecurityPolicyName'] = stub[:security_policy_name] unless stub[:security_policy_name].nil?
        data['SshCiphers'] = Stubs::SecurityPolicyOptions.stub(stub[:ssh_ciphers]) unless stub[:ssh_ciphers].nil?
        data['SshKexs'] = Stubs::SecurityPolicyOptions.stub(stub[:ssh_kexs]) unless stub[:ssh_kexs].nil?
        data['SshMacs'] = Stubs::SecurityPolicyOptions.stub(stub[:ssh_macs]) unless stub[:ssh_macs].nil?
        data['TlsCiphers'] = Stubs::SecurityPolicyOptions.stub(stub[:tls_ciphers]) unless stub[:tls_ciphers].nil?
        data
      end
    end

    # List Stubber for SecurityPolicyOptions
    class SecurityPolicyOptions
      def self.default(visited=[])
        return nil if visited.include?('SecurityPolicyOptions')
        visited = visited + ['SecurityPolicyOptions']
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

    # Operation Stubber for DescribeServer
    class DescribeServer
      def self.default(visited=[])
        {
          server: Stubs::DescribedServer.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Server'] = Stubs::DescribedServer.stub(stub[:server]) unless stub[:server].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for DescribedServer
    class DescribedServer
      def self.default(visited=[])
        return nil if visited.include?('DescribedServer')
        visited = visited + ['DescribedServer']
        {
          arn: 'arn',
          certificate: 'certificate',
          protocol_details: Stubs::ProtocolDetails.default(visited),
          domain: 'domain',
          endpoint_details: Stubs::EndpointDetails.default(visited),
          endpoint_type: 'endpoint_type',
          host_key_fingerprint: 'host_key_fingerprint',
          identity_provider_details: Stubs::IdentityProviderDetails.default(visited),
          identity_provider_type: 'identity_provider_type',
          logging_role: 'logging_role',
          post_authentication_login_banner: 'post_authentication_login_banner',
          pre_authentication_login_banner: 'pre_authentication_login_banner',
          protocols: Stubs::Protocols.default(visited),
          security_policy_name: 'security_policy_name',
          server_id: 'server_id',
          state: 'state',
          tags: Stubs::Tags.default(visited),
          user_count: 1,
          workflow_details: Stubs::WorkflowDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DescribedServer.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Certificate'] = stub[:certificate] unless stub[:certificate].nil?
        data['ProtocolDetails'] = Stubs::ProtocolDetails.stub(stub[:protocol_details]) unless stub[:protocol_details].nil?
        data['Domain'] = stub[:domain] unless stub[:domain].nil?
        data['EndpointDetails'] = Stubs::EndpointDetails.stub(stub[:endpoint_details]) unless stub[:endpoint_details].nil?
        data['EndpointType'] = stub[:endpoint_type] unless stub[:endpoint_type].nil?
        data['HostKeyFingerprint'] = stub[:host_key_fingerprint] unless stub[:host_key_fingerprint].nil?
        data['IdentityProviderDetails'] = Stubs::IdentityProviderDetails.stub(stub[:identity_provider_details]) unless stub[:identity_provider_details].nil?
        data['IdentityProviderType'] = stub[:identity_provider_type] unless stub[:identity_provider_type].nil?
        data['LoggingRole'] = stub[:logging_role] unless stub[:logging_role].nil?
        data['PostAuthenticationLoginBanner'] = stub[:post_authentication_login_banner] unless stub[:post_authentication_login_banner].nil?
        data['PreAuthenticationLoginBanner'] = stub[:pre_authentication_login_banner] unless stub[:pre_authentication_login_banner].nil?
        data['Protocols'] = Stubs::Protocols.stub(stub[:protocols]) unless stub[:protocols].nil?
        data['SecurityPolicyName'] = stub[:security_policy_name] unless stub[:security_policy_name].nil?
        data['ServerId'] = stub[:server_id] unless stub[:server_id].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['Tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['UserCount'] = stub[:user_count] unless stub[:user_count].nil?
        data['WorkflowDetails'] = Stubs::WorkflowDetails.stub(stub[:workflow_details]) unless stub[:workflow_details].nil?
        data
      end
    end

    # Structure Stubber for WorkflowDetails
    class WorkflowDetails
      def self.default(visited=[])
        return nil if visited.include?('WorkflowDetails')
        visited = visited + ['WorkflowDetails']
        {
          on_upload: Stubs::OnUploadWorkflowDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkflowDetails.new
        data = {}
        data['OnUpload'] = Stubs::OnUploadWorkflowDetails.stub(stub[:on_upload]) unless stub[:on_upload].nil?
        data
      end
    end

    # List Stubber for OnUploadWorkflowDetails
    class OnUploadWorkflowDetails
      def self.default(visited=[])
        return nil if visited.include?('OnUploadWorkflowDetails')
        visited = visited + ['OnUploadWorkflowDetails']
        [
          Stubs::WorkflowDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::WorkflowDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for WorkflowDetail
    class WorkflowDetail
      def self.default(visited=[])
        return nil if visited.include?('WorkflowDetail')
        visited = visited + ['WorkflowDetail']
        {
          workflow_id: 'workflow_id',
          execution_role: 'execution_role',
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkflowDetail.new
        data = {}
        data['WorkflowId'] = stub[:workflow_id] unless stub[:workflow_id].nil?
        data['ExecutionRole'] = stub[:execution_role] unless stub[:execution_role].nil?
        data
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
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # List Stubber for Protocols
    class Protocols
      def self.default(visited=[])
        return nil if visited.include?('Protocols')
        visited = visited + ['Protocols']
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

    # Structure Stubber for IdentityProviderDetails
    class IdentityProviderDetails
      def self.default(visited=[])
        return nil if visited.include?('IdentityProviderDetails')
        visited = visited + ['IdentityProviderDetails']
        {
          url: 'url',
          invocation_role: 'invocation_role',
          directory_id: 'directory_id',
          function: 'function',
        }
      end

      def self.stub(stub)
        stub ||= Types::IdentityProviderDetails.new
        data = {}
        data['Url'] = stub[:url] unless stub[:url].nil?
        data['InvocationRole'] = stub[:invocation_role] unless stub[:invocation_role].nil?
        data['DirectoryId'] = stub[:directory_id] unless stub[:directory_id].nil?
        data['Function'] = stub[:function] unless stub[:function].nil?
        data
      end
    end

    # Structure Stubber for EndpointDetails
    class EndpointDetails
      def self.default(visited=[])
        return nil if visited.include?('EndpointDetails')
        visited = visited + ['EndpointDetails']
        {
          address_allocation_ids: Stubs::AddressAllocationIds.default(visited),
          subnet_ids: Stubs::SubnetIds.default(visited),
          vpc_endpoint_id: 'vpc_endpoint_id',
          vpc_id: 'vpc_id',
          security_group_ids: Stubs::SecurityGroupIds.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EndpointDetails.new
        data = {}
        data['AddressAllocationIds'] = Stubs::AddressAllocationIds.stub(stub[:address_allocation_ids]) unless stub[:address_allocation_ids].nil?
        data['SubnetIds'] = Stubs::SubnetIds.stub(stub[:subnet_ids]) unless stub[:subnet_ids].nil?
        data['VpcEndpointId'] = stub[:vpc_endpoint_id] unless stub[:vpc_endpoint_id].nil?
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['SecurityGroupIds'] = Stubs::SecurityGroupIds.stub(stub[:security_group_ids]) unless stub[:security_group_ids].nil?
        data
      end
    end

    # List Stubber for SecurityGroupIds
    class SecurityGroupIds
      def self.default(visited=[])
        return nil if visited.include?('SecurityGroupIds')
        visited = visited + ['SecurityGroupIds']
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

    # List Stubber for SubnetIds
    class SubnetIds
      def self.default(visited=[])
        return nil if visited.include?('SubnetIds')
        visited = visited + ['SubnetIds']
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

    # List Stubber for AddressAllocationIds
    class AddressAllocationIds
      def self.default(visited=[])
        return nil if visited.include?('AddressAllocationIds')
        visited = visited + ['AddressAllocationIds']
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

    # Structure Stubber for ProtocolDetails
    class ProtocolDetails
      def self.default(visited=[])
        return nil if visited.include?('ProtocolDetails')
        visited = visited + ['ProtocolDetails']
        {
          passive_ip: 'passive_ip',
          tls_session_resumption_mode: 'tls_session_resumption_mode',
          set_stat_option: 'set_stat_option',
        }
      end

      def self.stub(stub)
        stub ||= Types::ProtocolDetails.new
        data = {}
        data['PassiveIp'] = stub[:passive_ip] unless stub[:passive_ip].nil?
        data['TlsSessionResumptionMode'] = stub[:tls_session_resumption_mode] unless stub[:tls_session_resumption_mode].nil?
        data['SetStatOption'] = stub[:set_stat_option] unless stub[:set_stat_option].nil?
        data
      end
    end

    # Operation Stubber for DescribeUser
    class DescribeUser
      def self.default(visited=[])
        {
          server_id: 'server_id',
          user: Stubs::DescribedUser.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ServerId'] = stub[:server_id] unless stub[:server_id].nil?
        data['User'] = Stubs::DescribedUser.stub(stub[:user]) unless stub[:user].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for DescribedUser
    class DescribedUser
      def self.default(visited=[])
        return nil if visited.include?('DescribedUser')
        visited = visited + ['DescribedUser']
        {
          arn: 'arn',
          home_directory: 'home_directory',
          home_directory_mappings: Stubs::HomeDirectoryMappings.default(visited),
          home_directory_type: 'home_directory_type',
          policy: 'policy',
          posix_profile: Stubs::PosixProfile.default(visited),
          role: 'role',
          ssh_public_keys: Stubs::SshPublicKeys.default(visited),
          tags: Stubs::Tags.default(visited),
          user_name: 'user_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::DescribedUser.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['HomeDirectory'] = stub[:home_directory] unless stub[:home_directory].nil?
        data['HomeDirectoryMappings'] = Stubs::HomeDirectoryMappings.stub(stub[:home_directory_mappings]) unless stub[:home_directory_mappings].nil?
        data['HomeDirectoryType'] = stub[:home_directory_type] unless stub[:home_directory_type].nil?
        data['Policy'] = stub[:policy] unless stub[:policy].nil?
        data['PosixProfile'] = Stubs::PosixProfile.stub(stub[:posix_profile]) unless stub[:posix_profile].nil?
        data['Role'] = stub[:role] unless stub[:role].nil?
        data['SshPublicKeys'] = Stubs::SshPublicKeys.stub(stub[:ssh_public_keys]) unless stub[:ssh_public_keys].nil?
        data['Tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['UserName'] = stub[:user_name] unless stub[:user_name].nil?
        data
      end
    end

    # List Stubber for SshPublicKeys
    class SshPublicKeys
      def self.default(visited=[])
        return nil if visited.include?('SshPublicKeys')
        visited = visited + ['SshPublicKeys']
        [
          Stubs::SshPublicKey.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SshPublicKey.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SshPublicKey
    class SshPublicKey
      def self.default(visited=[])
        return nil if visited.include?('SshPublicKey')
        visited = visited + ['SshPublicKey']
        {
          date_imported: Time.now,
          ssh_public_key_body: 'ssh_public_key_body',
          ssh_public_key_id: 'ssh_public_key_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::SshPublicKey.new
        data = {}
        data['DateImported'] = Hearth::TimeHelper.to_epoch_seconds(stub[:date_imported]).to_i unless stub[:date_imported].nil?
        data['SshPublicKeyBody'] = stub[:ssh_public_key_body] unless stub[:ssh_public_key_body].nil?
        data['SshPublicKeyId'] = stub[:ssh_public_key_id] unless stub[:ssh_public_key_id].nil?
        data
      end
    end

    # Operation Stubber for DescribeWorkflow
    class DescribeWorkflow
      def self.default(visited=[])
        {
          workflow: Stubs::DescribedWorkflow.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Workflow'] = Stubs::DescribedWorkflow.stub(stub[:workflow]) unless stub[:workflow].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for DescribedWorkflow
    class DescribedWorkflow
      def self.default(visited=[])
        return nil if visited.include?('DescribedWorkflow')
        visited = visited + ['DescribedWorkflow']
        {
          arn: 'arn',
          description: 'description',
          steps: Stubs::WorkflowSteps.default(visited),
          on_exception_steps: Stubs::WorkflowSteps.default(visited),
          workflow_id: 'workflow_id',
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DescribedWorkflow.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Steps'] = Stubs::WorkflowSteps.stub(stub[:steps]) unless stub[:steps].nil?
        data['OnExceptionSteps'] = Stubs::WorkflowSteps.stub(stub[:on_exception_steps]) unless stub[:on_exception_steps].nil?
        data['WorkflowId'] = stub[:workflow_id] unless stub[:workflow_id].nil?
        data['Tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # List Stubber for WorkflowSteps
    class WorkflowSteps
      def self.default(visited=[])
        return nil if visited.include?('WorkflowSteps')
        visited = visited + ['WorkflowSteps']
        [
          Stubs::WorkflowStep.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::WorkflowStep.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for WorkflowStep
    class WorkflowStep
      def self.default(visited=[])
        return nil if visited.include?('WorkflowStep')
        visited = visited + ['WorkflowStep']
        {
          type: 'type',
          copy_step_details: Stubs::CopyStepDetails.default(visited),
          custom_step_details: Stubs::CustomStepDetails.default(visited),
          delete_step_details: Stubs::DeleteStepDetails.default(visited),
          tag_step_details: Stubs::TagStepDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkflowStep.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['CopyStepDetails'] = Stubs::CopyStepDetails.stub(stub[:copy_step_details]) unless stub[:copy_step_details].nil?
        data['CustomStepDetails'] = Stubs::CustomStepDetails.stub(stub[:custom_step_details]) unless stub[:custom_step_details].nil?
        data['DeleteStepDetails'] = Stubs::DeleteStepDetails.stub(stub[:delete_step_details]) unless stub[:delete_step_details].nil?
        data['TagStepDetails'] = Stubs::TagStepDetails.stub(stub[:tag_step_details]) unless stub[:tag_step_details].nil?
        data
      end
    end

    # Structure Stubber for TagStepDetails
    class TagStepDetails
      def self.default(visited=[])
        return nil if visited.include?('TagStepDetails')
        visited = visited + ['TagStepDetails']
        {
          name: 'name',
          tags: Stubs::S3Tags.default(visited),
          source_file_location: 'source_file_location',
        }
      end

      def self.stub(stub)
        stub ||= Types::TagStepDetails.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Tags'] = Stubs::S3Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['SourceFileLocation'] = stub[:source_file_location] unless stub[:source_file_location].nil?
        data
      end
    end

    # List Stubber for S3Tags
    class S3Tags
      def self.default(visited=[])
        return nil if visited.include?('S3Tags')
        visited = visited + ['S3Tags']
        [
          Stubs::S3Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::S3Tag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for S3Tag
    class S3Tag
      def self.default(visited=[])
        return nil if visited.include?('S3Tag')
        visited = visited + ['S3Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3Tag.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for DeleteStepDetails
    class DeleteStepDetails
      def self.default(visited=[])
        return nil if visited.include?('DeleteStepDetails')
        visited = visited + ['DeleteStepDetails']
        {
          name: 'name',
          source_file_location: 'source_file_location',
        }
      end

      def self.stub(stub)
        stub ||= Types::DeleteStepDetails.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['SourceFileLocation'] = stub[:source_file_location] unless stub[:source_file_location].nil?
        data
      end
    end

    # Structure Stubber for CustomStepDetails
    class CustomStepDetails
      def self.default(visited=[])
        return nil if visited.include?('CustomStepDetails')
        visited = visited + ['CustomStepDetails']
        {
          name: 'name',
          target: 'target',
          timeout_seconds: 1,
          source_file_location: 'source_file_location',
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomStepDetails.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Target'] = stub[:target] unless stub[:target].nil?
        data['TimeoutSeconds'] = stub[:timeout_seconds] unless stub[:timeout_seconds].nil?
        data['SourceFileLocation'] = stub[:source_file_location] unless stub[:source_file_location].nil?
        data
      end
    end

    # Structure Stubber for CopyStepDetails
    class CopyStepDetails
      def self.default(visited=[])
        return nil if visited.include?('CopyStepDetails')
        visited = visited + ['CopyStepDetails']
        {
          name: 'name',
          destination_file_location: Stubs::InputFileLocation.default(visited),
          overwrite_existing: 'overwrite_existing',
          source_file_location: 'source_file_location',
        }
      end

      def self.stub(stub)
        stub ||= Types::CopyStepDetails.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['DestinationFileLocation'] = Stubs::InputFileLocation.stub(stub[:destination_file_location]) unless stub[:destination_file_location].nil?
        data['OverwriteExisting'] = stub[:overwrite_existing] unless stub[:overwrite_existing].nil?
        data['SourceFileLocation'] = stub[:source_file_location] unless stub[:source_file_location].nil?
        data
      end
    end

    # Structure Stubber for InputFileLocation
    class InputFileLocation
      def self.default(visited=[])
        return nil if visited.include?('InputFileLocation')
        visited = visited + ['InputFileLocation']
        {
          s3_file_location: Stubs::S3InputFileLocation.default(visited),
          efs_file_location: Stubs::EfsFileLocation.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InputFileLocation.new
        data = {}
        data['S3FileLocation'] = Stubs::S3InputFileLocation.stub(stub[:s3_file_location]) unless stub[:s3_file_location].nil?
        data['EfsFileLocation'] = Stubs::EfsFileLocation.stub(stub[:efs_file_location]) unless stub[:efs_file_location].nil?
        data
      end
    end

    # Structure Stubber for S3InputFileLocation
    class S3InputFileLocation
      def self.default(visited=[])
        return nil if visited.include?('S3InputFileLocation')
        visited = visited + ['S3InputFileLocation']
        {
          bucket: 'bucket',
          key: 'key',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3InputFileLocation.new
        data = {}
        data['Bucket'] = stub[:bucket] unless stub[:bucket].nil?
        data['Key'] = stub[:key] unless stub[:key].nil?
        data
      end
    end

    # Operation Stubber for ImportSshPublicKey
    class ImportSshPublicKey
      def self.default(visited=[])
        {
          server_id: 'server_id',
          ssh_public_key_id: 'ssh_public_key_id',
          user_name: 'user_name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ServerId'] = stub[:server_id] unless stub[:server_id].nil?
        data['SshPublicKeyId'] = stub[:ssh_public_key_id] unless stub[:ssh_public_key_id].nil?
        data['UserName'] = stub[:user_name] unless stub[:user_name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListAccesses
    class ListAccesses
      def self.default(visited=[])
        {
          next_token: 'next_token',
          server_id: 'server_id',
          accesses: Stubs::ListedAccesses.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['ServerId'] = stub[:server_id] unless stub[:server_id].nil?
        data['Accesses'] = Stubs::ListedAccesses.stub(stub[:accesses]) unless stub[:accesses].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ListedAccesses
    class ListedAccesses
      def self.default(visited=[])
        return nil if visited.include?('ListedAccesses')
        visited = visited + ['ListedAccesses']
        [
          Stubs::ListedAccess.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ListedAccess.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ListedAccess
    class ListedAccess
      def self.default(visited=[])
        return nil if visited.include?('ListedAccess')
        visited = visited + ['ListedAccess']
        {
          home_directory: 'home_directory',
          home_directory_type: 'home_directory_type',
          role: 'role',
          external_id: 'external_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::ListedAccess.new
        data = {}
        data['HomeDirectory'] = stub[:home_directory] unless stub[:home_directory].nil?
        data['HomeDirectoryType'] = stub[:home_directory_type] unless stub[:home_directory_type].nil?
        data['Role'] = stub[:role] unless stub[:role].nil?
        data['ExternalId'] = stub[:external_id] unless stub[:external_id].nil?
        data
      end
    end

    # Operation Stubber for ListExecutions
    class ListExecutions
      def self.default(visited=[])
        {
          next_token: 'next_token',
          workflow_id: 'workflow_id',
          executions: Stubs::ListedExecutions.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['WorkflowId'] = stub[:workflow_id] unless stub[:workflow_id].nil?
        data['Executions'] = Stubs::ListedExecutions.stub(stub[:executions]) unless stub[:executions].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ListedExecutions
    class ListedExecutions
      def self.default(visited=[])
        return nil if visited.include?('ListedExecutions')
        visited = visited + ['ListedExecutions']
        [
          Stubs::ListedExecution.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ListedExecution.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ListedExecution
    class ListedExecution
      def self.default(visited=[])
        return nil if visited.include?('ListedExecution')
        visited = visited + ['ListedExecution']
        {
          execution_id: 'execution_id',
          initial_file_location: Stubs::FileLocation.default(visited),
          service_metadata: Stubs::ServiceMetadata.default(visited),
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::ListedExecution.new
        data = {}
        data['ExecutionId'] = stub[:execution_id] unless stub[:execution_id].nil?
        data['InitialFileLocation'] = Stubs::FileLocation.stub(stub[:initial_file_location]) unless stub[:initial_file_location].nil?
        data['ServiceMetadata'] = Stubs::ServiceMetadata.stub(stub[:service_metadata]) unless stub[:service_metadata].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Operation Stubber for ListSecurityPolicies
    class ListSecurityPolicies
      def self.default(visited=[])
        {
          next_token: 'next_token',
          security_policy_names: Stubs::SecurityPolicyNames.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['SecurityPolicyNames'] = Stubs::SecurityPolicyNames.stub(stub[:security_policy_names]) unless stub[:security_policy_names].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SecurityPolicyNames
    class SecurityPolicyNames
      def self.default(visited=[])
        return nil if visited.include?('SecurityPolicyNames')
        visited = visited + ['SecurityPolicyNames']
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

    # Operation Stubber for ListServers
    class ListServers
      def self.default(visited=[])
        {
          next_token: 'next_token',
          servers: Stubs::ListedServers.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Servers'] = Stubs::ListedServers.stub(stub[:servers]) unless stub[:servers].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ListedServers
    class ListedServers
      def self.default(visited=[])
        return nil if visited.include?('ListedServers')
        visited = visited + ['ListedServers']
        [
          Stubs::ListedServer.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ListedServer.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ListedServer
    class ListedServer
      def self.default(visited=[])
        return nil if visited.include?('ListedServer')
        visited = visited + ['ListedServer']
        {
          arn: 'arn',
          domain: 'domain',
          identity_provider_type: 'identity_provider_type',
          endpoint_type: 'endpoint_type',
          logging_role: 'logging_role',
          server_id: 'server_id',
          state: 'state',
          user_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ListedServer.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Domain'] = stub[:domain] unless stub[:domain].nil?
        data['IdentityProviderType'] = stub[:identity_provider_type] unless stub[:identity_provider_type].nil?
        data['EndpointType'] = stub[:endpoint_type] unless stub[:endpoint_type].nil?
        data['LoggingRole'] = stub[:logging_role] unless stub[:logging_role].nil?
        data['ServerId'] = stub[:server_id] unless stub[:server_id].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['UserCount'] = stub[:user_count] unless stub[:user_count].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          arn: 'arn',
          next_token: 'next_token',
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListUsers
    class ListUsers
      def self.default(visited=[])
        {
          next_token: 'next_token',
          server_id: 'server_id',
          users: Stubs::ListedUsers.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['ServerId'] = stub[:server_id] unless stub[:server_id].nil?
        data['Users'] = Stubs::ListedUsers.stub(stub[:users]) unless stub[:users].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ListedUsers
    class ListedUsers
      def self.default(visited=[])
        return nil if visited.include?('ListedUsers')
        visited = visited + ['ListedUsers']
        [
          Stubs::ListedUser.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ListedUser.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ListedUser
    class ListedUser
      def self.default(visited=[])
        return nil if visited.include?('ListedUser')
        visited = visited + ['ListedUser']
        {
          arn: 'arn',
          home_directory: 'home_directory',
          home_directory_type: 'home_directory_type',
          role: 'role',
          ssh_public_key_count: 1,
          user_name: 'user_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ListedUser.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['HomeDirectory'] = stub[:home_directory] unless stub[:home_directory].nil?
        data['HomeDirectoryType'] = stub[:home_directory_type] unless stub[:home_directory_type].nil?
        data['Role'] = stub[:role] unless stub[:role].nil?
        data['SshPublicKeyCount'] = stub[:ssh_public_key_count] unless stub[:ssh_public_key_count].nil?
        data['UserName'] = stub[:user_name] unless stub[:user_name].nil?
        data
      end
    end

    # Operation Stubber for ListWorkflows
    class ListWorkflows
      def self.default(visited=[])
        {
          next_token: 'next_token',
          workflows: Stubs::ListedWorkflows.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Workflows'] = Stubs::ListedWorkflows.stub(stub[:workflows]) unless stub[:workflows].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ListedWorkflows
    class ListedWorkflows
      def self.default(visited=[])
        return nil if visited.include?('ListedWorkflows')
        visited = visited + ['ListedWorkflows']
        [
          Stubs::ListedWorkflow.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ListedWorkflow.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ListedWorkflow
    class ListedWorkflow
      def self.default(visited=[])
        return nil if visited.include?('ListedWorkflow')
        visited = visited + ['ListedWorkflow']
        {
          workflow_id: 'workflow_id',
          description: 'description',
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::ListedWorkflow.new
        data = {}
        data['WorkflowId'] = stub[:workflow_id] unless stub[:workflow_id].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Operation Stubber for SendWorkflowStepState
    class SendWorkflowStepState
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

    # Operation Stubber for StartServer
    class StartServer
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

    # Operation Stubber for StopServer
    class StopServer
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

    # Operation Stubber for TestIdentityProvider
    class TestIdentityProvider
      def self.default(visited=[])
        {
          response: 'response',
          status_code: 1,
          message: 'message',
          url: 'url',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Response'] = stub[:response] unless stub[:response].nil?
        data['StatusCode'] = stub[:status_code] unless stub[:status_code].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['Url'] = stub[:url] unless stub[:url].nil?
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

    # Operation Stubber for UpdateAccess
    class UpdateAccess
      def self.default(visited=[])
        {
          server_id: 'server_id',
          external_id: 'external_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ServerId'] = stub[:server_id] unless stub[:server_id].nil?
        data['ExternalId'] = stub[:external_id] unless stub[:external_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateServer
    class UpdateServer
      def self.default(visited=[])
        {
          server_id: 'server_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ServerId'] = stub[:server_id] unless stub[:server_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateUser
    class UpdateUser
      def self.default(visited=[])
        {
          server_id: 'server_id',
          user_name: 'user_name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ServerId'] = stub[:server_id] unless stub[:server_id].nil?
        data['UserName'] = stub[:user_name] unless stub[:user_name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
