# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::Transfer
  module Builders

    # Operation Builder for CreateAccess
    class CreateAccess
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TransferService.CreateAccess'
        data = {}
        data['HomeDirectory'] = input[:home_directory] unless input[:home_directory].nil?
        data['HomeDirectoryType'] = input[:home_directory_type] unless input[:home_directory_type].nil?
        data['HomeDirectoryMappings'] = HomeDirectoryMappings.build(input[:home_directory_mappings]) unless input[:home_directory_mappings].nil?
        data['Policy'] = input[:policy] unless input[:policy].nil?
        data['PosixProfile'] = PosixProfile.build(input[:posix_profile]) unless input[:posix_profile].nil?
        data['Role'] = input[:role] unless input[:role].nil?
        data['ServerId'] = input[:server_id] unless input[:server_id].nil?
        data['ExternalId'] = input[:external_id] unless input[:external_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for PosixProfile
    class PosixProfile
      def self.build(input)
        data = {}
        data['Uid'] = input[:uid] unless input[:uid].nil?
        data['Gid'] = input[:gid] unless input[:gid].nil?
        data['SecondaryGids'] = SecondaryGids.build(input[:secondary_gids]) unless input[:secondary_gids].nil?
        data
      end
    end

    # List Builder for SecondaryGids
    class SecondaryGids
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for HomeDirectoryMappings
    class HomeDirectoryMappings
      def self.build(input)
        data = []
        input.each do |element|
          data << HomeDirectoryMapEntry.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for HomeDirectoryMapEntry
    class HomeDirectoryMapEntry
      def self.build(input)
        data = {}
        data['Entry'] = input[:entry] unless input[:entry].nil?
        data['Target'] = input[:target] unless input[:target].nil?
        data
      end
    end

    # Operation Builder for CreateServer
    class CreateServer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TransferService.CreateServer'
        data = {}
        data['Certificate'] = input[:certificate] unless input[:certificate].nil?
        data['Domain'] = input[:domain] unless input[:domain].nil?
        data['EndpointDetails'] = EndpointDetails.build(input[:endpoint_details]) unless input[:endpoint_details].nil?
        data['EndpointType'] = input[:endpoint_type] unless input[:endpoint_type].nil?
        data['HostKey'] = input[:host_key] unless input[:host_key].nil?
        data['IdentityProviderDetails'] = IdentityProviderDetails.build(input[:identity_provider_details]) unless input[:identity_provider_details].nil?
        data['IdentityProviderType'] = input[:identity_provider_type] unless input[:identity_provider_type].nil?
        data['LoggingRole'] = input[:logging_role] unless input[:logging_role].nil?
        data['PostAuthenticationLoginBanner'] = input[:post_authentication_login_banner] unless input[:post_authentication_login_banner].nil?
        data['PreAuthenticationLoginBanner'] = input[:pre_authentication_login_banner] unless input[:pre_authentication_login_banner].nil?
        data['Protocols'] = Protocols.build(input[:protocols]) unless input[:protocols].nil?
        data['ProtocolDetails'] = ProtocolDetails.build(input[:protocol_details]) unless input[:protocol_details].nil?
        data['SecurityPolicyName'] = input[:security_policy_name] unless input[:security_policy_name].nil?
        data['Tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        data['WorkflowDetails'] = WorkflowDetails.build(input[:workflow_details]) unless input[:workflow_details].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for WorkflowDetails
    class WorkflowDetails
      def self.build(input)
        data = {}
        data['OnUpload'] = OnUploadWorkflowDetails.build(input[:on_upload]) unless input[:on_upload].nil?
        data
      end
    end

    # List Builder for OnUploadWorkflowDetails
    class OnUploadWorkflowDetails
      def self.build(input)
        data = []
        input.each do |element|
          data << WorkflowDetail.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for WorkflowDetail
    class WorkflowDetail
      def self.build(input)
        data = {}
        data['WorkflowId'] = input[:workflow_id] unless input[:workflow_id].nil?
        data['ExecutionRole'] = input[:execution_role] unless input[:execution_role].nil?
        data
      end
    end

    # List Builder for Tags
    class Tags
      def self.build(input)
        data = []
        input.each do |element|
          data << Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Structure Builder for ProtocolDetails
    class ProtocolDetails
      def self.build(input)
        data = {}
        data['PassiveIp'] = input[:passive_ip] unless input[:passive_ip].nil?
        data['TlsSessionResumptionMode'] = input[:tls_session_resumption_mode] unless input[:tls_session_resumption_mode].nil?
        data['SetStatOption'] = input[:set_stat_option] unless input[:set_stat_option].nil?
        data
      end
    end

    # List Builder for Protocols
    class Protocols
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for IdentityProviderDetails
    class IdentityProviderDetails
      def self.build(input)
        data = {}
        data['Url'] = input[:url] unless input[:url].nil?
        data['InvocationRole'] = input[:invocation_role] unless input[:invocation_role].nil?
        data['DirectoryId'] = input[:directory_id] unless input[:directory_id].nil?
        data['Function'] = input[:function] unless input[:function].nil?
        data
      end
    end

    # Structure Builder for EndpointDetails
    class EndpointDetails
      def self.build(input)
        data = {}
        data['AddressAllocationIds'] = AddressAllocationIds.build(input[:address_allocation_ids]) unless input[:address_allocation_ids].nil?
        data['SubnetIds'] = SubnetIds.build(input[:subnet_ids]) unless input[:subnet_ids].nil?
        data['VpcEndpointId'] = input[:vpc_endpoint_id] unless input[:vpc_endpoint_id].nil?
        data['VpcId'] = input[:vpc_id] unless input[:vpc_id].nil?
        data['SecurityGroupIds'] = SecurityGroupIds.build(input[:security_group_ids]) unless input[:security_group_ids].nil?
        data
      end
    end

    # List Builder for SecurityGroupIds
    class SecurityGroupIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for SubnetIds
    class SubnetIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for AddressAllocationIds
    class AddressAllocationIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateUser
    class CreateUser
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TransferService.CreateUser'
        data = {}
        data['HomeDirectory'] = input[:home_directory] unless input[:home_directory].nil?
        data['HomeDirectoryType'] = input[:home_directory_type] unless input[:home_directory_type].nil?
        data['HomeDirectoryMappings'] = HomeDirectoryMappings.build(input[:home_directory_mappings]) unless input[:home_directory_mappings].nil?
        data['Policy'] = input[:policy] unless input[:policy].nil?
        data['PosixProfile'] = PosixProfile.build(input[:posix_profile]) unless input[:posix_profile].nil?
        data['Role'] = input[:role] unless input[:role].nil?
        data['ServerId'] = input[:server_id] unless input[:server_id].nil?
        data['SshPublicKeyBody'] = input[:ssh_public_key_body] unless input[:ssh_public_key_body].nil?
        data['Tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        data['UserName'] = input[:user_name] unless input[:user_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateWorkflow
    class CreateWorkflow
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TransferService.CreateWorkflow'
        data = {}
        data['Description'] = input[:description] unless input[:description].nil?
        data['Steps'] = WorkflowSteps.build(input[:steps]) unless input[:steps].nil?
        data['OnExceptionSteps'] = WorkflowSteps.build(input[:on_exception_steps]) unless input[:on_exception_steps].nil?
        data['Tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for WorkflowSteps
    class WorkflowSteps
      def self.build(input)
        data = []
        input.each do |element|
          data << WorkflowStep.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for WorkflowStep
    class WorkflowStep
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data['CopyStepDetails'] = CopyStepDetails.build(input[:copy_step_details]) unless input[:copy_step_details].nil?
        data['CustomStepDetails'] = CustomStepDetails.build(input[:custom_step_details]) unless input[:custom_step_details].nil?
        data['DeleteStepDetails'] = DeleteStepDetails.build(input[:delete_step_details]) unless input[:delete_step_details].nil?
        data['TagStepDetails'] = TagStepDetails.build(input[:tag_step_details]) unless input[:tag_step_details].nil?
        data
      end
    end

    # Structure Builder for TagStepDetails
    class TagStepDetails
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Tags'] = S3Tags.build(input[:tags]) unless input[:tags].nil?
        data['SourceFileLocation'] = input[:source_file_location] unless input[:source_file_location].nil?
        data
      end
    end

    # List Builder for S3Tags
    class S3Tags
      def self.build(input)
        data = []
        input.each do |element|
          data << S3Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for S3Tag
    class S3Tag
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Structure Builder for DeleteStepDetails
    class DeleteStepDetails
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['SourceFileLocation'] = input[:source_file_location] unless input[:source_file_location].nil?
        data
      end
    end

    # Structure Builder for CustomStepDetails
    class CustomStepDetails
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Target'] = input[:target] unless input[:target].nil?
        data['TimeoutSeconds'] = input[:timeout_seconds] unless input[:timeout_seconds].nil?
        data['SourceFileLocation'] = input[:source_file_location] unless input[:source_file_location].nil?
        data
      end
    end

    # Structure Builder for CopyStepDetails
    class CopyStepDetails
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['DestinationFileLocation'] = InputFileLocation.build(input[:destination_file_location]) unless input[:destination_file_location].nil?
        data['OverwriteExisting'] = input[:overwrite_existing] unless input[:overwrite_existing].nil?
        data['SourceFileLocation'] = input[:source_file_location] unless input[:source_file_location].nil?
        data
      end
    end

    # Structure Builder for InputFileLocation
    class InputFileLocation
      def self.build(input)
        data = {}
        data['S3FileLocation'] = S3InputFileLocation.build(input[:s3_file_location]) unless input[:s3_file_location].nil?
        data['EfsFileLocation'] = EfsFileLocation.build(input[:efs_file_location]) unless input[:efs_file_location].nil?
        data
      end
    end

    # Structure Builder for EfsFileLocation
    class EfsFileLocation
      def self.build(input)
        data = {}
        data['FileSystemId'] = input[:file_system_id] unless input[:file_system_id].nil?
        data['Path'] = input[:path] unless input[:path].nil?
        data
      end
    end

    # Structure Builder for S3InputFileLocation
    class S3InputFileLocation
      def self.build(input)
        data = {}
        data['Bucket'] = input[:bucket] unless input[:bucket].nil?
        data['Key'] = input[:key] unless input[:key].nil?
        data
      end
    end

    # Operation Builder for DeleteAccess
    class DeleteAccess
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TransferService.DeleteAccess'
        data = {}
        data['ServerId'] = input[:server_id] unless input[:server_id].nil?
        data['ExternalId'] = input[:external_id] unless input[:external_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteServer
    class DeleteServer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TransferService.DeleteServer'
        data = {}
        data['ServerId'] = input[:server_id] unless input[:server_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteSshPublicKey
    class DeleteSshPublicKey
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TransferService.DeleteSshPublicKey'
        data = {}
        data['ServerId'] = input[:server_id] unless input[:server_id].nil?
        data['SshPublicKeyId'] = input[:ssh_public_key_id] unless input[:ssh_public_key_id].nil?
        data['UserName'] = input[:user_name] unless input[:user_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteUser
    class DeleteUser
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TransferService.DeleteUser'
        data = {}
        data['ServerId'] = input[:server_id] unless input[:server_id].nil?
        data['UserName'] = input[:user_name] unless input[:user_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteWorkflow
    class DeleteWorkflow
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TransferService.DeleteWorkflow'
        data = {}
        data['WorkflowId'] = input[:workflow_id] unless input[:workflow_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeAccess
    class DescribeAccess
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TransferService.DescribeAccess'
        data = {}
        data['ServerId'] = input[:server_id] unless input[:server_id].nil?
        data['ExternalId'] = input[:external_id] unless input[:external_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeExecution
    class DescribeExecution
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TransferService.DescribeExecution'
        data = {}
        data['ExecutionId'] = input[:execution_id] unless input[:execution_id].nil?
        data['WorkflowId'] = input[:workflow_id] unless input[:workflow_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeSecurityPolicy
    class DescribeSecurityPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TransferService.DescribeSecurityPolicy'
        data = {}
        data['SecurityPolicyName'] = input[:security_policy_name] unless input[:security_policy_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeServer
    class DescribeServer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TransferService.DescribeServer'
        data = {}
        data['ServerId'] = input[:server_id] unless input[:server_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeUser
    class DescribeUser
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TransferService.DescribeUser'
        data = {}
        data['ServerId'] = input[:server_id] unless input[:server_id].nil?
        data['UserName'] = input[:user_name] unless input[:user_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeWorkflow
    class DescribeWorkflow
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TransferService.DescribeWorkflow'
        data = {}
        data['WorkflowId'] = input[:workflow_id] unless input[:workflow_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ImportSshPublicKey
    class ImportSshPublicKey
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TransferService.ImportSshPublicKey'
        data = {}
        data['ServerId'] = input[:server_id] unless input[:server_id].nil?
        data['SshPublicKeyBody'] = input[:ssh_public_key_body] unless input[:ssh_public_key_body].nil?
        data['UserName'] = input[:user_name] unless input[:user_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListAccesses
    class ListAccesses
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TransferService.ListAccesses'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['ServerId'] = input[:server_id] unless input[:server_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListExecutions
    class ListExecutions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TransferService.ListExecutions'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['WorkflowId'] = input[:workflow_id] unless input[:workflow_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListSecurityPolicies
    class ListSecurityPolicies
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TransferService.ListSecurityPolicies'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListServers
    class ListServers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TransferService.ListServers'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TransferService.ListTagsForResource'
        data = {}
        data['Arn'] = input[:arn] unless input[:arn].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListUsers
    class ListUsers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TransferService.ListUsers'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['ServerId'] = input[:server_id] unless input[:server_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListWorkflows
    class ListWorkflows
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TransferService.ListWorkflows'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SendWorkflowStepState
    class SendWorkflowStepState
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TransferService.SendWorkflowStepState'
        data = {}
        data['WorkflowId'] = input[:workflow_id] unless input[:workflow_id].nil?
        data['ExecutionId'] = input[:execution_id] unless input[:execution_id].nil?
        data['Token'] = input[:token] unless input[:token].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartServer
    class StartServer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TransferService.StartServer'
        data = {}
        data['ServerId'] = input[:server_id] unless input[:server_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopServer
    class StopServer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TransferService.StopServer'
        data = {}
        data['ServerId'] = input[:server_id] unless input[:server_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TransferService.TagResource'
        data = {}
        data['Arn'] = input[:arn] unless input[:arn].nil?
        data['Tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TestIdentityProvider
    class TestIdentityProvider
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TransferService.TestIdentityProvider'
        data = {}
        data['ServerId'] = input[:server_id] unless input[:server_id].nil?
        data['ServerProtocol'] = input[:server_protocol] unless input[:server_protocol].nil?
        data['SourceIp'] = input[:source_ip] unless input[:source_ip].nil?
        data['UserName'] = input[:user_name] unless input[:user_name].nil?
        data['UserPassword'] = input[:user_password] unless input[:user_password].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TransferService.UntagResource'
        data = {}
        data['Arn'] = input[:arn] unless input[:arn].nil?
        data['TagKeys'] = TagKeys.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagKeys
    class TagKeys
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateAccess
    class UpdateAccess
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TransferService.UpdateAccess'
        data = {}
        data['HomeDirectory'] = input[:home_directory] unless input[:home_directory].nil?
        data['HomeDirectoryType'] = input[:home_directory_type] unless input[:home_directory_type].nil?
        data['HomeDirectoryMappings'] = HomeDirectoryMappings.build(input[:home_directory_mappings]) unless input[:home_directory_mappings].nil?
        data['Policy'] = input[:policy] unless input[:policy].nil?
        data['PosixProfile'] = PosixProfile.build(input[:posix_profile]) unless input[:posix_profile].nil?
        data['Role'] = input[:role] unless input[:role].nil?
        data['ServerId'] = input[:server_id] unless input[:server_id].nil?
        data['ExternalId'] = input[:external_id] unless input[:external_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateServer
    class UpdateServer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TransferService.UpdateServer'
        data = {}
        data['Certificate'] = input[:certificate] unless input[:certificate].nil?
        data['ProtocolDetails'] = ProtocolDetails.build(input[:protocol_details]) unless input[:protocol_details].nil?
        data['EndpointDetails'] = EndpointDetails.build(input[:endpoint_details]) unless input[:endpoint_details].nil?
        data['EndpointType'] = input[:endpoint_type] unless input[:endpoint_type].nil?
        data['HostKey'] = input[:host_key] unless input[:host_key].nil?
        data['IdentityProviderDetails'] = IdentityProviderDetails.build(input[:identity_provider_details]) unless input[:identity_provider_details].nil?
        data['LoggingRole'] = input[:logging_role] unless input[:logging_role].nil?
        data['PostAuthenticationLoginBanner'] = input[:post_authentication_login_banner] unless input[:post_authentication_login_banner].nil?
        data['PreAuthenticationLoginBanner'] = input[:pre_authentication_login_banner] unless input[:pre_authentication_login_banner].nil?
        data['Protocols'] = Protocols.build(input[:protocols]) unless input[:protocols].nil?
        data['SecurityPolicyName'] = input[:security_policy_name] unless input[:security_policy_name].nil?
        data['ServerId'] = input[:server_id] unless input[:server_id].nil?
        data['WorkflowDetails'] = WorkflowDetails.build(input[:workflow_details]) unless input[:workflow_details].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateUser
    class UpdateUser
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TransferService.UpdateUser'
        data = {}
        data['HomeDirectory'] = input[:home_directory] unless input[:home_directory].nil?
        data['HomeDirectoryType'] = input[:home_directory_type] unless input[:home_directory_type].nil?
        data['HomeDirectoryMappings'] = HomeDirectoryMappings.build(input[:home_directory_mappings]) unless input[:home_directory_mappings].nil?
        data['Policy'] = input[:policy] unless input[:policy].nil?
        data['PosixProfile'] = PosixProfile.build(input[:posix_profile]) unless input[:posix_profile].nil?
        data['Role'] = input[:role] unless input[:role].nil?
        data['ServerId'] = input[:server_id] unless input[:server_id].nil?
        data['UserName'] = input[:user_name] unless input[:user_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
