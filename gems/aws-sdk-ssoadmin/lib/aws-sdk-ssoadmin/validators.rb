# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SSOAdmin
  module Validators

    class AccessControlAttribute
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessControlAttribute, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Validators::AccessControlAttributeValue.validate!(input[:value], context: "#{context}[:value]") unless input[:value].nil?
      end
    end

    class AccessControlAttributeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AccessControlAttribute.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AccessControlAttributeValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessControlAttributeValue, context: context)
        Validators::AccessControlAttributeValueSourceList.validate!(input[:source], context: "#{context}[:source]") unless input[:source].nil?
      end
    end

    class AccessControlAttributeValueSourceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AccountAssignment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccountAssignment, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:permission_set_arn], ::String, context: "#{context}[:permission_set_arn]")
        Hearth::Validator.validate!(input[:principal_type], ::String, context: "#{context}[:principal_type]")
        Hearth::Validator.validate!(input[:principal_id], ::String, context: "#{context}[:principal_id]")
      end
    end

    class AccountAssignmentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AccountAssignment.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AccountAssignmentOperationStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccountAssignmentOperationStatus, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:target_id], ::String, context: "#{context}[:target_id]")
        Hearth::Validator.validate!(input[:target_type], ::String, context: "#{context}[:target_type]")
        Hearth::Validator.validate!(input[:permission_set_arn], ::String, context: "#{context}[:permission_set_arn]")
        Hearth::Validator.validate!(input[:principal_type], ::String, context: "#{context}[:principal_type]")
        Hearth::Validator.validate!(input[:principal_id], ::String, context: "#{context}[:principal_id]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
      end
    end

    class AccountAssignmentOperationStatusList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AccountAssignmentOperationStatusMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AccountAssignmentOperationStatusMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccountAssignmentOperationStatusMetadata, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
      end
    end

    class AccountList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AttachManagedPolicyToPermissionSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachManagedPolicyToPermissionSetInput, context: context)
        Hearth::Validator.validate!(input[:instance_arn], ::String, context: "#{context}[:instance_arn]")
        Hearth::Validator.validate!(input[:permission_set_arn], ::String, context: "#{context}[:permission_set_arn]")
        Hearth::Validator.validate!(input[:managed_policy_arn], ::String, context: "#{context}[:managed_policy_arn]")
      end
    end

    class AttachManagedPolicyToPermissionSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachManagedPolicyToPermissionSetOutput, context: context)
      end
    end

    class AttachedManagedPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachedManagedPolicy, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class AttachedManagedPolicyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AttachedManagedPolicy.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateAccountAssignmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAccountAssignmentInput, context: context)
        Hearth::Validator.validate!(input[:instance_arn], ::String, context: "#{context}[:instance_arn]")
        Hearth::Validator.validate!(input[:target_id], ::String, context: "#{context}[:target_id]")
        Hearth::Validator.validate!(input[:target_type], ::String, context: "#{context}[:target_type]")
        Hearth::Validator.validate!(input[:permission_set_arn], ::String, context: "#{context}[:permission_set_arn]")
        Hearth::Validator.validate!(input[:principal_type], ::String, context: "#{context}[:principal_type]")
        Hearth::Validator.validate!(input[:principal_id], ::String, context: "#{context}[:principal_id]")
      end
    end

    class CreateAccountAssignmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAccountAssignmentOutput, context: context)
        Validators::AccountAssignmentOperationStatus.validate!(input[:account_assignment_creation_status], context: "#{context}[:account_assignment_creation_status]") unless input[:account_assignment_creation_status].nil?
      end
    end

    class CreateInstanceAccessControlAttributeConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateInstanceAccessControlAttributeConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:instance_arn], ::String, context: "#{context}[:instance_arn]")
        Validators::InstanceAccessControlAttributeConfiguration.validate!(input[:instance_access_control_attribute_configuration], context: "#{context}[:instance_access_control_attribute_configuration]") unless input[:instance_access_control_attribute_configuration].nil?
      end
    end

    class CreateInstanceAccessControlAttributeConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateInstanceAccessControlAttributeConfigurationOutput, context: context)
      end
    end

    class CreatePermissionSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePermissionSetInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:instance_arn], ::String, context: "#{context}[:instance_arn]")
        Hearth::Validator.validate!(input[:session_duration], ::String, context: "#{context}[:session_duration]")
        Hearth::Validator.validate!(input[:relay_state], ::String, context: "#{context}[:relay_state]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreatePermissionSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePermissionSetOutput, context: context)
        Validators::PermissionSet.validate!(input[:permission_set], context: "#{context}[:permission_set]") unless input[:permission_set].nil?
      end
    end

    class DeleteAccountAssignmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAccountAssignmentInput, context: context)
        Hearth::Validator.validate!(input[:instance_arn], ::String, context: "#{context}[:instance_arn]")
        Hearth::Validator.validate!(input[:target_id], ::String, context: "#{context}[:target_id]")
        Hearth::Validator.validate!(input[:target_type], ::String, context: "#{context}[:target_type]")
        Hearth::Validator.validate!(input[:permission_set_arn], ::String, context: "#{context}[:permission_set_arn]")
        Hearth::Validator.validate!(input[:principal_type], ::String, context: "#{context}[:principal_type]")
        Hearth::Validator.validate!(input[:principal_id], ::String, context: "#{context}[:principal_id]")
      end
    end

    class DeleteAccountAssignmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAccountAssignmentOutput, context: context)
        Validators::AccountAssignmentOperationStatus.validate!(input[:account_assignment_deletion_status], context: "#{context}[:account_assignment_deletion_status]") unless input[:account_assignment_deletion_status].nil?
      end
    end

    class DeleteInlinePolicyFromPermissionSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteInlinePolicyFromPermissionSetInput, context: context)
        Hearth::Validator.validate!(input[:instance_arn], ::String, context: "#{context}[:instance_arn]")
        Hearth::Validator.validate!(input[:permission_set_arn], ::String, context: "#{context}[:permission_set_arn]")
      end
    end

    class DeleteInlinePolicyFromPermissionSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteInlinePolicyFromPermissionSetOutput, context: context)
      end
    end

    class DeleteInstanceAccessControlAttributeConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteInstanceAccessControlAttributeConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:instance_arn], ::String, context: "#{context}[:instance_arn]")
      end
    end

    class DeleteInstanceAccessControlAttributeConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteInstanceAccessControlAttributeConfigurationOutput, context: context)
      end
    end

    class DeletePermissionSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePermissionSetInput, context: context)
        Hearth::Validator.validate!(input[:instance_arn], ::String, context: "#{context}[:instance_arn]")
        Hearth::Validator.validate!(input[:permission_set_arn], ::String, context: "#{context}[:permission_set_arn]")
      end
    end

    class DeletePermissionSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePermissionSetOutput, context: context)
      end
    end

    class DescribeAccountAssignmentCreationStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAccountAssignmentCreationStatusInput, context: context)
        Hearth::Validator.validate!(input[:instance_arn], ::String, context: "#{context}[:instance_arn]")
        Hearth::Validator.validate!(input[:account_assignment_creation_request_id], ::String, context: "#{context}[:account_assignment_creation_request_id]")
      end
    end

    class DescribeAccountAssignmentCreationStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAccountAssignmentCreationStatusOutput, context: context)
        Validators::AccountAssignmentOperationStatus.validate!(input[:account_assignment_creation_status], context: "#{context}[:account_assignment_creation_status]") unless input[:account_assignment_creation_status].nil?
      end
    end

    class DescribeAccountAssignmentDeletionStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAccountAssignmentDeletionStatusInput, context: context)
        Hearth::Validator.validate!(input[:instance_arn], ::String, context: "#{context}[:instance_arn]")
        Hearth::Validator.validate!(input[:account_assignment_deletion_request_id], ::String, context: "#{context}[:account_assignment_deletion_request_id]")
      end
    end

    class DescribeAccountAssignmentDeletionStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAccountAssignmentDeletionStatusOutput, context: context)
        Validators::AccountAssignmentOperationStatus.validate!(input[:account_assignment_deletion_status], context: "#{context}[:account_assignment_deletion_status]") unless input[:account_assignment_deletion_status].nil?
      end
    end

    class DescribeInstanceAccessControlAttributeConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInstanceAccessControlAttributeConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:instance_arn], ::String, context: "#{context}[:instance_arn]")
      end
    end

    class DescribeInstanceAccessControlAttributeConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInstanceAccessControlAttributeConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_reason], ::String, context: "#{context}[:status_reason]")
        Validators::InstanceAccessControlAttributeConfiguration.validate!(input[:instance_access_control_attribute_configuration], context: "#{context}[:instance_access_control_attribute_configuration]") unless input[:instance_access_control_attribute_configuration].nil?
      end
    end

    class DescribePermissionSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePermissionSetInput, context: context)
        Hearth::Validator.validate!(input[:instance_arn], ::String, context: "#{context}[:instance_arn]")
        Hearth::Validator.validate!(input[:permission_set_arn], ::String, context: "#{context}[:permission_set_arn]")
      end
    end

    class DescribePermissionSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePermissionSetOutput, context: context)
        Validators::PermissionSet.validate!(input[:permission_set], context: "#{context}[:permission_set]") unless input[:permission_set].nil?
      end
    end

    class DescribePermissionSetProvisioningStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePermissionSetProvisioningStatusInput, context: context)
        Hearth::Validator.validate!(input[:instance_arn], ::String, context: "#{context}[:instance_arn]")
        Hearth::Validator.validate!(input[:provision_permission_set_request_id], ::String, context: "#{context}[:provision_permission_set_request_id]")
      end
    end

    class DescribePermissionSetProvisioningStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePermissionSetProvisioningStatusOutput, context: context)
        Validators::PermissionSetProvisioningStatus.validate!(input[:permission_set_provisioning_status], context: "#{context}[:permission_set_provisioning_status]") unless input[:permission_set_provisioning_status].nil?
      end
    end

    class DetachManagedPolicyFromPermissionSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetachManagedPolicyFromPermissionSetInput, context: context)
        Hearth::Validator.validate!(input[:instance_arn], ::String, context: "#{context}[:instance_arn]")
        Hearth::Validator.validate!(input[:permission_set_arn], ::String, context: "#{context}[:permission_set_arn]")
        Hearth::Validator.validate!(input[:managed_policy_arn], ::String, context: "#{context}[:managed_policy_arn]")
      end
    end

    class DetachManagedPolicyFromPermissionSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetachManagedPolicyFromPermissionSetOutput, context: context)
      end
    end

    class GetInlinePolicyForPermissionSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInlinePolicyForPermissionSetInput, context: context)
        Hearth::Validator.validate!(input[:instance_arn], ::String, context: "#{context}[:instance_arn]")
        Hearth::Validator.validate!(input[:permission_set_arn], ::String, context: "#{context}[:permission_set_arn]")
      end
    end

    class GetInlinePolicyForPermissionSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInlinePolicyForPermissionSetOutput, context: context)
        Hearth::Validator.validate!(input[:inline_policy], ::String, context: "#{context}[:inline_policy]")
      end
    end

    class InstanceAccessControlAttributeConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceAccessControlAttributeConfiguration, context: context)
        Validators::AccessControlAttributeList.validate!(input[:access_control_attributes], context: "#{context}[:access_control_attributes]") unless input[:access_control_attributes].nil?
      end
    end

    class InstanceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::InstanceMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InstanceMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceMetadata, context: context)
        Hearth::Validator.validate!(input[:instance_arn], ::String, context: "#{context}[:instance_arn]")
        Hearth::Validator.validate!(input[:identity_store_id], ::String, context: "#{context}[:identity_store_id]")
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListAccountAssignmentCreationStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAccountAssignmentCreationStatusInput, context: context)
        Hearth::Validator.validate!(input[:instance_arn], ::String, context: "#{context}[:instance_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::OperationStatusFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
      end
    end

    class ListAccountAssignmentCreationStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAccountAssignmentCreationStatusOutput, context: context)
        Validators::AccountAssignmentOperationStatusList.validate!(input[:account_assignments_creation_status], context: "#{context}[:account_assignments_creation_status]") unless input[:account_assignments_creation_status].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAccountAssignmentDeletionStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAccountAssignmentDeletionStatusInput, context: context)
        Hearth::Validator.validate!(input[:instance_arn], ::String, context: "#{context}[:instance_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::OperationStatusFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
      end
    end

    class ListAccountAssignmentDeletionStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAccountAssignmentDeletionStatusOutput, context: context)
        Validators::AccountAssignmentOperationStatusList.validate!(input[:account_assignments_deletion_status], context: "#{context}[:account_assignments_deletion_status]") unless input[:account_assignments_deletion_status].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAccountAssignmentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAccountAssignmentsInput, context: context)
        Hearth::Validator.validate!(input[:instance_arn], ::String, context: "#{context}[:instance_arn]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:permission_set_arn], ::String, context: "#{context}[:permission_set_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAccountAssignmentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAccountAssignmentsOutput, context: context)
        Validators::AccountAssignmentList.validate!(input[:account_assignments], context: "#{context}[:account_assignments]") unless input[:account_assignments].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAccountsForProvisionedPermissionSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAccountsForProvisionedPermissionSetInput, context: context)
        Hearth::Validator.validate!(input[:instance_arn], ::String, context: "#{context}[:instance_arn]")
        Hearth::Validator.validate!(input[:permission_set_arn], ::String, context: "#{context}[:permission_set_arn]")
        Hearth::Validator.validate!(input[:provisioning_status], ::String, context: "#{context}[:provisioning_status]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAccountsForProvisionedPermissionSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAccountsForProvisionedPermissionSetOutput, context: context)
        Validators::AccountList.validate!(input[:account_ids], context: "#{context}[:account_ids]") unless input[:account_ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInstancesInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListInstancesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInstancesOutput, context: context)
        Validators::InstanceList.validate!(input[:instances], context: "#{context}[:instances]") unless input[:instances].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListManagedPoliciesInPermissionSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListManagedPoliciesInPermissionSetInput, context: context)
        Hearth::Validator.validate!(input[:instance_arn], ::String, context: "#{context}[:instance_arn]")
        Hearth::Validator.validate!(input[:permission_set_arn], ::String, context: "#{context}[:permission_set_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListManagedPoliciesInPermissionSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListManagedPoliciesInPermissionSetOutput, context: context)
        Validators::AttachedManagedPolicyList.validate!(input[:attached_managed_policies], context: "#{context}[:attached_managed_policies]") unless input[:attached_managed_policies].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPermissionSetProvisioningStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPermissionSetProvisioningStatusInput, context: context)
        Hearth::Validator.validate!(input[:instance_arn], ::String, context: "#{context}[:instance_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::OperationStatusFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
      end
    end

    class ListPermissionSetProvisioningStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPermissionSetProvisioningStatusOutput, context: context)
        Validators::PermissionSetProvisioningStatusList.validate!(input[:permission_sets_provisioning_status], context: "#{context}[:permission_sets_provisioning_status]") unless input[:permission_sets_provisioning_status].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPermissionSetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPermissionSetsInput, context: context)
        Hearth::Validator.validate!(input[:instance_arn], ::String, context: "#{context}[:instance_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListPermissionSetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPermissionSetsOutput, context: context)
        Validators::PermissionSetList.validate!(input[:permission_sets], context: "#{context}[:permission_sets]") unless input[:permission_sets].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPermissionSetsProvisionedToAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPermissionSetsProvisionedToAccountInput, context: context)
        Hearth::Validator.validate!(input[:instance_arn], ::String, context: "#{context}[:instance_arn]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:provisioning_status], ::String, context: "#{context}[:provisioning_status]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPermissionSetsProvisionedToAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPermissionSetsProvisionedToAccountOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::PermissionSetList.validate!(input[:permission_sets], context: "#{context}[:permission_sets]") unless input[:permission_sets].nil?
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:instance_arn], ::String, context: "#{context}[:instance_arn]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class OperationStatusFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OperationStatusFilter, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class PermissionSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PermissionSet, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:permission_set_arn], ::String, context: "#{context}[:permission_set_arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:session_duration], ::String, context: "#{context}[:session_duration]")
        Hearth::Validator.validate!(input[:relay_state], ::String, context: "#{context}[:relay_state]")
      end
    end

    class PermissionSetList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PermissionSetProvisioningStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PermissionSetProvisioningStatus, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:permission_set_arn], ::String, context: "#{context}[:permission_set_arn]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
      end
    end

    class PermissionSetProvisioningStatusList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PermissionSetProvisioningStatusMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PermissionSetProvisioningStatusMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PermissionSetProvisioningStatusMetadata, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
      end
    end

    class ProvisionPermissionSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProvisionPermissionSetInput, context: context)
        Hearth::Validator.validate!(input[:instance_arn], ::String, context: "#{context}[:instance_arn]")
        Hearth::Validator.validate!(input[:permission_set_arn], ::String, context: "#{context}[:permission_set_arn]")
        Hearth::Validator.validate!(input[:target_id], ::String, context: "#{context}[:target_id]")
        Hearth::Validator.validate!(input[:target_type], ::String, context: "#{context}[:target_type]")
      end
    end

    class ProvisionPermissionSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProvisionPermissionSetOutput, context: context)
        Validators::PermissionSetProvisioningStatus.validate!(input[:permission_set_provisioning_status], context: "#{context}[:permission_set_provisioning_status]") unless input[:permission_set_provisioning_status].nil?
      end
    end

    class PutInlinePolicyToPermissionSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutInlinePolicyToPermissionSetInput, context: context)
        Hearth::Validator.validate!(input[:instance_arn], ::String, context: "#{context}[:instance_arn]")
        Hearth::Validator.validate!(input[:permission_set_arn], ::String, context: "#{context}[:permission_set_arn]")
        Hearth::Validator.validate!(input[:inline_policy], ::String, context: "#{context}[:inline_policy]")
      end
    end

    class PutInlinePolicyToPermissionSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutInlinePolicyToPermissionSetOutput, context: context)
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:instance_arn], ::String, context: "#{context}[:instance_arn]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:instance_arn], ::String, context: "#{context}[:instance_arn]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateInstanceAccessControlAttributeConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateInstanceAccessControlAttributeConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:instance_arn], ::String, context: "#{context}[:instance_arn]")
        Validators::InstanceAccessControlAttributeConfiguration.validate!(input[:instance_access_control_attribute_configuration], context: "#{context}[:instance_access_control_attribute_configuration]") unless input[:instance_access_control_attribute_configuration].nil?
      end
    end

    class UpdateInstanceAccessControlAttributeConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateInstanceAccessControlAttributeConfigurationOutput, context: context)
      end
    end

    class UpdatePermissionSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePermissionSetInput, context: context)
        Hearth::Validator.validate!(input[:instance_arn], ::String, context: "#{context}[:instance_arn]")
        Hearth::Validator.validate!(input[:permission_set_arn], ::String, context: "#{context}[:permission_set_arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:session_duration], ::String, context: "#{context}[:session_duration]")
        Hearth::Validator.validate!(input[:relay_state], ::String, context: "#{context}[:relay_state]")
      end
    end

    class UpdatePermissionSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePermissionSetOutput, context: context)
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

  end
end
