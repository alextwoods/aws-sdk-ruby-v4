# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Backup
  module Parsers

    # Operation Parser for CreateBackupPlan
    class CreateBackupPlan
      def self.parse(http_resp)
        data = Types::CreateBackupPlanOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.backup_plan_id = map['BackupPlanId']
        data.backup_plan_arn = map['BackupPlanArn']
        data.creation_date = Time.at(map['CreationDate'].to_i) if map['CreationDate']
        data.version_id = map['VersionId']
        data.advanced_backup_settings = (AdvancedBackupSettings.parse(map['AdvancedBackupSettings']) unless map['AdvancedBackupSettings'].nil?)
        data
      end
    end

    class AdvancedBackupSettings
      def self.parse(list)
        data = []
        list.map do |value|
          data << AdvancedBackupSetting.parse(value) unless value.nil?
        end
        data
      end
    end

    class AdvancedBackupSetting
      def self.parse(map)
        data = Types::AdvancedBackupSetting.new
        data.resource_type = map['ResourceType']
        data.backup_options = (BackupOptions.parse(map['BackupOptions']) unless map['BackupOptions'].nil?)
        return data
      end
    end

    class BackupOptions
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Error Parser for AlreadyExistsException
    class AlreadyExistsException
      def self.parse(http_resp)
        data = Types::AlreadyExistsException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data.creator_request_id = map['CreatorRequestId']
        data.arn = map['Arn']
        data.type = map['Type']
        data.context = map['Context']
        data
      end
    end

    # Error Parser for InvalidParameterValueException
    class InvalidParameterValueException
      def self.parse(http_resp)
        data = Types::InvalidParameterValueException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data.type = map['Type']
        data.context = map['Context']
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data.type = map['Type']
        data.context = map['Context']
        data
      end
    end

    # Error Parser for MissingParameterValueException
    class MissingParameterValueException
      def self.parse(http_resp)
        data = Types::MissingParameterValueException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data.type = map['Type']
        data.context = map['Context']
        data
      end
    end

    # Error Parser for ServiceUnavailableException
    class ServiceUnavailableException
      def self.parse(http_resp)
        data = Types::ServiceUnavailableException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data.type = map['Type']
        data.context = map['Context']
        data
      end
    end

    # Operation Parser for CreateBackupSelection
    class CreateBackupSelection
      def self.parse(http_resp)
        data = Types::CreateBackupSelectionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.selection_id = map['SelectionId']
        data.backup_plan_id = map['BackupPlanId']
        data.creation_date = Time.at(map['CreationDate'].to_i) if map['CreationDate']
        data
      end
    end

    # Operation Parser for CreateBackupVault
    class CreateBackupVault
      def self.parse(http_resp)
        data = Types::CreateBackupVaultOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.backup_vault_name = map['BackupVaultName']
        data.backup_vault_arn = map['BackupVaultArn']
        data.creation_date = Time.at(map['CreationDate'].to_i) if map['CreationDate']
        data
      end
    end

    # Operation Parser for CreateFramework
    class CreateFramework
      def self.parse(http_resp)
        data = Types::CreateFrameworkOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.framework_name = map['FrameworkName']
        data.framework_arn = map['FrameworkArn']
        data
      end
    end

    # Operation Parser for CreateReportPlan
    class CreateReportPlan
      def self.parse(http_resp)
        data = Types::CreateReportPlanOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.report_plan_name = map['ReportPlanName']
        data.report_plan_arn = map['ReportPlanArn']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data
      end
    end

    # Operation Parser for DeleteBackupPlan
    class DeleteBackupPlan
      def self.parse(http_resp)
        data = Types::DeleteBackupPlanOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.backup_plan_id = map['BackupPlanId']
        data.backup_plan_arn = map['BackupPlanArn']
        data.deletion_date = Time.at(map['DeletionDate'].to_i) if map['DeletionDate']
        data.version_id = map['VersionId']
        data
      end
    end

    # Error Parser for InvalidRequestException
    class InvalidRequestException
      def self.parse(http_resp)
        data = Types::InvalidRequestException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data.type = map['Type']
        data.context = map['Context']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data.type = map['Type']
        data.context = map['Context']
        data
      end
    end

    # Operation Parser for DeleteBackupSelection
    class DeleteBackupSelection
      def self.parse(http_resp)
        data = Types::DeleteBackupSelectionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteBackupVault
    class DeleteBackupVault
      def self.parse(http_resp)
        data = Types::DeleteBackupVaultOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteBackupVaultAccessPolicy
    class DeleteBackupVaultAccessPolicy
      def self.parse(http_resp)
        data = Types::DeleteBackupVaultAccessPolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteBackupVaultLockConfiguration
    class DeleteBackupVaultLockConfiguration
      def self.parse(http_resp)
        data = Types::DeleteBackupVaultLockConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteBackupVaultNotifications
    class DeleteBackupVaultNotifications
      def self.parse(http_resp)
        data = Types::DeleteBackupVaultNotificationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteFramework
    class DeleteFramework
      def self.parse(http_resp)
        data = Types::DeleteFrameworkOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data.type = map['Type']
        data.context = map['Context']
        data
      end
    end

    # Operation Parser for DeleteRecoveryPoint
    class DeleteRecoveryPoint
      def self.parse(http_resp)
        data = Types::DeleteRecoveryPointOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for InvalidResourceStateException
    class InvalidResourceStateException
      def self.parse(http_resp)
        data = Types::InvalidResourceStateException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data.type = map['Type']
        data.context = map['Context']
        data
      end
    end

    # Operation Parser for DeleteReportPlan
    class DeleteReportPlan
      def self.parse(http_resp)
        data = Types::DeleteReportPlanOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DescribeBackupJob
    class DescribeBackupJob
      def self.parse(http_resp)
        data = Types::DescribeBackupJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.account_id = map['AccountId']
        data.backup_job_id = map['BackupJobId']
        data.backup_vault_name = map['BackupVaultName']
        data.backup_vault_arn = map['BackupVaultArn']
        data.recovery_point_arn = map['RecoveryPointArn']
        data.resource_arn = map['ResourceArn']
        data.creation_date = Time.at(map['CreationDate'].to_i) if map['CreationDate']
        data.completion_date = Time.at(map['CompletionDate'].to_i) if map['CompletionDate']
        data.state = map['State']
        data.status_message = map['StatusMessage']
        data.percent_done = map['PercentDone']
        data.backup_size_in_bytes = map['BackupSizeInBytes']
        data.iam_role_arn = map['IamRoleArn']
        data.created_by = (RecoveryPointCreator.parse(map['CreatedBy']) unless map['CreatedBy'].nil?)
        data.resource_type = map['ResourceType']
        data.bytes_transferred = map['BytesTransferred']
        data.expected_completion_date = Time.at(map['ExpectedCompletionDate'].to_i) if map['ExpectedCompletionDate']
        data.start_by = Time.at(map['StartBy'].to_i) if map['StartBy']
        data.backup_options = (BackupOptions.parse(map['BackupOptions']) unless map['BackupOptions'].nil?)
        data.backup_type = map['BackupType']
        data
      end
    end

    class RecoveryPointCreator
      def self.parse(map)
        data = Types::RecoveryPointCreator.new
        data.backup_plan_id = map['BackupPlanId']
        data.backup_plan_arn = map['BackupPlanArn']
        data.backup_plan_version = map['BackupPlanVersion']
        data.backup_rule_id = map['BackupRuleId']
        return data
      end
    end

    # Error Parser for DependencyFailureException
    class DependencyFailureException
      def self.parse(http_resp)
        data = Types::DependencyFailureException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data.type = map['Type']
        data.context = map['Context']
        data
      end
    end

    # Operation Parser for DescribeBackupVault
    class DescribeBackupVault
      def self.parse(http_resp)
        data = Types::DescribeBackupVaultOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.backup_vault_name = map['BackupVaultName']
        data.backup_vault_arn = map['BackupVaultArn']
        data.encryption_key_arn = map['EncryptionKeyArn']
        data.creation_date = Time.at(map['CreationDate'].to_i) if map['CreationDate']
        data.creator_request_id = map['CreatorRequestId']
        data.number_of_recovery_points = map['NumberOfRecoveryPoints']
        data.locked = map['Locked']
        data.min_retention_days = map['MinRetentionDays']
        data.max_retention_days = map['MaxRetentionDays']
        data.lock_date = Time.at(map['LockDate'].to_i) if map['LockDate']
        data
      end
    end

    # Operation Parser for DescribeCopyJob
    class DescribeCopyJob
      def self.parse(http_resp)
        data = Types::DescribeCopyJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.copy_job = (CopyJob.parse(map['CopyJob']) unless map['CopyJob'].nil?)
        data
      end
    end

    class CopyJob
      def self.parse(map)
        data = Types::CopyJob.new
        data.account_id = map['AccountId']
        data.copy_job_id = map['CopyJobId']
        data.source_backup_vault_arn = map['SourceBackupVaultArn']
        data.source_recovery_point_arn = map['SourceRecoveryPointArn']
        data.destination_backup_vault_arn = map['DestinationBackupVaultArn']
        data.destination_recovery_point_arn = map['DestinationRecoveryPointArn']
        data.resource_arn = map['ResourceArn']
        data.creation_date = Time.at(map['CreationDate'].to_i) if map['CreationDate']
        data.completion_date = Time.at(map['CompletionDate'].to_i) if map['CompletionDate']
        data.state = map['State']
        data.status_message = map['StatusMessage']
        data.backup_size_in_bytes = map['BackupSizeInBytes']
        data.iam_role_arn = map['IamRoleArn']
        data.created_by = (RecoveryPointCreator.parse(map['CreatedBy']) unless map['CreatedBy'].nil?)
        data.resource_type = map['ResourceType']
        return data
      end
    end

    # Operation Parser for DescribeFramework
    class DescribeFramework
      def self.parse(http_resp)
        data = Types::DescribeFrameworkOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.framework_name = map['FrameworkName']
        data.framework_arn = map['FrameworkArn']
        data.framework_description = map['FrameworkDescription']
        data.framework_controls = (FrameworkControls.parse(map['FrameworkControls']) unless map['FrameworkControls'].nil?)
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.deployment_status = map['DeploymentStatus']
        data.framework_status = map['FrameworkStatus']
        data.idempotency_token = map['IdempotencyToken']
        data
      end
    end

    class FrameworkControls
      def self.parse(list)
        data = []
        list.map do |value|
          data << FrameworkControl.parse(value) unless value.nil?
        end
        data
      end
    end

    class FrameworkControl
      def self.parse(map)
        data = Types::FrameworkControl.new
        data.control_name = map['ControlName']
        data.control_input_parameters = (ControlInputParameters.parse(map['ControlInputParameters']) unless map['ControlInputParameters'].nil?)
        data.control_scope = (ControlScope.parse(map['ControlScope']) unless map['ControlScope'].nil?)
        return data
      end
    end

    class ControlScope
      def self.parse(map)
        data = Types::ControlScope.new
        data.compliance_resource_ids = (ComplianceResourceIdList.parse(map['ComplianceResourceIds']) unless map['ComplianceResourceIds'].nil?)
        data.compliance_resource_types = (ResourceTypeList.parse(map['ComplianceResourceTypes']) unless map['ComplianceResourceTypes'].nil?)
        data.tags = (StringMap.parse(map['Tags']) unless map['Tags'].nil?)
        return data
      end
    end

    class StringMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class ResourceTypeList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class ComplianceResourceIdList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class ControlInputParameters
      def self.parse(list)
        data = []
        list.map do |value|
          data << ControlInputParameter.parse(value) unless value.nil?
        end
        data
      end
    end

    class ControlInputParameter
      def self.parse(map)
        data = Types::ControlInputParameter.new
        data.parameter_name = map['ParameterName']
        data.parameter_value = map['ParameterValue']
        return data
      end
    end

    # Operation Parser for DescribeGlobalSettings
    class DescribeGlobalSettings
      def self.parse(http_resp)
        data = Types::DescribeGlobalSettingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.global_settings = (GlobalSettings.parse(map['GlobalSettings']) unless map['GlobalSettings'].nil?)
        data.last_update_time = Time.at(map['LastUpdateTime'].to_i) if map['LastUpdateTime']
        data
      end
    end

    class GlobalSettings
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeProtectedResource
    class DescribeProtectedResource
      def self.parse(http_resp)
        data = Types::DescribeProtectedResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.resource_arn = map['ResourceArn']
        data.resource_type = map['ResourceType']
        data.last_backup_time = Time.at(map['LastBackupTime'].to_i) if map['LastBackupTime']
        data
      end
    end

    # Operation Parser for DescribeRecoveryPoint
    class DescribeRecoveryPoint
      def self.parse(http_resp)
        data = Types::DescribeRecoveryPointOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.recovery_point_arn = map['RecoveryPointArn']
        data.backup_vault_name = map['BackupVaultName']
        data.backup_vault_arn = map['BackupVaultArn']
        data.source_backup_vault_arn = map['SourceBackupVaultArn']
        data.resource_arn = map['ResourceArn']
        data.resource_type = map['ResourceType']
        data.created_by = (RecoveryPointCreator.parse(map['CreatedBy']) unless map['CreatedBy'].nil?)
        data.iam_role_arn = map['IamRoleArn']
        data.status = map['Status']
        data.status_message = map['StatusMessage']
        data.creation_date = Time.at(map['CreationDate'].to_i) if map['CreationDate']
        data.completion_date = Time.at(map['CompletionDate'].to_i) if map['CompletionDate']
        data.backup_size_in_bytes = map['BackupSizeInBytes']
        data.calculated_lifecycle = (CalculatedLifecycle.parse(map['CalculatedLifecycle']) unless map['CalculatedLifecycle'].nil?)
        data.lifecycle = (Lifecycle.parse(map['Lifecycle']) unless map['Lifecycle'].nil?)
        data.encryption_key_arn = map['EncryptionKeyArn']
        data.is_encrypted = map['IsEncrypted']
        data.storage_class = map['StorageClass']
        data.last_restore_time = Time.at(map['LastRestoreTime'].to_i) if map['LastRestoreTime']
        data
      end
    end

    class Lifecycle
      def self.parse(map)
        data = Types::Lifecycle.new
        data.move_to_cold_storage_after_days = map['MoveToColdStorageAfterDays']
        data.delete_after_days = map['DeleteAfterDays']
        return data
      end
    end

    class CalculatedLifecycle
      def self.parse(map)
        data = Types::CalculatedLifecycle.new
        data.move_to_cold_storage_at = Time.at(map['MoveToColdStorageAt'].to_i) if map['MoveToColdStorageAt']
        data.delete_at = Time.at(map['DeleteAt'].to_i) if map['DeleteAt']
        return data
      end
    end

    # Operation Parser for DescribeRegionSettings
    class DescribeRegionSettings
      def self.parse(http_resp)
        data = Types::DescribeRegionSettingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.resource_type_opt_in_preference = (ResourceTypeOptInPreference.parse(map['ResourceTypeOptInPreference']) unless map['ResourceTypeOptInPreference'].nil?)
        data.resource_type_management_preference = (ResourceTypeManagementPreference.parse(map['ResourceTypeManagementPreference']) unless map['ResourceTypeManagementPreference'].nil?)
        data
      end
    end

    class ResourceTypeManagementPreference
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class ResourceTypeOptInPreference
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeReportJob
    class DescribeReportJob
      def self.parse(http_resp)
        data = Types::DescribeReportJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.report_job = (ReportJob.parse(map['ReportJob']) unless map['ReportJob'].nil?)
        data
      end
    end

    class ReportJob
      def self.parse(map)
        data = Types::ReportJob.new
        data.report_job_id = map['ReportJobId']
        data.report_plan_arn = map['ReportPlanArn']
        data.report_template = map['ReportTemplate']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.completion_time = Time.at(map['CompletionTime'].to_i) if map['CompletionTime']
        data.status = map['Status']
        data.status_message = map['StatusMessage']
        data.report_destination = (ReportDestination.parse(map['ReportDestination']) unless map['ReportDestination'].nil?)
        return data
      end
    end

    class ReportDestination
      def self.parse(map)
        data = Types::ReportDestination.new
        data.s3_bucket_name = map['S3BucketName']
        data.s3_keys = (StringList.parse(map['S3Keys']) unless map['S3Keys'].nil?)
        return data
      end
    end

    class StringList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeReportPlan
    class DescribeReportPlan
      def self.parse(http_resp)
        data = Types::DescribeReportPlanOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.report_plan = (ReportPlan.parse(map['ReportPlan']) unless map['ReportPlan'].nil?)
        data
      end
    end

    class ReportPlan
      def self.parse(map)
        data = Types::ReportPlan.new
        data.report_plan_arn = map['ReportPlanArn']
        data.report_plan_name = map['ReportPlanName']
        data.report_plan_description = map['ReportPlanDescription']
        data.report_setting = (ReportSetting.parse(map['ReportSetting']) unless map['ReportSetting'].nil?)
        data.report_delivery_channel = (ReportDeliveryChannel.parse(map['ReportDeliveryChannel']) unless map['ReportDeliveryChannel'].nil?)
        data.deployment_status = map['DeploymentStatus']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_attempted_execution_time = Time.at(map['LastAttemptedExecutionTime'].to_i) if map['LastAttemptedExecutionTime']
        data.last_successful_execution_time = Time.at(map['LastSuccessfulExecutionTime'].to_i) if map['LastSuccessfulExecutionTime']
        return data
      end
    end

    class ReportDeliveryChannel
      def self.parse(map)
        data = Types::ReportDeliveryChannel.new
        data.s3_bucket_name = map['S3BucketName']
        data.s3_key_prefix = map['S3KeyPrefix']
        data.formats = (FormatList.parse(map['Formats']) unless map['Formats'].nil?)
        return data
      end
    end

    class FormatList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class ReportSetting
      def self.parse(map)
        data = Types::ReportSetting.new
        data.report_template = map['ReportTemplate']
        data.framework_arns = (StringList.parse(map['FrameworkArns']) unless map['FrameworkArns'].nil?)
        data.number_of_frameworks = map['NumberOfFrameworks']
        return data
      end
    end

    # Operation Parser for DescribeRestoreJob
    class DescribeRestoreJob
      def self.parse(http_resp)
        data = Types::DescribeRestoreJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.account_id = map['AccountId']
        data.restore_job_id = map['RestoreJobId']
        data.recovery_point_arn = map['RecoveryPointArn']
        data.creation_date = Time.at(map['CreationDate'].to_i) if map['CreationDate']
        data.completion_date = Time.at(map['CompletionDate'].to_i) if map['CompletionDate']
        data.status = map['Status']
        data.status_message = map['StatusMessage']
        data.percent_done = map['PercentDone']
        data.backup_size_in_bytes = map['BackupSizeInBytes']
        data.iam_role_arn = map['IamRoleArn']
        data.expected_completion_time_minutes = map['ExpectedCompletionTimeMinutes']
        data.created_resource_arn = map['CreatedResourceArn']
        data.resource_type = map['ResourceType']
        data
      end
    end

    # Operation Parser for DisassociateRecoveryPoint
    class DisassociateRecoveryPoint
      def self.parse(http_resp)
        data = Types::DisassociateRecoveryPointOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for ExportBackupPlanTemplate
    class ExportBackupPlanTemplate
      def self.parse(http_resp)
        data = Types::ExportBackupPlanTemplateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.backup_plan_template_json = map['BackupPlanTemplateJson']
        data
      end
    end

    # Operation Parser for GetBackupPlan
    class GetBackupPlan
      def self.parse(http_resp)
        data = Types::GetBackupPlanOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.backup_plan = (BackupPlan.parse(map['BackupPlan']) unless map['BackupPlan'].nil?)
        data.backup_plan_id = map['BackupPlanId']
        data.backup_plan_arn = map['BackupPlanArn']
        data.version_id = map['VersionId']
        data.creator_request_id = map['CreatorRequestId']
        data.creation_date = Time.at(map['CreationDate'].to_i) if map['CreationDate']
        data.deletion_date = Time.at(map['DeletionDate'].to_i) if map['DeletionDate']
        data.last_execution_date = Time.at(map['LastExecutionDate'].to_i) if map['LastExecutionDate']
        data.advanced_backup_settings = (AdvancedBackupSettings.parse(map['AdvancedBackupSettings']) unless map['AdvancedBackupSettings'].nil?)
        data
      end
    end

    class BackupPlan
      def self.parse(map)
        data = Types::BackupPlan.new
        data.backup_plan_name = map['BackupPlanName']
        data.rules = (BackupRules.parse(map['Rules']) unless map['Rules'].nil?)
        data.advanced_backup_settings = (AdvancedBackupSettings.parse(map['AdvancedBackupSettings']) unless map['AdvancedBackupSettings'].nil?)
        return data
      end
    end

    class BackupRules
      def self.parse(list)
        data = []
        list.map do |value|
          data << BackupRule.parse(value) unless value.nil?
        end
        data
      end
    end

    class BackupRule
      def self.parse(map)
        data = Types::BackupRule.new
        data.rule_name = map['RuleName']
        data.target_backup_vault_name = map['TargetBackupVaultName']
        data.schedule_expression = map['ScheduleExpression']
        data.start_window_minutes = map['StartWindowMinutes']
        data.completion_window_minutes = map['CompletionWindowMinutes']
        data.lifecycle = (Lifecycle.parse(map['Lifecycle']) unless map['Lifecycle'].nil?)
        data.recovery_point_tags = (Tags.parse(map['RecoveryPointTags']) unless map['RecoveryPointTags'].nil?)
        data.rule_id = map['RuleId']
        data.copy_actions = (CopyActions.parse(map['CopyActions']) unless map['CopyActions'].nil?)
        data.enable_continuous_backup = map['EnableContinuousBackup']
        return data
      end
    end

    class CopyActions
      def self.parse(list)
        data = []
        list.map do |value|
          data << CopyAction.parse(value) unless value.nil?
        end
        data
      end
    end

    class CopyAction
      def self.parse(map)
        data = Types::CopyAction.new
        data.lifecycle = (Lifecycle.parse(map['Lifecycle']) unless map['Lifecycle'].nil?)
        data.destination_backup_vault_arn = map['DestinationBackupVaultArn']
        return data
      end
    end

    class Tags
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetBackupPlanFromJSON
    class GetBackupPlanFromJSON
      def self.parse(http_resp)
        data = Types::GetBackupPlanFromJSONOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.backup_plan = (BackupPlan.parse(map['BackupPlan']) unless map['BackupPlan'].nil?)
        data
      end
    end

    # Operation Parser for GetBackupPlanFromTemplate
    class GetBackupPlanFromTemplate
      def self.parse(http_resp)
        data = Types::GetBackupPlanFromTemplateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.backup_plan_document = (BackupPlan.parse(map['BackupPlanDocument']) unless map['BackupPlanDocument'].nil?)
        data
      end
    end

    # Operation Parser for GetBackupSelection
    class GetBackupSelection
      def self.parse(http_resp)
        data = Types::GetBackupSelectionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.backup_selection = (BackupSelection.parse(map['BackupSelection']) unless map['BackupSelection'].nil?)
        data.selection_id = map['SelectionId']
        data.backup_plan_id = map['BackupPlanId']
        data.creation_date = Time.at(map['CreationDate'].to_i) if map['CreationDate']
        data.creator_request_id = map['CreatorRequestId']
        data
      end
    end

    class BackupSelection
      def self.parse(map)
        data = Types::BackupSelection.new
        data.selection_name = map['SelectionName']
        data.iam_role_arn = map['IamRoleArn']
        data.resources = (ResourceArns.parse(map['Resources']) unless map['Resources'].nil?)
        data.list_of_tags = (ListOfTags.parse(map['ListOfTags']) unless map['ListOfTags'].nil?)
        data.not_resources = (ResourceArns.parse(map['NotResources']) unless map['NotResources'].nil?)
        data.conditions = (Conditions.parse(map['Conditions']) unless map['Conditions'].nil?)
        return data
      end
    end

    class Conditions
      def self.parse(map)
        data = Types::Conditions.new
        data.string_equals = (ConditionParameters.parse(map['StringEquals']) unless map['StringEquals'].nil?)
        data.string_not_equals = (ConditionParameters.parse(map['StringNotEquals']) unless map['StringNotEquals'].nil?)
        data.string_like = (ConditionParameters.parse(map['StringLike']) unless map['StringLike'].nil?)
        data.string_not_like = (ConditionParameters.parse(map['StringNotLike']) unless map['StringNotLike'].nil?)
        return data
      end
    end

    class ConditionParameters
      def self.parse(list)
        data = []
        list.map do |value|
          data << ConditionParameter.parse(value) unless value.nil?
        end
        data
      end
    end

    class ConditionParameter
      def self.parse(map)
        data = Types::ConditionParameter.new
        data.condition_key = map['ConditionKey']
        data.condition_value = map['ConditionValue']
        return data
      end
    end

    class ResourceArns
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class ListOfTags
      def self.parse(list)
        data = []
        list.map do |value|
          data << Condition.parse(value) unless value.nil?
        end
        data
      end
    end

    class Condition
      def self.parse(map)
        data = Types::Condition.new
        data.condition_type = map['ConditionType']
        data.condition_key = map['ConditionKey']
        data.condition_value = map['ConditionValue']
        return data
      end
    end

    # Operation Parser for GetBackupVaultAccessPolicy
    class GetBackupVaultAccessPolicy
      def self.parse(http_resp)
        data = Types::GetBackupVaultAccessPolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.backup_vault_name = map['BackupVaultName']
        data.backup_vault_arn = map['BackupVaultArn']
        data.policy = map['Policy']
        data
      end
    end

    # Operation Parser for GetBackupVaultNotifications
    class GetBackupVaultNotifications
      def self.parse(http_resp)
        data = Types::GetBackupVaultNotificationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.backup_vault_name = map['BackupVaultName']
        data.backup_vault_arn = map['BackupVaultArn']
        data.sns_topic_arn = map['SNSTopicArn']
        data.backup_vault_events = (BackupVaultEvents.parse(map['BackupVaultEvents']) unless map['BackupVaultEvents'].nil?)
        data
      end
    end

    class BackupVaultEvents
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetRecoveryPointRestoreMetadata
    class GetRecoveryPointRestoreMetadata
      def self.parse(http_resp)
        data = Types::GetRecoveryPointRestoreMetadataOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.backup_vault_arn = map['BackupVaultArn']
        data.recovery_point_arn = map['RecoveryPointArn']
        data.restore_metadata = (Metadata.parse(map['RestoreMetadata']) unless map['RestoreMetadata'].nil?)
        data
      end
    end

    class Metadata
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetSupportedResourceTypes
    class GetSupportedResourceTypes
      def self.parse(http_resp)
        data = Types::GetSupportedResourceTypesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.resource_types = (ResourceTypes.parse(map['ResourceTypes']) unless map['ResourceTypes'].nil?)
        data
      end
    end

    class ResourceTypes
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListBackupJobs
    class ListBackupJobs
      def self.parse(http_resp)
        data = Types::ListBackupJobsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.backup_jobs = (BackupJobsList.parse(map['BackupJobs']) unless map['BackupJobs'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class BackupJobsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << BackupJob.parse(value) unless value.nil?
        end
        data
      end
    end

    class BackupJob
      def self.parse(map)
        data = Types::BackupJob.new
        data.account_id = map['AccountId']
        data.backup_job_id = map['BackupJobId']
        data.backup_vault_name = map['BackupVaultName']
        data.backup_vault_arn = map['BackupVaultArn']
        data.recovery_point_arn = map['RecoveryPointArn']
        data.resource_arn = map['ResourceArn']
        data.creation_date = Time.at(map['CreationDate'].to_i) if map['CreationDate']
        data.completion_date = Time.at(map['CompletionDate'].to_i) if map['CompletionDate']
        data.state = map['State']
        data.status_message = map['StatusMessage']
        data.percent_done = map['PercentDone']
        data.backup_size_in_bytes = map['BackupSizeInBytes']
        data.iam_role_arn = map['IamRoleArn']
        data.created_by = (RecoveryPointCreator.parse(map['CreatedBy']) unless map['CreatedBy'].nil?)
        data.expected_completion_date = Time.at(map['ExpectedCompletionDate'].to_i) if map['ExpectedCompletionDate']
        data.start_by = Time.at(map['StartBy'].to_i) if map['StartBy']
        data.resource_type = map['ResourceType']
        data.bytes_transferred = map['BytesTransferred']
        data.backup_options = (BackupOptions.parse(map['BackupOptions']) unless map['BackupOptions'].nil?)
        data.backup_type = map['BackupType']
        return data
      end
    end

    # Operation Parser for ListBackupPlanTemplates
    class ListBackupPlanTemplates
      def self.parse(http_resp)
        data = Types::ListBackupPlanTemplatesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['NextToken']
        data.backup_plan_templates_list = (BackupPlanTemplatesList.parse(map['BackupPlanTemplatesList']) unless map['BackupPlanTemplatesList'].nil?)
        data
      end
    end

    class BackupPlanTemplatesList
      def self.parse(list)
        data = []
        list.map do |value|
          data << BackupPlanTemplatesListMember.parse(value) unless value.nil?
        end
        data
      end
    end

    class BackupPlanTemplatesListMember
      def self.parse(map)
        data = Types::BackupPlanTemplatesListMember.new
        data.backup_plan_template_id = map['BackupPlanTemplateId']
        data.backup_plan_template_name = map['BackupPlanTemplateName']
        return data
      end
    end

    # Operation Parser for ListBackupPlanVersions
    class ListBackupPlanVersions
      def self.parse(http_resp)
        data = Types::ListBackupPlanVersionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['NextToken']
        data.backup_plan_versions_list = (BackupPlanVersionsList.parse(map['BackupPlanVersionsList']) unless map['BackupPlanVersionsList'].nil?)
        data
      end
    end

    class BackupPlanVersionsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << BackupPlansListMember.parse(value) unless value.nil?
        end
        data
      end
    end

    class BackupPlansListMember
      def self.parse(map)
        data = Types::BackupPlansListMember.new
        data.backup_plan_arn = map['BackupPlanArn']
        data.backup_plan_id = map['BackupPlanId']
        data.creation_date = Time.at(map['CreationDate'].to_i) if map['CreationDate']
        data.deletion_date = Time.at(map['DeletionDate'].to_i) if map['DeletionDate']
        data.version_id = map['VersionId']
        data.backup_plan_name = map['BackupPlanName']
        data.creator_request_id = map['CreatorRequestId']
        data.last_execution_date = Time.at(map['LastExecutionDate'].to_i) if map['LastExecutionDate']
        data.advanced_backup_settings = (AdvancedBackupSettings.parse(map['AdvancedBackupSettings']) unless map['AdvancedBackupSettings'].nil?)
        return data
      end
    end

    # Operation Parser for ListBackupPlans
    class ListBackupPlans
      def self.parse(http_resp)
        data = Types::ListBackupPlansOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['NextToken']
        data.backup_plans_list = (BackupPlansList.parse(map['BackupPlansList']) unless map['BackupPlansList'].nil?)
        data
      end
    end

    class BackupPlansList
      def self.parse(list)
        data = []
        list.map do |value|
          data << BackupPlansListMember.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListBackupSelections
    class ListBackupSelections
      def self.parse(http_resp)
        data = Types::ListBackupSelectionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['NextToken']
        data.backup_selections_list = (BackupSelectionsList.parse(map['BackupSelectionsList']) unless map['BackupSelectionsList'].nil?)
        data
      end
    end

    class BackupSelectionsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << BackupSelectionsListMember.parse(value) unless value.nil?
        end
        data
      end
    end

    class BackupSelectionsListMember
      def self.parse(map)
        data = Types::BackupSelectionsListMember.new
        data.selection_id = map['SelectionId']
        data.selection_name = map['SelectionName']
        data.backup_plan_id = map['BackupPlanId']
        data.creation_date = Time.at(map['CreationDate'].to_i) if map['CreationDate']
        data.creator_request_id = map['CreatorRequestId']
        data.iam_role_arn = map['IamRoleArn']
        return data
      end
    end

    # Operation Parser for ListBackupVaults
    class ListBackupVaults
      def self.parse(http_resp)
        data = Types::ListBackupVaultsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.backup_vault_list = (BackupVaultList.parse(map['BackupVaultList']) unless map['BackupVaultList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class BackupVaultList
      def self.parse(list)
        data = []
        list.map do |value|
          data << BackupVaultListMember.parse(value) unless value.nil?
        end
        data
      end
    end

    class BackupVaultListMember
      def self.parse(map)
        data = Types::BackupVaultListMember.new
        data.backup_vault_name = map['BackupVaultName']
        data.backup_vault_arn = map['BackupVaultArn']
        data.creation_date = Time.at(map['CreationDate'].to_i) if map['CreationDate']
        data.encryption_key_arn = map['EncryptionKeyArn']
        data.creator_request_id = map['CreatorRequestId']
        data.number_of_recovery_points = map['NumberOfRecoveryPoints']
        data.locked = map['Locked']
        data.min_retention_days = map['MinRetentionDays']
        data.max_retention_days = map['MaxRetentionDays']
        data.lock_date = Time.at(map['LockDate'].to_i) if map['LockDate']
        return data
      end
    end

    # Operation Parser for ListCopyJobs
    class ListCopyJobs
      def self.parse(http_resp)
        data = Types::ListCopyJobsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.copy_jobs = (CopyJobsList.parse(map['CopyJobs']) unless map['CopyJobs'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class CopyJobsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << CopyJob.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListFrameworks
    class ListFrameworks
      def self.parse(http_resp)
        data = Types::ListFrameworksOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.frameworks = (FrameworkList.parse(map['Frameworks']) unless map['Frameworks'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class FrameworkList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Framework.parse(value) unless value.nil?
        end
        data
      end
    end

    class Framework
      def self.parse(map)
        data = Types::Framework.new
        data.framework_name = map['FrameworkName']
        data.framework_arn = map['FrameworkArn']
        data.framework_description = map['FrameworkDescription']
        data.number_of_controls = map['NumberOfControls']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.deployment_status = map['DeploymentStatus']
        return data
      end
    end

    # Operation Parser for ListProtectedResources
    class ListProtectedResources
      def self.parse(http_resp)
        data = Types::ListProtectedResourcesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.results = (ProtectedResourcesList.parse(map['Results']) unless map['Results'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ProtectedResourcesList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ProtectedResource.parse(value) unless value.nil?
        end
        data
      end
    end

    class ProtectedResource
      def self.parse(map)
        data = Types::ProtectedResource.new
        data.resource_arn = map['ResourceArn']
        data.resource_type = map['ResourceType']
        data.last_backup_time = Time.at(map['LastBackupTime'].to_i) if map['LastBackupTime']
        return data
      end
    end

    # Operation Parser for ListRecoveryPointsByBackupVault
    class ListRecoveryPointsByBackupVault
      def self.parse(http_resp)
        data = Types::ListRecoveryPointsByBackupVaultOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['NextToken']
        data.recovery_points = (RecoveryPointByBackupVaultList.parse(map['RecoveryPoints']) unless map['RecoveryPoints'].nil?)
        data
      end
    end

    class RecoveryPointByBackupVaultList
      def self.parse(list)
        data = []
        list.map do |value|
          data << RecoveryPointByBackupVault.parse(value) unless value.nil?
        end
        data
      end
    end

    class RecoveryPointByBackupVault
      def self.parse(map)
        data = Types::RecoveryPointByBackupVault.new
        data.recovery_point_arn = map['RecoveryPointArn']
        data.backup_vault_name = map['BackupVaultName']
        data.backup_vault_arn = map['BackupVaultArn']
        data.source_backup_vault_arn = map['SourceBackupVaultArn']
        data.resource_arn = map['ResourceArn']
        data.resource_type = map['ResourceType']
        data.created_by = (RecoveryPointCreator.parse(map['CreatedBy']) unless map['CreatedBy'].nil?)
        data.iam_role_arn = map['IamRoleArn']
        data.status = map['Status']
        data.status_message = map['StatusMessage']
        data.creation_date = Time.at(map['CreationDate'].to_i) if map['CreationDate']
        data.completion_date = Time.at(map['CompletionDate'].to_i) if map['CompletionDate']
        data.backup_size_in_bytes = map['BackupSizeInBytes']
        data.calculated_lifecycle = (CalculatedLifecycle.parse(map['CalculatedLifecycle']) unless map['CalculatedLifecycle'].nil?)
        data.lifecycle = (Lifecycle.parse(map['Lifecycle']) unless map['Lifecycle'].nil?)
        data.encryption_key_arn = map['EncryptionKeyArn']
        data.is_encrypted = map['IsEncrypted']
        data.last_restore_time = Time.at(map['LastRestoreTime'].to_i) if map['LastRestoreTime']
        return data
      end
    end

    # Operation Parser for ListRecoveryPointsByResource
    class ListRecoveryPointsByResource
      def self.parse(http_resp)
        data = Types::ListRecoveryPointsByResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['NextToken']
        data.recovery_points = (RecoveryPointByResourceList.parse(map['RecoveryPoints']) unless map['RecoveryPoints'].nil?)
        data
      end
    end

    class RecoveryPointByResourceList
      def self.parse(list)
        data = []
        list.map do |value|
          data << RecoveryPointByResource.parse(value) unless value.nil?
        end
        data
      end
    end

    class RecoveryPointByResource
      def self.parse(map)
        data = Types::RecoveryPointByResource.new
        data.recovery_point_arn = map['RecoveryPointArn']
        data.creation_date = Time.at(map['CreationDate'].to_i) if map['CreationDate']
        data.status = map['Status']
        data.status_message = map['StatusMessage']
        data.encryption_key_arn = map['EncryptionKeyArn']
        data.backup_size_bytes = map['BackupSizeBytes']
        data.backup_vault_name = map['BackupVaultName']
        return data
      end
    end

    # Operation Parser for ListReportJobs
    class ListReportJobs
      def self.parse(http_resp)
        data = Types::ListReportJobsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.report_jobs = (ReportJobList.parse(map['ReportJobs']) unless map['ReportJobs'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ReportJobList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ReportJob.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListReportPlans
    class ListReportPlans
      def self.parse(http_resp)
        data = Types::ListReportPlansOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.report_plans = (ReportPlanList.parse(map['ReportPlans']) unless map['ReportPlans'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ReportPlanList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ReportPlan.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListRestoreJobs
    class ListRestoreJobs
      def self.parse(http_resp)
        data = Types::ListRestoreJobsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.restore_jobs = (RestoreJobsList.parse(map['RestoreJobs']) unless map['RestoreJobs'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class RestoreJobsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << RestoreJobsListMember.parse(value) unless value.nil?
        end
        data
      end
    end

    class RestoreJobsListMember
      def self.parse(map)
        data = Types::RestoreJobsListMember.new
        data.account_id = map['AccountId']
        data.restore_job_id = map['RestoreJobId']
        data.recovery_point_arn = map['RecoveryPointArn']
        data.creation_date = Time.at(map['CreationDate'].to_i) if map['CreationDate']
        data.completion_date = Time.at(map['CompletionDate'].to_i) if map['CompletionDate']
        data.status = map['Status']
        data.status_message = map['StatusMessage']
        data.percent_done = map['PercentDone']
        data.backup_size_in_bytes = map['BackupSizeInBytes']
        data.iam_role_arn = map['IamRoleArn']
        data.expected_completion_time_minutes = map['ExpectedCompletionTimeMinutes']
        data.created_resource_arn = map['CreatedResourceArn']
        data.resource_type = map['ResourceType']
        return data
      end
    end

    # Operation Parser for ListTags
    class ListTags
      def self.parse(http_resp)
        data = Types::ListTagsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['NextToken']
        data.tags = (Tags.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    # Operation Parser for PutBackupVaultAccessPolicy
    class PutBackupVaultAccessPolicy
      def self.parse(http_resp)
        data = Types::PutBackupVaultAccessPolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for PutBackupVaultLockConfiguration
    class PutBackupVaultLockConfiguration
      def self.parse(http_resp)
        data = Types::PutBackupVaultLockConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for PutBackupVaultNotifications
    class PutBackupVaultNotifications
      def self.parse(http_resp)
        data = Types::PutBackupVaultNotificationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for StartBackupJob
    class StartBackupJob
      def self.parse(http_resp)
        data = Types::StartBackupJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.backup_job_id = map['BackupJobId']
        data.recovery_point_arn = map['RecoveryPointArn']
        data.creation_date = Time.at(map['CreationDate'].to_i) if map['CreationDate']
        data
      end
    end

    # Operation Parser for StartCopyJob
    class StartCopyJob
      def self.parse(http_resp)
        data = Types::StartCopyJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.copy_job_id = map['CopyJobId']
        data.creation_date = Time.at(map['CreationDate'].to_i) if map['CreationDate']
        data
      end
    end

    # Operation Parser for StartReportJob
    class StartReportJob
      def self.parse(http_resp)
        data = Types::StartReportJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.report_job_id = map['ReportJobId']
        data
      end
    end

    # Operation Parser for StartRestoreJob
    class StartRestoreJob
      def self.parse(http_resp)
        data = Types::StartRestoreJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.restore_job_id = map['RestoreJobId']
        data
      end
    end

    # Operation Parser for StopBackupJob
    class StopBackupJob
      def self.parse(http_resp)
        data = Types::StopBackupJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateBackupPlan
    class UpdateBackupPlan
      def self.parse(http_resp)
        data = Types::UpdateBackupPlanOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.backup_plan_id = map['BackupPlanId']
        data.backup_plan_arn = map['BackupPlanArn']
        data.creation_date = Time.at(map['CreationDate'].to_i) if map['CreationDate']
        data.version_id = map['VersionId']
        data.advanced_backup_settings = (AdvancedBackupSettings.parse(map['AdvancedBackupSettings']) unless map['AdvancedBackupSettings'].nil?)
        data
      end
    end

    # Operation Parser for UpdateFramework
    class UpdateFramework
      def self.parse(http_resp)
        data = Types::UpdateFrameworkOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.framework_name = map['FrameworkName']
        data.framework_arn = map['FrameworkArn']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data
      end
    end

    # Operation Parser for UpdateGlobalSettings
    class UpdateGlobalSettings
      def self.parse(http_resp)
        data = Types::UpdateGlobalSettingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateRecoveryPointLifecycle
    class UpdateRecoveryPointLifecycle
      def self.parse(http_resp)
        data = Types::UpdateRecoveryPointLifecycleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.backup_vault_arn = map['BackupVaultArn']
        data.recovery_point_arn = map['RecoveryPointArn']
        data.lifecycle = (Lifecycle.parse(map['Lifecycle']) unless map['Lifecycle'].nil?)
        data.calculated_lifecycle = (CalculatedLifecycle.parse(map['CalculatedLifecycle']) unless map['CalculatedLifecycle'].nil?)
        data
      end
    end

    # Operation Parser for UpdateRegionSettings
    class UpdateRegionSettings
      def self.parse(http_resp)
        data = Types::UpdateRegionSettingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateReportPlan
    class UpdateReportPlan
      def self.parse(http_resp)
        data = Types::UpdateReportPlanOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.report_plan_name = map['ReportPlanName']
        data.report_plan_arn = map['ReportPlanArn']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data
      end
    end
  end
end
