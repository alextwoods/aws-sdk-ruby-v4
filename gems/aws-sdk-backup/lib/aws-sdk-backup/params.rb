# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::Backup
  module Params

    module AdvancedBackupSetting
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdvancedBackupSetting, context: context)
        type = Types::AdvancedBackupSetting.new
        type.resource_type = params[:resource_type]
        type.backup_options = BackupOptions.build(params[:backup_options], context: "#{context}[:backup_options]") unless params[:backup_options].nil?
        type
      end
    end

    module AdvancedBackupSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AdvancedBackupSetting.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AlreadyExistsException, context: context)
        type = Types::AlreadyExistsException.new
        type.code = params[:code]
        type.message = params[:message]
        type.creator_request_id = params[:creator_request_id]
        type.arn = params[:arn]
        type.type = params[:type]
        type.context = params[:context]
        type
      end
    end

    module BackupJob
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BackupJob, context: context)
        type = Types::BackupJob.new
        type.account_id = params[:account_id]
        type.backup_job_id = params[:backup_job_id]
        type.backup_vault_name = params[:backup_vault_name]
        type.backup_vault_arn = params[:backup_vault_arn]
        type.recovery_point_arn = params[:recovery_point_arn]
        type.resource_arn = params[:resource_arn]
        type.creation_date = params[:creation_date]
        type.completion_date = params[:completion_date]
        type.state = params[:state]
        type.status_message = params[:status_message]
        type.percent_done = params[:percent_done]
        type.backup_size_in_bytes = params[:backup_size_in_bytes]
        type.iam_role_arn = params[:iam_role_arn]
        type.created_by = RecoveryPointCreator.build(params[:created_by], context: "#{context}[:created_by]") unless params[:created_by].nil?
        type.expected_completion_date = params[:expected_completion_date]
        type.start_by = params[:start_by]
        type.resource_type = params[:resource_type]
        type.bytes_transferred = params[:bytes_transferred]
        type.backup_options = BackupOptions.build(params[:backup_options], context: "#{context}[:backup_options]") unless params[:backup_options].nil?
        type.backup_type = params[:backup_type]
        type
      end
    end

    module BackupJobsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BackupJob.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BackupOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module BackupPlan
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BackupPlan, context: context)
        type = Types::BackupPlan.new
        type.backup_plan_name = params[:backup_plan_name]
        type.rules = BackupRules.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type.advanced_backup_settings = AdvancedBackupSettings.build(params[:advanced_backup_settings], context: "#{context}[:advanced_backup_settings]") unless params[:advanced_backup_settings].nil?
        type
      end
    end

    module BackupPlanInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BackupPlanInput, context: context)
        type = Types::BackupPlanInput.new
        type.backup_plan_name = params[:backup_plan_name]
        type.rules = BackupRulesInput.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type.advanced_backup_settings = AdvancedBackupSettings.build(params[:advanced_backup_settings], context: "#{context}[:advanced_backup_settings]") unless params[:advanced_backup_settings].nil?
        type
      end
    end

    module BackupPlanTemplatesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BackupPlanTemplatesListMember.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BackupPlanTemplatesListMember
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BackupPlanTemplatesListMember, context: context)
        type = Types::BackupPlanTemplatesListMember.new
        type.backup_plan_template_id = params[:backup_plan_template_id]
        type.backup_plan_template_name = params[:backup_plan_template_name]
        type
      end
    end

    module BackupPlanVersionsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BackupPlansListMember.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BackupPlansList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BackupPlansListMember.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BackupPlansListMember
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BackupPlansListMember, context: context)
        type = Types::BackupPlansListMember.new
        type.backup_plan_arn = params[:backup_plan_arn]
        type.backup_plan_id = params[:backup_plan_id]
        type.creation_date = params[:creation_date]
        type.deletion_date = params[:deletion_date]
        type.version_id = params[:version_id]
        type.backup_plan_name = params[:backup_plan_name]
        type.creator_request_id = params[:creator_request_id]
        type.last_execution_date = params[:last_execution_date]
        type.advanced_backup_settings = AdvancedBackupSettings.build(params[:advanced_backup_settings], context: "#{context}[:advanced_backup_settings]") unless params[:advanced_backup_settings].nil?
        type
      end
    end

    module BackupRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BackupRule, context: context)
        type = Types::BackupRule.new
        type.rule_name = params[:rule_name]
        type.target_backup_vault_name = params[:target_backup_vault_name]
        type.schedule_expression = params[:schedule_expression]
        type.start_window_minutes = params[:start_window_minutes]
        type.completion_window_minutes = params[:completion_window_minutes]
        type.lifecycle = Lifecycle.build(params[:lifecycle], context: "#{context}[:lifecycle]") unless params[:lifecycle].nil?
        type.recovery_point_tags = Tags.build(params[:recovery_point_tags], context: "#{context}[:recovery_point_tags]") unless params[:recovery_point_tags].nil?
        type.rule_id = params[:rule_id]
        type.copy_actions = CopyActions.build(params[:copy_actions], context: "#{context}[:copy_actions]") unless params[:copy_actions].nil?
        type.enable_continuous_backup = params[:enable_continuous_backup]
        type
      end
    end

    module BackupRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BackupRuleInput, context: context)
        type = Types::BackupRuleInput.new
        type.rule_name = params[:rule_name]
        type.target_backup_vault_name = params[:target_backup_vault_name]
        type.schedule_expression = params[:schedule_expression]
        type.start_window_minutes = params[:start_window_minutes]
        type.completion_window_minutes = params[:completion_window_minutes]
        type.lifecycle = Lifecycle.build(params[:lifecycle], context: "#{context}[:lifecycle]") unless params[:lifecycle].nil?
        type.recovery_point_tags = Tags.build(params[:recovery_point_tags], context: "#{context}[:recovery_point_tags]") unless params[:recovery_point_tags].nil?
        type.copy_actions = CopyActions.build(params[:copy_actions], context: "#{context}[:copy_actions]") unless params[:copy_actions].nil?
        type.enable_continuous_backup = params[:enable_continuous_backup]
        type
      end
    end

    module BackupRules
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BackupRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BackupRulesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BackupRuleInput.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BackupSelection
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BackupSelection, context: context)
        type = Types::BackupSelection.new
        type.selection_name = params[:selection_name]
        type.iam_role_arn = params[:iam_role_arn]
        type.resources = ResourceArns.build(params[:resources], context: "#{context}[:resources]") unless params[:resources].nil?
        type.list_of_tags = ListOfTags.build(params[:list_of_tags], context: "#{context}[:list_of_tags]") unless params[:list_of_tags].nil?
        type.not_resources = ResourceArns.build(params[:not_resources], context: "#{context}[:not_resources]") unless params[:not_resources].nil?
        type.conditions = Conditions.build(params[:conditions], context: "#{context}[:conditions]") unless params[:conditions].nil?
        type
      end
    end

    module BackupSelectionsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BackupSelectionsListMember.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BackupSelectionsListMember
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BackupSelectionsListMember, context: context)
        type = Types::BackupSelectionsListMember.new
        type.selection_id = params[:selection_id]
        type.selection_name = params[:selection_name]
        type.backup_plan_id = params[:backup_plan_id]
        type.creation_date = params[:creation_date]
        type.creator_request_id = params[:creator_request_id]
        type.iam_role_arn = params[:iam_role_arn]
        type
      end
    end

    module BackupVaultEvents
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module BackupVaultList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BackupVaultListMember.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BackupVaultListMember
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BackupVaultListMember, context: context)
        type = Types::BackupVaultListMember.new
        type.backup_vault_name = params[:backup_vault_name]
        type.backup_vault_arn = params[:backup_vault_arn]
        type.creation_date = params[:creation_date]
        type.encryption_key_arn = params[:encryption_key_arn]
        type.creator_request_id = params[:creator_request_id]
        type.number_of_recovery_points = params[:number_of_recovery_points]
        type.locked = params[:locked]
        type.min_retention_days = params[:min_retention_days]
        type.max_retention_days = params[:max_retention_days]
        type.lock_date = params[:lock_date]
        type
      end
    end

    module CalculatedLifecycle
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CalculatedLifecycle, context: context)
        type = Types::CalculatedLifecycle.new
        type.move_to_cold_storage_at = params[:move_to_cold_storage_at]
        type.delete_at = params[:delete_at]
        type
      end
    end

    module ComplianceResourceIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Condition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Condition, context: context)
        type = Types::Condition.new
        type.condition_type = params[:condition_type]
        type.condition_key = params[:condition_key]
        type.condition_value = params[:condition_value]
        type
      end
    end

    module ConditionParameter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConditionParameter, context: context)
        type = Types::ConditionParameter.new
        type.condition_key = params[:condition_key]
        type.condition_value = params[:condition_value]
        type
      end
    end

    module ConditionParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConditionParameter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Conditions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Conditions, context: context)
        type = Types::Conditions.new
        type.string_equals = ConditionParameters.build(params[:string_equals], context: "#{context}[:string_equals]") unless params[:string_equals].nil?
        type.string_not_equals = ConditionParameters.build(params[:string_not_equals], context: "#{context}[:string_not_equals]") unless params[:string_not_equals].nil?
        type.string_like = ConditionParameters.build(params[:string_like], context: "#{context}[:string_like]") unless params[:string_like].nil?
        type.string_not_like = ConditionParameters.build(params[:string_not_like], context: "#{context}[:string_not_like]") unless params[:string_not_like].nil?
        type
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.code = params[:code]
        type.message = params[:message]
        type.type = params[:type]
        type.context = params[:context]
        type
      end
    end

    module ControlInputParameter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ControlInputParameter, context: context)
        type = Types::ControlInputParameter.new
        type.parameter_name = params[:parameter_name]
        type.parameter_value = params[:parameter_value]
        type
      end
    end

    module ControlInputParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ControlInputParameter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ControlScope
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ControlScope, context: context)
        type = Types::ControlScope.new
        type.compliance_resource_ids = ComplianceResourceIdList.build(params[:compliance_resource_ids], context: "#{context}[:compliance_resource_ids]") unless params[:compliance_resource_ids].nil?
        type.compliance_resource_types = ResourceTypeList.build(params[:compliance_resource_types], context: "#{context}[:compliance_resource_types]") unless params[:compliance_resource_types].nil?
        type.tags = StringMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CopyAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CopyAction, context: context)
        type = Types::CopyAction.new
        type.lifecycle = Lifecycle.build(params[:lifecycle], context: "#{context}[:lifecycle]") unless params[:lifecycle].nil?
        type.destination_backup_vault_arn = params[:destination_backup_vault_arn]
        type
      end
    end

    module CopyActions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CopyAction.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CopyJob
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CopyJob, context: context)
        type = Types::CopyJob.new
        type.account_id = params[:account_id]
        type.copy_job_id = params[:copy_job_id]
        type.source_backup_vault_arn = params[:source_backup_vault_arn]
        type.source_recovery_point_arn = params[:source_recovery_point_arn]
        type.destination_backup_vault_arn = params[:destination_backup_vault_arn]
        type.destination_recovery_point_arn = params[:destination_recovery_point_arn]
        type.resource_arn = params[:resource_arn]
        type.creation_date = params[:creation_date]
        type.completion_date = params[:completion_date]
        type.state = params[:state]
        type.status_message = params[:status_message]
        type.backup_size_in_bytes = params[:backup_size_in_bytes]
        type.iam_role_arn = params[:iam_role_arn]
        type.created_by = RecoveryPointCreator.build(params[:created_by], context: "#{context}[:created_by]") unless params[:created_by].nil?
        type.resource_type = params[:resource_type]
        type
      end
    end

    module CopyJobsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CopyJob.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CreateBackupPlanInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBackupPlanInput, context: context)
        type = Types::CreateBackupPlanInput.new
        type.backup_plan = BackupPlanInput.build(params[:backup_plan], context: "#{context}[:backup_plan]") unless params[:backup_plan].nil?
        type.backup_plan_tags = Tags.build(params[:backup_plan_tags], context: "#{context}[:backup_plan_tags]") unless params[:backup_plan_tags].nil?
        type.creator_request_id = params[:creator_request_id]
        type
      end
    end

    module CreateBackupPlanOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBackupPlanOutput, context: context)
        type = Types::CreateBackupPlanOutput.new
        type.backup_plan_id = params[:backup_plan_id]
        type.backup_plan_arn = params[:backup_plan_arn]
        type.creation_date = params[:creation_date]
        type.version_id = params[:version_id]
        type.advanced_backup_settings = AdvancedBackupSettings.build(params[:advanced_backup_settings], context: "#{context}[:advanced_backup_settings]") unless params[:advanced_backup_settings].nil?
        type
      end
    end

    module CreateBackupSelectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBackupSelectionInput, context: context)
        type = Types::CreateBackupSelectionInput.new
        type.backup_plan_id = params[:backup_plan_id]
        type.backup_selection = BackupSelection.build(params[:backup_selection], context: "#{context}[:backup_selection]") unless params[:backup_selection].nil?
        type.creator_request_id = params[:creator_request_id]
        type
      end
    end

    module CreateBackupSelectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBackupSelectionOutput, context: context)
        type = Types::CreateBackupSelectionOutput.new
        type.selection_id = params[:selection_id]
        type.backup_plan_id = params[:backup_plan_id]
        type.creation_date = params[:creation_date]
        type
      end
    end

    module CreateBackupVaultInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBackupVaultInput, context: context)
        type = Types::CreateBackupVaultInput.new
        type.backup_vault_name = params[:backup_vault_name]
        type.backup_vault_tags = Tags.build(params[:backup_vault_tags], context: "#{context}[:backup_vault_tags]") unless params[:backup_vault_tags].nil?
        type.encryption_key_arn = params[:encryption_key_arn]
        type.creator_request_id = params[:creator_request_id]
        type
      end
    end

    module CreateBackupVaultOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBackupVaultOutput, context: context)
        type = Types::CreateBackupVaultOutput.new
        type.backup_vault_name = params[:backup_vault_name]
        type.backup_vault_arn = params[:backup_vault_arn]
        type.creation_date = params[:creation_date]
        type
      end
    end

    module CreateFrameworkInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFrameworkInput, context: context)
        type = Types::CreateFrameworkInput.new
        type.framework_name = params[:framework_name]
        type.framework_description = params[:framework_description]
        type.framework_controls = FrameworkControls.build(params[:framework_controls], context: "#{context}[:framework_controls]") unless params[:framework_controls].nil?
        type.idempotency_token = params[:idempotency_token] || SecureRandom.uuid
        type.framework_tags = StringMap.build(params[:framework_tags], context: "#{context}[:framework_tags]") unless params[:framework_tags].nil?
        type
      end
    end

    module CreateFrameworkOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFrameworkOutput, context: context)
        type = Types::CreateFrameworkOutput.new
        type.framework_name = params[:framework_name]
        type.framework_arn = params[:framework_arn]
        type
      end
    end

    module CreateReportPlanInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateReportPlanInput, context: context)
        type = Types::CreateReportPlanInput.new
        type.report_plan_name = params[:report_plan_name]
        type.report_plan_description = params[:report_plan_description]
        type.report_delivery_channel = ReportDeliveryChannel.build(params[:report_delivery_channel], context: "#{context}[:report_delivery_channel]") unless params[:report_delivery_channel].nil?
        type.report_setting = ReportSetting.build(params[:report_setting], context: "#{context}[:report_setting]") unless params[:report_setting].nil?
        type.report_plan_tags = StringMap.build(params[:report_plan_tags], context: "#{context}[:report_plan_tags]") unless params[:report_plan_tags].nil?
        type.idempotency_token = params[:idempotency_token] || SecureRandom.uuid
        type
      end
    end

    module CreateReportPlanOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateReportPlanOutput, context: context)
        type = Types::CreateReportPlanOutput.new
        type.report_plan_name = params[:report_plan_name]
        type.report_plan_arn = params[:report_plan_arn]
        type.creation_time = params[:creation_time]
        type
      end
    end

    module DeleteBackupPlanInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBackupPlanInput, context: context)
        type = Types::DeleteBackupPlanInput.new
        type.backup_plan_id = params[:backup_plan_id]
        type
      end
    end

    module DeleteBackupPlanOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBackupPlanOutput, context: context)
        type = Types::DeleteBackupPlanOutput.new
        type.backup_plan_id = params[:backup_plan_id]
        type.backup_plan_arn = params[:backup_plan_arn]
        type.deletion_date = params[:deletion_date]
        type.version_id = params[:version_id]
        type
      end
    end

    module DeleteBackupSelectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBackupSelectionInput, context: context)
        type = Types::DeleteBackupSelectionInput.new
        type.backup_plan_id = params[:backup_plan_id]
        type.selection_id = params[:selection_id]
        type
      end
    end

    module DeleteBackupSelectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBackupSelectionOutput, context: context)
        type = Types::DeleteBackupSelectionOutput.new
        type
      end
    end

    module DeleteBackupVaultAccessPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBackupVaultAccessPolicyInput, context: context)
        type = Types::DeleteBackupVaultAccessPolicyInput.new
        type.backup_vault_name = params[:backup_vault_name]
        type
      end
    end

    module DeleteBackupVaultAccessPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBackupVaultAccessPolicyOutput, context: context)
        type = Types::DeleteBackupVaultAccessPolicyOutput.new
        type
      end
    end

    module DeleteBackupVaultInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBackupVaultInput, context: context)
        type = Types::DeleteBackupVaultInput.new
        type.backup_vault_name = params[:backup_vault_name]
        type
      end
    end

    module DeleteBackupVaultLockConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBackupVaultLockConfigurationInput, context: context)
        type = Types::DeleteBackupVaultLockConfigurationInput.new
        type.backup_vault_name = params[:backup_vault_name]
        type
      end
    end

    module DeleteBackupVaultLockConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBackupVaultLockConfigurationOutput, context: context)
        type = Types::DeleteBackupVaultLockConfigurationOutput.new
        type
      end
    end

    module DeleteBackupVaultNotificationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBackupVaultNotificationsInput, context: context)
        type = Types::DeleteBackupVaultNotificationsInput.new
        type.backup_vault_name = params[:backup_vault_name]
        type
      end
    end

    module DeleteBackupVaultNotificationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBackupVaultNotificationsOutput, context: context)
        type = Types::DeleteBackupVaultNotificationsOutput.new
        type
      end
    end

    module DeleteBackupVaultOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBackupVaultOutput, context: context)
        type = Types::DeleteBackupVaultOutput.new
        type
      end
    end

    module DeleteFrameworkInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFrameworkInput, context: context)
        type = Types::DeleteFrameworkInput.new
        type.framework_name = params[:framework_name]
        type
      end
    end

    module DeleteFrameworkOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFrameworkOutput, context: context)
        type = Types::DeleteFrameworkOutput.new
        type
      end
    end

    module DeleteRecoveryPointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRecoveryPointInput, context: context)
        type = Types::DeleteRecoveryPointInput.new
        type.backup_vault_name = params[:backup_vault_name]
        type.recovery_point_arn = params[:recovery_point_arn]
        type
      end
    end

    module DeleteRecoveryPointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRecoveryPointOutput, context: context)
        type = Types::DeleteRecoveryPointOutput.new
        type
      end
    end

    module DeleteReportPlanInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteReportPlanInput, context: context)
        type = Types::DeleteReportPlanInput.new
        type.report_plan_name = params[:report_plan_name]
        type
      end
    end

    module DeleteReportPlanOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteReportPlanOutput, context: context)
        type = Types::DeleteReportPlanOutput.new
        type
      end
    end

    module DependencyFailureException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DependencyFailureException, context: context)
        type = Types::DependencyFailureException.new
        type.code = params[:code]
        type.message = params[:message]
        type.type = params[:type]
        type.context = params[:context]
        type
      end
    end

    module DescribeBackupJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBackupJobInput, context: context)
        type = Types::DescribeBackupJobInput.new
        type.backup_job_id = params[:backup_job_id]
        type
      end
    end

    module DescribeBackupJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBackupJobOutput, context: context)
        type = Types::DescribeBackupJobOutput.new
        type.account_id = params[:account_id]
        type.backup_job_id = params[:backup_job_id]
        type.backup_vault_name = params[:backup_vault_name]
        type.backup_vault_arn = params[:backup_vault_arn]
        type.recovery_point_arn = params[:recovery_point_arn]
        type.resource_arn = params[:resource_arn]
        type.creation_date = params[:creation_date]
        type.completion_date = params[:completion_date]
        type.state = params[:state]
        type.status_message = params[:status_message]
        type.percent_done = params[:percent_done]
        type.backup_size_in_bytes = params[:backup_size_in_bytes]
        type.iam_role_arn = params[:iam_role_arn]
        type.created_by = RecoveryPointCreator.build(params[:created_by], context: "#{context}[:created_by]") unless params[:created_by].nil?
        type.resource_type = params[:resource_type]
        type.bytes_transferred = params[:bytes_transferred]
        type.expected_completion_date = params[:expected_completion_date]
        type.start_by = params[:start_by]
        type.backup_options = BackupOptions.build(params[:backup_options], context: "#{context}[:backup_options]") unless params[:backup_options].nil?
        type.backup_type = params[:backup_type]
        type
      end
    end

    module DescribeBackupVaultInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBackupVaultInput, context: context)
        type = Types::DescribeBackupVaultInput.new
        type.backup_vault_name = params[:backup_vault_name]
        type
      end
    end

    module DescribeBackupVaultOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBackupVaultOutput, context: context)
        type = Types::DescribeBackupVaultOutput.new
        type.backup_vault_name = params[:backup_vault_name]
        type.backup_vault_arn = params[:backup_vault_arn]
        type.encryption_key_arn = params[:encryption_key_arn]
        type.creation_date = params[:creation_date]
        type.creator_request_id = params[:creator_request_id]
        type.number_of_recovery_points = params[:number_of_recovery_points]
        type.locked = params[:locked]
        type.min_retention_days = params[:min_retention_days]
        type.max_retention_days = params[:max_retention_days]
        type.lock_date = params[:lock_date]
        type
      end
    end

    module DescribeCopyJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCopyJobInput, context: context)
        type = Types::DescribeCopyJobInput.new
        type.copy_job_id = params[:copy_job_id]
        type
      end
    end

    module DescribeCopyJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCopyJobOutput, context: context)
        type = Types::DescribeCopyJobOutput.new
        type.copy_job = CopyJob.build(params[:copy_job], context: "#{context}[:copy_job]") unless params[:copy_job].nil?
        type
      end
    end

    module DescribeFrameworkInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFrameworkInput, context: context)
        type = Types::DescribeFrameworkInput.new
        type.framework_name = params[:framework_name]
        type
      end
    end

    module DescribeFrameworkOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFrameworkOutput, context: context)
        type = Types::DescribeFrameworkOutput.new
        type.framework_name = params[:framework_name]
        type.framework_arn = params[:framework_arn]
        type.framework_description = params[:framework_description]
        type.framework_controls = FrameworkControls.build(params[:framework_controls], context: "#{context}[:framework_controls]") unless params[:framework_controls].nil?
        type.creation_time = params[:creation_time]
        type.deployment_status = params[:deployment_status]
        type.framework_status = params[:framework_status]
        type.idempotency_token = params[:idempotency_token]
        type
      end
    end

    module DescribeGlobalSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeGlobalSettingsInput, context: context)
        type = Types::DescribeGlobalSettingsInput.new
        type
      end
    end

    module DescribeGlobalSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeGlobalSettingsOutput, context: context)
        type = Types::DescribeGlobalSettingsOutput.new
        type.global_settings = GlobalSettings.build(params[:global_settings], context: "#{context}[:global_settings]") unless params[:global_settings].nil?
        type.last_update_time = params[:last_update_time]
        type
      end
    end

    module DescribeProtectedResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeProtectedResourceInput, context: context)
        type = Types::DescribeProtectedResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module DescribeProtectedResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeProtectedResourceOutput, context: context)
        type = Types::DescribeProtectedResourceOutput.new
        type.resource_arn = params[:resource_arn]
        type.resource_type = params[:resource_type]
        type.last_backup_time = params[:last_backup_time]
        type
      end
    end

    module DescribeRecoveryPointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRecoveryPointInput, context: context)
        type = Types::DescribeRecoveryPointInput.new
        type.backup_vault_name = params[:backup_vault_name]
        type.recovery_point_arn = params[:recovery_point_arn]
        type
      end
    end

    module DescribeRecoveryPointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRecoveryPointOutput, context: context)
        type = Types::DescribeRecoveryPointOutput.new
        type.recovery_point_arn = params[:recovery_point_arn]
        type.backup_vault_name = params[:backup_vault_name]
        type.backup_vault_arn = params[:backup_vault_arn]
        type.source_backup_vault_arn = params[:source_backup_vault_arn]
        type.resource_arn = params[:resource_arn]
        type.resource_type = params[:resource_type]
        type.created_by = RecoveryPointCreator.build(params[:created_by], context: "#{context}[:created_by]") unless params[:created_by].nil?
        type.iam_role_arn = params[:iam_role_arn]
        type.status = params[:status]
        type.status_message = params[:status_message]
        type.creation_date = params[:creation_date]
        type.completion_date = params[:completion_date]
        type.backup_size_in_bytes = params[:backup_size_in_bytes]
        type.calculated_lifecycle = CalculatedLifecycle.build(params[:calculated_lifecycle], context: "#{context}[:calculated_lifecycle]") unless params[:calculated_lifecycle].nil?
        type.lifecycle = Lifecycle.build(params[:lifecycle], context: "#{context}[:lifecycle]") unless params[:lifecycle].nil?
        type.encryption_key_arn = params[:encryption_key_arn]
        type.is_encrypted = params[:is_encrypted]
        type.storage_class = params[:storage_class]
        type.last_restore_time = params[:last_restore_time]
        type
      end
    end

    module DescribeRegionSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRegionSettingsInput, context: context)
        type = Types::DescribeRegionSettingsInput.new
        type
      end
    end

    module DescribeRegionSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRegionSettingsOutput, context: context)
        type = Types::DescribeRegionSettingsOutput.new
        type.resource_type_opt_in_preference = ResourceTypeOptInPreference.build(params[:resource_type_opt_in_preference], context: "#{context}[:resource_type_opt_in_preference]") unless params[:resource_type_opt_in_preference].nil?
        type.resource_type_management_preference = ResourceTypeManagementPreference.build(params[:resource_type_management_preference], context: "#{context}[:resource_type_management_preference]") unless params[:resource_type_management_preference].nil?
        type
      end
    end

    module DescribeReportJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReportJobInput, context: context)
        type = Types::DescribeReportJobInput.new
        type.report_job_id = params[:report_job_id]
        type
      end
    end

    module DescribeReportJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReportJobOutput, context: context)
        type = Types::DescribeReportJobOutput.new
        type.report_job = ReportJob.build(params[:report_job], context: "#{context}[:report_job]") unless params[:report_job].nil?
        type
      end
    end

    module DescribeReportPlanInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReportPlanInput, context: context)
        type = Types::DescribeReportPlanInput.new
        type.report_plan_name = params[:report_plan_name]
        type
      end
    end

    module DescribeReportPlanOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReportPlanOutput, context: context)
        type = Types::DescribeReportPlanOutput.new
        type.report_plan = ReportPlan.build(params[:report_plan], context: "#{context}[:report_plan]") unless params[:report_plan].nil?
        type
      end
    end

    module DescribeRestoreJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRestoreJobInput, context: context)
        type = Types::DescribeRestoreJobInput.new
        type.restore_job_id = params[:restore_job_id]
        type
      end
    end

    module DescribeRestoreJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRestoreJobOutput, context: context)
        type = Types::DescribeRestoreJobOutput.new
        type.account_id = params[:account_id]
        type.restore_job_id = params[:restore_job_id]
        type.recovery_point_arn = params[:recovery_point_arn]
        type.creation_date = params[:creation_date]
        type.completion_date = params[:completion_date]
        type.status = params[:status]
        type.status_message = params[:status_message]
        type.percent_done = params[:percent_done]
        type.backup_size_in_bytes = params[:backup_size_in_bytes]
        type.iam_role_arn = params[:iam_role_arn]
        type.expected_completion_time_minutes = params[:expected_completion_time_minutes]
        type.created_resource_arn = params[:created_resource_arn]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module DisassociateRecoveryPointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateRecoveryPointInput, context: context)
        type = Types::DisassociateRecoveryPointInput.new
        type.backup_vault_name = params[:backup_vault_name]
        type.recovery_point_arn = params[:recovery_point_arn]
        type
      end
    end

    module DisassociateRecoveryPointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateRecoveryPointOutput, context: context)
        type = Types::DisassociateRecoveryPointOutput.new
        type
      end
    end

    module ExportBackupPlanTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportBackupPlanTemplateInput, context: context)
        type = Types::ExportBackupPlanTemplateInput.new
        type.backup_plan_id = params[:backup_plan_id]
        type
      end
    end

    module ExportBackupPlanTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportBackupPlanTemplateOutput, context: context)
        type = Types::ExportBackupPlanTemplateOutput.new
        type.backup_plan_template_json = params[:backup_plan_template_json]
        type
      end
    end

    module FormatList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Framework
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Framework, context: context)
        type = Types::Framework.new
        type.framework_name = params[:framework_name]
        type.framework_arn = params[:framework_arn]
        type.framework_description = params[:framework_description]
        type.number_of_controls = params[:number_of_controls]
        type.creation_time = params[:creation_time]
        type.deployment_status = params[:deployment_status]
        type
      end
    end

    module FrameworkControl
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FrameworkControl, context: context)
        type = Types::FrameworkControl.new
        type.control_name = params[:control_name]
        type.control_input_parameters = ControlInputParameters.build(params[:control_input_parameters], context: "#{context}[:control_input_parameters]") unless params[:control_input_parameters].nil?
        type.control_scope = ControlScope.build(params[:control_scope], context: "#{context}[:control_scope]") unless params[:control_scope].nil?
        type
      end
    end

    module FrameworkControls
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FrameworkControl.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FrameworkList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Framework.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GetBackupPlanFromJSONInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBackupPlanFromJSONInput, context: context)
        type = Types::GetBackupPlanFromJSONInput.new
        type.backup_plan_template_json = params[:backup_plan_template_json]
        type
      end
    end

    module GetBackupPlanFromJSONOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBackupPlanFromJSONOutput, context: context)
        type = Types::GetBackupPlanFromJSONOutput.new
        type.backup_plan = BackupPlan.build(params[:backup_plan], context: "#{context}[:backup_plan]") unless params[:backup_plan].nil?
        type
      end
    end

    module GetBackupPlanFromTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBackupPlanFromTemplateInput, context: context)
        type = Types::GetBackupPlanFromTemplateInput.new
        type.backup_plan_template_id = params[:backup_plan_template_id]
        type
      end
    end

    module GetBackupPlanFromTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBackupPlanFromTemplateOutput, context: context)
        type = Types::GetBackupPlanFromTemplateOutput.new
        type.backup_plan_document = BackupPlan.build(params[:backup_plan_document], context: "#{context}[:backup_plan_document]") unless params[:backup_plan_document].nil?
        type
      end
    end

    module GetBackupPlanInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBackupPlanInput, context: context)
        type = Types::GetBackupPlanInput.new
        type.backup_plan_id = params[:backup_plan_id]
        type.version_id = params[:version_id]
        type
      end
    end

    module GetBackupPlanOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBackupPlanOutput, context: context)
        type = Types::GetBackupPlanOutput.new
        type.backup_plan = BackupPlan.build(params[:backup_plan], context: "#{context}[:backup_plan]") unless params[:backup_plan].nil?
        type.backup_plan_id = params[:backup_plan_id]
        type.backup_plan_arn = params[:backup_plan_arn]
        type.version_id = params[:version_id]
        type.creator_request_id = params[:creator_request_id]
        type.creation_date = params[:creation_date]
        type.deletion_date = params[:deletion_date]
        type.last_execution_date = params[:last_execution_date]
        type.advanced_backup_settings = AdvancedBackupSettings.build(params[:advanced_backup_settings], context: "#{context}[:advanced_backup_settings]") unless params[:advanced_backup_settings].nil?
        type
      end
    end

    module GetBackupSelectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBackupSelectionInput, context: context)
        type = Types::GetBackupSelectionInput.new
        type.backup_plan_id = params[:backup_plan_id]
        type.selection_id = params[:selection_id]
        type
      end
    end

    module GetBackupSelectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBackupSelectionOutput, context: context)
        type = Types::GetBackupSelectionOutput.new
        type.backup_selection = BackupSelection.build(params[:backup_selection], context: "#{context}[:backup_selection]") unless params[:backup_selection].nil?
        type.selection_id = params[:selection_id]
        type.backup_plan_id = params[:backup_plan_id]
        type.creation_date = params[:creation_date]
        type.creator_request_id = params[:creator_request_id]
        type
      end
    end

    module GetBackupVaultAccessPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBackupVaultAccessPolicyInput, context: context)
        type = Types::GetBackupVaultAccessPolicyInput.new
        type.backup_vault_name = params[:backup_vault_name]
        type
      end
    end

    module GetBackupVaultAccessPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBackupVaultAccessPolicyOutput, context: context)
        type = Types::GetBackupVaultAccessPolicyOutput.new
        type.backup_vault_name = params[:backup_vault_name]
        type.backup_vault_arn = params[:backup_vault_arn]
        type.policy = params[:policy]
        type
      end
    end

    module GetBackupVaultNotificationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBackupVaultNotificationsInput, context: context)
        type = Types::GetBackupVaultNotificationsInput.new
        type.backup_vault_name = params[:backup_vault_name]
        type
      end
    end

    module GetBackupVaultNotificationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBackupVaultNotificationsOutput, context: context)
        type = Types::GetBackupVaultNotificationsOutput.new
        type.backup_vault_name = params[:backup_vault_name]
        type.backup_vault_arn = params[:backup_vault_arn]
        type.sns_topic_arn = params[:sns_topic_arn]
        type.backup_vault_events = BackupVaultEvents.build(params[:backup_vault_events], context: "#{context}[:backup_vault_events]") unless params[:backup_vault_events].nil?
        type
      end
    end

    module GetRecoveryPointRestoreMetadataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRecoveryPointRestoreMetadataInput, context: context)
        type = Types::GetRecoveryPointRestoreMetadataInput.new
        type.backup_vault_name = params[:backup_vault_name]
        type.recovery_point_arn = params[:recovery_point_arn]
        type
      end
    end

    module GetRecoveryPointRestoreMetadataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRecoveryPointRestoreMetadataOutput, context: context)
        type = Types::GetRecoveryPointRestoreMetadataOutput.new
        type.backup_vault_arn = params[:backup_vault_arn]
        type.recovery_point_arn = params[:recovery_point_arn]
        type.restore_metadata = Metadata.build(params[:restore_metadata], context: "#{context}[:restore_metadata]") unless params[:restore_metadata].nil?
        type
      end
    end

    module GetSupportedResourceTypesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSupportedResourceTypesInput, context: context)
        type = Types::GetSupportedResourceTypesInput.new
        type
      end
    end

    module GetSupportedResourceTypesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSupportedResourceTypesOutput, context: context)
        type = Types::GetSupportedResourceTypesOutput.new
        type.resource_types = ResourceTypes.build(params[:resource_types], context: "#{context}[:resource_types]") unless params[:resource_types].nil?
        type
      end
    end

    module GlobalSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module InvalidParameterValueException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidParameterValueException, context: context)
        type = Types::InvalidParameterValueException.new
        type.code = params[:code]
        type.message = params[:message]
        type.type = params[:type]
        type.context = params[:context]
        type
      end
    end

    module InvalidRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRequestException, context: context)
        type = Types::InvalidRequestException.new
        type.code = params[:code]
        type.message = params[:message]
        type.type = params[:type]
        type.context = params[:context]
        type
      end
    end

    module InvalidResourceStateException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidResourceStateException, context: context)
        type = Types::InvalidResourceStateException.new
        type.code = params[:code]
        type.message = params[:message]
        type.type = params[:type]
        type.context = params[:context]
        type
      end
    end

    module Lifecycle
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Lifecycle, context: context)
        type = Types::Lifecycle.new
        type.move_to_cold_storage_after_days = params[:move_to_cold_storage_after_days]
        type.delete_after_days = params[:delete_after_days]
        type
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.code = params[:code]
        type.message = params[:message]
        type.type = params[:type]
        type.context = params[:context]
        type
      end
    end

    module ListBackupJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBackupJobsInput, context: context)
        type = Types::ListBackupJobsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.by_resource_arn = params[:by_resource_arn]
        type.by_state = params[:by_state]
        type.by_backup_vault_name = params[:by_backup_vault_name]
        type.by_created_before = params[:by_created_before]
        type.by_created_after = params[:by_created_after]
        type.by_resource_type = params[:by_resource_type]
        type.by_account_id = params[:by_account_id]
        type.by_complete_after = params[:by_complete_after]
        type.by_complete_before = params[:by_complete_before]
        type
      end
    end

    module ListBackupJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBackupJobsOutput, context: context)
        type = Types::ListBackupJobsOutput.new
        type.backup_jobs = BackupJobsList.build(params[:backup_jobs], context: "#{context}[:backup_jobs]") unless params[:backup_jobs].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListBackupPlanTemplatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBackupPlanTemplatesInput, context: context)
        type = Types::ListBackupPlanTemplatesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListBackupPlanTemplatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBackupPlanTemplatesOutput, context: context)
        type = Types::ListBackupPlanTemplatesOutput.new
        type.next_token = params[:next_token]
        type.backup_plan_templates_list = BackupPlanTemplatesList.build(params[:backup_plan_templates_list], context: "#{context}[:backup_plan_templates_list]") unless params[:backup_plan_templates_list].nil?
        type
      end
    end

    module ListBackupPlanVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBackupPlanVersionsInput, context: context)
        type = Types::ListBackupPlanVersionsInput.new
        type.backup_plan_id = params[:backup_plan_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListBackupPlanVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBackupPlanVersionsOutput, context: context)
        type = Types::ListBackupPlanVersionsOutput.new
        type.next_token = params[:next_token]
        type.backup_plan_versions_list = BackupPlanVersionsList.build(params[:backup_plan_versions_list], context: "#{context}[:backup_plan_versions_list]") unless params[:backup_plan_versions_list].nil?
        type
      end
    end

    module ListBackupPlansInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBackupPlansInput, context: context)
        type = Types::ListBackupPlansInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.include_deleted = params[:include_deleted]
        type
      end
    end

    module ListBackupPlansOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBackupPlansOutput, context: context)
        type = Types::ListBackupPlansOutput.new
        type.next_token = params[:next_token]
        type.backup_plans_list = BackupPlansList.build(params[:backup_plans_list], context: "#{context}[:backup_plans_list]") unless params[:backup_plans_list].nil?
        type
      end
    end

    module ListBackupSelectionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBackupSelectionsInput, context: context)
        type = Types::ListBackupSelectionsInput.new
        type.backup_plan_id = params[:backup_plan_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListBackupSelectionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBackupSelectionsOutput, context: context)
        type = Types::ListBackupSelectionsOutput.new
        type.next_token = params[:next_token]
        type.backup_selections_list = BackupSelectionsList.build(params[:backup_selections_list], context: "#{context}[:backup_selections_list]") unless params[:backup_selections_list].nil?
        type
      end
    end

    module ListBackupVaultsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBackupVaultsInput, context: context)
        type = Types::ListBackupVaultsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListBackupVaultsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBackupVaultsOutput, context: context)
        type = Types::ListBackupVaultsOutput.new
        type.backup_vault_list = BackupVaultList.build(params[:backup_vault_list], context: "#{context}[:backup_vault_list]") unless params[:backup_vault_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListCopyJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCopyJobsInput, context: context)
        type = Types::ListCopyJobsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.by_resource_arn = params[:by_resource_arn]
        type.by_state = params[:by_state]
        type.by_created_before = params[:by_created_before]
        type.by_created_after = params[:by_created_after]
        type.by_resource_type = params[:by_resource_type]
        type.by_destination_vault_arn = params[:by_destination_vault_arn]
        type.by_account_id = params[:by_account_id]
        type.by_complete_before = params[:by_complete_before]
        type.by_complete_after = params[:by_complete_after]
        type
      end
    end

    module ListCopyJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCopyJobsOutput, context: context)
        type = Types::ListCopyJobsOutput.new
        type.copy_jobs = CopyJobsList.build(params[:copy_jobs], context: "#{context}[:copy_jobs]") unless params[:copy_jobs].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListFrameworksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFrameworksInput, context: context)
        type = Types::ListFrameworksInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListFrameworksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFrameworksOutput, context: context)
        type = Types::ListFrameworksOutput.new
        type.frameworks = FrameworkList.build(params[:frameworks], context: "#{context}[:frameworks]") unless params[:frameworks].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListOfTags
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Condition.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListProtectedResourcesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProtectedResourcesInput, context: context)
        type = Types::ListProtectedResourcesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListProtectedResourcesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProtectedResourcesOutput, context: context)
        type = Types::ListProtectedResourcesOutput.new
        type.results = ProtectedResourcesList.build(params[:results], context: "#{context}[:results]") unless params[:results].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListRecoveryPointsByBackupVaultInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRecoveryPointsByBackupVaultInput, context: context)
        type = Types::ListRecoveryPointsByBackupVaultInput.new
        type.backup_vault_name = params[:backup_vault_name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.by_resource_arn = params[:by_resource_arn]
        type.by_resource_type = params[:by_resource_type]
        type.by_backup_plan_id = params[:by_backup_plan_id]
        type.by_created_before = params[:by_created_before]
        type.by_created_after = params[:by_created_after]
        type
      end
    end

    module ListRecoveryPointsByBackupVaultOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRecoveryPointsByBackupVaultOutput, context: context)
        type = Types::ListRecoveryPointsByBackupVaultOutput.new
        type.next_token = params[:next_token]
        type.recovery_points = RecoveryPointByBackupVaultList.build(params[:recovery_points], context: "#{context}[:recovery_points]") unless params[:recovery_points].nil?
        type
      end
    end

    module ListRecoveryPointsByResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRecoveryPointsByResourceInput, context: context)
        type = Types::ListRecoveryPointsByResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListRecoveryPointsByResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRecoveryPointsByResourceOutput, context: context)
        type = Types::ListRecoveryPointsByResourceOutput.new
        type.next_token = params[:next_token]
        type.recovery_points = RecoveryPointByResourceList.build(params[:recovery_points], context: "#{context}[:recovery_points]") unless params[:recovery_points].nil?
        type
      end
    end

    module ListReportJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListReportJobsInput, context: context)
        type = Types::ListReportJobsInput.new
        type.by_report_plan_name = params[:by_report_plan_name]
        type.by_creation_before = params[:by_creation_before]
        type.by_creation_after = params[:by_creation_after]
        type.by_status = params[:by_status]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListReportJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListReportJobsOutput, context: context)
        type = Types::ListReportJobsOutput.new
        type.report_jobs = ReportJobList.build(params[:report_jobs], context: "#{context}[:report_jobs]") unless params[:report_jobs].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListReportPlansInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListReportPlansInput, context: context)
        type = Types::ListReportPlansInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListReportPlansOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListReportPlansOutput, context: context)
        type = Types::ListReportPlansOutput.new
        type.report_plans = ReportPlanList.build(params[:report_plans], context: "#{context}[:report_plans]") unless params[:report_plans].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListRestoreJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRestoreJobsInput, context: context)
        type = Types::ListRestoreJobsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.by_account_id = params[:by_account_id]
        type.by_created_before = params[:by_created_before]
        type.by_created_after = params[:by_created_after]
        type.by_status = params[:by_status]
        type.by_complete_before = params[:by_complete_before]
        type.by_complete_after = params[:by_complete_after]
        type
      end
    end

    module ListRestoreJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRestoreJobsOutput, context: context)
        type = Types::ListRestoreJobsOutput.new
        type.restore_jobs = RestoreJobsList.build(params[:restore_jobs], context: "#{context}[:restore_jobs]") unless params[:restore_jobs].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsInput, context: context)
        type = Types::ListTagsInput.new
        type.resource_arn = params[:resource_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsOutput, context: context)
        type = Types::ListTagsOutput.new
        type.next_token = params[:next_token]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module Metadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module MissingParameterValueException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MissingParameterValueException, context: context)
        type = Types::MissingParameterValueException.new
        type.code = params[:code]
        type.message = params[:message]
        type.type = params[:type]
        type.context = params[:context]
        type
      end
    end

    module ProtectedResource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProtectedResource, context: context)
        type = Types::ProtectedResource.new
        type.resource_arn = params[:resource_arn]
        type.resource_type = params[:resource_type]
        type.last_backup_time = params[:last_backup_time]
        type
      end
    end

    module ProtectedResourcesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProtectedResource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PutBackupVaultAccessPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutBackupVaultAccessPolicyInput, context: context)
        type = Types::PutBackupVaultAccessPolicyInput.new
        type.backup_vault_name = params[:backup_vault_name]
        type.policy = params[:policy]
        type
      end
    end

    module PutBackupVaultAccessPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutBackupVaultAccessPolicyOutput, context: context)
        type = Types::PutBackupVaultAccessPolicyOutput.new
        type
      end
    end

    module PutBackupVaultLockConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutBackupVaultLockConfigurationInput, context: context)
        type = Types::PutBackupVaultLockConfigurationInput.new
        type.backup_vault_name = params[:backup_vault_name]
        type.min_retention_days = params[:min_retention_days]
        type.max_retention_days = params[:max_retention_days]
        type.changeable_for_days = params[:changeable_for_days]
        type
      end
    end

    module PutBackupVaultLockConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutBackupVaultLockConfigurationOutput, context: context)
        type = Types::PutBackupVaultLockConfigurationOutput.new
        type
      end
    end

    module PutBackupVaultNotificationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutBackupVaultNotificationsInput, context: context)
        type = Types::PutBackupVaultNotificationsInput.new
        type.backup_vault_name = params[:backup_vault_name]
        type.sns_topic_arn = params[:sns_topic_arn]
        type.backup_vault_events = BackupVaultEvents.build(params[:backup_vault_events], context: "#{context}[:backup_vault_events]") unless params[:backup_vault_events].nil?
        type
      end
    end

    module PutBackupVaultNotificationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutBackupVaultNotificationsOutput, context: context)
        type = Types::PutBackupVaultNotificationsOutput.new
        type
      end
    end

    module RecoveryPointByBackupVault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecoveryPointByBackupVault, context: context)
        type = Types::RecoveryPointByBackupVault.new
        type.recovery_point_arn = params[:recovery_point_arn]
        type.backup_vault_name = params[:backup_vault_name]
        type.backup_vault_arn = params[:backup_vault_arn]
        type.source_backup_vault_arn = params[:source_backup_vault_arn]
        type.resource_arn = params[:resource_arn]
        type.resource_type = params[:resource_type]
        type.created_by = RecoveryPointCreator.build(params[:created_by], context: "#{context}[:created_by]") unless params[:created_by].nil?
        type.iam_role_arn = params[:iam_role_arn]
        type.status = params[:status]
        type.status_message = params[:status_message]
        type.creation_date = params[:creation_date]
        type.completion_date = params[:completion_date]
        type.backup_size_in_bytes = params[:backup_size_in_bytes]
        type.calculated_lifecycle = CalculatedLifecycle.build(params[:calculated_lifecycle], context: "#{context}[:calculated_lifecycle]") unless params[:calculated_lifecycle].nil?
        type.lifecycle = Lifecycle.build(params[:lifecycle], context: "#{context}[:lifecycle]") unless params[:lifecycle].nil?
        type.encryption_key_arn = params[:encryption_key_arn]
        type.is_encrypted = params[:is_encrypted]
        type.last_restore_time = params[:last_restore_time]
        type
      end
    end

    module RecoveryPointByBackupVaultList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RecoveryPointByBackupVault.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RecoveryPointByResource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecoveryPointByResource, context: context)
        type = Types::RecoveryPointByResource.new
        type.recovery_point_arn = params[:recovery_point_arn]
        type.creation_date = params[:creation_date]
        type.status = params[:status]
        type.status_message = params[:status_message]
        type.encryption_key_arn = params[:encryption_key_arn]
        type.backup_size_bytes = params[:backup_size_bytes]
        type.backup_vault_name = params[:backup_vault_name]
        type
      end
    end

    module RecoveryPointByResourceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RecoveryPointByResource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RecoveryPointCreator
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecoveryPointCreator, context: context)
        type = Types::RecoveryPointCreator.new
        type.backup_plan_id = params[:backup_plan_id]
        type.backup_plan_arn = params[:backup_plan_arn]
        type.backup_plan_version = params[:backup_plan_version]
        type.backup_rule_id = params[:backup_rule_id]
        type
      end
    end

    module ReportDeliveryChannel
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReportDeliveryChannel, context: context)
        type = Types::ReportDeliveryChannel.new
        type.s3_bucket_name = params[:s3_bucket_name]
        type.s3_key_prefix = params[:s3_key_prefix]
        type.formats = FormatList.build(params[:formats], context: "#{context}[:formats]") unless params[:formats].nil?
        type
      end
    end

    module ReportDestination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReportDestination, context: context)
        type = Types::ReportDestination.new
        type.s3_bucket_name = params[:s3_bucket_name]
        type.s3_keys = StringList.build(params[:s3_keys], context: "#{context}[:s3_keys]") unless params[:s3_keys].nil?
        type
      end
    end

    module ReportJob
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReportJob, context: context)
        type = Types::ReportJob.new
        type.report_job_id = params[:report_job_id]
        type.report_plan_arn = params[:report_plan_arn]
        type.report_template = params[:report_template]
        type.creation_time = params[:creation_time]
        type.completion_time = params[:completion_time]
        type.status = params[:status]
        type.status_message = params[:status_message]
        type.report_destination = ReportDestination.build(params[:report_destination], context: "#{context}[:report_destination]") unless params[:report_destination].nil?
        type
      end
    end

    module ReportJobList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReportJob.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReportPlan
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReportPlan, context: context)
        type = Types::ReportPlan.new
        type.report_plan_arn = params[:report_plan_arn]
        type.report_plan_name = params[:report_plan_name]
        type.report_plan_description = params[:report_plan_description]
        type.report_setting = ReportSetting.build(params[:report_setting], context: "#{context}[:report_setting]") unless params[:report_setting].nil?
        type.report_delivery_channel = ReportDeliveryChannel.build(params[:report_delivery_channel], context: "#{context}[:report_delivery_channel]") unless params[:report_delivery_channel].nil?
        type.deployment_status = params[:deployment_status]
        type.creation_time = params[:creation_time]
        type.last_attempted_execution_time = params[:last_attempted_execution_time]
        type.last_successful_execution_time = params[:last_successful_execution_time]
        type
      end
    end

    module ReportPlanList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReportPlan.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReportSetting
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReportSetting, context: context)
        type = Types::ReportSetting.new
        type.report_template = params[:report_template]
        type.framework_arns = StringList.build(params[:framework_arns], context: "#{context}[:framework_arns]") unless params[:framework_arns].nil?
        type.number_of_frameworks = params[:number_of_frameworks]
        type
      end
    end

    module ResourceArns
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.code = params[:code]
        type.message = params[:message]
        type.type = params[:type]
        type.context = params[:context]
        type
      end
    end

    module ResourceTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ResourceTypeManagementPreference
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ResourceTypeOptInPreference
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
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

    module RestoreJobsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RestoreJobsListMember.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RestoreJobsListMember
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RestoreJobsListMember, context: context)
        type = Types::RestoreJobsListMember.new
        type.account_id = params[:account_id]
        type.restore_job_id = params[:restore_job_id]
        type.recovery_point_arn = params[:recovery_point_arn]
        type.creation_date = params[:creation_date]
        type.completion_date = params[:completion_date]
        type.status = params[:status]
        type.status_message = params[:status_message]
        type.percent_done = params[:percent_done]
        type.backup_size_in_bytes = params[:backup_size_in_bytes]
        type.iam_role_arn = params[:iam_role_arn]
        type.expected_completion_time_minutes = params[:expected_completion_time_minutes]
        type.created_resource_arn = params[:created_resource_arn]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module ServiceUnavailableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceUnavailableException, context: context)
        type = Types::ServiceUnavailableException.new
        type.code = params[:code]
        type.message = params[:message]
        type.type = params[:type]
        type.context = params[:context]
        type
      end
    end

    module StartBackupJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartBackupJobInput, context: context)
        type = Types::StartBackupJobInput.new
        type.backup_vault_name = params[:backup_vault_name]
        type.resource_arn = params[:resource_arn]
        type.iam_role_arn = params[:iam_role_arn]
        type.idempotency_token = params[:idempotency_token]
        type.start_window_minutes = params[:start_window_minutes]
        type.complete_window_minutes = params[:complete_window_minutes]
        type.lifecycle = Lifecycle.build(params[:lifecycle], context: "#{context}[:lifecycle]") unless params[:lifecycle].nil?
        type.recovery_point_tags = Tags.build(params[:recovery_point_tags], context: "#{context}[:recovery_point_tags]") unless params[:recovery_point_tags].nil?
        type.backup_options = BackupOptions.build(params[:backup_options], context: "#{context}[:backup_options]") unless params[:backup_options].nil?
        type
      end
    end

    module StartBackupJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartBackupJobOutput, context: context)
        type = Types::StartBackupJobOutput.new
        type.backup_job_id = params[:backup_job_id]
        type.recovery_point_arn = params[:recovery_point_arn]
        type.creation_date = params[:creation_date]
        type
      end
    end

    module StartCopyJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartCopyJobInput, context: context)
        type = Types::StartCopyJobInput.new
        type.recovery_point_arn = params[:recovery_point_arn]
        type.source_backup_vault_name = params[:source_backup_vault_name]
        type.destination_backup_vault_arn = params[:destination_backup_vault_arn]
        type.iam_role_arn = params[:iam_role_arn]
        type.idempotency_token = params[:idempotency_token]
        type.lifecycle = Lifecycle.build(params[:lifecycle], context: "#{context}[:lifecycle]") unless params[:lifecycle].nil?
        type
      end
    end

    module StartCopyJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartCopyJobOutput, context: context)
        type = Types::StartCopyJobOutput.new
        type.copy_job_id = params[:copy_job_id]
        type.creation_date = params[:creation_date]
        type
      end
    end

    module StartReportJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartReportJobInput, context: context)
        type = Types::StartReportJobInput.new
        type.report_plan_name = params[:report_plan_name]
        type.idempotency_token = params[:idempotency_token] || SecureRandom.uuid
        type
      end
    end

    module StartReportJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartReportJobOutput, context: context)
        type = Types::StartReportJobOutput.new
        type.report_job_id = params[:report_job_id]
        type
      end
    end

    module StartRestoreJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartRestoreJobInput, context: context)
        type = Types::StartRestoreJobInput.new
        type.recovery_point_arn = params[:recovery_point_arn]
        type.metadata = Metadata.build(params[:metadata], context: "#{context}[:metadata]") unless params[:metadata].nil?
        type.iam_role_arn = params[:iam_role_arn]
        type.idempotency_token = params[:idempotency_token]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module StartRestoreJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartRestoreJobOutput, context: context)
        type = Types::StartRestoreJobOutput.new
        type.restore_job_id = params[:restore_job_id]
        type
      end
    end

    module StopBackupJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopBackupJobInput, context: context)
        type = Types::StopBackupJobInput.new
        type.backup_job_id = params[:backup_job_id]
        type
      end
    end

    module StopBackupJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopBackupJobOutput, context: context)
        type = Types::StopBackupJobOutput.new
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

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
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

    module Tags
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_key_list = TagKeyList.build(params[:tag_key_list], context: "#{context}[:tag_key_list]") unless params[:tag_key_list].nil?
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

    module UpdateBackupPlanInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBackupPlanInput, context: context)
        type = Types::UpdateBackupPlanInput.new
        type.backup_plan_id = params[:backup_plan_id]
        type.backup_plan = BackupPlanInput.build(params[:backup_plan], context: "#{context}[:backup_plan]") unless params[:backup_plan].nil?
        type
      end
    end

    module UpdateBackupPlanOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBackupPlanOutput, context: context)
        type = Types::UpdateBackupPlanOutput.new
        type.backup_plan_id = params[:backup_plan_id]
        type.backup_plan_arn = params[:backup_plan_arn]
        type.creation_date = params[:creation_date]
        type.version_id = params[:version_id]
        type.advanced_backup_settings = AdvancedBackupSettings.build(params[:advanced_backup_settings], context: "#{context}[:advanced_backup_settings]") unless params[:advanced_backup_settings].nil?
        type
      end
    end

    module UpdateFrameworkInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFrameworkInput, context: context)
        type = Types::UpdateFrameworkInput.new
        type.framework_name = params[:framework_name]
        type.framework_description = params[:framework_description]
        type.framework_controls = FrameworkControls.build(params[:framework_controls], context: "#{context}[:framework_controls]") unless params[:framework_controls].nil?
        type.idempotency_token = params[:idempotency_token] || SecureRandom.uuid
        type
      end
    end

    module UpdateFrameworkOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFrameworkOutput, context: context)
        type = Types::UpdateFrameworkOutput.new
        type.framework_name = params[:framework_name]
        type.framework_arn = params[:framework_arn]
        type.creation_time = params[:creation_time]
        type
      end
    end

    module UpdateGlobalSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGlobalSettingsInput, context: context)
        type = Types::UpdateGlobalSettingsInput.new
        type.global_settings = GlobalSettings.build(params[:global_settings], context: "#{context}[:global_settings]") unless params[:global_settings].nil?
        type
      end
    end

    module UpdateGlobalSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGlobalSettingsOutput, context: context)
        type = Types::UpdateGlobalSettingsOutput.new
        type
      end
    end

    module UpdateRecoveryPointLifecycleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRecoveryPointLifecycleInput, context: context)
        type = Types::UpdateRecoveryPointLifecycleInput.new
        type.backup_vault_name = params[:backup_vault_name]
        type.recovery_point_arn = params[:recovery_point_arn]
        type.lifecycle = Lifecycle.build(params[:lifecycle], context: "#{context}[:lifecycle]") unless params[:lifecycle].nil?
        type
      end
    end

    module UpdateRecoveryPointLifecycleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRecoveryPointLifecycleOutput, context: context)
        type = Types::UpdateRecoveryPointLifecycleOutput.new
        type.backup_vault_arn = params[:backup_vault_arn]
        type.recovery_point_arn = params[:recovery_point_arn]
        type.lifecycle = Lifecycle.build(params[:lifecycle], context: "#{context}[:lifecycle]") unless params[:lifecycle].nil?
        type.calculated_lifecycle = CalculatedLifecycle.build(params[:calculated_lifecycle], context: "#{context}[:calculated_lifecycle]") unless params[:calculated_lifecycle].nil?
        type
      end
    end

    module UpdateRegionSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRegionSettingsInput, context: context)
        type = Types::UpdateRegionSettingsInput.new
        type.resource_type_opt_in_preference = ResourceTypeOptInPreference.build(params[:resource_type_opt_in_preference], context: "#{context}[:resource_type_opt_in_preference]") unless params[:resource_type_opt_in_preference].nil?
        type.resource_type_management_preference = ResourceTypeManagementPreference.build(params[:resource_type_management_preference], context: "#{context}[:resource_type_management_preference]") unless params[:resource_type_management_preference].nil?
        type
      end
    end

    module UpdateRegionSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRegionSettingsOutput, context: context)
        type = Types::UpdateRegionSettingsOutput.new
        type
      end
    end

    module UpdateReportPlanInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateReportPlanInput, context: context)
        type = Types::UpdateReportPlanInput.new
        type.report_plan_name = params[:report_plan_name]
        type.report_plan_description = params[:report_plan_description]
        type.report_delivery_channel = ReportDeliveryChannel.build(params[:report_delivery_channel], context: "#{context}[:report_delivery_channel]") unless params[:report_delivery_channel].nil?
        type.report_setting = ReportSetting.build(params[:report_setting], context: "#{context}[:report_setting]") unless params[:report_setting].nil?
        type.idempotency_token = params[:idempotency_token] || SecureRandom.uuid
        type
      end
    end

    module UpdateReportPlanOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateReportPlanOutput, context: context)
        type = Types::UpdateReportPlanOutput.new
        type.report_plan_name = params[:report_plan_name]
        type.report_plan_arn = params[:report_plan_arn]
        type.creation_time = params[:creation_time]
        type
      end
    end

    module StringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module StringMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

  end
end
