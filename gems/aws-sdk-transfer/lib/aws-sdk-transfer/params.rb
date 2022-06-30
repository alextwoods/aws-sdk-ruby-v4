# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::Transfer
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module AddressAllocationIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type
      end
    end

    module CopyStepDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CopyStepDetails, context: context)
        type = Types::CopyStepDetails.new
        type.name = params[:name]
        type.destination_file_location = InputFileLocation.build(params[:destination_file_location], context: "#{context}[:destination_file_location]") unless params[:destination_file_location].nil?
        type.overwrite_existing = params[:overwrite_existing]
        type.source_file_location = params[:source_file_location]
        type
      end
    end

    module CreateAccessInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAccessInput, context: context)
        type = Types::CreateAccessInput.new
        type.home_directory = params[:home_directory]
        type.home_directory_type = params[:home_directory_type]
        type.home_directory_mappings = HomeDirectoryMappings.build(params[:home_directory_mappings], context: "#{context}[:home_directory_mappings]") unless params[:home_directory_mappings].nil?
        type.policy = params[:policy]
        type.posix_profile = PosixProfile.build(params[:posix_profile], context: "#{context}[:posix_profile]") unless params[:posix_profile].nil?
        type.role = params[:role]
        type.server_id = params[:server_id]
        type.external_id = params[:external_id]
        type
      end
    end

    module CreateAccessOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAccessOutput, context: context)
        type = Types::CreateAccessOutput.new
        type.server_id = params[:server_id]
        type.external_id = params[:external_id]
        type
      end
    end

    module CreateServerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateServerInput, context: context)
        type = Types::CreateServerInput.new
        type.certificate = params[:certificate]
        type.domain = params[:domain]
        type.endpoint_details = EndpointDetails.build(params[:endpoint_details], context: "#{context}[:endpoint_details]") unless params[:endpoint_details].nil?
        type.endpoint_type = params[:endpoint_type]
        type.host_key = params[:host_key]
        type.identity_provider_details = IdentityProviderDetails.build(params[:identity_provider_details], context: "#{context}[:identity_provider_details]") unless params[:identity_provider_details].nil?
        type.identity_provider_type = params[:identity_provider_type]
        type.logging_role = params[:logging_role]
        type.post_authentication_login_banner = params[:post_authentication_login_banner]
        type.pre_authentication_login_banner = params[:pre_authentication_login_banner]
        type.protocols = Protocols.build(params[:protocols], context: "#{context}[:protocols]") unless params[:protocols].nil?
        type.protocol_details = ProtocolDetails.build(params[:protocol_details], context: "#{context}[:protocol_details]") unless params[:protocol_details].nil?
        type.security_policy_name = params[:security_policy_name]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.workflow_details = WorkflowDetails.build(params[:workflow_details], context: "#{context}[:workflow_details]") unless params[:workflow_details].nil?
        type
      end
    end

    module CreateServerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateServerOutput, context: context)
        type = Types::CreateServerOutput.new
        type.server_id = params[:server_id]
        type
      end
    end

    module CreateUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUserInput, context: context)
        type = Types::CreateUserInput.new
        type.home_directory = params[:home_directory]
        type.home_directory_type = params[:home_directory_type]
        type.home_directory_mappings = HomeDirectoryMappings.build(params[:home_directory_mappings], context: "#{context}[:home_directory_mappings]") unless params[:home_directory_mappings].nil?
        type.policy = params[:policy]
        type.posix_profile = PosixProfile.build(params[:posix_profile], context: "#{context}[:posix_profile]") unless params[:posix_profile].nil?
        type.role = params[:role]
        type.server_id = params[:server_id]
        type.ssh_public_key_body = params[:ssh_public_key_body]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.user_name = params[:user_name]
        type
      end
    end

    module CreateUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUserOutput, context: context)
        type = Types::CreateUserOutput.new
        type.server_id = params[:server_id]
        type.user_name = params[:user_name]
        type
      end
    end

    module CreateWorkflowInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateWorkflowInput, context: context)
        type = Types::CreateWorkflowInput.new
        type.description = params[:description]
        type.steps = WorkflowSteps.build(params[:steps], context: "#{context}[:steps]") unless params[:steps].nil?
        type.on_exception_steps = WorkflowSteps.build(params[:on_exception_steps], context: "#{context}[:on_exception_steps]") unless params[:on_exception_steps].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateWorkflowOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateWorkflowOutput, context: context)
        type = Types::CreateWorkflowOutput.new
        type.workflow_id = params[:workflow_id]
        type
      end
    end

    module CustomStepDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomStepDetails, context: context)
        type = Types::CustomStepDetails.new
        type.name = params[:name]
        type.target = params[:target]
        type.timeout_seconds = params[:timeout_seconds]
        type.source_file_location = params[:source_file_location]
        type
      end
    end

    module DeleteAccessInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAccessInput, context: context)
        type = Types::DeleteAccessInput.new
        type.server_id = params[:server_id]
        type.external_id = params[:external_id]
        type
      end
    end

    module DeleteAccessOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAccessOutput, context: context)
        type = Types::DeleteAccessOutput.new
        type
      end
    end

    module DeleteServerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteServerInput, context: context)
        type = Types::DeleteServerInput.new
        type.server_id = params[:server_id]
        type
      end
    end

    module DeleteServerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteServerOutput, context: context)
        type = Types::DeleteServerOutput.new
        type
      end
    end

    module DeleteSshPublicKeyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSshPublicKeyInput, context: context)
        type = Types::DeleteSshPublicKeyInput.new
        type.server_id = params[:server_id]
        type.ssh_public_key_id = params[:ssh_public_key_id]
        type.user_name = params[:user_name]
        type
      end
    end

    module DeleteSshPublicKeyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSshPublicKeyOutput, context: context)
        type = Types::DeleteSshPublicKeyOutput.new
        type
      end
    end

    module DeleteStepDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteStepDetails, context: context)
        type = Types::DeleteStepDetails.new
        type.name = params[:name]
        type.source_file_location = params[:source_file_location]
        type
      end
    end

    module DeleteUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUserInput, context: context)
        type = Types::DeleteUserInput.new
        type.server_id = params[:server_id]
        type.user_name = params[:user_name]
        type
      end
    end

    module DeleteUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUserOutput, context: context)
        type = Types::DeleteUserOutput.new
        type
      end
    end

    module DeleteWorkflowInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteWorkflowInput, context: context)
        type = Types::DeleteWorkflowInput.new
        type.workflow_id = params[:workflow_id]
        type
      end
    end

    module DeleteWorkflowOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteWorkflowOutput, context: context)
        type = Types::DeleteWorkflowOutput.new
        type
      end
    end

    module DescribeAccessInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAccessInput, context: context)
        type = Types::DescribeAccessInput.new
        type.server_id = params[:server_id]
        type.external_id = params[:external_id]
        type
      end
    end

    module DescribeAccessOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAccessOutput, context: context)
        type = Types::DescribeAccessOutput.new
        type.server_id = params[:server_id]
        type.access = DescribedAccess.build(params[:access], context: "#{context}[:access]") unless params[:access].nil?
        type
      end
    end

    module DescribeExecutionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeExecutionInput, context: context)
        type = Types::DescribeExecutionInput.new
        type.execution_id = params[:execution_id]
        type.workflow_id = params[:workflow_id]
        type
      end
    end

    module DescribeExecutionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeExecutionOutput, context: context)
        type = Types::DescribeExecutionOutput.new
        type.workflow_id = params[:workflow_id]
        type.execution = DescribedExecution.build(params[:execution], context: "#{context}[:execution]") unless params[:execution].nil?
        type
      end
    end

    module DescribeSecurityPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSecurityPolicyInput, context: context)
        type = Types::DescribeSecurityPolicyInput.new
        type.security_policy_name = params[:security_policy_name]
        type
      end
    end

    module DescribeSecurityPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSecurityPolicyOutput, context: context)
        type = Types::DescribeSecurityPolicyOutput.new
        type.security_policy = DescribedSecurityPolicy.build(params[:security_policy], context: "#{context}[:security_policy]") unless params[:security_policy].nil?
        type
      end
    end

    module DescribeServerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeServerInput, context: context)
        type = Types::DescribeServerInput.new
        type.server_id = params[:server_id]
        type
      end
    end

    module DescribeServerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeServerOutput, context: context)
        type = Types::DescribeServerOutput.new
        type.server = DescribedServer.build(params[:server], context: "#{context}[:server]") unless params[:server].nil?
        type
      end
    end

    module DescribeUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeUserInput, context: context)
        type = Types::DescribeUserInput.new
        type.server_id = params[:server_id]
        type.user_name = params[:user_name]
        type
      end
    end

    module DescribeUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeUserOutput, context: context)
        type = Types::DescribeUserOutput.new
        type.server_id = params[:server_id]
        type.user = DescribedUser.build(params[:user], context: "#{context}[:user]") unless params[:user].nil?
        type
      end
    end

    module DescribeWorkflowInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeWorkflowInput, context: context)
        type = Types::DescribeWorkflowInput.new
        type.workflow_id = params[:workflow_id]
        type
      end
    end

    module DescribeWorkflowOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeWorkflowOutput, context: context)
        type = Types::DescribeWorkflowOutput.new
        type.workflow = DescribedWorkflow.build(params[:workflow], context: "#{context}[:workflow]") unless params[:workflow].nil?
        type
      end
    end

    module DescribedAccess
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribedAccess, context: context)
        type = Types::DescribedAccess.new
        type.home_directory = params[:home_directory]
        type.home_directory_mappings = HomeDirectoryMappings.build(params[:home_directory_mappings], context: "#{context}[:home_directory_mappings]") unless params[:home_directory_mappings].nil?
        type.home_directory_type = params[:home_directory_type]
        type.policy = params[:policy]
        type.posix_profile = PosixProfile.build(params[:posix_profile], context: "#{context}[:posix_profile]") unless params[:posix_profile].nil?
        type.role = params[:role]
        type.external_id = params[:external_id]
        type
      end
    end

    module DescribedExecution
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribedExecution, context: context)
        type = Types::DescribedExecution.new
        type.execution_id = params[:execution_id]
        type.initial_file_location = FileLocation.build(params[:initial_file_location], context: "#{context}[:initial_file_location]") unless params[:initial_file_location].nil?
        type.service_metadata = ServiceMetadata.build(params[:service_metadata], context: "#{context}[:service_metadata]") unless params[:service_metadata].nil?
        type.execution_role = params[:execution_role]
        type.logging_configuration = LoggingConfiguration.build(params[:logging_configuration], context: "#{context}[:logging_configuration]") unless params[:logging_configuration].nil?
        type.posix_profile = PosixProfile.build(params[:posix_profile], context: "#{context}[:posix_profile]") unless params[:posix_profile].nil?
        type.status = params[:status]
        type.results = ExecutionResults.build(params[:results], context: "#{context}[:results]") unless params[:results].nil?
        type
      end
    end

    module DescribedSecurityPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribedSecurityPolicy, context: context)
        type = Types::DescribedSecurityPolicy.new
        type.fips = params[:fips]
        type.security_policy_name = params[:security_policy_name]
        type.ssh_ciphers = SecurityPolicyOptions.build(params[:ssh_ciphers], context: "#{context}[:ssh_ciphers]") unless params[:ssh_ciphers].nil?
        type.ssh_kexs = SecurityPolicyOptions.build(params[:ssh_kexs], context: "#{context}[:ssh_kexs]") unless params[:ssh_kexs].nil?
        type.ssh_macs = SecurityPolicyOptions.build(params[:ssh_macs], context: "#{context}[:ssh_macs]") unless params[:ssh_macs].nil?
        type.tls_ciphers = SecurityPolicyOptions.build(params[:tls_ciphers], context: "#{context}[:tls_ciphers]") unless params[:tls_ciphers].nil?
        type
      end
    end

    module DescribedServer
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribedServer, context: context)
        type = Types::DescribedServer.new
        type.arn = params[:arn]
        type.certificate = params[:certificate]
        type.protocol_details = ProtocolDetails.build(params[:protocol_details], context: "#{context}[:protocol_details]") unless params[:protocol_details].nil?
        type.domain = params[:domain]
        type.endpoint_details = EndpointDetails.build(params[:endpoint_details], context: "#{context}[:endpoint_details]") unless params[:endpoint_details].nil?
        type.endpoint_type = params[:endpoint_type]
        type.host_key_fingerprint = params[:host_key_fingerprint]
        type.identity_provider_details = IdentityProviderDetails.build(params[:identity_provider_details], context: "#{context}[:identity_provider_details]") unless params[:identity_provider_details].nil?
        type.identity_provider_type = params[:identity_provider_type]
        type.logging_role = params[:logging_role]
        type.post_authentication_login_banner = params[:post_authentication_login_banner]
        type.pre_authentication_login_banner = params[:pre_authentication_login_banner]
        type.protocols = Protocols.build(params[:protocols], context: "#{context}[:protocols]") unless params[:protocols].nil?
        type.security_policy_name = params[:security_policy_name]
        type.server_id = params[:server_id]
        type.state = params[:state]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.user_count = params[:user_count]
        type.workflow_details = WorkflowDetails.build(params[:workflow_details], context: "#{context}[:workflow_details]") unless params[:workflow_details].nil?
        type
      end
    end

    module DescribedUser
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribedUser, context: context)
        type = Types::DescribedUser.new
        type.arn = params[:arn]
        type.home_directory = params[:home_directory]
        type.home_directory_mappings = HomeDirectoryMappings.build(params[:home_directory_mappings], context: "#{context}[:home_directory_mappings]") unless params[:home_directory_mappings].nil?
        type.home_directory_type = params[:home_directory_type]
        type.policy = params[:policy]
        type.posix_profile = PosixProfile.build(params[:posix_profile], context: "#{context}[:posix_profile]") unless params[:posix_profile].nil?
        type.role = params[:role]
        type.ssh_public_keys = SshPublicKeys.build(params[:ssh_public_keys], context: "#{context}[:ssh_public_keys]") unless params[:ssh_public_keys].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.user_name = params[:user_name]
        type
      end
    end

    module DescribedWorkflow
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribedWorkflow, context: context)
        type = Types::DescribedWorkflow.new
        type.arn = params[:arn]
        type.description = params[:description]
        type.steps = WorkflowSteps.build(params[:steps], context: "#{context}[:steps]") unless params[:steps].nil?
        type.on_exception_steps = WorkflowSteps.build(params[:on_exception_steps], context: "#{context}[:on_exception_steps]") unless params[:on_exception_steps].nil?
        type.workflow_id = params[:workflow_id]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module EfsFileLocation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EfsFileLocation, context: context)
        type = Types::EfsFileLocation.new
        type.file_system_id = params[:file_system_id]
        type.path = params[:path]
        type
      end
    end

    module EndpointDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EndpointDetails, context: context)
        type = Types::EndpointDetails.new
        type.address_allocation_ids = AddressAllocationIds.build(params[:address_allocation_ids], context: "#{context}[:address_allocation_ids]") unless params[:address_allocation_ids].nil?
        type.subnet_ids = SubnetIds.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.vpc_endpoint_id = params[:vpc_endpoint_id]
        type.vpc_id = params[:vpc_id]
        type.security_group_ids = SecurityGroupIds.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type
      end
    end

    module ExecutionError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExecutionError, context: context)
        type = Types::ExecutionError.new
        type.type = params[:type]
        type.message = params[:message]
        type
      end
    end

    module ExecutionResults
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExecutionResults, context: context)
        type = Types::ExecutionResults.new
        type.steps = ExecutionStepResults.build(params[:steps], context: "#{context}[:steps]") unless params[:steps].nil?
        type.on_exception_steps = ExecutionStepResults.build(params[:on_exception_steps], context: "#{context}[:on_exception_steps]") unless params[:on_exception_steps].nil?
        type
      end
    end

    module ExecutionStepResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExecutionStepResult, context: context)
        type = Types::ExecutionStepResult.new
        type.step_type = params[:step_type]
        type.outputs = params[:outputs]
        type.error = ExecutionError.build(params[:error], context: "#{context}[:error]") unless params[:error].nil?
        type
      end
    end

    module ExecutionStepResults
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ExecutionStepResult.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FileLocation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FileLocation, context: context)
        type = Types::FileLocation.new
        type.s3_file_location = S3FileLocation.build(params[:s3_file_location], context: "#{context}[:s3_file_location]") unless params[:s3_file_location].nil?
        type.efs_file_location = EfsFileLocation.build(params[:efs_file_location], context: "#{context}[:efs_file_location]") unless params[:efs_file_location].nil?
        type
      end
    end

    module HomeDirectoryMapEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HomeDirectoryMapEntry, context: context)
        type = Types::HomeDirectoryMapEntry.new
        type.entry = params[:entry]
        type.target = params[:target]
        type
      end
    end

    module HomeDirectoryMappings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << HomeDirectoryMapEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module IdentityProviderDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IdentityProviderDetails, context: context)
        type = Types::IdentityProviderDetails.new
        type.url = params[:url]
        type.invocation_role = params[:invocation_role]
        type.directory_id = params[:directory_id]
        type.function = params[:function]
        type
      end
    end

    module ImportSshPublicKeyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportSshPublicKeyInput, context: context)
        type = Types::ImportSshPublicKeyInput.new
        type.server_id = params[:server_id]
        type.ssh_public_key_body = params[:ssh_public_key_body]
        type.user_name = params[:user_name]
        type
      end
    end

    module ImportSshPublicKeyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportSshPublicKeyOutput, context: context)
        type = Types::ImportSshPublicKeyOutput.new
        type.server_id = params[:server_id]
        type.ssh_public_key_id = params[:ssh_public_key_id]
        type.user_name = params[:user_name]
        type
      end
    end

    module InputFileLocation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputFileLocation, context: context)
        type = Types::InputFileLocation.new
        type.s3_file_location = S3InputFileLocation.build(params[:s3_file_location], context: "#{context}[:s3_file_location]") unless params[:s3_file_location].nil?
        type.efs_file_location = EfsFileLocation.build(params[:efs_file_location], context: "#{context}[:efs_file_location]") unless params[:efs_file_location].nil?
        type
      end
    end

    module InternalServiceError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServiceError, context: context)
        type = Types::InternalServiceError.new
        type.message = params[:message]
        type
      end
    end

    module InvalidNextTokenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidNextTokenException, context: context)
        type = Types::InvalidNextTokenException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRequestException, context: context)
        type = Types::InvalidRequestException.new
        type.message = params[:message]
        type
      end
    end

    module ListAccessesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAccessesInput, context: context)
        type = Types::ListAccessesInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.server_id = params[:server_id]
        type
      end
    end

    module ListAccessesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAccessesOutput, context: context)
        type = Types::ListAccessesOutput.new
        type.next_token = params[:next_token]
        type.server_id = params[:server_id]
        type.accesses = ListedAccesses.build(params[:accesses], context: "#{context}[:accesses]") unless params[:accesses].nil?
        type
      end
    end

    module ListExecutionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListExecutionsInput, context: context)
        type = Types::ListExecutionsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.workflow_id = params[:workflow_id]
        type
      end
    end

    module ListExecutionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListExecutionsOutput, context: context)
        type = Types::ListExecutionsOutput.new
        type.next_token = params[:next_token]
        type.workflow_id = params[:workflow_id]
        type.executions = ListedExecutions.build(params[:executions], context: "#{context}[:executions]") unless params[:executions].nil?
        type
      end
    end

    module ListSecurityPoliciesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSecurityPoliciesInput, context: context)
        type = Types::ListSecurityPoliciesInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSecurityPoliciesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSecurityPoliciesOutput, context: context)
        type = Types::ListSecurityPoliciesOutput.new
        type.next_token = params[:next_token]
        type.security_policy_names = SecurityPolicyNames.build(params[:security_policy_names], context: "#{context}[:security_policy_names]") unless params[:security_policy_names].nil?
        type
      end
    end

    module ListServersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListServersInput, context: context)
        type = Types::ListServersInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListServersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListServersOutput, context: context)
        type = Types::ListServersOutput.new
        type.next_token = params[:next_token]
        type.servers = ListedServers.build(params[:servers], context: "#{context}[:servers]") unless params[:servers].nil?
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.arn = params[:arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.arn = params[:arn]
        type.next_token = params[:next_token]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ListUsersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListUsersInput, context: context)
        type = Types::ListUsersInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.server_id = params[:server_id]
        type
      end
    end

    module ListUsersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListUsersOutput, context: context)
        type = Types::ListUsersOutput.new
        type.next_token = params[:next_token]
        type.server_id = params[:server_id]
        type.users = ListedUsers.build(params[:users], context: "#{context}[:users]") unless params[:users].nil?
        type
      end
    end

    module ListWorkflowsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListWorkflowsInput, context: context)
        type = Types::ListWorkflowsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListWorkflowsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListWorkflowsOutput, context: context)
        type = Types::ListWorkflowsOutput.new
        type.next_token = params[:next_token]
        type.workflows = ListedWorkflows.build(params[:workflows], context: "#{context}[:workflows]") unless params[:workflows].nil?
        type
      end
    end

    module ListedAccess
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListedAccess, context: context)
        type = Types::ListedAccess.new
        type.home_directory = params[:home_directory]
        type.home_directory_type = params[:home_directory_type]
        type.role = params[:role]
        type.external_id = params[:external_id]
        type
      end
    end

    module ListedAccesses
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ListedAccess.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListedExecution
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListedExecution, context: context)
        type = Types::ListedExecution.new
        type.execution_id = params[:execution_id]
        type.initial_file_location = FileLocation.build(params[:initial_file_location], context: "#{context}[:initial_file_location]") unless params[:initial_file_location].nil?
        type.service_metadata = ServiceMetadata.build(params[:service_metadata], context: "#{context}[:service_metadata]") unless params[:service_metadata].nil?
        type.status = params[:status]
        type
      end
    end

    module ListedExecutions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ListedExecution.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListedServer
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListedServer, context: context)
        type = Types::ListedServer.new
        type.arn = params[:arn]
        type.domain = params[:domain]
        type.identity_provider_type = params[:identity_provider_type]
        type.endpoint_type = params[:endpoint_type]
        type.logging_role = params[:logging_role]
        type.server_id = params[:server_id]
        type.state = params[:state]
        type.user_count = params[:user_count]
        type
      end
    end

    module ListedServers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ListedServer.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListedUser
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListedUser, context: context)
        type = Types::ListedUser.new
        type.arn = params[:arn]
        type.home_directory = params[:home_directory]
        type.home_directory_type = params[:home_directory_type]
        type.role = params[:role]
        type.ssh_public_key_count = params[:ssh_public_key_count]
        type.user_name = params[:user_name]
        type
      end
    end

    module ListedUsers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ListedUser.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListedWorkflow
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListedWorkflow, context: context)
        type = Types::ListedWorkflow.new
        type.workflow_id = params[:workflow_id]
        type.description = params[:description]
        type.arn = params[:arn]
        type
      end
    end

    module ListedWorkflows
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ListedWorkflow.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LoggingConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoggingConfiguration, context: context)
        type = Types::LoggingConfiguration.new
        type.logging_role = params[:logging_role]
        type.log_group_name = params[:log_group_name]
        type
      end
    end

    module OnUploadWorkflowDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << WorkflowDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PosixProfile
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PosixProfile, context: context)
        type = Types::PosixProfile.new
        type.uid = params[:uid]
        type.gid = params[:gid]
        type.secondary_gids = SecondaryGids.build(params[:secondary_gids], context: "#{context}[:secondary_gids]") unless params[:secondary_gids].nil?
        type
      end
    end

    module ProtocolDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProtocolDetails, context: context)
        type = Types::ProtocolDetails.new
        type.passive_ip = params[:passive_ip]
        type.tls_session_resumption_mode = params[:tls_session_resumption_mode]
        type.set_stat_option = params[:set_stat_option]
        type
      end
    end

    module Protocols
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ResourceExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceExistsException, context: context)
        type = Types::ResourceExistsException.new
        type.message = params[:message]
        type.resource = params[:resource]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type.resource = params[:resource]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module S3FileLocation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3FileLocation, context: context)
        type = Types::S3FileLocation.new
        type.bucket = params[:bucket]
        type.key = params[:key]
        type.version_id = params[:version_id]
        type.etag = params[:etag]
        type
      end
    end

    module S3InputFileLocation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3InputFileLocation, context: context)
        type = Types::S3InputFileLocation.new
        type.bucket = params[:bucket]
        type.key = params[:key]
        type
      end
    end

    module S3Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Tag, context: context)
        type = Types::S3Tag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module S3Tags
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << S3Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SecondaryGids
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SecurityGroupIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SecurityPolicyNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SecurityPolicyOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SendWorkflowStepStateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendWorkflowStepStateInput, context: context)
        type = Types::SendWorkflowStepStateInput.new
        type.workflow_id = params[:workflow_id]
        type.execution_id = params[:execution_id]
        type.token = params[:token]
        type.status = params[:status]
        type
      end
    end

    module SendWorkflowStepStateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendWorkflowStepStateOutput, context: context)
        type = Types::SendWorkflowStepStateOutput.new
        type
      end
    end

    module ServiceMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceMetadata, context: context)
        type = Types::ServiceMetadata.new
        type.user_details = UserDetails.build(params[:user_details], context: "#{context}[:user_details]") unless params[:user_details].nil?
        type
      end
    end

    module ServiceUnavailableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceUnavailableException, context: context)
        type = Types::ServiceUnavailableException.new
        type.message = params[:message]
        type
      end
    end

    module SshPublicKey
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SshPublicKey, context: context)
        type = Types::SshPublicKey.new
        type.date_imported = params[:date_imported]
        type.ssh_public_key_body = params[:ssh_public_key_body]
        type.ssh_public_key_id = params[:ssh_public_key_id]
        type
      end
    end

    module SshPublicKeys
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SshPublicKey.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StartServerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartServerInput, context: context)
        type = Types::StartServerInput.new
        type.server_id = params[:server_id]
        type
      end
    end

    module StartServerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartServerOutput, context: context)
        type = Types::StartServerOutput.new
        type
      end
    end

    module StopServerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopServerInput, context: context)
        type = Types::StopServerInput.new
        type.server_id = params[:server_id]
        type
      end
    end

    module StopServerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopServerOutput, context: context)
        type = Types::StopServerOutput.new
        type
      end
    end

    module SubnetIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module TagKeys
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.arn = params[:arn]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module TagStepDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagStepDetails, context: context)
        type = Types::TagStepDetails.new
        type.name = params[:name]
        type.tags = S3Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.source_file_location = params[:source_file_location]
        type
      end
    end

    module Tags
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TestIdentityProviderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TestIdentityProviderInput, context: context)
        type = Types::TestIdentityProviderInput.new
        type.server_id = params[:server_id]
        type.server_protocol = params[:server_protocol]
        type.source_ip = params[:source_ip]
        type.user_name = params[:user_name]
        type.user_password = params[:user_password]
        type
      end
    end

    module TestIdentityProviderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TestIdentityProviderOutput, context: context)
        type = Types::TestIdentityProviderOutput.new
        type.response = params[:response]
        type.status_code = params[:status_code]
        type.message = params[:message]
        type.url = params[:url]
        type
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.retry_after_seconds = params[:retry_after_seconds]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.arn = params[:arn]
        type.tag_keys = TagKeys.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module UpdateAccessInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAccessInput, context: context)
        type = Types::UpdateAccessInput.new
        type.home_directory = params[:home_directory]
        type.home_directory_type = params[:home_directory_type]
        type.home_directory_mappings = HomeDirectoryMappings.build(params[:home_directory_mappings], context: "#{context}[:home_directory_mappings]") unless params[:home_directory_mappings].nil?
        type.policy = params[:policy]
        type.posix_profile = PosixProfile.build(params[:posix_profile], context: "#{context}[:posix_profile]") unless params[:posix_profile].nil?
        type.role = params[:role]
        type.server_id = params[:server_id]
        type.external_id = params[:external_id]
        type
      end
    end

    module UpdateAccessOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAccessOutput, context: context)
        type = Types::UpdateAccessOutput.new
        type.server_id = params[:server_id]
        type.external_id = params[:external_id]
        type
      end
    end

    module UpdateServerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateServerInput, context: context)
        type = Types::UpdateServerInput.new
        type.certificate = params[:certificate]
        type.protocol_details = ProtocolDetails.build(params[:protocol_details], context: "#{context}[:protocol_details]") unless params[:protocol_details].nil?
        type.endpoint_details = EndpointDetails.build(params[:endpoint_details], context: "#{context}[:endpoint_details]") unless params[:endpoint_details].nil?
        type.endpoint_type = params[:endpoint_type]
        type.host_key = params[:host_key]
        type.identity_provider_details = IdentityProviderDetails.build(params[:identity_provider_details], context: "#{context}[:identity_provider_details]") unless params[:identity_provider_details].nil?
        type.logging_role = params[:logging_role]
        type.post_authentication_login_banner = params[:post_authentication_login_banner]
        type.pre_authentication_login_banner = params[:pre_authentication_login_banner]
        type.protocols = Protocols.build(params[:protocols], context: "#{context}[:protocols]") unless params[:protocols].nil?
        type.security_policy_name = params[:security_policy_name]
        type.server_id = params[:server_id]
        type.workflow_details = WorkflowDetails.build(params[:workflow_details], context: "#{context}[:workflow_details]") unless params[:workflow_details].nil?
        type
      end
    end

    module UpdateServerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateServerOutput, context: context)
        type = Types::UpdateServerOutput.new
        type.server_id = params[:server_id]
        type
      end
    end

    module UpdateUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateUserInput, context: context)
        type = Types::UpdateUserInput.new
        type.home_directory = params[:home_directory]
        type.home_directory_type = params[:home_directory_type]
        type.home_directory_mappings = HomeDirectoryMappings.build(params[:home_directory_mappings], context: "#{context}[:home_directory_mappings]") unless params[:home_directory_mappings].nil?
        type.policy = params[:policy]
        type.posix_profile = PosixProfile.build(params[:posix_profile], context: "#{context}[:posix_profile]") unless params[:posix_profile].nil?
        type.role = params[:role]
        type.server_id = params[:server_id]
        type.user_name = params[:user_name]
        type
      end
    end

    module UpdateUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateUserOutput, context: context)
        type = Types::UpdateUserOutput.new
        type.server_id = params[:server_id]
        type.user_name = params[:user_name]
        type
      end
    end

    module UserDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserDetails, context: context)
        type = Types::UserDetails.new
        type.user_name = params[:user_name]
        type.server_id = params[:server_id]
        type.session_id = params[:session_id]
        type
      end
    end

    module WorkflowDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkflowDetail, context: context)
        type = Types::WorkflowDetail.new
        type.workflow_id = params[:workflow_id]
        type.execution_role = params[:execution_role]
        type
      end
    end

    module WorkflowDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkflowDetails, context: context)
        type = Types::WorkflowDetails.new
        type.on_upload = OnUploadWorkflowDetails.build(params[:on_upload], context: "#{context}[:on_upload]") unless params[:on_upload].nil?
        type
      end
    end

    module WorkflowStep
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkflowStep, context: context)
        type = Types::WorkflowStep.new
        type.type = params[:type]
        type.copy_step_details = CopyStepDetails.build(params[:copy_step_details], context: "#{context}[:copy_step_details]") unless params[:copy_step_details].nil?
        type.custom_step_details = CustomStepDetails.build(params[:custom_step_details], context: "#{context}[:custom_step_details]") unless params[:custom_step_details].nil?
        type.delete_step_details = DeleteStepDetails.build(params[:delete_step_details], context: "#{context}[:delete_step_details]") unless params[:delete_step_details].nil?
        type.tag_step_details = TagStepDetails.build(params[:tag_step_details], context: "#{context}[:tag_step_details]") unless params[:tag_step_details].nil?
        type
      end
    end

    module WorkflowSteps
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << WorkflowStep.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
