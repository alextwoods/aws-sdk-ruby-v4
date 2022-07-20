# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SSOAdmin
  module Parsers

    # Operation Parser for AttachManagedPolicyToPermissionSet
    class AttachManagedPolicyToPermissionSet
      def self.parse(http_resp)
        data = Types::AttachManagedPolicyToPermissionSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
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

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
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
        data.message = map['Message']
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

    # Operation Parser for CreateAccountAssignment
    class CreateAccountAssignment
      def self.parse(http_resp)
        data = Types::CreateAccountAssignmentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.account_assignment_creation_status = (AccountAssignmentOperationStatus.parse(map['AccountAssignmentCreationStatus']) unless map['AccountAssignmentCreationStatus'].nil?)
        data
      end
    end

    class AccountAssignmentOperationStatus
      def self.parse(map)
        data = Types::AccountAssignmentOperationStatus.new
        data.status = map['Status']
        data.request_id = map['RequestId']
        data.failure_reason = map['FailureReason']
        data.target_id = map['TargetId']
        data.target_type = map['TargetType']
        data.permission_set_arn = map['PermissionSetArn']
        data.principal_type = map['PrincipalType']
        data.principal_id = map['PrincipalId']
        data.created_date = Time.at(map['CreatedDate'].to_i) if map['CreatedDate']
        return data
      end
    end

    # Operation Parser for CreateInstanceAccessControlAttributeConfiguration
    class CreateInstanceAccessControlAttributeConfiguration
      def self.parse(http_resp)
        data = Types::CreateInstanceAccessControlAttributeConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for CreatePermissionSet
    class CreatePermissionSet
      def self.parse(http_resp)
        data = Types::CreatePermissionSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.permission_set = (PermissionSet.parse(map['PermissionSet']) unless map['PermissionSet'].nil?)
        data
      end
    end

    class PermissionSet
      def self.parse(map)
        data = Types::PermissionSet.new
        data.name = map['Name']
        data.permission_set_arn = map['PermissionSetArn']
        data.description = map['Description']
        data.created_date = Time.at(map['CreatedDate'].to_i) if map['CreatedDate']
        data.session_duration = map['SessionDuration']
        data.relay_state = map['RelayState']
        return data
      end
    end

    # Operation Parser for DeleteAccountAssignment
    class DeleteAccountAssignment
      def self.parse(http_resp)
        data = Types::DeleteAccountAssignmentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.account_assignment_deletion_status = (AccountAssignmentOperationStatus.parse(map['AccountAssignmentDeletionStatus']) unless map['AccountAssignmentDeletionStatus'].nil?)
        data
      end
    end

    # Operation Parser for DeleteInlinePolicyFromPermissionSet
    class DeleteInlinePolicyFromPermissionSet
      def self.parse(http_resp)
        data = Types::DeleteInlinePolicyFromPermissionSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteInstanceAccessControlAttributeConfiguration
    class DeleteInstanceAccessControlAttributeConfiguration
      def self.parse(http_resp)
        data = Types::DeleteInstanceAccessControlAttributeConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeletePermissionSet
    class DeletePermissionSet
      def self.parse(http_resp)
        data = Types::DeletePermissionSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DescribeAccountAssignmentCreationStatus
    class DescribeAccountAssignmentCreationStatus
      def self.parse(http_resp)
        data = Types::DescribeAccountAssignmentCreationStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.account_assignment_creation_status = (AccountAssignmentOperationStatus.parse(map['AccountAssignmentCreationStatus']) unless map['AccountAssignmentCreationStatus'].nil?)
        data
      end
    end

    # Operation Parser for DescribeAccountAssignmentDeletionStatus
    class DescribeAccountAssignmentDeletionStatus
      def self.parse(http_resp)
        data = Types::DescribeAccountAssignmentDeletionStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.account_assignment_deletion_status = (AccountAssignmentOperationStatus.parse(map['AccountAssignmentDeletionStatus']) unless map['AccountAssignmentDeletionStatus'].nil?)
        data
      end
    end

    # Operation Parser for DescribeInstanceAccessControlAttributeConfiguration
    class DescribeInstanceAccessControlAttributeConfiguration
      def self.parse(http_resp)
        data = Types::DescribeInstanceAccessControlAttributeConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.status = map['Status']
        data.status_reason = map['StatusReason']
        data.instance_access_control_attribute_configuration = (InstanceAccessControlAttributeConfiguration.parse(map['InstanceAccessControlAttributeConfiguration']) unless map['InstanceAccessControlAttributeConfiguration'].nil?)
        data
      end
    end

    class InstanceAccessControlAttributeConfiguration
      def self.parse(map)
        data = Types::InstanceAccessControlAttributeConfiguration.new
        data.access_control_attributes = (AccessControlAttributeList.parse(map['AccessControlAttributes']) unless map['AccessControlAttributes'].nil?)
        return data
      end
    end

    class AccessControlAttributeList
      def self.parse(list)
        list.map do |value|
          AccessControlAttribute.parse(value) unless value.nil?
        end
      end
    end

    class AccessControlAttribute
      def self.parse(map)
        data = Types::AccessControlAttribute.new
        data.key = map['Key']
        data.value = (AccessControlAttributeValue.parse(map['Value']) unless map['Value'].nil?)
        return data
      end
    end

    class AccessControlAttributeValue
      def self.parse(map)
        data = Types::AccessControlAttributeValue.new
        data.source = (AccessControlAttributeValueSourceList.parse(map['Source']) unless map['Source'].nil?)
        return data
      end
    end

    class AccessControlAttributeValueSourceList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for DescribePermissionSet
    class DescribePermissionSet
      def self.parse(http_resp)
        data = Types::DescribePermissionSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.permission_set = (PermissionSet.parse(map['PermissionSet']) unless map['PermissionSet'].nil?)
        data
      end
    end

    # Operation Parser for DescribePermissionSetProvisioningStatus
    class DescribePermissionSetProvisioningStatus
      def self.parse(http_resp)
        data = Types::DescribePermissionSetProvisioningStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.permission_set_provisioning_status = (PermissionSetProvisioningStatus.parse(map['PermissionSetProvisioningStatus']) unless map['PermissionSetProvisioningStatus'].nil?)
        data
      end
    end

    class PermissionSetProvisioningStatus
      def self.parse(map)
        data = Types::PermissionSetProvisioningStatus.new
        data.status = map['Status']
        data.request_id = map['RequestId']
        data.account_id = map['AccountId']
        data.permission_set_arn = map['PermissionSetArn']
        data.failure_reason = map['FailureReason']
        data.created_date = Time.at(map['CreatedDate'].to_i) if map['CreatedDate']
        return data
      end
    end

    # Operation Parser for DetachManagedPolicyFromPermissionSet
    class DetachManagedPolicyFromPermissionSet
      def self.parse(http_resp)
        data = Types::DetachManagedPolicyFromPermissionSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for GetInlinePolicyForPermissionSet
    class GetInlinePolicyForPermissionSet
      def self.parse(http_resp)
        data = Types::GetInlinePolicyForPermissionSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.inline_policy = map['InlinePolicy']
        data
      end
    end

    # Operation Parser for ListAccountAssignmentCreationStatus
    class ListAccountAssignmentCreationStatus
      def self.parse(http_resp)
        data = Types::ListAccountAssignmentCreationStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.account_assignments_creation_status = (AccountAssignmentOperationStatusList.parse(map['AccountAssignmentsCreationStatus']) unless map['AccountAssignmentsCreationStatus'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class AccountAssignmentOperationStatusList
      def self.parse(list)
        list.map do |value|
          AccountAssignmentOperationStatusMetadata.parse(value) unless value.nil?
        end
      end
    end

    class AccountAssignmentOperationStatusMetadata
      def self.parse(map)
        data = Types::AccountAssignmentOperationStatusMetadata.new
        data.status = map['Status']
        data.request_id = map['RequestId']
        data.created_date = Time.at(map['CreatedDate'].to_i) if map['CreatedDate']
        return data
      end
    end

    # Operation Parser for ListAccountAssignmentDeletionStatus
    class ListAccountAssignmentDeletionStatus
      def self.parse(http_resp)
        data = Types::ListAccountAssignmentDeletionStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.account_assignments_deletion_status = (AccountAssignmentOperationStatusList.parse(map['AccountAssignmentsDeletionStatus']) unless map['AccountAssignmentsDeletionStatus'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ListAccountAssignments
    class ListAccountAssignments
      def self.parse(http_resp)
        data = Types::ListAccountAssignmentsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.account_assignments = (AccountAssignmentList.parse(map['AccountAssignments']) unless map['AccountAssignments'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class AccountAssignmentList
      def self.parse(list)
        list.map do |value|
          AccountAssignment.parse(value) unless value.nil?
        end
      end
    end

    class AccountAssignment
      def self.parse(map)
        data = Types::AccountAssignment.new
        data.account_id = map['AccountId']
        data.permission_set_arn = map['PermissionSetArn']
        data.principal_type = map['PrincipalType']
        data.principal_id = map['PrincipalId']
        return data
      end
    end

    # Operation Parser for ListAccountsForProvisionedPermissionSet
    class ListAccountsForProvisionedPermissionSet
      def self.parse(http_resp)
        data = Types::ListAccountsForProvisionedPermissionSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.account_ids = (AccountList.parse(map['AccountIds']) unless map['AccountIds'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class AccountList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for ListInstances
    class ListInstances
      def self.parse(http_resp)
        data = Types::ListInstancesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.instances = (InstanceList.parse(map['Instances']) unless map['Instances'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class InstanceList
      def self.parse(list)
        list.map do |value|
          InstanceMetadata.parse(value) unless value.nil?
        end
      end
    end

    class InstanceMetadata
      def self.parse(map)
        data = Types::InstanceMetadata.new
        data.instance_arn = map['InstanceArn']
        data.identity_store_id = map['IdentityStoreId']
        return data
      end
    end

    # Operation Parser for ListManagedPoliciesInPermissionSet
    class ListManagedPoliciesInPermissionSet
      def self.parse(http_resp)
        data = Types::ListManagedPoliciesInPermissionSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.attached_managed_policies = (AttachedManagedPolicyList.parse(map['AttachedManagedPolicies']) unless map['AttachedManagedPolicies'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class AttachedManagedPolicyList
      def self.parse(list)
        list.map do |value|
          AttachedManagedPolicy.parse(value) unless value.nil?
        end
      end
    end

    class AttachedManagedPolicy
      def self.parse(map)
        data = Types::AttachedManagedPolicy.new
        data.name = map['Name']
        data.arn = map['Arn']
        return data
      end
    end

    # Operation Parser for ListPermissionSetProvisioningStatus
    class ListPermissionSetProvisioningStatus
      def self.parse(http_resp)
        data = Types::ListPermissionSetProvisioningStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.permission_sets_provisioning_status = (PermissionSetProvisioningStatusList.parse(map['PermissionSetsProvisioningStatus']) unless map['PermissionSetsProvisioningStatus'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class PermissionSetProvisioningStatusList
      def self.parse(list)
        list.map do |value|
          PermissionSetProvisioningStatusMetadata.parse(value) unless value.nil?
        end
      end
    end

    class PermissionSetProvisioningStatusMetadata
      def self.parse(map)
        data = Types::PermissionSetProvisioningStatusMetadata.new
        data.status = map['Status']
        data.request_id = map['RequestId']
        data.created_date = Time.at(map['CreatedDate'].to_i) if map['CreatedDate']
        return data
      end
    end

    # Operation Parser for ListPermissionSets
    class ListPermissionSets
      def self.parse(http_resp)
        data = Types::ListPermissionSetsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.permission_sets = (PermissionSetList.parse(map['PermissionSets']) unless map['PermissionSets'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class PermissionSetList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for ListPermissionSetsProvisionedToAccount
    class ListPermissionSetsProvisionedToAccount
      def self.parse(http_resp)
        data = Types::ListPermissionSetsProvisionedToAccountOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.permission_sets = (PermissionSetList.parse(map['PermissionSets']) unless map['PermissionSets'].nil?)
        data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tags = (TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class TagList
      def self.parse(list)
        list.map do |value|
          Tag.parse(value) unless value.nil?
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

    # Operation Parser for ProvisionPermissionSet
    class ProvisionPermissionSet
      def self.parse(http_resp)
        data = Types::ProvisionPermissionSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.permission_set_provisioning_status = (PermissionSetProvisioningStatus.parse(map['PermissionSetProvisioningStatus']) unless map['PermissionSetProvisioningStatus'].nil?)
        data
      end
    end

    # Operation Parser for PutInlinePolicyToPermissionSet
    class PutInlinePolicyToPermissionSet
      def self.parse(http_resp)
        data = Types::PutInlinePolicyToPermissionSetOutput.new
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

    # Operation Parser for UpdateInstanceAccessControlAttributeConfiguration
    class UpdateInstanceAccessControlAttributeConfiguration
      def self.parse(http_resp)
        data = Types::UpdateInstanceAccessControlAttributeConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdatePermissionSet
    class UpdatePermissionSet
      def self.parse(http_resp)
        data = Types::UpdatePermissionSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end
  end
end
