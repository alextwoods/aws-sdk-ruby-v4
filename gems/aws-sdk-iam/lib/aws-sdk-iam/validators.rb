# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::IAM
  module Validators

    class AccessDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDetail, context: context)
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
        Hearth::Validator.validate!(input[:service_namespace], ::String, context: "#{context}[:service_namespace]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:entity_path], ::String, context: "#{context}[:entity_path]")
        Hearth::Validator.validate!(input[:last_authenticated_time], ::Time, context: "#{context}[:last_authenticated_time]")
        Hearth::Validator.validate!(input[:total_authenticated_entities], ::Integer, context: "#{context}[:total_authenticated_entities]")
      end
    end

    class AccessDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AccessDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AccessKey
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessKey, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:access_key_id], ::String, context: "#{context}[:access_key_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:secret_access_key], ::String, context: "#{context}[:secret_access_key]")
        Hearth::Validator.validate!(input[:create_date], ::Time, context: "#{context}[:create_date]")
      end
    end

    class AccessKeyLastUsed
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessKeyLastUsed, context: context)
        Hearth::Validator.validate!(input[:last_used_date], ::Time, context: "#{context}[:last_used_date]")
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
      end
    end

    class AccessKeyMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessKeyMetadata, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:access_key_id], ::String, context: "#{context}[:access_key_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:create_date], ::Time, context: "#{context}[:create_date]")
      end
    end

    class ActionNameListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AddClientIDToOpenIDConnectProviderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddClientIDToOpenIDConnectProviderInput, context: context)
        Hearth::Validator.validate!(input[:open_id_connect_provider_arn], ::String, context: "#{context}[:open_id_connect_provider_arn]")
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
      end
    end

    class AddClientIDToOpenIDConnectProviderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddClientIDToOpenIDConnectProviderOutput, context: context)
      end
    end

    class AddRoleToInstanceProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddRoleToInstanceProfileInput, context: context)
        Hearth::Validator.validate!(input[:instance_profile_name], ::String, context: "#{context}[:instance_profile_name]")
        Hearth::Validator.validate!(input[:role_name], ::String, context: "#{context}[:role_name]")
      end
    end

    class AddRoleToInstanceProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddRoleToInstanceProfileOutput, context: context)
      end
    end

    class AddUserToGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddUserToGroupInput, context: context)
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
      end
    end

    class AddUserToGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddUserToGroupOutput, context: context)
      end
    end

    class ArnListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AttachGroupPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachGroupPolicyInput, context: context)
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:policy_arn], ::String, context: "#{context}[:policy_arn]")
      end
    end

    class AttachGroupPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachGroupPolicyOutput, context: context)
      end
    end

    class AttachRolePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachRolePolicyInput, context: context)
        Hearth::Validator.validate!(input[:role_name], ::String, context: "#{context}[:role_name]")
        Hearth::Validator.validate!(input[:policy_arn], ::String, context: "#{context}[:policy_arn]")
      end
    end

    class AttachRolePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachRolePolicyOutput, context: context)
      end
    end

    class AttachUserPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachUserPolicyInput, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:policy_arn], ::String, context: "#{context}[:policy_arn]")
      end
    end

    class AttachUserPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachUserPolicyOutput, context: context)
      end
    end

    class AttachedPermissionsBoundary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachedPermissionsBoundary, context: context)
        Hearth::Validator.validate!(input[:permissions_boundary_type], ::String, context: "#{context}[:permissions_boundary_type]")
        Hearth::Validator.validate!(input[:permissions_boundary_arn], ::String, context: "#{context}[:permissions_boundary_arn]")
      end
    end

    class AttachedPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachedPolicy, context: context)
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Hearth::Validator.validate!(input[:policy_arn], ::String, context: "#{context}[:policy_arn]")
      end
    end

    class ChangePasswordInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChangePasswordInput, context: context)
        Hearth::Validator.validate!(input[:old_password], ::String, context: "#{context}[:old_password]")
        Hearth::Validator.validate!(input[:new_password], ::String, context: "#{context}[:new_password]")
      end
    end

    class ChangePasswordOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChangePasswordOutput, context: context)
      end
    end

    class ConcurrentModificationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConcurrentModificationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ContextEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContextEntry, context: context)
        Hearth::Validator.validate!(input[:context_key_name], ::String, context: "#{context}[:context_key_name]")
        Validators::ContextKeyValueListType.validate!(input[:context_key_values], context: "#{context}[:context_key_values]") unless input[:context_key_values].nil?
        Hearth::Validator.validate!(input[:context_key_type], ::String, context: "#{context}[:context_key_type]")
      end
    end

    class ContextEntryListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ContextEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ContextKeyNamesResultListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ContextKeyValueListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CreateAccessKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAccessKeyInput, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
      end
    end

    class CreateAccessKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAccessKeyOutput, context: context)
        Validators::AccessKey.validate!(input[:access_key], context: "#{context}[:access_key]") unless input[:access_key].nil?
      end
    end

    class CreateAccountAliasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAccountAliasInput, context: context)
        Hearth::Validator.validate!(input[:account_alias], ::String, context: "#{context}[:account_alias]")
      end
    end

    class CreateAccountAliasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAccountAliasOutput, context: context)
      end
    end

    class CreateGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGroupInput, context: context)
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
      end
    end

    class CreateGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGroupOutput, context: context)
        Validators::Group.validate!(input[:group], context: "#{context}[:group]") unless input[:group].nil?
      end
    end

    class CreateInstanceProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateInstanceProfileInput, context: context)
        Hearth::Validator.validate!(input[:instance_profile_name], ::String, context: "#{context}[:instance_profile_name]")
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Validators::TagListType.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateInstanceProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateInstanceProfileOutput, context: context)
        Validators::InstanceProfile.validate!(input[:instance_profile], context: "#{context}[:instance_profile]") unless input[:instance_profile].nil?
      end
    end

    class CreateLoginProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLoginProfileInput, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
        Hearth::Validator.validate!(input[:password_reset_required], ::TrueClass, ::FalseClass, context: "#{context}[:password_reset_required]")
      end
    end

    class CreateLoginProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLoginProfileOutput, context: context)
        Validators::LoginProfile.validate!(input[:login_profile], context: "#{context}[:login_profile]") unless input[:login_profile].nil?
      end
    end

    class CreateOpenIDConnectProviderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateOpenIDConnectProviderInput, context: context)
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
        Validators::ClientIDListType.validate!(input[:client_id_list], context: "#{context}[:client_id_list]") unless input[:client_id_list].nil?
        Validators::ThumbprintListType.validate!(input[:thumbprint_list], context: "#{context}[:thumbprint_list]") unless input[:thumbprint_list].nil?
        Validators::TagListType.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateOpenIDConnectProviderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateOpenIDConnectProviderOutput, context: context)
        Hearth::Validator.validate!(input[:open_id_connect_provider_arn], ::String, context: "#{context}[:open_id_connect_provider_arn]")
        Validators::TagListType.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreatePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePolicyInput, context: context)
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Hearth::Validator.validate!(input[:policy_document], ::String, context: "#{context}[:policy_document]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::TagListType.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreatePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePolicyOutput, context: context)
        Validators::Policy.validate!(input[:policy], context: "#{context}[:policy]") unless input[:policy].nil?
      end
    end

    class CreatePolicyVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePolicyVersionInput, context: context)
        Hearth::Validator.validate!(input[:policy_arn], ::String, context: "#{context}[:policy_arn]")
        Hearth::Validator.validate!(input[:policy_document], ::String, context: "#{context}[:policy_document]")
        Hearth::Validator.validate!(input[:set_as_default], ::TrueClass, ::FalseClass, context: "#{context}[:set_as_default]")
      end
    end

    class CreatePolicyVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePolicyVersionOutput, context: context)
        Validators::PolicyVersion.validate!(input[:policy_version], context: "#{context}[:policy_version]") unless input[:policy_version].nil?
      end
    end

    class CreateRoleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRoleInput, context: context)
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Hearth::Validator.validate!(input[:role_name], ::String, context: "#{context}[:role_name]")
        Hearth::Validator.validate!(input[:assume_role_policy_document], ::String, context: "#{context}[:assume_role_policy_document]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:max_session_duration], ::Integer, context: "#{context}[:max_session_duration]")
        Hearth::Validator.validate!(input[:permissions_boundary], ::String, context: "#{context}[:permissions_boundary]")
        Validators::TagListType.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateRoleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRoleOutput, context: context)
        Validators::Role.validate!(input[:role], context: "#{context}[:role]") unless input[:role].nil?
      end
    end

    class CreateSAMLProviderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSAMLProviderInput, context: context)
        Hearth::Validator.validate!(input[:saml_metadata_document], ::String, context: "#{context}[:saml_metadata_document]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::TagListType.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateSAMLProviderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSAMLProviderOutput, context: context)
        Hearth::Validator.validate!(input[:saml_provider_arn], ::String, context: "#{context}[:saml_provider_arn]")
        Validators::TagListType.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateServiceLinkedRoleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateServiceLinkedRoleInput, context: context)
        Hearth::Validator.validate!(input[:aws_service_name], ::String, context: "#{context}[:aws_service_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:custom_suffix], ::String, context: "#{context}[:custom_suffix]")
      end
    end

    class CreateServiceLinkedRoleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateServiceLinkedRoleOutput, context: context)
        Validators::Role.validate!(input[:role], context: "#{context}[:role]") unless input[:role].nil?
      end
    end

    class CreateServiceSpecificCredentialInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateServiceSpecificCredentialInput, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
      end
    end

    class CreateServiceSpecificCredentialOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateServiceSpecificCredentialOutput, context: context)
        Validators::ServiceSpecificCredential.validate!(input[:service_specific_credential], context: "#{context}[:service_specific_credential]") unless input[:service_specific_credential].nil?
      end
    end

    class CreateUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUserInput, context: context)
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:permissions_boundary], ::String, context: "#{context}[:permissions_boundary]")
        Validators::TagListType.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUserOutput, context: context)
        Validators::User.validate!(input[:user], context: "#{context}[:user]") unless input[:user].nil?
      end
    end

    class CreateVirtualMFADeviceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVirtualMFADeviceInput, context: context)
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Hearth::Validator.validate!(input[:virtual_mfa_device_name], ::String, context: "#{context}[:virtual_mfa_device_name]")
        Validators::TagListType.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateVirtualMFADeviceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVirtualMFADeviceOutput, context: context)
        Validators::VirtualMFADevice.validate!(input[:virtual_mfa_device], context: "#{context}[:virtual_mfa_device]") unless input[:virtual_mfa_device].nil?
      end
    end

    class CredentialReportExpiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CredentialReportExpiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CredentialReportNotPresentException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CredentialReportNotPresentException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CredentialReportNotReadyException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CredentialReportNotReadyException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DeactivateMFADeviceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeactivateMFADeviceInput, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:serial_number], ::String, context: "#{context}[:serial_number]")
      end
    end

    class DeactivateMFADeviceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeactivateMFADeviceOutput, context: context)
      end
    end

    class DeleteAccessKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAccessKeyInput, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:access_key_id], ::String, context: "#{context}[:access_key_id]")
      end
    end

    class DeleteAccessKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAccessKeyOutput, context: context)
      end
    end

    class DeleteAccountAliasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAccountAliasInput, context: context)
        Hearth::Validator.validate!(input[:account_alias], ::String, context: "#{context}[:account_alias]")
      end
    end

    class DeleteAccountAliasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAccountAliasOutput, context: context)
      end
    end

    class DeleteAccountPasswordPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAccountPasswordPolicyInput, context: context)
      end
    end

    class DeleteAccountPasswordPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAccountPasswordPolicyOutput, context: context)
      end
    end

    class DeleteConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DeleteGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteGroupInput, context: context)
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
      end
    end

    class DeleteGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteGroupOutput, context: context)
      end
    end

    class DeleteGroupPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteGroupPolicyInput, context: context)
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
      end
    end

    class DeleteGroupPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteGroupPolicyOutput, context: context)
      end
    end

    class DeleteInstanceProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteInstanceProfileInput, context: context)
        Hearth::Validator.validate!(input[:instance_profile_name], ::String, context: "#{context}[:instance_profile_name]")
      end
    end

    class DeleteInstanceProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteInstanceProfileOutput, context: context)
      end
    end

    class DeleteLoginProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLoginProfileInput, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
      end
    end

    class DeleteLoginProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLoginProfileOutput, context: context)
      end
    end

    class DeleteOpenIDConnectProviderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteOpenIDConnectProviderInput, context: context)
        Hearth::Validator.validate!(input[:open_id_connect_provider_arn], ::String, context: "#{context}[:open_id_connect_provider_arn]")
      end
    end

    class DeleteOpenIDConnectProviderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteOpenIDConnectProviderOutput, context: context)
      end
    end

    class DeletePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePolicyInput, context: context)
        Hearth::Validator.validate!(input[:policy_arn], ::String, context: "#{context}[:policy_arn]")
      end
    end

    class DeletePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePolicyOutput, context: context)
      end
    end

    class DeletePolicyVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePolicyVersionInput, context: context)
        Hearth::Validator.validate!(input[:policy_arn], ::String, context: "#{context}[:policy_arn]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
      end
    end

    class DeletePolicyVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePolicyVersionOutput, context: context)
      end
    end

    class DeleteRoleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRoleInput, context: context)
        Hearth::Validator.validate!(input[:role_name], ::String, context: "#{context}[:role_name]")
      end
    end

    class DeleteRoleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRoleOutput, context: context)
      end
    end

    class DeleteRolePermissionsBoundaryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRolePermissionsBoundaryInput, context: context)
        Hearth::Validator.validate!(input[:role_name], ::String, context: "#{context}[:role_name]")
      end
    end

    class DeleteRolePermissionsBoundaryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRolePermissionsBoundaryOutput, context: context)
      end
    end

    class DeleteRolePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRolePolicyInput, context: context)
        Hearth::Validator.validate!(input[:role_name], ::String, context: "#{context}[:role_name]")
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
      end
    end

    class DeleteRolePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRolePolicyOutput, context: context)
      end
    end

    class DeleteSAMLProviderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSAMLProviderInput, context: context)
        Hearth::Validator.validate!(input[:saml_provider_arn], ::String, context: "#{context}[:saml_provider_arn]")
      end
    end

    class DeleteSAMLProviderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSAMLProviderOutput, context: context)
      end
    end

    class DeleteSSHPublicKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSSHPublicKeyInput, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:ssh_public_key_id], ::String, context: "#{context}[:ssh_public_key_id]")
      end
    end

    class DeleteSSHPublicKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSSHPublicKeyOutput, context: context)
      end
    end

    class DeleteServerCertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteServerCertificateInput, context: context)
        Hearth::Validator.validate!(input[:server_certificate_name], ::String, context: "#{context}[:server_certificate_name]")
      end
    end

    class DeleteServerCertificateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteServerCertificateOutput, context: context)
      end
    end

    class DeleteServiceLinkedRoleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteServiceLinkedRoleInput, context: context)
        Hearth::Validator.validate!(input[:role_name], ::String, context: "#{context}[:role_name]")
      end
    end

    class DeleteServiceLinkedRoleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteServiceLinkedRoleOutput, context: context)
        Hearth::Validator.validate!(input[:deletion_task_id], ::String, context: "#{context}[:deletion_task_id]")
      end
    end

    class DeleteServiceSpecificCredentialInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteServiceSpecificCredentialInput, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:service_specific_credential_id], ::String, context: "#{context}[:service_specific_credential_id]")
      end
    end

    class DeleteServiceSpecificCredentialOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteServiceSpecificCredentialOutput, context: context)
      end
    end

    class DeleteSigningCertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSigningCertificateInput, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:certificate_id], ::String, context: "#{context}[:certificate_id]")
      end
    end

    class DeleteSigningCertificateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSigningCertificateOutput, context: context)
      end
    end

    class DeleteUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUserInput, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
      end
    end

    class DeleteUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUserOutput, context: context)
      end
    end

    class DeleteUserPermissionsBoundaryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUserPermissionsBoundaryInput, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
      end
    end

    class DeleteUserPermissionsBoundaryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUserPermissionsBoundaryOutput, context: context)
      end
    end

    class DeleteUserPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUserPolicyInput, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
      end
    end

    class DeleteUserPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUserPolicyOutput, context: context)
      end
    end

    class DeleteVirtualMFADeviceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVirtualMFADeviceInput, context: context)
        Hearth::Validator.validate!(input[:serial_number], ::String, context: "#{context}[:serial_number]")
      end
    end

    class DeleteVirtualMFADeviceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVirtualMFADeviceOutput, context: context)
      end
    end

    class DeletionTaskFailureReasonType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletionTaskFailureReasonType, context: context)
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        Validators::RoleUsageListType.validate!(input[:role_usage_list], context: "#{context}[:role_usage_list]") unless input[:role_usage_list].nil?
      end
    end

    class DetachGroupPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetachGroupPolicyInput, context: context)
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:policy_arn], ::String, context: "#{context}[:policy_arn]")
      end
    end

    class DetachGroupPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetachGroupPolicyOutput, context: context)
      end
    end

    class DetachRolePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetachRolePolicyInput, context: context)
        Hearth::Validator.validate!(input[:role_name], ::String, context: "#{context}[:role_name]")
        Hearth::Validator.validate!(input[:policy_arn], ::String, context: "#{context}[:policy_arn]")
      end
    end

    class DetachRolePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetachRolePolicyOutput, context: context)
      end
    end

    class DetachUserPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetachUserPolicyInput, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:policy_arn], ::String, context: "#{context}[:policy_arn]")
      end
    end

    class DetachUserPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetachUserPolicyOutput, context: context)
      end
    end

    class DuplicateCertificateException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DuplicateCertificateException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DuplicateSSHPublicKeyException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DuplicateSSHPublicKeyException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EnableMFADeviceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableMFADeviceInput, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:serial_number], ::String, context: "#{context}[:serial_number]")
        Hearth::Validator.validate!(input[:authentication_code1], ::String, context: "#{context}[:authentication_code1]")
        Hearth::Validator.validate!(input[:authentication_code2], ::String, context: "#{context}[:authentication_code2]")
      end
    end

    class EnableMFADeviceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableMFADeviceOutput, context: context)
      end
    end

    class EntityAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EntityAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EntityDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EntityDetails, context: context)
        Validators::EntityInfo.validate!(input[:entity_info], context: "#{context}[:entity_info]") unless input[:entity_info].nil?
        Hearth::Validator.validate!(input[:last_authenticated], ::Time, context: "#{context}[:last_authenticated]")
      end
    end

    class EntityInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EntityInfo, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
      end
    end

    class EntityTemporarilyUnmodifiableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EntityTemporarilyUnmodifiableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ErrorDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ErrorDetails, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
      end
    end

    class EvalDecisionDetailsType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class EvaluationResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EvaluationResult, context: context)
        Hearth::Validator.validate!(input[:eval_action_name], ::String, context: "#{context}[:eval_action_name]")
        Hearth::Validator.validate!(input[:eval_resource_name], ::String, context: "#{context}[:eval_resource_name]")
        Hearth::Validator.validate!(input[:eval_decision], ::String, context: "#{context}[:eval_decision]")
        Validators::StatementListType.validate!(input[:matched_statements], context: "#{context}[:matched_statements]") unless input[:matched_statements].nil?
        Validators::ContextKeyNamesResultListType.validate!(input[:missing_context_values], context: "#{context}[:missing_context_values]") unless input[:missing_context_values].nil?
        Validators::OrganizationsDecisionDetail.validate!(input[:organizations_decision_detail], context: "#{context}[:organizations_decision_detail]") unless input[:organizations_decision_detail].nil?
        Validators::PermissionsBoundaryDecisionDetail.validate!(input[:permissions_boundary_decision_detail], context: "#{context}[:permissions_boundary_decision_detail]") unless input[:permissions_boundary_decision_detail].nil?
        Validators::EvalDecisionDetailsType.validate!(input[:eval_decision_details], context: "#{context}[:eval_decision_details]") unless input[:eval_decision_details].nil?
        Validators::ResourceSpecificResultListType.validate!(input[:resource_specific_results], context: "#{context}[:resource_specific_results]") unless input[:resource_specific_results].nil?
      end
    end

    class EvaluationResultsListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EvaluationResult.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GenerateCredentialReportInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GenerateCredentialReportInput, context: context)
      end
    end

    class GenerateCredentialReportOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GenerateCredentialReportOutput, context: context)
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class GenerateOrganizationsAccessReportInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GenerateOrganizationsAccessReportInput, context: context)
        Hearth::Validator.validate!(input[:entity_path], ::String, context: "#{context}[:entity_path]")
        Hearth::Validator.validate!(input[:organizations_policy_id], ::String, context: "#{context}[:organizations_policy_id]")
      end
    end

    class GenerateOrganizationsAccessReportOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GenerateOrganizationsAccessReportOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class GenerateServiceLastAccessedDetailsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GenerateServiceLastAccessedDetailsInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:granularity], ::String, context: "#{context}[:granularity]")
      end
    end

    class GenerateServiceLastAccessedDetailsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GenerateServiceLastAccessedDetailsOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class GetAccessKeyLastUsedInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccessKeyLastUsedInput, context: context)
        Hearth::Validator.validate!(input[:access_key_id], ::String, context: "#{context}[:access_key_id]")
      end
    end

    class GetAccessKeyLastUsedOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccessKeyLastUsedOutput, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Validators::AccessKeyLastUsed.validate!(input[:access_key_last_used], context: "#{context}[:access_key_last_used]") unless input[:access_key_last_used].nil?
      end
    end

    class GetAccountAuthorizationDetailsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccountAuthorizationDetailsInput, context: context)
        Validators::EntityListType.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class GetAccountAuthorizationDetailsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccountAuthorizationDetailsOutput, context: context)
        Validators::UserDetailListType.validate!(input[:user_detail_list], context: "#{context}[:user_detail_list]") unless input[:user_detail_list].nil?
        Validators::GroupDetailListType.validate!(input[:group_detail_list], context: "#{context}[:group_detail_list]") unless input[:group_detail_list].nil?
        Validators::RoleDetailListType.validate!(input[:role_detail_list], context: "#{context}[:role_detail_list]") unless input[:role_detail_list].nil?
        Validators::ManagedPolicyDetailListType.validate!(input[:policies], context: "#{context}[:policies]") unless input[:policies].nil?
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class GetAccountPasswordPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccountPasswordPolicyInput, context: context)
      end
    end

    class GetAccountPasswordPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccountPasswordPolicyOutput, context: context)
        Validators::PasswordPolicy.validate!(input[:password_policy], context: "#{context}[:password_policy]") unless input[:password_policy].nil?
      end
    end

    class GetAccountSummaryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccountSummaryInput, context: context)
      end
    end

    class GetAccountSummaryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccountSummaryOutput, context: context)
        Validators::SummaryMapType.validate!(input[:summary_map], context: "#{context}[:summary_map]") unless input[:summary_map].nil?
      end
    end

    class GetContextKeysForCustomPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetContextKeysForCustomPolicyInput, context: context)
        Validators::SimulationPolicyListType.validate!(input[:policy_input_list], context: "#{context}[:policy_input_list]") unless input[:policy_input_list].nil?
      end
    end

    class GetContextKeysForCustomPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetContextKeysForCustomPolicyOutput, context: context)
        Validators::ContextKeyNamesResultListType.validate!(input[:context_key_names], context: "#{context}[:context_key_names]") unless input[:context_key_names].nil?
      end
    end

    class GetContextKeysForPrincipalPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetContextKeysForPrincipalPolicyInput, context: context)
        Hearth::Validator.validate!(input[:policy_source_arn], ::String, context: "#{context}[:policy_source_arn]")
        Validators::SimulationPolicyListType.validate!(input[:policy_input_list], context: "#{context}[:policy_input_list]") unless input[:policy_input_list].nil?
      end
    end

    class GetContextKeysForPrincipalPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetContextKeysForPrincipalPolicyOutput, context: context)
        Validators::ContextKeyNamesResultListType.validate!(input[:context_key_names], context: "#{context}[:context_key_names]") unless input[:context_key_names].nil?
      end
    end

    class GetCredentialReportInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCredentialReportInput, context: context)
      end
    end

    class GetCredentialReportOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCredentialReportOutput, context: context)
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
        Hearth::Validator.validate!(input[:report_format], ::String, context: "#{context}[:report_format]")
        Hearth::Validator.validate!(input[:generated_time], ::Time, context: "#{context}[:generated_time]")
      end
    end

    class GetGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGroupInput, context: context)
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class GetGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGroupOutput, context: context)
        Validators::Group.validate!(input[:group], context: "#{context}[:group]") unless input[:group].nil?
        Validators::UserListType.validate!(input[:users], context: "#{context}[:users]") unless input[:users].nil?
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class GetGroupPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGroupPolicyInput, context: context)
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
      end
    end

    class GetGroupPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGroupPolicyOutput, context: context)
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Hearth::Validator.validate!(input[:policy_document], ::String, context: "#{context}[:policy_document]")
      end
    end

    class GetInstanceProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInstanceProfileInput, context: context)
        Hearth::Validator.validate!(input[:instance_profile_name], ::String, context: "#{context}[:instance_profile_name]")
      end
    end

    class GetInstanceProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInstanceProfileOutput, context: context)
        Validators::InstanceProfile.validate!(input[:instance_profile], context: "#{context}[:instance_profile]") unless input[:instance_profile].nil?
      end
    end

    class GetLoginProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLoginProfileInput, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
      end
    end

    class GetLoginProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLoginProfileOutput, context: context)
        Validators::LoginProfile.validate!(input[:login_profile], context: "#{context}[:login_profile]") unless input[:login_profile].nil?
      end
    end

    class GetOpenIDConnectProviderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetOpenIDConnectProviderInput, context: context)
        Hearth::Validator.validate!(input[:open_id_connect_provider_arn], ::String, context: "#{context}[:open_id_connect_provider_arn]")
      end
    end

    class GetOpenIDConnectProviderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetOpenIDConnectProviderOutput, context: context)
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
        Validators::ClientIDListType.validate!(input[:client_id_list], context: "#{context}[:client_id_list]") unless input[:client_id_list].nil?
        Validators::ThumbprintListType.validate!(input[:thumbprint_list], context: "#{context}[:thumbprint_list]") unless input[:thumbprint_list].nil?
        Hearth::Validator.validate!(input[:create_date], ::Time, context: "#{context}[:create_date]")
        Validators::TagListType.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class GetOrganizationsAccessReportInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetOrganizationsAccessReportInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:sort_key], ::String, context: "#{context}[:sort_key]")
      end
    end

    class GetOrganizationsAccessReportOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetOrganizationsAccessReportOutput, context: context)
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
        Hearth::Validator.validate!(input[:job_creation_date], ::Time, context: "#{context}[:job_creation_date]")
        Hearth::Validator.validate!(input[:job_completion_date], ::Time, context: "#{context}[:job_completion_date]")
        Hearth::Validator.validate!(input[:number_of_services_accessible], ::Integer, context: "#{context}[:number_of_services_accessible]")
        Hearth::Validator.validate!(input[:number_of_services_not_accessed], ::Integer, context: "#{context}[:number_of_services_not_accessed]")
        Validators::AccessDetails.validate!(input[:access_details], context: "#{context}[:access_details]") unless input[:access_details].nil?
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::ErrorDetails.validate!(input[:error_details], context: "#{context}[:error_details]") unless input[:error_details].nil?
      end
    end

    class GetPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPolicyInput, context: context)
        Hearth::Validator.validate!(input[:policy_arn], ::String, context: "#{context}[:policy_arn]")
      end
    end

    class GetPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPolicyOutput, context: context)
        Validators::Policy.validate!(input[:policy], context: "#{context}[:policy]") unless input[:policy].nil?
      end
    end

    class GetPolicyVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPolicyVersionInput, context: context)
        Hearth::Validator.validate!(input[:policy_arn], ::String, context: "#{context}[:policy_arn]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
      end
    end

    class GetPolicyVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPolicyVersionOutput, context: context)
        Validators::PolicyVersion.validate!(input[:policy_version], context: "#{context}[:policy_version]") unless input[:policy_version].nil?
      end
    end

    class GetRoleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRoleInput, context: context)
        Hearth::Validator.validate!(input[:role_name], ::String, context: "#{context}[:role_name]")
      end
    end

    class GetRoleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRoleOutput, context: context)
        Validators::Role.validate!(input[:role], context: "#{context}[:role]") unless input[:role].nil?
      end
    end

    class GetRolePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRolePolicyInput, context: context)
        Hearth::Validator.validate!(input[:role_name], ::String, context: "#{context}[:role_name]")
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
      end
    end

    class GetRolePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRolePolicyOutput, context: context)
        Hearth::Validator.validate!(input[:role_name], ::String, context: "#{context}[:role_name]")
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Hearth::Validator.validate!(input[:policy_document], ::String, context: "#{context}[:policy_document]")
      end
    end

    class GetSAMLProviderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSAMLProviderInput, context: context)
        Hearth::Validator.validate!(input[:saml_provider_arn], ::String, context: "#{context}[:saml_provider_arn]")
      end
    end

    class GetSAMLProviderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSAMLProviderOutput, context: context)
        Hearth::Validator.validate!(input[:saml_metadata_document], ::String, context: "#{context}[:saml_metadata_document]")
        Hearth::Validator.validate!(input[:create_date], ::Time, context: "#{context}[:create_date]")
        Hearth::Validator.validate!(input[:valid_until], ::Time, context: "#{context}[:valid_until]")
        Validators::TagListType.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class GetSSHPublicKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSSHPublicKeyInput, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:ssh_public_key_id], ::String, context: "#{context}[:ssh_public_key_id]")
        Hearth::Validator.validate!(input[:encoding], ::String, context: "#{context}[:encoding]")
      end
    end

    class GetSSHPublicKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSSHPublicKeyOutput, context: context)
        Validators::SSHPublicKey.validate!(input[:ssh_public_key], context: "#{context}[:ssh_public_key]") unless input[:ssh_public_key].nil?
      end
    end

    class GetServerCertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetServerCertificateInput, context: context)
        Hearth::Validator.validate!(input[:server_certificate_name], ::String, context: "#{context}[:server_certificate_name]")
      end
    end

    class GetServerCertificateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetServerCertificateOutput, context: context)
        Validators::ServerCertificate.validate!(input[:server_certificate], context: "#{context}[:server_certificate]") unless input[:server_certificate].nil?
      end
    end

    class GetServiceLastAccessedDetailsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetServiceLastAccessedDetailsInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class GetServiceLastAccessedDetailsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetServiceLastAccessedDetailsOutput, context: context)
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
        Hearth::Validator.validate!(input[:job_type], ::String, context: "#{context}[:job_type]")
        Hearth::Validator.validate!(input[:job_creation_date], ::Time, context: "#{context}[:job_creation_date]")
        Validators::ServicesLastAccessed.validate!(input[:services_last_accessed], context: "#{context}[:services_last_accessed]") unless input[:services_last_accessed].nil?
        Hearth::Validator.validate!(input[:job_completion_date], ::Time, context: "#{context}[:job_completion_date]")
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::ErrorDetails.validate!(input[:error], context: "#{context}[:error]") unless input[:error].nil?
      end
    end

    class GetServiceLastAccessedDetailsWithEntitiesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetServiceLastAccessedDetailsWithEntitiesInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:service_namespace], ::String, context: "#{context}[:service_namespace]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class GetServiceLastAccessedDetailsWithEntitiesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetServiceLastAccessedDetailsWithEntitiesOutput, context: context)
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
        Hearth::Validator.validate!(input[:job_creation_date], ::Time, context: "#{context}[:job_creation_date]")
        Hearth::Validator.validate!(input[:job_completion_date], ::Time, context: "#{context}[:job_completion_date]")
        Validators::EntityDetailsListType.validate!(input[:entity_details_list], context: "#{context}[:entity_details_list]") unless input[:entity_details_list].nil?
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::ErrorDetails.validate!(input[:error], context: "#{context}[:error]") unless input[:error].nil?
      end
    end

    class GetServiceLinkedRoleDeletionStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetServiceLinkedRoleDeletionStatusInput, context: context)
        Hearth::Validator.validate!(input[:deletion_task_id], ::String, context: "#{context}[:deletion_task_id]")
      end
    end

    class GetServiceLinkedRoleDeletionStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetServiceLinkedRoleDeletionStatusOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::DeletionTaskFailureReasonType.validate!(input[:reason], context: "#{context}[:reason]") unless input[:reason].nil?
      end
    end

    class GetUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUserInput, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
      end
    end

    class GetUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUserOutput, context: context)
        Validators::User.validate!(input[:user], context: "#{context}[:user]") unless input[:user].nil?
      end
    end

    class GetUserPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUserPolicyInput, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
      end
    end

    class GetUserPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUserPolicyOutput, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Hearth::Validator.validate!(input[:policy_document], ::String, context: "#{context}[:policy_document]")
      end
    end

    class Group
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Group, context: context)
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:create_date], ::Time, context: "#{context}[:create_date]")
      end
    end

    class GroupDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GroupDetail, context: context)
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:create_date], ::Time, context: "#{context}[:create_date]")
        Validators::PolicyDetailListType.validate!(input[:group_policy_list], context: "#{context}[:group_policy_list]") unless input[:group_policy_list].nil?
        Validators::AttachedPoliciesListType.validate!(input[:attached_managed_policies], context: "#{context}[:attached_managed_policies]") unless input[:attached_managed_policies].nil?
      end
    end

    class InstanceProfile
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceProfile, context: context)
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Hearth::Validator.validate!(input[:instance_profile_name], ::String, context: "#{context}[:instance_profile_name]")
        Hearth::Validator.validate!(input[:instance_profile_id], ::String, context: "#{context}[:instance_profile_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:create_date], ::Time, context: "#{context}[:create_date]")
        Validators::RoleListType.validate!(input[:roles], context: "#{context}[:roles]") unless input[:roles].nil?
        Validators::TagListType.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class InvalidAuthenticationCodeException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidAuthenticationCodeException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidCertificateException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidCertificateException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidInputException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidInputException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidPublicKeyException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidPublicKeyException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidUserTypeException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidUserTypeException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KeyPairMismatchException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KeyPairMismatchException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListAccessKeysInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAccessKeysInput, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListAccessKeysOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAccessKeysOutput, context: context)
        Validators::AccessKeyMetadataListType.validate!(input[:access_key_metadata], context: "#{context}[:access_key_metadata]") unless input[:access_key_metadata].nil?
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListAccountAliasesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAccountAliasesInput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListAccountAliasesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAccountAliasesOutput, context: context)
        Validators::AccountAliasListType.validate!(input[:account_aliases], context: "#{context}[:account_aliases]") unless input[:account_aliases].nil?
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListAttachedGroupPoliciesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAttachedGroupPoliciesInput, context: context)
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:path_prefix], ::String, context: "#{context}[:path_prefix]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListAttachedGroupPoliciesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAttachedGroupPoliciesOutput, context: context)
        Validators::AttachedPoliciesListType.validate!(input[:attached_policies], context: "#{context}[:attached_policies]") unless input[:attached_policies].nil?
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListAttachedRolePoliciesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAttachedRolePoliciesInput, context: context)
        Hearth::Validator.validate!(input[:role_name], ::String, context: "#{context}[:role_name]")
        Hearth::Validator.validate!(input[:path_prefix], ::String, context: "#{context}[:path_prefix]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListAttachedRolePoliciesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAttachedRolePoliciesOutput, context: context)
        Validators::AttachedPoliciesListType.validate!(input[:attached_policies], context: "#{context}[:attached_policies]") unless input[:attached_policies].nil?
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListAttachedUserPoliciesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAttachedUserPoliciesInput, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:path_prefix], ::String, context: "#{context}[:path_prefix]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListAttachedUserPoliciesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAttachedUserPoliciesOutput, context: context)
        Validators::AttachedPoliciesListType.validate!(input[:attached_policies], context: "#{context}[:attached_policies]") unless input[:attached_policies].nil?
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListEntitiesForPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEntitiesForPolicyInput, context: context)
        Hearth::Validator.validate!(input[:policy_arn], ::String, context: "#{context}[:policy_arn]")
        Hearth::Validator.validate!(input[:entity_filter], ::String, context: "#{context}[:entity_filter]")
        Hearth::Validator.validate!(input[:path_prefix], ::String, context: "#{context}[:path_prefix]")
        Hearth::Validator.validate!(input[:policy_usage_filter], ::String, context: "#{context}[:policy_usage_filter]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListEntitiesForPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEntitiesForPolicyOutput, context: context)
        Validators::PolicyGroupListType.validate!(input[:policy_groups], context: "#{context}[:policy_groups]") unless input[:policy_groups].nil?
        Validators::PolicyUserListType.validate!(input[:policy_users], context: "#{context}[:policy_users]") unless input[:policy_users].nil?
        Validators::PolicyRoleListType.validate!(input[:policy_roles], context: "#{context}[:policy_roles]") unless input[:policy_roles].nil?
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListGroupPoliciesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGroupPoliciesInput, context: context)
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListGroupPoliciesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGroupPoliciesOutput, context: context)
        Validators::PolicyNameListType.validate!(input[:policy_names], context: "#{context}[:policy_names]") unless input[:policy_names].nil?
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListGroupsForUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGroupsForUserInput, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListGroupsForUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGroupsForUserOutput, context: context)
        Validators::GroupListType.validate!(input[:groups], context: "#{context}[:groups]") unless input[:groups].nil?
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGroupsInput, context: context)
        Hearth::Validator.validate!(input[:path_prefix], ::String, context: "#{context}[:path_prefix]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGroupsOutput, context: context)
        Validators::GroupListType.validate!(input[:groups], context: "#{context}[:groups]") unless input[:groups].nil?
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListInstanceProfileTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInstanceProfileTagsInput, context: context)
        Hearth::Validator.validate!(input[:instance_profile_name], ::String, context: "#{context}[:instance_profile_name]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListInstanceProfileTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInstanceProfileTagsOutput, context: context)
        Validators::TagListType.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListInstanceProfilesForRoleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInstanceProfilesForRoleInput, context: context)
        Hearth::Validator.validate!(input[:role_name], ::String, context: "#{context}[:role_name]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListInstanceProfilesForRoleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInstanceProfilesForRoleOutput, context: context)
        Validators::InstanceProfileListType.validate!(input[:instance_profiles], context: "#{context}[:instance_profiles]") unless input[:instance_profiles].nil?
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListInstanceProfilesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInstanceProfilesInput, context: context)
        Hearth::Validator.validate!(input[:path_prefix], ::String, context: "#{context}[:path_prefix]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListInstanceProfilesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInstanceProfilesOutput, context: context)
        Validators::InstanceProfileListType.validate!(input[:instance_profiles], context: "#{context}[:instance_profiles]") unless input[:instance_profiles].nil?
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListMFADeviceTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMFADeviceTagsInput, context: context)
        Hearth::Validator.validate!(input[:serial_number], ::String, context: "#{context}[:serial_number]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListMFADeviceTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMFADeviceTagsOutput, context: context)
        Validators::TagListType.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListMFADevicesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMFADevicesInput, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListMFADevicesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMFADevicesOutput, context: context)
        Validators::MfaDeviceListType.validate!(input[:mfa_devices], context: "#{context}[:mfa_devices]") unless input[:mfa_devices].nil?
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListOpenIDConnectProviderTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOpenIDConnectProviderTagsInput, context: context)
        Hearth::Validator.validate!(input[:open_id_connect_provider_arn], ::String, context: "#{context}[:open_id_connect_provider_arn]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListOpenIDConnectProviderTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOpenIDConnectProviderTagsOutput, context: context)
        Validators::TagListType.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListOpenIDConnectProvidersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOpenIDConnectProvidersInput, context: context)
      end
    end

    class ListOpenIDConnectProvidersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOpenIDConnectProvidersOutput, context: context)
        Validators::OpenIDConnectProviderListType.validate!(input[:open_id_connect_provider_list], context: "#{context}[:open_id_connect_provider_list]") unless input[:open_id_connect_provider_list].nil?
      end
    end

    class ListPoliciesGrantingServiceAccessEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPoliciesGrantingServiceAccessEntry, context: context)
        Hearth::Validator.validate!(input[:service_namespace], ::String, context: "#{context}[:service_namespace]")
        Validators::PolicyGrantingServiceAccessListType.validate!(input[:policies], context: "#{context}[:policies]") unless input[:policies].nil?
      end
    end

    class ListPoliciesGrantingServiceAccessInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPoliciesGrantingServiceAccessInput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Validators::ServiceNamespaceListType.validate!(input[:service_namespaces], context: "#{context}[:service_namespaces]") unless input[:service_namespaces].nil?
      end
    end

    class ListPoliciesGrantingServiceAccessOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPoliciesGrantingServiceAccessOutput, context: context)
        Validators::ListPolicyGrantingServiceAccessResponseListType.validate!(input[:policies_granting_service_access], context: "#{context}[:policies_granting_service_access]") unless input[:policies_granting_service_access].nil?
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListPoliciesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPoliciesInput, context: context)
        Hearth::Validator.validate!(input[:scope], ::String, context: "#{context}[:scope]")
        Hearth::Validator.validate!(input[:only_attached], ::TrueClass, ::FalseClass, context: "#{context}[:only_attached]")
        Hearth::Validator.validate!(input[:path_prefix], ::String, context: "#{context}[:path_prefix]")
        Hearth::Validator.validate!(input[:policy_usage_filter], ::String, context: "#{context}[:policy_usage_filter]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListPoliciesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPoliciesOutput, context: context)
        Validators::PolicyListType.validate!(input[:policies], context: "#{context}[:policies]") unless input[:policies].nil?
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListPolicyTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPolicyTagsInput, context: context)
        Hearth::Validator.validate!(input[:policy_arn], ::String, context: "#{context}[:policy_arn]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListPolicyTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPolicyTagsOutput, context: context)
        Validators::TagListType.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListPolicyVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPolicyVersionsInput, context: context)
        Hearth::Validator.validate!(input[:policy_arn], ::String, context: "#{context}[:policy_arn]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListPolicyVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPolicyVersionsOutput, context: context)
        Validators::PolicyDocumentVersionListType.validate!(input[:versions], context: "#{context}[:versions]") unless input[:versions].nil?
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListRolePoliciesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRolePoliciesInput, context: context)
        Hearth::Validator.validate!(input[:role_name], ::String, context: "#{context}[:role_name]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListRolePoliciesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRolePoliciesOutput, context: context)
        Validators::PolicyNameListType.validate!(input[:policy_names], context: "#{context}[:policy_names]") unless input[:policy_names].nil?
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListRoleTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRoleTagsInput, context: context)
        Hearth::Validator.validate!(input[:role_name], ::String, context: "#{context}[:role_name]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListRoleTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRoleTagsOutput, context: context)
        Validators::TagListType.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListRolesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRolesInput, context: context)
        Hearth::Validator.validate!(input[:path_prefix], ::String, context: "#{context}[:path_prefix]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListRolesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRolesOutput, context: context)
        Validators::RoleListType.validate!(input[:roles], context: "#{context}[:roles]") unless input[:roles].nil?
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListSAMLProviderTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSAMLProviderTagsInput, context: context)
        Hearth::Validator.validate!(input[:saml_provider_arn], ::String, context: "#{context}[:saml_provider_arn]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListSAMLProviderTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSAMLProviderTagsOutput, context: context)
        Validators::TagListType.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListSAMLProvidersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSAMLProvidersInput, context: context)
      end
    end

    class ListSAMLProvidersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSAMLProvidersOutput, context: context)
        Validators::SAMLProviderListType.validate!(input[:saml_provider_list], context: "#{context}[:saml_provider_list]") unless input[:saml_provider_list].nil?
      end
    end

    class ListSSHPublicKeysInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSSHPublicKeysInput, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListSSHPublicKeysOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSSHPublicKeysOutput, context: context)
        Validators::SSHPublicKeyListType.validate!(input[:ssh_public_keys], context: "#{context}[:ssh_public_keys]") unless input[:ssh_public_keys].nil?
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListServerCertificateTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListServerCertificateTagsInput, context: context)
        Hearth::Validator.validate!(input[:server_certificate_name], ::String, context: "#{context}[:server_certificate_name]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListServerCertificateTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListServerCertificateTagsOutput, context: context)
        Validators::TagListType.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListServerCertificatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListServerCertificatesInput, context: context)
        Hearth::Validator.validate!(input[:path_prefix], ::String, context: "#{context}[:path_prefix]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListServerCertificatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListServerCertificatesOutput, context: context)
        Validators::ServerCertificateMetadataListType.validate!(input[:server_certificate_metadata_list], context: "#{context}[:server_certificate_metadata_list]") unless input[:server_certificate_metadata_list].nil?
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListServiceSpecificCredentialsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListServiceSpecificCredentialsInput, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
      end
    end

    class ListServiceSpecificCredentialsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListServiceSpecificCredentialsOutput, context: context)
        Validators::ServiceSpecificCredentialsListType.validate!(input[:service_specific_credentials], context: "#{context}[:service_specific_credentials]") unless input[:service_specific_credentials].nil?
      end
    end

    class ListSigningCertificatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSigningCertificatesInput, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListSigningCertificatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSigningCertificatesOutput, context: context)
        Validators::CertificateListType.validate!(input[:certificates], context: "#{context}[:certificates]") unless input[:certificates].nil?
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListUserPoliciesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListUserPoliciesInput, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListUserPoliciesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListUserPoliciesOutput, context: context)
        Validators::PolicyNameListType.validate!(input[:policy_names], context: "#{context}[:policy_names]") unless input[:policy_names].nil?
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListUserTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListUserTagsInput, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListUserTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListUserTagsOutput, context: context)
        Validators::TagListType.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListUsersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListUsersInput, context: context)
        Hearth::Validator.validate!(input[:path_prefix], ::String, context: "#{context}[:path_prefix]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListUsersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListUsersOutput, context: context)
        Validators::UserListType.validate!(input[:users], context: "#{context}[:users]") unless input[:users].nil?
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListVirtualMFADevicesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListVirtualMFADevicesInput, context: context)
        Hearth::Validator.validate!(input[:assignment_status], ::String, context: "#{context}[:assignment_status]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListVirtualMFADevicesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListVirtualMFADevicesOutput, context: context)
        Validators::VirtualMFADeviceListType.validate!(input[:virtual_mfa_devices], context: "#{context}[:virtual_mfa_devices]") unless input[:virtual_mfa_devices].nil?
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class LoginProfile
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoginProfile, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:create_date], ::Time, context: "#{context}[:create_date]")
        Hearth::Validator.validate!(input[:password_reset_required], ::TrueClass, ::FalseClass, context: "#{context}[:password_reset_required]")
      end
    end

    class MFADevice
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MFADevice, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:serial_number], ::String, context: "#{context}[:serial_number]")
        Hearth::Validator.validate!(input[:enable_date], ::Time, context: "#{context}[:enable_date]")
      end
    end

    class MalformedCertificateException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MalformedCertificateException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class MalformedPolicyDocumentException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MalformedPolicyDocumentException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ManagedPolicyDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ManagedPolicyDetail, context: context)
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Hearth::Validator.validate!(input[:policy_id], ::String, context: "#{context}[:policy_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Hearth::Validator.validate!(input[:default_version_id], ::String, context: "#{context}[:default_version_id]")
        Hearth::Validator.validate!(input[:attachment_count], ::Integer, context: "#{context}[:attachment_count]")
        Hearth::Validator.validate!(input[:permissions_boundary_usage_count], ::Integer, context: "#{context}[:permissions_boundary_usage_count]")
        Hearth::Validator.validate!(input[:is_attachable], ::TrueClass, ::FalseClass, context: "#{context}[:is_attachable]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:create_date], ::Time, context: "#{context}[:create_date]")
        Hearth::Validator.validate!(input[:update_date], ::Time, context: "#{context}[:update_date]")
        Validators::PolicyDocumentVersionListType.validate!(input[:policy_version_list], context: "#{context}[:policy_version_list]") unless input[:policy_version_list].nil?
      end
    end

    class ManagedPolicyDetailListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ManagedPolicyDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NoSuchEntityException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoSuchEntityException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OpenIDConnectProviderListEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OpenIDConnectProviderListEntry, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class OpenIDConnectProviderListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::OpenIDConnectProviderListEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OrganizationsDecisionDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OrganizationsDecisionDetail, context: context)
        Hearth::Validator.validate!(input[:allowed_by_organizations], ::TrueClass, ::FalseClass, context: "#{context}[:allowed_by_organizations]")
      end
    end

    class PasswordPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PasswordPolicy, context: context)
        Hearth::Validator.validate!(input[:minimum_password_length], ::Integer, context: "#{context}[:minimum_password_length]")
        Hearth::Validator.validate!(input[:require_symbols], ::TrueClass, ::FalseClass, context: "#{context}[:require_symbols]")
        Hearth::Validator.validate!(input[:require_numbers], ::TrueClass, ::FalseClass, context: "#{context}[:require_numbers]")
        Hearth::Validator.validate!(input[:require_uppercase_characters], ::TrueClass, ::FalseClass, context: "#{context}[:require_uppercase_characters]")
        Hearth::Validator.validate!(input[:require_lowercase_characters], ::TrueClass, ::FalseClass, context: "#{context}[:require_lowercase_characters]")
        Hearth::Validator.validate!(input[:allow_users_to_change_password], ::TrueClass, ::FalseClass, context: "#{context}[:allow_users_to_change_password]")
        Hearth::Validator.validate!(input[:expire_passwords], ::TrueClass, ::FalseClass, context: "#{context}[:expire_passwords]")
        Hearth::Validator.validate!(input[:max_password_age], ::Integer, context: "#{context}[:max_password_age]")
        Hearth::Validator.validate!(input[:password_reuse_prevention], ::Integer, context: "#{context}[:password_reuse_prevention]")
        Hearth::Validator.validate!(input[:hard_expiry], ::TrueClass, ::FalseClass, context: "#{context}[:hard_expiry]")
      end
    end

    class PasswordPolicyViolationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PasswordPolicyViolationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PermissionsBoundaryDecisionDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PermissionsBoundaryDecisionDetail, context: context)
        Hearth::Validator.validate!(input[:allowed_by_permissions_boundary], ::TrueClass, ::FalseClass, context: "#{context}[:allowed_by_permissions_boundary]")
      end
    end

    class Policy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Policy, context: context)
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Hearth::Validator.validate!(input[:policy_id], ::String, context: "#{context}[:policy_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Hearth::Validator.validate!(input[:default_version_id], ::String, context: "#{context}[:default_version_id]")
        Hearth::Validator.validate!(input[:attachment_count], ::Integer, context: "#{context}[:attachment_count]")
        Hearth::Validator.validate!(input[:permissions_boundary_usage_count], ::Integer, context: "#{context}[:permissions_boundary_usage_count]")
        Hearth::Validator.validate!(input[:is_attachable], ::TrueClass, ::FalseClass, context: "#{context}[:is_attachable]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:create_date], ::Time, context: "#{context}[:create_date]")
        Hearth::Validator.validate!(input[:update_date], ::Time, context: "#{context}[:update_date]")
        Validators::TagListType.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class PolicyDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PolicyDetail, context: context)
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Hearth::Validator.validate!(input[:policy_document], ::String, context: "#{context}[:policy_document]")
      end
    end

    class PolicyEvaluationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PolicyEvaluationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PolicyGrantingServiceAccess
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PolicyGrantingServiceAccess, context: context)
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Hearth::Validator.validate!(input[:policy_type], ::String, context: "#{context}[:policy_type]")
        Hearth::Validator.validate!(input[:policy_arn], ::String, context: "#{context}[:policy_arn]")
        Hearth::Validator.validate!(input[:entity_type], ::String, context: "#{context}[:entity_type]")
        Hearth::Validator.validate!(input[:entity_name], ::String, context: "#{context}[:entity_name]")
      end
    end

    class PolicyGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PolicyGroup, context: context)
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
      end
    end

    class PolicyGroupListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PolicyGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PolicyNotAttachableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PolicyNotAttachableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PolicyRole
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PolicyRole, context: context)
        Hearth::Validator.validate!(input[:role_name], ::String, context: "#{context}[:role_name]")
        Hearth::Validator.validate!(input[:role_id], ::String, context: "#{context}[:role_id]")
      end
    end

    class PolicyRoleListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PolicyRole.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PolicyUser
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PolicyUser, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
      end
    end

    class PolicyUserListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PolicyUser.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PolicyVersion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PolicyVersion, context: context)
        Hearth::Validator.validate!(input[:document], ::String, context: "#{context}[:document]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate!(input[:is_default_version], ::TrueClass, ::FalseClass, context: "#{context}[:is_default_version]")
        Hearth::Validator.validate!(input[:create_date], ::Time, context: "#{context}[:create_date]")
      end
    end

    class Position
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Position, context: context)
        Hearth::Validator.validate!(input[:line], ::Integer, context: "#{context}[:line]")
        Hearth::Validator.validate!(input[:column], ::Integer, context: "#{context}[:column]")
      end
    end

    class PutGroupPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutGroupPolicyInput, context: context)
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Hearth::Validator.validate!(input[:policy_document], ::String, context: "#{context}[:policy_document]")
      end
    end

    class PutGroupPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutGroupPolicyOutput, context: context)
      end
    end

    class PutRolePermissionsBoundaryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutRolePermissionsBoundaryInput, context: context)
        Hearth::Validator.validate!(input[:role_name], ::String, context: "#{context}[:role_name]")
        Hearth::Validator.validate!(input[:permissions_boundary], ::String, context: "#{context}[:permissions_boundary]")
      end
    end

    class PutRolePermissionsBoundaryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutRolePermissionsBoundaryOutput, context: context)
      end
    end

    class PutRolePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutRolePolicyInput, context: context)
        Hearth::Validator.validate!(input[:role_name], ::String, context: "#{context}[:role_name]")
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Hearth::Validator.validate!(input[:policy_document], ::String, context: "#{context}[:policy_document]")
      end
    end

    class PutRolePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutRolePolicyOutput, context: context)
      end
    end

    class PutUserPermissionsBoundaryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutUserPermissionsBoundaryInput, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:permissions_boundary], ::String, context: "#{context}[:permissions_boundary]")
      end
    end

    class PutUserPermissionsBoundaryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutUserPermissionsBoundaryOutput, context: context)
      end
    end

    class PutUserPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutUserPolicyInput, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Hearth::Validator.validate!(input[:policy_document], ::String, context: "#{context}[:policy_document]")
      end
    end

    class PutUserPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutUserPolicyOutput, context: context)
      end
    end

    class RemoveClientIDFromOpenIDConnectProviderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveClientIDFromOpenIDConnectProviderInput, context: context)
        Hearth::Validator.validate!(input[:open_id_connect_provider_arn], ::String, context: "#{context}[:open_id_connect_provider_arn]")
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
      end
    end

    class RemoveClientIDFromOpenIDConnectProviderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveClientIDFromOpenIDConnectProviderOutput, context: context)
      end
    end

    class RemoveRoleFromInstanceProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveRoleFromInstanceProfileInput, context: context)
        Hearth::Validator.validate!(input[:instance_profile_name], ::String, context: "#{context}[:instance_profile_name]")
        Hearth::Validator.validate!(input[:role_name], ::String, context: "#{context}[:role_name]")
      end
    end

    class RemoveRoleFromInstanceProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveRoleFromInstanceProfileOutput, context: context)
      end
    end

    class RemoveUserFromGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveUserFromGroupInput, context: context)
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
      end
    end

    class RemoveUserFromGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveUserFromGroupOutput, context: context)
      end
    end

    class ReportGenerationLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReportGenerationLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResetServiceSpecificCredentialInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResetServiceSpecificCredentialInput, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:service_specific_credential_id], ::String, context: "#{context}[:service_specific_credential_id]")
      end
    end

    class ResetServiceSpecificCredentialOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResetServiceSpecificCredentialOutput, context: context)
        Validators::ServiceSpecificCredential.validate!(input[:service_specific_credential], context: "#{context}[:service_specific_credential]") unless input[:service_specific_credential].nil?
      end
    end

    class ResourceNameListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ResourceSpecificResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceSpecificResult, context: context)
        Hearth::Validator.validate!(input[:eval_resource_name], ::String, context: "#{context}[:eval_resource_name]")
        Hearth::Validator.validate!(input[:eval_resource_decision], ::String, context: "#{context}[:eval_resource_decision]")
        Validators::StatementListType.validate!(input[:matched_statements], context: "#{context}[:matched_statements]") unless input[:matched_statements].nil?
        Validators::ContextKeyNamesResultListType.validate!(input[:missing_context_values], context: "#{context}[:missing_context_values]") unless input[:missing_context_values].nil?
        Validators::EvalDecisionDetailsType.validate!(input[:eval_decision_details], context: "#{context}[:eval_decision_details]") unless input[:eval_decision_details].nil?
        Validators::PermissionsBoundaryDecisionDetail.validate!(input[:permissions_boundary_decision_detail], context: "#{context}[:permissions_boundary_decision_detail]") unless input[:permissions_boundary_decision_detail].nil?
      end
    end

    class ResourceSpecificResultListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ResourceSpecificResult.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResyncMFADeviceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResyncMFADeviceInput, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:serial_number], ::String, context: "#{context}[:serial_number]")
        Hearth::Validator.validate!(input[:authentication_code1], ::String, context: "#{context}[:authentication_code1]")
        Hearth::Validator.validate!(input[:authentication_code2], ::String, context: "#{context}[:authentication_code2]")
      end
    end

    class ResyncMFADeviceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResyncMFADeviceOutput, context: context)
      end
    end

    class Role
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Role, context: context)
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Hearth::Validator.validate!(input[:role_name], ::String, context: "#{context}[:role_name]")
        Hearth::Validator.validate!(input[:role_id], ::String, context: "#{context}[:role_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:create_date], ::Time, context: "#{context}[:create_date]")
        Hearth::Validator.validate!(input[:assume_role_policy_document], ::String, context: "#{context}[:assume_role_policy_document]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:max_session_duration], ::Integer, context: "#{context}[:max_session_duration]")
        Validators::AttachedPermissionsBoundary.validate!(input[:permissions_boundary], context: "#{context}[:permissions_boundary]") unless input[:permissions_boundary].nil?
        Validators::TagListType.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::RoleLastUsed.validate!(input[:role_last_used], context: "#{context}[:role_last_used]") unless input[:role_last_used].nil?
      end
    end

    class RoleDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RoleDetail, context: context)
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Hearth::Validator.validate!(input[:role_name], ::String, context: "#{context}[:role_name]")
        Hearth::Validator.validate!(input[:role_id], ::String, context: "#{context}[:role_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:create_date], ::Time, context: "#{context}[:create_date]")
        Hearth::Validator.validate!(input[:assume_role_policy_document], ::String, context: "#{context}[:assume_role_policy_document]")
        Validators::InstanceProfileListType.validate!(input[:instance_profile_list], context: "#{context}[:instance_profile_list]") unless input[:instance_profile_list].nil?
        Validators::PolicyDetailListType.validate!(input[:role_policy_list], context: "#{context}[:role_policy_list]") unless input[:role_policy_list].nil?
        Validators::AttachedPoliciesListType.validate!(input[:attached_managed_policies], context: "#{context}[:attached_managed_policies]") unless input[:attached_managed_policies].nil?
        Validators::AttachedPermissionsBoundary.validate!(input[:permissions_boundary], context: "#{context}[:permissions_boundary]") unless input[:permissions_boundary].nil?
        Validators::TagListType.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::RoleLastUsed.validate!(input[:role_last_used], context: "#{context}[:role_last_used]") unless input[:role_last_used].nil?
      end
    end

    class RoleLastUsed
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RoleLastUsed, context: context)
        Hearth::Validator.validate!(input[:last_used_date], ::Time, context: "#{context}[:last_used_date]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
      end
    end

    class RoleUsageListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RoleUsageType.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RoleUsageType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RoleUsageType, context: context)
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Validators::ArnListType.validate!(input[:resources], context: "#{context}[:resources]") unless input[:resources].nil?
      end
    end

    class SAMLProviderListEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SAMLProviderListEntry, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:valid_until], ::Time, context: "#{context}[:valid_until]")
        Hearth::Validator.validate!(input[:create_date], ::Time, context: "#{context}[:create_date]")
      end
    end

    class SAMLProviderListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SAMLProviderListEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SSHPublicKey
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SSHPublicKey, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:ssh_public_key_id], ::String, context: "#{context}[:ssh_public_key_id]")
        Hearth::Validator.validate!(input[:fingerprint], ::String, context: "#{context}[:fingerprint]")
        Hearth::Validator.validate!(input[:ssh_public_key_body], ::String, context: "#{context}[:ssh_public_key_body]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:upload_date], ::Time, context: "#{context}[:upload_date]")
      end
    end

    class SSHPublicKeyListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SSHPublicKeyMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SSHPublicKeyMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SSHPublicKeyMetadata, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:ssh_public_key_id], ::String, context: "#{context}[:ssh_public_key_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:upload_date], ::Time, context: "#{context}[:upload_date]")
      end
    end

    class ServerCertificate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServerCertificate, context: context)
        Validators::ServerCertificateMetadata.validate!(input[:server_certificate_metadata], context: "#{context}[:server_certificate_metadata]") unless input[:server_certificate_metadata].nil?
        Hearth::Validator.validate!(input[:certificate_body], ::String, context: "#{context}[:certificate_body]")
        Hearth::Validator.validate!(input[:certificate_chain], ::String, context: "#{context}[:certificate_chain]")
        Validators::TagListType.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ServerCertificateMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServerCertificateMetadata, context: context)
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Hearth::Validator.validate!(input[:server_certificate_name], ::String, context: "#{context}[:server_certificate_name]")
        Hearth::Validator.validate!(input[:server_certificate_id], ::String, context: "#{context}[:server_certificate_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:upload_date], ::Time, context: "#{context}[:upload_date]")
        Hearth::Validator.validate!(input[:expiration], ::Time, context: "#{context}[:expiration]")
      end
    end

    class ServiceFailureException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceFailureException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ServiceLastAccessed
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceLastAccessed, context: context)
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
        Hearth::Validator.validate!(input[:last_authenticated], ::Time, context: "#{context}[:last_authenticated]")
        Hearth::Validator.validate!(input[:service_namespace], ::String, context: "#{context}[:service_namespace]")
        Hearth::Validator.validate!(input[:last_authenticated_entity], ::String, context: "#{context}[:last_authenticated_entity]")
        Hearth::Validator.validate!(input[:last_authenticated_region], ::String, context: "#{context}[:last_authenticated_region]")
        Hearth::Validator.validate!(input[:total_authenticated_entities], ::Integer, context: "#{context}[:total_authenticated_entities]")
        Validators::TrackedActionsLastAccessed.validate!(input[:tracked_actions_last_accessed], context: "#{context}[:tracked_actions_last_accessed]") unless input[:tracked_actions_last_accessed].nil?
      end
    end

    class ServiceNotSupportedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceNotSupportedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ServiceSpecificCredential
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceSpecificCredential, context: context)
        Hearth::Validator.validate!(input[:create_date], ::Time, context: "#{context}[:create_date]")
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
        Hearth::Validator.validate!(input[:service_user_name], ::String, context: "#{context}[:service_user_name]")
        Hearth::Validator.validate!(input[:service_password], ::String, context: "#{context}[:service_password]")
        Hearth::Validator.validate!(input[:service_specific_credential_id], ::String, context: "#{context}[:service_specific_credential_id]")
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class ServiceSpecificCredentialMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceSpecificCredentialMetadata, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:service_user_name], ::String, context: "#{context}[:service_user_name]")
        Hearth::Validator.validate!(input[:create_date], ::Time, context: "#{context}[:create_date]")
        Hearth::Validator.validate!(input[:service_specific_credential_id], ::String, context: "#{context}[:service_specific_credential_id]")
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
      end
    end

    class ServiceSpecificCredentialsListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ServiceSpecificCredentialMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServicesLastAccessed
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ServiceLastAccessed.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SetDefaultPolicyVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetDefaultPolicyVersionInput, context: context)
        Hearth::Validator.validate!(input[:policy_arn], ::String, context: "#{context}[:policy_arn]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
      end
    end

    class SetDefaultPolicyVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetDefaultPolicyVersionOutput, context: context)
      end
    end

    class SetSecurityTokenServicePreferencesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetSecurityTokenServicePreferencesInput, context: context)
        Hearth::Validator.validate!(input[:global_endpoint_token_version], ::String, context: "#{context}[:global_endpoint_token_version]")
      end
    end

    class SetSecurityTokenServicePreferencesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetSecurityTokenServicePreferencesOutput, context: context)
      end
    end

    class SigningCertificate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SigningCertificate, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:certificate_id], ::String, context: "#{context}[:certificate_id]")
        Hearth::Validator.validate!(input[:certificate_body], ::String, context: "#{context}[:certificate_body]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:upload_date], ::Time, context: "#{context}[:upload_date]")
      end
    end

    class SimulateCustomPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SimulateCustomPolicyInput, context: context)
        Validators::SimulationPolicyListType.validate!(input[:policy_input_list], context: "#{context}[:policy_input_list]") unless input[:policy_input_list].nil?
        Validators::SimulationPolicyListType.validate!(input[:permissions_boundary_policy_input_list], context: "#{context}[:permissions_boundary_policy_input_list]") unless input[:permissions_boundary_policy_input_list].nil?
        Validators::ActionNameListType.validate!(input[:action_names], context: "#{context}[:action_names]") unless input[:action_names].nil?
        Validators::ResourceNameListType.validate!(input[:resource_arns], context: "#{context}[:resource_arns]") unless input[:resource_arns].nil?
        Hearth::Validator.validate!(input[:resource_policy], ::String, context: "#{context}[:resource_policy]")
        Hearth::Validator.validate!(input[:resource_owner], ::String, context: "#{context}[:resource_owner]")
        Hearth::Validator.validate!(input[:caller_arn], ::String, context: "#{context}[:caller_arn]")
        Validators::ContextEntryListType.validate!(input[:context_entries], context: "#{context}[:context_entries]") unless input[:context_entries].nil?
        Hearth::Validator.validate!(input[:resource_handling_option], ::String, context: "#{context}[:resource_handling_option]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class SimulateCustomPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SimulateCustomPolicyOutput, context: context)
        Validators::EvaluationResultsListType.validate!(input[:evaluation_results], context: "#{context}[:evaluation_results]") unless input[:evaluation_results].nil?
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class SimulatePrincipalPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SimulatePrincipalPolicyInput, context: context)
        Hearth::Validator.validate!(input[:policy_source_arn], ::String, context: "#{context}[:policy_source_arn]")
        Validators::SimulationPolicyListType.validate!(input[:policy_input_list], context: "#{context}[:policy_input_list]") unless input[:policy_input_list].nil?
        Validators::SimulationPolicyListType.validate!(input[:permissions_boundary_policy_input_list], context: "#{context}[:permissions_boundary_policy_input_list]") unless input[:permissions_boundary_policy_input_list].nil?
        Validators::ActionNameListType.validate!(input[:action_names], context: "#{context}[:action_names]") unless input[:action_names].nil?
        Validators::ResourceNameListType.validate!(input[:resource_arns], context: "#{context}[:resource_arns]") unless input[:resource_arns].nil?
        Hearth::Validator.validate!(input[:resource_policy], ::String, context: "#{context}[:resource_policy]")
        Hearth::Validator.validate!(input[:resource_owner], ::String, context: "#{context}[:resource_owner]")
        Hearth::Validator.validate!(input[:caller_arn], ::String, context: "#{context}[:caller_arn]")
        Validators::ContextEntryListType.validate!(input[:context_entries], context: "#{context}[:context_entries]") unless input[:context_entries].nil?
        Hearth::Validator.validate!(input[:resource_handling_option], ::String, context: "#{context}[:resource_handling_option]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class SimulatePrincipalPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SimulatePrincipalPolicyOutput, context: context)
        Validators::EvaluationResultsListType.validate!(input[:evaluation_results], context: "#{context}[:evaluation_results]") unless input[:evaluation_results].nil?
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class SimulationPolicyListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Statement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Statement, context: context)
        Hearth::Validator.validate!(input[:source_policy_id], ::String, context: "#{context}[:source_policy_id]")
        Hearth::Validator.validate!(input[:source_policy_type], ::String, context: "#{context}[:source_policy_type]")
        Validators::Position.validate!(input[:start_position], context: "#{context}[:start_position]") unless input[:start_position].nil?
        Validators::Position.validate!(input[:end_position], context: "#{context}[:end_position]") unless input[:end_position].nil?
      end
    end

    class StatementListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Statement.validate!(element, context: "#{context}[#{index}]") unless element.nil?
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

    class TagInstanceProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagInstanceProfileInput, context: context)
        Hearth::Validator.validate!(input[:instance_profile_name], ::String, context: "#{context}[:instance_profile_name]")
        Validators::TagListType.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagInstanceProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagInstanceProfileOutput, context: context)
      end
    end

    class TagMFADeviceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagMFADeviceInput, context: context)
        Hearth::Validator.validate!(input[:serial_number], ::String, context: "#{context}[:serial_number]")
        Validators::TagListType.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagMFADeviceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagMFADeviceOutput, context: context)
      end
    end

    class TagOpenIDConnectProviderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagOpenIDConnectProviderInput, context: context)
        Hearth::Validator.validate!(input[:open_id_connect_provider_arn], ::String, context: "#{context}[:open_id_connect_provider_arn]")
        Validators::TagListType.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagOpenIDConnectProviderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagOpenIDConnectProviderOutput, context: context)
      end
    end

    class TagPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagPolicyInput, context: context)
        Hearth::Validator.validate!(input[:policy_arn], ::String, context: "#{context}[:policy_arn]")
        Validators::TagListType.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagPolicyOutput, context: context)
      end
    end

    class TagRoleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagRoleInput, context: context)
        Hearth::Validator.validate!(input[:role_name], ::String, context: "#{context}[:role_name]")
        Validators::TagListType.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagRoleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagRoleOutput, context: context)
      end
    end

    class TagSAMLProviderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagSAMLProviderInput, context: context)
        Hearth::Validator.validate!(input[:saml_provider_arn], ::String, context: "#{context}[:saml_provider_arn]")
        Validators::TagListType.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagSAMLProviderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagSAMLProviderOutput, context: context)
      end
    end

    class TagServerCertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagServerCertificateInput, context: context)
        Hearth::Validator.validate!(input[:server_certificate_name], ::String, context: "#{context}[:server_certificate_name]")
        Validators::TagListType.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagServerCertificateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagServerCertificateOutput, context: context)
      end
    end

    class TagUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagUserInput, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Validators::TagListType.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagUserOutput, context: context)
      end
    end

    class TrackedActionLastAccessed
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrackedActionLastAccessed, context: context)
        Hearth::Validator.validate!(input[:action_name], ::String, context: "#{context}[:action_name]")
        Hearth::Validator.validate!(input[:last_accessed_entity], ::String, context: "#{context}[:last_accessed_entity]")
        Hearth::Validator.validate!(input[:last_accessed_time], ::Time, context: "#{context}[:last_accessed_time]")
        Hearth::Validator.validate!(input[:last_accessed_region], ::String, context: "#{context}[:last_accessed_region]")
      end
    end

    class TrackedActionsLastAccessed
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TrackedActionLastAccessed.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UnmodifiableEntityException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnmodifiableEntityException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnrecognizedPublicKeyEncodingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnrecognizedPublicKeyEncodingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagInstanceProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagInstanceProfileInput, context: context)
        Hearth::Validator.validate!(input[:instance_profile_name], ::String, context: "#{context}[:instance_profile_name]")
        Validators::TagKeyListType.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagInstanceProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagInstanceProfileOutput, context: context)
      end
    end

    class UntagMFADeviceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagMFADeviceInput, context: context)
        Hearth::Validator.validate!(input[:serial_number], ::String, context: "#{context}[:serial_number]")
        Validators::TagKeyListType.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagMFADeviceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagMFADeviceOutput, context: context)
      end
    end

    class UntagOpenIDConnectProviderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagOpenIDConnectProviderInput, context: context)
        Hearth::Validator.validate!(input[:open_id_connect_provider_arn], ::String, context: "#{context}[:open_id_connect_provider_arn]")
        Validators::TagKeyListType.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagOpenIDConnectProviderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagOpenIDConnectProviderOutput, context: context)
      end
    end

    class UntagPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagPolicyInput, context: context)
        Hearth::Validator.validate!(input[:policy_arn], ::String, context: "#{context}[:policy_arn]")
        Validators::TagKeyListType.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagPolicyOutput, context: context)
      end
    end

    class UntagRoleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagRoleInput, context: context)
        Hearth::Validator.validate!(input[:role_name], ::String, context: "#{context}[:role_name]")
        Validators::TagKeyListType.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagRoleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagRoleOutput, context: context)
      end
    end

    class UntagSAMLProviderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagSAMLProviderInput, context: context)
        Hearth::Validator.validate!(input[:saml_provider_arn], ::String, context: "#{context}[:saml_provider_arn]")
        Validators::TagKeyListType.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagSAMLProviderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagSAMLProviderOutput, context: context)
      end
    end

    class UntagServerCertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagServerCertificateInput, context: context)
        Hearth::Validator.validate!(input[:server_certificate_name], ::String, context: "#{context}[:server_certificate_name]")
        Validators::TagKeyListType.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagServerCertificateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagServerCertificateOutput, context: context)
      end
    end

    class UntagUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagUserInput, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Validators::TagKeyListType.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagUserOutput, context: context)
      end
    end

    class UpdateAccessKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAccessKeyInput, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:access_key_id], ::String, context: "#{context}[:access_key_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class UpdateAccessKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAccessKeyOutput, context: context)
      end
    end

    class UpdateAccountPasswordPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAccountPasswordPolicyInput, context: context)
        Hearth::Validator.validate!(input[:minimum_password_length], ::Integer, context: "#{context}[:minimum_password_length]")
        Hearth::Validator.validate!(input[:require_symbols], ::TrueClass, ::FalseClass, context: "#{context}[:require_symbols]")
        Hearth::Validator.validate!(input[:require_numbers], ::TrueClass, ::FalseClass, context: "#{context}[:require_numbers]")
        Hearth::Validator.validate!(input[:require_uppercase_characters], ::TrueClass, ::FalseClass, context: "#{context}[:require_uppercase_characters]")
        Hearth::Validator.validate!(input[:require_lowercase_characters], ::TrueClass, ::FalseClass, context: "#{context}[:require_lowercase_characters]")
        Hearth::Validator.validate!(input[:allow_users_to_change_password], ::TrueClass, ::FalseClass, context: "#{context}[:allow_users_to_change_password]")
        Hearth::Validator.validate!(input[:max_password_age], ::Integer, context: "#{context}[:max_password_age]")
        Hearth::Validator.validate!(input[:password_reuse_prevention], ::Integer, context: "#{context}[:password_reuse_prevention]")
        Hearth::Validator.validate!(input[:hard_expiry], ::TrueClass, ::FalseClass, context: "#{context}[:hard_expiry]")
      end
    end

    class UpdateAccountPasswordPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAccountPasswordPolicyOutput, context: context)
      end
    end

    class UpdateAssumeRolePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAssumeRolePolicyInput, context: context)
        Hearth::Validator.validate!(input[:role_name], ::String, context: "#{context}[:role_name]")
        Hearth::Validator.validate!(input[:policy_document], ::String, context: "#{context}[:policy_document]")
      end
    end

    class UpdateAssumeRolePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAssumeRolePolicyOutput, context: context)
      end
    end

    class UpdateGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGroupInput, context: context)
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:new_path], ::String, context: "#{context}[:new_path]")
        Hearth::Validator.validate!(input[:new_group_name], ::String, context: "#{context}[:new_group_name]")
      end
    end

    class UpdateGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGroupOutput, context: context)
      end
    end

    class UpdateLoginProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateLoginProfileInput, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
        Hearth::Validator.validate!(input[:password_reset_required], ::TrueClass, ::FalseClass, context: "#{context}[:password_reset_required]")
      end
    end

    class UpdateLoginProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateLoginProfileOutput, context: context)
      end
    end

    class UpdateOpenIDConnectProviderThumbprintInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateOpenIDConnectProviderThumbprintInput, context: context)
        Hearth::Validator.validate!(input[:open_id_connect_provider_arn], ::String, context: "#{context}[:open_id_connect_provider_arn]")
        Validators::ThumbprintListType.validate!(input[:thumbprint_list], context: "#{context}[:thumbprint_list]") unless input[:thumbprint_list].nil?
      end
    end

    class UpdateOpenIDConnectProviderThumbprintOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateOpenIDConnectProviderThumbprintOutput, context: context)
      end
    end

    class UpdateRoleDescriptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRoleDescriptionInput, context: context)
        Hearth::Validator.validate!(input[:role_name], ::String, context: "#{context}[:role_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class UpdateRoleDescriptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRoleDescriptionOutput, context: context)
        Validators::Role.validate!(input[:role], context: "#{context}[:role]") unless input[:role].nil?
      end
    end

    class UpdateRoleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRoleInput, context: context)
        Hearth::Validator.validate!(input[:role_name], ::String, context: "#{context}[:role_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:max_session_duration], ::Integer, context: "#{context}[:max_session_duration]")
      end
    end

    class UpdateRoleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRoleOutput, context: context)
      end
    end

    class UpdateSAMLProviderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSAMLProviderInput, context: context)
        Hearth::Validator.validate!(input[:saml_metadata_document], ::String, context: "#{context}[:saml_metadata_document]")
        Hearth::Validator.validate!(input[:saml_provider_arn], ::String, context: "#{context}[:saml_provider_arn]")
      end
    end

    class UpdateSAMLProviderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSAMLProviderOutput, context: context)
        Hearth::Validator.validate!(input[:saml_provider_arn], ::String, context: "#{context}[:saml_provider_arn]")
      end
    end

    class UpdateSSHPublicKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSSHPublicKeyInput, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:ssh_public_key_id], ::String, context: "#{context}[:ssh_public_key_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class UpdateSSHPublicKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSSHPublicKeyOutput, context: context)
      end
    end

    class UpdateServerCertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateServerCertificateInput, context: context)
        Hearth::Validator.validate!(input[:server_certificate_name], ::String, context: "#{context}[:server_certificate_name]")
        Hearth::Validator.validate!(input[:new_path], ::String, context: "#{context}[:new_path]")
        Hearth::Validator.validate!(input[:new_server_certificate_name], ::String, context: "#{context}[:new_server_certificate_name]")
      end
    end

    class UpdateServerCertificateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateServerCertificateOutput, context: context)
      end
    end

    class UpdateServiceSpecificCredentialInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateServiceSpecificCredentialInput, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:service_specific_credential_id], ::String, context: "#{context}[:service_specific_credential_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class UpdateServiceSpecificCredentialOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateServiceSpecificCredentialOutput, context: context)
      end
    end

    class UpdateSigningCertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSigningCertificateInput, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:certificate_id], ::String, context: "#{context}[:certificate_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class UpdateSigningCertificateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSigningCertificateOutput, context: context)
      end
    end

    class UpdateUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateUserInput, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:new_path], ::String, context: "#{context}[:new_path]")
        Hearth::Validator.validate!(input[:new_user_name], ::String, context: "#{context}[:new_user_name]")
      end
    end

    class UpdateUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateUserOutput, context: context)
      end
    end

    class UploadSSHPublicKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UploadSSHPublicKeyInput, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:ssh_public_key_body], ::String, context: "#{context}[:ssh_public_key_body]")
      end
    end

    class UploadSSHPublicKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UploadSSHPublicKeyOutput, context: context)
        Validators::SSHPublicKey.validate!(input[:ssh_public_key], context: "#{context}[:ssh_public_key]") unless input[:ssh_public_key].nil?
      end
    end

    class UploadServerCertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UploadServerCertificateInput, context: context)
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Hearth::Validator.validate!(input[:server_certificate_name], ::String, context: "#{context}[:server_certificate_name]")
        Hearth::Validator.validate!(input[:certificate_body], ::String, context: "#{context}[:certificate_body]")
        Hearth::Validator.validate!(input[:private_key], ::String, context: "#{context}[:private_key]")
        Hearth::Validator.validate!(input[:certificate_chain], ::String, context: "#{context}[:certificate_chain]")
        Validators::TagListType.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class UploadServerCertificateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UploadServerCertificateOutput, context: context)
        Validators::ServerCertificateMetadata.validate!(input[:server_certificate_metadata], context: "#{context}[:server_certificate_metadata]") unless input[:server_certificate_metadata].nil?
        Validators::TagListType.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class UploadSigningCertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UploadSigningCertificateInput, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:certificate_body], ::String, context: "#{context}[:certificate_body]")
      end
    end

    class UploadSigningCertificateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UploadSigningCertificateOutput, context: context)
        Validators::SigningCertificate.validate!(input[:certificate], context: "#{context}[:certificate]") unless input[:certificate].nil?
      end
    end

    class User
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::User, context: context)
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:create_date], ::Time, context: "#{context}[:create_date]")
        Hearth::Validator.validate!(input[:password_last_used], ::Time, context: "#{context}[:password_last_used]")
        Validators::AttachedPermissionsBoundary.validate!(input[:permissions_boundary], context: "#{context}[:permissions_boundary]") unless input[:permissions_boundary].nil?
        Validators::TagListType.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class UserDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserDetail, context: context)
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:create_date], ::Time, context: "#{context}[:create_date]")
        Validators::PolicyDetailListType.validate!(input[:user_policy_list], context: "#{context}[:user_policy_list]") unless input[:user_policy_list].nil?
        Validators::GroupNameListType.validate!(input[:group_list], context: "#{context}[:group_list]") unless input[:group_list].nil?
        Validators::AttachedPoliciesListType.validate!(input[:attached_managed_policies], context: "#{context}[:attached_managed_policies]") unless input[:attached_managed_policies].nil?
        Validators::AttachedPermissionsBoundary.validate!(input[:permissions_boundary], context: "#{context}[:permissions_boundary]") unless input[:permissions_boundary].nil?
        Validators::TagListType.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class VirtualMFADevice
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VirtualMFADevice, context: context)
        Hearth::Validator.validate!(input[:serial_number], ::String, context: "#{context}[:serial_number]")
        Hearth::Validator.validate!(input[:base32_string_seed], ::String, context: "#{context}[:base32_string_seed]")
        Hearth::Validator.validate!(input[:qr_code_png], ::String, context: "#{context}[:qr_code_png]")
        Validators::User.validate!(input[:user], context: "#{context}[:user]") unless input[:user].nil?
        Hearth::Validator.validate!(input[:enable_date], ::Time, context: "#{context}[:enable_date]")
        Validators::TagListType.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class AccessKeyMetadataListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AccessKeyMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AccountAliasListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AttachedPoliciesListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AttachedPolicy.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CertificateListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SigningCertificate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ClientIDListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class EntityDetailsListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EntityDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EntityListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class GroupDetailListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::GroupDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GroupListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Group.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GroupNameListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InstanceProfileListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::InstanceProfile.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListPolicyGrantingServiceAccessResponseListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ListPoliciesGrantingServiceAccessEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MfaDeviceListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::MFADevice.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PolicyDetailListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PolicyDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PolicyDocumentVersionListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PolicyVersion.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PolicyGrantingServiceAccessListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PolicyGrantingServiceAccess.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PolicyListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Policy.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PolicyNameListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RoleDetailListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RoleDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RoleListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Role.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServerCertificateMetadataListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ServerCertificateMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServiceNamespaceListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SummaryMapType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::Integer, context: "#{context}[:#{key}]")
        end
      end
    end

    class TagKeyListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ThumbprintListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class UserDetailListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::UserDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UserListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::User.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class VirtualMFADeviceListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::VirtualMFADevice.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
