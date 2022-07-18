# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::Transfer
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AddressAllocationIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CopyStepDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CopyStepDetails, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        InputFileLocation.validate!(input[:destination_file_location], context: "#{context}[:destination_file_location]") unless input[:destination_file_location].nil?
        Hearth::Validator.validate!(input[:overwrite_existing], ::String, context: "#{context}[:overwrite_existing]")
        Hearth::Validator.validate!(input[:source_file_location], ::String, context: "#{context}[:source_file_location]")
      end
    end

    class CreateAccessInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAccessInput, context: context)
        Hearth::Validator.validate!(input[:home_directory], ::String, context: "#{context}[:home_directory]")
        Hearth::Validator.validate!(input[:home_directory_type], ::String, context: "#{context}[:home_directory_type]")
        HomeDirectoryMappings.validate!(input[:home_directory_mappings], context: "#{context}[:home_directory_mappings]") unless input[:home_directory_mappings].nil?
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
        PosixProfile.validate!(input[:posix_profile], context: "#{context}[:posix_profile]") unless input[:posix_profile].nil?
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
        Hearth::Validator.validate!(input[:server_id], ::String, context: "#{context}[:server_id]")
        Hearth::Validator.validate!(input[:external_id], ::String, context: "#{context}[:external_id]")
      end
    end

    class CreateAccessOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAccessOutput, context: context)
        Hearth::Validator.validate!(input[:server_id], ::String, context: "#{context}[:server_id]")
        Hearth::Validator.validate!(input[:external_id], ::String, context: "#{context}[:external_id]")
      end
    end

    class CreateServerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateServerInput, context: context)
        Hearth::Validator.validate!(input[:certificate], ::String, context: "#{context}[:certificate]")
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        EndpointDetails.validate!(input[:endpoint_details], context: "#{context}[:endpoint_details]") unless input[:endpoint_details].nil?
        Hearth::Validator.validate!(input[:endpoint_type], ::String, context: "#{context}[:endpoint_type]")
        Hearth::Validator.validate!(input[:host_key], ::String, context: "#{context}[:host_key]")
        IdentityProviderDetails.validate!(input[:identity_provider_details], context: "#{context}[:identity_provider_details]") unless input[:identity_provider_details].nil?
        Hearth::Validator.validate!(input[:identity_provider_type], ::String, context: "#{context}[:identity_provider_type]")
        Hearth::Validator.validate!(input[:logging_role], ::String, context: "#{context}[:logging_role]")
        Hearth::Validator.validate!(input[:post_authentication_login_banner], ::String, context: "#{context}[:post_authentication_login_banner]")
        Hearth::Validator.validate!(input[:pre_authentication_login_banner], ::String, context: "#{context}[:pre_authentication_login_banner]")
        Protocols.validate!(input[:protocols], context: "#{context}[:protocols]") unless input[:protocols].nil?
        ProtocolDetails.validate!(input[:protocol_details], context: "#{context}[:protocol_details]") unless input[:protocol_details].nil?
        Hearth::Validator.validate!(input[:security_policy_name], ::String, context: "#{context}[:security_policy_name]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        WorkflowDetails.validate!(input[:workflow_details], context: "#{context}[:workflow_details]") unless input[:workflow_details].nil?
      end
    end

    class CreateServerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateServerOutput, context: context)
        Hearth::Validator.validate!(input[:server_id], ::String, context: "#{context}[:server_id]")
      end
    end

    class CreateUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUserInput, context: context)
        Hearth::Validator.validate!(input[:home_directory], ::String, context: "#{context}[:home_directory]")
        Hearth::Validator.validate!(input[:home_directory_type], ::String, context: "#{context}[:home_directory_type]")
        HomeDirectoryMappings.validate!(input[:home_directory_mappings], context: "#{context}[:home_directory_mappings]") unless input[:home_directory_mappings].nil?
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
        PosixProfile.validate!(input[:posix_profile], context: "#{context}[:posix_profile]") unless input[:posix_profile].nil?
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
        Hearth::Validator.validate!(input[:server_id], ::String, context: "#{context}[:server_id]")
        Hearth::Validator.validate!(input[:ssh_public_key_body], ::String, context: "#{context}[:ssh_public_key_body]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
      end
    end

    class CreateUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUserOutput, context: context)
        Hearth::Validator.validate!(input[:server_id], ::String, context: "#{context}[:server_id]")
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
      end
    end

    class CreateWorkflowInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateWorkflowInput, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        WorkflowSteps.validate!(input[:steps], context: "#{context}[:steps]") unless input[:steps].nil?
        WorkflowSteps.validate!(input[:on_exception_steps], context: "#{context}[:on_exception_steps]") unless input[:on_exception_steps].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateWorkflowOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateWorkflowOutput, context: context)
        Hearth::Validator.validate!(input[:workflow_id], ::String, context: "#{context}[:workflow_id]")
      end
    end

    class CustomStepDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomStepDetails, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:target], ::String, context: "#{context}[:target]")
        Hearth::Validator.validate!(input[:timeout_seconds], ::Integer, context: "#{context}[:timeout_seconds]")
        Hearth::Validator.validate!(input[:source_file_location], ::String, context: "#{context}[:source_file_location]")
      end
    end

    class DeleteAccessInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAccessInput, context: context)
        Hearth::Validator.validate!(input[:server_id], ::String, context: "#{context}[:server_id]")
        Hearth::Validator.validate!(input[:external_id], ::String, context: "#{context}[:external_id]")
      end
    end

    class DeleteAccessOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAccessOutput, context: context)
      end
    end

    class DeleteServerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteServerInput, context: context)
        Hearth::Validator.validate!(input[:server_id], ::String, context: "#{context}[:server_id]")
      end
    end

    class DeleteServerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteServerOutput, context: context)
      end
    end

    class DeleteSshPublicKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSshPublicKeyInput, context: context)
        Hearth::Validator.validate!(input[:server_id], ::String, context: "#{context}[:server_id]")
        Hearth::Validator.validate!(input[:ssh_public_key_id], ::String, context: "#{context}[:ssh_public_key_id]")
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
      end
    end

    class DeleteSshPublicKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSshPublicKeyOutput, context: context)
      end
    end

    class DeleteStepDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteStepDetails, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:source_file_location], ::String, context: "#{context}[:source_file_location]")
      end
    end

    class DeleteUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUserInput, context: context)
        Hearth::Validator.validate!(input[:server_id], ::String, context: "#{context}[:server_id]")
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
      end
    end

    class DeleteUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUserOutput, context: context)
      end
    end

    class DeleteWorkflowInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteWorkflowInput, context: context)
        Hearth::Validator.validate!(input[:workflow_id], ::String, context: "#{context}[:workflow_id]")
      end
    end

    class DeleteWorkflowOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteWorkflowOutput, context: context)
      end
    end

    class DescribeAccessInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAccessInput, context: context)
        Hearth::Validator.validate!(input[:server_id], ::String, context: "#{context}[:server_id]")
        Hearth::Validator.validate!(input[:external_id], ::String, context: "#{context}[:external_id]")
      end
    end

    class DescribeAccessOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAccessOutput, context: context)
        Hearth::Validator.validate!(input[:server_id], ::String, context: "#{context}[:server_id]")
        DescribedAccess.validate!(input[:access], context: "#{context}[:access]") unless input[:access].nil?
      end
    end

    class DescribeExecutionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeExecutionInput, context: context)
        Hearth::Validator.validate!(input[:execution_id], ::String, context: "#{context}[:execution_id]")
        Hearth::Validator.validate!(input[:workflow_id], ::String, context: "#{context}[:workflow_id]")
      end
    end

    class DescribeExecutionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeExecutionOutput, context: context)
        Hearth::Validator.validate!(input[:workflow_id], ::String, context: "#{context}[:workflow_id]")
        DescribedExecution.validate!(input[:execution], context: "#{context}[:execution]") unless input[:execution].nil?
      end
    end

    class DescribeSecurityPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSecurityPolicyInput, context: context)
        Hearth::Validator.validate!(input[:security_policy_name], ::String, context: "#{context}[:security_policy_name]")
      end
    end

    class DescribeSecurityPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSecurityPolicyOutput, context: context)
        DescribedSecurityPolicy.validate!(input[:security_policy], context: "#{context}[:security_policy]") unless input[:security_policy].nil?
      end
    end

    class DescribeServerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeServerInput, context: context)
        Hearth::Validator.validate!(input[:server_id], ::String, context: "#{context}[:server_id]")
      end
    end

    class DescribeServerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeServerOutput, context: context)
        DescribedServer.validate!(input[:server], context: "#{context}[:server]") unless input[:server].nil?
      end
    end

    class DescribeUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeUserInput, context: context)
        Hearth::Validator.validate!(input[:server_id], ::String, context: "#{context}[:server_id]")
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
      end
    end

    class DescribeUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeUserOutput, context: context)
        Hearth::Validator.validate!(input[:server_id], ::String, context: "#{context}[:server_id]")
        DescribedUser.validate!(input[:user], context: "#{context}[:user]") unless input[:user].nil?
      end
    end

    class DescribeWorkflowInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeWorkflowInput, context: context)
        Hearth::Validator.validate!(input[:workflow_id], ::String, context: "#{context}[:workflow_id]")
      end
    end

    class DescribeWorkflowOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeWorkflowOutput, context: context)
        DescribedWorkflow.validate!(input[:workflow], context: "#{context}[:workflow]") unless input[:workflow].nil?
      end
    end

    class DescribedAccess
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribedAccess, context: context)
        Hearth::Validator.validate!(input[:home_directory], ::String, context: "#{context}[:home_directory]")
        HomeDirectoryMappings.validate!(input[:home_directory_mappings], context: "#{context}[:home_directory_mappings]") unless input[:home_directory_mappings].nil?
        Hearth::Validator.validate!(input[:home_directory_type], ::String, context: "#{context}[:home_directory_type]")
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
        PosixProfile.validate!(input[:posix_profile], context: "#{context}[:posix_profile]") unless input[:posix_profile].nil?
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
        Hearth::Validator.validate!(input[:external_id], ::String, context: "#{context}[:external_id]")
      end
    end

    class DescribedExecution
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribedExecution, context: context)
        Hearth::Validator.validate!(input[:execution_id], ::String, context: "#{context}[:execution_id]")
        FileLocation.validate!(input[:initial_file_location], context: "#{context}[:initial_file_location]") unless input[:initial_file_location].nil?
        ServiceMetadata.validate!(input[:service_metadata], context: "#{context}[:service_metadata]") unless input[:service_metadata].nil?
        Hearth::Validator.validate!(input[:execution_role], ::String, context: "#{context}[:execution_role]")
        LoggingConfiguration.validate!(input[:logging_configuration], context: "#{context}[:logging_configuration]") unless input[:logging_configuration].nil?
        PosixProfile.validate!(input[:posix_profile], context: "#{context}[:posix_profile]") unless input[:posix_profile].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        ExecutionResults.validate!(input[:results], context: "#{context}[:results]") unless input[:results].nil?
      end
    end

    class DescribedSecurityPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribedSecurityPolicy, context: context)
        Hearth::Validator.validate!(input[:fips], ::TrueClass, ::FalseClass, context: "#{context}[:fips]")
        Hearth::Validator.validate!(input[:security_policy_name], ::String, context: "#{context}[:security_policy_name]")
        SecurityPolicyOptions.validate!(input[:ssh_ciphers], context: "#{context}[:ssh_ciphers]") unless input[:ssh_ciphers].nil?
        SecurityPolicyOptions.validate!(input[:ssh_kexs], context: "#{context}[:ssh_kexs]") unless input[:ssh_kexs].nil?
        SecurityPolicyOptions.validate!(input[:ssh_macs], context: "#{context}[:ssh_macs]") unless input[:ssh_macs].nil?
        SecurityPolicyOptions.validate!(input[:tls_ciphers], context: "#{context}[:tls_ciphers]") unless input[:tls_ciphers].nil?
      end
    end

    class DescribedServer
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribedServer, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:certificate], ::String, context: "#{context}[:certificate]")
        ProtocolDetails.validate!(input[:protocol_details], context: "#{context}[:protocol_details]") unless input[:protocol_details].nil?
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        EndpointDetails.validate!(input[:endpoint_details], context: "#{context}[:endpoint_details]") unless input[:endpoint_details].nil?
        Hearth::Validator.validate!(input[:endpoint_type], ::String, context: "#{context}[:endpoint_type]")
        Hearth::Validator.validate!(input[:host_key_fingerprint], ::String, context: "#{context}[:host_key_fingerprint]")
        IdentityProviderDetails.validate!(input[:identity_provider_details], context: "#{context}[:identity_provider_details]") unless input[:identity_provider_details].nil?
        Hearth::Validator.validate!(input[:identity_provider_type], ::String, context: "#{context}[:identity_provider_type]")
        Hearth::Validator.validate!(input[:logging_role], ::String, context: "#{context}[:logging_role]")
        Hearth::Validator.validate!(input[:post_authentication_login_banner], ::String, context: "#{context}[:post_authentication_login_banner]")
        Hearth::Validator.validate!(input[:pre_authentication_login_banner], ::String, context: "#{context}[:pre_authentication_login_banner]")
        Protocols.validate!(input[:protocols], context: "#{context}[:protocols]") unless input[:protocols].nil?
        Hearth::Validator.validate!(input[:security_policy_name], ::String, context: "#{context}[:security_policy_name]")
        Hearth::Validator.validate!(input[:server_id], ::String, context: "#{context}[:server_id]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:user_count], ::Integer, context: "#{context}[:user_count]")
        WorkflowDetails.validate!(input[:workflow_details], context: "#{context}[:workflow_details]") unless input[:workflow_details].nil?
      end
    end

    class DescribedUser
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribedUser, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:home_directory], ::String, context: "#{context}[:home_directory]")
        HomeDirectoryMappings.validate!(input[:home_directory_mappings], context: "#{context}[:home_directory_mappings]") unless input[:home_directory_mappings].nil?
        Hearth::Validator.validate!(input[:home_directory_type], ::String, context: "#{context}[:home_directory_type]")
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
        PosixProfile.validate!(input[:posix_profile], context: "#{context}[:posix_profile]") unless input[:posix_profile].nil?
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
        SshPublicKeys.validate!(input[:ssh_public_keys], context: "#{context}[:ssh_public_keys]") unless input[:ssh_public_keys].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
      end
    end

    class DescribedWorkflow
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribedWorkflow, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        WorkflowSteps.validate!(input[:steps], context: "#{context}[:steps]") unless input[:steps].nil?
        WorkflowSteps.validate!(input[:on_exception_steps], context: "#{context}[:on_exception_steps]") unless input[:on_exception_steps].nil?
        Hearth::Validator.validate!(input[:workflow_id], ::String, context: "#{context}[:workflow_id]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class EfsFileLocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EfsFileLocation, context: context)
        Hearth::Validator.validate!(input[:file_system_id], ::String, context: "#{context}[:file_system_id]")
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
      end
    end

    class EndpointDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EndpointDetails, context: context)
        AddressAllocationIds.validate!(input[:address_allocation_ids], context: "#{context}[:address_allocation_ids]") unless input[:address_allocation_ids].nil?
        SubnetIds.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        Hearth::Validator.validate!(input[:vpc_endpoint_id], ::String, context: "#{context}[:vpc_endpoint_id]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        SecurityGroupIds.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
      end
    end

    class ExecutionError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecutionError, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ExecutionResults
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecutionResults, context: context)
        ExecutionStepResults.validate!(input[:steps], context: "#{context}[:steps]") unless input[:steps].nil?
        ExecutionStepResults.validate!(input[:on_exception_steps], context: "#{context}[:on_exception_steps]") unless input[:on_exception_steps].nil?
      end
    end

    class ExecutionStepResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecutionStepResult, context: context)
        Hearth::Validator.validate!(input[:step_type], ::String, context: "#{context}[:step_type]")
        Hearth::Validator.validate!(input[:outputs], ::String, context: "#{context}[:outputs]")
        ExecutionError.validate!(input[:error], context: "#{context}[:error]") unless input[:error].nil?
      end
    end

    class ExecutionStepResults
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ExecutionStepResult.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FileLocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FileLocation, context: context)
        S3FileLocation.validate!(input[:s3_file_location], context: "#{context}[:s3_file_location]") unless input[:s3_file_location].nil?
        EfsFileLocation.validate!(input[:efs_file_location], context: "#{context}[:efs_file_location]") unless input[:efs_file_location].nil?
      end
    end

    class HomeDirectoryMapEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HomeDirectoryMapEntry, context: context)
        Hearth::Validator.validate!(input[:entry], ::String, context: "#{context}[:entry]")
        Hearth::Validator.validate!(input[:target], ::String, context: "#{context}[:target]")
      end
    end

    class HomeDirectoryMappings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          HomeDirectoryMapEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class IdentityProviderDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IdentityProviderDetails, context: context)
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
        Hearth::Validator.validate!(input[:invocation_role], ::String, context: "#{context}[:invocation_role]")
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        Hearth::Validator.validate!(input[:function], ::String, context: "#{context}[:function]")
      end
    end

    class ImportSshPublicKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportSshPublicKeyInput, context: context)
        Hearth::Validator.validate!(input[:server_id], ::String, context: "#{context}[:server_id]")
        Hearth::Validator.validate!(input[:ssh_public_key_body], ::String, context: "#{context}[:ssh_public_key_body]")
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
      end
    end

    class ImportSshPublicKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportSshPublicKeyOutput, context: context)
        Hearth::Validator.validate!(input[:server_id], ::String, context: "#{context}[:server_id]")
        Hearth::Validator.validate!(input[:ssh_public_key_id], ::String, context: "#{context}[:ssh_public_key_id]")
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
      end
    end

    class InputFileLocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputFileLocation, context: context)
        S3InputFileLocation.validate!(input[:s3_file_location], context: "#{context}[:s3_file_location]") unless input[:s3_file_location].nil?
        EfsFileLocation.validate!(input[:efs_file_location], context: "#{context}[:efs_file_location]") unless input[:efs_file_location].nil?
      end
    end

    class InternalServiceError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServiceError, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidNextTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidNextTokenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListAccessesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAccessesInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:server_id], ::String, context: "#{context}[:server_id]")
      end
    end

    class ListAccessesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAccessesOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:server_id], ::String, context: "#{context}[:server_id]")
        ListedAccesses.validate!(input[:accesses], context: "#{context}[:accesses]") unless input[:accesses].nil?
      end
    end

    class ListExecutionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListExecutionsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:workflow_id], ::String, context: "#{context}[:workflow_id]")
      end
    end

    class ListExecutionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListExecutionsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:workflow_id], ::String, context: "#{context}[:workflow_id]")
        ListedExecutions.validate!(input[:executions], context: "#{context}[:executions]") unless input[:executions].nil?
      end
    end

    class ListSecurityPoliciesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSecurityPoliciesInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSecurityPoliciesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSecurityPoliciesOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        SecurityPolicyNames.validate!(input[:security_policy_names], context: "#{context}[:security_policy_names]") unless input[:security_policy_names].nil?
      end
    end

    class ListServersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListServersInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListServersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListServersOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        ListedServers.validate!(input[:servers], context: "#{context}[:servers]") unless input[:servers].nil?
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ListUsersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListUsersInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:server_id], ::String, context: "#{context}[:server_id]")
      end
    end

    class ListUsersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListUsersOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:server_id], ::String, context: "#{context}[:server_id]")
        ListedUsers.validate!(input[:users], context: "#{context}[:users]") unless input[:users].nil?
      end
    end

    class ListWorkflowsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListWorkflowsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListWorkflowsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListWorkflowsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        ListedWorkflows.validate!(input[:workflows], context: "#{context}[:workflows]") unless input[:workflows].nil?
      end
    end

    class ListedAccess
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListedAccess, context: context)
        Hearth::Validator.validate!(input[:home_directory], ::String, context: "#{context}[:home_directory]")
        Hearth::Validator.validate!(input[:home_directory_type], ::String, context: "#{context}[:home_directory_type]")
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
        Hearth::Validator.validate!(input[:external_id], ::String, context: "#{context}[:external_id]")
      end
    end

    class ListedAccesses
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ListedAccess.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListedExecution
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListedExecution, context: context)
        Hearth::Validator.validate!(input[:execution_id], ::String, context: "#{context}[:execution_id]")
        FileLocation.validate!(input[:initial_file_location], context: "#{context}[:initial_file_location]") unless input[:initial_file_location].nil?
        ServiceMetadata.validate!(input[:service_metadata], context: "#{context}[:service_metadata]") unless input[:service_metadata].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class ListedExecutions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ListedExecution.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListedServer
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListedServer, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:identity_provider_type], ::String, context: "#{context}[:identity_provider_type]")
        Hearth::Validator.validate!(input[:endpoint_type], ::String, context: "#{context}[:endpoint_type]")
        Hearth::Validator.validate!(input[:logging_role], ::String, context: "#{context}[:logging_role]")
        Hearth::Validator.validate!(input[:server_id], ::String, context: "#{context}[:server_id]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:user_count], ::Integer, context: "#{context}[:user_count]")
      end
    end

    class ListedServers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ListedServer.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListedUser
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListedUser, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:home_directory], ::String, context: "#{context}[:home_directory]")
        Hearth::Validator.validate!(input[:home_directory_type], ::String, context: "#{context}[:home_directory_type]")
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
        Hearth::Validator.validate!(input[:ssh_public_key_count], ::Integer, context: "#{context}[:ssh_public_key_count]")
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
      end
    end

    class ListedUsers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ListedUser.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListedWorkflow
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListedWorkflow, context: context)
        Hearth::Validator.validate!(input[:workflow_id], ::String, context: "#{context}[:workflow_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class ListedWorkflows
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ListedWorkflow.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LoggingConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoggingConfiguration, context: context)
        Hearth::Validator.validate!(input[:logging_role], ::String, context: "#{context}[:logging_role]")
        Hearth::Validator.validate!(input[:log_group_name], ::String, context: "#{context}[:log_group_name]")
      end
    end

    class OnUploadWorkflowDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          WorkflowDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PosixProfile
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PosixProfile, context: context)
        Hearth::Validator.validate!(input[:uid], ::Integer, context: "#{context}[:uid]")
        Hearth::Validator.validate!(input[:gid], ::Integer, context: "#{context}[:gid]")
        SecondaryGids.validate!(input[:secondary_gids], context: "#{context}[:secondary_gids]") unless input[:secondary_gids].nil?
      end
    end

    class ProtocolDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProtocolDetails, context: context)
        Hearth::Validator.validate!(input[:passive_ip], ::String, context: "#{context}[:passive_ip]")
        Hearth::Validator.validate!(input[:tls_session_resumption_mode], ::String, context: "#{context}[:tls_session_resumption_mode]")
        Hearth::Validator.validate!(input[:set_stat_option], ::String, context: "#{context}[:set_stat_option]")
      end
    end

    class Protocols
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ResourceExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource], ::String, context: "#{context}[:resource]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource], ::String, context: "#{context}[:resource]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class S3FileLocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3FileLocation, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate!(input[:etag], ::String, context: "#{context}[:etag]")
      end
    end

    class S3InputFileLocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3InputFileLocation, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
      end
    end

    class S3Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class S3Tags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          S3Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SecondaryGids
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Integer, context: "#{context}[#{index}]")
        end
      end
    end

    class SecurityGroupIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SecurityPolicyNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SecurityPolicyOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SendWorkflowStepStateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendWorkflowStepStateInput, context: context)
        Hearth::Validator.validate!(input[:workflow_id], ::String, context: "#{context}[:workflow_id]")
        Hearth::Validator.validate!(input[:execution_id], ::String, context: "#{context}[:execution_id]")
        Hearth::Validator.validate!(input[:token], ::String, context: "#{context}[:token]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class SendWorkflowStepStateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendWorkflowStepStateOutput, context: context)
      end
    end

    class ServiceMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceMetadata, context: context)
        UserDetails.validate!(input[:user_details], context: "#{context}[:user_details]") unless input[:user_details].nil?
      end
    end

    class ServiceUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceUnavailableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SshPublicKey
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SshPublicKey, context: context)
        Hearth::Validator.validate!(input[:date_imported], ::Time, context: "#{context}[:date_imported]")
        Hearth::Validator.validate!(input[:ssh_public_key_body], ::String, context: "#{context}[:ssh_public_key_body]")
        Hearth::Validator.validate!(input[:ssh_public_key_id], ::String, context: "#{context}[:ssh_public_key_id]")
      end
    end

    class SshPublicKeys
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SshPublicKey.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StartServerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartServerInput, context: context)
        Hearth::Validator.validate!(input[:server_id], ::String, context: "#{context}[:server_id]")
      end
    end

    class StartServerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartServerOutput, context: context)
      end
    end

    class StopServerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopServerInput, context: context)
        Hearth::Validator.validate!(input[:server_id], ::String, context: "#{context}[:server_id]")
      end
    end

    class StopServerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopServerOutput, context: context)
      end
    end

    class SubnetIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagKeys
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TagStepDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagStepDetails, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        S3Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:source_file_location], ::String, context: "#{context}[:source_file_location]")
      end
    end

    class Tags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TestIdentityProviderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestIdentityProviderInput, context: context)
        Hearth::Validator.validate!(input[:server_id], ::String, context: "#{context}[:server_id]")
        Hearth::Validator.validate!(input[:server_protocol], ::String, context: "#{context}[:server_protocol]")
        Hearth::Validator.validate!(input[:source_ip], ::String, context: "#{context}[:source_ip]")
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:user_password], ::String, context: "#{context}[:user_password]")
      end
    end

    class TestIdentityProviderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestIdentityProviderOutput, context: context)
        Hearth::Validator.validate!(input[:response], ::String, context: "#{context}[:response]")
        Hearth::Validator.validate!(input[:status_code], ::Integer, context: "#{context}[:status_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:retry_after_seconds], ::String, context: "#{context}[:retry_after_seconds]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        TagKeys.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateAccessInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAccessInput, context: context)
        Hearth::Validator.validate!(input[:home_directory], ::String, context: "#{context}[:home_directory]")
        Hearth::Validator.validate!(input[:home_directory_type], ::String, context: "#{context}[:home_directory_type]")
        HomeDirectoryMappings.validate!(input[:home_directory_mappings], context: "#{context}[:home_directory_mappings]") unless input[:home_directory_mappings].nil?
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
        PosixProfile.validate!(input[:posix_profile], context: "#{context}[:posix_profile]") unless input[:posix_profile].nil?
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
        Hearth::Validator.validate!(input[:server_id], ::String, context: "#{context}[:server_id]")
        Hearth::Validator.validate!(input[:external_id], ::String, context: "#{context}[:external_id]")
      end
    end

    class UpdateAccessOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAccessOutput, context: context)
        Hearth::Validator.validate!(input[:server_id], ::String, context: "#{context}[:server_id]")
        Hearth::Validator.validate!(input[:external_id], ::String, context: "#{context}[:external_id]")
      end
    end

    class UpdateServerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateServerInput, context: context)
        Hearth::Validator.validate!(input[:certificate], ::String, context: "#{context}[:certificate]")
        ProtocolDetails.validate!(input[:protocol_details], context: "#{context}[:protocol_details]") unless input[:protocol_details].nil?
        EndpointDetails.validate!(input[:endpoint_details], context: "#{context}[:endpoint_details]") unless input[:endpoint_details].nil?
        Hearth::Validator.validate!(input[:endpoint_type], ::String, context: "#{context}[:endpoint_type]")
        Hearth::Validator.validate!(input[:host_key], ::String, context: "#{context}[:host_key]")
        IdentityProviderDetails.validate!(input[:identity_provider_details], context: "#{context}[:identity_provider_details]") unless input[:identity_provider_details].nil?
        Hearth::Validator.validate!(input[:logging_role], ::String, context: "#{context}[:logging_role]")
        Hearth::Validator.validate!(input[:post_authentication_login_banner], ::String, context: "#{context}[:post_authentication_login_banner]")
        Hearth::Validator.validate!(input[:pre_authentication_login_banner], ::String, context: "#{context}[:pre_authentication_login_banner]")
        Protocols.validate!(input[:protocols], context: "#{context}[:protocols]") unless input[:protocols].nil?
        Hearth::Validator.validate!(input[:security_policy_name], ::String, context: "#{context}[:security_policy_name]")
        Hearth::Validator.validate!(input[:server_id], ::String, context: "#{context}[:server_id]")
        WorkflowDetails.validate!(input[:workflow_details], context: "#{context}[:workflow_details]") unless input[:workflow_details].nil?
      end
    end

    class UpdateServerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateServerOutput, context: context)
        Hearth::Validator.validate!(input[:server_id], ::String, context: "#{context}[:server_id]")
      end
    end

    class UpdateUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateUserInput, context: context)
        Hearth::Validator.validate!(input[:home_directory], ::String, context: "#{context}[:home_directory]")
        Hearth::Validator.validate!(input[:home_directory_type], ::String, context: "#{context}[:home_directory_type]")
        HomeDirectoryMappings.validate!(input[:home_directory_mappings], context: "#{context}[:home_directory_mappings]") unless input[:home_directory_mappings].nil?
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
        PosixProfile.validate!(input[:posix_profile], context: "#{context}[:posix_profile]") unless input[:posix_profile].nil?
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
        Hearth::Validator.validate!(input[:server_id], ::String, context: "#{context}[:server_id]")
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
      end
    end

    class UpdateUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateUserOutput, context: context)
        Hearth::Validator.validate!(input[:server_id], ::String, context: "#{context}[:server_id]")
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
      end
    end

    class UserDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserDetails, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:server_id], ::String, context: "#{context}[:server_id]")
        Hearth::Validator.validate!(input[:session_id], ::String, context: "#{context}[:session_id]")
      end
    end

    class WorkflowDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkflowDetail, context: context)
        Hearth::Validator.validate!(input[:workflow_id], ::String, context: "#{context}[:workflow_id]")
        Hearth::Validator.validate!(input[:execution_role], ::String, context: "#{context}[:execution_role]")
      end
    end

    class WorkflowDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkflowDetails, context: context)
        OnUploadWorkflowDetails.validate!(input[:on_upload], context: "#{context}[:on_upload]") unless input[:on_upload].nil?
      end
    end

    class WorkflowStep
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkflowStep, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        CopyStepDetails.validate!(input[:copy_step_details], context: "#{context}[:copy_step_details]") unless input[:copy_step_details].nil?
        CustomStepDetails.validate!(input[:custom_step_details], context: "#{context}[:custom_step_details]") unless input[:custom_step_details].nil?
        DeleteStepDetails.validate!(input[:delete_step_details], context: "#{context}[:delete_step_details]") unless input[:delete_step_details].nil?
        TagStepDetails.validate!(input[:tag_step_details], context: "#{context}[:tag_step_details]") unless input[:tag_step_details].nil?
      end
    end

    class WorkflowSteps
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          WorkflowStep.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
