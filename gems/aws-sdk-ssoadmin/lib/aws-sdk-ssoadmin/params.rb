# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::SSOAdmin
  module Params

    module AccessControlAttribute
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessControlAttribute, context: context)
        type = Types::AccessControlAttribute.new
        type.key = params[:key]
        type.value = AccessControlAttributeValue.build(params[:value], context: "#{context}[:value]") unless params[:value].nil?
        type
      end
    end

    module AccessControlAttributeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AccessControlAttribute.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AccessControlAttributeValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessControlAttributeValue, context: context)
        type = Types::AccessControlAttributeValue.new
        type.source = AccessControlAttributeValueSourceList.build(params[:source], context: "#{context}[:source]") unless params[:source].nil?
        type
      end
    end

    module AccessControlAttributeValueSourceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module AccountAssignment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccountAssignment, context: context)
        type = Types::AccountAssignment.new
        type.account_id = params[:account_id]
        type.permission_set_arn = params[:permission_set_arn]
        type.principal_type = params[:principal_type]
        type.principal_id = params[:principal_id]
        type
      end
    end

    module AccountAssignmentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AccountAssignment.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AccountAssignmentOperationStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccountAssignmentOperationStatus, context: context)
        type = Types::AccountAssignmentOperationStatus.new
        type.status = params[:status]
        type.request_id = params[:request_id]
        type.failure_reason = params[:failure_reason]
        type.target_id = params[:target_id]
        type.target_type = params[:target_type]
        type.permission_set_arn = params[:permission_set_arn]
        type.principal_type = params[:principal_type]
        type.principal_id = params[:principal_id]
        type.created_date = params[:created_date]
        type
      end
    end

    module AccountAssignmentOperationStatusList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AccountAssignmentOperationStatusMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AccountAssignmentOperationStatusMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccountAssignmentOperationStatusMetadata, context: context)
        type = Types::AccountAssignmentOperationStatusMetadata.new
        type.status = params[:status]
        type.request_id = params[:request_id]
        type.created_date = params[:created_date]
        type
      end
    end

    module AccountList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AttachManagedPolicyToPermissionSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachManagedPolicyToPermissionSetInput, context: context)
        type = Types::AttachManagedPolicyToPermissionSetInput.new
        type.instance_arn = params[:instance_arn]
        type.permission_set_arn = params[:permission_set_arn]
        type.managed_policy_arn = params[:managed_policy_arn]
        type
      end
    end

    module AttachManagedPolicyToPermissionSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachManagedPolicyToPermissionSetOutput, context: context)
        type = Types::AttachManagedPolicyToPermissionSetOutput.new
        type
      end
    end

    module AttachedManagedPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachedManagedPolicy, context: context)
        type = Types::AttachedManagedPolicy.new
        type.name = params[:name]
        type.arn = params[:arn]
        type
      end
    end

    module AttachedManagedPolicyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AttachedManagedPolicy.build(element, context: "#{context}[#{index}]") unless element.nil?
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

    module CreateAccountAssignmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAccountAssignmentInput, context: context)
        type = Types::CreateAccountAssignmentInput.new
        type.instance_arn = params[:instance_arn]
        type.target_id = params[:target_id]
        type.target_type = params[:target_type]
        type.permission_set_arn = params[:permission_set_arn]
        type.principal_type = params[:principal_type]
        type.principal_id = params[:principal_id]
        type
      end
    end

    module CreateAccountAssignmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAccountAssignmentOutput, context: context)
        type = Types::CreateAccountAssignmentOutput.new
        type.account_assignment_creation_status = AccountAssignmentOperationStatus.build(params[:account_assignment_creation_status], context: "#{context}[:account_assignment_creation_status]") unless params[:account_assignment_creation_status].nil?
        type
      end
    end

    module CreateInstanceAccessControlAttributeConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateInstanceAccessControlAttributeConfigurationInput, context: context)
        type = Types::CreateInstanceAccessControlAttributeConfigurationInput.new
        type.instance_arn = params[:instance_arn]
        type.instance_access_control_attribute_configuration = InstanceAccessControlAttributeConfiguration.build(params[:instance_access_control_attribute_configuration], context: "#{context}[:instance_access_control_attribute_configuration]") unless params[:instance_access_control_attribute_configuration].nil?
        type
      end
    end

    module CreateInstanceAccessControlAttributeConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateInstanceAccessControlAttributeConfigurationOutput, context: context)
        type = Types::CreateInstanceAccessControlAttributeConfigurationOutput.new
        type
      end
    end

    module CreatePermissionSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePermissionSetInput, context: context)
        type = Types::CreatePermissionSetInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.instance_arn = params[:instance_arn]
        type.session_duration = params[:session_duration]
        type.relay_state = params[:relay_state]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreatePermissionSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePermissionSetOutput, context: context)
        type = Types::CreatePermissionSetOutput.new
        type.permission_set = PermissionSet.build(params[:permission_set], context: "#{context}[:permission_set]") unless params[:permission_set].nil?
        type
      end
    end

    module DeleteAccountAssignmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAccountAssignmentInput, context: context)
        type = Types::DeleteAccountAssignmentInput.new
        type.instance_arn = params[:instance_arn]
        type.target_id = params[:target_id]
        type.target_type = params[:target_type]
        type.permission_set_arn = params[:permission_set_arn]
        type.principal_type = params[:principal_type]
        type.principal_id = params[:principal_id]
        type
      end
    end

    module DeleteAccountAssignmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAccountAssignmentOutput, context: context)
        type = Types::DeleteAccountAssignmentOutput.new
        type.account_assignment_deletion_status = AccountAssignmentOperationStatus.build(params[:account_assignment_deletion_status], context: "#{context}[:account_assignment_deletion_status]") unless params[:account_assignment_deletion_status].nil?
        type
      end
    end

    module DeleteInlinePolicyFromPermissionSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteInlinePolicyFromPermissionSetInput, context: context)
        type = Types::DeleteInlinePolicyFromPermissionSetInput.new
        type.instance_arn = params[:instance_arn]
        type.permission_set_arn = params[:permission_set_arn]
        type
      end
    end

    module DeleteInlinePolicyFromPermissionSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteInlinePolicyFromPermissionSetOutput, context: context)
        type = Types::DeleteInlinePolicyFromPermissionSetOutput.new
        type
      end
    end

    module DeleteInstanceAccessControlAttributeConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteInstanceAccessControlAttributeConfigurationInput, context: context)
        type = Types::DeleteInstanceAccessControlAttributeConfigurationInput.new
        type.instance_arn = params[:instance_arn]
        type
      end
    end

    module DeleteInstanceAccessControlAttributeConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteInstanceAccessControlAttributeConfigurationOutput, context: context)
        type = Types::DeleteInstanceAccessControlAttributeConfigurationOutput.new
        type
      end
    end

    module DeletePermissionSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePermissionSetInput, context: context)
        type = Types::DeletePermissionSetInput.new
        type.instance_arn = params[:instance_arn]
        type.permission_set_arn = params[:permission_set_arn]
        type
      end
    end

    module DeletePermissionSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePermissionSetOutput, context: context)
        type = Types::DeletePermissionSetOutput.new
        type
      end
    end

    module DescribeAccountAssignmentCreationStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAccountAssignmentCreationStatusInput, context: context)
        type = Types::DescribeAccountAssignmentCreationStatusInput.new
        type.instance_arn = params[:instance_arn]
        type.account_assignment_creation_request_id = params[:account_assignment_creation_request_id]
        type
      end
    end

    module DescribeAccountAssignmentCreationStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAccountAssignmentCreationStatusOutput, context: context)
        type = Types::DescribeAccountAssignmentCreationStatusOutput.new
        type.account_assignment_creation_status = AccountAssignmentOperationStatus.build(params[:account_assignment_creation_status], context: "#{context}[:account_assignment_creation_status]") unless params[:account_assignment_creation_status].nil?
        type
      end
    end

    module DescribeAccountAssignmentDeletionStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAccountAssignmentDeletionStatusInput, context: context)
        type = Types::DescribeAccountAssignmentDeletionStatusInput.new
        type.instance_arn = params[:instance_arn]
        type.account_assignment_deletion_request_id = params[:account_assignment_deletion_request_id]
        type
      end
    end

    module DescribeAccountAssignmentDeletionStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAccountAssignmentDeletionStatusOutput, context: context)
        type = Types::DescribeAccountAssignmentDeletionStatusOutput.new
        type.account_assignment_deletion_status = AccountAssignmentOperationStatus.build(params[:account_assignment_deletion_status], context: "#{context}[:account_assignment_deletion_status]") unless params[:account_assignment_deletion_status].nil?
        type
      end
    end

    module DescribeInstanceAccessControlAttributeConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInstanceAccessControlAttributeConfigurationInput, context: context)
        type = Types::DescribeInstanceAccessControlAttributeConfigurationInput.new
        type.instance_arn = params[:instance_arn]
        type
      end
    end

    module DescribeInstanceAccessControlAttributeConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInstanceAccessControlAttributeConfigurationOutput, context: context)
        type = Types::DescribeInstanceAccessControlAttributeConfigurationOutput.new
        type.status = params[:status]
        type.status_reason = params[:status_reason]
        type.instance_access_control_attribute_configuration = InstanceAccessControlAttributeConfiguration.build(params[:instance_access_control_attribute_configuration], context: "#{context}[:instance_access_control_attribute_configuration]") unless params[:instance_access_control_attribute_configuration].nil?
        type
      end
    end

    module DescribePermissionSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePermissionSetInput, context: context)
        type = Types::DescribePermissionSetInput.new
        type.instance_arn = params[:instance_arn]
        type.permission_set_arn = params[:permission_set_arn]
        type
      end
    end

    module DescribePermissionSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePermissionSetOutput, context: context)
        type = Types::DescribePermissionSetOutput.new
        type.permission_set = PermissionSet.build(params[:permission_set], context: "#{context}[:permission_set]") unless params[:permission_set].nil?
        type
      end
    end

    module DescribePermissionSetProvisioningStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePermissionSetProvisioningStatusInput, context: context)
        type = Types::DescribePermissionSetProvisioningStatusInput.new
        type.instance_arn = params[:instance_arn]
        type.provision_permission_set_request_id = params[:provision_permission_set_request_id]
        type
      end
    end

    module DescribePermissionSetProvisioningStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePermissionSetProvisioningStatusOutput, context: context)
        type = Types::DescribePermissionSetProvisioningStatusOutput.new
        type.permission_set_provisioning_status = PermissionSetProvisioningStatus.build(params[:permission_set_provisioning_status], context: "#{context}[:permission_set_provisioning_status]") unless params[:permission_set_provisioning_status].nil?
        type
      end
    end

    module DetachManagedPolicyFromPermissionSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetachManagedPolicyFromPermissionSetInput, context: context)
        type = Types::DetachManagedPolicyFromPermissionSetInput.new
        type.instance_arn = params[:instance_arn]
        type.permission_set_arn = params[:permission_set_arn]
        type.managed_policy_arn = params[:managed_policy_arn]
        type
      end
    end

    module DetachManagedPolicyFromPermissionSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetachManagedPolicyFromPermissionSetOutput, context: context)
        type = Types::DetachManagedPolicyFromPermissionSetOutput.new
        type
      end
    end

    module GetInlinePolicyForPermissionSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInlinePolicyForPermissionSetInput, context: context)
        type = Types::GetInlinePolicyForPermissionSetInput.new
        type.instance_arn = params[:instance_arn]
        type.permission_set_arn = params[:permission_set_arn]
        type
      end
    end

    module GetInlinePolicyForPermissionSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInlinePolicyForPermissionSetOutput, context: context)
        type = Types::GetInlinePolicyForPermissionSetOutput.new
        type.inline_policy = params[:inline_policy]
        type
      end
    end

    module InstanceAccessControlAttributeConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceAccessControlAttributeConfiguration, context: context)
        type = Types::InstanceAccessControlAttributeConfiguration.new
        type.access_control_attributes = AccessControlAttributeList.build(params[:access_control_attributes], context: "#{context}[:access_control_attributes]") unless params[:access_control_attributes].nil?
        type
      end
    end

    module InstanceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InstanceMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InstanceMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceMetadata, context: context)
        type = Types::InstanceMetadata.new
        type.instance_arn = params[:instance_arn]
        type.identity_store_id = params[:identity_store_id]
        type
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type
      end
    end

    module ListAccountAssignmentCreationStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAccountAssignmentCreationStatusInput, context: context)
        type = Types::ListAccountAssignmentCreationStatusInput.new
        type.instance_arn = params[:instance_arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.filter = OperationStatusFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type
      end
    end

    module ListAccountAssignmentCreationStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAccountAssignmentCreationStatusOutput, context: context)
        type = Types::ListAccountAssignmentCreationStatusOutput.new
        type.account_assignments_creation_status = AccountAssignmentOperationStatusList.build(params[:account_assignments_creation_status], context: "#{context}[:account_assignments_creation_status]") unless params[:account_assignments_creation_status].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAccountAssignmentDeletionStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAccountAssignmentDeletionStatusInput, context: context)
        type = Types::ListAccountAssignmentDeletionStatusInput.new
        type.instance_arn = params[:instance_arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.filter = OperationStatusFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type
      end
    end

    module ListAccountAssignmentDeletionStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAccountAssignmentDeletionStatusOutput, context: context)
        type = Types::ListAccountAssignmentDeletionStatusOutput.new
        type.account_assignments_deletion_status = AccountAssignmentOperationStatusList.build(params[:account_assignments_deletion_status], context: "#{context}[:account_assignments_deletion_status]") unless params[:account_assignments_deletion_status].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAccountAssignmentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAccountAssignmentsInput, context: context)
        type = Types::ListAccountAssignmentsInput.new
        type.instance_arn = params[:instance_arn]
        type.account_id = params[:account_id]
        type.permission_set_arn = params[:permission_set_arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAccountAssignmentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAccountAssignmentsOutput, context: context)
        type = Types::ListAccountAssignmentsOutput.new
        type.account_assignments = AccountAssignmentList.build(params[:account_assignments], context: "#{context}[:account_assignments]") unless params[:account_assignments].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAccountsForProvisionedPermissionSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAccountsForProvisionedPermissionSetInput, context: context)
        type = Types::ListAccountsForProvisionedPermissionSetInput.new
        type.instance_arn = params[:instance_arn]
        type.permission_set_arn = params[:permission_set_arn]
        type.provisioning_status = params[:provisioning_status]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAccountsForProvisionedPermissionSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAccountsForProvisionedPermissionSetOutput, context: context)
        type = Types::ListAccountsForProvisionedPermissionSetOutput.new
        type.account_ids = AccountList.build(params[:account_ids], context: "#{context}[:account_ids]") unless params[:account_ids].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInstancesInput, context: context)
        type = Types::ListInstancesInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListInstancesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInstancesOutput, context: context)
        type = Types::ListInstancesOutput.new
        type.instances = InstanceList.build(params[:instances], context: "#{context}[:instances]") unless params[:instances].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListManagedPoliciesInPermissionSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListManagedPoliciesInPermissionSetInput, context: context)
        type = Types::ListManagedPoliciesInPermissionSetInput.new
        type.instance_arn = params[:instance_arn]
        type.permission_set_arn = params[:permission_set_arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListManagedPoliciesInPermissionSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListManagedPoliciesInPermissionSetOutput, context: context)
        type = Types::ListManagedPoliciesInPermissionSetOutput.new
        type.attached_managed_policies = AttachedManagedPolicyList.build(params[:attached_managed_policies], context: "#{context}[:attached_managed_policies]") unless params[:attached_managed_policies].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPermissionSetProvisioningStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPermissionSetProvisioningStatusInput, context: context)
        type = Types::ListPermissionSetProvisioningStatusInput.new
        type.instance_arn = params[:instance_arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.filter = OperationStatusFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type
      end
    end

    module ListPermissionSetProvisioningStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPermissionSetProvisioningStatusOutput, context: context)
        type = Types::ListPermissionSetProvisioningStatusOutput.new
        type.permission_sets_provisioning_status = PermissionSetProvisioningStatusList.build(params[:permission_sets_provisioning_status], context: "#{context}[:permission_sets_provisioning_status]") unless params[:permission_sets_provisioning_status].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPermissionSetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPermissionSetsInput, context: context)
        type = Types::ListPermissionSetsInput.new
        type.instance_arn = params[:instance_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListPermissionSetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPermissionSetsOutput, context: context)
        type = Types::ListPermissionSetsOutput.new
        type.permission_sets = PermissionSetList.build(params[:permission_sets], context: "#{context}[:permission_sets]") unless params[:permission_sets].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPermissionSetsProvisionedToAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPermissionSetsProvisionedToAccountInput, context: context)
        type = Types::ListPermissionSetsProvisionedToAccountInput.new
        type.instance_arn = params[:instance_arn]
        type.account_id = params[:account_id]
        type.provisioning_status = params[:provisioning_status]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPermissionSetsProvisionedToAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPermissionSetsProvisionedToAccountOutput, context: context)
        type = Types::ListPermissionSetsProvisionedToAccountOutput.new
        type.next_token = params[:next_token]
        type.permission_sets = PermissionSetList.build(params[:permission_sets], context: "#{context}[:permission_sets]") unless params[:permission_sets].nil?
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.instance_arn = params[:instance_arn]
        type.resource_arn = params[:resource_arn]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module OperationStatusFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OperationStatusFilter, context: context)
        type = Types::OperationStatusFilter.new
        type.status = params[:status]
        type
      end
    end

    module PermissionSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PermissionSet, context: context)
        type = Types::PermissionSet.new
        type.name = params[:name]
        type.permission_set_arn = params[:permission_set_arn]
        type.description = params[:description]
        type.created_date = params[:created_date]
        type.session_duration = params[:session_duration]
        type.relay_state = params[:relay_state]
        type
      end
    end

    module PermissionSetList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PermissionSetProvisioningStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PermissionSetProvisioningStatus, context: context)
        type = Types::PermissionSetProvisioningStatus.new
        type.status = params[:status]
        type.request_id = params[:request_id]
        type.account_id = params[:account_id]
        type.permission_set_arn = params[:permission_set_arn]
        type.failure_reason = params[:failure_reason]
        type.created_date = params[:created_date]
        type
      end
    end

    module PermissionSetProvisioningStatusList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PermissionSetProvisioningStatusMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PermissionSetProvisioningStatusMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PermissionSetProvisioningStatusMetadata, context: context)
        type = Types::PermissionSetProvisioningStatusMetadata.new
        type.status = params[:status]
        type.request_id = params[:request_id]
        type.created_date = params[:created_date]
        type
      end
    end

    module ProvisionPermissionSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProvisionPermissionSetInput, context: context)
        type = Types::ProvisionPermissionSetInput.new
        type.instance_arn = params[:instance_arn]
        type.permission_set_arn = params[:permission_set_arn]
        type.target_id = params[:target_id]
        type.target_type = params[:target_type]
        type
      end
    end

    module ProvisionPermissionSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProvisionPermissionSetOutput, context: context)
        type = Types::ProvisionPermissionSetOutput.new
        type.permission_set_provisioning_status = PermissionSetProvisioningStatus.build(params[:permission_set_provisioning_status], context: "#{context}[:permission_set_provisioning_status]") unless params[:permission_set_provisioning_status].nil?
        type
      end
    end

    module PutInlinePolicyToPermissionSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutInlinePolicyToPermissionSetInput, context: context)
        type = Types::PutInlinePolicyToPermissionSetInput.new
        type.instance_arn = params[:instance_arn]
        type.permission_set_arn = params[:permission_set_arn]
        type.inline_policy = params[:inline_policy]
        type
      end
    end

    module PutInlinePolicyToPermissionSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutInlinePolicyToPermissionSetOutput, context: context)
        type = Types::PutInlinePolicyToPermissionSetOutput.new
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type.message = params[:message]
        type
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

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.instance_arn = params[:instance_arn]
        type.resource_arn = params[:resource_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.instance_arn = params[:instance_arn]
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
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

    module UpdateInstanceAccessControlAttributeConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateInstanceAccessControlAttributeConfigurationInput, context: context)
        type = Types::UpdateInstanceAccessControlAttributeConfigurationInput.new
        type.instance_arn = params[:instance_arn]
        type.instance_access_control_attribute_configuration = InstanceAccessControlAttributeConfiguration.build(params[:instance_access_control_attribute_configuration], context: "#{context}[:instance_access_control_attribute_configuration]") unless params[:instance_access_control_attribute_configuration].nil?
        type
      end
    end

    module UpdateInstanceAccessControlAttributeConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateInstanceAccessControlAttributeConfigurationOutput, context: context)
        type = Types::UpdateInstanceAccessControlAttributeConfigurationOutput.new
        type
      end
    end

    module UpdatePermissionSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePermissionSetInput, context: context)
        type = Types::UpdatePermissionSetInput.new
        type.instance_arn = params[:instance_arn]
        type.permission_set_arn = params[:permission_set_arn]
        type.description = params[:description]
        type.session_duration = params[:session_duration]
        type.relay_state = params[:relay_state]
        type
      end
    end

    module UpdatePermissionSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePermissionSetOutput, context: context)
        type = Types::UpdatePermissionSetOutput.new
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type
      end
    end

  end
end
