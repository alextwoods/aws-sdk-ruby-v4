# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::IAM
  module Parsers

    # Operation Parser for AddClientIDToOpenIDConnectProvider
    class AddClientIDToOpenIDConnectProvider
      def self.parse(http_resp)
        data = Types::AddClientIDToOpenIDConnectProviderOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('AddClientIDToOpenIDConnectProviderResult')
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for NoSuchEntityException
    class NoSuchEntityException
      def self.parse(http_resp)
        data = Types::NoSuchEntityException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidInputException
    class InvalidInputException
      def self.parse(http_resp)
        data = Types::InvalidInputException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for ServiceFailureException
    class ServiceFailureException
      def self.parse(http_resp)
        data = Types::ServiceFailureException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for AddRoleToInstanceProfile
    class AddRoleToInstanceProfile
      def self.parse(http_resp)
        data = Types::AddRoleToInstanceProfileOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('AddRoleToInstanceProfileResult')
        data
      end
    end

    # Error Parser for UnmodifiableEntityException
    class UnmodifiableEntityException
      def self.parse(http_resp)
        data = Types::UnmodifiableEntityException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for EntityAlreadyExistsException
    class EntityAlreadyExistsException
      def self.parse(http_resp)
        data = Types::EntityAlreadyExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for AddUserToGroup
    class AddUserToGroup
      def self.parse(http_resp)
        data = Types::AddUserToGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('AddUserToGroupResult')
        data
      end
    end

    # Operation Parser for AttachGroupPolicy
    class AttachGroupPolicy
      def self.parse(http_resp)
        data = Types::AttachGroupPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('AttachGroupPolicyResult')
        data
      end
    end

    # Error Parser for PolicyNotAttachableException
    class PolicyNotAttachableException
      def self.parse(http_resp)
        data = Types::PolicyNotAttachableException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for AttachRolePolicy
    class AttachRolePolicy
      def self.parse(http_resp)
        data = Types::AttachRolePolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('AttachRolePolicyResult')
        data
      end
    end

    # Operation Parser for AttachUserPolicy
    class AttachUserPolicy
      def self.parse(http_resp)
        data = Types::AttachUserPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('AttachUserPolicyResult')
        data
      end
    end

    # Operation Parser for ChangePassword
    class ChangePassword
      def self.parse(http_resp)
        data = Types::ChangePasswordOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ChangePasswordResult')
        data
      end
    end

    # Error Parser for EntityTemporarilyUnmodifiableException
    class EntityTemporarilyUnmodifiableException
      def self.parse(http_resp)
        data = Types::EntityTemporarilyUnmodifiableException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for PasswordPolicyViolationException
    class PasswordPolicyViolationException
      def self.parse(http_resp)
        data = Types::PasswordPolicyViolationException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidUserTypeException
    class InvalidUserTypeException
      def self.parse(http_resp)
        data = Types::InvalidUserTypeException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateAccessKey
    class CreateAccessKey
      def self.parse(http_resp)
        data = Types::CreateAccessKeyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateAccessKeyResult')
        xml.at('AccessKey') do |node|
          data.access_key = Parsers::AccessKey.parse(node)
        end
        data
      end
    end

    class AccessKey
      def self.parse(xml)
        data = Types::AccessKey.new
        xml.at('UserName') do |node|
          data.user_name = (node.text || '')
        end
        xml.at('AccessKeyId') do |node|
          data.access_key_id = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('SecretAccessKey') do |node|
          data.secret_access_key = (node.text || '')
        end
        xml.at('CreateDate') do |node|
          data.create_date = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    # Operation Parser for CreateAccountAlias
    class CreateAccountAlias
      def self.parse(http_resp)
        data = Types::CreateAccountAliasOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateAccountAliasResult')
        data
      end
    end

    # Operation Parser for CreateGroup
    class CreateGroup
      def self.parse(http_resp)
        data = Types::CreateGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateGroupResult')
        xml.at('Group') do |node|
          data.group = Parsers::Group.parse(node)
        end
        data
      end
    end

    class Group
      def self.parse(xml)
        data = Types::Group.new
        xml.at('Path') do |node|
          data.path = (node.text || '')
        end
        xml.at('GroupName') do |node|
          data.group_name = (node.text || '')
        end
        xml.at('GroupId') do |node|
          data.group_id = (node.text || '')
        end
        xml.at('Arn') do |node|
          data.arn = (node.text || '')
        end
        xml.at('CreateDate') do |node|
          data.create_date = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    # Operation Parser for CreateInstanceProfile
    class CreateInstanceProfile
      def self.parse(http_resp)
        data = Types::CreateInstanceProfileOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateInstanceProfileResult')
        xml.at('InstanceProfile') do |node|
          data.instance_profile = Parsers::InstanceProfile.parse(node)
        end
        data
      end
    end

    class InstanceProfile
      def self.parse(xml)
        data = Types::InstanceProfile.new
        xml.at('Path') do |node|
          data.path = (node.text || '')
        end
        xml.at('InstanceProfileName') do |node|
          data.instance_profile_name = (node.text || '')
        end
        xml.at('InstanceProfileId') do |node|
          data.instance_profile_id = (node.text || '')
        end
        xml.at('Arn') do |node|
          data.arn = (node.text || '')
        end
        xml.at('CreateDate') do |node|
          data.create_date = Time.parse(node.text) if node.text
        end
        xml.at('Roles') do |node|
          children = node.children('member')
          data.roles = Parsers::RoleListType.parse(children)
        end
        xml.at('Tags') do |node|
          children = node.children('member')
          data.tags = Parsers::TagListType.parse(children)
        end
        return data
      end
    end

    class TagListType
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Tag.parse(node)
        end
        data
      end
    end

    class Tag
      def self.parse(xml)
        data = Types::Tag.new
        xml.at('Key') do |node|
          data.key = (node.text || '')
        end
        xml.at('Value') do |node|
          data.value = (node.text || '')
        end
        return data
      end
    end

    class RoleListType
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Role.parse(node)
        end
        data
      end
    end

    class Role
      def self.parse(xml)
        data = Types::Role.new
        xml.at('Path') do |node|
          data.path = (node.text || '')
        end
        xml.at('RoleName') do |node|
          data.role_name = (node.text || '')
        end
        xml.at('RoleId') do |node|
          data.role_id = (node.text || '')
        end
        xml.at('Arn') do |node|
          data.arn = (node.text || '')
        end
        xml.at('CreateDate') do |node|
          data.create_date = Time.parse(node.text) if node.text
        end
        xml.at('AssumeRolePolicyDocument') do |node|
          data.assume_role_policy_document = (node.text || '')
        end
        xml.at('Description') do |node|
          data.description = (node.text || '')
        end
        xml.at('MaxSessionDuration') do |node|
          data.max_session_duration = node.text&.to_i
        end
        xml.at('PermissionsBoundary') do |node|
          data.permissions_boundary = Parsers::AttachedPermissionsBoundary.parse(node)
        end
        xml.at('Tags') do |node|
          children = node.children('member')
          data.tags = Parsers::TagListType.parse(children)
        end
        xml.at('RoleLastUsed') do |node|
          data.role_last_used = Parsers::RoleLastUsed.parse(node)
        end
        return data
      end
    end

    class RoleLastUsed
      def self.parse(xml)
        data = Types::RoleLastUsed.new
        xml.at('LastUsedDate') do |node|
          data.last_used_date = Time.parse(node.text) if node.text
        end
        xml.at('Region') do |node|
          data.region = (node.text || '')
        end
        return data
      end
    end

    class AttachedPermissionsBoundary
      def self.parse(xml)
        data = Types::AttachedPermissionsBoundary.new
        xml.at('PermissionsBoundaryType') do |node|
          data.permissions_boundary_type = (node.text || '')
        end
        xml.at('PermissionsBoundaryArn') do |node|
          data.permissions_boundary_arn = (node.text || '')
        end
        return data
      end
    end

    # Error Parser for ConcurrentModificationException
    class ConcurrentModificationException
      def self.parse(http_resp)
        data = Types::ConcurrentModificationException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateLoginProfile
    class CreateLoginProfile
      def self.parse(http_resp)
        data = Types::CreateLoginProfileOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateLoginProfileResult')
        xml.at('LoginProfile') do |node|
          data.login_profile = Parsers::LoginProfile.parse(node)
        end
        data
      end
    end

    class LoginProfile
      def self.parse(xml)
        data = Types::LoginProfile.new
        xml.at('UserName') do |node|
          data.user_name = (node.text || '')
        end
        xml.at('CreateDate') do |node|
          data.create_date = Time.parse(node.text) if node.text
        end
        xml.at('PasswordResetRequired') do |node|
          data.password_reset_required = (node.text == 'true')
        end
        return data
      end
    end

    # Operation Parser for CreateOpenIDConnectProvider
    class CreateOpenIDConnectProvider
      def self.parse(http_resp)
        data = Types::CreateOpenIDConnectProviderOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateOpenIDConnectProviderResult')
        xml.at('OpenIDConnectProviderArn') do |node|
          data.open_id_connect_provider_arn = (node.text || '')
        end
        xml.at('Tags') do |node|
          children = node.children('member')
          data.tags = Parsers::TagListType.parse(children)
        end
        data
      end
    end

    # Operation Parser for CreatePolicy
    class CreatePolicy
      def self.parse(http_resp)
        data = Types::CreatePolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreatePolicyResult')
        xml.at('Policy') do |node|
          data.policy = Parsers::Policy.parse(node)
        end
        data
      end
    end

    class Policy
      def self.parse(xml)
        data = Types::Policy.new
        xml.at('PolicyName') do |node|
          data.policy_name = (node.text || '')
        end
        xml.at('PolicyId') do |node|
          data.policy_id = (node.text || '')
        end
        xml.at('Arn') do |node|
          data.arn = (node.text || '')
        end
        xml.at('Path') do |node|
          data.path = (node.text || '')
        end
        xml.at('DefaultVersionId') do |node|
          data.default_version_id = (node.text || '')
        end
        xml.at('AttachmentCount') do |node|
          data.attachment_count = node.text&.to_i
        end
        xml.at('PermissionsBoundaryUsageCount') do |node|
          data.permissions_boundary_usage_count = node.text&.to_i
        end
        xml.at('IsAttachable') do |node|
          data.is_attachable = (node.text == 'true')
        end
        xml.at('Description') do |node|
          data.description = (node.text || '')
        end
        xml.at('CreateDate') do |node|
          data.create_date = Time.parse(node.text) if node.text
        end
        xml.at('UpdateDate') do |node|
          data.update_date = Time.parse(node.text) if node.text
        end
        xml.at('Tags') do |node|
          children = node.children('member')
          data.tags = Parsers::TagListType.parse(children)
        end
        return data
      end
    end

    # Error Parser for MalformedPolicyDocumentException
    class MalformedPolicyDocumentException
      def self.parse(http_resp)
        data = Types::MalformedPolicyDocumentException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreatePolicyVersion
    class CreatePolicyVersion
      def self.parse(http_resp)
        data = Types::CreatePolicyVersionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreatePolicyVersionResult')
        xml.at('PolicyVersion') do |node|
          data.policy_version = Parsers::PolicyVersion.parse(node)
        end
        data
      end
    end

    class PolicyVersion
      def self.parse(xml)
        data = Types::PolicyVersion.new
        xml.at('Document') do |node|
          data.document = (node.text || '')
        end
        xml.at('VersionId') do |node|
          data.version_id = (node.text || '')
        end
        xml.at('IsDefaultVersion') do |node|
          data.is_default_version = (node.text == 'true')
        end
        xml.at('CreateDate') do |node|
          data.create_date = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    # Operation Parser for CreateRole
    class CreateRole
      def self.parse(http_resp)
        data = Types::CreateRoleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateRoleResult')
        xml.at('Role') do |node|
          data.role = Parsers::Role.parse(node)
        end
        data
      end
    end

    # Operation Parser for CreateSAMLProvider
    class CreateSAMLProvider
      def self.parse(http_resp)
        data = Types::CreateSAMLProviderOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateSAMLProviderResult')
        xml.at('SAMLProviderArn') do |node|
          data.saml_provider_arn = (node.text || '')
        end
        xml.at('Tags') do |node|
          children = node.children('member')
          data.tags = Parsers::TagListType.parse(children)
        end
        data
      end
    end

    # Operation Parser for CreateServiceLinkedRole
    class CreateServiceLinkedRole
      def self.parse(http_resp)
        data = Types::CreateServiceLinkedRoleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateServiceLinkedRoleResult')
        xml.at('Role') do |node|
          data.role = Parsers::Role.parse(node)
        end
        data
      end
    end

    # Operation Parser for CreateServiceSpecificCredential
    class CreateServiceSpecificCredential
      def self.parse(http_resp)
        data = Types::CreateServiceSpecificCredentialOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateServiceSpecificCredentialResult')
        xml.at('ServiceSpecificCredential') do |node|
          data.service_specific_credential = Parsers::ServiceSpecificCredential.parse(node)
        end
        data
      end
    end

    class ServiceSpecificCredential
      def self.parse(xml)
        data = Types::ServiceSpecificCredential.new
        xml.at('CreateDate') do |node|
          data.create_date = Time.parse(node.text) if node.text
        end
        xml.at('ServiceName') do |node|
          data.service_name = (node.text || '')
        end
        xml.at('ServiceUserName') do |node|
          data.service_user_name = (node.text || '')
        end
        xml.at('ServicePassword') do |node|
          data.service_password = (node.text || '')
        end
        xml.at('ServiceSpecificCredentialId') do |node|
          data.service_specific_credential_id = (node.text || '')
        end
        xml.at('UserName') do |node|
          data.user_name = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        return data
      end
    end

    # Error Parser for ServiceNotSupportedException
    class ServiceNotSupportedException
      def self.parse(http_resp)
        data = Types::ServiceNotSupportedException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateUser
    class CreateUser
      def self.parse(http_resp)
        data = Types::CreateUserOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateUserResult')
        xml.at('User') do |node|
          data.user = Parsers::User.parse(node)
        end
        data
      end
    end

    class User
      def self.parse(xml)
        data = Types::User.new
        xml.at('Path') do |node|
          data.path = (node.text || '')
        end
        xml.at('UserName') do |node|
          data.user_name = (node.text || '')
        end
        xml.at('UserId') do |node|
          data.user_id = (node.text || '')
        end
        xml.at('Arn') do |node|
          data.arn = (node.text || '')
        end
        xml.at('CreateDate') do |node|
          data.create_date = Time.parse(node.text) if node.text
        end
        xml.at('PasswordLastUsed') do |node|
          data.password_last_used = Time.parse(node.text) if node.text
        end
        xml.at('PermissionsBoundary') do |node|
          data.permissions_boundary = Parsers::AttachedPermissionsBoundary.parse(node)
        end
        xml.at('Tags') do |node|
          children = node.children('member')
          data.tags = Parsers::TagListType.parse(children)
        end
        return data
      end
    end

    # Operation Parser for CreateVirtualMFADevice
    class CreateVirtualMFADevice
      def self.parse(http_resp)
        data = Types::CreateVirtualMFADeviceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateVirtualMFADeviceResult')
        xml.at('VirtualMFADevice') do |node|
          data.virtual_mfa_device = Parsers::VirtualMFADevice.parse(node)
        end
        data
      end
    end

    class VirtualMFADevice
      def self.parse(xml)
        data = Types::VirtualMFADevice.new
        xml.at('SerialNumber') do |node|
          data.serial_number = (node.text || '')
        end
        xml.at('Base32StringSeed') do |node|
          data.base32_string_seed = ((Base64::decode64(node.text) unless node.text.nil?) || '')
        end
        xml.at('QRCodePNG') do |node|
          data.qr_code_png = ((Base64::decode64(node.text) unless node.text.nil?) || '')
        end
        xml.at('User') do |node|
          data.user = Parsers::User.parse(node)
        end
        xml.at('EnableDate') do |node|
          data.enable_date = Time.parse(node.text) if node.text
        end
        xml.at('Tags') do |node|
          children = node.children('member')
          data.tags = Parsers::TagListType.parse(children)
        end
        return data
      end
    end

    # Operation Parser for DeactivateMFADevice
    class DeactivateMFADevice
      def self.parse(http_resp)
        data = Types::DeactivateMFADeviceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeactivateMFADeviceResult')
        data
      end
    end

    # Operation Parser for DeleteAccessKey
    class DeleteAccessKey
      def self.parse(http_resp)
        data = Types::DeleteAccessKeyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteAccessKeyResult')
        data
      end
    end

    # Operation Parser for DeleteAccountAlias
    class DeleteAccountAlias
      def self.parse(http_resp)
        data = Types::DeleteAccountAliasOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteAccountAliasResult')
        data
      end
    end

    # Operation Parser for DeleteAccountPasswordPolicy
    class DeleteAccountPasswordPolicy
      def self.parse(http_resp)
        data = Types::DeleteAccountPasswordPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteAccountPasswordPolicyResult')
        data
      end
    end

    # Operation Parser for DeleteGroup
    class DeleteGroup
      def self.parse(http_resp)
        data = Types::DeleteGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteGroupResult')
        data
      end
    end

    # Error Parser for DeleteConflictException
    class DeleteConflictException
      def self.parse(http_resp)
        data = Types::DeleteConflictException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteGroupPolicy
    class DeleteGroupPolicy
      def self.parse(http_resp)
        data = Types::DeleteGroupPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteGroupPolicyResult')
        data
      end
    end

    # Operation Parser for DeleteInstanceProfile
    class DeleteInstanceProfile
      def self.parse(http_resp)
        data = Types::DeleteInstanceProfileOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteInstanceProfileResult')
        data
      end
    end

    # Operation Parser for DeleteLoginProfile
    class DeleteLoginProfile
      def self.parse(http_resp)
        data = Types::DeleteLoginProfileOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteLoginProfileResult')
        data
      end
    end

    # Operation Parser for DeleteOpenIDConnectProvider
    class DeleteOpenIDConnectProvider
      def self.parse(http_resp)
        data = Types::DeleteOpenIDConnectProviderOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteOpenIDConnectProviderResult')
        data
      end
    end

    # Operation Parser for DeletePolicy
    class DeletePolicy
      def self.parse(http_resp)
        data = Types::DeletePolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeletePolicyResult')
        data
      end
    end

    # Operation Parser for DeletePolicyVersion
    class DeletePolicyVersion
      def self.parse(http_resp)
        data = Types::DeletePolicyVersionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeletePolicyVersionResult')
        data
      end
    end

    # Operation Parser for DeleteRole
    class DeleteRole
      def self.parse(http_resp)
        data = Types::DeleteRoleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteRoleResult')
        data
      end
    end

    # Operation Parser for DeleteRolePermissionsBoundary
    class DeleteRolePermissionsBoundary
      def self.parse(http_resp)
        data = Types::DeleteRolePermissionsBoundaryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteRolePermissionsBoundaryResult')
        data
      end
    end

    # Operation Parser for DeleteRolePolicy
    class DeleteRolePolicy
      def self.parse(http_resp)
        data = Types::DeleteRolePolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteRolePolicyResult')
        data
      end
    end

    # Operation Parser for DeleteSAMLProvider
    class DeleteSAMLProvider
      def self.parse(http_resp)
        data = Types::DeleteSAMLProviderOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteSAMLProviderResult')
        data
      end
    end

    # Operation Parser for DeleteSSHPublicKey
    class DeleteSSHPublicKey
      def self.parse(http_resp)
        data = Types::DeleteSSHPublicKeyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteSSHPublicKeyResult')
        data
      end
    end

    # Operation Parser for DeleteServerCertificate
    class DeleteServerCertificate
      def self.parse(http_resp)
        data = Types::DeleteServerCertificateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteServerCertificateResult')
        data
      end
    end

    # Operation Parser for DeleteServiceLinkedRole
    class DeleteServiceLinkedRole
      def self.parse(http_resp)
        data = Types::DeleteServiceLinkedRoleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteServiceLinkedRoleResult')
        xml.at('DeletionTaskId') do |node|
          data.deletion_task_id = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteServiceSpecificCredential
    class DeleteServiceSpecificCredential
      def self.parse(http_resp)
        data = Types::DeleteServiceSpecificCredentialOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteServiceSpecificCredentialResult')
        data
      end
    end

    # Operation Parser for DeleteSigningCertificate
    class DeleteSigningCertificate
      def self.parse(http_resp)
        data = Types::DeleteSigningCertificateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteSigningCertificateResult')
        data
      end
    end

    # Operation Parser for DeleteUser
    class DeleteUser
      def self.parse(http_resp)
        data = Types::DeleteUserOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteUserResult')
        data
      end
    end

    # Operation Parser for DeleteUserPermissionsBoundary
    class DeleteUserPermissionsBoundary
      def self.parse(http_resp)
        data = Types::DeleteUserPermissionsBoundaryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteUserPermissionsBoundaryResult')
        data
      end
    end

    # Operation Parser for DeleteUserPolicy
    class DeleteUserPolicy
      def self.parse(http_resp)
        data = Types::DeleteUserPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteUserPolicyResult')
        data
      end
    end

    # Operation Parser for DeleteVirtualMFADevice
    class DeleteVirtualMFADevice
      def self.parse(http_resp)
        data = Types::DeleteVirtualMFADeviceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteVirtualMFADeviceResult')
        data
      end
    end

    # Operation Parser for DetachGroupPolicy
    class DetachGroupPolicy
      def self.parse(http_resp)
        data = Types::DetachGroupPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DetachGroupPolicyResult')
        data
      end
    end

    # Operation Parser for DetachRolePolicy
    class DetachRolePolicy
      def self.parse(http_resp)
        data = Types::DetachRolePolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DetachRolePolicyResult')
        data
      end
    end

    # Operation Parser for DetachUserPolicy
    class DetachUserPolicy
      def self.parse(http_resp)
        data = Types::DetachUserPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DetachUserPolicyResult')
        data
      end
    end

    # Operation Parser for EnableMFADevice
    class EnableMFADevice
      def self.parse(http_resp)
        data = Types::EnableMFADeviceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('EnableMFADeviceResult')
        data
      end
    end

    # Error Parser for InvalidAuthenticationCodeException
    class InvalidAuthenticationCodeException
      def self.parse(http_resp)
        data = Types::InvalidAuthenticationCodeException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for GenerateCredentialReport
    class GenerateCredentialReport
      def self.parse(http_resp)
        data = Types::GenerateCredentialReportOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GenerateCredentialReportResult')
        xml.at('State') do |node|
          data.state = (node.text || '')
        end
        xml.at('Description') do |node|
          data.description = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for GenerateOrganizationsAccessReport
    class GenerateOrganizationsAccessReport
      def self.parse(http_resp)
        data = Types::GenerateOrganizationsAccessReportOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GenerateOrganizationsAccessReportResult')
        xml.at('JobId') do |node|
          data.job_id = (node.text || '')
        end
        data
      end
    end

    # Error Parser for ReportGenerationLimitExceededException
    class ReportGenerationLimitExceededException
      def self.parse(http_resp)
        data = Types::ReportGenerationLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for GenerateServiceLastAccessedDetails
    class GenerateServiceLastAccessedDetails
      def self.parse(http_resp)
        data = Types::GenerateServiceLastAccessedDetailsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GenerateServiceLastAccessedDetailsResult')
        xml.at('JobId') do |node|
          data.job_id = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for GetAccessKeyLastUsed
    class GetAccessKeyLastUsed
      def self.parse(http_resp)
        data = Types::GetAccessKeyLastUsedOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetAccessKeyLastUsedResult')
        xml.at('UserName') do |node|
          data.user_name = (node.text || '')
        end
        xml.at('AccessKeyLastUsed') do |node|
          data.access_key_last_used = Parsers::AccessKeyLastUsed.parse(node)
        end
        data
      end
    end

    class AccessKeyLastUsed
      def self.parse(xml)
        data = Types::AccessKeyLastUsed.new
        xml.at('LastUsedDate') do |node|
          data.last_used_date = Time.parse(node.text) if node.text
        end
        xml.at('ServiceName') do |node|
          data.service_name = (node.text || '')
        end
        xml.at('Region') do |node|
          data.region = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for GetAccountAuthorizationDetails
    class GetAccountAuthorizationDetails
      def self.parse(http_resp)
        data = Types::GetAccountAuthorizationDetailsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetAccountAuthorizationDetailsResult')
        xml.at('UserDetailList') do |node|
          children = node.children('member')
          data.user_detail_list = Parsers::UserDetailListType.parse(children)
        end
        xml.at('GroupDetailList') do |node|
          children = node.children('member')
          data.group_detail_list = Parsers::GroupDetailListType.parse(children)
        end
        xml.at('RoleDetailList') do |node|
          children = node.children('member')
          data.role_detail_list = Parsers::RoleDetailListType.parse(children)
        end
        xml.at('Policies') do |node|
          children = node.children('member')
          data.policies = Parsers::ManagedPolicyDetailListType.parse(children)
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    class ManagedPolicyDetailListType
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ManagedPolicyDetail.parse(node)
        end
        data
      end
    end

    class ManagedPolicyDetail
      def self.parse(xml)
        data = Types::ManagedPolicyDetail.new
        xml.at('PolicyName') do |node|
          data.policy_name = (node.text || '')
        end
        xml.at('PolicyId') do |node|
          data.policy_id = (node.text || '')
        end
        xml.at('Arn') do |node|
          data.arn = (node.text || '')
        end
        xml.at('Path') do |node|
          data.path = (node.text || '')
        end
        xml.at('DefaultVersionId') do |node|
          data.default_version_id = (node.text || '')
        end
        xml.at('AttachmentCount') do |node|
          data.attachment_count = node.text&.to_i
        end
        xml.at('PermissionsBoundaryUsageCount') do |node|
          data.permissions_boundary_usage_count = node.text&.to_i
        end
        xml.at('IsAttachable') do |node|
          data.is_attachable = (node.text == 'true')
        end
        xml.at('Description') do |node|
          data.description = (node.text || '')
        end
        xml.at('CreateDate') do |node|
          data.create_date = Time.parse(node.text) if node.text
        end
        xml.at('UpdateDate') do |node|
          data.update_date = Time.parse(node.text) if node.text
        end
        xml.at('PolicyVersionList') do |node|
          children = node.children('member')
          data.policy_version_list = Parsers::PolicyDocumentVersionListType.parse(children)
        end
        return data
      end
    end

    class PolicyDocumentVersionListType
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::PolicyVersion.parse(node)
        end
        data
      end
    end

    class RoleDetailListType
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::RoleDetail.parse(node)
        end
        data
      end
    end

    class RoleDetail
      def self.parse(xml)
        data = Types::RoleDetail.new
        xml.at('Path') do |node|
          data.path = (node.text || '')
        end
        xml.at('RoleName') do |node|
          data.role_name = (node.text || '')
        end
        xml.at('RoleId') do |node|
          data.role_id = (node.text || '')
        end
        xml.at('Arn') do |node|
          data.arn = (node.text || '')
        end
        xml.at('CreateDate') do |node|
          data.create_date = Time.parse(node.text) if node.text
        end
        xml.at('AssumeRolePolicyDocument') do |node|
          data.assume_role_policy_document = (node.text || '')
        end
        xml.at('InstanceProfileList') do |node|
          children = node.children('member')
          data.instance_profile_list = Parsers::InstanceProfileListType.parse(children)
        end
        xml.at('RolePolicyList') do |node|
          children = node.children('member')
          data.role_policy_list = Parsers::PolicyDetailListType.parse(children)
        end
        xml.at('AttachedManagedPolicies') do |node|
          children = node.children('member')
          data.attached_managed_policies = Parsers::AttachedPoliciesListType.parse(children)
        end
        xml.at('PermissionsBoundary') do |node|
          data.permissions_boundary = Parsers::AttachedPermissionsBoundary.parse(node)
        end
        xml.at('Tags') do |node|
          children = node.children('member')
          data.tags = Parsers::TagListType.parse(children)
        end
        xml.at('RoleLastUsed') do |node|
          data.role_last_used = Parsers::RoleLastUsed.parse(node)
        end
        return data
      end
    end

    class AttachedPoliciesListType
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::AttachedPolicy.parse(node)
        end
        data
      end
    end

    class AttachedPolicy
      def self.parse(xml)
        data = Types::AttachedPolicy.new
        xml.at('PolicyName') do |node|
          data.policy_name = (node.text || '')
        end
        xml.at('PolicyArn') do |node|
          data.policy_arn = (node.text || '')
        end
        return data
      end
    end

    class PolicyDetailListType
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::PolicyDetail.parse(node)
        end
        data
      end
    end

    class PolicyDetail
      def self.parse(xml)
        data = Types::PolicyDetail.new
        xml.at('PolicyName') do |node|
          data.policy_name = (node.text || '')
        end
        xml.at('PolicyDocument') do |node|
          data.policy_document = (node.text || '')
        end
        return data
      end
    end

    class InstanceProfileListType
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::InstanceProfile.parse(node)
        end
        data
      end
    end

    class GroupDetailListType
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::GroupDetail.parse(node)
        end
        data
      end
    end

    class GroupDetail
      def self.parse(xml)
        data = Types::GroupDetail.new
        xml.at('Path') do |node|
          data.path = (node.text || '')
        end
        xml.at('GroupName') do |node|
          data.group_name = (node.text || '')
        end
        xml.at('GroupId') do |node|
          data.group_id = (node.text || '')
        end
        xml.at('Arn') do |node|
          data.arn = (node.text || '')
        end
        xml.at('CreateDate') do |node|
          data.create_date = Time.parse(node.text) if node.text
        end
        xml.at('GroupPolicyList') do |node|
          children = node.children('member')
          data.group_policy_list = Parsers::PolicyDetailListType.parse(children)
        end
        xml.at('AttachedManagedPolicies') do |node|
          children = node.children('member')
          data.attached_managed_policies = Parsers::AttachedPoliciesListType.parse(children)
        end
        return data
      end
    end

    class UserDetailListType
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::UserDetail.parse(node)
        end
        data
      end
    end

    class UserDetail
      def self.parse(xml)
        data = Types::UserDetail.new
        xml.at('Path') do |node|
          data.path = (node.text || '')
        end
        xml.at('UserName') do |node|
          data.user_name = (node.text || '')
        end
        xml.at('UserId') do |node|
          data.user_id = (node.text || '')
        end
        xml.at('Arn') do |node|
          data.arn = (node.text || '')
        end
        xml.at('CreateDate') do |node|
          data.create_date = Time.parse(node.text) if node.text
        end
        xml.at('UserPolicyList') do |node|
          children = node.children('member')
          data.user_policy_list = Parsers::PolicyDetailListType.parse(children)
        end
        xml.at('GroupList') do |node|
          children = node.children('member')
          data.group_list = Parsers::GroupNameListType.parse(children)
        end
        xml.at('AttachedManagedPolicies') do |node|
          children = node.children('member')
          data.attached_managed_policies = Parsers::AttachedPoliciesListType.parse(children)
        end
        xml.at('PermissionsBoundary') do |node|
          data.permissions_boundary = Parsers::AttachedPermissionsBoundary.parse(node)
        end
        xml.at('Tags') do |node|
          children = node.children('member')
          data.tags = Parsers::TagListType.parse(children)
        end
        return data
      end
    end

    class GroupNameListType
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Operation Parser for GetAccountPasswordPolicy
    class GetAccountPasswordPolicy
      def self.parse(http_resp)
        data = Types::GetAccountPasswordPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetAccountPasswordPolicyResult')
        xml.at('PasswordPolicy') do |node|
          data.password_policy = Parsers::PasswordPolicy.parse(node)
        end
        data
      end
    end

    class PasswordPolicy
      def self.parse(xml)
        data = Types::PasswordPolicy.new
        xml.at('MinimumPasswordLength') do |node|
          data.minimum_password_length = node.text&.to_i
        end
        xml.at('RequireSymbols') do |node|
          data.require_symbols = (node.text == 'true')
        end
        xml.at('RequireNumbers') do |node|
          data.require_numbers = (node.text == 'true')
        end
        xml.at('RequireUppercaseCharacters') do |node|
          data.require_uppercase_characters = (node.text == 'true')
        end
        xml.at('RequireLowercaseCharacters') do |node|
          data.require_lowercase_characters = (node.text == 'true')
        end
        xml.at('AllowUsersToChangePassword') do |node|
          data.allow_users_to_change_password = (node.text == 'true')
        end
        xml.at('ExpirePasswords') do |node|
          data.expire_passwords = (node.text == 'true')
        end
        xml.at('MaxPasswordAge') do |node|
          data.max_password_age = node.text&.to_i
        end
        xml.at('PasswordReusePrevention') do |node|
          data.password_reuse_prevention = node.text&.to_i
        end
        xml.at('HardExpiry') do |node|
          data.hard_expiry = (node.text == 'true')
        end
        return data
      end
    end

    # Operation Parser for GetAccountSummary
    class GetAccountSummary
      def self.parse(http_resp)
        data = Types::GetAccountSummaryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetAccountSummaryResult')
        xml.at('SummaryMap') do |node|
          children = node.children('entry')
          data.summary_map = Parsers::SummaryMapType.parse(children)
        end
        data
      end
    end

    class SummaryMapType
      def self.parse(xml)
        data = {}
        xml.each do |entry_node|
          key = entry_node.at('key').text
          node = entry_node.at('value')
          data[key] = node.text&.to_i
        end
        data
      end
    end

    # Operation Parser for GetContextKeysForCustomPolicy
    class GetContextKeysForCustomPolicy
      def self.parse(http_resp)
        data = Types::GetContextKeysForCustomPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetContextKeysForCustomPolicyResult')
        xml.at('ContextKeyNames') do |node|
          children = node.children('member')
          data.context_key_names = Parsers::ContextKeyNamesResultListType.parse(children)
        end
        data
      end
    end

    class ContextKeyNamesResultListType
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Operation Parser for GetContextKeysForPrincipalPolicy
    class GetContextKeysForPrincipalPolicy
      def self.parse(http_resp)
        data = Types::GetContextKeysForPrincipalPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetContextKeysForPrincipalPolicyResult')
        xml.at('ContextKeyNames') do |node|
          children = node.children('member')
          data.context_key_names = Parsers::ContextKeyNamesResultListType.parse(children)
        end
        data
      end
    end

    # Operation Parser for GetCredentialReport
    class GetCredentialReport
      def self.parse(http_resp)
        data = Types::GetCredentialReportOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetCredentialReportResult')
        xml.at('Content') do |node|
          data.content = ((Base64::decode64(node.text) unless node.text.nil?) || '')
        end
        xml.at('ReportFormat') do |node|
          data.report_format = (node.text || '')
        end
        xml.at('GeneratedTime') do |node|
          data.generated_time = Time.parse(node.text) if node.text
        end
        data
      end
    end

    # Error Parser for CredentialReportNotReadyException
    class CredentialReportNotReadyException
      def self.parse(http_resp)
        data = Types::CredentialReportNotReadyException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for CredentialReportExpiredException
    class CredentialReportExpiredException
      def self.parse(http_resp)
        data = Types::CredentialReportExpiredException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for CredentialReportNotPresentException
    class CredentialReportNotPresentException
      def self.parse(http_resp)
        data = Types::CredentialReportNotPresentException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for GetGroup
    class GetGroup
      def self.parse(http_resp)
        data = Types::GetGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetGroupResult')
        xml.at('Group') do |node|
          data.group = Parsers::Group.parse(node)
        end
        xml.at('Users') do |node|
          children = node.children('member')
          data.users = Parsers::UserListType.parse(children)
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    class UserListType
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::User.parse(node)
        end
        data
      end
    end

    # Operation Parser for GetGroupPolicy
    class GetGroupPolicy
      def self.parse(http_resp)
        data = Types::GetGroupPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetGroupPolicyResult')
        xml.at('GroupName') do |node|
          data.group_name = (node.text || '')
        end
        xml.at('PolicyName') do |node|
          data.policy_name = (node.text || '')
        end
        xml.at('PolicyDocument') do |node|
          data.policy_document = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for GetInstanceProfile
    class GetInstanceProfile
      def self.parse(http_resp)
        data = Types::GetInstanceProfileOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetInstanceProfileResult')
        xml.at('InstanceProfile') do |node|
          data.instance_profile = Parsers::InstanceProfile.parse(node)
        end
        data
      end
    end

    # Operation Parser for GetLoginProfile
    class GetLoginProfile
      def self.parse(http_resp)
        data = Types::GetLoginProfileOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetLoginProfileResult')
        xml.at('LoginProfile') do |node|
          data.login_profile = Parsers::LoginProfile.parse(node)
        end
        data
      end
    end

    # Operation Parser for GetOpenIDConnectProvider
    class GetOpenIDConnectProvider
      def self.parse(http_resp)
        data = Types::GetOpenIDConnectProviderOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetOpenIDConnectProviderResult')
        xml.at('Url') do |node|
          data.url = (node.text || '')
        end
        xml.at('ClientIDList') do |node|
          children = node.children('member')
          data.client_id_list = Parsers::ClientIDListType.parse(children)
        end
        xml.at('ThumbprintList') do |node|
          children = node.children('member')
          data.thumbprint_list = Parsers::ThumbprintListType.parse(children)
        end
        xml.at('CreateDate') do |node|
          data.create_date = Time.parse(node.text) if node.text
        end
        xml.at('Tags') do |node|
          children = node.children('member')
          data.tags = Parsers::TagListType.parse(children)
        end
        data
      end
    end

    class ThumbprintListType
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class ClientIDListType
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Operation Parser for GetOrganizationsAccessReport
    class GetOrganizationsAccessReport
      def self.parse(http_resp)
        data = Types::GetOrganizationsAccessReportOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetOrganizationsAccessReportResult')
        xml.at('JobStatus') do |node|
          data.job_status = (node.text || '')
        end
        xml.at('JobCreationDate') do |node|
          data.job_creation_date = Time.parse(node.text) if node.text
        end
        xml.at('JobCompletionDate') do |node|
          data.job_completion_date = Time.parse(node.text) if node.text
        end
        xml.at('NumberOfServicesAccessible') do |node|
          data.number_of_services_accessible = node.text&.to_i
        end
        xml.at('NumberOfServicesNotAccessed') do |node|
          data.number_of_services_not_accessed = node.text&.to_i
        end
        xml.at('AccessDetails') do |node|
          children = node.children('member')
          data.access_details = Parsers::AccessDetails.parse(children)
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('ErrorDetails') do |node|
          data.error_details = Parsers::ErrorDetails.parse(node)
        end
        data
      end
    end

    class ErrorDetails
      def self.parse(xml)
        data = Types::ErrorDetails.new
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        xml.at('Code') do |node|
          data.code = (node.text || '')
        end
        return data
      end
    end

    class AccessDetails
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::AccessDetail.parse(node)
        end
        data
      end
    end

    class AccessDetail
      def self.parse(xml)
        data = Types::AccessDetail.new
        xml.at('ServiceName') do |node|
          data.service_name = (node.text || '')
        end
        xml.at('ServiceNamespace') do |node|
          data.service_namespace = (node.text || '')
        end
        xml.at('Region') do |node|
          data.region = (node.text || '')
        end
        xml.at('EntityPath') do |node|
          data.entity_path = (node.text || '')
        end
        xml.at('LastAuthenticatedTime') do |node|
          data.last_authenticated_time = Time.parse(node.text) if node.text
        end
        xml.at('TotalAuthenticatedEntities') do |node|
          data.total_authenticated_entities = node.text&.to_i
        end
        return data
      end
    end

    # Operation Parser for GetPolicy
    class GetPolicy
      def self.parse(http_resp)
        data = Types::GetPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetPolicyResult')
        xml.at('Policy') do |node|
          data.policy = Parsers::Policy.parse(node)
        end
        data
      end
    end

    # Operation Parser for GetPolicyVersion
    class GetPolicyVersion
      def self.parse(http_resp)
        data = Types::GetPolicyVersionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetPolicyVersionResult')
        xml.at('PolicyVersion') do |node|
          data.policy_version = Parsers::PolicyVersion.parse(node)
        end
        data
      end
    end

    # Operation Parser for GetRole
    class GetRole
      def self.parse(http_resp)
        data = Types::GetRoleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetRoleResult')
        xml.at('Role') do |node|
          data.role = Parsers::Role.parse(node)
        end
        data
      end
    end

    # Operation Parser for GetRolePolicy
    class GetRolePolicy
      def self.parse(http_resp)
        data = Types::GetRolePolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetRolePolicyResult')
        xml.at('RoleName') do |node|
          data.role_name = (node.text || '')
        end
        xml.at('PolicyName') do |node|
          data.policy_name = (node.text || '')
        end
        xml.at('PolicyDocument') do |node|
          data.policy_document = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for GetSAMLProvider
    class GetSAMLProvider
      def self.parse(http_resp)
        data = Types::GetSAMLProviderOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetSAMLProviderResult')
        xml.at('SAMLMetadataDocument') do |node|
          data.saml_metadata_document = (node.text || '')
        end
        xml.at('CreateDate') do |node|
          data.create_date = Time.parse(node.text) if node.text
        end
        xml.at('ValidUntil') do |node|
          data.valid_until = Time.parse(node.text) if node.text
        end
        xml.at('Tags') do |node|
          children = node.children('member')
          data.tags = Parsers::TagListType.parse(children)
        end
        data
      end
    end

    # Operation Parser for GetSSHPublicKey
    class GetSSHPublicKey
      def self.parse(http_resp)
        data = Types::GetSSHPublicKeyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetSSHPublicKeyResult')
        xml.at('SSHPublicKey') do |node|
          data.ssh_public_key = Parsers::SSHPublicKey.parse(node)
        end
        data
      end
    end

    class SSHPublicKey
      def self.parse(xml)
        data = Types::SSHPublicKey.new
        xml.at('UserName') do |node|
          data.user_name = (node.text || '')
        end
        xml.at('SSHPublicKeyId') do |node|
          data.ssh_public_key_id = (node.text || '')
        end
        xml.at('Fingerprint') do |node|
          data.fingerprint = (node.text || '')
        end
        xml.at('SSHPublicKeyBody') do |node|
          data.ssh_public_key_body = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('UploadDate') do |node|
          data.upload_date = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    # Error Parser for UnrecognizedPublicKeyEncodingException
    class UnrecognizedPublicKeyEncodingException
      def self.parse(http_resp)
        data = Types::UnrecognizedPublicKeyEncodingException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for GetServerCertificate
    class GetServerCertificate
      def self.parse(http_resp)
        data = Types::GetServerCertificateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetServerCertificateResult')
        xml.at('ServerCertificate') do |node|
          data.server_certificate = Parsers::ServerCertificate.parse(node)
        end
        data
      end
    end

    class ServerCertificate
      def self.parse(xml)
        data = Types::ServerCertificate.new
        xml.at('ServerCertificateMetadata') do |node|
          data.server_certificate_metadata = Parsers::ServerCertificateMetadata.parse(node)
        end
        xml.at('CertificateBody') do |node|
          data.certificate_body = (node.text || '')
        end
        xml.at('CertificateChain') do |node|
          data.certificate_chain = (node.text || '')
        end
        xml.at('Tags') do |node|
          children = node.children('member')
          data.tags = Parsers::TagListType.parse(children)
        end
        return data
      end
    end

    class ServerCertificateMetadata
      def self.parse(xml)
        data = Types::ServerCertificateMetadata.new
        xml.at('Path') do |node|
          data.path = (node.text || '')
        end
        xml.at('ServerCertificateName') do |node|
          data.server_certificate_name = (node.text || '')
        end
        xml.at('ServerCertificateId') do |node|
          data.server_certificate_id = (node.text || '')
        end
        xml.at('Arn') do |node|
          data.arn = (node.text || '')
        end
        xml.at('UploadDate') do |node|
          data.upload_date = Time.parse(node.text) if node.text
        end
        xml.at('Expiration') do |node|
          data.expiration = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    # Operation Parser for GetServiceLastAccessedDetails
    class GetServiceLastAccessedDetails
      def self.parse(http_resp)
        data = Types::GetServiceLastAccessedDetailsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetServiceLastAccessedDetailsResult')
        xml.at('JobStatus') do |node|
          data.job_status = (node.text || '')
        end
        xml.at('JobType') do |node|
          data.job_type = (node.text || '')
        end
        xml.at('JobCreationDate') do |node|
          data.job_creation_date = Time.parse(node.text) if node.text
        end
        xml.at('ServicesLastAccessed') do |node|
          children = node.children('member')
          data.services_last_accessed = Parsers::ServicesLastAccessed.parse(children)
        end
        xml.at('JobCompletionDate') do |node|
          data.job_completion_date = Time.parse(node.text) if node.text
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('Error') do |node|
          data.error = Parsers::ErrorDetails.parse(node)
        end
        data
      end
    end

    class ServicesLastAccessed
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ServiceLastAccessed.parse(node)
        end
        data
      end
    end

    class ServiceLastAccessed
      def self.parse(xml)
        data = Types::ServiceLastAccessed.new
        xml.at('ServiceName') do |node|
          data.service_name = (node.text || '')
        end
        xml.at('LastAuthenticated') do |node|
          data.last_authenticated = Time.parse(node.text) if node.text
        end
        xml.at('ServiceNamespace') do |node|
          data.service_namespace = (node.text || '')
        end
        xml.at('LastAuthenticatedEntity') do |node|
          data.last_authenticated_entity = (node.text || '')
        end
        xml.at('LastAuthenticatedRegion') do |node|
          data.last_authenticated_region = (node.text || '')
        end
        xml.at('TotalAuthenticatedEntities') do |node|
          data.total_authenticated_entities = node.text&.to_i
        end
        xml.at('TrackedActionsLastAccessed') do |node|
          children = node.children('member')
          data.tracked_actions_last_accessed = Parsers::TrackedActionsLastAccessed.parse(children)
        end
        return data
      end
    end

    class TrackedActionsLastAccessed
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::TrackedActionLastAccessed.parse(node)
        end
        data
      end
    end

    class TrackedActionLastAccessed
      def self.parse(xml)
        data = Types::TrackedActionLastAccessed.new
        xml.at('ActionName') do |node|
          data.action_name = (node.text || '')
        end
        xml.at('LastAccessedEntity') do |node|
          data.last_accessed_entity = (node.text || '')
        end
        xml.at('LastAccessedTime') do |node|
          data.last_accessed_time = Time.parse(node.text) if node.text
        end
        xml.at('LastAccessedRegion') do |node|
          data.last_accessed_region = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for GetServiceLastAccessedDetailsWithEntities
    class GetServiceLastAccessedDetailsWithEntities
      def self.parse(http_resp)
        data = Types::GetServiceLastAccessedDetailsWithEntitiesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetServiceLastAccessedDetailsWithEntitiesResult')
        xml.at('JobStatus') do |node|
          data.job_status = (node.text || '')
        end
        xml.at('JobCreationDate') do |node|
          data.job_creation_date = Time.parse(node.text) if node.text
        end
        xml.at('JobCompletionDate') do |node|
          data.job_completion_date = Time.parse(node.text) if node.text
        end
        xml.at('EntityDetailsList') do |node|
          children = node.children('member')
          data.entity_details_list = Parsers::EntityDetailsListType.parse(children)
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('Error') do |node|
          data.error = Parsers::ErrorDetails.parse(node)
        end
        data
      end
    end

    class EntityDetailsListType
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::EntityDetails.parse(node)
        end
        data
      end
    end

    class EntityDetails
      def self.parse(xml)
        data = Types::EntityDetails.new
        xml.at('EntityInfo') do |node|
          data.entity_info = Parsers::EntityInfo.parse(node)
        end
        xml.at('LastAuthenticated') do |node|
          data.last_authenticated = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    class EntityInfo
      def self.parse(xml)
        data = Types::EntityInfo.new
        xml.at('Arn') do |node|
          data.arn = (node.text || '')
        end
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('Type') do |node|
          data.type = (node.text || '')
        end
        xml.at('Id') do |node|
          data.id = (node.text || '')
        end
        xml.at('Path') do |node|
          data.path = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for GetServiceLinkedRoleDeletionStatus
    class GetServiceLinkedRoleDeletionStatus
      def self.parse(http_resp)
        data = Types::GetServiceLinkedRoleDeletionStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetServiceLinkedRoleDeletionStatusResult')
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('Reason') do |node|
          data.reason = Parsers::DeletionTaskFailureReasonType.parse(node)
        end
        data
      end
    end

    class DeletionTaskFailureReasonType
      def self.parse(xml)
        data = Types::DeletionTaskFailureReasonType.new
        xml.at('Reason') do |node|
          data.reason = (node.text || '')
        end
        xml.at('RoleUsageList') do |node|
          children = node.children('member')
          data.role_usage_list = Parsers::RoleUsageListType.parse(children)
        end
        return data
      end
    end

    class RoleUsageListType
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::RoleUsageType.parse(node)
        end
        data
      end
    end

    class RoleUsageType
      def self.parse(xml)
        data = Types::RoleUsageType.new
        xml.at('Region') do |node|
          data.region = (node.text || '')
        end
        xml.at('Resources') do |node|
          children = node.children('member')
          data.resources = Parsers::ArnListType.parse(children)
        end
        return data
      end
    end

    class ArnListType
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Operation Parser for GetUser
    class GetUser
      def self.parse(http_resp)
        data = Types::GetUserOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetUserResult')
        xml.at('User') do |node|
          data.user = Parsers::User.parse(node)
        end
        data
      end
    end

    # Operation Parser for GetUserPolicy
    class GetUserPolicy
      def self.parse(http_resp)
        data = Types::GetUserPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetUserPolicyResult')
        xml.at('UserName') do |node|
          data.user_name = (node.text || '')
        end
        xml.at('PolicyName') do |node|
          data.policy_name = (node.text || '')
        end
        xml.at('PolicyDocument') do |node|
          data.policy_document = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ListAccessKeys
    class ListAccessKeys
      def self.parse(http_resp)
        data = Types::ListAccessKeysOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListAccessKeysResult')
        xml.at('AccessKeyMetadata') do |node|
          children = node.children('member')
          data.access_key_metadata = Parsers::AccessKeyMetadataListType.parse(children)
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    class AccessKeyMetadataListType
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::AccessKeyMetadata.parse(node)
        end
        data
      end
    end

    class AccessKeyMetadata
      def self.parse(xml)
        data = Types::AccessKeyMetadata.new
        xml.at('UserName') do |node|
          data.user_name = (node.text || '')
        end
        xml.at('AccessKeyId') do |node|
          data.access_key_id = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('CreateDate') do |node|
          data.create_date = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    # Operation Parser for ListAccountAliases
    class ListAccountAliases
      def self.parse(http_resp)
        data = Types::ListAccountAliasesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListAccountAliasesResult')
        xml.at('AccountAliases') do |node|
          children = node.children('member')
          data.account_aliases = Parsers::AccountAliasListType.parse(children)
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    class AccountAliasListType
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ListAttachedGroupPolicies
    class ListAttachedGroupPolicies
      def self.parse(http_resp)
        data = Types::ListAttachedGroupPoliciesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListAttachedGroupPoliciesResult')
        xml.at('AttachedPolicies') do |node|
          children = node.children('member')
          data.attached_policies = Parsers::AttachedPoliciesListType.parse(children)
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ListAttachedRolePolicies
    class ListAttachedRolePolicies
      def self.parse(http_resp)
        data = Types::ListAttachedRolePoliciesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListAttachedRolePoliciesResult')
        xml.at('AttachedPolicies') do |node|
          children = node.children('member')
          data.attached_policies = Parsers::AttachedPoliciesListType.parse(children)
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ListAttachedUserPolicies
    class ListAttachedUserPolicies
      def self.parse(http_resp)
        data = Types::ListAttachedUserPoliciesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListAttachedUserPoliciesResult')
        xml.at('AttachedPolicies') do |node|
          children = node.children('member')
          data.attached_policies = Parsers::AttachedPoliciesListType.parse(children)
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ListEntitiesForPolicy
    class ListEntitiesForPolicy
      def self.parse(http_resp)
        data = Types::ListEntitiesForPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListEntitiesForPolicyResult')
        xml.at('PolicyGroups') do |node|
          children = node.children('member')
          data.policy_groups = Parsers::PolicyGroupListType.parse(children)
        end
        xml.at('PolicyUsers') do |node|
          children = node.children('member')
          data.policy_users = Parsers::PolicyUserListType.parse(children)
        end
        xml.at('PolicyRoles') do |node|
          children = node.children('member')
          data.policy_roles = Parsers::PolicyRoleListType.parse(children)
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    class PolicyRoleListType
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::PolicyRole.parse(node)
        end
        data
      end
    end

    class PolicyRole
      def self.parse(xml)
        data = Types::PolicyRole.new
        xml.at('RoleName') do |node|
          data.role_name = (node.text || '')
        end
        xml.at('RoleId') do |node|
          data.role_id = (node.text || '')
        end
        return data
      end
    end

    class PolicyUserListType
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::PolicyUser.parse(node)
        end
        data
      end
    end

    class PolicyUser
      def self.parse(xml)
        data = Types::PolicyUser.new
        xml.at('UserName') do |node|
          data.user_name = (node.text || '')
        end
        xml.at('UserId') do |node|
          data.user_id = (node.text || '')
        end
        return data
      end
    end

    class PolicyGroupListType
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::PolicyGroup.parse(node)
        end
        data
      end
    end

    class PolicyGroup
      def self.parse(xml)
        data = Types::PolicyGroup.new
        xml.at('GroupName') do |node|
          data.group_name = (node.text || '')
        end
        xml.at('GroupId') do |node|
          data.group_id = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for ListGroupPolicies
    class ListGroupPolicies
      def self.parse(http_resp)
        data = Types::ListGroupPoliciesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListGroupPoliciesResult')
        xml.at('PolicyNames') do |node|
          children = node.children('member')
          data.policy_names = Parsers::PolicyNameListType.parse(children)
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    class PolicyNameListType
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ListGroups
    class ListGroups
      def self.parse(http_resp)
        data = Types::ListGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListGroupsResult')
        xml.at('Groups') do |node|
          children = node.children('member')
          data.groups = Parsers::GroupListType.parse(children)
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    class GroupListType
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Group.parse(node)
        end
        data
      end
    end

    # Operation Parser for ListGroupsForUser
    class ListGroupsForUser
      def self.parse(http_resp)
        data = Types::ListGroupsForUserOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListGroupsForUserResult')
        xml.at('Groups') do |node|
          children = node.children('member')
          data.groups = Parsers::GroupListType.parse(children)
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ListInstanceProfileTags
    class ListInstanceProfileTags
      def self.parse(http_resp)
        data = Types::ListInstanceProfileTagsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListInstanceProfileTagsResult')
        xml.at('Tags') do |node|
          children = node.children('member')
          data.tags = Parsers::TagListType.parse(children)
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ListInstanceProfiles
    class ListInstanceProfiles
      def self.parse(http_resp)
        data = Types::ListInstanceProfilesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListInstanceProfilesResult')
        xml.at('InstanceProfiles') do |node|
          children = node.children('member')
          data.instance_profiles = Parsers::InstanceProfileListType.parse(children)
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ListInstanceProfilesForRole
    class ListInstanceProfilesForRole
      def self.parse(http_resp)
        data = Types::ListInstanceProfilesForRoleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListInstanceProfilesForRoleResult')
        xml.at('InstanceProfiles') do |node|
          children = node.children('member')
          data.instance_profiles = Parsers::InstanceProfileListType.parse(children)
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ListMFADeviceTags
    class ListMFADeviceTags
      def self.parse(http_resp)
        data = Types::ListMFADeviceTagsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListMFADeviceTagsResult')
        xml.at('Tags') do |node|
          children = node.children('member')
          data.tags = Parsers::TagListType.parse(children)
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ListMFADevices
    class ListMFADevices
      def self.parse(http_resp)
        data = Types::ListMFADevicesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListMFADevicesResult')
        xml.at('MFADevices') do |node|
          children = node.children('member')
          data.mfa_devices = Parsers::MfaDeviceListType.parse(children)
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    class MfaDeviceListType
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::MFADevice.parse(node)
        end
        data
      end
    end

    class MFADevice
      def self.parse(xml)
        data = Types::MFADevice.new
        xml.at('UserName') do |node|
          data.user_name = (node.text || '')
        end
        xml.at('SerialNumber') do |node|
          data.serial_number = (node.text || '')
        end
        xml.at('EnableDate') do |node|
          data.enable_date = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    # Operation Parser for ListOpenIDConnectProviderTags
    class ListOpenIDConnectProviderTags
      def self.parse(http_resp)
        data = Types::ListOpenIDConnectProviderTagsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListOpenIDConnectProviderTagsResult')
        xml.at('Tags') do |node|
          children = node.children('member')
          data.tags = Parsers::TagListType.parse(children)
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ListOpenIDConnectProviders
    class ListOpenIDConnectProviders
      def self.parse(http_resp)
        data = Types::ListOpenIDConnectProvidersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListOpenIDConnectProvidersResult')
        xml.at('OpenIDConnectProviderList') do |node|
          children = node.children('member')
          data.open_id_connect_provider_list = Parsers::OpenIDConnectProviderListType.parse(children)
        end
        data
      end
    end

    class OpenIDConnectProviderListType
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::OpenIDConnectProviderListEntry.parse(node)
        end
        data
      end
    end

    class OpenIDConnectProviderListEntry
      def self.parse(xml)
        data = Types::OpenIDConnectProviderListEntry.new
        xml.at('Arn') do |node|
          data.arn = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for ListPolicies
    class ListPolicies
      def self.parse(http_resp)
        data = Types::ListPoliciesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListPoliciesResult')
        xml.at('Policies') do |node|
          children = node.children('member')
          data.policies = Parsers::PolicyListType.parse(children)
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    class PolicyListType
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Policy.parse(node)
        end
        data
      end
    end

    # Operation Parser for ListPoliciesGrantingServiceAccess
    class ListPoliciesGrantingServiceAccess
      def self.parse(http_resp)
        data = Types::ListPoliciesGrantingServiceAccessOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListPoliciesGrantingServiceAccessResult')
        xml.at('PoliciesGrantingServiceAccess') do |node|
          children = node.children('member')
          data.policies_granting_service_access = Parsers::ListPolicyGrantingServiceAccessResponseListType.parse(children)
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    class ListPolicyGrantingServiceAccessResponseListType
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ListPoliciesGrantingServiceAccessEntry.parse(node)
        end
        data
      end
    end

    class ListPoliciesGrantingServiceAccessEntry
      def self.parse(xml)
        data = Types::ListPoliciesGrantingServiceAccessEntry.new
        xml.at('ServiceNamespace') do |node|
          data.service_namespace = (node.text || '')
        end
        xml.at('Policies') do |node|
          children = node.children('member')
          data.policies = Parsers::PolicyGrantingServiceAccessListType.parse(children)
        end
        return data
      end
    end

    class PolicyGrantingServiceAccessListType
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::PolicyGrantingServiceAccess.parse(node)
        end
        data
      end
    end

    class PolicyGrantingServiceAccess
      def self.parse(xml)
        data = Types::PolicyGrantingServiceAccess.new
        xml.at('PolicyName') do |node|
          data.policy_name = (node.text || '')
        end
        xml.at('PolicyType') do |node|
          data.policy_type = (node.text || '')
        end
        xml.at('PolicyArn') do |node|
          data.policy_arn = (node.text || '')
        end
        xml.at('EntityType') do |node|
          data.entity_type = (node.text || '')
        end
        xml.at('EntityName') do |node|
          data.entity_name = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for ListPolicyTags
    class ListPolicyTags
      def self.parse(http_resp)
        data = Types::ListPolicyTagsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListPolicyTagsResult')
        xml.at('Tags') do |node|
          children = node.children('member')
          data.tags = Parsers::TagListType.parse(children)
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ListPolicyVersions
    class ListPolicyVersions
      def self.parse(http_resp)
        data = Types::ListPolicyVersionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListPolicyVersionsResult')
        xml.at('Versions') do |node|
          children = node.children('member')
          data.versions = Parsers::PolicyDocumentVersionListType.parse(children)
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ListRolePolicies
    class ListRolePolicies
      def self.parse(http_resp)
        data = Types::ListRolePoliciesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListRolePoliciesResult')
        xml.at('PolicyNames') do |node|
          children = node.children('member')
          data.policy_names = Parsers::PolicyNameListType.parse(children)
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ListRoleTags
    class ListRoleTags
      def self.parse(http_resp)
        data = Types::ListRoleTagsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListRoleTagsResult')
        xml.at('Tags') do |node|
          children = node.children('member')
          data.tags = Parsers::TagListType.parse(children)
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ListRoles
    class ListRoles
      def self.parse(http_resp)
        data = Types::ListRolesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListRolesResult')
        xml.at('Roles') do |node|
          children = node.children('member')
          data.roles = Parsers::RoleListType.parse(children)
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ListSAMLProviderTags
    class ListSAMLProviderTags
      def self.parse(http_resp)
        data = Types::ListSAMLProviderTagsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListSAMLProviderTagsResult')
        xml.at('Tags') do |node|
          children = node.children('member')
          data.tags = Parsers::TagListType.parse(children)
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ListSAMLProviders
    class ListSAMLProviders
      def self.parse(http_resp)
        data = Types::ListSAMLProvidersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListSAMLProvidersResult')
        xml.at('SAMLProviderList') do |node|
          children = node.children('member')
          data.saml_provider_list = Parsers::SAMLProviderListType.parse(children)
        end
        data
      end
    end

    class SAMLProviderListType
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::SAMLProviderListEntry.parse(node)
        end
        data
      end
    end

    class SAMLProviderListEntry
      def self.parse(xml)
        data = Types::SAMLProviderListEntry.new
        xml.at('Arn') do |node|
          data.arn = (node.text || '')
        end
        xml.at('ValidUntil') do |node|
          data.valid_until = Time.parse(node.text) if node.text
        end
        xml.at('CreateDate') do |node|
          data.create_date = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    # Operation Parser for ListSSHPublicKeys
    class ListSSHPublicKeys
      def self.parse(http_resp)
        data = Types::ListSSHPublicKeysOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListSSHPublicKeysResult')
        xml.at('SSHPublicKeys') do |node|
          children = node.children('member')
          data.ssh_public_keys = Parsers::SSHPublicKeyListType.parse(children)
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    class SSHPublicKeyListType
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::SSHPublicKeyMetadata.parse(node)
        end
        data
      end
    end

    class SSHPublicKeyMetadata
      def self.parse(xml)
        data = Types::SSHPublicKeyMetadata.new
        xml.at('UserName') do |node|
          data.user_name = (node.text || '')
        end
        xml.at('SSHPublicKeyId') do |node|
          data.ssh_public_key_id = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('UploadDate') do |node|
          data.upload_date = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    # Operation Parser for ListServerCertificateTags
    class ListServerCertificateTags
      def self.parse(http_resp)
        data = Types::ListServerCertificateTagsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListServerCertificateTagsResult')
        xml.at('Tags') do |node|
          children = node.children('member')
          data.tags = Parsers::TagListType.parse(children)
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ListServerCertificates
    class ListServerCertificates
      def self.parse(http_resp)
        data = Types::ListServerCertificatesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListServerCertificatesResult')
        xml.at('ServerCertificateMetadataList') do |node|
          children = node.children('member')
          data.server_certificate_metadata_list = Parsers::ServerCertificateMetadataListType.parse(children)
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    class ServerCertificateMetadataListType
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ServerCertificateMetadata.parse(node)
        end
        data
      end
    end

    # Operation Parser for ListServiceSpecificCredentials
    class ListServiceSpecificCredentials
      def self.parse(http_resp)
        data = Types::ListServiceSpecificCredentialsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListServiceSpecificCredentialsResult')
        xml.at('ServiceSpecificCredentials') do |node|
          children = node.children('member')
          data.service_specific_credentials = Parsers::ServiceSpecificCredentialsListType.parse(children)
        end
        data
      end
    end

    class ServiceSpecificCredentialsListType
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ServiceSpecificCredentialMetadata.parse(node)
        end
        data
      end
    end

    class ServiceSpecificCredentialMetadata
      def self.parse(xml)
        data = Types::ServiceSpecificCredentialMetadata.new
        xml.at('UserName') do |node|
          data.user_name = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('ServiceUserName') do |node|
          data.service_user_name = (node.text || '')
        end
        xml.at('CreateDate') do |node|
          data.create_date = Time.parse(node.text) if node.text
        end
        xml.at('ServiceSpecificCredentialId') do |node|
          data.service_specific_credential_id = (node.text || '')
        end
        xml.at('ServiceName') do |node|
          data.service_name = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for ListSigningCertificates
    class ListSigningCertificates
      def self.parse(http_resp)
        data = Types::ListSigningCertificatesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListSigningCertificatesResult')
        xml.at('Certificates') do |node|
          children = node.children('member')
          data.certificates = Parsers::CertificateListType.parse(children)
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    class CertificateListType
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::SigningCertificate.parse(node)
        end
        data
      end
    end

    class SigningCertificate
      def self.parse(xml)
        data = Types::SigningCertificate.new
        xml.at('UserName') do |node|
          data.user_name = (node.text || '')
        end
        xml.at('CertificateId') do |node|
          data.certificate_id = (node.text || '')
        end
        xml.at('CertificateBody') do |node|
          data.certificate_body = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('UploadDate') do |node|
          data.upload_date = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    # Operation Parser for ListUserPolicies
    class ListUserPolicies
      def self.parse(http_resp)
        data = Types::ListUserPoliciesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListUserPoliciesResult')
        xml.at('PolicyNames') do |node|
          children = node.children('member')
          data.policy_names = Parsers::PolicyNameListType.parse(children)
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ListUserTags
    class ListUserTags
      def self.parse(http_resp)
        data = Types::ListUserTagsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListUserTagsResult')
        xml.at('Tags') do |node|
          children = node.children('member')
          data.tags = Parsers::TagListType.parse(children)
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ListUsers
    class ListUsers
      def self.parse(http_resp)
        data = Types::ListUsersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListUsersResult')
        xml.at('Users') do |node|
          children = node.children('member')
          data.users = Parsers::UserListType.parse(children)
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ListVirtualMFADevices
    class ListVirtualMFADevices
      def self.parse(http_resp)
        data = Types::ListVirtualMFADevicesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListVirtualMFADevicesResult')
        xml.at('VirtualMFADevices') do |node|
          children = node.children('member')
          data.virtual_mfa_devices = Parsers::VirtualMFADeviceListType.parse(children)
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    class VirtualMFADeviceListType
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::VirtualMFADevice.parse(node)
        end
        data
      end
    end

    # Operation Parser for PutGroupPolicy
    class PutGroupPolicy
      def self.parse(http_resp)
        data = Types::PutGroupPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('PutGroupPolicyResult')
        data
      end
    end

    # Operation Parser for PutRolePermissionsBoundary
    class PutRolePermissionsBoundary
      def self.parse(http_resp)
        data = Types::PutRolePermissionsBoundaryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('PutRolePermissionsBoundaryResult')
        data
      end
    end

    # Operation Parser for PutRolePolicy
    class PutRolePolicy
      def self.parse(http_resp)
        data = Types::PutRolePolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('PutRolePolicyResult')
        data
      end
    end

    # Operation Parser for PutUserPermissionsBoundary
    class PutUserPermissionsBoundary
      def self.parse(http_resp)
        data = Types::PutUserPermissionsBoundaryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('PutUserPermissionsBoundaryResult')
        data
      end
    end

    # Operation Parser for PutUserPolicy
    class PutUserPolicy
      def self.parse(http_resp)
        data = Types::PutUserPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('PutUserPolicyResult')
        data
      end
    end

    # Operation Parser for RemoveClientIDFromOpenIDConnectProvider
    class RemoveClientIDFromOpenIDConnectProvider
      def self.parse(http_resp)
        data = Types::RemoveClientIDFromOpenIDConnectProviderOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('RemoveClientIDFromOpenIDConnectProviderResult')
        data
      end
    end

    # Operation Parser for RemoveRoleFromInstanceProfile
    class RemoveRoleFromInstanceProfile
      def self.parse(http_resp)
        data = Types::RemoveRoleFromInstanceProfileOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('RemoveRoleFromInstanceProfileResult')
        data
      end
    end

    # Operation Parser for RemoveUserFromGroup
    class RemoveUserFromGroup
      def self.parse(http_resp)
        data = Types::RemoveUserFromGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('RemoveUserFromGroupResult')
        data
      end
    end

    # Operation Parser for ResetServiceSpecificCredential
    class ResetServiceSpecificCredential
      def self.parse(http_resp)
        data = Types::ResetServiceSpecificCredentialOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ResetServiceSpecificCredentialResult')
        xml.at('ServiceSpecificCredential') do |node|
          data.service_specific_credential = Parsers::ServiceSpecificCredential.parse(node)
        end
        data
      end
    end

    # Operation Parser for ResyncMFADevice
    class ResyncMFADevice
      def self.parse(http_resp)
        data = Types::ResyncMFADeviceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ResyncMFADeviceResult')
        data
      end
    end

    # Operation Parser for SetDefaultPolicyVersion
    class SetDefaultPolicyVersion
      def self.parse(http_resp)
        data = Types::SetDefaultPolicyVersionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('SetDefaultPolicyVersionResult')
        data
      end
    end

    # Operation Parser for SetSecurityTokenServicePreferences
    class SetSecurityTokenServicePreferences
      def self.parse(http_resp)
        data = Types::SetSecurityTokenServicePreferencesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('SetSecurityTokenServicePreferencesResult')
        data
      end
    end

    # Operation Parser for SimulateCustomPolicy
    class SimulateCustomPolicy
      def self.parse(http_resp)
        data = Types::SimulateCustomPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('SimulateCustomPolicyResult')
        xml.at('EvaluationResults') do |node|
          children = node.children('member')
          data.evaluation_results = Parsers::EvaluationResultsListType.parse(children)
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    class EvaluationResultsListType
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::EvaluationResult.parse(node)
        end
        data
      end
    end

    class EvaluationResult
      def self.parse(xml)
        data = Types::EvaluationResult.new
        xml.at('EvalActionName') do |node|
          data.eval_action_name = (node.text || '')
        end
        xml.at('EvalResourceName') do |node|
          data.eval_resource_name = (node.text || '')
        end
        xml.at('EvalDecision') do |node|
          data.eval_decision = (node.text || '')
        end
        xml.at('MatchedStatements') do |node|
          children = node.children('member')
          data.matched_statements = Parsers::StatementListType.parse(children)
        end
        xml.at('MissingContextValues') do |node|
          children = node.children('member')
          data.missing_context_values = Parsers::ContextKeyNamesResultListType.parse(children)
        end
        xml.at('OrganizationsDecisionDetail') do |node|
          data.organizations_decision_detail = Parsers::OrganizationsDecisionDetail.parse(node)
        end
        xml.at('PermissionsBoundaryDecisionDetail') do |node|
          data.permissions_boundary_decision_detail = Parsers::PermissionsBoundaryDecisionDetail.parse(node)
        end
        xml.at('EvalDecisionDetails') do |node|
          children = node.children('entry')
          data.eval_decision_details = Parsers::EvalDecisionDetailsType.parse(children)
        end
        xml.at('ResourceSpecificResults') do |node|
          children = node.children('member')
          data.resource_specific_results = Parsers::ResourceSpecificResultListType.parse(children)
        end
        return data
      end
    end

    class ResourceSpecificResultListType
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ResourceSpecificResult.parse(node)
        end
        data
      end
    end

    class ResourceSpecificResult
      def self.parse(xml)
        data = Types::ResourceSpecificResult.new
        xml.at('EvalResourceName') do |node|
          data.eval_resource_name = (node.text || '')
        end
        xml.at('EvalResourceDecision') do |node|
          data.eval_resource_decision = (node.text || '')
        end
        xml.at('MatchedStatements') do |node|
          children = node.children('member')
          data.matched_statements = Parsers::StatementListType.parse(children)
        end
        xml.at('MissingContextValues') do |node|
          children = node.children('member')
          data.missing_context_values = Parsers::ContextKeyNamesResultListType.parse(children)
        end
        xml.at('EvalDecisionDetails') do |node|
          children = node.children('entry')
          data.eval_decision_details = Parsers::EvalDecisionDetailsType.parse(children)
        end
        xml.at('PermissionsBoundaryDecisionDetail') do |node|
          data.permissions_boundary_decision_detail = Parsers::PermissionsBoundaryDecisionDetail.parse(node)
        end
        return data
      end
    end

    class PermissionsBoundaryDecisionDetail
      def self.parse(xml)
        data = Types::PermissionsBoundaryDecisionDetail.new
        xml.at('AllowedByPermissionsBoundary') do |node|
          data.allowed_by_permissions_boundary = (node.text == 'true')
        end
        return data
      end
    end

    class EvalDecisionDetailsType
      def self.parse(xml)
        data = {}
        xml.each do |entry_node|
          key = entry_node.at('key').text
          node = entry_node.at('value')
          data[key] = (node.text || '')
        end
        data
      end
    end

    class StatementListType
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Statement.parse(node)
        end
        data
      end
    end

    class Statement
      def self.parse(xml)
        data = Types::Statement.new
        xml.at('SourcePolicyId') do |node|
          data.source_policy_id = (node.text || '')
        end
        xml.at('SourcePolicyType') do |node|
          data.source_policy_type = (node.text || '')
        end
        xml.at('StartPosition') do |node|
          data.start_position = Parsers::Position.parse(node)
        end
        xml.at('EndPosition') do |node|
          data.end_position = Parsers::Position.parse(node)
        end
        return data
      end
    end

    class Position
      def self.parse(xml)
        data = Types::Position.new
        xml.at('Line') do |node|
          data.line = node.text&.to_i
        end
        xml.at('Column') do |node|
          data.column = node.text&.to_i
        end
        return data
      end
    end

    class OrganizationsDecisionDetail
      def self.parse(xml)
        data = Types::OrganizationsDecisionDetail.new
        xml.at('AllowedByOrganizations') do |node|
          data.allowed_by_organizations = (node.text == 'true')
        end
        return data
      end
    end

    # Error Parser for PolicyEvaluationException
    class PolicyEvaluationException
      def self.parse(http_resp)
        data = Types::PolicyEvaluationException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for SimulatePrincipalPolicy
    class SimulatePrincipalPolicy
      def self.parse(http_resp)
        data = Types::SimulatePrincipalPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('SimulatePrincipalPolicyResult')
        xml.at('EvaluationResults') do |node|
          children = node.children('member')
          data.evaluation_results = Parsers::EvaluationResultsListType.parse(children)
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for TagInstanceProfile
    class TagInstanceProfile
      def self.parse(http_resp)
        data = Types::TagInstanceProfileOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('TagInstanceProfileResult')
        data
      end
    end

    # Operation Parser for TagMFADevice
    class TagMFADevice
      def self.parse(http_resp)
        data = Types::TagMFADeviceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('TagMFADeviceResult')
        data
      end
    end

    # Operation Parser for TagOpenIDConnectProvider
    class TagOpenIDConnectProvider
      def self.parse(http_resp)
        data = Types::TagOpenIDConnectProviderOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('TagOpenIDConnectProviderResult')
        data
      end
    end

    # Operation Parser for TagPolicy
    class TagPolicy
      def self.parse(http_resp)
        data = Types::TagPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('TagPolicyResult')
        data
      end
    end

    # Operation Parser for TagRole
    class TagRole
      def self.parse(http_resp)
        data = Types::TagRoleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('TagRoleResult')
        data
      end
    end

    # Operation Parser for TagSAMLProvider
    class TagSAMLProvider
      def self.parse(http_resp)
        data = Types::TagSAMLProviderOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('TagSAMLProviderResult')
        data
      end
    end

    # Operation Parser for TagServerCertificate
    class TagServerCertificate
      def self.parse(http_resp)
        data = Types::TagServerCertificateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('TagServerCertificateResult')
        data
      end
    end

    # Operation Parser for TagUser
    class TagUser
      def self.parse(http_resp)
        data = Types::TagUserOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('TagUserResult')
        data
      end
    end

    # Operation Parser for UntagInstanceProfile
    class UntagInstanceProfile
      def self.parse(http_resp)
        data = Types::UntagInstanceProfileOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('UntagInstanceProfileResult')
        data
      end
    end

    # Operation Parser for UntagMFADevice
    class UntagMFADevice
      def self.parse(http_resp)
        data = Types::UntagMFADeviceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('UntagMFADeviceResult')
        data
      end
    end

    # Operation Parser for UntagOpenIDConnectProvider
    class UntagOpenIDConnectProvider
      def self.parse(http_resp)
        data = Types::UntagOpenIDConnectProviderOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('UntagOpenIDConnectProviderResult')
        data
      end
    end

    # Operation Parser for UntagPolicy
    class UntagPolicy
      def self.parse(http_resp)
        data = Types::UntagPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('UntagPolicyResult')
        data
      end
    end

    # Operation Parser for UntagRole
    class UntagRole
      def self.parse(http_resp)
        data = Types::UntagRoleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('UntagRoleResult')
        data
      end
    end

    # Operation Parser for UntagSAMLProvider
    class UntagSAMLProvider
      def self.parse(http_resp)
        data = Types::UntagSAMLProviderOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('UntagSAMLProviderResult')
        data
      end
    end

    # Operation Parser for UntagServerCertificate
    class UntagServerCertificate
      def self.parse(http_resp)
        data = Types::UntagServerCertificateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('UntagServerCertificateResult')
        data
      end
    end

    # Operation Parser for UntagUser
    class UntagUser
      def self.parse(http_resp)
        data = Types::UntagUserOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('UntagUserResult')
        data
      end
    end

    # Operation Parser for UpdateAccessKey
    class UpdateAccessKey
      def self.parse(http_resp)
        data = Types::UpdateAccessKeyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('UpdateAccessKeyResult')
        data
      end
    end

    # Operation Parser for UpdateAccountPasswordPolicy
    class UpdateAccountPasswordPolicy
      def self.parse(http_resp)
        data = Types::UpdateAccountPasswordPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('UpdateAccountPasswordPolicyResult')
        data
      end
    end

    # Operation Parser for UpdateAssumeRolePolicy
    class UpdateAssumeRolePolicy
      def self.parse(http_resp)
        data = Types::UpdateAssumeRolePolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('UpdateAssumeRolePolicyResult')
        data
      end
    end

    # Operation Parser for UpdateGroup
    class UpdateGroup
      def self.parse(http_resp)
        data = Types::UpdateGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('UpdateGroupResult')
        data
      end
    end

    # Operation Parser for UpdateLoginProfile
    class UpdateLoginProfile
      def self.parse(http_resp)
        data = Types::UpdateLoginProfileOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('UpdateLoginProfileResult')
        data
      end
    end

    # Operation Parser for UpdateOpenIDConnectProviderThumbprint
    class UpdateOpenIDConnectProviderThumbprint
      def self.parse(http_resp)
        data = Types::UpdateOpenIDConnectProviderThumbprintOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('UpdateOpenIDConnectProviderThumbprintResult')
        data
      end
    end

    # Operation Parser for UpdateRole
    class UpdateRole
      def self.parse(http_resp)
        data = Types::UpdateRoleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('UpdateRoleResult')
        data
      end
    end

    # Operation Parser for UpdateRoleDescription
    class UpdateRoleDescription
      def self.parse(http_resp)
        data = Types::UpdateRoleDescriptionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('UpdateRoleDescriptionResult')
        xml.at('Role') do |node|
          data.role = Parsers::Role.parse(node)
        end
        data
      end
    end

    # Operation Parser for UpdateSAMLProvider
    class UpdateSAMLProvider
      def self.parse(http_resp)
        data = Types::UpdateSAMLProviderOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('UpdateSAMLProviderResult')
        xml.at('SAMLProviderArn') do |node|
          data.saml_provider_arn = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for UpdateSSHPublicKey
    class UpdateSSHPublicKey
      def self.parse(http_resp)
        data = Types::UpdateSSHPublicKeyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('UpdateSSHPublicKeyResult')
        data
      end
    end

    # Operation Parser for UpdateServerCertificate
    class UpdateServerCertificate
      def self.parse(http_resp)
        data = Types::UpdateServerCertificateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('UpdateServerCertificateResult')
        data
      end
    end

    # Operation Parser for UpdateServiceSpecificCredential
    class UpdateServiceSpecificCredential
      def self.parse(http_resp)
        data = Types::UpdateServiceSpecificCredentialOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('UpdateServiceSpecificCredentialResult')
        data
      end
    end

    # Operation Parser for UpdateSigningCertificate
    class UpdateSigningCertificate
      def self.parse(http_resp)
        data = Types::UpdateSigningCertificateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('UpdateSigningCertificateResult')
        data
      end
    end

    # Operation Parser for UpdateUser
    class UpdateUser
      def self.parse(http_resp)
        data = Types::UpdateUserOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('UpdateUserResult')
        data
      end
    end

    # Operation Parser for UploadSSHPublicKey
    class UploadSSHPublicKey
      def self.parse(http_resp)
        data = Types::UploadSSHPublicKeyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('UploadSSHPublicKeyResult')
        xml.at('SSHPublicKey') do |node|
          data.ssh_public_key = Parsers::SSHPublicKey.parse(node)
        end
        data
      end
    end

    # Error Parser for InvalidPublicKeyException
    class InvalidPublicKeyException
      def self.parse(http_resp)
        data = Types::InvalidPublicKeyException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for DuplicateSSHPublicKeyException
    class DuplicateSSHPublicKeyException
      def self.parse(http_resp)
        data = Types::DuplicateSSHPublicKeyException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for UploadServerCertificate
    class UploadServerCertificate
      def self.parse(http_resp)
        data = Types::UploadServerCertificateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('UploadServerCertificateResult')
        xml.at('ServerCertificateMetadata') do |node|
          data.server_certificate_metadata = Parsers::ServerCertificateMetadata.parse(node)
        end
        xml.at('Tags') do |node|
          children = node.children('member')
          data.tags = Parsers::TagListType.parse(children)
        end
        data
      end
    end

    # Error Parser for KeyPairMismatchException
    class KeyPairMismatchException
      def self.parse(http_resp)
        data = Types::KeyPairMismatchException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for MalformedCertificateException
    class MalformedCertificateException
      def self.parse(http_resp)
        data = Types::MalformedCertificateException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for UploadSigningCertificate
    class UploadSigningCertificate
      def self.parse(http_resp)
        data = Types::UploadSigningCertificateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('UploadSigningCertificateResult')
        xml.at('Certificate') do |node|
          data.certificate = Parsers::SigningCertificate.parse(node)
        end
        data
      end
    end

    # Error Parser for InvalidCertificateException
    class InvalidCertificateException
      def self.parse(http_resp)
        data = Types::InvalidCertificateException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for DuplicateCertificateException
    class DuplicateCertificateException
      def self.parse(http_resp)
        data = Types::DuplicateCertificateException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end
  end
end
