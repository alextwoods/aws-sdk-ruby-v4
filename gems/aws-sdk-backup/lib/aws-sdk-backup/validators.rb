# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::Backup
  module Validators

    class AdvancedBackupSetting
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdvancedBackupSetting, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        BackupOptions.validate!(input[:backup_options], context: "#{context}[:backup_options]") unless input[:backup_options].nil?
      end
    end

    class AdvancedBackupSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AdvancedBackupSetting.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:creator_request_id], ::String, context: "#{context}[:creator_request_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:context], ::String, context: "#{context}[:context]")
      end
    end

    class BackupJob
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BackupJob, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:backup_job_id], ::String, context: "#{context}[:backup_job_id]")
        Hearth::Validator.validate!(input[:backup_vault_name], ::String, context: "#{context}[:backup_vault_name]")
        Hearth::Validator.validate!(input[:backup_vault_arn], ::String, context: "#{context}[:backup_vault_arn]")
        Hearth::Validator.validate!(input[:recovery_point_arn], ::String, context: "#{context}[:recovery_point_arn]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:completion_date], ::Time, context: "#{context}[:completion_date]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:percent_done], ::String, context: "#{context}[:percent_done]")
        Hearth::Validator.validate!(input[:backup_size_in_bytes], ::Integer, context: "#{context}[:backup_size_in_bytes]")
        Hearth::Validator.validate!(input[:iam_role_arn], ::String, context: "#{context}[:iam_role_arn]")
        RecoveryPointCreator.validate!(input[:created_by], context: "#{context}[:created_by]") unless input[:created_by].nil?
        Hearth::Validator.validate!(input[:expected_completion_date], ::Time, context: "#{context}[:expected_completion_date]")
        Hearth::Validator.validate!(input[:start_by], ::Time, context: "#{context}[:start_by]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:bytes_transferred], ::Integer, context: "#{context}[:bytes_transferred]")
        BackupOptions.validate!(input[:backup_options], context: "#{context}[:backup_options]") unless input[:backup_options].nil?
        Hearth::Validator.validate!(input[:backup_type], ::String, context: "#{context}[:backup_type]")
      end
    end

    class BackupJobsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BackupJob.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BackupOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class BackupPlan
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BackupPlan, context: context)
        Hearth::Validator.validate!(input[:backup_plan_name], ::String, context: "#{context}[:backup_plan_name]")
        BackupRules.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
        AdvancedBackupSettings.validate!(input[:advanced_backup_settings], context: "#{context}[:advanced_backup_settings]") unless input[:advanced_backup_settings].nil?
      end
    end

    class BackupPlanInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BackupPlanInput, context: context)
        Hearth::Validator.validate!(input[:backup_plan_name], ::String, context: "#{context}[:backup_plan_name]")
        BackupRulesInput.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
        AdvancedBackupSettings.validate!(input[:advanced_backup_settings], context: "#{context}[:advanced_backup_settings]") unless input[:advanced_backup_settings].nil?
      end
    end

    class BackupPlanTemplatesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BackupPlanTemplatesListMember.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BackupPlanTemplatesListMember
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BackupPlanTemplatesListMember, context: context)
        Hearth::Validator.validate!(input[:backup_plan_template_id], ::String, context: "#{context}[:backup_plan_template_id]")
        Hearth::Validator.validate!(input[:backup_plan_template_name], ::String, context: "#{context}[:backup_plan_template_name]")
      end
    end

    class BackupPlanVersionsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BackupPlansListMember.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BackupPlansList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BackupPlansListMember.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BackupPlansListMember
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BackupPlansListMember, context: context)
        Hearth::Validator.validate!(input[:backup_plan_arn], ::String, context: "#{context}[:backup_plan_arn]")
        Hearth::Validator.validate!(input[:backup_plan_id], ::String, context: "#{context}[:backup_plan_id]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:deletion_date], ::Time, context: "#{context}[:deletion_date]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate!(input[:backup_plan_name], ::String, context: "#{context}[:backup_plan_name]")
        Hearth::Validator.validate!(input[:creator_request_id], ::String, context: "#{context}[:creator_request_id]")
        Hearth::Validator.validate!(input[:last_execution_date], ::Time, context: "#{context}[:last_execution_date]")
        AdvancedBackupSettings.validate!(input[:advanced_backup_settings], context: "#{context}[:advanced_backup_settings]") unless input[:advanced_backup_settings].nil?
      end
    end

    class BackupRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BackupRule, context: context)
        Hearth::Validator.validate!(input[:rule_name], ::String, context: "#{context}[:rule_name]")
        Hearth::Validator.validate!(input[:target_backup_vault_name], ::String, context: "#{context}[:target_backup_vault_name]")
        Hearth::Validator.validate!(input[:schedule_expression], ::String, context: "#{context}[:schedule_expression]")
        Hearth::Validator.validate!(input[:start_window_minutes], ::Integer, context: "#{context}[:start_window_minutes]")
        Hearth::Validator.validate!(input[:completion_window_minutes], ::Integer, context: "#{context}[:completion_window_minutes]")
        Lifecycle.validate!(input[:lifecycle], context: "#{context}[:lifecycle]") unless input[:lifecycle].nil?
        Tags.validate!(input[:recovery_point_tags], context: "#{context}[:recovery_point_tags]") unless input[:recovery_point_tags].nil?
        Hearth::Validator.validate!(input[:rule_id], ::String, context: "#{context}[:rule_id]")
        CopyActions.validate!(input[:copy_actions], context: "#{context}[:copy_actions]") unless input[:copy_actions].nil?
        Hearth::Validator.validate!(input[:enable_continuous_backup], ::TrueClass, ::FalseClass, context: "#{context}[:enable_continuous_backup]")
      end
    end

    class BackupRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BackupRuleInput, context: context)
        Hearth::Validator.validate!(input[:rule_name], ::String, context: "#{context}[:rule_name]")
        Hearth::Validator.validate!(input[:target_backup_vault_name], ::String, context: "#{context}[:target_backup_vault_name]")
        Hearth::Validator.validate!(input[:schedule_expression], ::String, context: "#{context}[:schedule_expression]")
        Hearth::Validator.validate!(input[:start_window_minutes], ::Integer, context: "#{context}[:start_window_minutes]")
        Hearth::Validator.validate!(input[:completion_window_minutes], ::Integer, context: "#{context}[:completion_window_minutes]")
        Lifecycle.validate!(input[:lifecycle], context: "#{context}[:lifecycle]") unless input[:lifecycle].nil?
        Tags.validate!(input[:recovery_point_tags], context: "#{context}[:recovery_point_tags]") unless input[:recovery_point_tags].nil?
        CopyActions.validate!(input[:copy_actions], context: "#{context}[:copy_actions]") unless input[:copy_actions].nil?
        Hearth::Validator.validate!(input[:enable_continuous_backup], ::TrueClass, ::FalseClass, context: "#{context}[:enable_continuous_backup]")
      end
    end

    class BackupRules
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BackupRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BackupRulesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BackupRuleInput.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BackupSelection
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BackupSelection, context: context)
        Hearth::Validator.validate!(input[:selection_name], ::String, context: "#{context}[:selection_name]")
        Hearth::Validator.validate!(input[:iam_role_arn], ::String, context: "#{context}[:iam_role_arn]")
        ResourceArns.validate!(input[:resources], context: "#{context}[:resources]") unless input[:resources].nil?
        ListOfTags.validate!(input[:list_of_tags], context: "#{context}[:list_of_tags]") unless input[:list_of_tags].nil?
        ResourceArns.validate!(input[:not_resources], context: "#{context}[:not_resources]") unless input[:not_resources].nil?
        Conditions.validate!(input[:conditions], context: "#{context}[:conditions]") unless input[:conditions].nil?
      end
    end

    class BackupSelectionsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BackupSelectionsListMember.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BackupSelectionsListMember
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BackupSelectionsListMember, context: context)
        Hearth::Validator.validate!(input[:selection_id], ::String, context: "#{context}[:selection_id]")
        Hearth::Validator.validate!(input[:selection_name], ::String, context: "#{context}[:selection_name]")
        Hearth::Validator.validate!(input[:backup_plan_id], ::String, context: "#{context}[:backup_plan_id]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:creator_request_id], ::String, context: "#{context}[:creator_request_id]")
        Hearth::Validator.validate!(input[:iam_role_arn], ::String, context: "#{context}[:iam_role_arn]")
      end
    end

    class BackupVaultEvents
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class BackupVaultList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BackupVaultListMember.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BackupVaultListMember
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BackupVaultListMember, context: context)
        Hearth::Validator.validate!(input[:backup_vault_name], ::String, context: "#{context}[:backup_vault_name]")
        Hearth::Validator.validate!(input[:backup_vault_arn], ::String, context: "#{context}[:backup_vault_arn]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:encryption_key_arn], ::String, context: "#{context}[:encryption_key_arn]")
        Hearth::Validator.validate!(input[:creator_request_id], ::String, context: "#{context}[:creator_request_id]")
        Hearth::Validator.validate!(input[:number_of_recovery_points], ::Integer, context: "#{context}[:number_of_recovery_points]")
        Hearth::Validator.validate!(input[:locked], ::TrueClass, ::FalseClass, context: "#{context}[:locked]")
        Hearth::Validator.validate!(input[:min_retention_days], ::Integer, context: "#{context}[:min_retention_days]")
        Hearth::Validator.validate!(input[:max_retention_days], ::Integer, context: "#{context}[:max_retention_days]")
        Hearth::Validator.validate!(input[:lock_date], ::Time, context: "#{context}[:lock_date]")
      end
    end

    class CalculatedLifecycle
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CalculatedLifecycle, context: context)
        Hearth::Validator.validate!(input[:move_to_cold_storage_at], ::Time, context: "#{context}[:move_to_cold_storage_at]")
        Hearth::Validator.validate!(input[:delete_at], ::Time, context: "#{context}[:delete_at]")
      end
    end

    class ComplianceResourceIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Condition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Condition, context: context)
        Hearth::Validator.validate!(input[:condition_type], ::String, context: "#{context}[:condition_type]")
        Hearth::Validator.validate!(input[:condition_key], ::String, context: "#{context}[:condition_key]")
        Hearth::Validator.validate!(input[:condition_value], ::String, context: "#{context}[:condition_value]")
      end
    end

    class ConditionParameter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConditionParameter, context: context)
        Hearth::Validator.validate!(input[:condition_key], ::String, context: "#{context}[:condition_key]")
        Hearth::Validator.validate!(input[:condition_value], ::String, context: "#{context}[:condition_value]")
      end
    end

    class ConditionParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ConditionParameter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Conditions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Conditions, context: context)
        ConditionParameters.validate!(input[:string_equals], context: "#{context}[:string_equals]") unless input[:string_equals].nil?
        ConditionParameters.validate!(input[:string_not_equals], context: "#{context}[:string_not_equals]") unless input[:string_not_equals].nil?
        ConditionParameters.validate!(input[:string_like], context: "#{context}[:string_like]") unless input[:string_like].nil?
        ConditionParameters.validate!(input[:string_not_like], context: "#{context}[:string_not_like]") unless input[:string_not_like].nil?
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:context], ::String, context: "#{context}[:context]")
      end
    end

    class ControlInputParameter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ControlInputParameter, context: context)
        Hearth::Validator.validate!(input[:parameter_name], ::String, context: "#{context}[:parameter_name]")
        Hearth::Validator.validate!(input[:parameter_value], ::String, context: "#{context}[:parameter_value]")
      end
    end

    class ControlInputParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ControlInputParameter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ControlScope
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ControlScope, context: context)
        ComplianceResourceIdList.validate!(input[:compliance_resource_ids], context: "#{context}[:compliance_resource_ids]") unless input[:compliance_resource_ids].nil?
        ResourceTypeList.validate!(input[:compliance_resource_types], context: "#{context}[:compliance_resource_types]") unless input[:compliance_resource_types].nil?
        StringMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CopyAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CopyAction, context: context)
        Lifecycle.validate!(input[:lifecycle], context: "#{context}[:lifecycle]") unless input[:lifecycle].nil?
        Hearth::Validator.validate!(input[:destination_backup_vault_arn], ::String, context: "#{context}[:destination_backup_vault_arn]")
      end
    end

    class CopyActions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CopyAction.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CopyJob
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CopyJob, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:copy_job_id], ::String, context: "#{context}[:copy_job_id]")
        Hearth::Validator.validate!(input[:source_backup_vault_arn], ::String, context: "#{context}[:source_backup_vault_arn]")
        Hearth::Validator.validate!(input[:source_recovery_point_arn], ::String, context: "#{context}[:source_recovery_point_arn]")
        Hearth::Validator.validate!(input[:destination_backup_vault_arn], ::String, context: "#{context}[:destination_backup_vault_arn]")
        Hearth::Validator.validate!(input[:destination_recovery_point_arn], ::String, context: "#{context}[:destination_recovery_point_arn]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:completion_date], ::Time, context: "#{context}[:completion_date]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:backup_size_in_bytes], ::Integer, context: "#{context}[:backup_size_in_bytes]")
        Hearth::Validator.validate!(input[:iam_role_arn], ::String, context: "#{context}[:iam_role_arn]")
        RecoveryPointCreator.validate!(input[:created_by], context: "#{context}[:created_by]") unless input[:created_by].nil?
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class CopyJobsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CopyJob.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CreateBackupPlanInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBackupPlanInput, context: context)
        BackupPlanInput.validate!(input[:backup_plan], context: "#{context}[:backup_plan]") unless input[:backup_plan].nil?
        Tags.validate!(input[:backup_plan_tags], context: "#{context}[:backup_plan_tags]") unless input[:backup_plan_tags].nil?
        Hearth::Validator.validate!(input[:creator_request_id], ::String, context: "#{context}[:creator_request_id]")
      end
    end

    class CreateBackupPlanOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBackupPlanOutput, context: context)
        Hearth::Validator.validate!(input[:backup_plan_id], ::String, context: "#{context}[:backup_plan_id]")
        Hearth::Validator.validate!(input[:backup_plan_arn], ::String, context: "#{context}[:backup_plan_arn]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
        AdvancedBackupSettings.validate!(input[:advanced_backup_settings], context: "#{context}[:advanced_backup_settings]") unless input[:advanced_backup_settings].nil?
      end
    end

    class CreateBackupSelectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBackupSelectionInput, context: context)
        Hearth::Validator.validate!(input[:backup_plan_id], ::String, context: "#{context}[:backup_plan_id]")
        BackupSelection.validate!(input[:backup_selection], context: "#{context}[:backup_selection]") unless input[:backup_selection].nil?
        Hearth::Validator.validate!(input[:creator_request_id], ::String, context: "#{context}[:creator_request_id]")
      end
    end

    class CreateBackupSelectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBackupSelectionOutput, context: context)
        Hearth::Validator.validate!(input[:selection_id], ::String, context: "#{context}[:selection_id]")
        Hearth::Validator.validate!(input[:backup_plan_id], ::String, context: "#{context}[:backup_plan_id]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
      end
    end

    class CreateBackupVaultInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBackupVaultInput, context: context)
        Hearth::Validator.validate!(input[:backup_vault_name], ::String, context: "#{context}[:backup_vault_name]")
        Tags.validate!(input[:backup_vault_tags], context: "#{context}[:backup_vault_tags]") unless input[:backup_vault_tags].nil?
        Hearth::Validator.validate!(input[:encryption_key_arn], ::String, context: "#{context}[:encryption_key_arn]")
        Hearth::Validator.validate!(input[:creator_request_id], ::String, context: "#{context}[:creator_request_id]")
      end
    end

    class CreateBackupVaultOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBackupVaultOutput, context: context)
        Hearth::Validator.validate!(input[:backup_vault_name], ::String, context: "#{context}[:backup_vault_name]")
        Hearth::Validator.validate!(input[:backup_vault_arn], ::String, context: "#{context}[:backup_vault_arn]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
      end
    end

    class CreateFrameworkInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFrameworkInput, context: context)
        Hearth::Validator.validate!(input[:framework_name], ::String, context: "#{context}[:framework_name]")
        Hearth::Validator.validate!(input[:framework_description], ::String, context: "#{context}[:framework_description]")
        FrameworkControls.validate!(input[:framework_controls], context: "#{context}[:framework_controls]") unless input[:framework_controls].nil?
        Hearth::Validator.validate!(input[:idempotency_token], ::String, context: "#{context}[:idempotency_token]")
        StringMap.validate!(input[:framework_tags], context: "#{context}[:framework_tags]") unless input[:framework_tags].nil?
      end
    end

    class CreateFrameworkOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFrameworkOutput, context: context)
        Hearth::Validator.validate!(input[:framework_name], ::String, context: "#{context}[:framework_name]")
        Hearth::Validator.validate!(input[:framework_arn], ::String, context: "#{context}[:framework_arn]")
      end
    end

    class CreateReportPlanInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateReportPlanInput, context: context)
        Hearth::Validator.validate!(input[:report_plan_name], ::String, context: "#{context}[:report_plan_name]")
        Hearth::Validator.validate!(input[:report_plan_description], ::String, context: "#{context}[:report_plan_description]")
        ReportDeliveryChannel.validate!(input[:report_delivery_channel], context: "#{context}[:report_delivery_channel]") unless input[:report_delivery_channel].nil?
        ReportSetting.validate!(input[:report_setting], context: "#{context}[:report_setting]") unless input[:report_setting].nil?
        StringMap.validate!(input[:report_plan_tags], context: "#{context}[:report_plan_tags]") unless input[:report_plan_tags].nil?
        Hearth::Validator.validate!(input[:idempotency_token], ::String, context: "#{context}[:idempotency_token]")
      end
    end

    class CreateReportPlanOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateReportPlanOutput, context: context)
        Hearth::Validator.validate!(input[:report_plan_name], ::String, context: "#{context}[:report_plan_name]")
        Hearth::Validator.validate!(input[:report_plan_arn], ::String, context: "#{context}[:report_plan_arn]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
      end
    end

    class DeleteBackupPlanInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBackupPlanInput, context: context)
        Hearth::Validator.validate!(input[:backup_plan_id], ::String, context: "#{context}[:backup_plan_id]")
      end
    end

    class DeleteBackupPlanOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBackupPlanOutput, context: context)
        Hearth::Validator.validate!(input[:backup_plan_id], ::String, context: "#{context}[:backup_plan_id]")
        Hearth::Validator.validate!(input[:backup_plan_arn], ::String, context: "#{context}[:backup_plan_arn]")
        Hearth::Validator.validate!(input[:deletion_date], ::Time, context: "#{context}[:deletion_date]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
      end
    end

    class DeleteBackupSelectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBackupSelectionInput, context: context)
        Hearth::Validator.validate!(input[:backup_plan_id], ::String, context: "#{context}[:backup_plan_id]")
        Hearth::Validator.validate!(input[:selection_id], ::String, context: "#{context}[:selection_id]")
      end
    end

    class DeleteBackupSelectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBackupSelectionOutput, context: context)
      end
    end

    class DeleteBackupVaultAccessPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBackupVaultAccessPolicyInput, context: context)
        Hearth::Validator.validate!(input[:backup_vault_name], ::String, context: "#{context}[:backup_vault_name]")
      end
    end

    class DeleteBackupVaultAccessPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBackupVaultAccessPolicyOutput, context: context)
      end
    end

    class DeleteBackupVaultInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBackupVaultInput, context: context)
        Hearth::Validator.validate!(input[:backup_vault_name], ::String, context: "#{context}[:backup_vault_name]")
      end
    end

    class DeleteBackupVaultLockConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBackupVaultLockConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:backup_vault_name], ::String, context: "#{context}[:backup_vault_name]")
      end
    end

    class DeleteBackupVaultLockConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBackupVaultLockConfigurationOutput, context: context)
      end
    end

    class DeleteBackupVaultNotificationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBackupVaultNotificationsInput, context: context)
        Hearth::Validator.validate!(input[:backup_vault_name], ::String, context: "#{context}[:backup_vault_name]")
      end
    end

    class DeleteBackupVaultNotificationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBackupVaultNotificationsOutput, context: context)
      end
    end

    class DeleteBackupVaultOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBackupVaultOutput, context: context)
      end
    end

    class DeleteFrameworkInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFrameworkInput, context: context)
        Hearth::Validator.validate!(input[:framework_name], ::String, context: "#{context}[:framework_name]")
      end
    end

    class DeleteFrameworkOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFrameworkOutput, context: context)
      end
    end

    class DeleteRecoveryPointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRecoveryPointInput, context: context)
        Hearth::Validator.validate!(input[:backup_vault_name], ::String, context: "#{context}[:backup_vault_name]")
        Hearth::Validator.validate!(input[:recovery_point_arn], ::String, context: "#{context}[:recovery_point_arn]")
      end
    end

    class DeleteRecoveryPointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRecoveryPointOutput, context: context)
      end
    end

    class DeleteReportPlanInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteReportPlanInput, context: context)
        Hearth::Validator.validate!(input[:report_plan_name], ::String, context: "#{context}[:report_plan_name]")
      end
    end

    class DeleteReportPlanOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteReportPlanOutput, context: context)
      end
    end

    class DependencyFailureException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DependencyFailureException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:context], ::String, context: "#{context}[:context]")
      end
    end

    class DescribeBackupJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBackupJobInput, context: context)
        Hearth::Validator.validate!(input[:backup_job_id], ::String, context: "#{context}[:backup_job_id]")
      end
    end

    class DescribeBackupJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBackupJobOutput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:backup_job_id], ::String, context: "#{context}[:backup_job_id]")
        Hearth::Validator.validate!(input[:backup_vault_name], ::String, context: "#{context}[:backup_vault_name]")
        Hearth::Validator.validate!(input[:backup_vault_arn], ::String, context: "#{context}[:backup_vault_arn]")
        Hearth::Validator.validate!(input[:recovery_point_arn], ::String, context: "#{context}[:recovery_point_arn]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:completion_date], ::Time, context: "#{context}[:completion_date]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:percent_done], ::String, context: "#{context}[:percent_done]")
        Hearth::Validator.validate!(input[:backup_size_in_bytes], ::Integer, context: "#{context}[:backup_size_in_bytes]")
        Hearth::Validator.validate!(input[:iam_role_arn], ::String, context: "#{context}[:iam_role_arn]")
        RecoveryPointCreator.validate!(input[:created_by], context: "#{context}[:created_by]") unless input[:created_by].nil?
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:bytes_transferred], ::Integer, context: "#{context}[:bytes_transferred]")
        Hearth::Validator.validate!(input[:expected_completion_date], ::Time, context: "#{context}[:expected_completion_date]")
        Hearth::Validator.validate!(input[:start_by], ::Time, context: "#{context}[:start_by]")
        BackupOptions.validate!(input[:backup_options], context: "#{context}[:backup_options]") unless input[:backup_options].nil?
        Hearth::Validator.validate!(input[:backup_type], ::String, context: "#{context}[:backup_type]")
      end
    end

    class DescribeBackupVaultInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBackupVaultInput, context: context)
        Hearth::Validator.validate!(input[:backup_vault_name], ::String, context: "#{context}[:backup_vault_name]")
      end
    end

    class DescribeBackupVaultOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBackupVaultOutput, context: context)
        Hearth::Validator.validate!(input[:backup_vault_name], ::String, context: "#{context}[:backup_vault_name]")
        Hearth::Validator.validate!(input[:backup_vault_arn], ::String, context: "#{context}[:backup_vault_arn]")
        Hearth::Validator.validate!(input[:encryption_key_arn], ::String, context: "#{context}[:encryption_key_arn]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:creator_request_id], ::String, context: "#{context}[:creator_request_id]")
        Hearth::Validator.validate!(input[:number_of_recovery_points], ::Integer, context: "#{context}[:number_of_recovery_points]")
        Hearth::Validator.validate!(input[:locked], ::TrueClass, ::FalseClass, context: "#{context}[:locked]")
        Hearth::Validator.validate!(input[:min_retention_days], ::Integer, context: "#{context}[:min_retention_days]")
        Hearth::Validator.validate!(input[:max_retention_days], ::Integer, context: "#{context}[:max_retention_days]")
        Hearth::Validator.validate!(input[:lock_date], ::Time, context: "#{context}[:lock_date]")
      end
    end

    class DescribeCopyJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCopyJobInput, context: context)
        Hearth::Validator.validate!(input[:copy_job_id], ::String, context: "#{context}[:copy_job_id]")
      end
    end

    class DescribeCopyJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCopyJobOutput, context: context)
        CopyJob.validate!(input[:copy_job], context: "#{context}[:copy_job]") unless input[:copy_job].nil?
      end
    end

    class DescribeFrameworkInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFrameworkInput, context: context)
        Hearth::Validator.validate!(input[:framework_name], ::String, context: "#{context}[:framework_name]")
      end
    end

    class DescribeFrameworkOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFrameworkOutput, context: context)
        Hearth::Validator.validate!(input[:framework_name], ::String, context: "#{context}[:framework_name]")
        Hearth::Validator.validate!(input[:framework_arn], ::String, context: "#{context}[:framework_arn]")
        Hearth::Validator.validate!(input[:framework_description], ::String, context: "#{context}[:framework_description]")
        FrameworkControls.validate!(input[:framework_controls], context: "#{context}[:framework_controls]") unless input[:framework_controls].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:deployment_status], ::String, context: "#{context}[:deployment_status]")
        Hearth::Validator.validate!(input[:framework_status], ::String, context: "#{context}[:framework_status]")
        Hearth::Validator.validate!(input[:idempotency_token], ::String, context: "#{context}[:idempotency_token]")
      end
    end

    class DescribeGlobalSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeGlobalSettingsInput, context: context)
      end
    end

    class DescribeGlobalSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeGlobalSettingsOutput, context: context)
        GlobalSettings.validate!(input[:global_settings], context: "#{context}[:global_settings]") unless input[:global_settings].nil?
        Hearth::Validator.validate!(input[:last_update_time], ::Time, context: "#{context}[:last_update_time]")
      end
    end

    class DescribeProtectedResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeProtectedResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class DescribeProtectedResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeProtectedResourceOutput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:last_backup_time], ::Time, context: "#{context}[:last_backup_time]")
      end
    end

    class DescribeRecoveryPointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRecoveryPointInput, context: context)
        Hearth::Validator.validate!(input[:backup_vault_name], ::String, context: "#{context}[:backup_vault_name]")
        Hearth::Validator.validate!(input[:recovery_point_arn], ::String, context: "#{context}[:recovery_point_arn]")
      end
    end

    class DescribeRecoveryPointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRecoveryPointOutput, context: context)
        Hearth::Validator.validate!(input[:recovery_point_arn], ::String, context: "#{context}[:recovery_point_arn]")
        Hearth::Validator.validate!(input[:backup_vault_name], ::String, context: "#{context}[:backup_vault_name]")
        Hearth::Validator.validate!(input[:backup_vault_arn], ::String, context: "#{context}[:backup_vault_arn]")
        Hearth::Validator.validate!(input[:source_backup_vault_arn], ::String, context: "#{context}[:source_backup_vault_arn]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        RecoveryPointCreator.validate!(input[:created_by], context: "#{context}[:created_by]") unless input[:created_by].nil?
        Hearth::Validator.validate!(input[:iam_role_arn], ::String, context: "#{context}[:iam_role_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:completion_date], ::Time, context: "#{context}[:completion_date]")
        Hearth::Validator.validate!(input[:backup_size_in_bytes], ::Integer, context: "#{context}[:backup_size_in_bytes]")
        CalculatedLifecycle.validate!(input[:calculated_lifecycle], context: "#{context}[:calculated_lifecycle]") unless input[:calculated_lifecycle].nil?
        Lifecycle.validate!(input[:lifecycle], context: "#{context}[:lifecycle]") unless input[:lifecycle].nil?
        Hearth::Validator.validate!(input[:encryption_key_arn], ::String, context: "#{context}[:encryption_key_arn]")
        Hearth::Validator.validate!(input[:is_encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:is_encrypted]")
        Hearth::Validator.validate!(input[:storage_class], ::String, context: "#{context}[:storage_class]")
        Hearth::Validator.validate!(input[:last_restore_time], ::Time, context: "#{context}[:last_restore_time]")
      end
    end

    class DescribeRegionSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRegionSettingsInput, context: context)
      end
    end

    class DescribeRegionSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRegionSettingsOutput, context: context)
        ResourceTypeOptInPreference.validate!(input[:resource_type_opt_in_preference], context: "#{context}[:resource_type_opt_in_preference]") unless input[:resource_type_opt_in_preference].nil?
        ResourceTypeManagementPreference.validate!(input[:resource_type_management_preference], context: "#{context}[:resource_type_management_preference]") unless input[:resource_type_management_preference].nil?
      end
    end

    class DescribeReportJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReportJobInput, context: context)
        Hearth::Validator.validate!(input[:report_job_id], ::String, context: "#{context}[:report_job_id]")
      end
    end

    class DescribeReportJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReportJobOutput, context: context)
        ReportJob.validate!(input[:report_job], context: "#{context}[:report_job]") unless input[:report_job].nil?
      end
    end

    class DescribeReportPlanInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReportPlanInput, context: context)
        Hearth::Validator.validate!(input[:report_plan_name], ::String, context: "#{context}[:report_plan_name]")
      end
    end

    class DescribeReportPlanOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReportPlanOutput, context: context)
        ReportPlan.validate!(input[:report_plan], context: "#{context}[:report_plan]") unless input[:report_plan].nil?
      end
    end

    class DescribeRestoreJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRestoreJobInput, context: context)
        Hearth::Validator.validate!(input[:restore_job_id], ::String, context: "#{context}[:restore_job_id]")
      end
    end

    class DescribeRestoreJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRestoreJobOutput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:restore_job_id], ::String, context: "#{context}[:restore_job_id]")
        Hearth::Validator.validate!(input[:recovery_point_arn], ::String, context: "#{context}[:recovery_point_arn]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:completion_date], ::Time, context: "#{context}[:completion_date]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:percent_done], ::String, context: "#{context}[:percent_done]")
        Hearth::Validator.validate!(input[:backup_size_in_bytes], ::Integer, context: "#{context}[:backup_size_in_bytes]")
        Hearth::Validator.validate!(input[:iam_role_arn], ::String, context: "#{context}[:iam_role_arn]")
        Hearth::Validator.validate!(input[:expected_completion_time_minutes], ::Integer, context: "#{context}[:expected_completion_time_minutes]")
        Hearth::Validator.validate!(input[:created_resource_arn], ::String, context: "#{context}[:created_resource_arn]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class DisassociateRecoveryPointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateRecoveryPointInput, context: context)
        Hearth::Validator.validate!(input[:backup_vault_name], ::String, context: "#{context}[:backup_vault_name]")
        Hearth::Validator.validate!(input[:recovery_point_arn], ::String, context: "#{context}[:recovery_point_arn]")
      end
    end

    class DisassociateRecoveryPointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateRecoveryPointOutput, context: context)
      end
    end

    class ExportBackupPlanTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportBackupPlanTemplateInput, context: context)
        Hearth::Validator.validate!(input[:backup_plan_id], ::String, context: "#{context}[:backup_plan_id]")
      end
    end

    class ExportBackupPlanTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportBackupPlanTemplateOutput, context: context)
        Hearth::Validator.validate!(input[:backup_plan_template_json], ::String, context: "#{context}[:backup_plan_template_json]")
      end
    end

    class FormatList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Framework
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Framework, context: context)
        Hearth::Validator.validate!(input[:framework_name], ::String, context: "#{context}[:framework_name]")
        Hearth::Validator.validate!(input[:framework_arn], ::String, context: "#{context}[:framework_arn]")
        Hearth::Validator.validate!(input[:framework_description], ::String, context: "#{context}[:framework_description]")
        Hearth::Validator.validate!(input[:number_of_controls], ::Integer, context: "#{context}[:number_of_controls]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:deployment_status], ::String, context: "#{context}[:deployment_status]")
      end
    end

    class FrameworkControl
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FrameworkControl, context: context)
        Hearth::Validator.validate!(input[:control_name], ::String, context: "#{context}[:control_name]")
        ControlInputParameters.validate!(input[:control_input_parameters], context: "#{context}[:control_input_parameters]") unless input[:control_input_parameters].nil?
        ControlScope.validate!(input[:control_scope], context: "#{context}[:control_scope]") unless input[:control_scope].nil?
      end
    end

    class FrameworkControls
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          FrameworkControl.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FrameworkList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Framework.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetBackupPlanFromJSONInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBackupPlanFromJSONInput, context: context)
        Hearth::Validator.validate!(input[:backup_plan_template_json], ::String, context: "#{context}[:backup_plan_template_json]")
      end
    end

    class GetBackupPlanFromJSONOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBackupPlanFromJSONOutput, context: context)
        BackupPlan.validate!(input[:backup_plan], context: "#{context}[:backup_plan]") unless input[:backup_plan].nil?
      end
    end

    class GetBackupPlanFromTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBackupPlanFromTemplateInput, context: context)
        Hearth::Validator.validate!(input[:backup_plan_template_id], ::String, context: "#{context}[:backup_plan_template_id]")
      end
    end

    class GetBackupPlanFromTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBackupPlanFromTemplateOutput, context: context)
        BackupPlan.validate!(input[:backup_plan_document], context: "#{context}[:backup_plan_document]") unless input[:backup_plan_document].nil?
      end
    end

    class GetBackupPlanInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBackupPlanInput, context: context)
        Hearth::Validator.validate!(input[:backup_plan_id], ::String, context: "#{context}[:backup_plan_id]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
      end
    end

    class GetBackupPlanOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBackupPlanOutput, context: context)
        BackupPlan.validate!(input[:backup_plan], context: "#{context}[:backup_plan]") unless input[:backup_plan].nil?
        Hearth::Validator.validate!(input[:backup_plan_id], ::String, context: "#{context}[:backup_plan_id]")
        Hearth::Validator.validate!(input[:backup_plan_arn], ::String, context: "#{context}[:backup_plan_arn]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate!(input[:creator_request_id], ::String, context: "#{context}[:creator_request_id]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:deletion_date], ::Time, context: "#{context}[:deletion_date]")
        Hearth::Validator.validate!(input[:last_execution_date], ::Time, context: "#{context}[:last_execution_date]")
        AdvancedBackupSettings.validate!(input[:advanced_backup_settings], context: "#{context}[:advanced_backup_settings]") unless input[:advanced_backup_settings].nil?
      end
    end

    class GetBackupSelectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBackupSelectionInput, context: context)
        Hearth::Validator.validate!(input[:backup_plan_id], ::String, context: "#{context}[:backup_plan_id]")
        Hearth::Validator.validate!(input[:selection_id], ::String, context: "#{context}[:selection_id]")
      end
    end

    class GetBackupSelectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBackupSelectionOutput, context: context)
        BackupSelection.validate!(input[:backup_selection], context: "#{context}[:backup_selection]") unless input[:backup_selection].nil?
        Hearth::Validator.validate!(input[:selection_id], ::String, context: "#{context}[:selection_id]")
        Hearth::Validator.validate!(input[:backup_plan_id], ::String, context: "#{context}[:backup_plan_id]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:creator_request_id], ::String, context: "#{context}[:creator_request_id]")
      end
    end

    class GetBackupVaultAccessPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBackupVaultAccessPolicyInput, context: context)
        Hearth::Validator.validate!(input[:backup_vault_name], ::String, context: "#{context}[:backup_vault_name]")
      end
    end

    class GetBackupVaultAccessPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBackupVaultAccessPolicyOutput, context: context)
        Hearth::Validator.validate!(input[:backup_vault_name], ::String, context: "#{context}[:backup_vault_name]")
        Hearth::Validator.validate!(input[:backup_vault_arn], ::String, context: "#{context}[:backup_vault_arn]")
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
      end
    end

    class GetBackupVaultNotificationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBackupVaultNotificationsInput, context: context)
        Hearth::Validator.validate!(input[:backup_vault_name], ::String, context: "#{context}[:backup_vault_name]")
      end
    end

    class GetBackupVaultNotificationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBackupVaultNotificationsOutput, context: context)
        Hearth::Validator.validate!(input[:backup_vault_name], ::String, context: "#{context}[:backup_vault_name]")
        Hearth::Validator.validate!(input[:backup_vault_arn], ::String, context: "#{context}[:backup_vault_arn]")
        Hearth::Validator.validate!(input[:sns_topic_arn], ::String, context: "#{context}[:sns_topic_arn]")
        BackupVaultEvents.validate!(input[:backup_vault_events], context: "#{context}[:backup_vault_events]") unless input[:backup_vault_events].nil?
      end
    end

    class GetRecoveryPointRestoreMetadataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRecoveryPointRestoreMetadataInput, context: context)
        Hearth::Validator.validate!(input[:backup_vault_name], ::String, context: "#{context}[:backup_vault_name]")
        Hearth::Validator.validate!(input[:recovery_point_arn], ::String, context: "#{context}[:recovery_point_arn]")
      end
    end

    class GetRecoveryPointRestoreMetadataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRecoveryPointRestoreMetadataOutput, context: context)
        Hearth::Validator.validate!(input[:backup_vault_arn], ::String, context: "#{context}[:backup_vault_arn]")
        Hearth::Validator.validate!(input[:recovery_point_arn], ::String, context: "#{context}[:recovery_point_arn]")
        Metadata.validate!(input[:restore_metadata], context: "#{context}[:restore_metadata]") unless input[:restore_metadata].nil?
      end
    end

    class GetSupportedResourceTypesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSupportedResourceTypesInput, context: context)
      end
    end

    class GetSupportedResourceTypesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSupportedResourceTypesOutput, context: context)
        ResourceTypes.validate!(input[:resource_types], context: "#{context}[:resource_types]") unless input[:resource_types].nil?
      end
    end

    class GlobalSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class InvalidParameterValueException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParameterValueException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:context], ::String, context: "#{context}[:context]")
      end
    end

    class InvalidRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRequestException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:context], ::String, context: "#{context}[:context]")
      end
    end

    class InvalidResourceStateException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidResourceStateException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:context], ::String, context: "#{context}[:context]")
      end
    end

    class Lifecycle
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Lifecycle, context: context)
        Hearth::Validator.validate!(input[:move_to_cold_storage_after_days], ::Integer, context: "#{context}[:move_to_cold_storage_after_days]")
        Hearth::Validator.validate!(input[:delete_after_days], ::Integer, context: "#{context}[:delete_after_days]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:context], ::String, context: "#{context}[:context]")
      end
    end

    class ListBackupJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBackupJobsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:by_resource_arn], ::String, context: "#{context}[:by_resource_arn]")
        Hearth::Validator.validate!(input[:by_state], ::String, context: "#{context}[:by_state]")
        Hearth::Validator.validate!(input[:by_backup_vault_name], ::String, context: "#{context}[:by_backup_vault_name]")
        Hearth::Validator.validate!(input[:by_created_before], ::Time, context: "#{context}[:by_created_before]")
        Hearth::Validator.validate!(input[:by_created_after], ::Time, context: "#{context}[:by_created_after]")
        Hearth::Validator.validate!(input[:by_resource_type], ::String, context: "#{context}[:by_resource_type]")
        Hearth::Validator.validate!(input[:by_account_id], ::String, context: "#{context}[:by_account_id]")
        Hearth::Validator.validate!(input[:by_complete_after], ::Time, context: "#{context}[:by_complete_after]")
        Hearth::Validator.validate!(input[:by_complete_before], ::Time, context: "#{context}[:by_complete_before]")
      end
    end

    class ListBackupJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBackupJobsOutput, context: context)
        BackupJobsList.validate!(input[:backup_jobs], context: "#{context}[:backup_jobs]") unless input[:backup_jobs].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListBackupPlanTemplatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBackupPlanTemplatesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListBackupPlanTemplatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBackupPlanTemplatesOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        BackupPlanTemplatesList.validate!(input[:backup_plan_templates_list], context: "#{context}[:backup_plan_templates_list]") unless input[:backup_plan_templates_list].nil?
      end
    end

    class ListBackupPlanVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBackupPlanVersionsInput, context: context)
        Hearth::Validator.validate!(input[:backup_plan_id], ::String, context: "#{context}[:backup_plan_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListBackupPlanVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBackupPlanVersionsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        BackupPlanVersionsList.validate!(input[:backup_plan_versions_list], context: "#{context}[:backup_plan_versions_list]") unless input[:backup_plan_versions_list].nil?
      end
    end

    class ListBackupPlansInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBackupPlansInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:include_deleted], ::TrueClass, ::FalseClass, context: "#{context}[:include_deleted]")
      end
    end

    class ListBackupPlansOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBackupPlansOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        BackupPlansList.validate!(input[:backup_plans_list], context: "#{context}[:backup_plans_list]") unless input[:backup_plans_list].nil?
      end
    end

    class ListBackupSelectionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBackupSelectionsInput, context: context)
        Hearth::Validator.validate!(input[:backup_plan_id], ::String, context: "#{context}[:backup_plan_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListBackupSelectionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBackupSelectionsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        BackupSelectionsList.validate!(input[:backup_selections_list], context: "#{context}[:backup_selections_list]") unless input[:backup_selections_list].nil?
      end
    end

    class ListBackupVaultsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBackupVaultsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListBackupVaultsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBackupVaultsOutput, context: context)
        BackupVaultList.validate!(input[:backup_vault_list], context: "#{context}[:backup_vault_list]") unless input[:backup_vault_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListCopyJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCopyJobsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:by_resource_arn], ::String, context: "#{context}[:by_resource_arn]")
        Hearth::Validator.validate!(input[:by_state], ::String, context: "#{context}[:by_state]")
        Hearth::Validator.validate!(input[:by_created_before], ::Time, context: "#{context}[:by_created_before]")
        Hearth::Validator.validate!(input[:by_created_after], ::Time, context: "#{context}[:by_created_after]")
        Hearth::Validator.validate!(input[:by_resource_type], ::String, context: "#{context}[:by_resource_type]")
        Hearth::Validator.validate!(input[:by_destination_vault_arn], ::String, context: "#{context}[:by_destination_vault_arn]")
        Hearth::Validator.validate!(input[:by_account_id], ::String, context: "#{context}[:by_account_id]")
        Hearth::Validator.validate!(input[:by_complete_before], ::Time, context: "#{context}[:by_complete_before]")
        Hearth::Validator.validate!(input[:by_complete_after], ::Time, context: "#{context}[:by_complete_after]")
      end
    end

    class ListCopyJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCopyJobsOutput, context: context)
        CopyJobsList.validate!(input[:copy_jobs], context: "#{context}[:copy_jobs]") unless input[:copy_jobs].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListFrameworksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFrameworksInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListFrameworksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFrameworksOutput, context: context)
        FrameworkList.validate!(input[:frameworks], context: "#{context}[:frameworks]") unless input[:frameworks].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListOfTags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Condition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListProtectedResourcesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProtectedResourcesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListProtectedResourcesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProtectedResourcesOutput, context: context)
        ProtectedResourcesList.validate!(input[:results], context: "#{context}[:results]") unless input[:results].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListRecoveryPointsByBackupVaultInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRecoveryPointsByBackupVaultInput, context: context)
        Hearth::Validator.validate!(input[:backup_vault_name], ::String, context: "#{context}[:backup_vault_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:by_resource_arn], ::String, context: "#{context}[:by_resource_arn]")
        Hearth::Validator.validate!(input[:by_resource_type], ::String, context: "#{context}[:by_resource_type]")
        Hearth::Validator.validate!(input[:by_backup_plan_id], ::String, context: "#{context}[:by_backup_plan_id]")
        Hearth::Validator.validate!(input[:by_created_before], ::Time, context: "#{context}[:by_created_before]")
        Hearth::Validator.validate!(input[:by_created_after], ::Time, context: "#{context}[:by_created_after]")
      end
    end

    class ListRecoveryPointsByBackupVaultOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRecoveryPointsByBackupVaultOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        RecoveryPointByBackupVaultList.validate!(input[:recovery_points], context: "#{context}[:recovery_points]") unless input[:recovery_points].nil?
      end
    end

    class ListRecoveryPointsByResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRecoveryPointsByResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListRecoveryPointsByResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRecoveryPointsByResourceOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        RecoveryPointByResourceList.validate!(input[:recovery_points], context: "#{context}[:recovery_points]") unless input[:recovery_points].nil?
      end
    end

    class ListReportJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListReportJobsInput, context: context)
        Hearth::Validator.validate!(input[:by_report_plan_name], ::String, context: "#{context}[:by_report_plan_name]")
        Hearth::Validator.validate!(input[:by_creation_before], ::Time, context: "#{context}[:by_creation_before]")
        Hearth::Validator.validate!(input[:by_creation_after], ::Time, context: "#{context}[:by_creation_after]")
        Hearth::Validator.validate!(input[:by_status], ::String, context: "#{context}[:by_status]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListReportJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListReportJobsOutput, context: context)
        ReportJobList.validate!(input[:report_jobs], context: "#{context}[:report_jobs]") unless input[:report_jobs].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListReportPlansInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListReportPlansInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListReportPlansOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListReportPlansOutput, context: context)
        ReportPlanList.validate!(input[:report_plans], context: "#{context}[:report_plans]") unless input[:report_plans].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListRestoreJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRestoreJobsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:by_account_id], ::String, context: "#{context}[:by_account_id]")
        Hearth::Validator.validate!(input[:by_created_before], ::Time, context: "#{context}[:by_created_before]")
        Hearth::Validator.validate!(input[:by_created_after], ::Time, context: "#{context}[:by_created_after]")
        Hearth::Validator.validate!(input[:by_status], ::String, context: "#{context}[:by_status]")
        Hearth::Validator.validate!(input[:by_complete_before], ::Time, context: "#{context}[:by_complete_before]")
        Hearth::Validator.validate!(input[:by_complete_after], ::Time, context: "#{context}[:by_complete_after]")
      end
    end

    class ListRestoreJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRestoreJobsOutput, context: context)
        RestoreJobsList.validate!(input[:restore_jobs], context: "#{context}[:restore_jobs]") unless input[:restore_jobs].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class Metadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class MissingParameterValueException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MissingParameterValueException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:context], ::String, context: "#{context}[:context]")
      end
    end

    class ProtectedResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProtectedResource, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:last_backup_time], ::Time, context: "#{context}[:last_backup_time]")
      end
    end

    class ProtectedResourcesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ProtectedResource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PutBackupVaultAccessPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutBackupVaultAccessPolicyInput, context: context)
        Hearth::Validator.validate!(input[:backup_vault_name], ::String, context: "#{context}[:backup_vault_name]")
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
      end
    end

    class PutBackupVaultAccessPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutBackupVaultAccessPolicyOutput, context: context)
      end
    end

    class PutBackupVaultLockConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutBackupVaultLockConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:backup_vault_name], ::String, context: "#{context}[:backup_vault_name]")
        Hearth::Validator.validate!(input[:min_retention_days], ::Integer, context: "#{context}[:min_retention_days]")
        Hearth::Validator.validate!(input[:max_retention_days], ::Integer, context: "#{context}[:max_retention_days]")
        Hearth::Validator.validate!(input[:changeable_for_days], ::Integer, context: "#{context}[:changeable_for_days]")
      end
    end

    class PutBackupVaultLockConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutBackupVaultLockConfigurationOutput, context: context)
      end
    end

    class PutBackupVaultNotificationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutBackupVaultNotificationsInput, context: context)
        Hearth::Validator.validate!(input[:backup_vault_name], ::String, context: "#{context}[:backup_vault_name]")
        Hearth::Validator.validate!(input[:sns_topic_arn], ::String, context: "#{context}[:sns_topic_arn]")
        BackupVaultEvents.validate!(input[:backup_vault_events], context: "#{context}[:backup_vault_events]") unless input[:backup_vault_events].nil?
      end
    end

    class PutBackupVaultNotificationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutBackupVaultNotificationsOutput, context: context)
      end
    end

    class RecoveryPointByBackupVault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecoveryPointByBackupVault, context: context)
        Hearth::Validator.validate!(input[:recovery_point_arn], ::String, context: "#{context}[:recovery_point_arn]")
        Hearth::Validator.validate!(input[:backup_vault_name], ::String, context: "#{context}[:backup_vault_name]")
        Hearth::Validator.validate!(input[:backup_vault_arn], ::String, context: "#{context}[:backup_vault_arn]")
        Hearth::Validator.validate!(input[:source_backup_vault_arn], ::String, context: "#{context}[:source_backup_vault_arn]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        RecoveryPointCreator.validate!(input[:created_by], context: "#{context}[:created_by]") unless input[:created_by].nil?
        Hearth::Validator.validate!(input[:iam_role_arn], ::String, context: "#{context}[:iam_role_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:completion_date], ::Time, context: "#{context}[:completion_date]")
        Hearth::Validator.validate!(input[:backup_size_in_bytes], ::Integer, context: "#{context}[:backup_size_in_bytes]")
        CalculatedLifecycle.validate!(input[:calculated_lifecycle], context: "#{context}[:calculated_lifecycle]") unless input[:calculated_lifecycle].nil?
        Lifecycle.validate!(input[:lifecycle], context: "#{context}[:lifecycle]") unless input[:lifecycle].nil?
        Hearth::Validator.validate!(input[:encryption_key_arn], ::String, context: "#{context}[:encryption_key_arn]")
        Hearth::Validator.validate!(input[:is_encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:is_encrypted]")
        Hearth::Validator.validate!(input[:last_restore_time], ::Time, context: "#{context}[:last_restore_time]")
      end
    end

    class RecoveryPointByBackupVaultList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RecoveryPointByBackupVault.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RecoveryPointByResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecoveryPointByResource, context: context)
        Hearth::Validator.validate!(input[:recovery_point_arn], ::String, context: "#{context}[:recovery_point_arn]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:encryption_key_arn], ::String, context: "#{context}[:encryption_key_arn]")
        Hearth::Validator.validate!(input[:backup_size_bytes], ::Integer, context: "#{context}[:backup_size_bytes]")
        Hearth::Validator.validate!(input[:backup_vault_name], ::String, context: "#{context}[:backup_vault_name]")
      end
    end

    class RecoveryPointByResourceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RecoveryPointByResource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RecoveryPointCreator
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecoveryPointCreator, context: context)
        Hearth::Validator.validate!(input[:backup_plan_id], ::String, context: "#{context}[:backup_plan_id]")
        Hearth::Validator.validate!(input[:backup_plan_arn], ::String, context: "#{context}[:backup_plan_arn]")
        Hearth::Validator.validate!(input[:backup_plan_version], ::String, context: "#{context}[:backup_plan_version]")
        Hearth::Validator.validate!(input[:backup_rule_id], ::String, context: "#{context}[:backup_rule_id]")
      end
    end

    class ReportDeliveryChannel
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReportDeliveryChannel, context: context)
        Hearth::Validator.validate!(input[:s3_bucket_name], ::String, context: "#{context}[:s3_bucket_name]")
        Hearth::Validator.validate!(input[:s3_key_prefix], ::String, context: "#{context}[:s3_key_prefix]")
        FormatList.validate!(input[:formats], context: "#{context}[:formats]") unless input[:formats].nil?
      end
    end

    class ReportDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReportDestination, context: context)
        Hearth::Validator.validate!(input[:s3_bucket_name], ::String, context: "#{context}[:s3_bucket_name]")
        StringList.validate!(input[:s3_keys], context: "#{context}[:s3_keys]") unless input[:s3_keys].nil?
      end
    end

    class ReportJob
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReportJob, context: context)
        Hearth::Validator.validate!(input[:report_job_id], ::String, context: "#{context}[:report_job_id]")
        Hearth::Validator.validate!(input[:report_plan_arn], ::String, context: "#{context}[:report_plan_arn]")
        Hearth::Validator.validate!(input[:report_template], ::String, context: "#{context}[:report_template]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:completion_time], ::Time, context: "#{context}[:completion_time]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        ReportDestination.validate!(input[:report_destination], context: "#{context}[:report_destination]") unless input[:report_destination].nil?
      end
    end

    class ReportJobList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ReportJob.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReportPlan
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReportPlan, context: context)
        Hearth::Validator.validate!(input[:report_plan_arn], ::String, context: "#{context}[:report_plan_arn]")
        Hearth::Validator.validate!(input[:report_plan_name], ::String, context: "#{context}[:report_plan_name]")
        Hearth::Validator.validate!(input[:report_plan_description], ::String, context: "#{context}[:report_plan_description]")
        ReportSetting.validate!(input[:report_setting], context: "#{context}[:report_setting]") unless input[:report_setting].nil?
        ReportDeliveryChannel.validate!(input[:report_delivery_channel], context: "#{context}[:report_delivery_channel]") unless input[:report_delivery_channel].nil?
        Hearth::Validator.validate!(input[:deployment_status], ::String, context: "#{context}[:deployment_status]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_attempted_execution_time], ::Time, context: "#{context}[:last_attempted_execution_time]")
        Hearth::Validator.validate!(input[:last_successful_execution_time], ::Time, context: "#{context}[:last_successful_execution_time]")
      end
    end

    class ReportPlanList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ReportPlan.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReportSetting
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReportSetting, context: context)
        Hearth::Validator.validate!(input[:report_template], ::String, context: "#{context}[:report_template]")
        StringList.validate!(input[:framework_arns], context: "#{context}[:framework_arns]") unless input[:framework_arns].nil?
        Hearth::Validator.validate!(input[:number_of_frameworks], ::Integer, context: "#{context}[:number_of_frameworks]")
      end
    end

    class ResourceArns
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:context], ::String, context: "#{context}[:context]")
      end
    end

    class ResourceTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ResourceTypeManagementPreference
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::TrueClass, ::FalseClass, context: "#{context}[:#{key}]")
        end
      end
    end

    class ResourceTypeOptInPreference
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::TrueClass, ::FalseClass, context: "#{context}[:#{key}]")
        end
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

    class RestoreJobsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RestoreJobsListMember.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RestoreJobsListMember
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreJobsListMember, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:restore_job_id], ::String, context: "#{context}[:restore_job_id]")
        Hearth::Validator.validate!(input[:recovery_point_arn], ::String, context: "#{context}[:recovery_point_arn]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:completion_date], ::Time, context: "#{context}[:completion_date]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:percent_done], ::String, context: "#{context}[:percent_done]")
        Hearth::Validator.validate!(input[:backup_size_in_bytes], ::Integer, context: "#{context}[:backup_size_in_bytes]")
        Hearth::Validator.validate!(input[:iam_role_arn], ::String, context: "#{context}[:iam_role_arn]")
        Hearth::Validator.validate!(input[:expected_completion_time_minutes], ::Integer, context: "#{context}[:expected_completion_time_minutes]")
        Hearth::Validator.validate!(input[:created_resource_arn], ::String, context: "#{context}[:created_resource_arn]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class ServiceUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceUnavailableException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:context], ::String, context: "#{context}[:context]")
      end
    end

    class StartBackupJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartBackupJobInput, context: context)
        Hearth::Validator.validate!(input[:backup_vault_name], ::String, context: "#{context}[:backup_vault_name]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:iam_role_arn], ::String, context: "#{context}[:iam_role_arn]")
        Hearth::Validator.validate!(input[:idempotency_token], ::String, context: "#{context}[:idempotency_token]")
        Hearth::Validator.validate!(input[:start_window_minutes], ::Integer, context: "#{context}[:start_window_minutes]")
        Hearth::Validator.validate!(input[:complete_window_minutes], ::Integer, context: "#{context}[:complete_window_minutes]")
        Lifecycle.validate!(input[:lifecycle], context: "#{context}[:lifecycle]") unless input[:lifecycle].nil?
        Tags.validate!(input[:recovery_point_tags], context: "#{context}[:recovery_point_tags]") unless input[:recovery_point_tags].nil?
        BackupOptions.validate!(input[:backup_options], context: "#{context}[:backup_options]") unless input[:backup_options].nil?
      end
    end

    class StartBackupJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartBackupJobOutput, context: context)
        Hearth::Validator.validate!(input[:backup_job_id], ::String, context: "#{context}[:backup_job_id]")
        Hearth::Validator.validate!(input[:recovery_point_arn], ::String, context: "#{context}[:recovery_point_arn]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
      end
    end

    class StartCopyJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartCopyJobInput, context: context)
        Hearth::Validator.validate!(input[:recovery_point_arn], ::String, context: "#{context}[:recovery_point_arn]")
        Hearth::Validator.validate!(input[:source_backup_vault_name], ::String, context: "#{context}[:source_backup_vault_name]")
        Hearth::Validator.validate!(input[:destination_backup_vault_arn], ::String, context: "#{context}[:destination_backup_vault_arn]")
        Hearth::Validator.validate!(input[:iam_role_arn], ::String, context: "#{context}[:iam_role_arn]")
        Hearth::Validator.validate!(input[:idempotency_token], ::String, context: "#{context}[:idempotency_token]")
        Lifecycle.validate!(input[:lifecycle], context: "#{context}[:lifecycle]") unless input[:lifecycle].nil?
      end
    end

    class StartCopyJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartCopyJobOutput, context: context)
        Hearth::Validator.validate!(input[:copy_job_id], ::String, context: "#{context}[:copy_job_id]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
      end
    end

    class StartReportJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartReportJobInput, context: context)
        Hearth::Validator.validate!(input[:report_plan_name], ::String, context: "#{context}[:report_plan_name]")
        Hearth::Validator.validate!(input[:idempotency_token], ::String, context: "#{context}[:idempotency_token]")
      end
    end

    class StartReportJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartReportJobOutput, context: context)
        Hearth::Validator.validate!(input[:report_job_id], ::String, context: "#{context}[:report_job_id]")
      end
    end

    class StartRestoreJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartRestoreJobInput, context: context)
        Hearth::Validator.validate!(input[:recovery_point_arn], ::String, context: "#{context}[:recovery_point_arn]")
        Metadata.validate!(input[:metadata], context: "#{context}[:metadata]") unless input[:metadata].nil?
        Hearth::Validator.validate!(input[:iam_role_arn], ::String, context: "#{context}[:iam_role_arn]")
        Hearth::Validator.validate!(input[:idempotency_token], ::String, context: "#{context}[:idempotency_token]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class StartRestoreJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartRestoreJobOutput, context: context)
        Hearth::Validator.validate!(input[:restore_job_id], ::String, context: "#{context}[:restore_job_id]")
      end
    end

    class StopBackupJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopBackupJobInput, context: context)
        Hearth::Validator.validate!(input[:backup_job_id], ::String, context: "#{context}[:backup_job_id]")
      end
    end

    class StopBackupJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopBackupJobOutput, context: context)
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

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class Tags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagKeyList.validate!(input[:tag_key_list], context: "#{context}[:tag_key_list]") unless input[:tag_key_list].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateBackupPlanInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBackupPlanInput, context: context)
        Hearth::Validator.validate!(input[:backup_plan_id], ::String, context: "#{context}[:backup_plan_id]")
        BackupPlanInput.validate!(input[:backup_plan], context: "#{context}[:backup_plan]") unless input[:backup_plan].nil?
      end
    end

    class UpdateBackupPlanOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBackupPlanOutput, context: context)
        Hearth::Validator.validate!(input[:backup_plan_id], ::String, context: "#{context}[:backup_plan_id]")
        Hearth::Validator.validate!(input[:backup_plan_arn], ::String, context: "#{context}[:backup_plan_arn]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
        AdvancedBackupSettings.validate!(input[:advanced_backup_settings], context: "#{context}[:advanced_backup_settings]") unless input[:advanced_backup_settings].nil?
      end
    end

    class UpdateFrameworkInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFrameworkInput, context: context)
        Hearth::Validator.validate!(input[:framework_name], ::String, context: "#{context}[:framework_name]")
        Hearth::Validator.validate!(input[:framework_description], ::String, context: "#{context}[:framework_description]")
        FrameworkControls.validate!(input[:framework_controls], context: "#{context}[:framework_controls]") unless input[:framework_controls].nil?
        Hearth::Validator.validate!(input[:idempotency_token], ::String, context: "#{context}[:idempotency_token]")
      end
    end

    class UpdateFrameworkOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFrameworkOutput, context: context)
        Hearth::Validator.validate!(input[:framework_name], ::String, context: "#{context}[:framework_name]")
        Hearth::Validator.validate!(input[:framework_arn], ::String, context: "#{context}[:framework_arn]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
      end
    end

    class UpdateGlobalSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGlobalSettingsInput, context: context)
        GlobalSettings.validate!(input[:global_settings], context: "#{context}[:global_settings]") unless input[:global_settings].nil?
      end
    end

    class UpdateGlobalSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGlobalSettingsOutput, context: context)
      end
    end

    class UpdateRecoveryPointLifecycleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRecoveryPointLifecycleInput, context: context)
        Hearth::Validator.validate!(input[:backup_vault_name], ::String, context: "#{context}[:backup_vault_name]")
        Hearth::Validator.validate!(input[:recovery_point_arn], ::String, context: "#{context}[:recovery_point_arn]")
        Lifecycle.validate!(input[:lifecycle], context: "#{context}[:lifecycle]") unless input[:lifecycle].nil?
      end
    end

    class UpdateRecoveryPointLifecycleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRecoveryPointLifecycleOutput, context: context)
        Hearth::Validator.validate!(input[:backup_vault_arn], ::String, context: "#{context}[:backup_vault_arn]")
        Hearth::Validator.validate!(input[:recovery_point_arn], ::String, context: "#{context}[:recovery_point_arn]")
        Lifecycle.validate!(input[:lifecycle], context: "#{context}[:lifecycle]") unless input[:lifecycle].nil?
        CalculatedLifecycle.validate!(input[:calculated_lifecycle], context: "#{context}[:calculated_lifecycle]") unless input[:calculated_lifecycle].nil?
      end
    end

    class UpdateRegionSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRegionSettingsInput, context: context)
        ResourceTypeOptInPreference.validate!(input[:resource_type_opt_in_preference], context: "#{context}[:resource_type_opt_in_preference]") unless input[:resource_type_opt_in_preference].nil?
        ResourceTypeManagementPreference.validate!(input[:resource_type_management_preference], context: "#{context}[:resource_type_management_preference]") unless input[:resource_type_management_preference].nil?
      end
    end

    class UpdateRegionSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRegionSettingsOutput, context: context)
      end
    end

    class UpdateReportPlanInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateReportPlanInput, context: context)
        Hearth::Validator.validate!(input[:report_plan_name], ::String, context: "#{context}[:report_plan_name]")
        Hearth::Validator.validate!(input[:report_plan_description], ::String, context: "#{context}[:report_plan_description]")
        ReportDeliveryChannel.validate!(input[:report_delivery_channel], context: "#{context}[:report_delivery_channel]") unless input[:report_delivery_channel].nil?
        ReportSetting.validate!(input[:report_setting], context: "#{context}[:report_setting]") unless input[:report_setting].nil?
        Hearth::Validator.validate!(input[:idempotency_token], ::String, context: "#{context}[:idempotency_token]")
      end
    end

    class UpdateReportPlanOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateReportPlanOutput, context: context)
        Hearth::Validator.validate!(input[:report_plan_name], ::String, context: "#{context}[:report_plan_name]")
        Hearth::Validator.validate!(input[:report_plan_arn], ::String, context: "#{context}[:report_plan_arn]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
      end
    end

    class StringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class StringMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

  end
end
