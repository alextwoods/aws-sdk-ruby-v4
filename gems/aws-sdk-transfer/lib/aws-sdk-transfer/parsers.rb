# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Transfer
  module Parsers

    # Operation Parser for CreateAccess
    class CreateAccess
      def self.parse(http_resp)
        data = Types::CreateAccessOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.server_id = map['ServerId']
        data.external_id = map['ExternalId']
        data
      end
    end

    # Error Parser for ResourceExistsException
    class ResourceExistsException
      def self.parse(http_resp)
        data = Types::ResourceExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.resource = map['Resource']
        data.resource_type = map['ResourceType']
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
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ServiceUnavailableException
    class ServiceUnavailableException
      def self.parse(http_resp)
        data = Types::ServiceUnavailableException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.resource = map['Resource']
        data.resource_type = map['ResourceType']
        data
      end
    end

    # Error Parser for InternalServiceError
    class InternalServiceError
      def self.parse(http_resp)
        data = Types::InternalServiceError.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateServer
    class CreateServer
      def self.parse(http_resp)
        data = Types::CreateServerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.server_id = map['ServerId']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.retry_after_seconds = map['RetryAfterSeconds']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateUser
    class CreateUser
      def self.parse(http_resp)
        data = Types::CreateUserOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.server_id = map['ServerId']
        data.user_name = map['UserName']
        data
      end
    end

    # Operation Parser for CreateWorkflow
    class CreateWorkflow
      def self.parse(http_resp)
        data = Types::CreateWorkflowOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.workflow_id = map['WorkflowId']
        data
      end
    end

    # Operation Parser for DeleteAccess
    class DeleteAccess
      def self.parse(http_resp)
        data = Types::DeleteAccessOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteServer
    class DeleteServer
      def self.parse(http_resp)
        data = Types::DeleteServerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteSshPublicKey
    class DeleteSshPublicKey
      def self.parse(http_resp)
        data = Types::DeleteSshPublicKeyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteUser
    class DeleteUser
      def self.parse(http_resp)
        data = Types::DeleteUserOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteWorkflow
    class DeleteWorkflow
      def self.parse(http_resp)
        data = Types::DeleteWorkflowOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DescribeAccess
    class DescribeAccess
      def self.parse(http_resp)
        data = Types::DescribeAccessOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.server_id = map['ServerId']
        data.access = (Parsers::DescribedAccess.parse(map['Access']) unless map['Access'].nil?)
        data
      end
    end

    class DescribedAccess
      def self.parse(map)
        data = Types::DescribedAccess.new
        data.home_directory = map['HomeDirectory']
        data.home_directory_mappings = (Parsers::HomeDirectoryMappings.parse(map['HomeDirectoryMappings']) unless map['HomeDirectoryMappings'].nil?)
        data.home_directory_type = map['HomeDirectoryType']
        data.policy = map['Policy']
        data.posix_profile = (Parsers::PosixProfile.parse(map['PosixProfile']) unless map['PosixProfile'].nil?)
        data.role = map['Role']
        data.external_id = map['ExternalId']
        return data
      end
    end

    class PosixProfile
      def self.parse(map)
        data = Types::PosixProfile.new
        data.uid = map['Uid']
        data.gid = map['Gid']
        data.secondary_gids = (Parsers::SecondaryGids.parse(map['SecondaryGids']) unless map['SecondaryGids'].nil?)
        return data
      end
    end

    class SecondaryGids
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class HomeDirectoryMappings
      def self.parse(list)
        list.map do |value|
          Parsers::HomeDirectoryMapEntry.parse(value) unless value.nil?
        end
      end
    end

    class HomeDirectoryMapEntry
      def self.parse(map)
        data = Types::HomeDirectoryMapEntry.new
        data.entry = map['Entry']
        data.target = map['Target']
        return data
      end
    end

    # Operation Parser for DescribeExecution
    class DescribeExecution
      def self.parse(http_resp)
        data = Types::DescribeExecutionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.workflow_id = map['WorkflowId']
        data.execution = (Parsers::DescribedExecution.parse(map['Execution']) unless map['Execution'].nil?)
        data
      end
    end

    class DescribedExecution
      def self.parse(map)
        data = Types::DescribedExecution.new
        data.execution_id = map['ExecutionId']
        data.initial_file_location = (Parsers::FileLocation.parse(map['InitialFileLocation']) unless map['InitialFileLocation'].nil?)
        data.service_metadata = (Parsers::ServiceMetadata.parse(map['ServiceMetadata']) unless map['ServiceMetadata'].nil?)
        data.execution_role = map['ExecutionRole']
        data.logging_configuration = (Parsers::LoggingConfiguration.parse(map['LoggingConfiguration']) unless map['LoggingConfiguration'].nil?)
        data.posix_profile = (Parsers::PosixProfile.parse(map['PosixProfile']) unless map['PosixProfile'].nil?)
        data.status = map['Status']
        data.results = (Parsers::ExecutionResults.parse(map['Results']) unless map['Results'].nil?)
        return data
      end
    end

    class ExecutionResults
      def self.parse(map)
        data = Types::ExecutionResults.new
        data.steps = (Parsers::ExecutionStepResults.parse(map['Steps']) unless map['Steps'].nil?)
        data.on_exception_steps = (Parsers::ExecutionStepResults.parse(map['OnExceptionSteps']) unless map['OnExceptionSteps'].nil?)
        return data
      end
    end

    class ExecutionStepResults
      def self.parse(list)
        list.map do |value|
          Parsers::ExecutionStepResult.parse(value) unless value.nil?
        end
      end
    end

    class ExecutionStepResult
      def self.parse(map)
        data = Types::ExecutionStepResult.new
        data.step_type = map['StepType']
        data.outputs = map['Outputs']
        data.error = (Parsers::ExecutionError.parse(map['Error']) unless map['Error'].nil?)
        return data
      end
    end

    class ExecutionError
      def self.parse(map)
        data = Types::ExecutionError.new
        data.type = map['Type']
        data.message = map['Message']
        return data
      end
    end

    class LoggingConfiguration
      def self.parse(map)
        data = Types::LoggingConfiguration.new
        data.logging_role = map['LoggingRole']
        data.log_group_name = map['LogGroupName']
        return data
      end
    end

    class ServiceMetadata
      def self.parse(map)
        data = Types::ServiceMetadata.new
        data.user_details = (Parsers::UserDetails.parse(map['UserDetails']) unless map['UserDetails'].nil?)
        return data
      end
    end

    class UserDetails
      def self.parse(map)
        data = Types::UserDetails.new
        data.user_name = map['UserName']
        data.server_id = map['ServerId']
        data.session_id = map['SessionId']
        return data
      end
    end

    class FileLocation
      def self.parse(map)
        data = Types::FileLocation.new
        data.s3_file_location = (Parsers::S3FileLocation.parse(map['S3FileLocation']) unless map['S3FileLocation'].nil?)
        data.efs_file_location = (Parsers::EfsFileLocation.parse(map['EfsFileLocation']) unless map['EfsFileLocation'].nil?)
        return data
      end
    end

    class EfsFileLocation
      def self.parse(map)
        data = Types::EfsFileLocation.new
        data.file_system_id = map['FileSystemId']
        data.path = map['Path']
        return data
      end
    end

    class S3FileLocation
      def self.parse(map)
        data = Types::S3FileLocation.new
        data.bucket = map['Bucket']
        data.key = map['Key']
        data.version_id = map['VersionId']
        data.etag = map['Etag']
        return data
      end
    end

    # Operation Parser for DescribeSecurityPolicy
    class DescribeSecurityPolicy
      def self.parse(http_resp)
        data = Types::DescribeSecurityPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.security_policy = (Parsers::DescribedSecurityPolicy.parse(map['SecurityPolicy']) unless map['SecurityPolicy'].nil?)
        data
      end
    end

    class DescribedSecurityPolicy
      def self.parse(map)
        data = Types::DescribedSecurityPolicy.new
        data.fips = map['Fips']
        data.security_policy_name = map['SecurityPolicyName']
        data.ssh_ciphers = (Parsers::SecurityPolicyOptions.parse(map['SshCiphers']) unless map['SshCiphers'].nil?)
        data.ssh_kexs = (Parsers::SecurityPolicyOptions.parse(map['SshKexs']) unless map['SshKexs'].nil?)
        data.ssh_macs = (Parsers::SecurityPolicyOptions.parse(map['SshMacs']) unless map['SshMacs'].nil?)
        data.tls_ciphers = (Parsers::SecurityPolicyOptions.parse(map['TlsCiphers']) unless map['TlsCiphers'].nil?)
        return data
      end
    end

    class SecurityPolicyOptions
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeServer
    class DescribeServer
      def self.parse(http_resp)
        data = Types::DescribeServerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.server = (Parsers::DescribedServer.parse(map['Server']) unless map['Server'].nil?)
        data
      end
    end

    class DescribedServer
      def self.parse(map)
        data = Types::DescribedServer.new
        data.arn = map['Arn']
        data.certificate = map['Certificate']
        data.protocol_details = (Parsers::ProtocolDetails.parse(map['ProtocolDetails']) unless map['ProtocolDetails'].nil?)
        data.domain = map['Domain']
        data.endpoint_details = (Parsers::EndpointDetails.parse(map['EndpointDetails']) unless map['EndpointDetails'].nil?)
        data.endpoint_type = map['EndpointType']
        data.host_key_fingerprint = map['HostKeyFingerprint']
        data.identity_provider_details = (Parsers::IdentityProviderDetails.parse(map['IdentityProviderDetails']) unless map['IdentityProviderDetails'].nil?)
        data.identity_provider_type = map['IdentityProviderType']
        data.logging_role = map['LoggingRole']
        data.post_authentication_login_banner = map['PostAuthenticationLoginBanner']
        data.pre_authentication_login_banner = map['PreAuthenticationLoginBanner']
        data.protocols = (Parsers::Protocols.parse(map['Protocols']) unless map['Protocols'].nil?)
        data.security_policy_name = map['SecurityPolicyName']
        data.server_id = map['ServerId']
        data.state = map['State']
        data.tags = (Parsers::Tags.parse(map['Tags']) unless map['Tags'].nil?)
        data.user_count = map['UserCount']
        data.workflow_details = (Parsers::WorkflowDetails.parse(map['WorkflowDetails']) unless map['WorkflowDetails'].nil?)
        return data
      end
    end

    class WorkflowDetails
      def self.parse(map)
        data = Types::WorkflowDetails.new
        data.on_upload = (Parsers::OnUploadWorkflowDetails.parse(map['OnUpload']) unless map['OnUpload'].nil?)
        return data
      end
    end

    class OnUploadWorkflowDetails
      def self.parse(list)
        list.map do |value|
          Parsers::WorkflowDetail.parse(value) unless value.nil?
        end
      end
    end

    class WorkflowDetail
      def self.parse(map)
        data = Types::WorkflowDetail.new
        data.workflow_id = map['WorkflowId']
        data.execution_role = map['ExecutionRole']
        return data
      end
    end

    class Tags
      def self.parse(list)
        list.map do |value|
          Parsers::Tag.parse(value) unless value.nil?
        end
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['Key']
        data.value = map['Value']
        return data
      end
    end

    class Protocols
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class IdentityProviderDetails
      def self.parse(map)
        data = Types::IdentityProviderDetails.new
        data.url = map['Url']
        data.invocation_role = map['InvocationRole']
        data.directory_id = map['DirectoryId']
        data.function = map['Function']
        return data
      end
    end

    class EndpointDetails
      def self.parse(map)
        data = Types::EndpointDetails.new
        data.address_allocation_ids = (Parsers::AddressAllocationIds.parse(map['AddressAllocationIds']) unless map['AddressAllocationIds'].nil?)
        data.subnet_ids = (Parsers::SubnetIds.parse(map['SubnetIds']) unless map['SubnetIds'].nil?)
        data.vpc_endpoint_id = map['VpcEndpointId']
        data.vpc_id = map['VpcId']
        data.security_group_ids = (Parsers::SecurityGroupIds.parse(map['SecurityGroupIds']) unless map['SecurityGroupIds'].nil?)
        return data
      end
    end

    class SecurityGroupIds
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class SubnetIds
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class AddressAllocationIds
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ProtocolDetails
      def self.parse(map)
        data = Types::ProtocolDetails.new
        data.passive_ip = map['PassiveIp']
        data.tls_session_resumption_mode = map['TlsSessionResumptionMode']
        data.set_stat_option = map['SetStatOption']
        return data
      end
    end

    # Operation Parser for DescribeUser
    class DescribeUser
      def self.parse(http_resp)
        data = Types::DescribeUserOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.server_id = map['ServerId']
        data.user = (Parsers::DescribedUser.parse(map['User']) unless map['User'].nil?)
        data
      end
    end

    class DescribedUser
      def self.parse(map)
        data = Types::DescribedUser.new
        data.arn = map['Arn']
        data.home_directory = map['HomeDirectory']
        data.home_directory_mappings = (Parsers::HomeDirectoryMappings.parse(map['HomeDirectoryMappings']) unless map['HomeDirectoryMappings'].nil?)
        data.home_directory_type = map['HomeDirectoryType']
        data.policy = map['Policy']
        data.posix_profile = (Parsers::PosixProfile.parse(map['PosixProfile']) unless map['PosixProfile'].nil?)
        data.role = map['Role']
        data.ssh_public_keys = (Parsers::SshPublicKeys.parse(map['SshPublicKeys']) unless map['SshPublicKeys'].nil?)
        data.tags = (Parsers::Tags.parse(map['Tags']) unless map['Tags'].nil?)
        data.user_name = map['UserName']
        return data
      end
    end

    class SshPublicKeys
      def self.parse(list)
        list.map do |value|
          Parsers::SshPublicKey.parse(value) unless value.nil?
        end
      end
    end

    class SshPublicKey
      def self.parse(map)
        data = Types::SshPublicKey.new
        data.date_imported = Time.at(map['DateImported'].to_i) if map['DateImported']
        data.ssh_public_key_body = map['SshPublicKeyBody']
        data.ssh_public_key_id = map['SshPublicKeyId']
        return data
      end
    end

    # Operation Parser for DescribeWorkflow
    class DescribeWorkflow
      def self.parse(http_resp)
        data = Types::DescribeWorkflowOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.workflow = (Parsers::DescribedWorkflow.parse(map['Workflow']) unless map['Workflow'].nil?)
        data
      end
    end

    class DescribedWorkflow
      def self.parse(map)
        data = Types::DescribedWorkflow.new
        data.arn = map['Arn']
        data.description = map['Description']
        data.steps = (Parsers::WorkflowSteps.parse(map['Steps']) unless map['Steps'].nil?)
        data.on_exception_steps = (Parsers::WorkflowSteps.parse(map['OnExceptionSteps']) unless map['OnExceptionSteps'].nil?)
        data.workflow_id = map['WorkflowId']
        data.tags = (Parsers::Tags.parse(map['Tags']) unless map['Tags'].nil?)
        return data
      end
    end

    class WorkflowSteps
      def self.parse(list)
        list.map do |value|
          Parsers::WorkflowStep.parse(value) unless value.nil?
        end
      end
    end

    class WorkflowStep
      def self.parse(map)
        data = Types::WorkflowStep.new
        data.type = map['Type']
        data.copy_step_details = (Parsers::CopyStepDetails.parse(map['CopyStepDetails']) unless map['CopyStepDetails'].nil?)
        data.custom_step_details = (Parsers::CustomStepDetails.parse(map['CustomStepDetails']) unless map['CustomStepDetails'].nil?)
        data.delete_step_details = (Parsers::DeleteStepDetails.parse(map['DeleteStepDetails']) unless map['DeleteStepDetails'].nil?)
        data.tag_step_details = (Parsers::TagStepDetails.parse(map['TagStepDetails']) unless map['TagStepDetails'].nil?)
        return data
      end
    end

    class TagStepDetails
      def self.parse(map)
        data = Types::TagStepDetails.new
        data.name = map['Name']
        data.tags = (Parsers::S3Tags.parse(map['Tags']) unless map['Tags'].nil?)
        data.source_file_location = map['SourceFileLocation']
        return data
      end
    end

    class S3Tags
      def self.parse(list)
        list.map do |value|
          Parsers::S3Tag.parse(value) unless value.nil?
        end
      end
    end

    class S3Tag
      def self.parse(map)
        data = Types::S3Tag.new
        data.key = map['Key']
        data.value = map['Value']
        return data
      end
    end

    class DeleteStepDetails
      def self.parse(map)
        data = Types::DeleteStepDetails.new
        data.name = map['Name']
        data.source_file_location = map['SourceFileLocation']
        return data
      end
    end

    class CustomStepDetails
      def self.parse(map)
        data = Types::CustomStepDetails.new
        data.name = map['Name']
        data.target = map['Target']
        data.timeout_seconds = map['TimeoutSeconds']
        data.source_file_location = map['SourceFileLocation']
        return data
      end
    end

    class CopyStepDetails
      def self.parse(map)
        data = Types::CopyStepDetails.new
        data.name = map['Name']
        data.destination_file_location = (Parsers::InputFileLocation.parse(map['DestinationFileLocation']) unless map['DestinationFileLocation'].nil?)
        data.overwrite_existing = map['OverwriteExisting']
        data.source_file_location = map['SourceFileLocation']
        return data
      end
    end

    class InputFileLocation
      def self.parse(map)
        data = Types::InputFileLocation.new
        data.s3_file_location = (Parsers::S3InputFileLocation.parse(map['S3FileLocation']) unless map['S3FileLocation'].nil?)
        data.efs_file_location = (Parsers::EfsFileLocation.parse(map['EfsFileLocation']) unless map['EfsFileLocation'].nil?)
        return data
      end
    end

    class S3InputFileLocation
      def self.parse(map)
        data = Types::S3InputFileLocation.new
        data.bucket = map['Bucket']
        data.key = map['Key']
        return data
      end
    end

    # Operation Parser for ImportSshPublicKey
    class ImportSshPublicKey
      def self.parse(http_resp)
        data = Types::ImportSshPublicKeyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.server_id = map['ServerId']
        data.ssh_public_key_id = map['SshPublicKeyId']
        data.user_name = map['UserName']
        data
      end
    end

    # Operation Parser for ListAccesses
    class ListAccesses
      def self.parse(http_resp)
        data = Types::ListAccessesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.server_id = map['ServerId']
        data.accesses = (Parsers::ListedAccesses.parse(map['Accesses']) unless map['Accesses'].nil?)
        data
      end
    end

    class ListedAccesses
      def self.parse(list)
        list.map do |value|
          Parsers::ListedAccess.parse(value) unless value.nil?
        end
      end
    end

    class ListedAccess
      def self.parse(map)
        data = Types::ListedAccess.new
        data.home_directory = map['HomeDirectory']
        data.home_directory_type = map['HomeDirectoryType']
        data.role = map['Role']
        data.external_id = map['ExternalId']
        return data
      end
    end

    # Error Parser for InvalidNextTokenException
    class InvalidNextTokenException
      def self.parse(http_resp)
        data = Types::InvalidNextTokenException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for ListExecutions
    class ListExecutions
      def self.parse(http_resp)
        data = Types::ListExecutionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.workflow_id = map['WorkflowId']
        data.executions = (Parsers::ListedExecutions.parse(map['Executions']) unless map['Executions'].nil?)
        data
      end
    end

    class ListedExecutions
      def self.parse(list)
        list.map do |value|
          Parsers::ListedExecution.parse(value) unless value.nil?
        end
      end
    end

    class ListedExecution
      def self.parse(map)
        data = Types::ListedExecution.new
        data.execution_id = map['ExecutionId']
        data.initial_file_location = (Parsers::FileLocation.parse(map['InitialFileLocation']) unless map['InitialFileLocation'].nil?)
        data.service_metadata = (Parsers::ServiceMetadata.parse(map['ServiceMetadata']) unless map['ServiceMetadata'].nil?)
        data.status = map['Status']
        return data
      end
    end

    # Operation Parser for ListSecurityPolicies
    class ListSecurityPolicies
      def self.parse(http_resp)
        data = Types::ListSecurityPoliciesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.security_policy_names = (Parsers::SecurityPolicyNames.parse(map['SecurityPolicyNames']) unless map['SecurityPolicyNames'].nil?)
        data
      end
    end

    class SecurityPolicyNames
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for ListServers
    class ListServers
      def self.parse(http_resp)
        data = Types::ListServersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.servers = (Parsers::ListedServers.parse(map['Servers']) unless map['Servers'].nil?)
        data
      end
    end

    class ListedServers
      def self.parse(list)
        list.map do |value|
          Parsers::ListedServer.parse(value) unless value.nil?
        end
      end
    end

    class ListedServer
      def self.parse(map)
        data = Types::ListedServer.new
        data.arn = map['Arn']
        data.domain = map['Domain']
        data.identity_provider_type = map['IdentityProviderType']
        data.endpoint_type = map['EndpointType']
        data.logging_role = map['LoggingRole']
        data.server_id = map['ServerId']
        data.state = map['State']
        data.user_count = map['UserCount']
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
        data.arn = map['Arn']
        data.next_token = map['NextToken']
        data.tags = (Parsers::Tags.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    # Operation Parser for ListUsers
    class ListUsers
      def self.parse(http_resp)
        data = Types::ListUsersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.server_id = map['ServerId']
        data.users = (Parsers::ListedUsers.parse(map['Users']) unless map['Users'].nil?)
        data
      end
    end

    class ListedUsers
      def self.parse(list)
        list.map do |value|
          Parsers::ListedUser.parse(value) unless value.nil?
        end
      end
    end

    class ListedUser
      def self.parse(map)
        data = Types::ListedUser.new
        data.arn = map['Arn']
        data.home_directory = map['HomeDirectory']
        data.home_directory_type = map['HomeDirectoryType']
        data.role = map['Role']
        data.ssh_public_key_count = map['SshPublicKeyCount']
        data.user_name = map['UserName']
        return data
      end
    end

    # Operation Parser for ListWorkflows
    class ListWorkflows
      def self.parse(http_resp)
        data = Types::ListWorkflowsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.workflows = (Parsers::ListedWorkflows.parse(map['Workflows']) unless map['Workflows'].nil?)
        data
      end
    end

    class ListedWorkflows
      def self.parse(list)
        list.map do |value|
          Parsers::ListedWorkflow.parse(value) unless value.nil?
        end
      end
    end

    class ListedWorkflow
      def self.parse(map)
        data = Types::ListedWorkflow.new
        data.workflow_id = map['WorkflowId']
        data.description = map['Description']
        data.arn = map['Arn']
        return data
      end
    end

    # Operation Parser for SendWorkflowStepState
    class SendWorkflowStepState
      def self.parse(http_resp)
        data = Types::SendWorkflowStepStateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for StartServer
    class StartServer
      def self.parse(http_resp)
        data = Types::StartServerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for StopServer
    class StopServer
      def self.parse(http_resp)
        data = Types::StopServerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
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

    # Operation Parser for TestIdentityProvider
    class TestIdentityProvider
      def self.parse(http_resp)
        data = Types::TestIdentityProviderOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.response = map['Response']
        data.status_code = map['StatusCode']
        data.message = map['Message']
        data.url = map['Url']
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

    # Operation Parser for UpdateAccess
    class UpdateAccess
      def self.parse(http_resp)
        data = Types::UpdateAccessOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.server_id = map['ServerId']
        data.external_id = map['ExternalId']
        data
      end
    end

    # Operation Parser for UpdateServer
    class UpdateServer
      def self.parse(http_resp)
        data = Types::UpdateServerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.server_id = map['ServerId']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for UpdateUser
    class UpdateUser
      def self.parse(http_resp)
        data = Types::UpdateUserOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.server_id = map['ServerId']
        data.user_name = map['UserName']
        data
      end
    end
  end
end
