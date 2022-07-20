# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Backup
  module Builders

    # Operation Builder for CreateBackupPlan
    class CreateBackupPlan
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/backup/plans')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['BackupPlan'] = Builders::BackupPlanInput.build(input[:backup_plan]) unless input[:backup_plan].nil?
        data['BackupPlanTags'] = Builders::Tags.build(input[:backup_plan_tags]) unless input[:backup_plan_tags].nil?
        data['CreatorRequestId'] = input[:creator_request_id] unless input[:creator_request_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for Tags
    class Tags
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for BackupPlanInput
    class BackupPlanInput
      def self.build(input)
        data = {}
        data['BackupPlanName'] = input[:backup_plan_name] unless input[:backup_plan_name].nil?
        data['Rules'] = Builders::BackupRulesInput.build(input[:rules]) unless input[:rules].nil?
        data['AdvancedBackupSettings'] = Builders::AdvancedBackupSettings.build(input[:advanced_backup_settings]) unless input[:advanced_backup_settings].nil?
        data
      end
    end

    # List Builder for AdvancedBackupSettings
    class AdvancedBackupSettings
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AdvancedBackupSetting.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AdvancedBackupSetting
    class AdvancedBackupSetting
      def self.build(input)
        data = {}
        data['ResourceType'] = input[:resource_type] unless input[:resource_type].nil?
        data['BackupOptions'] = Builders::BackupOptions.build(input[:backup_options]) unless input[:backup_options].nil?
        data
      end
    end

    # Map Builder for BackupOptions
    class BackupOptions
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Builder for BackupRulesInput
    class BackupRulesInput
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::BackupRuleInput.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for BackupRuleInput
    class BackupRuleInput
      def self.build(input)
        data = {}
        data['RuleName'] = input[:rule_name] unless input[:rule_name].nil?
        data['TargetBackupVaultName'] = input[:target_backup_vault_name] unless input[:target_backup_vault_name].nil?
        data['ScheduleExpression'] = input[:schedule_expression] unless input[:schedule_expression].nil?
        data['StartWindowMinutes'] = input[:start_window_minutes] unless input[:start_window_minutes].nil?
        data['CompletionWindowMinutes'] = input[:completion_window_minutes] unless input[:completion_window_minutes].nil?
        data['Lifecycle'] = Builders::Lifecycle.build(input[:lifecycle]) unless input[:lifecycle].nil?
        data['RecoveryPointTags'] = Builders::Tags.build(input[:recovery_point_tags]) unless input[:recovery_point_tags].nil?
        data['CopyActions'] = Builders::CopyActions.build(input[:copy_actions]) unless input[:copy_actions].nil?
        data['EnableContinuousBackup'] = input[:enable_continuous_backup] unless input[:enable_continuous_backup].nil?
        data
      end
    end

    # List Builder for CopyActions
    class CopyActions
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::CopyAction.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CopyAction
    class CopyAction
      def self.build(input)
        data = {}
        data['Lifecycle'] = Builders::Lifecycle.build(input[:lifecycle]) unless input[:lifecycle].nil?
        data['DestinationBackupVaultArn'] = input[:destination_backup_vault_arn] unless input[:destination_backup_vault_arn].nil?
        data
      end
    end

    # Structure Builder for Lifecycle
    class Lifecycle
      def self.build(input)
        data = {}
        data['MoveToColdStorageAfterDays'] = input[:move_to_cold_storage_after_days] unless input[:move_to_cold_storage_after_days].nil?
        data['DeleteAfterDays'] = input[:delete_after_days] unless input[:delete_after_days].nil?
        data
      end
    end

    # Operation Builder for CreateBackupSelection
    class CreateBackupSelection
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:backup_plan_id].to_s.empty?
          raise ArgumentError, "HTTP label :backup_plan_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/backup/plans/%<BackupPlanId>s/selections',
            BackupPlanId: Hearth::HTTP.uri_escape(input[:backup_plan_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['BackupSelection'] = Builders::BackupSelection.build(input[:backup_selection]) unless input[:backup_selection].nil?
        data['CreatorRequestId'] = input[:creator_request_id] unless input[:creator_request_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for BackupSelection
    class BackupSelection
      def self.build(input)
        data = {}
        data['SelectionName'] = input[:selection_name] unless input[:selection_name].nil?
        data['IamRoleArn'] = input[:iam_role_arn] unless input[:iam_role_arn].nil?
        data['Resources'] = Builders::ResourceArns.build(input[:resources]) unless input[:resources].nil?
        data['ListOfTags'] = Builders::ListOfTags.build(input[:list_of_tags]) unless input[:list_of_tags].nil?
        data['NotResources'] = Builders::ResourceArns.build(input[:not_resources]) unless input[:not_resources].nil?
        data['Conditions'] = Builders::Conditions.build(input[:conditions]) unless input[:conditions].nil?
        data
      end
    end

    # Structure Builder for Conditions
    class Conditions
      def self.build(input)
        data = {}
        data['StringEquals'] = Builders::ConditionParameters.build(input[:string_equals]) unless input[:string_equals].nil?
        data['StringNotEquals'] = Builders::ConditionParameters.build(input[:string_not_equals]) unless input[:string_not_equals].nil?
        data['StringLike'] = Builders::ConditionParameters.build(input[:string_like]) unless input[:string_like].nil?
        data['StringNotLike'] = Builders::ConditionParameters.build(input[:string_not_like]) unless input[:string_not_like].nil?
        data
      end
    end

    # List Builder for ConditionParameters
    class ConditionParameters
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ConditionParameter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ConditionParameter
    class ConditionParameter
      def self.build(input)
        data = {}
        data['ConditionKey'] = input[:condition_key] unless input[:condition_key].nil?
        data['ConditionValue'] = input[:condition_value] unless input[:condition_value].nil?
        data
      end
    end

    # List Builder for ResourceArns
    class ResourceArns
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for ListOfTags
    class ListOfTags
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Condition.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Condition
    class Condition
      def self.build(input)
        data = {}
        data['ConditionType'] = input[:condition_type] unless input[:condition_type].nil?
        data['ConditionKey'] = input[:condition_key] unless input[:condition_key].nil?
        data['ConditionValue'] = input[:condition_value] unless input[:condition_value].nil?
        data
      end
    end

    # Operation Builder for CreateBackupVault
    class CreateBackupVault
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:backup_vault_name].to_s.empty?
          raise ArgumentError, "HTTP label :backup_vault_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/backup-vaults/%<BackupVaultName>s',
            BackupVaultName: Hearth::HTTP.uri_escape(input[:backup_vault_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['BackupVaultTags'] = Builders::Tags.build(input[:backup_vault_tags]) unless input[:backup_vault_tags].nil?
        data['EncryptionKeyArn'] = input[:encryption_key_arn] unless input[:encryption_key_arn].nil?
        data['CreatorRequestId'] = input[:creator_request_id] unless input[:creator_request_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateFramework
    class CreateFramework
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/audit/frameworks')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['FrameworkName'] = input[:framework_name] unless input[:framework_name].nil?
        data['FrameworkDescription'] = input[:framework_description] unless input[:framework_description].nil?
        data['FrameworkControls'] = Builders::FrameworkControls.build(input[:framework_controls]) unless input[:framework_controls].nil?
        data['IdempotencyToken'] = input[:idempotency_token] unless input[:idempotency_token].nil?
        data['FrameworkTags'] = Builders::StringMap.build(input[:framework_tags]) unless input[:framework_tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for stringMap
    class StringMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Builder for FrameworkControls
    class FrameworkControls
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::FrameworkControl.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for FrameworkControl
    class FrameworkControl
      def self.build(input)
        data = {}
        data['ControlName'] = input[:control_name] unless input[:control_name].nil?
        data['ControlInputParameters'] = Builders::ControlInputParameters.build(input[:control_input_parameters]) unless input[:control_input_parameters].nil?
        data['ControlScope'] = Builders::ControlScope.build(input[:control_scope]) unless input[:control_scope].nil?
        data
      end
    end

    # Structure Builder for ControlScope
    class ControlScope
      def self.build(input)
        data = {}
        data['ComplianceResourceIds'] = Builders::ComplianceResourceIdList.build(input[:compliance_resource_ids]) unless input[:compliance_resource_ids].nil?
        data['ComplianceResourceTypes'] = Builders::ResourceTypeList.build(input[:compliance_resource_types]) unless input[:compliance_resource_types].nil?
        data['Tags'] = Builders::StringMap.build(input[:tags]) unless input[:tags].nil?
        data
      end
    end

    # List Builder for ResourceTypeList
    class ResourceTypeList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for ComplianceResourceIdList
    class ComplianceResourceIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for ControlInputParameters
    class ControlInputParameters
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ControlInputParameter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ControlInputParameter
    class ControlInputParameter
      def self.build(input)
        data = {}
        data['ParameterName'] = input[:parameter_name] unless input[:parameter_name].nil?
        data['ParameterValue'] = input[:parameter_value] unless input[:parameter_value].nil?
        data
      end
    end

    # Operation Builder for CreateReportPlan
    class CreateReportPlan
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/audit/report-plans')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ReportPlanName'] = input[:report_plan_name] unless input[:report_plan_name].nil?
        data['ReportPlanDescription'] = input[:report_plan_description] unless input[:report_plan_description].nil?
        data['ReportDeliveryChannel'] = Builders::ReportDeliveryChannel.build(input[:report_delivery_channel]) unless input[:report_delivery_channel].nil?
        data['ReportSetting'] = Builders::ReportSetting.build(input[:report_setting]) unless input[:report_setting].nil?
        data['ReportPlanTags'] = Builders::StringMap.build(input[:report_plan_tags]) unless input[:report_plan_tags].nil?
        data['IdempotencyToken'] = input[:idempotency_token] unless input[:idempotency_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ReportSetting
    class ReportSetting
      def self.build(input)
        data = {}
        data['ReportTemplate'] = input[:report_template] unless input[:report_template].nil?
        data['FrameworkArns'] = Builders::StringList.build(input[:framework_arns]) unless input[:framework_arns].nil?
        data['NumberOfFrameworks'] = input[:number_of_frameworks] unless input[:number_of_frameworks].nil?
        data
      end
    end

    # List Builder for stringList
    class StringList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ReportDeliveryChannel
    class ReportDeliveryChannel
      def self.build(input)
        data = {}
        data['S3BucketName'] = input[:s3_bucket_name] unless input[:s3_bucket_name].nil?
        data['S3KeyPrefix'] = input[:s3_key_prefix] unless input[:s3_key_prefix].nil?
        data['Formats'] = Builders::FormatList.build(input[:formats]) unless input[:formats].nil?
        data
      end
    end

    # List Builder for FormatList
    class FormatList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DeleteBackupPlan
    class DeleteBackupPlan
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:backup_plan_id].to_s.empty?
          raise ArgumentError, "HTTP label :backup_plan_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/backup/plans/%<BackupPlanId>s',
            BackupPlanId: Hearth::HTTP.uri_escape(input[:backup_plan_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteBackupSelection
    class DeleteBackupSelection
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:backup_plan_id].to_s.empty?
          raise ArgumentError, "HTTP label :backup_plan_id cannot be nil or empty."
        end
        if input[:selection_id].to_s.empty?
          raise ArgumentError, "HTTP label :selection_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/backup/plans/%<BackupPlanId>s/selections/%<SelectionId>s',
            BackupPlanId: Hearth::HTTP.uri_escape(input[:backup_plan_id].to_s),
            SelectionId: Hearth::HTTP.uri_escape(input[:selection_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteBackupVault
    class DeleteBackupVault
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:backup_vault_name].to_s.empty?
          raise ArgumentError, "HTTP label :backup_vault_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/backup-vaults/%<BackupVaultName>s',
            BackupVaultName: Hearth::HTTP.uri_escape(input[:backup_vault_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteBackupVaultAccessPolicy
    class DeleteBackupVaultAccessPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:backup_vault_name].to_s.empty?
          raise ArgumentError, "HTTP label :backup_vault_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/backup-vaults/%<BackupVaultName>s/access-policy',
            BackupVaultName: Hearth::HTTP.uri_escape(input[:backup_vault_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteBackupVaultLockConfiguration
    class DeleteBackupVaultLockConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:backup_vault_name].to_s.empty?
          raise ArgumentError, "HTTP label :backup_vault_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/backup-vaults/%<BackupVaultName>s/vault-lock',
            BackupVaultName: Hearth::HTTP.uri_escape(input[:backup_vault_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteBackupVaultNotifications
    class DeleteBackupVaultNotifications
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:backup_vault_name].to_s.empty?
          raise ArgumentError, "HTTP label :backup_vault_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/backup-vaults/%<BackupVaultName>s/notification-configuration',
            BackupVaultName: Hearth::HTTP.uri_escape(input[:backup_vault_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteFramework
    class DeleteFramework
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:framework_name].to_s.empty?
          raise ArgumentError, "HTTP label :framework_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/audit/frameworks/%<FrameworkName>s',
            FrameworkName: Hearth::HTTP.uri_escape(input[:framework_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteRecoveryPoint
    class DeleteRecoveryPoint
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:backup_vault_name].to_s.empty?
          raise ArgumentError, "HTTP label :backup_vault_name cannot be nil or empty."
        end
        if input[:recovery_point_arn].to_s.empty?
          raise ArgumentError, "HTTP label :recovery_point_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/backup-vaults/%<BackupVaultName>s/recovery-points/%<RecoveryPointArn>s',
            BackupVaultName: Hearth::HTTP.uri_escape(input[:backup_vault_name].to_s),
            RecoveryPointArn: Hearth::HTTP.uri_escape(input[:recovery_point_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteReportPlan
    class DeleteReportPlan
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:report_plan_name].to_s.empty?
          raise ArgumentError, "HTTP label :report_plan_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/audit/report-plans/%<ReportPlanName>s',
            ReportPlanName: Hearth::HTTP.uri_escape(input[:report_plan_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeBackupJob
    class DescribeBackupJob
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:backup_job_id].to_s.empty?
          raise ArgumentError, "HTTP label :backup_job_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/backup-jobs/%<BackupJobId>s',
            BackupJobId: Hearth::HTTP.uri_escape(input[:backup_job_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeBackupVault
    class DescribeBackupVault
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:backup_vault_name].to_s.empty?
          raise ArgumentError, "HTTP label :backup_vault_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/backup-vaults/%<BackupVaultName>s',
            BackupVaultName: Hearth::HTTP.uri_escape(input[:backup_vault_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeCopyJob
    class DescribeCopyJob
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:copy_job_id].to_s.empty?
          raise ArgumentError, "HTTP label :copy_job_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/copy-jobs/%<CopyJobId>s',
            CopyJobId: Hearth::HTTP.uri_escape(input[:copy_job_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeFramework
    class DescribeFramework
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:framework_name].to_s.empty?
          raise ArgumentError, "HTTP label :framework_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/audit/frameworks/%<FrameworkName>s',
            FrameworkName: Hearth::HTTP.uri_escape(input[:framework_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeGlobalSettings
    class DescribeGlobalSettings
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/global-settings')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeProtectedResource
    class DescribeProtectedResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/resources/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeRecoveryPoint
    class DescribeRecoveryPoint
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:backup_vault_name].to_s.empty?
          raise ArgumentError, "HTTP label :backup_vault_name cannot be nil or empty."
        end
        if input[:recovery_point_arn].to_s.empty?
          raise ArgumentError, "HTTP label :recovery_point_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/backup-vaults/%<BackupVaultName>s/recovery-points/%<RecoveryPointArn>s',
            BackupVaultName: Hearth::HTTP.uri_escape(input[:backup_vault_name].to_s),
            RecoveryPointArn: Hearth::HTTP.uri_escape(input[:recovery_point_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeRegionSettings
    class DescribeRegionSettings
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/account-settings')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeReportJob
    class DescribeReportJob
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:report_job_id].to_s.empty?
          raise ArgumentError, "HTTP label :report_job_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/audit/report-jobs/%<ReportJobId>s',
            ReportJobId: Hearth::HTTP.uri_escape(input[:report_job_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeReportPlan
    class DescribeReportPlan
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:report_plan_name].to_s.empty?
          raise ArgumentError, "HTTP label :report_plan_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/audit/report-plans/%<ReportPlanName>s',
            ReportPlanName: Hearth::HTTP.uri_escape(input[:report_plan_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeRestoreJob
    class DescribeRestoreJob
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:restore_job_id].to_s.empty?
          raise ArgumentError, "HTTP label :restore_job_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restore-jobs/%<RestoreJobId>s',
            RestoreJobId: Hearth::HTTP.uri_escape(input[:restore_job_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DisassociateRecoveryPoint
    class DisassociateRecoveryPoint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:backup_vault_name].to_s.empty?
          raise ArgumentError, "HTTP label :backup_vault_name cannot be nil or empty."
        end
        if input[:recovery_point_arn].to_s.empty?
          raise ArgumentError, "HTTP label :recovery_point_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/backup-vaults/%<BackupVaultName>s/recovery-points/%<RecoveryPointArn>s/disassociate',
            BackupVaultName: Hearth::HTTP.uri_escape(input[:backup_vault_name].to_s),
            RecoveryPointArn: Hearth::HTTP.uri_escape(input[:recovery_point_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ExportBackupPlanTemplate
    class ExportBackupPlanTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:backup_plan_id].to_s.empty?
          raise ArgumentError, "HTTP label :backup_plan_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/backup/plans/%<BackupPlanId>s/toTemplate',
            BackupPlanId: Hearth::HTTP.uri_escape(input[:backup_plan_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetBackupPlan
    class GetBackupPlan
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:backup_plan_id].to_s.empty?
          raise ArgumentError, "HTTP label :backup_plan_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/backup/plans/%<BackupPlanId>s',
            BackupPlanId: Hearth::HTTP.uri_escape(input[:backup_plan_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['versionId'] = input[:version_id].to_s unless input[:version_id].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetBackupPlanFromJSON
    class GetBackupPlanFromJSON
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/backup/template/json/toPlan')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['BackupPlanTemplateJson'] = input[:backup_plan_template_json] unless input[:backup_plan_template_json].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetBackupPlanFromTemplate
    class GetBackupPlanFromTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:backup_plan_template_id].to_s.empty?
          raise ArgumentError, "HTTP label :backup_plan_template_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/backup/template/plans/%<BackupPlanTemplateId>s/toPlan',
            BackupPlanTemplateId: Hearth::HTTP.uri_escape(input[:backup_plan_template_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetBackupSelection
    class GetBackupSelection
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:backup_plan_id].to_s.empty?
          raise ArgumentError, "HTTP label :backup_plan_id cannot be nil or empty."
        end
        if input[:selection_id].to_s.empty?
          raise ArgumentError, "HTTP label :selection_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/backup/plans/%<BackupPlanId>s/selections/%<SelectionId>s',
            BackupPlanId: Hearth::HTTP.uri_escape(input[:backup_plan_id].to_s),
            SelectionId: Hearth::HTTP.uri_escape(input[:selection_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetBackupVaultAccessPolicy
    class GetBackupVaultAccessPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:backup_vault_name].to_s.empty?
          raise ArgumentError, "HTTP label :backup_vault_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/backup-vaults/%<BackupVaultName>s/access-policy',
            BackupVaultName: Hearth::HTTP.uri_escape(input[:backup_vault_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetBackupVaultNotifications
    class GetBackupVaultNotifications
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:backup_vault_name].to_s.empty?
          raise ArgumentError, "HTTP label :backup_vault_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/backup-vaults/%<BackupVaultName>s/notification-configuration',
            BackupVaultName: Hearth::HTTP.uri_escape(input[:backup_vault_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetRecoveryPointRestoreMetadata
    class GetRecoveryPointRestoreMetadata
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:backup_vault_name].to_s.empty?
          raise ArgumentError, "HTTP label :backup_vault_name cannot be nil or empty."
        end
        if input[:recovery_point_arn].to_s.empty?
          raise ArgumentError, "HTTP label :recovery_point_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/backup-vaults/%<BackupVaultName>s/recovery-points/%<RecoveryPointArn>s/restore-metadata',
            BackupVaultName: Hearth::HTTP.uri_escape(input[:backup_vault_name].to_s),
            RecoveryPointArn: Hearth::HTTP.uri_escape(input[:recovery_point_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetSupportedResourceTypes
    class GetSupportedResourceTypes
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/supported-resource-types')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListBackupJobs
    class ListBackupJobs
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/backup-jobs')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['resourceArn'] = input[:by_resource_arn].to_s unless input[:by_resource_arn].nil?
        params['state'] = input[:by_state].to_s unless input[:by_state].nil?
        params['backupVaultName'] = input[:by_backup_vault_name].to_s unless input[:by_backup_vault_name].nil?
        params['createdBefore'] = Hearth::TimeHelper.to_date_time(input[:by_created_before]) unless input[:by_created_before].nil?
        params['createdAfter'] = Hearth::TimeHelper.to_date_time(input[:by_created_after]) unless input[:by_created_after].nil?
        params['resourceType'] = input[:by_resource_type].to_s unless input[:by_resource_type].nil?
        params['accountId'] = input[:by_account_id].to_s unless input[:by_account_id].nil?
        params['completeAfter'] = Hearth::TimeHelper.to_date_time(input[:by_complete_after]) unless input[:by_complete_after].nil?
        params['completeBefore'] = Hearth::TimeHelper.to_date_time(input[:by_complete_before]) unless input[:by_complete_before].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListBackupPlanTemplates
    class ListBackupPlanTemplates
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/backup/template/plans')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListBackupPlanVersions
    class ListBackupPlanVersions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:backup_plan_id].to_s.empty?
          raise ArgumentError, "HTTP label :backup_plan_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/backup/plans/%<BackupPlanId>s/versions',
            BackupPlanId: Hearth::HTTP.uri_escape(input[:backup_plan_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListBackupPlans
    class ListBackupPlans
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/backup/plans')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['includeDeleted'] = input[:include_deleted].to_s unless input[:include_deleted].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListBackupSelections
    class ListBackupSelections
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:backup_plan_id].to_s.empty?
          raise ArgumentError, "HTTP label :backup_plan_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/backup/plans/%<BackupPlanId>s/selections',
            BackupPlanId: Hearth::HTTP.uri_escape(input[:backup_plan_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListBackupVaults
    class ListBackupVaults
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/backup-vaults')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListCopyJobs
    class ListCopyJobs
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/copy-jobs')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['resourceArn'] = input[:by_resource_arn].to_s unless input[:by_resource_arn].nil?
        params['state'] = input[:by_state].to_s unless input[:by_state].nil?
        params['createdBefore'] = Hearth::TimeHelper.to_date_time(input[:by_created_before]) unless input[:by_created_before].nil?
        params['createdAfter'] = Hearth::TimeHelper.to_date_time(input[:by_created_after]) unless input[:by_created_after].nil?
        params['resourceType'] = input[:by_resource_type].to_s unless input[:by_resource_type].nil?
        params['destinationVaultArn'] = input[:by_destination_vault_arn].to_s unless input[:by_destination_vault_arn].nil?
        params['accountId'] = input[:by_account_id].to_s unless input[:by_account_id].nil?
        params['completeBefore'] = Hearth::TimeHelper.to_date_time(input[:by_complete_before]) unless input[:by_complete_before].nil?
        params['completeAfter'] = Hearth::TimeHelper.to_date_time(input[:by_complete_after]) unless input[:by_complete_after].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListFrameworks
    class ListFrameworks
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/audit/frameworks')
        params = Hearth::Query::ParamList.new
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListProtectedResources
    class ListProtectedResources
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/resources')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListRecoveryPointsByBackupVault
    class ListRecoveryPointsByBackupVault
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:backup_vault_name].to_s.empty?
          raise ArgumentError, "HTTP label :backup_vault_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/backup-vaults/%<BackupVaultName>s/recovery-points',
            BackupVaultName: Hearth::HTTP.uri_escape(input[:backup_vault_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['resourceArn'] = input[:by_resource_arn].to_s unless input[:by_resource_arn].nil?
        params['resourceType'] = input[:by_resource_type].to_s unless input[:by_resource_type].nil?
        params['backupPlanId'] = input[:by_backup_plan_id].to_s unless input[:by_backup_plan_id].nil?
        params['createdBefore'] = Hearth::TimeHelper.to_date_time(input[:by_created_before]) unless input[:by_created_before].nil?
        params['createdAfter'] = Hearth::TimeHelper.to_date_time(input[:by_created_after]) unless input[:by_created_after].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListRecoveryPointsByResource
    class ListRecoveryPointsByResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/resources/%<ResourceArn>s/recovery-points',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListReportJobs
    class ListReportJobs
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/audit/report-jobs')
        params = Hearth::Query::ParamList.new
        params['ReportPlanName'] = input[:by_report_plan_name].to_s unless input[:by_report_plan_name].nil?
        params['CreationBefore'] = Hearth::TimeHelper.to_date_time(input[:by_creation_before]) unless input[:by_creation_before].nil?
        params['CreationAfter'] = Hearth::TimeHelper.to_date_time(input[:by_creation_after]) unless input[:by_creation_after].nil?
        params['Status'] = input[:by_status].to_s unless input[:by_status].nil?
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListReportPlans
    class ListReportPlans
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/audit/report-plans')
        params = Hearth::Query::ParamList.new
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListRestoreJobs
    class ListRestoreJobs
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/restore-jobs')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['accountId'] = input[:by_account_id].to_s unless input[:by_account_id].nil?
        params['createdBefore'] = Hearth::TimeHelper.to_date_time(input[:by_created_before]) unless input[:by_created_before].nil?
        params['createdAfter'] = Hearth::TimeHelper.to_date_time(input[:by_created_after]) unless input[:by_created_after].nil?
        params['status'] = input[:by_status].to_s unless input[:by_status].nil?
        params['completeBefore'] = Hearth::TimeHelper.to_date_time(input[:by_complete_before]) unless input[:by_complete_before].nil?
        params['completeAfter'] = Hearth::TimeHelper.to_date_time(input[:by_complete_after]) unless input[:by_complete_after].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTags
    class ListTags
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for PutBackupVaultAccessPolicy
    class PutBackupVaultAccessPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:backup_vault_name].to_s.empty?
          raise ArgumentError, "HTTP label :backup_vault_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/backup-vaults/%<BackupVaultName>s/access-policy',
            BackupVaultName: Hearth::HTTP.uri_escape(input[:backup_vault_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Policy'] = input[:policy] unless input[:policy].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutBackupVaultLockConfiguration
    class PutBackupVaultLockConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:backup_vault_name].to_s.empty?
          raise ArgumentError, "HTTP label :backup_vault_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/backup-vaults/%<BackupVaultName>s/vault-lock',
            BackupVaultName: Hearth::HTTP.uri_escape(input[:backup_vault_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['MinRetentionDays'] = input[:min_retention_days] unless input[:min_retention_days].nil?
        data['MaxRetentionDays'] = input[:max_retention_days] unless input[:max_retention_days].nil?
        data['ChangeableForDays'] = input[:changeable_for_days] unless input[:changeable_for_days].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutBackupVaultNotifications
    class PutBackupVaultNotifications
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:backup_vault_name].to_s.empty?
          raise ArgumentError, "HTTP label :backup_vault_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/backup-vaults/%<BackupVaultName>s/notification-configuration',
            BackupVaultName: Hearth::HTTP.uri_escape(input[:backup_vault_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['SNSTopicArn'] = input[:sns_topic_arn] unless input[:sns_topic_arn].nil?
        data['BackupVaultEvents'] = Builders::BackupVaultEvents.build(input[:backup_vault_events]) unless input[:backup_vault_events].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for BackupVaultEvents
    class BackupVaultEvents
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for StartBackupJob
    class StartBackupJob
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/backup-jobs')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['BackupVaultName'] = input[:backup_vault_name] unless input[:backup_vault_name].nil?
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['IamRoleArn'] = input[:iam_role_arn] unless input[:iam_role_arn].nil?
        data['IdempotencyToken'] = input[:idempotency_token] unless input[:idempotency_token].nil?
        data['StartWindowMinutes'] = input[:start_window_minutes] unless input[:start_window_minutes].nil?
        data['CompleteWindowMinutes'] = input[:complete_window_minutes] unless input[:complete_window_minutes].nil?
        data['Lifecycle'] = Builders::Lifecycle.build(input[:lifecycle]) unless input[:lifecycle].nil?
        data['RecoveryPointTags'] = Builders::Tags.build(input[:recovery_point_tags]) unless input[:recovery_point_tags].nil?
        data['BackupOptions'] = Builders::BackupOptions.build(input[:backup_options]) unless input[:backup_options].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartCopyJob
    class StartCopyJob
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/copy-jobs')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['RecoveryPointArn'] = input[:recovery_point_arn] unless input[:recovery_point_arn].nil?
        data['SourceBackupVaultName'] = input[:source_backup_vault_name] unless input[:source_backup_vault_name].nil?
        data['DestinationBackupVaultArn'] = input[:destination_backup_vault_arn] unless input[:destination_backup_vault_arn].nil?
        data['IamRoleArn'] = input[:iam_role_arn] unless input[:iam_role_arn].nil?
        data['IdempotencyToken'] = input[:idempotency_token] unless input[:idempotency_token].nil?
        data['Lifecycle'] = Builders::Lifecycle.build(input[:lifecycle]) unless input[:lifecycle].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartReportJob
    class StartReportJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:report_plan_name].to_s.empty?
          raise ArgumentError, "HTTP label :report_plan_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/audit/report-jobs/%<ReportPlanName>s',
            ReportPlanName: Hearth::HTTP.uri_escape(input[:report_plan_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['IdempotencyToken'] = input[:idempotency_token] unless input[:idempotency_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartRestoreJob
    class StartRestoreJob
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/restore-jobs')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['RecoveryPointArn'] = input[:recovery_point_arn] unless input[:recovery_point_arn].nil?
        data['Metadata'] = Builders::Metadata.build(input[:metadata]) unless input[:metadata].nil?
        data['IamRoleArn'] = input[:iam_role_arn] unless input[:iam_role_arn].nil?
        data['IdempotencyToken'] = input[:idempotency_token] unless input[:idempotency_token].nil?
        data['ResourceType'] = input[:resource_type] unless input[:resource_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for Metadata
    class Metadata
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for StopBackupJob
    class StopBackupJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:backup_job_id].to_s.empty?
          raise ArgumentError, "HTTP label :backup_job_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/backup-jobs/%<BackupJobId>s',
            BackupJobId: Hearth::HTTP.uri_escape(input[:backup_job_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/untag/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['TagKeyList'] = Builders::TagKeyList.build(input[:tag_key_list]) unless input[:tag_key_list].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateBackupPlan
    class UpdateBackupPlan
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:backup_plan_id].to_s.empty?
          raise ArgumentError, "HTTP label :backup_plan_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/backup/plans/%<BackupPlanId>s',
            BackupPlanId: Hearth::HTTP.uri_escape(input[:backup_plan_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['BackupPlan'] = Builders::BackupPlanInput.build(input[:backup_plan]) unless input[:backup_plan].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateFramework
    class UpdateFramework
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:framework_name].to_s.empty?
          raise ArgumentError, "HTTP label :framework_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/audit/frameworks/%<FrameworkName>s',
            FrameworkName: Hearth::HTTP.uri_escape(input[:framework_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['FrameworkDescription'] = input[:framework_description] unless input[:framework_description].nil?
        data['FrameworkControls'] = Builders::FrameworkControls.build(input[:framework_controls]) unless input[:framework_controls].nil?
        data['IdempotencyToken'] = input[:idempotency_token] unless input[:idempotency_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateGlobalSettings
    class UpdateGlobalSettings
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/global-settings')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['GlobalSettings'] = Builders::GlobalSettings.build(input[:global_settings]) unless input[:global_settings].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for GlobalSettings
    class GlobalSettings
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateRecoveryPointLifecycle
    class UpdateRecoveryPointLifecycle
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:backup_vault_name].to_s.empty?
          raise ArgumentError, "HTTP label :backup_vault_name cannot be nil or empty."
        end
        if input[:recovery_point_arn].to_s.empty?
          raise ArgumentError, "HTTP label :recovery_point_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/backup-vaults/%<BackupVaultName>s/recovery-points/%<RecoveryPointArn>s',
            BackupVaultName: Hearth::HTTP.uri_escape(input[:backup_vault_name].to_s),
            RecoveryPointArn: Hearth::HTTP.uri_escape(input[:recovery_point_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Lifecycle'] = Builders::Lifecycle.build(input[:lifecycle]) unless input[:lifecycle].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateRegionSettings
    class UpdateRegionSettings
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/account-settings')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ResourceTypeOptInPreference'] = Builders::ResourceTypeOptInPreference.build(input[:resource_type_opt_in_preference]) unless input[:resource_type_opt_in_preference].nil?
        data['ResourceTypeManagementPreference'] = Builders::ResourceTypeManagementPreference.build(input[:resource_type_management_preference]) unless input[:resource_type_management_preference].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for ResourceTypeManagementPreference
    class ResourceTypeManagementPreference
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Map Builder for ResourceTypeOptInPreference
    class ResourceTypeOptInPreference
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateReportPlan
    class UpdateReportPlan
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:report_plan_name].to_s.empty?
          raise ArgumentError, "HTTP label :report_plan_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/audit/report-plans/%<ReportPlanName>s',
            ReportPlanName: Hearth::HTTP.uri_escape(input[:report_plan_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ReportPlanDescription'] = input[:report_plan_description] unless input[:report_plan_description].nil?
        data['ReportDeliveryChannel'] = Builders::ReportDeliveryChannel.build(input[:report_delivery_channel]) unless input[:report_delivery_channel].nil?
        data['ReportSetting'] = Builders::ReportSetting.build(input[:report_setting]) unless input[:report_setting].nil?
        data['IdempotencyToken'] = input[:idempotency_token] unless input[:idempotency_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
