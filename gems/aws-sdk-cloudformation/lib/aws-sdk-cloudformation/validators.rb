# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::CloudFormation
  module Validators

    class AccountGateResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccountGateResult, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_reason], ::String, context: "#{context}[:status_reason]")
      end
    end

    class AccountLimit
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccountLimit, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::Integer, context: "#{context}[:value]")
      end
    end

    class AccountLimitList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AccountLimit.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
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

    class ActivateTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActivateTypeInput, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:public_type_arn], ::String, context: "#{context}[:public_type_arn]")
        Hearth::Validator.validate!(input[:publisher_id], ::String, context: "#{context}[:publisher_id]")
        Hearth::Validator.validate!(input[:type_name], ::String, context: "#{context}[:type_name]")
        Hearth::Validator.validate!(input[:type_name_alias], ::String, context: "#{context}[:type_name_alias]")
        Hearth::Validator.validate!(input[:auto_update], ::TrueClass, ::FalseClass, context: "#{context}[:auto_update]")
        LoggingConfig.validate!(input[:logging_config], context: "#{context}[:logging_config]") unless input[:logging_config].nil?
        Hearth::Validator.validate!(input[:execution_role_arn], ::String, context: "#{context}[:execution_role_arn]")
        Hearth::Validator.validate!(input[:version_bump], ::String, context: "#{context}[:version_bump]")
        Hearth::Validator.validate!(input[:major_version], ::Integer, context: "#{context}[:major_version]")
      end
    end

    class ActivateTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActivateTypeOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class AllowedValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AutoDeployment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoDeployment, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:retain_stacks_on_account_removal], ::TrueClass, ::FalseClass, context: "#{context}[:retain_stacks_on_account_removal]")
      end
    end

    class BatchDescribeTypeConfigurationsError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDescribeTypeConfigurationsError, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
        TypeConfigurationIdentifier.validate!(input[:type_configuration_identifier], context: "#{context}[:type_configuration_identifier]") unless input[:type_configuration_identifier].nil?
      end
    end

    class BatchDescribeTypeConfigurationsErrors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BatchDescribeTypeConfigurationsError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchDescribeTypeConfigurationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDescribeTypeConfigurationsInput, context: context)
        TypeConfigurationIdentifiers.validate!(input[:type_configuration_identifiers], context: "#{context}[:type_configuration_identifiers]") unless input[:type_configuration_identifiers].nil?
      end
    end

    class BatchDescribeTypeConfigurationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDescribeTypeConfigurationsOutput, context: context)
        BatchDescribeTypeConfigurationsErrors.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
        UnprocessedTypeConfigurations.validate!(input[:unprocessed_type_configurations], context: "#{context}[:unprocessed_type_configurations]") unless input[:unprocessed_type_configurations].nil?
        TypeConfigurationDetailsList.validate!(input[:type_configurations], context: "#{context}[:type_configurations]") unless input[:type_configurations].nil?
      end
    end

    class CFNRegistryException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CFNRegistryException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CancelUpdateStackInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelUpdateStackInput, context: context)
        Hearth::Validator.validate!(input[:stack_name], ::String, context: "#{context}[:stack_name]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class CancelUpdateStackOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelUpdateStackOutput, context: context)
      end
    end

    class Capabilities
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Change
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Change, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:hook_invocation_count], ::Integer, context: "#{context}[:hook_invocation_count]")
        ResourceChange.validate!(input[:resource_change], context: "#{context}[:resource_change]") unless input[:resource_change].nil?
      end
    end

    class ChangeSetHook
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChangeSetHook, context: context)
        Hearth::Validator.validate!(input[:invocation_point], ::String, context: "#{context}[:invocation_point]")
        Hearth::Validator.validate!(input[:failure_mode], ::String, context: "#{context}[:failure_mode]")
        Hearth::Validator.validate!(input[:type_name], ::String, context: "#{context}[:type_name]")
        Hearth::Validator.validate!(input[:type_version_id], ::String, context: "#{context}[:type_version_id]")
        Hearth::Validator.validate!(input[:type_configuration_version_id], ::String, context: "#{context}[:type_configuration_version_id]")
        ChangeSetHookTargetDetails.validate!(input[:target_details], context: "#{context}[:target_details]") unless input[:target_details].nil?
      end
    end

    class ChangeSetHookResourceTargetDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChangeSetHookResourceTargetDetails, context: context)
        Hearth::Validator.validate!(input[:logical_resource_id], ::String, context: "#{context}[:logical_resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:resource_action], ::String, context: "#{context}[:resource_action]")
      end
    end

    class ChangeSetHookTargetDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChangeSetHookTargetDetails, context: context)
        Hearth::Validator.validate!(input[:target_type], ::String, context: "#{context}[:target_type]")
        ChangeSetHookResourceTargetDetails.validate!(input[:resource_target_details], context: "#{context}[:resource_target_details]") unless input[:resource_target_details].nil?
      end
    end

    class ChangeSetHooks
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ChangeSetHook.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ChangeSetNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChangeSetNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ChangeSetSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ChangeSetSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ChangeSetSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChangeSetSummary, context: context)
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
        Hearth::Validator.validate!(input[:stack_name], ::String, context: "#{context}[:stack_name]")
        Hearth::Validator.validate!(input[:change_set_id], ::String, context: "#{context}[:change_set_id]")
        Hearth::Validator.validate!(input[:change_set_name], ::String, context: "#{context}[:change_set_name]")
        Hearth::Validator.validate!(input[:execution_status], ::String, context: "#{context}[:execution_status]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_reason], ::String, context: "#{context}[:status_reason]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:include_nested_stacks], ::TrueClass, ::FalseClass, context: "#{context}[:include_nested_stacks]")
        Hearth::Validator.validate!(input[:parent_change_set_id], ::String, context: "#{context}[:parent_change_set_id]")
        Hearth::Validator.validate!(input[:root_change_set_id], ::String, context: "#{context}[:root_change_set_id]")
      end
    end

    class Changes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Change.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ContinueUpdateRollbackInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContinueUpdateRollbackInput, context: context)
        Hearth::Validator.validate!(input[:stack_name], ::String, context: "#{context}[:stack_name]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        ResourcesToSkip.validate!(input[:resources_to_skip], context: "#{context}[:resources_to_skip]") unless input[:resources_to_skip].nil?
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class ContinueUpdateRollbackOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContinueUpdateRollbackOutput, context: context)
      end
    end

    class CreateChangeSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateChangeSetInput, context: context)
        Hearth::Validator.validate!(input[:stack_name], ::String, context: "#{context}[:stack_name]")
        Hearth::Validator.validate!(input[:template_body], ::String, context: "#{context}[:template_body]")
        Hearth::Validator.validate!(input[:template_url], ::String, context: "#{context}[:template_url]")
        Hearth::Validator.validate!(input[:use_previous_template], ::TrueClass, ::FalseClass, context: "#{context}[:use_previous_template]")
        Parameters.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        Capabilities.validate!(input[:capabilities], context: "#{context}[:capabilities]") unless input[:capabilities].nil?
        ResourceTypes.validate!(input[:resource_types], context: "#{context}[:resource_types]") unless input[:resource_types].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        RollbackConfiguration.validate!(input[:rollback_configuration], context: "#{context}[:rollback_configuration]") unless input[:rollback_configuration].nil?
        NotificationARNs.validate!(input[:notification_ar_ns], context: "#{context}[:notification_ar_ns]") unless input[:notification_ar_ns].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:change_set_name], ::String, context: "#{context}[:change_set_name]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:change_set_type], ::String, context: "#{context}[:change_set_type]")
        ResourcesToImport.validate!(input[:resources_to_import], context: "#{context}[:resources_to_import]") unless input[:resources_to_import].nil?
        Hearth::Validator.validate!(input[:include_nested_stacks], ::TrueClass, ::FalseClass, context: "#{context}[:include_nested_stacks]")
      end
    end

    class CreateChangeSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateChangeSetOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
      end
    end

    class CreateStackInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStackInput, context: context)
        Hearth::Validator.validate!(input[:stack_name], ::String, context: "#{context}[:stack_name]")
        Hearth::Validator.validate!(input[:template_body], ::String, context: "#{context}[:template_body]")
        Hearth::Validator.validate!(input[:template_url], ::String, context: "#{context}[:template_url]")
        Parameters.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        Hearth::Validator.validate!(input[:disable_rollback], ::TrueClass, ::FalseClass, context: "#{context}[:disable_rollback]")
        RollbackConfiguration.validate!(input[:rollback_configuration], context: "#{context}[:rollback_configuration]") unless input[:rollback_configuration].nil?
        Hearth::Validator.validate!(input[:timeout_in_minutes], ::Integer, context: "#{context}[:timeout_in_minutes]")
        NotificationARNs.validate!(input[:notification_ar_ns], context: "#{context}[:notification_ar_ns]") unless input[:notification_ar_ns].nil?
        Capabilities.validate!(input[:capabilities], context: "#{context}[:capabilities]") unless input[:capabilities].nil?
        ResourceTypes.validate!(input[:resource_types], context: "#{context}[:resource_types]") unless input[:resource_types].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:on_failure], ::String, context: "#{context}[:on_failure]")
        Hearth::Validator.validate!(input[:stack_policy_body], ::String, context: "#{context}[:stack_policy_body]")
        Hearth::Validator.validate!(input[:stack_policy_url], ::String, context: "#{context}[:stack_policy_url]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:enable_termination_protection], ::TrueClass, ::FalseClass, context: "#{context}[:enable_termination_protection]")
      end
    end

    class CreateStackInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStackInstancesInput, context: context)
        Hearth::Validator.validate!(input[:stack_set_name], ::String, context: "#{context}[:stack_set_name]")
        AccountList.validate!(input[:accounts], context: "#{context}[:accounts]") unless input[:accounts].nil?
        DeploymentTargets.validate!(input[:deployment_targets], context: "#{context}[:deployment_targets]") unless input[:deployment_targets].nil?
        RegionList.validate!(input[:regions], context: "#{context}[:regions]") unless input[:regions].nil?
        Parameters.validate!(input[:parameter_overrides], context: "#{context}[:parameter_overrides]") unless input[:parameter_overrides].nil?
        StackSetOperationPreferences.validate!(input[:operation_preferences], context: "#{context}[:operation_preferences]") unless input[:operation_preferences].nil?
        Hearth::Validator.validate!(input[:operation_id], ::String, context: "#{context}[:operation_id]")
        Hearth::Validator.validate!(input[:call_as], ::String, context: "#{context}[:call_as]")
      end
    end

    class CreateStackInstancesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStackInstancesOutput, context: context)
        Hearth::Validator.validate!(input[:operation_id], ::String, context: "#{context}[:operation_id]")
      end
    end

    class CreateStackOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStackOutput, context: context)
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
      end
    end

    class CreateStackSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStackSetInput, context: context)
        Hearth::Validator.validate!(input[:stack_set_name], ::String, context: "#{context}[:stack_set_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:template_body], ::String, context: "#{context}[:template_body]")
        Hearth::Validator.validate!(input[:template_url], ::String, context: "#{context}[:template_url]")
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
        Parameters.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        Capabilities.validate!(input[:capabilities], context: "#{context}[:capabilities]") unless input[:capabilities].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:administration_role_arn], ::String, context: "#{context}[:administration_role_arn]")
        Hearth::Validator.validate!(input[:execution_role_name], ::String, context: "#{context}[:execution_role_name]")
        Hearth::Validator.validate!(input[:permission_model], ::String, context: "#{context}[:permission_model]")
        AutoDeployment.validate!(input[:auto_deployment], context: "#{context}[:auto_deployment]") unless input[:auto_deployment].nil?
        Hearth::Validator.validate!(input[:call_as], ::String, context: "#{context}[:call_as]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        ManagedExecution.validate!(input[:managed_execution], context: "#{context}[:managed_execution]") unless input[:managed_execution].nil?
      end
    end

    class CreateStackSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStackSetOutput, context: context)
        Hearth::Validator.validate!(input[:stack_set_id], ::String, context: "#{context}[:stack_set_id]")
      end
    end

    class CreatedButModifiedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatedButModifiedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DeactivateTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeactivateTypeInput, context: context)
        Hearth::Validator.validate!(input[:type_name], ::String, context: "#{context}[:type_name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class DeactivateTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeactivateTypeOutput, context: context)
      end
    end

    class DeleteChangeSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteChangeSetInput, context: context)
        Hearth::Validator.validate!(input[:change_set_name], ::String, context: "#{context}[:change_set_name]")
        Hearth::Validator.validate!(input[:stack_name], ::String, context: "#{context}[:stack_name]")
      end
    end

    class DeleteChangeSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteChangeSetOutput, context: context)
      end
    end

    class DeleteStackInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteStackInput, context: context)
        Hearth::Validator.validate!(input[:stack_name], ::String, context: "#{context}[:stack_name]")
        RetainResources.validate!(input[:retain_resources], context: "#{context}[:retain_resources]") unless input[:retain_resources].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class DeleteStackInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteStackInstancesInput, context: context)
        Hearth::Validator.validate!(input[:stack_set_name], ::String, context: "#{context}[:stack_set_name]")
        AccountList.validate!(input[:accounts], context: "#{context}[:accounts]") unless input[:accounts].nil?
        DeploymentTargets.validate!(input[:deployment_targets], context: "#{context}[:deployment_targets]") unless input[:deployment_targets].nil?
        RegionList.validate!(input[:regions], context: "#{context}[:regions]") unless input[:regions].nil?
        StackSetOperationPreferences.validate!(input[:operation_preferences], context: "#{context}[:operation_preferences]") unless input[:operation_preferences].nil?
        Hearth::Validator.validate!(input[:retain_stacks], ::TrueClass, ::FalseClass, context: "#{context}[:retain_stacks]")
        Hearth::Validator.validate!(input[:operation_id], ::String, context: "#{context}[:operation_id]")
        Hearth::Validator.validate!(input[:call_as], ::String, context: "#{context}[:call_as]")
      end
    end

    class DeleteStackInstancesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteStackInstancesOutput, context: context)
        Hearth::Validator.validate!(input[:operation_id], ::String, context: "#{context}[:operation_id]")
      end
    end

    class DeleteStackOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteStackOutput, context: context)
      end
    end

    class DeleteStackSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteStackSetInput, context: context)
        Hearth::Validator.validate!(input[:stack_set_name], ::String, context: "#{context}[:stack_set_name]")
        Hearth::Validator.validate!(input[:call_as], ::String, context: "#{context}[:call_as]")
      end
    end

    class DeleteStackSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteStackSetOutput, context: context)
      end
    end

    class DeploymentTargets
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeploymentTargets, context: context)
        AccountList.validate!(input[:accounts], context: "#{context}[:accounts]") unless input[:accounts].nil?
        Hearth::Validator.validate!(input[:accounts_url], ::String, context: "#{context}[:accounts_url]")
        OrganizationalUnitIdList.validate!(input[:organizational_unit_ids], context: "#{context}[:organizational_unit_ids]") unless input[:organizational_unit_ids].nil?
      end
    end

    class DeregisterTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterTypeInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:type_name], ::String, context: "#{context}[:type_name]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
      end
    end

    class DeregisterTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterTypeOutput, context: context)
      end
    end

    class DescribeAccountLimitsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAccountLimitsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeAccountLimitsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAccountLimitsOutput, context: context)
        AccountLimitList.validate!(input[:account_limits], context: "#{context}[:account_limits]") unless input[:account_limits].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeChangeSetHooksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeChangeSetHooksInput, context: context)
        Hearth::Validator.validate!(input[:change_set_name], ::String, context: "#{context}[:change_set_name]")
        Hearth::Validator.validate!(input[:stack_name], ::String, context: "#{context}[:stack_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:logical_resource_id], ::String, context: "#{context}[:logical_resource_id]")
      end
    end

    class DescribeChangeSetHooksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeChangeSetHooksOutput, context: context)
        Hearth::Validator.validate!(input[:change_set_id], ::String, context: "#{context}[:change_set_id]")
        Hearth::Validator.validate!(input[:change_set_name], ::String, context: "#{context}[:change_set_name]")
        ChangeSetHooks.validate!(input[:hooks], context: "#{context}[:hooks]") unless input[:hooks].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
        Hearth::Validator.validate!(input[:stack_name], ::String, context: "#{context}[:stack_name]")
      end
    end

    class DescribeChangeSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeChangeSetInput, context: context)
        Hearth::Validator.validate!(input[:change_set_name], ::String, context: "#{context}[:change_set_name]")
        Hearth::Validator.validate!(input[:stack_name], ::String, context: "#{context}[:stack_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeChangeSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeChangeSetOutput, context: context)
        Hearth::Validator.validate!(input[:change_set_name], ::String, context: "#{context}[:change_set_name]")
        Hearth::Validator.validate!(input[:change_set_id], ::String, context: "#{context}[:change_set_id]")
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
        Hearth::Validator.validate!(input[:stack_name], ::String, context: "#{context}[:stack_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Parameters.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:execution_status], ::String, context: "#{context}[:execution_status]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_reason], ::String, context: "#{context}[:status_reason]")
        NotificationARNs.validate!(input[:notification_ar_ns], context: "#{context}[:notification_ar_ns]") unless input[:notification_ar_ns].nil?
        RollbackConfiguration.validate!(input[:rollback_configuration], context: "#{context}[:rollback_configuration]") unless input[:rollback_configuration].nil?
        Capabilities.validate!(input[:capabilities], context: "#{context}[:capabilities]") unless input[:capabilities].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Changes.validate!(input[:changes], context: "#{context}[:changes]") unless input[:changes].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:include_nested_stacks], ::TrueClass, ::FalseClass, context: "#{context}[:include_nested_stacks]")
        Hearth::Validator.validate!(input[:parent_change_set_id], ::String, context: "#{context}[:parent_change_set_id]")
        Hearth::Validator.validate!(input[:root_change_set_id], ::String, context: "#{context}[:root_change_set_id]")
      end
    end

    class DescribePublisherInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePublisherInput, context: context)
        Hearth::Validator.validate!(input[:publisher_id], ::String, context: "#{context}[:publisher_id]")
      end
    end

    class DescribePublisherOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePublisherOutput, context: context)
        Hearth::Validator.validate!(input[:publisher_id], ::String, context: "#{context}[:publisher_id]")
        Hearth::Validator.validate!(input[:publisher_status], ::String, context: "#{context}[:publisher_status]")
        Hearth::Validator.validate!(input[:identity_provider], ::String, context: "#{context}[:identity_provider]")
        Hearth::Validator.validate!(input[:publisher_profile], ::String, context: "#{context}[:publisher_profile]")
      end
    end

    class DescribeStackDriftDetectionStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStackDriftDetectionStatusInput, context: context)
        Hearth::Validator.validate!(input[:stack_drift_detection_id], ::String, context: "#{context}[:stack_drift_detection_id]")
      end
    end

    class DescribeStackDriftDetectionStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStackDriftDetectionStatusOutput, context: context)
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
        Hearth::Validator.validate!(input[:stack_drift_detection_id], ::String, context: "#{context}[:stack_drift_detection_id]")
        Hearth::Validator.validate!(input[:stack_drift_status], ::String, context: "#{context}[:stack_drift_status]")
        Hearth::Validator.validate!(input[:detection_status], ::String, context: "#{context}[:detection_status]")
        Hearth::Validator.validate!(input[:detection_status_reason], ::String, context: "#{context}[:detection_status_reason]")
        Hearth::Validator.validate!(input[:drifted_stack_resource_count], ::Integer, context: "#{context}[:drifted_stack_resource_count]")
        Hearth::Validator.validate!(input[:timestamp], ::Time, context: "#{context}[:timestamp]")
      end
    end

    class DescribeStackEventsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStackEventsInput, context: context)
        Hearth::Validator.validate!(input[:stack_name], ::String, context: "#{context}[:stack_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeStackEventsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStackEventsOutput, context: context)
        StackEvents.validate!(input[:stack_events], context: "#{context}[:stack_events]") unless input[:stack_events].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeStackInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStackInstanceInput, context: context)
        Hearth::Validator.validate!(input[:stack_set_name], ::String, context: "#{context}[:stack_set_name]")
        Hearth::Validator.validate!(input[:stack_instance_account], ::String, context: "#{context}[:stack_instance_account]")
        Hearth::Validator.validate!(input[:stack_instance_region], ::String, context: "#{context}[:stack_instance_region]")
        Hearth::Validator.validate!(input[:call_as], ::String, context: "#{context}[:call_as]")
      end
    end

    class DescribeStackInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStackInstanceOutput, context: context)
        StackInstance.validate!(input[:stack_instance], context: "#{context}[:stack_instance]") unless input[:stack_instance].nil?
      end
    end

    class DescribeStackResourceDriftsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStackResourceDriftsInput, context: context)
        Hearth::Validator.validate!(input[:stack_name], ::String, context: "#{context}[:stack_name]")
        StackResourceDriftStatusFilters.validate!(input[:stack_resource_drift_status_filters], context: "#{context}[:stack_resource_drift_status_filters]") unless input[:stack_resource_drift_status_filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeStackResourceDriftsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStackResourceDriftsOutput, context: context)
        StackResourceDrifts.validate!(input[:stack_resource_drifts], context: "#{context}[:stack_resource_drifts]") unless input[:stack_resource_drifts].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeStackResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStackResourceInput, context: context)
        Hearth::Validator.validate!(input[:stack_name], ::String, context: "#{context}[:stack_name]")
        Hearth::Validator.validate!(input[:logical_resource_id], ::String, context: "#{context}[:logical_resource_id]")
      end
    end

    class DescribeStackResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStackResourceOutput, context: context)
        StackResourceDetail.validate!(input[:stack_resource_detail], context: "#{context}[:stack_resource_detail]") unless input[:stack_resource_detail].nil?
      end
    end

    class DescribeStackResourcesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStackResourcesInput, context: context)
        Hearth::Validator.validate!(input[:stack_name], ::String, context: "#{context}[:stack_name]")
        Hearth::Validator.validate!(input[:logical_resource_id], ::String, context: "#{context}[:logical_resource_id]")
        Hearth::Validator.validate!(input[:physical_resource_id], ::String, context: "#{context}[:physical_resource_id]")
      end
    end

    class DescribeStackResourcesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStackResourcesOutput, context: context)
        StackResources.validate!(input[:stack_resources], context: "#{context}[:stack_resources]") unless input[:stack_resources].nil?
      end
    end

    class DescribeStackSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStackSetInput, context: context)
        Hearth::Validator.validate!(input[:stack_set_name], ::String, context: "#{context}[:stack_set_name]")
        Hearth::Validator.validate!(input[:call_as], ::String, context: "#{context}[:call_as]")
      end
    end

    class DescribeStackSetOperationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStackSetOperationInput, context: context)
        Hearth::Validator.validate!(input[:stack_set_name], ::String, context: "#{context}[:stack_set_name]")
        Hearth::Validator.validate!(input[:operation_id], ::String, context: "#{context}[:operation_id]")
        Hearth::Validator.validate!(input[:call_as], ::String, context: "#{context}[:call_as]")
      end
    end

    class DescribeStackSetOperationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStackSetOperationOutput, context: context)
        StackSetOperation.validate!(input[:stack_set_operation], context: "#{context}[:stack_set_operation]") unless input[:stack_set_operation].nil?
      end
    end

    class DescribeStackSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStackSetOutput, context: context)
        StackSet.validate!(input[:stack_set], context: "#{context}[:stack_set]") unless input[:stack_set].nil?
      end
    end

    class DescribeStacksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStacksInput, context: context)
        Hearth::Validator.validate!(input[:stack_name], ::String, context: "#{context}[:stack_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeStacksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStacksOutput, context: context)
        Stacks.validate!(input[:stacks], context: "#{context}[:stacks]") unless input[:stacks].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTypeInput, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:type_name], ::String, context: "#{context}[:type_name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate!(input[:publisher_id], ::String, context: "#{context}[:publisher_id]")
        Hearth::Validator.validate!(input[:public_version_number], ::String, context: "#{context}[:public_version_number]")
      end
    end

    class DescribeTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTypeOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:type_name], ::String, context: "#{context}[:type_name]")
        Hearth::Validator.validate!(input[:default_version_id], ::String, context: "#{context}[:default_version_id]")
        Hearth::Validator.validate!(input[:is_default_version], ::TrueClass, ::FalseClass, context: "#{context}[:is_default_version]")
        Hearth::Validator.validate!(input[:type_tests_status], ::String, context: "#{context}[:type_tests_status]")
        Hearth::Validator.validate!(input[:type_tests_status_description], ::String, context: "#{context}[:type_tests_status_description]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:schema], ::String, context: "#{context}[:schema]")
        Hearth::Validator.validate!(input[:provisioning_type], ::String, context: "#{context}[:provisioning_type]")
        Hearth::Validator.validate!(input[:deprecated_status], ::String, context: "#{context}[:deprecated_status]")
        LoggingConfig.validate!(input[:logging_config], context: "#{context}[:logging_config]") unless input[:logging_config].nil?
        RequiredActivatedTypes.validate!(input[:required_activated_types], context: "#{context}[:required_activated_types]") unless input[:required_activated_types].nil?
        Hearth::Validator.validate!(input[:execution_role_arn], ::String, context: "#{context}[:execution_role_arn]")
        Hearth::Validator.validate!(input[:visibility], ::String, context: "#{context}[:visibility]")
        Hearth::Validator.validate!(input[:source_url], ::String, context: "#{context}[:source_url]")
        Hearth::Validator.validate!(input[:documentation_url], ::String, context: "#{context}[:documentation_url]")
        Hearth::Validator.validate!(input[:last_updated], ::Time, context: "#{context}[:last_updated]")
        Hearth::Validator.validate!(input[:time_created], ::Time, context: "#{context}[:time_created]")
        Hearth::Validator.validate!(input[:configuration_schema], ::String, context: "#{context}[:configuration_schema]")
        Hearth::Validator.validate!(input[:publisher_id], ::String, context: "#{context}[:publisher_id]")
        Hearth::Validator.validate!(input[:original_type_name], ::String, context: "#{context}[:original_type_name]")
        Hearth::Validator.validate!(input[:original_type_arn], ::String, context: "#{context}[:original_type_arn]")
        Hearth::Validator.validate!(input[:public_version_number], ::String, context: "#{context}[:public_version_number]")
        Hearth::Validator.validate!(input[:latest_public_version], ::String, context: "#{context}[:latest_public_version]")
        Hearth::Validator.validate!(input[:is_activated], ::TrueClass, ::FalseClass, context: "#{context}[:is_activated]")
        Hearth::Validator.validate!(input[:auto_update], ::TrueClass, ::FalseClass, context: "#{context}[:auto_update]")
      end
    end

    class DescribeTypeRegistrationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTypeRegistrationInput, context: context)
        Hearth::Validator.validate!(input[:registration_token], ::String, context: "#{context}[:registration_token]")
      end
    end

    class DescribeTypeRegistrationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTypeRegistrationOutput, context: context)
        Hearth::Validator.validate!(input[:progress_status], ::String, context: "#{context}[:progress_status]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:type_arn], ::String, context: "#{context}[:type_arn]")
        Hearth::Validator.validate!(input[:type_version_arn], ::String, context: "#{context}[:type_version_arn]")
      end
    end

    class DetectStackDriftInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectStackDriftInput, context: context)
        Hearth::Validator.validate!(input[:stack_name], ::String, context: "#{context}[:stack_name]")
        LogicalResourceIds.validate!(input[:logical_resource_ids], context: "#{context}[:logical_resource_ids]") unless input[:logical_resource_ids].nil?
      end
    end

    class DetectStackDriftOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectStackDriftOutput, context: context)
        Hearth::Validator.validate!(input[:stack_drift_detection_id], ::String, context: "#{context}[:stack_drift_detection_id]")
      end
    end

    class DetectStackResourceDriftInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectStackResourceDriftInput, context: context)
        Hearth::Validator.validate!(input[:stack_name], ::String, context: "#{context}[:stack_name]")
        Hearth::Validator.validate!(input[:logical_resource_id], ::String, context: "#{context}[:logical_resource_id]")
      end
    end

    class DetectStackResourceDriftOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectStackResourceDriftOutput, context: context)
        StackResourceDrift.validate!(input[:stack_resource_drift], context: "#{context}[:stack_resource_drift]") unless input[:stack_resource_drift].nil?
      end
    end

    class DetectStackSetDriftInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectStackSetDriftInput, context: context)
        Hearth::Validator.validate!(input[:stack_set_name], ::String, context: "#{context}[:stack_set_name]")
        StackSetOperationPreferences.validate!(input[:operation_preferences], context: "#{context}[:operation_preferences]") unless input[:operation_preferences].nil?
        Hearth::Validator.validate!(input[:operation_id], ::String, context: "#{context}[:operation_id]")
        Hearth::Validator.validate!(input[:call_as], ::String, context: "#{context}[:call_as]")
      end
    end

    class DetectStackSetDriftOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectStackSetDriftOutput, context: context)
        Hearth::Validator.validate!(input[:operation_id], ::String, context: "#{context}[:operation_id]")
      end
    end

    class EstimateTemplateCostInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EstimateTemplateCostInput, context: context)
        Hearth::Validator.validate!(input[:template_body], ::String, context: "#{context}[:template_body]")
        Hearth::Validator.validate!(input[:template_url], ::String, context: "#{context}[:template_url]")
        Parameters.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
      end
    end

    class EstimateTemplateCostOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EstimateTemplateCostOutput, context: context)
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
      end
    end

    class ExecuteChangeSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecuteChangeSetInput, context: context)
        Hearth::Validator.validate!(input[:change_set_name], ::String, context: "#{context}[:change_set_name]")
        Hearth::Validator.validate!(input[:stack_name], ::String, context: "#{context}[:stack_name]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:disable_rollback], ::TrueClass, ::FalseClass, context: "#{context}[:disable_rollback]")
      end
    end

    class ExecuteChangeSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecuteChangeSetOutput, context: context)
      end
    end

    class Export
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Export, context: context)
        Hearth::Validator.validate!(input[:exporting_stack_id], ::String, context: "#{context}[:exporting_stack_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class Exports
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Export.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetStackPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetStackPolicyInput, context: context)
        Hearth::Validator.validate!(input[:stack_name], ::String, context: "#{context}[:stack_name]")
      end
    end

    class GetStackPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetStackPolicyOutput, context: context)
        Hearth::Validator.validate!(input[:stack_policy_body], ::String, context: "#{context}[:stack_policy_body]")
      end
    end

    class GetTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTemplateInput, context: context)
        Hearth::Validator.validate!(input[:stack_name], ::String, context: "#{context}[:stack_name]")
        Hearth::Validator.validate!(input[:change_set_name], ::String, context: "#{context}[:change_set_name]")
        Hearth::Validator.validate!(input[:template_stage], ::String, context: "#{context}[:template_stage]")
      end
    end

    class GetTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTemplateOutput, context: context)
        Hearth::Validator.validate!(input[:template_body], ::String, context: "#{context}[:template_body]")
        StageList.validate!(input[:stages_available], context: "#{context}[:stages_available]") unless input[:stages_available].nil?
      end
    end

    class GetTemplateSummaryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTemplateSummaryInput, context: context)
        Hearth::Validator.validate!(input[:template_body], ::String, context: "#{context}[:template_body]")
        Hearth::Validator.validate!(input[:template_url], ::String, context: "#{context}[:template_url]")
        Hearth::Validator.validate!(input[:stack_name], ::String, context: "#{context}[:stack_name]")
        Hearth::Validator.validate!(input[:stack_set_name], ::String, context: "#{context}[:stack_set_name]")
        Hearth::Validator.validate!(input[:call_as], ::String, context: "#{context}[:call_as]")
      end
    end

    class GetTemplateSummaryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTemplateSummaryOutput, context: context)
        ParameterDeclarations.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Capabilities.validate!(input[:capabilities], context: "#{context}[:capabilities]") unless input[:capabilities].nil?
        Hearth::Validator.validate!(input[:capabilities_reason], ::String, context: "#{context}[:capabilities_reason]")
        ResourceTypes.validate!(input[:resource_types], context: "#{context}[:resource_types]") unless input[:resource_types].nil?
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:metadata], ::String, context: "#{context}[:metadata]")
        TransformsList.validate!(input[:declared_transforms], context: "#{context}[:declared_transforms]") unless input[:declared_transforms].nil?
        ResourceIdentifierSummaries.validate!(input[:resource_identifier_summaries], context: "#{context}[:resource_identifier_summaries]") unless input[:resource_identifier_summaries].nil?
      end
    end

    class ImportStacksToStackSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportStacksToStackSetInput, context: context)
        Hearth::Validator.validate!(input[:stack_set_name], ::String, context: "#{context}[:stack_set_name]")
        StackIdList.validate!(input[:stack_ids], context: "#{context}[:stack_ids]") unless input[:stack_ids].nil?
        Hearth::Validator.validate!(input[:stack_ids_url], ::String, context: "#{context}[:stack_ids_url]")
        OrganizationalUnitIdList.validate!(input[:organizational_unit_ids], context: "#{context}[:organizational_unit_ids]") unless input[:organizational_unit_ids].nil?
        StackSetOperationPreferences.validate!(input[:operation_preferences], context: "#{context}[:operation_preferences]") unless input[:operation_preferences].nil?
        Hearth::Validator.validate!(input[:operation_id], ::String, context: "#{context}[:operation_id]")
        Hearth::Validator.validate!(input[:call_as], ::String, context: "#{context}[:call_as]")
      end
    end

    class ImportStacksToStackSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportStacksToStackSetOutput, context: context)
        Hearth::Validator.validate!(input[:operation_id], ::String, context: "#{context}[:operation_id]")
      end
    end

    class Imports
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InsufficientCapabilitiesException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InsufficientCapabilitiesException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidChangeSetStatusException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidChangeSetStatusException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidOperationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidOperationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidStateTransitionException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidStateTransitionException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListChangeSetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListChangeSetsInput, context: context)
        Hearth::Validator.validate!(input[:stack_name], ::String, context: "#{context}[:stack_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListChangeSetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListChangeSetsOutput, context: context)
        ChangeSetSummaries.validate!(input[:summaries], context: "#{context}[:summaries]") unless input[:summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListExportsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListExportsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListExportsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListExportsOutput, context: context)
        Exports.validate!(input[:exports], context: "#{context}[:exports]") unless input[:exports].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListImportsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListImportsInput, context: context)
        Hearth::Validator.validate!(input[:export_name], ::String, context: "#{context}[:export_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListImportsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListImportsOutput, context: context)
        Imports.validate!(input[:imports], context: "#{context}[:imports]") unless input[:imports].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListStackInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStackInstancesInput, context: context)
        Hearth::Validator.validate!(input[:stack_set_name], ::String, context: "#{context}[:stack_set_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        StackInstanceFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:stack_instance_account], ::String, context: "#{context}[:stack_instance_account]")
        Hearth::Validator.validate!(input[:stack_instance_region], ::String, context: "#{context}[:stack_instance_region]")
        Hearth::Validator.validate!(input[:call_as], ::String, context: "#{context}[:call_as]")
      end
    end

    class ListStackInstancesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStackInstancesOutput, context: context)
        StackInstanceSummaries.validate!(input[:summaries], context: "#{context}[:summaries]") unless input[:summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListStackResourcesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStackResourcesInput, context: context)
        Hearth::Validator.validate!(input[:stack_name], ::String, context: "#{context}[:stack_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListStackResourcesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStackResourcesOutput, context: context)
        StackResourceSummaries.validate!(input[:stack_resource_summaries], context: "#{context}[:stack_resource_summaries]") unless input[:stack_resource_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListStackSetOperationResultsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStackSetOperationResultsInput, context: context)
        Hearth::Validator.validate!(input[:stack_set_name], ::String, context: "#{context}[:stack_set_name]")
        Hearth::Validator.validate!(input[:operation_id], ::String, context: "#{context}[:operation_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:call_as], ::String, context: "#{context}[:call_as]")
      end
    end

    class ListStackSetOperationResultsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStackSetOperationResultsOutput, context: context)
        StackSetOperationResultSummaries.validate!(input[:summaries], context: "#{context}[:summaries]") unless input[:summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListStackSetOperationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStackSetOperationsInput, context: context)
        Hearth::Validator.validate!(input[:stack_set_name], ::String, context: "#{context}[:stack_set_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:call_as], ::String, context: "#{context}[:call_as]")
      end
    end

    class ListStackSetOperationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStackSetOperationsOutput, context: context)
        StackSetOperationSummaries.validate!(input[:summaries], context: "#{context}[:summaries]") unless input[:summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListStackSetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStackSetsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:call_as], ::String, context: "#{context}[:call_as]")
      end
    end

    class ListStackSetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStackSetsOutput, context: context)
        StackSetSummaries.validate!(input[:summaries], context: "#{context}[:summaries]") unless input[:summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListStacksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStacksInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        StackStatusFilter.validate!(input[:stack_status_filter], context: "#{context}[:stack_status_filter]") unless input[:stack_status_filter].nil?
      end
    end

    class ListStacksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStacksOutput, context: context)
        StackSummaries.validate!(input[:stack_summaries], context: "#{context}[:stack_summaries]") unless input[:stack_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTypeRegistrationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTypeRegistrationsInput, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:type_name], ::String, context: "#{context}[:type_name]")
        Hearth::Validator.validate!(input[:type_arn], ::String, context: "#{context}[:type_arn]")
        Hearth::Validator.validate!(input[:registration_status_filter], ::String, context: "#{context}[:registration_status_filter]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTypeRegistrationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTypeRegistrationsOutput, context: context)
        RegistrationTokenList.validate!(input[:registration_token_list], context: "#{context}[:registration_token_list]") unless input[:registration_token_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTypeVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTypeVersionsInput, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:type_name], ::String, context: "#{context}[:type_name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:deprecated_status], ::String, context: "#{context}[:deprecated_status]")
        Hearth::Validator.validate!(input[:publisher_id], ::String, context: "#{context}[:publisher_id]")
      end
    end

    class ListTypeVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTypeVersionsOutput, context: context)
        TypeVersionSummaries.validate!(input[:type_version_summaries], context: "#{context}[:type_version_summaries]") unless input[:type_version_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTypesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTypesInput, context: context)
        Hearth::Validator.validate!(input[:visibility], ::String, context: "#{context}[:visibility]")
        Hearth::Validator.validate!(input[:provisioning_type], ::String, context: "#{context}[:provisioning_type]")
        Hearth::Validator.validate!(input[:deprecated_status], ::String, context: "#{context}[:deprecated_status]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        TypeFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTypesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTypesOutput, context: context)
        TypeSummaries.validate!(input[:type_summaries], context: "#{context}[:type_summaries]") unless input[:type_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class LoggingConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoggingConfig, context: context)
        Hearth::Validator.validate!(input[:log_role_arn], ::String, context: "#{context}[:log_role_arn]")
        Hearth::Validator.validate!(input[:log_group_name], ::String, context: "#{context}[:log_group_name]")
      end
    end

    class LogicalResourceIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ManagedExecution
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ManagedExecution, context: context)
        Hearth::Validator.validate!(input[:active], ::TrueClass, ::FalseClass, context: "#{context}[:active]")
      end
    end

    class ModuleInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModuleInfo, context: context)
        Hearth::Validator.validate!(input[:type_hierarchy], ::String, context: "#{context}[:type_hierarchy]")
        Hearth::Validator.validate!(input[:logical_id_hierarchy], ::String, context: "#{context}[:logical_id_hierarchy]")
      end
    end

    class NameAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NameAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NotificationARNs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class OperationIdAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OperationIdAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OperationInProgressException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OperationInProgressException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OperationNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OperationNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OperationStatusCheckFailedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OperationStatusCheckFailedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OrganizationalUnitIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Output
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Output, context: context)
        Hearth::Validator.validate!(input[:output_key], ::String, context: "#{context}[:output_key]")
        Hearth::Validator.validate!(input[:output_value], ::String, context: "#{context}[:output_value]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:export_name], ::String, context: "#{context}[:export_name]")
      end
    end

    class Outputs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Output.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Parameter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Parameter, context: context)
        Hearth::Validator.validate!(input[:parameter_key], ::String, context: "#{context}[:parameter_key]")
        Hearth::Validator.validate!(input[:parameter_value], ::String, context: "#{context}[:parameter_value]")
        Hearth::Validator.validate!(input[:use_previous_value], ::TrueClass, ::FalseClass, context: "#{context}[:use_previous_value]")
        Hearth::Validator.validate!(input[:resolved_value], ::String, context: "#{context}[:resolved_value]")
      end
    end

    class ParameterConstraints
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParameterConstraints, context: context)
        AllowedValues.validate!(input[:allowed_values], context: "#{context}[:allowed_values]") unless input[:allowed_values].nil?
      end
    end

    class ParameterDeclaration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParameterDeclaration, context: context)
        Hearth::Validator.validate!(input[:parameter_key], ::String, context: "#{context}[:parameter_key]")
        Hearth::Validator.validate!(input[:default_value], ::String, context: "#{context}[:default_value]")
        Hearth::Validator.validate!(input[:parameter_type], ::String, context: "#{context}[:parameter_type]")
        Hearth::Validator.validate!(input[:no_echo], ::TrueClass, ::FalseClass, context: "#{context}[:no_echo]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        ParameterConstraints.validate!(input[:parameter_constraints], context: "#{context}[:parameter_constraints]") unless input[:parameter_constraints].nil?
      end
    end

    class ParameterDeclarations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ParameterDeclaration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Parameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Parameter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PhysicalResourceIdContext
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PhysicalResourceIdContextKeyValuePair.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PhysicalResourceIdContextKeyValuePair
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PhysicalResourceIdContextKeyValuePair, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class PropertyDifference
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PropertyDifference, context: context)
        Hearth::Validator.validate!(input[:property_path], ::String, context: "#{context}[:property_path]")
        Hearth::Validator.validate!(input[:expected_value], ::String, context: "#{context}[:expected_value]")
        Hearth::Validator.validate!(input[:actual_value], ::String, context: "#{context}[:actual_value]")
        Hearth::Validator.validate!(input[:difference_type], ::String, context: "#{context}[:difference_type]")
      end
    end

    class PropertyDifferences
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PropertyDifference.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PublishTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PublishTypeInput, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:type_name], ::String, context: "#{context}[:type_name]")
        Hearth::Validator.validate!(input[:public_version_number], ::String, context: "#{context}[:public_version_number]")
      end
    end

    class PublishTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PublishTypeOutput, context: context)
        Hearth::Validator.validate!(input[:public_type_arn], ::String, context: "#{context}[:public_type_arn]")
      end
    end

    class RecordHandlerProgressInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecordHandlerProgressInput, context: context)
        Hearth::Validator.validate!(input[:bearer_token], ::String, context: "#{context}[:bearer_token]")
        Hearth::Validator.validate!(input[:operation_status], ::String, context: "#{context}[:operation_status]")
        Hearth::Validator.validate!(input[:current_operation_status], ::String, context: "#{context}[:current_operation_status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:resource_model], ::String, context: "#{context}[:resource_model]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class RecordHandlerProgressOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecordHandlerProgressOutput, context: context)
      end
    end

    class RegionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RegisterPublisherInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterPublisherInput, context: context)
        Hearth::Validator.validate!(input[:accept_terms_and_conditions], ::TrueClass, ::FalseClass, context: "#{context}[:accept_terms_and_conditions]")
        Hearth::Validator.validate!(input[:connection_arn], ::String, context: "#{context}[:connection_arn]")
      end
    end

    class RegisterPublisherOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterPublisherOutput, context: context)
        Hearth::Validator.validate!(input[:publisher_id], ::String, context: "#{context}[:publisher_id]")
      end
    end

    class RegisterTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterTypeInput, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:type_name], ::String, context: "#{context}[:type_name]")
        Hearth::Validator.validate!(input[:schema_handler_package], ::String, context: "#{context}[:schema_handler_package]")
        LoggingConfig.validate!(input[:logging_config], context: "#{context}[:logging_config]") unless input[:logging_config].nil?
        Hearth::Validator.validate!(input[:execution_role_arn], ::String, context: "#{context}[:execution_role_arn]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class RegisterTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterTypeOutput, context: context)
        Hearth::Validator.validate!(input[:registration_token], ::String, context: "#{context}[:registration_token]")
      end
    end

    class RegistrationTokenList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RequiredActivatedType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RequiredActivatedType, context: context)
        Hearth::Validator.validate!(input[:type_name_alias], ::String, context: "#{context}[:type_name_alias]")
        Hearth::Validator.validate!(input[:original_type_name], ::String, context: "#{context}[:original_type_name]")
        Hearth::Validator.validate!(input[:publisher_id], ::String, context: "#{context}[:publisher_id]")
        SupportedMajorVersions.validate!(input[:supported_major_versions], context: "#{context}[:supported_major_versions]") unless input[:supported_major_versions].nil?
      end
    end

    class RequiredActivatedTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RequiredActivatedType.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceChange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceChange, context: context)
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Hearth::Validator.validate!(input[:logical_resource_id], ::String, context: "#{context}[:logical_resource_id]")
        Hearth::Validator.validate!(input[:physical_resource_id], ::String, context: "#{context}[:physical_resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:replacement], ::String, context: "#{context}[:replacement]")
        Scope.validate!(input[:scope], context: "#{context}[:scope]") unless input[:scope].nil?
        ResourceChangeDetails.validate!(input[:details], context: "#{context}[:details]") unless input[:details].nil?
        Hearth::Validator.validate!(input[:change_set_id], ::String, context: "#{context}[:change_set_id]")
        ModuleInfo.validate!(input[:module_info], context: "#{context}[:module_info]") unless input[:module_info].nil?
      end
    end

    class ResourceChangeDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceChangeDetail, context: context)
        ResourceTargetDefinition.validate!(input[:target], context: "#{context}[:target]") unless input[:target].nil?
        Hearth::Validator.validate!(input[:evaluation], ::String, context: "#{context}[:evaluation]")
        Hearth::Validator.validate!(input[:change_source], ::String, context: "#{context}[:change_source]")
        Hearth::Validator.validate!(input[:causing_entity], ::String, context: "#{context}[:causing_entity]")
      end
    end

    class ResourceChangeDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ResourceChangeDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceIdentifierProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class ResourceIdentifierSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ResourceIdentifierSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceIdentifierSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceIdentifierSummary, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        LogicalResourceIds.validate!(input[:logical_resource_ids], context: "#{context}[:logical_resource_ids]") unless input[:logical_resource_ids].nil?
        ResourceIdentifiers.validate!(input[:resource_identifiers], context: "#{context}[:resource_identifiers]") unless input[:resource_identifiers].nil?
      end
    end

    class ResourceIdentifiers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ResourceTargetDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceTargetDefinition, context: context)
        Hearth::Validator.validate!(input[:attribute], ::String, context: "#{context}[:attribute]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:requires_recreation], ::String, context: "#{context}[:requires_recreation]")
      end
    end

    class ResourceToImport
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceToImport, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:logical_resource_id], ::String, context: "#{context}[:logical_resource_id]")
        ResourceIdentifierProperties.validate!(input[:resource_identifier], context: "#{context}[:resource_identifier]") unless input[:resource_identifier].nil?
      end
    end

    class ResourceTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ResourcesToImport
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ResourceToImport.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourcesToSkip
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RetainResources
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RollbackConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RollbackConfiguration, context: context)
        RollbackTriggers.validate!(input[:rollback_triggers], context: "#{context}[:rollback_triggers]") unless input[:rollback_triggers].nil?
        Hearth::Validator.validate!(input[:monitoring_time_in_minutes], ::Integer, context: "#{context}[:monitoring_time_in_minutes]")
      end
    end

    class RollbackStackInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RollbackStackInput, context: context)
        Hearth::Validator.validate!(input[:stack_name], ::String, context: "#{context}[:stack_name]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class RollbackStackOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RollbackStackOutput, context: context)
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
      end
    end

    class RollbackTrigger
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RollbackTrigger, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class RollbackTriggers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RollbackTrigger.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Scope
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SetStackPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetStackPolicyInput, context: context)
        Hearth::Validator.validate!(input[:stack_name], ::String, context: "#{context}[:stack_name]")
        Hearth::Validator.validate!(input[:stack_policy_body], ::String, context: "#{context}[:stack_policy_body]")
        Hearth::Validator.validate!(input[:stack_policy_url], ::String, context: "#{context}[:stack_policy_url]")
      end
    end

    class SetStackPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetStackPolicyOutput, context: context)
      end
    end

    class SetTypeConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetTypeConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:type_arn], ::String, context: "#{context}[:type_arn]")
        Hearth::Validator.validate!(input[:configuration], ::String, context: "#{context}[:configuration]")
        Hearth::Validator.validate!(input[:configuration_alias], ::String, context: "#{context}[:configuration_alias]")
        Hearth::Validator.validate!(input[:type_name], ::String, context: "#{context}[:type_name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class SetTypeConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetTypeConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:configuration_arn], ::String, context: "#{context}[:configuration_arn]")
      end
    end

    class SetTypeDefaultVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetTypeDefaultVersionInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:type_name], ::String, context: "#{context}[:type_name]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
      end
    end

    class SetTypeDefaultVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetTypeDefaultVersionOutput, context: context)
      end
    end

    class SignalResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SignalResourceInput, context: context)
        Hearth::Validator.validate!(input[:stack_name], ::String, context: "#{context}[:stack_name]")
        Hearth::Validator.validate!(input[:logical_resource_id], ::String, context: "#{context}[:logical_resource_id]")
        Hearth::Validator.validate!(input[:unique_id], ::String, context: "#{context}[:unique_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class SignalResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SignalResourceOutput, context: context)
      end
    end

    class Stack
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Stack, context: context)
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
        Hearth::Validator.validate!(input[:stack_name], ::String, context: "#{context}[:stack_name]")
        Hearth::Validator.validate!(input[:change_set_id], ::String, context: "#{context}[:change_set_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Parameters.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:deletion_time], ::Time, context: "#{context}[:deletion_time]")
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
        RollbackConfiguration.validate!(input[:rollback_configuration], context: "#{context}[:rollback_configuration]") unless input[:rollback_configuration].nil?
        Hearth::Validator.validate!(input[:stack_status], ::String, context: "#{context}[:stack_status]")
        Hearth::Validator.validate!(input[:stack_status_reason], ::String, context: "#{context}[:stack_status_reason]")
        Hearth::Validator.validate!(input[:disable_rollback], ::TrueClass, ::FalseClass, context: "#{context}[:disable_rollback]")
        NotificationARNs.validate!(input[:notification_ar_ns], context: "#{context}[:notification_ar_ns]") unless input[:notification_ar_ns].nil?
        Hearth::Validator.validate!(input[:timeout_in_minutes], ::Integer, context: "#{context}[:timeout_in_minutes]")
        Capabilities.validate!(input[:capabilities], context: "#{context}[:capabilities]") unless input[:capabilities].nil?
        Outputs.validate!(input[:outputs], context: "#{context}[:outputs]") unless input[:outputs].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:enable_termination_protection], ::TrueClass, ::FalseClass, context: "#{context}[:enable_termination_protection]")
        Hearth::Validator.validate!(input[:parent_id], ::String, context: "#{context}[:parent_id]")
        Hearth::Validator.validate!(input[:root_id], ::String, context: "#{context}[:root_id]")
        StackDriftInformation.validate!(input[:drift_information], context: "#{context}[:drift_information]") unless input[:drift_information].nil?
      end
    end

    class StackDriftInformation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StackDriftInformation, context: context)
        Hearth::Validator.validate!(input[:stack_drift_status], ::String, context: "#{context}[:stack_drift_status]")
        Hearth::Validator.validate!(input[:last_check_timestamp], ::Time, context: "#{context}[:last_check_timestamp]")
      end
    end

    class StackDriftInformationSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StackDriftInformationSummary, context: context)
        Hearth::Validator.validate!(input[:stack_drift_status], ::String, context: "#{context}[:stack_drift_status]")
        Hearth::Validator.validate!(input[:last_check_timestamp], ::Time, context: "#{context}[:last_check_timestamp]")
      end
    end

    class StackEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StackEvent, context: context)
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
        Hearth::Validator.validate!(input[:event_id], ::String, context: "#{context}[:event_id]")
        Hearth::Validator.validate!(input[:stack_name], ::String, context: "#{context}[:stack_name]")
        Hearth::Validator.validate!(input[:logical_resource_id], ::String, context: "#{context}[:logical_resource_id]")
        Hearth::Validator.validate!(input[:physical_resource_id], ::String, context: "#{context}[:physical_resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:timestamp], ::Time, context: "#{context}[:timestamp]")
        Hearth::Validator.validate!(input[:resource_status], ::String, context: "#{context}[:resource_status]")
        Hearth::Validator.validate!(input[:resource_status_reason], ::String, context: "#{context}[:resource_status_reason]")
        Hearth::Validator.validate!(input[:resource_properties], ::String, context: "#{context}[:resource_properties]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:hook_type], ::String, context: "#{context}[:hook_type]")
        Hearth::Validator.validate!(input[:hook_status], ::String, context: "#{context}[:hook_status]")
        Hearth::Validator.validate!(input[:hook_status_reason], ::String, context: "#{context}[:hook_status_reason]")
        Hearth::Validator.validate!(input[:hook_invocation_point], ::String, context: "#{context}[:hook_invocation_point]")
        Hearth::Validator.validate!(input[:hook_failure_mode], ::String, context: "#{context}[:hook_failure_mode]")
      end
    end

    class StackEvents
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          StackEvent.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StackIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class StackInstance
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StackInstance, context: context)
        Hearth::Validator.validate!(input[:stack_set_id], ::String, context: "#{context}[:stack_set_id]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:account], ::String, context: "#{context}[:account]")
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
        Parameters.validate!(input[:parameter_overrides], context: "#{context}[:parameter_overrides]") unless input[:parameter_overrides].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        StackInstanceComprehensiveStatus.validate!(input[:stack_instance_status], context: "#{context}[:stack_instance_status]") unless input[:stack_instance_status].nil?
        Hearth::Validator.validate!(input[:status_reason], ::String, context: "#{context}[:status_reason]")
        Hearth::Validator.validate!(input[:organizational_unit_id], ::String, context: "#{context}[:organizational_unit_id]")
        Hearth::Validator.validate!(input[:drift_status], ::String, context: "#{context}[:drift_status]")
        Hearth::Validator.validate!(input[:last_drift_check_timestamp], ::Time, context: "#{context}[:last_drift_check_timestamp]")
      end
    end

    class StackInstanceComprehensiveStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StackInstanceComprehensiveStatus, context: context)
        Hearth::Validator.validate!(input[:detailed_status], ::String, context: "#{context}[:detailed_status]")
      end
    end

    class StackInstanceFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StackInstanceFilter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:values], ::String, context: "#{context}[:values]")
      end
    end

    class StackInstanceFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          StackInstanceFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StackInstanceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StackInstanceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class StackInstanceSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          StackInstanceSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StackInstanceSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StackInstanceSummary, context: context)
        Hearth::Validator.validate!(input[:stack_set_id], ::String, context: "#{context}[:stack_set_id]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:account], ::String, context: "#{context}[:account]")
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_reason], ::String, context: "#{context}[:status_reason]")
        StackInstanceComprehensiveStatus.validate!(input[:stack_instance_status], context: "#{context}[:stack_instance_status]") unless input[:stack_instance_status].nil?
        Hearth::Validator.validate!(input[:organizational_unit_id], ::String, context: "#{context}[:organizational_unit_id]")
        Hearth::Validator.validate!(input[:drift_status], ::String, context: "#{context}[:drift_status]")
        Hearth::Validator.validate!(input[:last_drift_check_timestamp], ::Time, context: "#{context}[:last_drift_check_timestamp]")
      end
    end

    class StackNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StackNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class StackResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StackResource, context: context)
        Hearth::Validator.validate!(input[:stack_name], ::String, context: "#{context}[:stack_name]")
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
        Hearth::Validator.validate!(input[:logical_resource_id], ::String, context: "#{context}[:logical_resource_id]")
        Hearth::Validator.validate!(input[:physical_resource_id], ::String, context: "#{context}[:physical_resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:timestamp], ::Time, context: "#{context}[:timestamp]")
        Hearth::Validator.validate!(input[:resource_status], ::String, context: "#{context}[:resource_status]")
        Hearth::Validator.validate!(input[:resource_status_reason], ::String, context: "#{context}[:resource_status_reason]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        StackResourceDriftInformation.validate!(input[:drift_information], context: "#{context}[:drift_information]") unless input[:drift_information].nil?
        ModuleInfo.validate!(input[:module_info], context: "#{context}[:module_info]") unless input[:module_info].nil?
      end
    end

    class StackResourceDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StackResourceDetail, context: context)
        Hearth::Validator.validate!(input[:stack_name], ::String, context: "#{context}[:stack_name]")
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
        Hearth::Validator.validate!(input[:logical_resource_id], ::String, context: "#{context}[:logical_resource_id]")
        Hearth::Validator.validate!(input[:physical_resource_id], ::String, context: "#{context}[:physical_resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:last_updated_timestamp], ::Time, context: "#{context}[:last_updated_timestamp]")
        Hearth::Validator.validate!(input[:resource_status], ::String, context: "#{context}[:resource_status]")
        Hearth::Validator.validate!(input[:resource_status_reason], ::String, context: "#{context}[:resource_status_reason]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:metadata], ::String, context: "#{context}[:metadata]")
        StackResourceDriftInformation.validate!(input[:drift_information], context: "#{context}[:drift_information]") unless input[:drift_information].nil?
        ModuleInfo.validate!(input[:module_info], context: "#{context}[:module_info]") unless input[:module_info].nil?
      end
    end

    class StackResourceDrift
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StackResourceDrift, context: context)
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
        Hearth::Validator.validate!(input[:logical_resource_id], ::String, context: "#{context}[:logical_resource_id]")
        Hearth::Validator.validate!(input[:physical_resource_id], ::String, context: "#{context}[:physical_resource_id]")
        PhysicalResourceIdContext.validate!(input[:physical_resource_id_context], context: "#{context}[:physical_resource_id_context]") unless input[:physical_resource_id_context].nil?
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:expected_properties], ::String, context: "#{context}[:expected_properties]")
        Hearth::Validator.validate!(input[:actual_properties], ::String, context: "#{context}[:actual_properties]")
        PropertyDifferences.validate!(input[:property_differences], context: "#{context}[:property_differences]") unless input[:property_differences].nil?
        Hearth::Validator.validate!(input[:stack_resource_drift_status], ::String, context: "#{context}[:stack_resource_drift_status]")
        Hearth::Validator.validate!(input[:timestamp], ::Time, context: "#{context}[:timestamp]")
        ModuleInfo.validate!(input[:module_info], context: "#{context}[:module_info]") unless input[:module_info].nil?
      end
    end

    class StackResourceDriftInformation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StackResourceDriftInformation, context: context)
        Hearth::Validator.validate!(input[:stack_resource_drift_status], ::String, context: "#{context}[:stack_resource_drift_status]")
        Hearth::Validator.validate!(input[:last_check_timestamp], ::Time, context: "#{context}[:last_check_timestamp]")
      end
    end

    class StackResourceDriftInformationSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StackResourceDriftInformationSummary, context: context)
        Hearth::Validator.validate!(input[:stack_resource_drift_status], ::String, context: "#{context}[:stack_resource_drift_status]")
        Hearth::Validator.validate!(input[:last_check_timestamp], ::Time, context: "#{context}[:last_check_timestamp]")
      end
    end

    class StackResourceDriftStatusFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class StackResourceDrifts
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          StackResourceDrift.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StackResourceSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          StackResourceSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StackResourceSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StackResourceSummary, context: context)
        Hearth::Validator.validate!(input[:logical_resource_id], ::String, context: "#{context}[:logical_resource_id]")
        Hearth::Validator.validate!(input[:physical_resource_id], ::String, context: "#{context}[:physical_resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:last_updated_timestamp], ::Time, context: "#{context}[:last_updated_timestamp]")
        Hearth::Validator.validate!(input[:resource_status], ::String, context: "#{context}[:resource_status]")
        Hearth::Validator.validate!(input[:resource_status_reason], ::String, context: "#{context}[:resource_status_reason]")
        StackResourceDriftInformationSummary.validate!(input[:drift_information], context: "#{context}[:drift_information]") unless input[:drift_information].nil?
        ModuleInfo.validate!(input[:module_info], context: "#{context}[:module_info]") unless input[:module_info].nil?
      end
    end

    class StackResources
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          StackResource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StackSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StackSet, context: context)
        Hearth::Validator.validate!(input[:stack_set_name], ::String, context: "#{context}[:stack_set_name]")
        Hearth::Validator.validate!(input[:stack_set_id], ::String, context: "#{context}[:stack_set_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:template_body], ::String, context: "#{context}[:template_body]")
        Parameters.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        Capabilities.validate!(input[:capabilities], context: "#{context}[:capabilities]") unless input[:capabilities].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:stack_set_arn], ::String, context: "#{context}[:stack_set_arn]")
        Hearth::Validator.validate!(input[:administration_role_arn], ::String, context: "#{context}[:administration_role_arn]")
        Hearth::Validator.validate!(input[:execution_role_name], ::String, context: "#{context}[:execution_role_name]")
        StackSetDriftDetectionDetails.validate!(input[:stack_set_drift_detection_details], context: "#{context}[:stack_set_drift_detection_details]") unless input[:stack_set_drift_detection_details].nil?
        AutoDeployment.validate!(input[:auto_deployment], context: "#{context}[:auto_deployment]") unless input[:auto_deployment].nil?
        Hearth::Validator.validate!(input[:permission_model], ::String, context: "#{context}[:permission_model]")
        OrganizationalUnitIdList.validate!(input[:organizational_unit_ids], context: "#{context}[:organizational_unit_ids]") unless input[:organizational_unit_ids].nil?
        ManagedExecution.validate!(input[:managed_execution], context: "#{context}[:managed_execution]") unless input[:managed_execution].nil?
      end
    end

    class StackSetDriftDetectionDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StackSetDriftDetectionDetails, context: context)
        Hearth::Validator.validate!(input[:drift_status], ::String, context: "#{context}[:drift_status]")
        Hearth::Validator.validate!(input[:drift_detection_status], ::String, context: "#{context}[:drift_detection_status]")
        Hearth::Validator.validate!(input[:last_drift_check_timestamp], ::Time, context: "#{context}[:last_drift_check_timestamp]")
        Hearth::Validator.validate!(input[:total_stack_instances_count], ::Integer, context: "#{context}[:total_stack_instances_count]")
        Hearth::Validator.validate!(input[:drifted_stack_instances_count], ::Integer, context: "#{context}[:drifted_stack_instances_count]")
        Hearth::Validator.validate!(input[:in_sync_stack_instances_count], ::Integer, context: "#{context}[:in_sync_stack_instances_count]")
        Hearth::Validator.validate!(input[:in_progress_stack_instances_count], ::Integer, context: "#{context}[:in_progress_stack_instances_count]")
        Hearth::Validator.validate!(input[:failed_stack_instances_count], ::Integer, context: "#{context}[:failed_stack_instances_count]")
      end
    end

    class StackSetNotEmptyException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StackSetNotEmptyException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class StackSetNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StackSetNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class StackSetOperation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StackSetOperation, context: context)
        Hearth::Validator.validate!(input[:operation_id], ::String, context: "#{context}[:operation_id]")
        Hearth::Validator.validate!(input[:stack_set_id], ::String, context: "#{context}[:stack_set_id]")
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        StackSetOperationPreferences.validate!(input[:operation_preferences], context: "#{context}[:operation_preferences]") unless input[:operation_preferences].nil?
        Hearth::Validator.validate!(input[:retain_stacks], ::TrueClass, ::FalseClass, context: "#{context}[:retain_stacks]")
        Hearth::Validator.validate!(input[:administration_role_arn], ::String, context: "#{context}[:administration_role_arn]")
        Hearth::Validator.validate!(input[:execution_role_name], ::String, context: "#{context}[:execution_role_name]")
        Hearth::Validator.validate!(input[:creation_timestamp], ::Time, context: "#{context}[:creation_timestamp]")
        Hearth::Validator.validate!(input[:end_timestamp], ::Time, context: "#{context}[:end_timestamp]")
        DeploymentTargets.validate!(input[:deployment_targets], context: "#{context}[:deployment_targets]") unless input[:deployment_targets].nil?
        StackSetDriftDetectionDetails.validate!(input[:stack_set_drift_detection_details], context: "#{context}[:stack_set_drift_detection_details]") unless input[:stack_set_drift_detection_details].nil?
        Hearth::Validator.validate!(input[:status_reason], ::String, context: "#{context}[:status_reason]")
      end
    end

    class StackSetOperationPreferences
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StackSetOperationPreferences, context: context)
        Hearth::Validator.validate!(input[:region_concurrency_type], ::String, context: "#{context}[:region_concurrency_type]")
        RegionList.validate!(input[:region_order], context: "#{context}[:region_order]") unless input[:region_order].nil?
        Hearth::Validator.validate!(input[:failure_tolerance_count], ::Integer, context: "#{context}[:failure_tolerance_count]")
        Hearth::Validator.validate!(input[:failure_tolerance_percentage], ::Integer, context: "#{context}[:failure_tolerance_percentage]")
        Hearth::Validator.validate!(input[:max_concurrent_count], ::Integer, context: "#{context}[:max_concurrent_count]")
        Hearth::Validator.validate!(input[:max_concurrent_percentage], ::Integer, context: "#{context}[:max_concurrent_percentage]")
      end
    end

    class StackSetOperationResultSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          StackSetOperationResultSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StackSetOperationResultSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StackSetOperationResultSummary, context: context)
        Hearth::Validator.validate!(input[:account], ::String, context: "#{context}[:account]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_reason], ::String, context: "#{context}[:status_reason]")
        AccountGateResult.validate!(input[:account_gate_result], context: "#{context}[:account_gate_result]") unless input[:account_gate_result].nil?
        Hearth::Validator.validate!(input[:organizational_unit_id], ::String, context: "#{context}[:organizational_unit_id]")
      end
    end

    class StackSetOperationSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          StackSetOperationSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StackSetOperationSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StackSetOperationSummary, context: context)
        Hearth::Validator.validate!(input[:operation_id], ::String, context: "#{context}[:operation_id]")
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_timestamp], ::Time, context: "#{context}[:creation_timestamp]")
        Hearth::Validator.validate!(input[:end_timestamp], ::Time, context: "#{context}[:end_timestamp]")
        Hearth::Validator.validate!(input[:status_reason], ::String, context: "#{context}[:status_reason]")
      end
    end

    class StackSetSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          StackSetSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StackSetSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StackSetSummary, context: context)
        Hearth::Validator.validate!(input[:stack_set_name], ::String, context: "#{context}[:stack_set_name]")
        Hearth::Validator.validate!(input[:stack_set_id], ::String, context: "#{context}[:stack_set_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        AutoDeployment.validate!(input[:auto_deployment], context: "#{context}[:auto_deployment]") unless input[:auto_deployment].nil?
        Hearth::Validator.validate!(input[:permission_model], ::String, context: "#{context}[:permission_model]")
        Hearth::Validator.validate!(input[:drift_status], ::String, context: "#{context}[:drift_status]")
        Hearth::Validator.validate!(input[:last_drift_check_timestamp], ::Time, context: "#{context}[:last_drift_check_timestamp]")
        ManagedExecution.validate!(input[:managed_execution], context: "#{context}[:managed_execution]") unless input[:managed_execution].nil?
      end
    end

    class StackStatusFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class StackSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          StackSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StackSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StackSummary, context: context)
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
        Hearth::Validator.validate!(input[:stack_name], ::String, context: "#{context}[:stack_name]")
        Hearth::Validator.validate!(input[:template_description], ::String, context: "#{context}[:template_description]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate!(input[:deletion_time], ::Time, context: "#{context}[:deletion_time]")
        Hearth::Validator.validate!(input[:stack_status], ::String, context: "#{context}[:stack_status]")
        Hearth::Validator.validate!(input[:stack_status_reason], ::String, context: "#{context}[:stack_status_reason]")
        Hearth::Validator.validate!(input[:parent_id], ::String, context: "#{context}[:parent_id]")
        Hearth::Validator.validate!(input[:root_id], ::String, context: "#{context}[:root_id]")
        StackDriftInformationSummary.validate!(input[:drift_information], context: "#{context}[:drift_information]") unless input[:drift_information].nil?
      end
    end

    class Stacks
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Stack.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StageList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class StaleRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StaleRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class StopStackSetOperationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopStackSetOperationInput, context: context)
        Hearth::Validator.validate!(input[:stack_set_name], ::String, context: "#{context}[:stack_set_name]")
        Hearth::Validator.validate!(input[:operation_id], ::String, context: "#{context}[:operation_id]")
        Hearth::Validator.validate!(input[:call_as], ::String, context: "#{context}[:call_as]")
      end
    end

    class StopStackSetOperationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopStackSetOperationOutput, context: context)
      end
    end

    class SupportedMajorVersions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Integer, context: "#{context}[#{index}]")
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

    class Tags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TemplateParameter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TemplateParameter, context: context)
        Hearth::Validator.validate!(input[:parameter_key], ::String, context: "#{context}[:parameter_key]")
        Hearth::Validator.validate!(input[:default_value], ::String, context: "#{context}[:default_value]")
        Hearth::Validator.validate!(input[:no_echo], ::TrueClass, ::FalseClass, context: "#{context}[:no_echo]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class TemplateParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TemplateParameter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TestTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestTypeInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:type_name], ::String, context: "#{context}[:type_name]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate!(input[:log_delivery_bucket], ::String, context: "#{context}[:log_delivery_bucket]")
      end
    end

    class TestTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestTypeOutput, context: context)
        Hearth::Validator.validate!(input[:type_version_arn], ::String, context: "#{context}[:type_version_arn]")
      end
    end

    class TokenAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TokenAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TransformsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TypeConfigurationDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TypeConfigurationDetails, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:alias], ::String, context: "#{context}[:alias]")
        Hearth::Validator.validate!(input[:configuration], ::String, context: "#{context}[:configuration]")
        Hearth::Validator.validate!(input[:last_updated], ::Time, context: "#{context}[:last_updated]")
        Hearth::Validator.validate!(input[:type_arn], ::String, context: "#{context}[:type_arn]")
        Hearth::Validator.validate!(input[:type_name], ::String, context: "#{context}[:type_name]")
        Hearth::Validator.validate!(input[:is_default_configuration], ::TrueClass, ::FalseClass, context: "#{context}[:is_default_configuration]")
      end
    end

    class TypeConfigurationDetailsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TypeConfigurationDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TypeConfigurationIdentifier
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TypeConfigurationIdentifier, context: context)
        Hearth::Validator.validate!(input[:type_arn], ::String, context: "#{context}[:type_arn]")
        Hearth::Validator.validate!(input[:type_configuration_alias], ::String, context: "#{context}[:type_configuration_alias]")
        Hearth::Validator.validate!(input[:type_configuration_arn], ::String, context: "#{context}[:type_configuration_arn]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:type_name], ::String, context: "#{context}[:type_name]")
      end
    end

    class TypeConfigurationIdentifiers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TypeConfigurationIdentifier.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TypeConfigurationNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TypeConfigurationNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TypeFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TypeFilters, context: context)
        Hearth::Validator.validate!(input[:category], ::String, context: "#{context}[:category]")
        Hearth::Validator.validate!(input[:publisher_id], ::String, context: "#{context}[:publisher_id]")
        Hearth::Validator.validate!(input[:type_name_prefix], ::String, context: "#{context}[:type_name_prefix]")
      end
    end

    class TypeNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TypeNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TypeSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TypeSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TypeSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TypeSummary, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:type_name], ::String, context: "#{context}[:type_name]")
        Hearth::Validator.validate!(input[:default_version_id], ::String, context: "#{context}[:default_version_id]")
        Hearth::Validator.validate!(input[:type_arn], ::String, context: "#{context}[:type_arn]")
        Hearth::Validator.validate!(input[:last_updated], ::Time, context: "#{context}[:last_updated]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:publisher_id], ::String, context: "#{context}[:publisher_id]")
        Hearth::Validator.validate!(input[:original_type_name], ::String, context: "#{context}[:original_type_name]")
        Hearth::Validator.validate!(input[:public_version_number], ::String, context: "#{context}[:public_version_number]")
        Hearth::Validator.validate!(input[:latest_public_version], ::String, context: "#{context}[:latest_public_version]")
        Hearth::Validator.validate!(input[:publisher_identity], ::String, context: "#{context}[:publisher_identity]")
        Hearth::Validator.validate!(input[:publisher_name], ::String, context: "#{context}[:publisher_name]")
        Hearth::Validator.validate!(input[:is_activated], ::TrueClass, ::FalseClass, context: "#{context}[:is_activated]")
      end
    end

    class TypeVersionSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TypeVersionSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TypeVersionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TypeVersionSummary, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:type_name], ::String, context: "#{context}[:type_name]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate!(input[:is_default_version], ::TrueClass, ::FalseClass, context: "#{context}[:is_default_version]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:time_created], ::Time, context: "#{context}[:time_created]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:public_version_number], ::String, context: "#{context}[:public_version_number]")
      end
    end

    class UnprocessedTypeConfigurations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TypeConfigurationIdentifier.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UpdateStackInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateStackInput, context: context)
        Hearth::Validator.validate!(input[:stack_name], ::String, context: "#{context}[:stack_name]")
        Hearth::Validator.validate!(input[:template_body], ::String, context: "#{context}[:template_body]")
        Hearth::Validator.validate!(input[:template_url], ::String, context: "#{context}[:template_url]")
        Hearth::Validator.validate!(input[:use_previous_template], ::TrueClass, ::FalseClass, context: "#{context}[:use_previous_template]")
        Hearth::Validator.validate!(input[:stack_policy_during_update_body], ::String, context: "#{context}[:stack_policy_during_update_body]")
        Hearth::Validator.validate!(input[:stack_policy_during_update_url], ::String, context: "#{context}[:stack_policy_during_update_url]")
        Parameters.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        Capabilities.validate!(input[:capabilities], context: "#{context}[:capabilities]") unless input[:capabilities].nil?
        ResourceTypes.validate!(input[:resource_types], context: "#{context}[:resource_types]") unless input[:resource_types].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        RollbackConfiguration.validate!(input[:rollback_configuration], context: "#{context}[:rollback_configuration]") unless input[:rollback_configuration].nil?
        Hearth::Validator.validate!(input[:stack_policy_body], ::String, context: "#{context}[:stack_policy_body]")
        Hearth::Validator.validate!(input[:stack_policy_url], ::String, context: "#{context}[:stack_policy_url]")
        NotificationARNs.validate!(input[:notification_ar_ns], context: "#{context}[:notification_ar_ns]") unless input[:notification_ar_ns].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:disable_rollback], ::TrueClass, ::FalseClass, context: "#{context}[:disable_rollback]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class UpdateStackInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateStackInstancesInput, context: context)
        Hearth::Validator.validate!(input[:stack_set_name], ::String, context: "#{context}[:stack_set_name]")
        AccountList.validate!(input[:accounts], context: "#{context}[:accounts]") unless input[:accounts].nil?
        DeploymentTargets.validate!(input[:deployment_targets], context: "#{context}[:deployment_targets]") unless input[:deployment_targets].nil?
        RegionList.validate!(input[:regions], context: "#{context}[:regions]") unless input[:regions].nil?
        Parameters.validate!(input[:parameter_overrides], context: "#{context}[:parameter_overrides]") unless input[:parameter_overrides].nil?
        StackSetOperationPreferences.validate!(input[:operation_preferences], context: "#{context}[:operation_preferences]") unless input[:operation_preferences].nil?
        Hearth::Validator.validate!(input[:operation_id], ::String, context: "#{context}[:operation_id]")
        Hearth::Validator.validate!(input[:call_as], ::String, context: "#{context}[:call_as]")
      end
    end

    class UpdateStackInstancesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateStackInstancesOutput, context: context)
        Hearth::Validator.validate!(input[:operation_id], ::String, context: "#{context}[:operation_id]")
      end
    end

    class UpdateStackOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateStackOutput, context: context)
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
      end
    end

    class UpdateStackSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateStackSetInput, context: context)
        Hearth::Validator.validate!(input[:stack_set_name], ::String, context: "#{context}[:stack_set_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:template_body], ::String, context: "#{context}[:template_body]")
        Hearth::Validator.validate!(input[:template_url], ::String, context: "#{context}[:template_url]")
        Hearth::Validator.validate!(input[:use_previous_template], ::TrueClass, ::FalseClass, context: "#{context}[:use_previous_template]")
        Parameters.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        Capabilities.validate!(input[:capabilities], context: "#{context}[:capabilities]") unless input[:capabilities].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        StackSetOperationPreferences.validate!(input[:operation_preferences], context: "#{context}[:operation_preferences]") unless input[:operation_preferences].nil?
        Hearth::Validator.validate!(input[:administration_role_arn], ::String, context: "#{context}[:administration_role_arn]")
        Hearth::Validator.validate!(input[:execution_role_name], ::String, context: "#{context}[:execution_role_name]")
        DeploymentTargets.validate!(input[:deployment_targets], context: "#{context}[:deployment_targets]") unless input[:deployment_targets].nil?
        Hearth::Validator.validate!(input[:permission_model], ::String, context: "#{context}[:permission_model]")
        AutoDeployment.validate!(input[:auto_deployment], context: "#{context}[:auto_deployment]") unless input[:auto_deployment].nil?
        Hearth::Validator.validate!(input[:operation_id], ::String, context: "#{context}[:operation_id]")
        AccountList.validate!(input[:accounts], context: "#{context}[:accounts]") unless input[:accounts].nil?
        RegionList.validate!(input[:regions], context: "#{context}[:regions]") unless input[:regions].nil?
        Hearth::Validator.validate!(input[:call_as], ::String, context: "#{context}[:call_as]")
        ManagedExecution.validate!(input[:managed_execution], context: "#{context}[:managed_execution]") unless input[:managed_execution].nil?
      end
    end

    class UpdateStackSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateStackSetOutput, context: context)
        Hearth::Validator.validate!(input[:operation_id], ::String, context: "#{context}[:operation_id]")
      end
    end

    class UpdateTerminationProtectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTerminationProtectionInput, context: context)
        Hearth::Validator.validate!(input[:enable_termination_protection], ::TrueClass, ::FalseClass, context: "#{context}[:enable_termination_protection]")
        Hearth::Validator.validate!(input[:stack_name], ::String, context: "#{context}[:stack_name]")
      end
    end

    class UpdateTerminationProtectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTerminationProtectionOutput, context: context)
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
      end
    end

    class ValidateTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidateTemplateInput, context: context)
        Hearth::Validator.validate!(input[:template_body], ::String, context: "#{context}[:template_body]")
        Hearth::Validator.validate!(input[:template_url], ::String, context: "#{context}[:template_url]")
      end
    end

    class ValidateTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidateTemplateOutput, context: context)
        TemplateParameters.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Capabilities.validate!(input[:capabilities], context: "#{context}[:capabilities]") unless input[:capabilities].nil?
        Hearth::Validator.validate!(input[:capabilities_reason], ::String, context: "#{context}[:capabilities_reason]")
        TransformsList.validate!(input[:declared_transforms], context: "#{context}[:declared_transforms]") unless input[:declared_transforms].nil?
      end
    end

  end
end
