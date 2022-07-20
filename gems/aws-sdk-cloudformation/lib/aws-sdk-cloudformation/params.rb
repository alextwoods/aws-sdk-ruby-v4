# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::CloudFormation
  module Params

    module AccountGateResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccountGateResult, context: context)
        type = Types::AccountGateResult.new
        type.status = params[:status]
        type.status_reason = params[:status_reason]
        type
      end
    end

    module AccountLimit
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccountLimit, context: context)
        type = Types::AccountLimit.new
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module AccountLimitList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AccountLimit.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
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

    module ActivateTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActivateTypeInput, context: context)
        type = Types::ActivateTypeInput.new
        type.type = params[:type]
        type.public_type_arn = params[:public_type_arn]
        type.publisher_id = params[:publisher_id]
        type.type_name = params[:type_name]
        type.type_name_alias = params[:type_name_alias]
        type.auto_update = params[:auto_update]
        type.logging_config = LoggingConfig.build(params[:logging_config], context: "#{context}[:logging_config]") unless params[:logging_config].nil?
        type.execution_role_arn = params[:execution_role_arn]
        type.version_bump = params[:version_bump]
        type.major_version = params[:major_version]
        type
      end
    end

    module ActivateTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActivateTypeOutput, context: context)
        type = Types::ActivateTypeOutput.new
        type.arn = params[:arn]
        type
      end
    end

    module AllowedValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AlreadyExistsException, context: context)
        type = Types::AlreadyExistsException.new
        type.message = params[:message]
        type
      end
    end

    module AutoDeployment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoDeployment, context: context)
        type = Types::AutoDeployment.new
        type.enabled = params[:enabled]
        type.retain_stacks_on_account_removal = params[:retain_stacks_on_account_removal]
        type
      end
    end

    module BatchDescribeTypeConfigurationsError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDescribeTypeConfigurationsError, context: context)
        type = Types::BatchDescribeTypeConfigurationsError.new
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type.type_configuration_identifier = TypeConfigurationIdentifier.build(params[:type_configuration_identifier], context: "#{context}[:type_configuration_identifier]") unless params[:type_configuration_identifier].nil?
        type
      end
    end

    module BatchDescribeTypeConfigurationsErrors
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchDescribeTypeConfigurationsError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchDescribeTypeConfigurationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDescribeTypeConfigurationsInput, context: context)
        type = Types::BatchDescribeTypeConfigurationsInput.new
        type.type_configuration_identifiers = TypeConfigurationIdentifiers.build(params[:type_configuration_identifiers], context: "#{context}[:type_configuration_identifiers]") unless params[:type_configuration_identifiers].nil?
        type
      end
    end

    module BatchDescribeTypeConfigurationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDescribeTypeConfigurationsOutput, context: context)
        type = Types::BatchDescribeTypeConfigurationsOutput.new
        type.errors = BatchDescribeTypeConfigurationsErrors.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type.unprocessed_type_configurations = UnprocessedTypeConfigurations.build(params[:unprocessed_type_configurations], context: "#{context}[:unprocessed_type_configurations]") unless params[:unprocessed_type_configurations].nil?
        type.type_configurations = TypeConfigurationDetailsList.build(params[:type_configurations], context: "#{context}[:type_configurations]") unless params[:type_configurations].nil?
        type
      end
    end

    module CFNRegistryException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CFNRegistryException, context: context)
        type = Types::CFNRegistryException.new
        type.message = params[:message]
        type
      end
    end

    module CancelUpdateStackInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelUpdateStackInput, context: context)
        type = Types::CancelUpdateStackInput.new
        type.stack_name = params[:stack_name]
        type.client_request_token = params[:client_request_token]
        type
      end
    end

    module CancelUpdateStackOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelUpdateStackOutput, context: context)
        type = Types::CancelUpdateStackOutput.new
        type
      end
    end

    module Capabilities
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Change
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Change, context: context)
        type = Types::Change.new
        type.type = params[:type]
        type.hook_invocation_count = params[:hook_invocation_count]
        type.resource_change = ResourceChange.build(params[:resource_change], context: "#{context}[:resource_change]") unless params[:resource_change].nil?
        type
      end
    end

    module ChangeSetHook
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChangeSetHook, context: context)
        type = Types::ChangeSetHook.new
        type.invocation_point = params[:invocation_point]
        type.failure_mode = params[:failure_mode]
        type.type_name = params[:type_name]
        type.type_version_id = params[:type_version_id]
        type.type_configuration_version_id = params[:type_configuration_version_id]
        type.target_details = ChangeSetHookTargetDetails.build(params[:target_details], context: "#{context}[:target_details]") unless params[:target_details].nil?
        type
      end
    end

    module ChangeSetHookResourceTargetDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChangeSetHookResourceTargetDetails, context: context)
        type = Types::ChangeSetHookResourceTargetDetails.new
        type.logical_resource_id = params[:logical_resource_id]
        type.resource_type = params[:resource_type]
        type.resource_action = params[:resource_action]
        type
      end
    end

    module ChangeSetHookTargetDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChangeSetHookTargetDetails, context: context)
        type = Types::ChangeSetHookTargetDetails.new
        type.target_type = params[:target_type]
        type.resource_target_details = ChangeSetHookResourceTargetDetails.build(params[:resource_target_details], context: "#{context}[:resource_target_details]") unless params[:resource_target_details].nil?
        type
      end
    end

    module ChangeSetHooks
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ChangeSetHook.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ChangeSetNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChangeSetNotFoundException, context: context)
        type = Types::ChangeSetNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module ChangeSetSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ChangeSetSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ChangeSetSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChangeSetSummary, context: context)
        type = Types::ChangeSetSummary.new
        type.stack_id = params[:stack_id]
        type.stack_name = params[:stack_name]
        type.change_set_id = params[:change_set_id]
        type.change_set_name = params[:change_set_name]
        type.execution_status = params[:execution_status]
        type.status = params[:status]
        type.status_reason = params[:status_reason]
        type.creation_time = params[:creation_time]
        type.description = params[:description]
        type.include_nested_stacks = params[:include_nested_stacks]
        type.parent_change_set_id = params[:parent_change_set_id]
        type.root_change_set_id = params[:root_change_set_id]
        type
      end
    end

    module Changes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Change.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ContinueUpdateRollbackInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContinueUpdateRollbackInput, context: context)
        type = Types::ContinueUpdateRollbackInput.new
        type.stack_name = params[:stack_name]
        type.role_arn = params[:role_arn]
        type.resources_to_skip = ResourcesToSkip.build(params[:resources_to_skip], context: "#{context}[:resources_to_skip]") unless params[:resources_to_skip].nil?
        type.client_request_token = params[:client_request_token]
        type
      end
    end

    module ContinueUpdateRollbackOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContinueUpdateRollbackOutput, context: context)
        type = Types::ContinueUpdateRollbackOutput.new
        type
      end
    end

    module CreateChangeSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateChangeSetInput, context: context)
        type = Types::CreateChangeSetInput.new
        type.stack_name = params[:stack_name]
        type.template_body = params[:template_body]
        type.template_url = params[:template_url]
        type.use_previous_template = params[:use_previous_template]
        type.parameters = Parameters.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.capabilities = Capabilities.build(params[:capabilities], context: "#{context}[:capabilities]") unless params[:capabilities].nil?
        type.resource_types = ResourceTypes.build(params[:resource_types], context: "#{context}[:resource_types]") unless params[:resource_types].nil?
        type.role_arn = params[:role_arn]
        type.rollback_configuration = RollbackConfiguration.build(params[:rollback_configuration], context: "#{context}[:rollback_configuration]") unless params[:rollback_configuration].nil?
        type.notification_ar_ns = NotificationARNs.build(params[:notification_ar_ns], context: "#{context}[:notification_ar_ns]") unless params[:notification_ar_ns].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.change_set_name = params[:change_set_name]
        type.client_token = params[:client_token]
        type.description = params[:description]
        type.change_set_type = params[:change_set_type]
        type.resources_to_import = ResourcesToImport.build(params[:resources_to_import], context: "#{context}[:resources_to_import]") unless params[:resources_to_import].nil?
        type.include_nested_stacks = params[:include_nested_stacks]
        type
      end
    end

    module CreateChangeSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateChangeSetOutput, context: context)
        type = Types::CreateChangeSetOutput.new
        type.id = params[:id]
        type.stack_id = params[:stack_id]
        type
      end
    end

    module CreateStackInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateStackInput, context: context)
        type = Types::CreateStackInput.new
        type.stack_name = params[:stack_name]
        type.template_body = params[:template_body]
        type.template_url = params[:template_url]
        type.parameters = Parameters.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.disable_rollback = params[:disable_rollback]
        type.rollback_configuration = RollbackConfiguration.build(params[:rollback_configuration], context: "#{context}[:rollback_configuration]") unless params[:rollback_configuration].nil?
        type.timeout_in_minutes = params[:timeout_in_minutes]
        type.notification_ar_ns = NotificationARNs.build(params[:notification_ar_ns], context: "#{context}[:notification_ar_ns]") unless params[:notification_ar_ns].nil?
        type.capabilities = Capabilities.build(params[:capabilities], context: "#{context}[:capabilities]") unless params[:capabilities].nil?
        type.resource_types = ResourceTypes.build(params[:resource_types], context: "#{context}[:resource_types]") unless params[:resource_types].nil?
        type.role_arn = params[:role_arn]
        type.on_failure = params[:on_failure]
        type.stack_policy_body = params[:stack_policy_body]
        type.stack_policy_url = params[:stack_policy_url]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.client_request_token = params[:client_request_token]
        type.enable_termination_protection = params[:enable_termination_protection]
        type
      end
    end

    module CreateStackInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateStackInstancesInput, context: context)
        type = Types::CreateStackInstancesInput.new
        type.stack_set_name = params[:stack_set_name]
        type.accounts = AccountList.build(params[:accounts], context: "#{context}[:accounts]") unless params[:accounts].nil?
        type.deployment_targets = DeploymentTargets.build(params[:deployment_targets], context: "#{context}[:deployment_targets]") unless params[:deployment_targets].nil?
        type.regions = RegionList.build(params[:regions], context: "#{context}[:regions]") unless params[:regions].nil?
        type.parameter_overrides = Parameters.build(params[:parameter_overrides], context: "#{context}[:parameter_overrides]") unless params[:parameter_overrides].nil?
        type.operation_preferences = StackSetOperationPreferences.build(params[:operation_preferences], context: "#{context}[:operation_preferences]") unless params[:operation_preferences].nil?
        type.operation_id = params[:operation_id] || ::SecureRandom.uuid
        type.call_as = params[:call_as]
        type
      end
    end

    module CreateStackInstancesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateStackInstancesOutput, context: context)
        type = Types::CreateStackInstancesOutput.new
        type.operation_id = params[:operation_id]
        type
      end
    end

    module CreateStackOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateStackOutput, context: context)
        type = Types::CreateStackOutput.new
        type.stack_id = params[:stack_id]
        type
      end
    end

    module CreateStackSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateStackSetInput, context: context)
        type = Types::CreateStackSetInput.new
        type.stack_set_name = params[:stack_set_name]
        type.description = params[:description]
        type.template_body = params[:template_body]
        type.template_url = params[:template_url]
        type.stack_id = params[:stack_id]
        type.parameters = Parameters.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.capabilities = Capabilities.build(params[:capabilities], context: "#{context}[:capabilities]") unless params[:capabilities].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.administration_role_arn = params[:administration_role_arn]
        type.execution_role_name = params[:execution_role_name]
        type.permission_model = params[:permission_model]
        type.auto_deployment = AutoDeployment.build(params[:auto_deployment], context: "#{context}[:auto_deployment]") unless params[:auto_deployment].nil?
        type.call_as = params[:call_as]
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.managed_execution = ManagedExecution.build(params[:managed_execution], context: "#{context}[:managed_execution]") unless params[:managed_execution].nil?
        type
      end
    end

    module CreateStackSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateStackSetOutput, context: context)
        type = Types::CreateStackSetOutput.new
        type.stack_set_id = params[:stack_set_id]
        type
      end
    end

    module CreatedButModifiedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatedButModifiedException, context: context)
        type = Types::CreatedButModifiedException.new
        type.message = params[:message]
        type
      end
    end

    module DeactivateTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeactivateTypeInput, context: context)
        type = Types::DeactivateTypeInput.new
        type.type_name = params[:type_name]
        type.type = params[:type]
        type.arn = params[:arn]
        type
      end
    end

    module DeactivateTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeactivateTypeOutput, context: context)
        type = Types::DeactivateTypeOutput.new
        type
      end
    end

    module DeleteChangeSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteChangeSetInput, context: context)
        type = Types::DeleteChangeSetInput.new
        type.change_set_name = params[:change_set_name]
        type.stack_name = params[:stack_name]
        type
      end
    end

    module DeleteChangeSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteChangeSetOutput, context: context)
        type = Types::DeleteChangeSetOutput.new
        type
      end
    end

    module DeleteStackInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteStackInput, context: context)
        type = Types::DeleteStackInput.new
        type.stack_name = params[:stack_name]
        type.retain_resources = RetainResources.build(params[:retain_resources], context: "#{context}[:retain_resources]") unless params[:retain_resources].nil?
        type.role_arn = params[:role_arn]
        type.client_request_token = params[:client_request_token]
        type
      end
    end

    module DeleteStackInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteStackInstancesInput, context: context)
        type = Types::DeleteStackInstancesInput.new
        type.stack_set_name = params[:stack_set_name]
        type.accounts = AccountList.build(params[:accounts], context: "#{context}[:accounts]") unless params[:accounts].nil?
        type.deployment_targets = DeploymentTargets.build(params[:deployment_targets], context: "#{context}[:deployment_targets]") unless params[:deployment_targets].nil?
        type.regions = RegionList.build(params[:regions], context: "#{context}[:regions]") unless params[:regions].nil?
        type.operation_preferences = StackSetOperationPreferences.build(params[:operation_preferences], context: "#{context}[:operation_preferences]") unless params[:operation_preferences].nil?
        type.retain_stacks = params[:retain_stacks]
        type.operation_id = params[:operation_id] || ::SecureRandom.uuid
        type.call_as = params[:call_as]
        type
      end
    end

    module DeleteStackInstancesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteStackInstancesOutput, context: context)
        type = Types::DeleteStackInstancesOutput.new
        type.operation_id = params[:operation_id]
        type
      end
    end

    module DeleteStackOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteStackOutput, context: context)
        type = Types::DeleteStackOutput.new
        type
      end
    end

    module DeleteStackSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteStackSetInput, context: context)
        type = Types::DeleteStackSetInput.new
        type.stack_set_name = params[:stack_set_name]
        type.call_as = params[:call_as]
        type
      end
    end

    module DeleteStackSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteStackSetOutput, context: context)
        type = Types::DeleteStackSetOutput.new
        type
      end
    end

    module DeploymentTargets
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeploymentTargets, context: context)
        type = Types::DeploymentTargets.new
        type.accounts = AccountList.build(params[:accounts], context: "#{context}[:accounts]") unless params[:accounts].nil?
        type.accounts_url = params[:accounts_url]
        type.organizational_unit_ids = OrganizationalUnitIdList.build(params[:organizational_unit_ids], context: "#{context}[:organizational_unit_ids]") unless params[:organizational_unit_ids].nil?
        type
      end
    end

    module DeregisterTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterTypeInput, context: context)
        type = Types::DeregisterTypeInput.new
        type.arn = params[:arn]
        type.type = params[:type]
        type.type_name = params[:type_name]
        type.version_id = params[:version_id]
        type
      end
    end

    module DeregisterTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterTypeOutput, context: context)
        type = Types::DeregisterTypeOutput.new
        type
      end
    end

    module DescribeAccountLimitsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAccountLimitsInput, context: context)
        type = Types::DescribeAccountLimitsInput.new
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeAccountLimitsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAccountLimitsOutput, context: context)
        type = Types::DescribeAccountLimitsOutput.new
        type.account_limits = AccountLimitList.build(params[:account_limits], context: "#{context}[:account_limits]") unless params[:account_limits].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeChangeSetHooksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeChangeSetHooksInput, context: context)
        type = Types::DescribeChangeSetHooksInput.new
        type.change_set_name = params[:change_set_name]
        type.stack_name = params[:stack_name]
        type.next_token = params[:next_token]
        type.logical_resource_id = params[:logical_resource_id]
        type
      end
    end

    module DescribeChangeSetHooksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeChangeSetHooksOutput, context: context)
        type = Types::DescribeChangeSetHooksOutput.new
        type.change_set_id = params[:change_set_id]
        type.change_set_name = params[:change_set_name]
        type.hooks = ChangeSetHooks.build(params[:hooks], context: "#{context}[:hooks]") unless params[:hooks].nil?
        type.status = params[:status]
        type.next_token = params[:next_token]
        type.stack_id = params[:stack_id]
        type.stack_name = params[:stack_name]
        type
      end
    end

    module DescribeChangeSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeChangeSetInput, context: context)
        type = Types::DescribeChangeSetInput.new
        type.change_set_name = params[:change_set_name]
        type.stack_name = params[:stack_name]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeChangeSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeChangeSetOutput, context: context)
        type = Types::DescribeChangeSetOutput.new
        type.change_set_name = params[:change_set_name]
        type.change_set_id = params[:change_set_id]
        type.stack_id = params[:stack_id]
        type.stack_name = params[:stack_name]
        type.description = params[:description]
        type.parameters = Parameters.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.creation_time = params[:creation_time]
        type.execution_status = params[:execution_status]
        type.status = params[:status]
        type.status_reason = params[:status_reason]
        type.notification_ar_ns = NotificationARNs.build(params[:notification_ar_ns], context: "#{context}[:notification_ar_ns]") unless params[:notification_ar_ns].nil?
        type.rollback_configuration = RollbackConfiguration.build(params[:rollback_configuration], context: "#{context}[:rollback_configuration]") unless params[:rollback_configuration].nil?
        type.capabilities = Capabilities.build(params[:capabilities], context: "#{context}[:capabilities]") unless params[:capabilities].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.changes = Changes.build(params[:changes], context: "#{context}[:changes]") unless params[:changes].nil?
        type.next_token = params[:next_token]
        type.include_nested_stacks = params[:include_nested_stacks]
        type.parent_change_set_id = params[:parent_change_set_id]
        type.root_change_set_id = params[:root_change_set_id]
        type
      end
    end

    module DescribePublisherInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePublisherInput, context: context)
        type = Types::DescribePublisherInput.new
        type.publisher_id = params[:publisher_id]
        type
      end
    end

    module DescribePublisherOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePublisherOutput, context: context)
        type = Types::DescribePublisherOutput.new
        type.publisher_id = params[:publisher_id]
        type.publisher_status = params[:publisher_status]
        type.identity_provider = params[:identity_provider]
        type.publisher_profile = params[:publisher_profile]
        type
      end
    end

    module DescribeStackDriftDetectionStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStackDriftDetectionStatusInput, context: context)
        type = Types::DescribeStackDriftDetectionStatusInput.new
        type.stack_drift_detection_id = params[:stack_drift_detection_id]
        type
      end
    end

    module DescribeStackDriftDetectionStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStackDriftDetectionStatusOutput, context: context)
        type = Types::DescribeStackDriftDetectionStatusOutput.new
        type.stack_id = params[:stack_id]
        type.stack_drift_detection_id = params[:stack_drift_detection_id]
        type.stack_drift_status = params[:stack_drift_status]
        type.detection_status = params[:detection_status]
        type.detection_status_reason = params[:detection_status_reason]
        type.drifted_stack_resource_count = params[:drifted_stack_resource_count]
        type.timestamp = params[:timestamp]
        type
      end
    end

    module DescribeStackEventsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStackEventsInput, context: context)
        type = Types::DescribeStackEventsInput.new
        type.stack_name = params[:stack_name]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeStackEventsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStackEventsOutput, context: context)
        type = Types::DescribeStackEventsOutput.new
        type.stack_events = StackEvents.build(params[:stack_events], context: "#{context}[:stack_events]") unless params[:stack_events].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeStackInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStackInstanceInput, context: context)
        type = Types::DescribeStackInstanceInput.new
        type.stack_set_name = params[:stack_set_name]
        type.stack_instance_account = params[:stack_instance_account]
        type.stack_instance_region = params[:stack_instance_region]
        type.call_as = params[:call_as]
        type
      end
    end

    module DescribeStackInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStackInstanceOutput, context: context)
        type = Types::DescribeStackInstanceOutput.new
        type.stack_instance = StackInstance.build(params[:stack_instance], context: "#{context}[:stack_instance]") unless params[:stack_instance].nil?
        type
      end
    end

    module DescribeStackResourceDriftsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStackResourceDriftsInput, context: context)
        type = Types::DescribeStackResourceDriftsInput.new
        type.stack_name = params[:stack_name]
        type.stack_resource_drift_status_filters = StackResourceDriftStatusFilters.build(params[:stack_resource_drift_status_filters], context: "#{context}[:stack_resource_drift_status_filters]") unless params[:stack_resource_drift_status_filters].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeStackResourceDriftsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStackResourceDriftsOutput, context: context)
        type = Types::DescribeStackResourceDriftsOutput.new
        type.stack_resource_drifts = StackResourceDrifts.build(params[:stack_resource_drifts], context: "#{context}[:stack_resource_drifts]") unless params[:stack_resource_drifts].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeStackResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStackResourceInput, context: context)
        type = Types::DescribeStackResourceInput.new
        type.stack_name = params[:stack_name]
        type.logical_resource_id = params[:logical_resource_id]
        type
      end
    end

    module DescribeStackResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStackResourceOutput, context: context)
        type = Types::DescribeStackResourceOutput.new
        type.stack_resource_detail = StackResourceDetail.build(params[:stack_resource_detail], context: "#{context}[:stack_resource_detail]") unless params[:stack_resource_detail].nil?
        type
      end
    end

    module DescribeStackResourcesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStackResourcesInput, context: context)
        type = Types::DescribeStackResourcesInput.new
        type.stack_name = params[:stack_name]
        type.logical_resource_id = params[:logical_resource_id]
        type.physical_resource_id = params[:physical_resource_id]
        type
      end
    end

    module DescribeStackResourcesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStackResourcesOutput, context: context)
        type = Types::DescribeStackResourcesOutput.new
        type.stack_resources = StackResources.build(params[:stack_resources], context: "#{context}[:stack_resources]") unless params[:stack_resources].nil?
        type
      end
    end

    module DescribeStackSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStackSetInput, context: context)
        type = Types::DescribeStackSetInput.new
        type.stack_set_name = params[:stack_set_name]
        type.call_as = params[:call_as]
        type
      end
    end

    module DescribeStackSetOperationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStackSetOperationInput, context: context)
        type = Types::DescribeStackSetOperationInput.new
        type.stack_set_name = params[:stack_set_name]
        type.operation_id = params[:operation_id]
        type.call_as = params[:call_as]
        type
      end
    end

    module DescribeStackSetOperationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStackSetOperationOutput, context: context)
        type = Types::DescribeStackSetOperationOutput.new
        type.stack_set_operation = StackSetOperation.build(params[:stack_set_operation], context: "#{context}[:stack_set_operation]") unless params[:stack_set_operation].nil?
        type
      end
    end

    module DescribeStackSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStackSetOutput, context: context)
        type = Types::DescribeStackSetOutput.new
        type.stack_set = StackSet.build(params[:stack_set], context: "#{context}[:stack_set]") unless params[:stack_set].nil?
        type
      end
    end

    module DescribeStacksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStacksInput, context: context)
        type = Types::DescribeStacksInput.new
        type.stack_name = params[:stack_name]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeStacksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStacksOutput, context: context)
        type = Types::DescribeStacksOutput.new
        type.stacks = Stacks.build(params[:stacks], context: "#{context}[:stacks]") unless params[:stacks].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTypeInput, context: context)
        type = Types::DescribeTypeInput.new
        type.type = params[:type]
        type.type_name = params[:type_name]
        type.arn = params[:arn]
        type.version_id = params[:version_id]
        type.publisher_id = params[:publisher_id]
        type.public_version_number = params[:public_version_number]
        type
      end
    end

    module DescribeTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTypeOutput, context: context)
        type = Types::DescribeTypeOutput.new
        type.arn = params[:arn]
        type.type = params[:type]
        type.type_name = params[:type_name]
        type.default_version_id = params[:default_version_id]
        type.is_default_version = params[:is_default_version]
        type.type_tests_status = params[:type_tests_status]
        type.type_tests_status_description = params[:type_tests_status_description]
        type.description = params[:description]
        type.schema = params[:schema]
        type.provisioning_type = params[:provisioning_type]
        type.deprecated_status = params[:deprecated_status]
        type.logging_config = LoggingConfig.build(params[:logging_config], context: "#{context}[:logging_config]") unless params[:logging_config].nil?
        type.required_activated_types = RequiredActivatedTypes.build(params[:required_activated_types], context: "#{context}[:required_activated_types]") unless params[:required_activated_types].nil?
        type.execution_role_arn = params[:execution_role_arn]
        type.visibility = params[:visibility]
        type.source_url = params[:source_url]
        type.documentation_url = params[:documentation_url]
        type.last_updated = params[:last_updated]
        type.time_created = params[:time_created]
        type.configuration_schema = params[:configuration_schema]
        type.publisher_id = params[:publisher_id]
        type.original_type_name = params[:original_type_name]
        type.original_type_arn = params[:original_type_arn]
        type.public_version_number = params[:public_version_number]
        type.latest_public_version = params[:latest_public_version]
        type.is_activated = params[:is_activated]
        type.auto_update = params[:auto_update]
        type
      end
    end

    module DescribeTypeRegistrationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTypeRegistrationInput, context: context)
        type = Types::DescribeTypeRegistrationInput.new
        type.registration_token = params[:registration_token]
        type
      end
    end

    module DescribeTypeRegistrationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTypeRegistrationOutput, context: context)
        type = Types::DescribeTypeRegistrationOutput.new
        type.progress_status = params[:progress_status]
        type.description = params[:description]
        type.type_arn = params[:type_arn]
        type.type_version_arn = params[:type_version_arn]
        type
      end
    end

    module DetectStackDriftInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectStackDriftInput, context: context)
        type = Types::DetectStackDriftInput.new
        type.stack_name = params[:stack_name]
        type.logical_resource_ids = LogicalResourceIds.build(params[:logical_resource_ids], context: "#{context}[:logical_resource_ids]") unless params[:logical_resource_ids].nil?
        type
      end
    end

    module DetectStackDriftOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectStackDriftOutput, context: context)
        type = Types::DetectStackDriftOutput.new
        type.stack_drift_detection_id = params[:stack_drift_detection_id]
        type
      end
    end

    module DetectStackResourceDriftInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectStackResourceDriftInput, context: context)
        type = Types::DetectStackResourceDriftInput.new
        type.stack_name = params[:stack_name]
        type.logical_resource_id = params[:logical_resource_id]
        type
      end
    end

    module DetectStackResourceDriftOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectStackResourceDriftOutput, context: context)
        type = Types::DetectStackResourceDriftOutput.new
        type.stack_resource_drift = StackResourceDrift.build(params[:stack_resource_drift], context: "#{context}[:stack_resource_drift]") unless params[:stack_resource_drift].nil?
        type
      end
    end

    module DetectStackSetDriftInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectStackSetDriftInput, context: context)
        type = Types::DetectStackSetDriftInput.new
        type.stack_set_name = params[:stack_set_name]
        type.operation_preferences = StackSetOperationPreferences.build(params[:operation_preferences], context: "#{context}[:operation_preferences]") unless params[:operation_preferences].nil?
        type.operation_id = params[:operation_id] || ::SecureRandom.uuid
        type.call_as = params[:call_as]
        type
      end
    end

    module DetectStackSetDriftOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectStackSetDriftOutput, context: context)
        type = Types::DetectStackSetDriftOutput.new
        type.operation_id = params[:operation_id]
        type
      end
    end

    module EstimateTemplateCostInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EstimateTemplateCostInput, context: context)
        type = Types::EstimateTemplateCostInput.new
        type.template_body = params[:template_body]
        type.template_url = params[:template_url]
        type.parameters = Parameters.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type
      end
    end

    module EstimateTemplateCostOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EstimateTemplateCostOutput, context: context)
        type = Types::EstimateTemplateCostOutput.new
        type.url = params[:url]
        type
      end
    end

    module ExecuteChangeSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExecuteChangeSetInput, context: context)
        type = Types::ExecuteChangeSetInput.new
        type.change_set_name = params[:change_set_name]
        type.stack_name = params[:stack_name]
        type.client_request_token = params[:client_request_token]
        type.disable_rollback = params[:disable_rollback]
        type
      end
    end

    module ExecuteChangeSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExecuteChangeSetOutput, context: context)
        type = Types::ExecuteChangeSetOutput.new
        type
      end
    end

    module Export
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Export, context: context)
        type = Types::Export.new
        type.exporting_stack_id = params[:exporting_stack_id]
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module Exports
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Export.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GetStackPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetStackPolicyInput, context: context)
        type = Types::GetStackPolicyInput.new
        type.stack_name = params[:stack_name]
        type
      end
    end

    module GetStackPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetStackPolicyOutput, context: context)
        type = Types::GetStackPolicyOutput.new
        type.stack_policy_body = params[:stack_policy_body]
        type
      end
    end

    module GetTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTemplateInput, context: context)
        type = Types::GetTemplateInput.new
        type.stack_name = params[:stack_name]
        type.change_set_name = params[:change_set_name]
        type.template_stage = params[:template_stage]
        type
      end
    end

    module GetTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTemplateOutput, context: context)
        type = Types::GetTemplateOutput.new
        type.template_body = params[:template_body]
        type.stages_available = StageList.build(params[:stages_available], context: "#{context}[:stages_available]") unless params[:stages_available].nil?
        type
      end
    end

    module GetTemplateSummaryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTemplateSummaryInput, context: context)
        type = Types::GetTemplateSummaryInput.new
        type.template_body = params[:template_body]
        type.template_url = params[:template_url]
        type.stack_name = params[:stack_name]
        type.stack_set_name = params[:stack_set_name]
        type.call_as = params[:call_as]
        type
      end
    end

    module GetTemplateSummaryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTemplateSummaryOutput, context: context)
        type = Types::GetTemplateSummaryOutput.new
        type.parameters = ParameterDeclarations.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.description = params[:description]
        type.capabilities = Capabilities.build(params[:capabilities], context: "#{context}[:capabilities]") unless params[:capabilities].nil?
        type.capabilities_reason = params[:capabilities_reason]
        type.resource_types = ResourceTypes.build(params[:resource_types], context: "#{context}[:resource_types]") unless params[:resource_types].nil?
        type.version = params[:version]
        type.metadata = params[:metadata]
        type.declared_transforms = TransformsList.build(params[:declared_transforms], context: "#{context}[:declared_transforms]") unless params[:declared_transforms].nil?
        type.resource_identifier_summaries = ResourceIdentifierSummaries.build(params[:resource_identifier_summaries], context: "#{context}[:resource_identifier_summaries]") unless params[:resource_identifier_summaries].nil?
        type
      end
    end

    module ImportStacksToStackSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportStacksToStackSetInput, context: context)
        type = Types::ImportStacksToStackSetInput.new
        type.stack_set_name = params[:stack_set_name]
        type.stack_ids = StackIdList.build(params[:stack_ids], context: "#{context}[:stack_ids]") unless params[:stack_ids].nil?
        type.stack_ids_url = params[:stack_ids_url]
        type.organizational_unit_ids = OrganizationalUnitIdList.build(params[:organizational_unit_ids], context: "#{context}[:organizational_unit_ids]") unless params[:organizational_unit_ids].nil?
        type.operation_preferences = StackSetOperationPreferences.build(params[:operation_preferences], context: "#{context}[:operation_preferences]") unless params[:operation_preferences].nil?
        type.operation_id = params[:operation_id] || ::SecureRandom.uuid
        type.call_as = params[:call_as]
        type
      end
    end

    module ImportStacksToStackSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportStacksToStackSetOutput, context: context)
        type = Types::ImportStacksToStackSetOutput.new
        type.operation_id = params[:operation_id]
        type
      end
    end

    module Imports
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InsufficientCapabilitiesException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InsufficientCapabilitiesException, context: context)
        type = Types::InsufficientCapabilitiesException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidChangeSetStatusException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidChangeSetStatusException, context: context)
        type = Types::InvalidChangeSetStatusException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidOperationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidOperationException, context: context)
        type = Types::InvalidOperationException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidStateTransitionException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidStateTransitionException, context: context)
        type = Types::InvalidStateTransitionException.new
        type.message = params[:message]
        type
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ListChangeSetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListChangeSetsInput, context: context)
        type = Types::ListChangeSetsInput.new
        type.stack_name = params[:stack_name]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListChangeSetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListChangeSetsOutput, context: context)
        type = Types::ListChangeSetsOutput.new
        type.summaries = ChangeSetSummaries.build(params[:summaries], context: "#{context}[:summaries]") unless params[:summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListExportsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListExportsInput, context: context)
        type = Types::ListExportsInput.new
        type.next_token = params[:next_token]
        type
      end
    end

    module ListExportsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListExportsOutput, context: context)
        type = Types::ListExportsOutput.new
        type.exports = Exports.build(params[:exports], context: "#{context}[:exports]") unless params[:exports].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListImportsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListImportsInput, context: context)
        type = Types::ListImportsInput.new
        type.export_name = params[:export_name]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListImportsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListImportsOutput, context: context)
        type = Types::ListImportsOutput.new
        type.imports = Imports.build(params[:imports], context: "#{context}[:imports]") unless params[:imports].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListStackInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStackInstancesInput, context: context)
        type = Types::ListStackInstancesInput.new
        type.stack_set_name = params[:stack_set_name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.filters = StackInstanceFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.stack_instance_account = params[:stack_instance_account]
        type.stack_instance_region = params[:stack_instance_region]
        type.call_as = params[:call_as]
        type
      end
    end

    module ListStackInstancesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStackInstancesOutput, context: context)
        type = Types::ListStackInstancesOutput.new
        type.summaries = StackInstanceSummaries.build(params[:summaries], context: "#{context}[:summaries]") unless params[:summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListStackResourcesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStackResourcesInput, context: context)
        type = Types::ListStackResourcesInput.new
        type.stack_name = params[:stack_name]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListStackResourcesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStackResourcesOutput, context: context)
        type = Types::ListStackResourcesOutput.new
        type.stack_resource_summaries = StackResourceSummaries.build(params[:stack_resource_summaries], context: "#{context}[:stack_resource_summaries]") unless params[:stack_resource_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListStackSetOperationResultsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStackSetOperationResultsInput, context: context)
        type = Types::ListStackSetOperationResultsInput.new
        type.stack_set_name = params[:stack_set_name]
        type.operation_id = params[:operation_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.call_as = params[:call_as]
        type
      end
    end

    module ListStackSetOperationResultsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStackSetOperationResultsOutput, context: context)
        type = Types::ListStackSetOperationResultsOutput.new
        type.summaries = StackSetOperationResultSummaries.build(params[:summaries], context: "#{context}[:summaries]") unless params[:summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListStackSetOperationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStackSetOperationsInput, context: context)
        type = Types::ListStackSetOperationsInput.new
        type.stack_set_name = params[:stack_set_name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.call_as = params[:call_as]
        type
      end
    end

    module ListStackSetOperationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStackSetOperationsOutput, context: context)
        type = Types::ListStackSetOperationsOutput.new
        type.summaries = StackSetOperationSummaries.build(params[:summaries], context: "#{context}[:summaries]") unless params[:summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListStackSetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStackSetsInput, context: context)
        type = Types::ListStackSetsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.status = params[:status]
        type.call_as = params[:call_as]
        type
      end
    end

    module ListStackSetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStackSetsOutput, context: context)
        type = Types::ListStackSetsOutput.new
        type.summaries = StackSetSummaries.build(params[:summaries], context: "#{context}[:summaries]") unless params[:summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListStacksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStacksInput, context: context)
        type = Types::ListStacksInput.new
        type.next_token = params[:next_token]
        type.stack_status_filter = StackStatusFilter.build(params[:stack_status_filter], context: "#{context}[:stack_status_filter]") unless params[:stack_status_filter].nil?
        type
      end
    end

    module ListStacksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStacksOutput, context: context)
        type = Types::ListStacksOutput.new
        type.stack_summaries = StackSummaries.build(params[:stack_summaries], context: "#{context}[:stack_summaries]") unless params[:stack_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTypeRegistrationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTypeRegistrationsInput, context: context)
        type = Types::ListTypeRegistrationsInput.new
        type.type = params[:type]
        type.type_name = params[:type_name]
        type.type_arn = params[:type_arn]
        type.registration_status_filter = params[:registration_status_filter]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTypeRegistrationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTypeRegistrationsOutput, context: context)
        type = Types::ListTypeRegistrationsOutput.new
        type.registration_token_list = RegistrationTokenList.build(params[:registration_token_list], context: "#{context}[:registration_token_list]") unless params[:registration_token_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTypeVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTypeVersionsInput, context: context)
        type = Types::ListTypeVersionsInput.new
        type.type = params[:type]
        type.type_name = params[:type_name]
        type.arn = params[:arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.deprecated_status = params[:deprecated_status]
        type.publisher_id = params[:publisher_id]
        type
      end
    end

    module ListTypeVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTypeVersionsOutput, context: context)
        type = Types::ListTypeVersionsOutput.new
        type.type_version_summaries = TypeVersionSummaries.build(params[:type_version_summaries], context: "#{context}[:type_version_summaries]") unless params[:type_version_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTypesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTypesInput, context: context)
        type = Types::ListTypesInput.new
        type.visibility = params[:visibility]
        type.provisioning_type = params[:provisioning_type]
        type.deprecated_status = params[:deprecated_status]
        type.type = params[:type]
        type.filters = TypeFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTypesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTypesOutput, context: context)
        type = Types::ListTypesOutput.new
        type.type_summaries = TypeSummaries.build(params[:type_summaries], context: "#{context}[:type_summaries]") unless params[:type_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module LoggingConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoggingConfig, context: context)
        type = Types::LoggingConfig.new
        type.log_role_arn = params[:log_role_arn]
        type.log_group_name = params[:log_group_name]
        type
      end
    end

    module LogicalResourceIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ManagedExecution
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ManagedExecution, context: context)
        type = Types::ManagedExecution.new
        type.active = params[:active]
        type
      end
    end

    module ModuleInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModuleInfo, context: context)
        type = Types::ModuleInfo.new
        type.type_hierarchy = params[:type_hierarchy]
        type.logical_id_hierarchy = params[:logical_id_hierarchy]
        type
      end
    end

    module NameAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NameAlreadyExistsException, context: context)
        type = Types::NameAlreadyExistsException.new
        type.message = params[:message]
        type
      end
    end

    module NotificationARNs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module OperationIdAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OperationIdAlreadyExistsException, context: context)
        type = Types::OperationIdAlreadyExistsException.new
        type.message = params[:message]
        type
      end
    end

    module OperationInProgressException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OperationInProgressException, context: context)
        type = Types::OperationInProgressException.new
        type.message = params[:message]
        type
      end
    end

    module OperationNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OperationNotFoundException, context: context)
        type = Types::OperationNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module OperationStatusCheckFailedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OperationStatusCheckFailedException, context: context)
        type = Types::OperationStatusCheckFailedException.new
        type.message = params[:message]
        type
      end
    end

    module OrganizationalUnitIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Output
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Output, context: context)
        type = Types::Output.new
        type.output_key = params[:output_key]
        type.output_value = params[:output_value]
        type.description = params[:description]
        type.export_name = params[:export_name]
        type
      end
    end

    module Outputs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Output.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Parameter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Parameter, context: context)
        type = Types::Parameter.new
        type.parameter_key = params[:parameter_key]
        type.parameter_value = params[:parameter_value]
        type.use_previous_value = params[:use_previous_value]
        type.resolved_value = params[:resolved_value]
        type
      end
    end

    module ParameterConstraints
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ParameterConstraints, context: context)
        type = Types::ParameterConstraints.new
        type.allowed_values = AllowedValues.build(params[:allowed_values], context: "#{context}[:allowed_values]") unless params[:allowed_values].nil?
        type
      end
    end

    module ParameterDeclaration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ParameterDeclaration, context: context)
        type = Types::ParameterDeclaration.new
        type.parameter_key = params[:parameter_key]
        type.default_value = params[:default_value]
        type.parameter_type = params[:parameter_type]
        type.no_echo = params[:no_echo]
        type.description = params[:description]
        type.parameter_constraints = ParameterConstraints.build(params[:parameter_constraints], context: "#{context}[:parameter_constraints]") unless params[:parameter_constraints].nil?
        type
      end
    end

    module ParameterDeclarations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ParameterDeclaration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Parameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Parameter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PhysicalResourceIdContext
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PhysicalResourceIdContextKeyValuePair.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PhysicalResourceIdContextKeyValuePair
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PhysicalResourceIdContextKeyValuePair, context: context)
        type = Types::PhysicalResourceIdContextKeyValuePair.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module PropertyDifference
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PropertyDifference, context: context)
        type = Types::PropertyDifference.new
        type.property_path = params[:property_path]
        type.expected_value = params[:expected_value]
        type.actual_value = params[:actual_value]
        type.difference_type = params[:difference_type]
        type
      end
    end

    module PropertyDifferences
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PropertyDifference.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PublishTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PublishTypeInput, context: context)
        type = Types::PublishTypeInput.new
        type.type = params[:type]
        type.arn = params[:arn]
        type.type_name = params[:type_name]
        type.public_version_number = params[:public_version_number]
        type
      end
    end

    module PublishTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PublishTypeOutput, context: context)
        type = Types::PublishTypeOutput.new
        type.public_type_arn = params[:public_type_arn]
        type
      end
    end

    module RecordHandlerProgressInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecordHandlerProgressInput, context: context)
        type = Types::RecordHandlerProgressInput.new
        type.bearer_token = params[:bearer_token]
        type.operation_status = params[:operation_status]
        type.current_operation_status = params[:current_operation_status]
        type.status_message = params[:status_message]
        type.error_code = params[:error_code]
        type.resource_model = params[:resource_model]
        type.client_request_token = params[:client_request_token]
        type
      end
    end

    module RecordHandlerProgressOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecordHandlerProgressOutput, context: context)
        type = Types::RecordHandlerProgressOutput.new
        type
      end
    end

    module RegionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RegisterPublisherInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterPublisherInput, context: context)
        type = Types::RegisterPublisherInput.new
        type.accept_terms_and_conditions = params[:accept_terms_and_conditions]
        type.connection_arn = params[:connection_arn]
        type
      end
    end

    module RegisterPublisherOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterPublisherOutput, context: context)
        type = Types::RegisterPublisherOutput.new
        type.publisher_id = params[:publisher_id]
        type
      end
    end

    module RegisterTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterTypeInput, context: context)
        type = Types::RegisterTypeInput.new
        type.type = params[:type]
        type.type_name = params[:type_name]
        type.schema_handler_package = params[:schema_handler_package]
        type.logging_config = LoggingConfig.build(params[:logging_config], context: "#{context}[:logging_config]") unless params[:logging_config].nil?
        type.execution_role_arn = params[:execution_role_arn]
        type.client_request_token = params[:client_request_token]
        type
      end
    end

    module RegisterTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterTypeOutput, context: context)
        type = Types::RegisterTypeOutput.new
        type.registration_token = params[:registration_token]
        type
      end
    end

    module RegistrationTokenList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RequiredActivatedType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RequiredActivatedType, context: context)
        type = Types::RequiredActivatedType.new
        type.type_name_alias = params[:type_name_alias]
        type.original_type_name = params[:original_type_name]
        type.publisher_id = params[:publisher_id]
        type.supported_major_versions = SupportedMajorVersions.build(params[:supported_major_versions], context: "#{context}[:supported_major_versions]") unless params[:supported_major_versions].nil?
        type
      end
    end

    module RequiredActivatedTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RequiredActivatedType.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceChange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceChange, context: context)
        type = Types::ResourceChange.new
        type.action = params[:action]
        type.logical_resource_id = params[:logical_resource_id]
        type.physical_resource_id = params[:physical_resource_id]
        type.resource_type = params[:resource_type]
        type.replacement = params[:replacement]
        type.scope = Scope.build(params[:scope], context: "#{context}[:scope]") unless params[:scope].nil?
        type.details = ResourceChangeDetails.build(params[:details], context: "#{context}[:details]") unless params[:details].nil?
        type.change_set_id = params[:change_set_id]
        type.module_info = ModuleInfo.build(params[:module_info], context: "#{context}[:module_info]") unless params[:module_info].nil?
        type
      end
    end

    module ResourceChangeDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceChangeDetail, context: context)
        type = Types::ResourceChangeDetail.new
        type.target = ResourceTargetDefinition.build(params[:target], context: "#{context}[:target]") unless params[:target].nil?
        type.evaluation = params[:evaluation]
        type.change_source = params[:change_source]
        type.causing_entity = params[:causing_entity]
        type
      end
    end

    module ResourceChangeDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourceChangeDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceIdentifierProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ResourceIdentifierSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourceIdentifierSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceIdentifierSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceIdentifierSummary, context: context)
        type = Types::ResourceIdentifierSummary.new
        type.resource_type = params[:resource_type]
        type.logical_resource_ids = LogicalResourceIds.build(params[:logical_resource_ids], context: "#{context}[:logical_resource_ids]") unless params[:logical_resource_ids].nil?
        type.resource_identifiers = ResourceIdentifiers.build(params[:resource_identifiers], context: "#{context}[:resource_identifiers]") unless params[:resource_identifiers].nil?
        type
      end
    end

    module ResourceIdentifiers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ResourceTargetDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceTargetDefinition, context: context)
        type = Types::ResourceTargetDefinition.new
        type.attribute = params[:attribute]
        type.name = params[:name]
        type.requires_recreation = params[:requires_recreation]
        type
      end
    end

    module ResourceToImport
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceToImport, context: context)
        type = Types::ResourceToImport.new
        type.resource_type = params[:resource_type]
        type.logical_resource_id = params[:logical_resource_id]
        type.resource_identifier = ResourceIdentifierProperties.build(params[:resource_identifier], context: "#{context}[:resource_identifier]") unless params[:resource_identifier].nil?
        type
      end
    end

    module ResourceTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ResourcesToImport
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourceToImport.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourcesToSkip
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RetainResources
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RollbackConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RollbackConfiguration, context: context)
        type = Types::RollbackConfiguration.new
        type.rollback_triggers = RollbackTriggers.build(params[:rollback_triggers], context: "#{context}[:rollback_triggers]") unless params[:rollback_triggers].nil?
        type.monitoring_time_in_minutes = params[:monitoring_time_in_minutes]
        type
      end
    end

    module RollbackStackInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RollbackStackInput, context: context)
        type = Types::RollbackStackInput.new
        type.stack_name = params[:stack_name]
        type.role_arn = params[:role_arn]
        type.client_request_token = params[:client_request_token]
        type
      end
    end

    module RollbackStackOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RollbackStackOutput, context: context)
        type = Types::RollbackStackOutput.new
        type.stack_id = params[:stack_id]
        type
      end
    end

    module RollbackTrigger
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RollbackTrigger, context: context)
        type = Types::RollbackTrigger.new
        type.arn = params[:arn]
        type.type = params[:type]
        type
      end
    end

    module RollbackTriggers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RollbackTrigger.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Scope
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SetStackPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetStackPolicyInput, context: context)
        type = Types::SetStackPolicyInput.new
        type.stack_name = params[:stack_name]
        type.stack_policy_body = params[:stack_policy_body]
        type.stack_policy_url = params[:stack_policy_url]
        type
      end
    end

    module SetStackPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetStackPolicyOutput, context: context)
        type = Types::SetStackPolicyOutput.new
        type
      end
    end

    module SetTypeConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetTypeConfigurationInput, context: context)
        type = Types::SetTypeConfigurationInput.new
        type.type_arn = params[:type_arn]
        type.configuration = params[:configuration]
        type.configuration_alias = params[:configuration_alias]
        type.type_name = params[:type_name]
        type.type = params[:type]
        type
      end
    end

    module SetTypeConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetTypeConfigurationOutput, context: context)
        type = Types::SetTypeConfigurationOutput.new
        type.configuration_arn = params[:configuration_arn]
        type
      end
    end

    module SetTypeDefaultVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetTypeDefaultVersionInput, context: context)
        type = Types::SetTypeDefaultVersionInput.new
        type.arn = params[:arn]
        type.type = params[:type]
        type.type_name = params[:type_name]
        type.version_id = params[:version_id]
        type
      end
    end

    module SetTypeDefaultVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetTypeDefaultVersionOutput, context: context)
        type = Types::SetTypeDefaultVersionOutput.new
        type
      end
    end

    module SignalResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SignalResourceInput, context: context)
        type = Types::SignalResourceInput.new
        type.stack_name = params[:stack_name]
        type.logical_resource_id = params[:logical_resource_id]
        type.unique_id = params[:unique_id]
        type.status = params[:status]
        type
      end
    end

    module SignalResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SignalResourceOutput, context: context)
        type = Types::SignalResourceOutput.new
        type
      end
    end

    module Stack
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Stack, context: context)
        type = Types::Stack.new
        type.stack_id = params[:stack_id]
        type.stack_name = params[:stack_name]
        type.change_set_id = params[:change_set_id]
        type.description = params[:description]
        type.parameters = Parameters.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.creation_time = params[:creation_time]
        type.deletion_time = params[:deletion_time]
        type.last_updated_time = params[:last_updated_time]
        type.rollback_configuration = RollbackConfiguration.build(params[:rollback_configuration], context: "#{context}[:rollback_configuration]") unless params[:rollback_configuration].nil?
        type.stack_status = params[:stack_status]
        type.stack_status_reason = params[:stack_status_reason]
        type.disable_rollback = params[:disable_rollback]
        type.notification_ar_ns = NotificationARNs.build(params[:notification_ar_ns], context: "#{context}[:notification_ar_ns]") unless params[:notification_ar_ns].nil?
        type.timeout_in_minutes = params[:timeout_in_minutes]
        type.capabilities = Capabilities.build(params[:capabilities], context: "#{context}[:capabilities]") unless params[:capabilities].nil?
        type.outputs = Outputs.build(params[:outputs], context: "#{context}[:outputs]") unless params[:outputs].nil?
        type.role_arn = params[:role_arn]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.enable_termination_protection = params[:enable_termination_protection]
        type.parent_id = params[:parent_id]
        type.root_id = params[:root_id]
        type.drift_information = StackDriftInformation.build(params[:drift_information], context: "#{context}[:drift_information]") unless params[:drift_information].nil?
        type
      end
    end

    module StackDriftInformation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StackDriftInformation, context: context)
        type = Types::StackDriftInformation.new
        type.stack_drift_status = params[:stack_drift_status]
        type.last_check_timestamp = params[:last_check_timestamp]
        type
      end
    end

    module StackDriftInformationSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StackDriftInformationSummary, context: context)
        type = Types::StackDriftInformationSummary.new
        type.stack_drift_status = params[:stack_drift_status]
        type.last_check_timestamp = params[:last_check_timestamp]
        type
      end
    end

    module StackEvent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StackEvent, context: context)
        type = Types::StackEvent.new
        type.stack_id = params[:stack_id]
        type.event_id = params[:event_id]
        type.stack_name = params[:stack_name]
        type.logical_resource_id = params[:logical_resource_id]
        type.physical_resource_id = params[:physical_resource_id]
        type.resource_type = params[:resource_type]
        type.timestamp = params[:timestamp]
        type.resource_status = params[:resource_status]
        type.resource_status_reason = params[:resource_status_reason]
        type.resource_properties = params[:resource_properties]
        type.client_request_token = params[:client_request_token]
        type.hook_type = params[:hook_type]
        type.hook_status = params[:hook_status]
        type.hook_status_reason = params[:hook_status_reason]
        type.hook_invocation_point = params[:hook_invocation_point]
        type.hook_failure_mode = params[:hook_failure_mode]
        type
      end
    end

    module StackEvents
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StackEvent.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StackIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module StackInstance
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StackInstance, context: context)
        type = Types::StackInstance.new
        type.stack_set_id = params[:stack_set_id]
        type.region = params[:region]
        type.account = params[:account]
        type.stack_id = params[:stack_id]
        type.parameter_overrides = Parameters.build(params[:parameter_overrides], context: "#{context}[:parameter_overrides]") unless params[:parameter_overrides].nil?
        type.status = params[:status]
        type.stack_instance_status = StackInstanceComprehensiveStatus.build(params[:stack_instance_status], context: "#{context}[:stack_instance_status]") unless params[:stack_instance_status].nil?
        type.status_reason = params[:status_reason]
        type.organizational_unit_id = params[:organizational_unit_id]
        type.drift_status = params[:drift_status]
        type.last_drift_check_timestamp = params[:last_drift_check_timestamp]
        type
      end
    end

    module StackInstanceComprehensiveStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StackInstanceComprehensiveStatus, context: context)
        type = Types::StackInstanceComprehensiveStatus.new
        type.detailed_status = params[:detailed_status]
        type
      end
    end

    module StackInstanceFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StackInstanceFilter, context: context)
        type = Types::StackInstanceFilter.new
        type.name = params[:name]
        type.values = params[:values]
        type
      end
    end

    module StackInstanceFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StackInstanceFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StackInstanceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StackInstanceNotFoundException, context: context)
        type = Types::StackInstanceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module StackInstanceSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StackInstanceSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StackInstanceSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StackInstanceSummary, context: context)
        type = Types::StackInstanceSummary.new
        type.stack_set_id = params[:stack_set_id]
        type.region = params[:region]
        type.account = params[:account]
        type.stack_id = params[:stack_id]
        type.status = params[:status]
        type.status_reason = params[:status_reason]
        type.stack_instance_status = StackInstanceComprehensiveStatus.build(params[:stack_instance_status], context: "#{context}[:stack_instance_status]") unless params[:stack_instance_status].nil?
        type.organizational_unit_id = params[:organizational_unit_id]
        type.drift_status = params[:drift_status]
        type.last_drift_check_timestamp = params[:last_drift_check_timestamp]
        type
      end
    end

    module StackNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StackNotFoundException, context: context)
        type = Types::StackNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module StackResource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StackResource, context: context)
        type = Types::StackResource.new
        type.stack_name = params[:stack_name]
        type.stack_id = params[:stack_id]
        type.logical_resource_id = params[:logical_resource_id]
        type.physical_resource_id = params[:physical_resource_id]
        type.resource_type = params[:resource_type]
        type.timestamp = params[:timestamp]
        type.resource_status = params[:resource_status]
        type.resource_status_reason = params[:resource_status_reason]
        type.description = params[:description]
        type.drift_information = StackResourceDriftInformation.build(params[:drift_information], context: "#{context}[:drift_information]") unless params[:drift_information].nil?
        type.module_info = ModuleInfo.build(params[:module_info], context: "#{context}[:module_info]") unless params[:module_info].nil?
        type
      end
    end

    module StackResourceDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StackResourceDetail, context: context)
        type = Types::StackResourceDetail.new
        type.stack_name = params[:stack_name]
        type.stack_id = params[:stack_id]
        type.logical_resource_id = params[:logical_resource_id]
        type.physical_resource_id = params[:physical_resource_id]
        type.resource_type = params[:resource_type]
        type.last_updated_timestamp = params[:last_updated_timestamp]
        type.resource_status = params[:resource_status]
        type.resource_status_reason = params[:resource_status_reason]
        type.description = params[:description]
        type.metadata = params[:metadata]
        type.drift_information = StackResourceDriftInformation.build(params[:drift_information], context: "#{context}[:drift_information]") unless params[:drift_information].nil?
        type.module_info = ModuleInfo.build(params[:module_info], context: "#{context}[:module_info]") unless params[:module_info].nil?
        type
      end
    end

    module StackResourceDrift
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StackResourceDrift, context: context)
        type = Types::StackResourceDrift.new
        type.stack_id = params[:stack_id]
        type.logical_resource_id = params[:logical_resource_id]
        type.physical_resource_id = params[:physical_resource_id]
        type.physical_resource_id_context = PhysicalResourceIdContext.build(params[:physical_resource_id_context], context: "#{context}[:physical_resource_id_context]") unless params[:physical_resource_id_context].nil?
        type.resource_type = params[:resource_type]
        type.expected_properties = params[:expected_properties]
        type.actual_properties = params[:actual_properties]
        type.property_differences = PropertyDifferences.build(params[:property_differences], context: "#{context}[:property_differences]") unless params[:property_differences].nil?
        type.stack_resource_drift_status = params[:stack_resource_drift_status]
        type.timestamp = params[:timestamp]
        type.module_info = ModuleInfo.build(params[:module_info], context: "#{context}[:module_info]") unless params[:module_info].nil?
        type
      end
    end

    module StackResourceDriftInformation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StackResourceDriftInformation, context: context)
        type = Types::StackResourceDriftInformation.new
        type.stack_resource_drift_status = params[:stack_resource_drift_status]
        type.last_check_timestamp = params[:last_check_timestamp]
        type
      end
    end

    module StackResourceDriftInformationSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StackResourceDriftInformationSummary, context: context)
        type = Types::StackResourceDriftInformationSummary.new
        type.stack_resource_drift_status = params[:stack_resource_drift_status]
        type.last_check_timestamp = params[:last_check_timestamp]
        type
      end
    end

    module StackResourceDriftStatusFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module StackResourceDrifts
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StackResourceDrift.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StackResourceSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StackResourceSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StackResourceSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StackResourceSummary, context: context)
        type = Types::StackResourceSummary.new
        type.logical_resource_id = params[:logical_resource_id]
        type.physical_resource_id = params[:physical_resource_id]
        type.resource_type = params[:resource_type]
        type.last_updated_timestamp = params[:last_updated_timestamp]
        type.resource_status = params[:resource_status]
        type.resource_status_reason = params[:resource_status_reason]
        type.drift_information = StackResourceDriftInformationSummary.build(params[:drift_information], context: "#{context}[:drift_information]") unless params[:drift_information].nil?
        type.module_info = ModuleInfo.build(params[:module_info], context: "#{context}[:module_info]") unless params[:module_info].nil?
        type
      end
    end

    module StackResources
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StackResource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StackSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StackSet, context: context)
        type = Types::StackSet.new
        type.stack_set_name = params[:stack_set_name]
        type.stack_set_id = params[:stack_set_id]
        type.description = params[:description]
        type.status = params[:status]
        type.template_body = params[:template_body]
        type.parameters = Parameters.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.capabilities = Capabilities.build(params[:capabilities], context: "#{context}[:capabilities]") unless params[:capabilities].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.stack_set_arn = params[:stack_set_arn]
        type.administration_role_arn = params[:administration_role_arn]
        type.execution_role_name = params[:execution_role_name]
        type.stack_set_drift_detection_details = StackSetDriftDetectionDetails.build(params[:stack_set_drift_detection_details], context: "#{context}[:stack_set_drift_detection_details]") unless params[:stack_set_drift_detection_details].nil?
        type.auto_deployment = AutoDeployment.build(params[:auto_deployment], context: "#{context}[:auto_deployment]") unless params[:auto_deployment].nil?
        type.permission_model = params[:permission_model]
        type.organizational_unit_ids = OrganizationalUnitIdList.build(params[:organizational_unit_ids], context: "#{context}[:organizational_unit_ids]") unless params[:organizational_unit_ids].nil?
        type.managed_execution = ManagedExecution.build(params[:managed_execution], context: "#{context}[:managed_execution]") unless params[:managed_execution].nil?
        type
      end
    end

    module StackSetDriftDetectionDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StackSetDriftDetectionDetails, context: context)
        type = Types::StackSetDriftDetectionDetails.new
        type.drift_status = params[:drift_status]
        type.drift_detection_status = params[:drift_detection_status]
        type.last_drift_check_timestamp = params[:last_drift_check_timestamp]
        type.total_stack_instances_count = params[:total_stack_instances_count]
        type.drifted_stack_instances_count = params[:drifted_stack_instances_count]
        type.in_sync_stack_instances_count = params[:in_sync_stack_instances_count]
        type.in_progress_stack_instances_count = params[:in_progress_stack_instances_count]
        type.failed_stack_instances_count = params[:failed_stack_instances_count]
        type
      end
    end

    module StackSetNotEmptyException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StackSetNotEmptyException, context: context)
        type = Types::StackSetNotEmptyException.new
        type.message = params[:message]
        type
      end
    end

    module StackSetNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StackSetNotFoundException, context: context)
        type = Types::StackSetNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module StackSetOperation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StackSetOperation, context: context)
        type = Types::StackSetOperation.new
        type.operation_id = params[:operation_id]
        type.stack_set_id = params[:stack_set_id]
        type.action = params[:action]
        type.status = params[:status]
        type.operation_preferences = StackSetOperationPreferences.build(params[:operation_preferences], context: "#{context}[:operation_preferences]") unless params[:operation_preferences].nil?
        type.retain_stacks = params[:retain_stacks]
        type.administration_role_arn = params[:administration_role_arn]
        type.execution_role_name = params[:execution_role_name]
        type.creation_timestamp = params[:creation_timestamp]
        type.end_timestamp = params[:end_timestamp]
        type.deployment_targets = DeploymentTargets.build(params[:deployment_targets], context: "#{context}[:deployment_targets]") unless params[:deployment_targets].nil?
        type.stack_set_drift_detection_details = StackSetDriftDetectionDetails.build(params[:stack_set_drift_detection_details], context: "#{context}[:stack_set_drift_detection_details]") unless params[:stack_set_drift_detection_details].nil?
        type.status_reason = params[:status_reason]
        type
      end
    end

    module StackSetOperationPreferences
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StackSetOperationPreferences, context: context)
        type = Types::StackSetOperationPreferences.new
        type.region_concurrency_type = params[:region_concurrency_type]
        type.region_order = RegionList.build(params[:region_order], context: "#{context}[:region_order]") unless params[:region_order].nil?
        type.failure_tolerance_count = params[:failure_tolerance_count]
        type.failure_tolerance_percentage = params[:failure_tolerance_percentage]
        type.max_concurrent_count = params[:max_concurrent_count]
        type.max_concurrent_percentage = params[:max_concurrent_percentage]
        type
      end
    end

    module StackSetOperationResultSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StackSetOperationResultSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StackSetOperationResultSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StackSetOperationResultSummary, context: context)
        type = Types::StackSetOperationResultSummary.new
        type.account = params[:account]
        type.region = params[:region]
        type.status = params[:status]
        type.status_reason = params[:status_reason]
        type.account_gate_result = AccountGateResult.build(params[:account_gate_result], context: "#{context}[:account_gate_result]") unless params[:account_gate_result].nil?
        type.organizational_unit_id = params[:organizational_unit_id]
        type
      end
    end

    module StackSetOperationSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StackSetOperationSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StackSetOperationSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StackSetOperationSummary, context: context)
        type = Types::StackSetOperationSummary.new
        type.operation_id = params[:operation_id]
        type.action = params[:action]
        type.status = params[:status]
        type.creation_timestamp = params[:creation_timestamp]
        type.end_timestamp = params[:end_timestamp]
        type.status_reason = params[:status_reason]
        type
      end
    end

    module StackSetSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StackSetSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StackSetSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StackSetSummary, context: context)
        type = Types::StackSetSummary.new
        type.stack_set_name = params[:stack_set_name]
        type.stack_set_id = params[:stack_set_id]
        type.description = params[:description]
        type.status = params[:status]
        type.auto_deployment = AutoDeployment.build(params[:auto_deployment], context: "#{context}[:auto_deployment]") unless params[:auto_deployment].nil?
        type.permission_model = params[:permission_model]
        type.drift_status = params[:drift_status]
        type.last_drift_check_timestamp = params[:last_drift_check_timestamp]
        type.managed_execution = ManagedExecution.build(params[:managed_execution], context: "#{context}[:managed_execution]") unless params[:managed_execution].nil?
        type
      end
    end

    module StackStatusFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module StackSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StackSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StackSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StackSummary, context: context)
        type = Types::StackSummary.new
        type.stack_id = params[:stack_id]
        type.stack_name = params[:stack_name]
        type.template_description = params[:template_description]
        type.creation_time = params[:creation_time]
        type.last_updated_time = params[:last_updated_time]
        type.deletion_time = params[:deletion_time]
        type.stack_status = params[:stack_status]
        type.stack_status_reason = params[:stack_status_reason]
        type.parent_id = params[:parent_id]
        type.root_id = params[:root_id]
        type.drift_information = StackDriftInformationSummary.build(params[:drift_information], context: "#{context}[:drift_information]") unless params[:drift_information].nil?
        type
      end
    end

    module Stacks
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Stack.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StageList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module StaleRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StaleRequestException, context: context)
        type = Types::StaleRequestException.new
        type.message = params[:message]
        type
      end
    end

    module StopStackSetOperationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopStackSetOperationInput, context: context)
        type = Types::StopStackSetOperationInput.new
        type.stack_set_name = params[:stack_set_name]
        type.operation_id = params[:operation_id]
        type.call_as = params[:call_as]
        type
      end
    end

    module StopStackSetOperationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopStackSetOperationOutput, context: context)
        type = Types::StopStackSetOperationOutput.new
        type
      end
    end

    module SupportedMajorVersions
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

    module TemplateParameter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TemplateParameter, context: context)
        type = Types::TemplateParameter.new
        type.parameter_key = params[:parameter_key]
        type.default_value = params[:default_value]
        type.no_echo = params[:no_echo]
        type.description = params[:description]
        type
      end
    end

    module TemplateParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TemplateParameter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TestTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TestTypeInput, context: context)
        type = Types::TestTypeInput.new
        type.arn = params[:arn]
        type.type = params[:type]
        type.type_name = params[:type_name]
        type.version_id = params[:version_id]
        type.log_delivery_bucket = params[:log_delivery_bucket]
        type
      end
    end

    module TestTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TestTypeOutput, context: context)
        type = Types::TestTypeOutput.new
        type.type_version_arn = params[:type_version_arn]
        type
      end
    end

    module TokenAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TokenAlreadyExistsException, context: context)
        type = Types::TokenAlreadyExistsException.new
        type.message = params[:message]
        type
      end
    end

    module TransformsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TypeConfigurationDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TypeConfigurationDetails, context: context)
        type = Types::TypeConfigurationDetails.new
        type.arn = params[:arn]
        type.alias = params[:alias]
        type.configuration = params[:configuration]
        type.last_updated = params[:last_updated]
        type.type_arn = params[:type_arn]
        type.type_name = params[:type_name]
        type.is_default_configuration = params[:is_default_configuration]
        type
      end
    end

    module TypeConfigurationDetailsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TypeConfigurationDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TypeConfigurationIdentifier
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TypeConfigurationIdentifier, context: context)
        type = Types::TypeConfigurationIdentifier.new
        type.type_arn = params[:type_arn]
        type.type_configuration_alias = params[:type_configuration_alias]
        type.type_configuration_arn = params[:type_configuration_arn]
        type.type = params[:type]
        type.type_name = params[:type_name]
        type
      end
    end

    module TypeConfigurationIdentifiers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TypeConfigurationIdentifier.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TypeConfigurationNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TypeConfigurationNotFoundException, context: context)
        type = Types::TypeConfigurationNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module TypeFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TypeFilters, context: context)
        type = Types::TypeFilters.new
        type.category = params[:category]
        type.publisher_id = params[:publisher_id]
        type.type_name_prefix = params[:type_name_prefix]
        type
      end
    end

    module TypeNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TypeNotFoundException, context: context)
        type = Types::TypeNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module TypeSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TypeSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TypeSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TypeSummary, context: context)
        type = Types::TypeSummary.new
        type.type = params[:type]
        type.type_name = params[:type_name]
        type.default_version_id = params[:default_version_id]
        type.type_arn = params[:type_arn]
        type.last_updated = params[:last_updated]
        type.description = params[:description]
        type.publisher_id = params[:publisher_id]
        type.original_type_name = params[:original_type_name]
        type.public_version_number = params[:public_version_number]
        type.latest_public_version = params[:latest_public_version]
        type.publisher_identity = params[:publisher_identity]
        type.publisher_name = params[:publisher_name]
        type.is_activated = params[:is_activated]
        type
      end
    end

    module TypeVersionSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TypeVersionSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TypeVersionSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TypeVersionSummary, context: context)
        type = Types::TypeVersionSummary.new
        type.type = params[:type]
        type.type_name = params[:type_name]
        type.version_id = params[:version_id]
        type.is_default_version = params[:is_default_version]
        type.arn = params[:arn]
        type.time_created = params[:time_created]
        type.description = params[:description]
        type.public_version_number = params[:public_version_number]
        type
      end
    end

    module UnprocessedTypeConfigurations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TypeConfigurationIdentifier.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UpdateStackInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateStackInput, context: context)
        type = Types::UpdateStackInput.new
        type.stack_name = params[:stack_name]
        type.template_body = params[:template_body]
        type.template_url = params[:template_url]
        type.use_previous_template = params[:use_previous_template]
        type.stack_policy_during_update_body = params[:stack_policy_during_update_body]
        type.stack_policy_during_update_url = params[:stack_policy_during_update_url]
        type.parameters = Parameters.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.capabilities = Capabilities.build(params[:capabilities], context: "#{context}[:capabilities]") unless params[:capabilities].nil?
        type.resource_types = ResourceTypes.build(params[:resource_types], context: "#{context}[:resource_types]") unless params[:resource_types].nil?
        type.role_arn = params[:role_arn]
        type.rollback_configuration = RollbackConfiguration.build(params[:rollback_configuration], context: "#{context}[:rollback_configuration]") unless params[:rollback_configuration].nil?
        type.stack_policy_body = params[:stack_policy_body]
        type.stack_policy_url = params[:stack_policy_url]
        type.notification_ar_ns = NotificationARNs.build(params[:notification_ar_ns], context: "#{context}[:notification_ar_ns]") unless params[:notification_ar_ns].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.disable_rollback = params[:disable_rollback]
        type.client_request_token = params[:client_request_token]
        type
      end
    end

    module UpdateStackInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateStackInstancesInput, context: context)
        type = Types::UpdateStackInstancesInput.new
        type.stack_set_name = params[:stack_set_name]
        type.accounts = AccountList.build(params[:accounts], context: "#{context}[:accounts]") unless params[:accounts].nil?
        type.deployment_targets = DeploymentTargets.build(params[:deployment_targets], context: "#{context}[:deployment_targets]") unless params[:deployment_targets].nil?
        type.regions = RegionList.build(params[:regions], context: "#{context}[:regions]") unless params[:regions].nil?
        type.parameter_overrides = Parameters.build(params[:parameter_overrides], context: "#{context}[:parameter_overrides]") unless params[:parameter_overrides].nil?
        type.operation_preferences = StackSetOperationPreferences.build(params[:operation_preferences], context: "#{context}[:operation_preferences]") unless params[:operation_preferences].nil?
        type.operation_id = params[:operation_id] || ::SecureRandom.uuid
        type.call_as = params[:call_as]
        type
      end
    end

    module UpdateStackInstancesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateStackInstancesOutput, context: context)
        type = Types::UpdateStackInstancesOutput.new
        type.operation_id = params[:operation_id]
        type
      end
    end

    module UpdateStackOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateStackOutput, context: context)
        type = Types::UpdateStackOutput.new
        type.stack_id = params[:stack_id]
        type
      end
    end

    module UpdateStackSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateStackSetInput, context: context)
        type = Types::UpdateStackSetInput.new
        type.stack_set_name = params[:stack_set_name]
        type.description = params[:description]
        type.template_body = params[:template_body]
        type.template_url = params[:template_url]
        type.use_previous_template = params[:use_previous_template]
        type.parameters = Parameters.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.capabilities = Capabilities.build(params[:capabilities], context: "#{context}[:capabilities]") unless params[:capabilities].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.operation_preferences = StackSetOperationPreferences.build(params[:operation_preferences], context: "#{context}[:operation_preferences]") unless params[:operation_preferences].nil?
        type.administration_role_arn = params[:administration_role_arn]
        type.execution_role_name = params[:execution_role_name]
        type.deployment_targets = DeploymentTargets.build(params[:deployment_targets], context: "#{context}[:deployment_targets]") unless params[:deployment_targets].nil?
        type.permission_model = params[:permission_model]
        type.auto_deployment = AutoDeployment.build(params[:auto_deployment], context: "#{context}[:auto_deployment]") unless params[:auto_deployment].nil?
        type.operation_id = params[:operation_id] || ::SecureRandom.uuid
        type.accounts = AccountList.build(params[:accounts], context: "#{context}[:accounts]") unless params[:accounts].nil?
        type.regions = RegionList.build(params[:regions], context: "#{context}[:regions]") unless params[:regions].nil?
        type.call_as = params[:call_as]
        type.managed_execution = ManagedExecution.build(params[:managed_execution], context: "#{context}[:managed_execution]") unless params[:managed_execution].nil?
        type
      end
    end

    module UpdateStackSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateStackSetOutput, context: context)
        type = Types::UpdateStackSetOutput.new
        type.operation_id = params[:operation_id]
        type
      end
    end

    module UpdateTerminationProtectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTerminationProtectionInput, context: context)
        type = Types::UpdateTerminationProtectionInput.new
        type.enable_termination_protection = params[:enable_termination_protection]
        type.stack_name = params[:stack_name]
        type
      end
    end

    module UpdateTerminationProtectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTerminationProtectionOutput, context: context)
        type = Types::UpdateTerminationProtectionOutput.new
        type.stack_id = params[:stack_id]
        type
      end
    end

    module ValidateTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidateTemplateInput, context: context)
        type = Types::ValidateTemplateInput.new
        type.template_body = params[:template_body]
        type.template_url = params[:template_url]
        type
      end
    end

    module ValidateTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidateTemplateOutput, context: context)
        type = Types::ValidateTemplateOutput.new
        type.parameters = TemplateParameters.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.description = params[:description]
        type.capabilities = Capabilities.build(params[:capabilities], context: "#{context}[:capabilities]") unless params[:capabilities].nil?
        type.capabilities_reason = params[:capabilities_reason]
        type.declared_transforms = TransformsList.build(params[:declared_transforms], context: "#{context}[:declared_transforms]") unless params[:declared_transforms].nil?
        type
      end
    end

  end
end
