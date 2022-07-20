# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Backup
  module Stubs

    # Operation Stubber for CreateBackupPlan
    class CreateBackupPlan
      def self.default(visited=[])
        {
          backup_plan_id: 'backup_plan_id',
          backup_plan_arn: 'backup_plan_arn',
          creation_date: Time.now,
          version_id: 'version_id',
          advanced_backup_settings: AdvancedBackupSettings.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['BackupPlanId'] = stub[:backup_plan_id] unless stub[:backup_plan_id].nil?
        data['BackupPlanArn'] = stub[:backup_plan_arn] unless stub[:backup_plan_arn].nil?
        data['CreationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['VersionId'] = stub[:version_id] unless stub[:version_id].nil?
        data['AdvancedBackupSettings'] = Stubs::AdvancedBackupSettings.stub(stub[:advanced_backup_settings]) unless stub[:advanced_backup_settings].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AdvancedBackupSettings
    class AdvancedBackupSettings
      def self.default(visited=[])
        return nil if visited.include?('AdvancedBackupSettings')
        visited = visited + ['AdvancedBackupSettings']
        [
          AdvancedBackupSetting.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AdvancedBackupSetting.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AdvancedBackupSetting
    class AdvancedBackupSetting
      def self.default(visited=[])
        return nil if visited.include?('AdvancedBackupSetting')
        visited = visited + ['AdvancedBackupSetting']
        {
          resource_type: 'resource_type',
          backup_options: BackupOptions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AdvancedBackupSetting.new
        data = {}
        data['ResourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['BackupOptions'] = Stubs::BackupOptions.stub(stub[:backup_options]) unless stub[:backup_options].nil?
        data
      end
    end

    # Map Stubber for BackupOptions
    class BackupOptions
      def self.default(visited=[])
        return nil if visited.include?('BackupOptions')
        visited = visited + ['BackupOptions']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for CreateBackupSelection
    class CreateBackupSelection
      def self.default(visited=[])
        {
          selection_id: 'selection_id',
          backup_plan_id: 'backup_plan_id',
          creation_date: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['SelectionId'] = stub[:selection_id] unless stub[:selection_id].nil?
        data['BackupPlanId'] = stub[:backup_plan_id] unless stub[:backup_plan_id].nil?
        data['CreationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateBackupVault
    class CreateBackupVault
      def self.default(visited=[])
        {
          backup_vault_name: 'backup_vault_name',
          backup_vault_arn: 'backup_vault_arn',
          creation_date: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['BackupVaultName'] = stub[:backup_vault_name] unless stub[:backup_vault_name].nil?
        data['BackupVaultArn'] = stub[:backup_vault_arn] unless stub[:backup_vault_arn].nil?
        data['CreationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateFramework
    class CreateFramework
      def self.default(visited=[])
        {
          framework_name: 'framework_name',
          framework_arn: 'framework_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['FrameworkName'] = stub[:framework_name] unless stub[:framework_name].nil?
        data['FrameworkArn'] = stub[:framework_arn] unless stub[:framework_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateReportPlan
    class CreateReportPlan
      def self.default(visited=[])
        {
          report_plan_name: 'report_plan_name',
          report_plan_arn: 'report_plan_arn',
          creation_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ReportPlanName'] = stub[:report_plan_name] unless stub[:report_plan_name].nil?
        data['ReportPlanArn'] = stub[:report_plan_arn] unless stub[:report_plan_arn].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteBackupPlan
    class DeleteBackupPlan
      def self.default(visited=[])
        {
          backup_plan_id: 'backup_plan_id',
          backup_plan_arn: 'backup_plan_arn',
          deletion_date: Time.now,
          version_id: 'version_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['BackupPlanId'] = stub[:backup_plan_id] unless stub[:backup_plan_id].nil?
        data['BackupPlanArn'] = stub[:backup_plan_arn] unless stub[:backup_plan_arn].nil?
        data['DeletionDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:deletion_date]).to_i unless stub[:deletion_date].nil?
        data['VersionId'] = stub[:version_id] unless stub[:version_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteBackupSelection
    class DeleteBackupSelection
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteBackupVault
    class DeleteBackupVault
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteBackupVaultAccessPolicy
    class DeleteBackupVaultAccessPolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteBackupVaultLockConfiguration
    class DeleteBackupVaultLockConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteBackupVaultNotifications
    class DeleteBackupVaultNotifications
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteFramework
    class DeleteFramework
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteRecoveryPoint
    class DeleteRecoveryPoint
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteReportPlan
    class DeleteReportPlan
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeBackupJob
    class DescribeBackupJob
      def self.default(visited=[])
        {
          account_id: 'account_id',
          backup_job_id: 'backup_job_id',
          backup_vault_name: 'backup_vault_name',
          backup_vault_arn: 'backup_vault_arn',
          recovery_point_arn: 'recovery_point_arn',
          resource_arn: 'resource_arn',
          creation_date: Time.now,
          completion_date: Time.now,
          state: 'state',
          status_message: 'status_message',
          percent_done: 'percent_done',
          backup_size_in_bytes: 1,
          iam_role_arn: 'iam_role_arn',
          created_by: RecoveryPointCreator.default(visited),
          resource_type: 'resource_type',
          bytes_transferred: 1,
          expected_completion_date: Time.now,
          start_by: Time.now,
          backup_options: BackupOptions.default(visited),
          backup_type: 'backup_type',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['BackupJobId'] = stub[:backup_job_id] unless stub[:backup_job_id].nil?
        data['BackupVaultName'] = stub[:backup_vault_name] unless stub[:backup_vault_name].nil?
        data['BackupVaultArn'] = stub[:backup_vault_arn] unless stub[:backup_vault_arn].nil?
        data['RecoveryPointArn'] = stub[:recovery_point_arn] unless stub[:recovery_point_arn].nil?
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['CreationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['CompletionDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:completion_date]).to_i unless stub[:completion_date].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['PercentDone'] = stub[:percent_done] unless stub[:percent_done].nil?
        data['BackupSizeInBytes'] = stub[:backup_size_in_bytes] unless stub[:backup_size_in_bytes].nil?
        data['IamRoleArn'] = stub[:iam_role_arn] unless stub[:iam_role_arn].nil?
        data['CreatedBy'] = Stubs::RecoveryPointCreator.stub(stub[:created_by]) unless stub[:created_by].nil?
        data['ResourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['BytesTransferred'] = stub[:bytes_transferred] unless stub[:bytes_transferred].nil?
        data['ExpectedCompletionDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:expected_completion_date]).to_i unless stub[:expected_completion_date].nil?
        data['StartBy'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_by]).to_i unless stub[:start_by].nil?
        data['BackupOptions'] = Stubs::BackupOptions.stub(stub[:backup_options]) unless stub[:backup_options].nil?
        data['BackupType'] = stub[:backup_type] unless stub[:backup_type].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for RecoveryPointCreator
    class RecoveryPointCreator
      def self.default(visited=[])
        return nil if visited.include?('RecoveryPointCreator')
        visited = visited + ['RecoveryPointCreator']
        {
          backup_plan_id: 'backup_plan_id',
          backup_plan_arn: 'backup_plan_arn',
          backup_plan_version: 'backup_plan_version',
          backup_rule_id: 'backup_rule_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::RecoveryPointCreator.new
        data = {}
        data['BackupPlanId'] = stub[:backup_plan_id] unless stub[:backup_plan_id].nil?
        data['BackupPlanArn'] = stub[:backup_plan_arn] unless stub[:backup_plan_arn].nil?
        data['BackupPlanVersion'] = stub[:backup_plan_version] unless stub[:backup_plan_version].nil?
        data['BackupRuleId'] = stub[:backup_rule_id] unless stub[:backup_rule_id].nil?
        data
      end
    end

    # Operation Stubber for DescribeBackupVault
    class DescribeBackupVault
      def self.default(visited=[])
        {
          backup_vault_name: 'backup_vault_name',
          backup_vault_arn: 'backup_vault_arn',
          encryption_key_arn: 'encryption_key_arn',
          creation_date: Time.now,
          creator_request_id: 'creator_request_id',
          number_of_recovery_points: 1,
          locked: false,
          min_retention_days: 1,
          max_retention_days: 1,
          lock_date: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['BackupVaultName'] = stub[:backup_vault_name] unless stub[:backup_vault_name].nil?
        data['BackupVaultArn'] = stub[:backup_vault_arn] unless stub[:backup_vault_arn].nil?
        data['EncryptionKeyArn'] = stub[:encryption_key_arn] unless stub[:encryption_key_arn].nil?
        data['CreationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['CreatorRequestId'] = stub[:creator_request_id] unless stub[:creator_request_id].nil?
        data['NumberOfRecoveryPoints'] = stub[:number_of_recovery_points] unless stub[:number_of_recovery_points].nil?
        data['Locked'] = stub[:locked] unless stub[:locked].nil?
        data['MinRetentionDays'] = stub[:min_retention_days] unless stub[:min_retention_days].nil?
        data['MaxRetentionDays'] = stub[:max_retention_days] unless stub[:max_retention_days].nil?
        data['LockDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:lock_date]).to_i unless stub[:lock_date].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeCopyJob
    class DescribeCopyJob
      def self.default(visited=[])
        {
          copy_job: CopyJob.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CopyJob'] = Stubs::CopyJob.stub(stub[:copy_job]) unless stub[:copy_job].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for CopyJob
    class CopyJob
      def self.default(visited=[])
        return nil if visited.include?('CopyJob')
        visited = visited + ['CopyJob']
        {
          account_id: 'account_id',
          copy_job_id: 'copy_job_id',
          source_backup_vault_arn: 'source_backup_vault_arn',
          source_recovery_point_arn: 'source_recovery_point_arn',
          destination_backup_vault_arn: 'destination_backup_vault_arn',
          destination_recovery_point_arn: 'destination_recovery_point_arn',
          resource_arn: 'resource_arn',
          creation_date: Time.now,
          completion_date: Time.now,
          state: 'state',
          status_message: 'status_message',
          backup_size_in_bytes: 1,
          iam_role_arn: 'iam_role_arn',
          created_by: RecoveryPointCreator.default(visited),
          resource_type: 'resource_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::CopyJob.new
        data = {}
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['CopyJobId'] = stub[:copy_job_id] unless stub[:copy_job_id].nil?
        data['SourceBackupVaultArn'] = stub[:source_backup_vault_arn] unless stub[:source_backup_vault_arn].nil?
        data['SourceRecoveryPointArn'] = stub[:source_recovery_point_arn] unless stub[:source_recovery_point_arn].nil?
        data['DestinationBackupVaultArn'] = stub[:destination_backup_vault_arn] unless stub[:destination_backup_vault_arn].nil?
        data['DestinationRecoveryPointArn'] = stub[:destination_recovery_point_arn] unless stub[:destination_recovery_point_arn].nil?
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['CreationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['CompletionDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:completion_date]).to_i unless stub[:completion_date].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['BackupSizeInBytes'] = stub[:backup_size_in_bytes] unless stub[:backup_size_in_bytes].nil?
        data['IamRoleArn'] = stub[:iam_role_arn] unless stub[:iam_role_arn].nil?
        data['CreatedBy'] = Stubs::RecoveryPointCreator.stub(stub[:created_by]) unless stub[:created_by].nil?
        data['ResourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data
      end
    end

    # Operation Stubber for DescribeFramework
    class DescribeFramework
      def self.default(visited=[])
        {
          framework_name: 'framework_name',
          framework_arn: 'framework_arn',
          framework_description: 'framework_description',
          framework_controls: FrameworkControls.default(visited),
          creation_time: Time.now,
          deployment_status: 'deployment_status',
          framework_status: 'framework_status',
          idempotency_token: 'idempotency_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['FrameworkName'] = stub[:framework_name] unless stub[:framework_name].nil?
        data['FrameworkArn'] = stub[:framework_arn] unless stub[:framework_arn].nil?
        data['FrameworkDescription'] = stub[:framework_description] unless stub[:framework_description].nil?
        data['FrameworkControls'] = Stubs::FrameworkControls.stub(stub[:framework_controls]) unless stub[:framework_controls].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['DeploymentStatus'] = stub[:deployment_status] unless stub[:deployment_status].nil?
        data['FrameworkStatus'] = stub[:framework_status] unless stub[:framework_status].nil?
        data['IdempotencyToken'] = stub[:idempotency_token] unless stub[:idempotency_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for FrameworkControls
    class FrameworkControls
      def self.default(visited=[])
        return nil if visited.include?('FrameworkControls')
        visited = visited + ['FrameworkControls']
        [
          FrameworkControl.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::FrameworkControl.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FrameworkControl
    class FrameworkControl
      def self.default(visited=[])
        return nil if visited.include?('FrameworkControl')
        visited = visited + ['FrameworkControl']
        {
          control_name: 'control_name',
          control_input_parameters: ControlInputParameters.default(visited),
          control_scope: ControlScope.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FrameworkControl.new
        data = {}
        data['ControlName'] = stub[:control_name] unless stub[:control_name].nil?
        data['ControlInputParameters'] = Stubs::ControlInputParameters.stub(stub[:control_input_parameters]) unless stub[:control_input_parameters].nil?
        data['ControlScope'] = Stubs::ControlScope.stub(stub[:control_scope]) unless stub[:control_scope].nil?
        data
      end
    end

    # Structure Stubber for ControlScope
    class ControlScope
      def self.default(visited=[])
        return nil if visited.include?('ControlScope')
        visited = visited + ['ControlScope']
        {
          compliance_resource_ids: ComplianceResourceIdList.default(visited),
          compliance_resource_types: ResourceTypeList.default(visited),
          tags: StringMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ControlScope.new
        data = {}
        data['ComplianceResourceIds'] = Stubs::ComplianceResourceIdList.stub(stub[:compliance_resource_ids]) unless stub[:compliance_resource_ids].nil?
        data['ComplianceResourceTypes'] = Stubs::ResourceTypeList.stub(stub[:compliance_resource_types]) unless stub[:compliance_resource_types].nil?
        data['Tags'] = Stubs::StringMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Map Stubber for stringMap
    class StringMap
      def self.default(visited=[])
        return nil if visited.include?('StringMap')
        visited = visited + ['StringMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Stubber for ResourceTypeList
    class ResourceTypeList
      def self.default(visited=[])
        return nil if visited.include?('ResourceTypeList')
        visited = visited + ['ResourceTypeList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for ComplianceResourceIdList
    class ComplianceResourceIdList
      def self.default(visited=[])
        return nil if visited.include?('ComplianceResourceIdList')
        visited = visited + ['ComplianceResourceIdList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for ControlInputParameters
    class ControlInputParameters
      def self.default(visited=[])
        return nil if visited.include?('ControlInputParameters')
        visited = visited + ['ControlInputParameters']
        [
          ControlInputParameter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ControlInputParameter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ControlInputParameter
    class ControlInputParameter
      def self.default(visited=[])
        return nil if visited.include?('ControlInputParameter')
        visited = visited + ['ControlInputParameter']
        {
          parameter_name: 'parameter_name',
          parameter_value: 'parameter_value',
        }
      end

      def self.stub(stub)
        stub ||= Types::ControlInputParameter.new
        data = {}
        data['ParameterName'] = stub[:parameter_name] unless stub[:parameter_name].nil?
        data['ParameterValue'] = stub[:parameter_value] unless stub[:parameter_value].nil?
        data
      end
    end

    # Operation Stubber for DescribeGlobalSettings
    class DescribeGlobalSettings
      def self.default(visited=[])
        {
          global_settings: GlobalSettings.default(visited),
          last_update_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['GlobalSettings'] = Stubs::GlobalSettings.stub(stub[:global_settings]) unless stub[:global_settings].nil?
        data['LastUpdateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_time]).to_i unless stub[:last_update_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for GlobalSettings
    class GlobalSettings
      def self.default(visited=[])
        return nil if visited.include?('GlobalSettings')
        visited = visited + ['GlobalSettings']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeProtectedResource
    class DescribeProtectedResource
      def self.default(visited=[])
        {
          resource_arn: 'resource_arn',
          resource_type: 'resource_type',
          last_backup_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['ResourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['LastBackupTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_backup_time]).to_i unless stub[:last_backup_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeRecoveryPoint
    class DescribeRecoveryPoint
      def self.default(visited=[])
        {
          recovery_point_arn: 'recovery_point_arn',
          backup_vault_name: 'backup_vault_name',
          backup_vault_arn: 'backup_vault_arn',
          source_backup_vault_arn: 'source_backup_vault_arn',
          resource_arn: 'resource_arn',
          resource_type: 'resource_type',
          created_by: RecoveryPointCreator.default(visited),
          iam_role_arn: 'iam_role_arn',
          status: 'status',
          status_message: 'status_message',
          creation_date: Time.now,
          completion_date: Time.now,
          backup_size_in_bytes: 1,
          calculated_lifecycle: CalculatedLifecycle.default(visited),
          lifecycle: Lifecycle.default(visited),
          encryption_key_arn: 'encryption_key_arn',
          is_encrypted: false,
          storage_class: 'storage_class',
          last_restore_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['RecoveryPointArn'] = stub[:recovery_point_arn] unless stub[:recovery_point_arn].nil?
        data['BackupVaultName'] = stub[:backup_vault_name] unless stub[:backup_vault_name].nil?
        data['BackupVaultArn'] = stub[:backup_vault_arn] unless stub[:backup_vault_arn].nil?
        data['SourceBackupVaultArn'] = stub[:source_backup_vault_arn] unless stub[:source_backup_vault_arn].nil?
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['ResourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['CreatedBy'] = Stubs::RecoveryPointCreator.stub(stub[:created_by]) unless stub[:created_by].nil?
        data['IamRoleArn'] = stub[:iam_role_arn] unless stub[:iam_role_arn].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['CreationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['CompletionDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:completion_date]).to_i unless stub[:completion_date].nil?
        data['BackupSizeInBytes'] = stub[:backup_size_in_bytes] unless stub[:backup_size_in_bytes].nil?
        data['CalculatedLifecycle'] = Stubs::CalculatedLifecycle.stub(stub[:calculated_lifecycle]) unless stub[:calculated_lifecycle].nil?
        data['Lifecycle'] = Stubs::Lifecycle.stub(stub[:lifecycle]) unless stub[:lifecycle].nil?
        data['EncryptionKeyArn'] = stub[:encryption_key_arn] unless stub[:encryption_key_arn].nil?
        data['IsEncrypted'] = stub[:is_encrypted] unless stub[:is_encrypted].nil?
        data['StorageClass'] = stub[:storage_class] unless stub[:storage_class].nil?
        data['LastRestoreTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_restore_time]).to_i unless stub[:last_restore_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Lifecycle
    class Lifecycle
      def self.default(visited=[])
        return nil if visited.include?('Lifecycle')
        visited = visited + ['Lifecycle']
        {
          move_to_cold_storage_after_days: 1,
          delete_after_days: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Lifecycle.new
        data = {}
        data['MoveToColdStorageAfterDays'] = stub[:move_to_cold_storage_after_days] unless stub[:move_to_cold_storage_after_days].nil?
        data['DeleteAfterDays'] = stub[:delete_after_days] unless stub[:delete_after_days].nil?
        data
      end
    end

    # Structure Stubber for CalculatedLifecycle
    class CalculatedLifecycle
      def self.default(visited=[])
        return nil if visited.include?('CalculatedLifecycle')
        visited = visited + ['CalculatedLifecycle']
        {
          move_to_cold_storage_at: Time.now,
          delete_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::CalculatedLifecycle.new
        data = {}
        data['MoveToColdStorageAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:move_to_cold_storage_at]).to_i unless stub[:move_to_cold_storage_at].nil?
        data['DeleteAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:delete_at]).to_i unless stub[:delete_at].nil?
        data
      end
    end

    # Operation Stubber for DescribeRegionSettings
    class DescribeRegionSettings
      def self.default(visited=[])
        {
          resource_type_opt_in_preference: ResourceTypeOptInPreference.default(visited),
          resource_type_management_preference: ResourceTypeManagementPreference.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ResourceTypeOptInPreference'] = Stubs::ResourceTypeOptInPreference.stub(stub[:resource_type_opt_in_preference]) unless stub[:resource_type_opt_in_preference].nil?
        data['ResourceTypeManagementPreference'] = Stubs::ResourceTypeManagementPreference.stub(stub[:resource_type_management_preference]) unless stub[:resource_type_management_preference].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for ResourceTypeManagementPreference
    class ResourceTypeManagementPreference
      def self.default(visited=[])
        return nil if visited.include?('ResourceTypeManagementPreference')
        visited = visited + ['ResourceTypeManagementPreference']
        {
          test_key: false
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Map Stubber for ResourceTypeOptInPreference
    class ResourceTypeOptInPreference
      def self.default(visited=[])
        return nil if visited.include?('ResourceTypeOptInPreference')
        visited = visited + ['ResourceTypeOptInPreference']
        {
          test_key: false
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeReportJob
    class DescribeReportJob
      def self.default(visited=[])
        {
          report_job: ReportJob.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ReportJob'] = Stubs::ReportJob.stub(stub[:report_job]) unless stub[:report_job].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ReportJob
    class ReportJob
      def self.default(visited=[])
        return nil if visited.include?('ReportJob')
        visited = visited + ['ReportJob']
        {
          report_job_id: 'report_job_id',
          report_plan_arn: 'report_plan_arn',
          report_template: 'report_template',
          creation_time: Time.now,
          completion_time: Time.now,
          status: 'status',
          status_message: 'status_message',
          report_destination: ReportDestination.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ReportJob.new
        data = {}
        data['ReportJobId'] = stub[:report_job_id] unless stub[:report_job_id].nil?
        data['ReportPlanArn'] = stub[:report_plan_arn] unless stub[:report_plan_arn].nil?
        data['ReportTemplate'] = stub[:report_template] unless stub[:report_template].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['CompletionTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:completion_time]).to_i unless stub[:completion_time].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['ReportDestination'] = Stubs::ReportDestination.stub(stub[:report_destination]) unless stub[:report_destination].nil?
        data
      end
    end

    # Structure Stubber for ReportDestination
    class ReportDestination
      def self.default(visited=[])
        return nil if visited.include?('ReportDestination')
        visited = visited + ['ReportDestination']
        {
          s3_bucket_name: 's3_bucket_name',
          s3_keys: StringList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ReportDestination.new
        data = {}
        data['S3BucketName'] = stub[:s3_bucket_name] unless stub[:s3_bucket_name].nil?
        data['S3Keys'] = Stubs::StringList.stub(stub[:s3_keys]) unless stub[:s3_keys].nil?
        data
      end
    end

    # List Stubber for stringList
    class StringList
      def self.default(visited=[])
        return nil if visited.include?('StringList')
        visited = visited + ['StringList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeReportPlan
    class DescribeReportPlan
      def self.default(visited=[])
        {
          report_plan: ReportPlan.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ReportPlan'] = Stubs::ReportPlan.stub(stub[:report_plan]) unless stub[:report_plan].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ReportPlan
    class ReportPlan
      def self.default(visited=[])
        return nil if visited.include?('ReportPlan')
        visited = visited + ['ReportPlan']
        {
          report_plan_arn: 'report_plan_arn',
          report_plan_name: 'report_plan_name',
          report_plan_description: 'report_plan_description',
          report_setting: ReportSetting.default(visited),
          report_delivery_channel: ReportDeliveryChannel.default(visited),
          deployment_status: 'deployment_status',
          creation_time: Time.now,
          last_attempted_execution_time: Time.now,
          last_successful_execution_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ReportPlan.new
        data = {}
        data['ReportPlanArn'] = stub[:report_plan_arn] unless stub[:report_plan_arn].nil?
        data['ReportPlanName'] = stub[:report_plan_name] unless stub[:report_plan_name].nil?
        data['ReportPlanDescription'] = stub[:report_plan_description] unless stub[:report_plan_description].nil?
        data['ReportSetting'] = Stubs::ReportSetting.stub(stub[:report_setting]) unless stub[:report_setting].nil?
        data['ReportDeliveryChannel'] = Stubs::ReportDeliveryChannel.stub(stub[:report_delivery_channel]) unless stub[:report_delivery_channel].nil?
        data['DeploymentStatus'] = stub[:deployment_status] unless stub[:deployment_status].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastAttemptedExecutionTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_attempted_execution_time]).to_i unless stub[:last_attempted_execution_time].nil?
        data['LastSuccessfulExecutionTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_successful_execution_time]).to_i unless stub[:last_successful_execution_time].nil?
        data
      end
    end

    # Structure Stubber for ReportDeliveryChannel
    class ReportDeliveryChannel
      def self.default(visited=[])
        return nil if visited.include?('ReportDeliveryChannel')
        visited = visited + ['ReportDeliveryChannel']
        {
          s3_bucket_name: 's3_bucket_name',
          s3_key_prefix: 's3_key_prefix',
          formats: FormatList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ReportDeliveryChannel.new
        data = {}
        data['S3BucketName'] = stub[:s3_bucket_name] unless stub[:s3_bucket_name].nil?
        data['S3KeyPrefix'] = stub[:s3_key_prefix] unless stub[:s3_key_prefix].nil?
        data['Formats'] = Stubs::FormatList.stub(stub[:formats]) unless stub[:formats].nil?
        data
      end
    end

    # List Stubber for FormatList
    class FormatList
      def self.default(visited=[])
        return nil if visited.include?('FormatList')
        visited = visited + ['FormatList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ReportSetting
    class ReportSetting
      def self.default(visited=[])
        return nil if visited.include?('ReportSetting')
        visited = visited + ['ReportSetting']
        {
          report_template: 'report_template',
          framework_arns: StringList.default(visited),
          number_of_frameworks: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ReportSetting.new
        data = {}
        data['ReportTemplate'] = stub[:report_template] unless stub[:report_template].nil?
        data['FrameworkArns'] = Stubs::StringList.stub(stub[:framework_arns]) unless stub[:framework_arns].nil?
        data['NumberOfFrameworks'] = stub[:number_of_frameworks] unless stub[:number_of_frameworks].nil?
        data
      end
    end

    # Operation Stubber for DescribeRestoreJob
    class DescribeRestoreJob
      def self.default(visited=[])
        {
          account_id: 'account_id',
          restore_job_id: 'restore_job_id',
          recovery_point_arn: 'recovery_point_arn',
          creation_date: Time.now,
          completion_date: Time.now,
          status: 'status',
          status_message: 'status_message',
          percent_done: 'percent_done',
          backup_size_in_bytes: 1,
          iam_role_arn: 'iam_role_arn',
          expected_completion_time_minutes: 1,
          created_resource_arn: 'created_resource_arn',
          resource_type: 'resource_type',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['RestoreJobId'] = stub[:restore_job_id] unless stub[:restore_job_id].nil?
        data['RecoveryPointArn'] = stub[:recovery_point_arn] unless stub[:recovery_point_arn].nil?
        data['CreationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['CompletionDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:completion_date]).to_i unless stub[:completion_date].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['PercentDone'] = stub[:percent_done] unless stub[:percent_done].nil?
        data['BackupSizeInBytes'] = stub[:backup_size_in_bytes] unless stub[:backup_size_in_bytes].nil?
        data['IamRoleArn'] = stub[:iam_role_arn] unless stub[:iam_role_arn].nil?
        data['ExpectedCompletionTimeMinutes'] = stub[:expected_completion_time_minutes] unless stub[:expected_completion_time_minutes].nil?
        data['CreatedResourceArn'] = stub[:created_resource_arn] unless stub[:created_resource_arn].nil?
        data['ResourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DisassociateRecoveryPoint
    class DisassociateRecoveryPoint
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for ExportBackupPlanTemplate
    class ExportBackupPlanTemplate
      def self.default(visited=[])
        {
          backup_plan_template_json: 'backup_plan_template_json',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['BackupPlanTemplateJson'] = stub[:backup_plan_template_json] unless stub[:backup_plan_template_json].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetBackupPlan
    class GetBackupPlan
      def self.default(visited=[])
        {
          backup_plan: BackupPlan.default(visited),
          backup_plan_id: 'backup_plan_id',
          backup_plan_arn: 'backup_plan_arn',
          version_id: 'version_id',
          creator_request_id: 'creator_request_id',
          creation_date: Time.now,
          deletion_date: Time.now,
          last_execution_date: Time.now,
          advanced_backup_settings: AdvancedBackupSettings.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['BackupPlan'] = Stubs::BackupPlan.stub(stub[:backup_plan]) unless stub[:backup_plan].nil?
        data['BackupPlanId'] = stub[:backup_plan_id] unless stub[:backup_plan_id].nil?
        data['BackupPlanArn'] = stub[:backup_plan_arn] unless stub[:backup_plan_arn].nil?
        data['VersionId'] = stub[:version_id] unless stub[:version_id].nil?
        data['CreatorRequestId'] = stub[:creator_request_id] unless stub[:creator_request_id].nil?
        data['CreationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['DeletionDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:deletion_date]).to_i unless stub[:deletion_date].nil?
        data['LastExecutionDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_execution_date]).to_i unless stub[:last_execution_date].nil?
        data['AdvancedBackupSettings'] = Stubs::AdvancedBackupSettings.stub(stub[:advanced_backup_settings]) unless stub[:advanced_backup_settings].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for BackupPlan
    class BackupPlan
      def self.default(visited=[])
        return nil if visited.include?('BackupPlan')
        visited = visited + ['BackupPlan']
        {
          backup_plan_name: 'backup_plan_name',
          rules: BackupRules.default(visited),
          advanced_backup_settings: AdvancedBackupSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BackupPlan.new
        data = {}
        data['BackupPlanName'] = stub[:backup_plan_name] unless stub[:backup_plan_name].nil?
        data['Rules'] = Stubs::BackupRules.stub(stub[:rules]) unless stub[:rules].nil?
        data['AdvancedBackupSettings'] = Stubs::AdvancedBackupSettings.stub(stub[:advanced_backup_settings]) unless stub[:advanced_backup_settings].nil?
        data
      end
    end

    # List Stubber for BackupRules
    class BackupRules
      def self.default(visited=[])
        return nil if visited.include?('BackupRules')
        visited = visited + ['BackupRules']
        [
          BackupRule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BackupRule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BackupRule
    class BackupRule
      def self.default(visited=[])
        return nil if visited.include?('BackupRule')
        visited = visited + ['BackupRule']
        {
          rule_name: 'rule_name',
          target_backup_vault_name: 'target_backup_vault_name',
          schedule_expression: 'schedule_expression',
          start_window_minutes: 1,
          completion_window_minutes: 1,
          lifecycle: Lifecycle.default(visited),
          recovery_point_tags: Tags.default(visited),
          rule_id: 'rule_id',
          copy_actions: CopyActions.default(visited),
          enable_continuous_backup: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::BackupRule.new
        data = {}
        data['RuleName'] = stub[:rule_name] unless stub[:rule_name].nil?
        data['TargetBackupVaultName'] = stub[:target_backup_vault_name] unless stub[:target_backup_vault_name].nil?
        data['ScheduleExpression'] = stub[:schedule_expression] unless stub[:schedule_expression].nil?
        data['StartWindowMinutes'] = stub[:start_window_minutes] unless stub[:start_window_minutes].nil?
        data['CompletionWindowMinutes'] = stub[:completion_window_minutes] unless stub[:completion_window_minutes].nil?
        data['Lifecycle'] = Stubs::Lifecycle.stub(stub[:lifecycle]) unless stub[:lifecycle].nil?
        data['RecoveryPointTags'] = Stubs::Tags.stub(stub[:recovery_point_tags]) unless stub[:recovery_point_tags].nil?
        data['RuleId'] = stub[:rule_id] unless stub[:rule_id].nil?
        data['CopyActions'] = Stubs::CopyActions.stub(stub[:copy_actions]) unless stub[:copy_actions].nil?
        data['EnableContinuousBackup'] = stub[:enable_continuous_backup] unless stub[:enable_continuous_backup].nil?
        data
      end
    end

    # List Stubber for CopyActions
    class CopyActions
      def self.default(visited=[])
        return nil if visited.include?('CopyActions')
        visited = visited + ['CopyActions']
        [
          CopyAction.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CopyAction.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CopyAction
    class CopyAction
      def self.default(visited=[])
        return nil if visited.include?('CopyAction')
        visited = visited + ['CopyAction']
        {
          lifecycle: Lifecycle.default(visited),
          destination_backup_vault_arn: 'destination_backup_vault_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::CopyAction.new
        data = {}
        data['Lifecycle'] = Stubs::Lifecycle.stub(stub[:lifecycle]) unless stub[:lifecycle].nil?
        data['DestinationBackupVaultArn'] = stub[:destination_backup_vault_arn] unless stub[:destination_backup_vault_arn].nil?
        data
      end
    end

    # Map Stubber for Tags
    class Tags
      def self.default(visited=[])
        return nil if visited.include?('Tags')
        visited = visited + ['Tags']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for GetBackupPlanFromJSON
    class GetBackupPlanFromJSON
      def self.default(visited=[])
        {
          backup_plan: BackupPlan.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['BackupPlan'] = Stubs::BackupPlan.stub(stub[:backup_plan]) unless stub[:backup_plan].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetBackupPlanFromTemplate
    class GetBackupPlanFromTemplate
      def self.default(visited=[])
        {
          backup_plan_document: BackupPlan.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['BackupPlanDocument'] = Stubs::BackupPlan.stub(stub[:backup_plan_document]) unless stub[:backup_plan_document].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetBackupSelection
    class GetBackupSelection
      def self.default(visited=[])
        {
          backup_selection: BackupSelection.default(visited),
          selection_id: 'selection_id',
          backup_plan_id: 'backup_plan_id',
          creation_date: Time.now,
          creator_request_id: 'creator_request_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['BackupSelection'] = Stubs::BackupSelection.stub(stub[:backup_selection]) unless stub[:backup_selection].nil?
        data['SelectionId'] = stub[:selection_id] unless stub[:selection_id].nil?
        data['BackupPlanId'] = stub[:backup_plan_id] unless stub[:backup_plan_id].nil?
        data['CreationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['CreatorRequestId'] = stub[:creator_request_id] unless stub[:creator_request_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for BackupSelection
    class BackupSelection
      def self.default(visited=[])
        return nil if visited.include?('BackupSelection')
        visited = visited + ['BackupSelection']
        {
          selection_name: 'selection_name',
          iam_role_arn: 'iam_role_arn',
          resources: ResourceArns.default(visited),
          list_of_tags: ListOfTags.default(visited),
          not_resources: ResourceArns.default(visited),
          conditions: Conditions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BackupSelection.new
        data = {}
        data['SelectionName'] = stub[:selection_name] unless stub[:selection_name].nil?
        data['IamRoleArn'] = stub[:iam_role_arn] unless stub[:iam_role_arn].nil?
        data['Resources'] = Stubs::ResourceArns.stub(stub[:resources]) unless stub[:resources].nil?
        data['ListOfTags'] = Stubs::ListOfTags.stub(stub[:list_of_tags]) unless stub[:list_of_tags].nil?
        data['NotResources'] = Stubs::ResourceArns.stub(stub[:not_resources]) unless stub[:not_resources].nil?
        data['Conditions'] = Stubs::Conditions.stub(stub[:conditions]) unless stub[:conditions].nil?
        data
      end
    end

    # Structure Stubber for Conditions
    class Conditions
      def self.default(visited=[])
        return nil if visited.include?('Conditions')
        visited = visited + ['Conditions']
        {
          string_equals: ConditionParameters.default(visited),
          string_not_equals: ConditionParameters.default(visited),
          string_like: ConditionParameters.default(visited),
          string_not_like: ConditionParameters.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Conditions.new
        data = {}
        data['StringEquals'] = Stubs::ConditionParameters.stub(stub[:string_equals]) unless stub[:string_equals].nil?
        data['StringNotEquals'] = Stubs::ConditionParameters.stub(stub[:string_not_equals]) unless stub[:string_not_equals].nil?
        data['StringLike'] = Stubs::ConditionParameters.stub(stub[:string_like]) unless stub[:string_like].nil?
        data['StringNotLike'] = Stubs::ConditionParameters.stub(stub[:string_not_like]) unless stub[:string_not_like].nil?
        data
      end
    end

    # List Stubber for ConditionParameters
    class ConditionParameters
      def self.default(visited=[])
        return nil if visited.include?('ConditionParameters')
        visited = visited + ['ConditionParameters']
        [
          ConditionParameter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ConditionParameter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ConditionParameter
    class ConditionParameter
      def self.default(visited=[])
        return nil if visited.include?('ConditionParameter')
        visited = visited + ['ConditionParameter']
        {
          condition_key: 'condition_key',
          condition_value: 'condition_value',
        }
      end

      def self.stub(stub)
        stub ||= Types::ConditionParameter.new
        data = {}
        data['ConditionKey'] = stub[:condition_key] unless stub[:condition_key].nil?
        data['ConditionValue'] = stub[:condition_value] unless stub[:condition_value].nil?
        data
      end
    end

    # List Stubber for ResourceArns
    class ResourceArns
      def self.default(visited=[])
        return nil if visited.include?('ResourceArns')
        visited = visited + ['ResourceArns']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for ListOfTags
    class ListOfTags
      def self.default(visited=[])
        return nil if visited.include?('ListOfTags')
        visited = visited + ['ListOfTags']
        [
          Condition.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Condition.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Condition
    class Condition
      def self.default(visited=[])
        return nil if visited.include?('Condition')
        visited = visited + ['Condition']
        {
          condition_type: 'condition_type',
          condition_key: 'condition_key',
          condition_value: 'condition_value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Condition.new
        data = {}
        data['ConditionType'] = stub[:condition_type] unless stub[:condition_type].nil?
        data['ConditionKey'] = stub[:condition_key] unless stub[:condition_key].nil?
        data['ConditionValue'] = stub[:condition_value] unless stub[:condition_value].nil?
        data
      end
    end

    # Operation Stubber for GetBackupVaultAccessPolicy
    class GetBackupVaultAccessPolicy
      def self.default(visited=[])
        {
          backup_vault_name: 'backup_vault_name',
          backup_vault_arn: 'backup_vault_arn',
          policy: 'policy',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['BackupVaultName'] = stub[:backup_vault_name] unless stub[:backup_vault_name].nil?
        data['BackupVaultArn'] = stub[:backup_vault_arn] unless stub[:backup_vault_arn].nil?
        data['Policy'] = stub[:policy] unless stub[:policy].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetBackupVaultNotifications
    class GetBackupVaultNotifications
      def self.default(visited=[])
        {
          backup_vault_name: 'backup_vault_name',
          backup_vault_arn: 'backup_vault_arn',
          sns_topic_arn: 'sns_topic_arn',
          backup_vault_events: BackupVaultEvents.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['BackupVaultName'] = stub[:backup_vault_name] unless stub[:backup_vault_name].nil?
        data['BackupVaultArn'] = stub[:backup_vault_arn] unless stub[:backup_vault_arn].nil?
        data['SNSTopicArn'] = stub[:sns_topic_arn] unless stub[:sns_topic_arn].nil?
        data['BackupVaultEvents'] = Stubs::BackupVaultEvents.stub(stub[:backup_vault_events]) unless stub[:backup_vault_events].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BackupVaultEvents
    class BackupVaultEvents
      def self.default(visited=[])
        return nil if visited.include?('BackupVaultEvents')
        visited = visited + ['BackupVaultEvents']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetRecoveryPointRestoreMetadata
    class GetRecoveryPointRestoreMetadata
      def self.default(visited=[])
        {
          backup_vault_arn: 'backup_vault_arn',
          recovery_point_arn: 'recovery_point_arn',
          restore_metadata: Metadata.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['BackupVaultArn'] = stub[:backup_vault_arn] unless stub[:backup_vault_arn].nil?
        data['RecoveryPointArn'] = stub[:recovery_point_arn] unless stub[:recovery_point_arn].nil?
        data['RestoreMetadata'] = Stubs::Metadata.stub(stub[:restore_metadata]) unless stub[:restore_metadata].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for Metadata
    class Metadata
      def self.default(visited=[])
        return nil if visited.include?('Metadata')
        visited = visited + ['Metadata']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for GetSupportedResourceTypes
    class GetSupportedResourceTypes
      def self.default(visited=[])
        {
          resource_types: ResourceTypes.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ResourceTypes'] = Stubs::ResourceTypes.stub(stub[:resource_types]) unless stub[:resource_types].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ResourceTypes
    class ResourceTypes
      def self.default(visited=[])
        return nil if visited.include?('ResourceTypes')
        visited = visited + ['ResourceTypes']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListBackupJobs
    class ListBackupJobs
      def self.default(visited=[])
        {
          backup_jobs: BackupJobsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['BackupJobs'] = Stubs::BackupJobsList.stub(stub[:backup_jobs]) unless stub[:backup_jobs].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BackupJobsList
    class BackupJobsList
      def self.default(visited=[])
        return nil if visited.include?('BackupJobsList')
        visited = visited + ['BackupJobsList']
        [
          BackupJob.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BackupJob.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BackupJob
    class BackupJob
      def self.default(visited=[])
        return nil if visited.include?('BackupJob')
        visited = visited + ['BackupJob']
        {
          account_id: 'account_id',
          backup_job_id: 'backup_job_id',
          backup_vault_name: 'backup_vault_name',
          backup_vault_arn: 'backup_vault_arn',
          recovery_point_arn: 'recovery_point_arn',
          resource_arn: 'resource_arn',
          creation_date: Time.now,
          completion_date: Time.now,
          state: 'state',
          status_message: 'status_message',
          percent_done: 'percent_done',
          backup_size_in_bytes: 1,
          iam_role_arn: 'iam_role_arn',
          created_by: RecoveryPointCreator.default(visited),
          expected_completion_date: Time.now,
          start_by: Time.now,
          resource_type: 'resource_type',
          bytes_transferred: 1,
          backup_options: BackupOptions.default(visited),
          backup_type: 'backup_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::BackupJob.new
        data = {}
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['BackupJobId'] = stub[:backup_job_id] unless stub[:backup_job_id].nil?
        data['BackupVaultName'] = stub[:backup_vault_name] unless stub[:backup_vault_name].nil?
        data['BackupVaultArn'] = stub[:backup_vault_arn] unless stub[:backup_vault_arn].nil?
        data['RecoveryPointArn'] = stub[:recovery_point_arn] unless stub[:recovery_point_arn].nil?
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['CreationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['CompletionDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:completion_date]).to_i unless stub[:completion_date].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['PercentDone'] = stub[:percent_done] unless stub[:percent_done].nil?
        data['BackupSizeInBytes'] = stub[:backup_size_in_bytes] unless stub[:backup_size_in_bytes].nil?
        data['IamRoleArn'] = stub[:iam_role_arn] unless stub[:iam_role_arn].nil?
        data['CreatedBy'] = Stubs::RecoveryPointCreator.stub(stub[:created_by]) unless stub[:created_by].nil?
        data['ExpectedCompletionDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:expected_completion_date]).to_i unless stub[:expected_completion_date].nil?
        data['StartBy'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_by]).to_i unless stub[:start_by].nil?
        data['ResourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['BytesTransferred'] = stub[:bytes_transferred] unless stub[:bytes_transferred].nil?
        data['BackupOptions'] = Stubs::BackupOptions.stub(stub[:backup_options]) unless stub[:backup_options].nil?
        data['BackupType'] = stub[:backup_type] unless stub[:backup_type].nil?
        data
      end
    end

    # Operation Stubber for ListBackupPlanTemplates
    class ListBackupPlanTemplates
      def self.default(visited=[])
        {
          next_token: 'next_token',
          backup_plan_templates_list: BackupPlanTemplatesList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['BackupPlanTemplatesList'] = Stubs::BackupPlanTemplatesList.stub(stub[:backup_plan_templates_list]) unless stub[:backup_plan_templates_list].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BackupPlanTemplatesList
    class BackupPlanTemplatesList
      def self.default(visited=[])
        return nil if visited.include?('BackupPlanTemplatesList')
        visited = visited + ['BackupPlanTemplatesList']
        [
          BackupPlanTemplatesListMember.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BackupPlanTemplatesListMember.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BackupPlanTemplatesListMember
    class BackupPlanTemplatesListMember
      def self.default(visited=[])
        return nil if visited.include?('BackupPlanTemplatesListMember')
        visited = visited + ['BackupPlanTemplatesListMember']
        {
          backup_plan_template_id: 'backup_plan_template_id',
          backup_plan_template_name: 'backup_plan_template_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::BackupPlanTemplatesListMember.new
        data = {}
        data['BackupPlanTemplateId'] = stub[:backup_plan_template_id] unless stub[:backup_plan_template_id].nil?
        data['BackupPlanTemplateName'] = stub[:backup_plan_template_name] unless stub[:backup_plan_template_name].nil?
        data
      end
    end

    # Operation Stubber for ListBackupPlanVersions
    class ListBackupPlanVersions
      def self.default(visited=[])
        {
          next_token: 'next_token',
          backup_plan_versions_list: BackupPlanVersionsList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['BackupPlanVersionsList'] = Stubs::BackupPlanVersionsList.stub(stub[:backup_plan_versions_list]) unless stub[:backup_plan_versions_list].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BackupPlanVersionsList
    class BackupPlanVersionsList
      def self.default(visited=[])
        return nil if visited.include?('BackupPlanVersionsList')
        visited = visited + ['BackupPlanVersionsList']
        [
          BackupPlansListMember.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BackupPlansListMember.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BackupPlansListMember
    class BackupPlansListMember
      def self.default(visited=[])
        return nil if visited.include?('BackupPlansListMember')
        visited = visited + ['BackupPlansListMember']
        {
          backup_plan_arn: 'backup_plan_arn',
          backup_plan_id: 'backup_plan_id',
          creation_date: Time.now,
          deletion_date: Time.now,
          version_id: 'version_id',
          backup_plan_name: 'backup_plan_name',
          creator_request_id: 'creator_request_id',
          last_execution_date: Time.now,
          advanced_backup_settings: AdvancedBackupSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BackupPlansListMember.new
        data = {}
        data['BackupPlanArn'] = stub[:backup_plan_arn] unless stub[:backup_plan_arn].nil?
        data['BackupPlanId'] = stub[:backup_plan_id] unless stub[:backup_plan_id].nil?
        data['CreationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['DeletionDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:deletion_date]).to_i unless stub[:deletion_date].nil?
        data['VersionId'] = stub[:version_id] unless stub[:version_id].nil?
        data['BackupPlanName'] = stub[:backup_plan_name] unless stub[:backup_plan_name].nil?
        data['CreatorRequestId'] = stub[:creator_request_id] unless stub[:creator_request_id].nil?
        data['LastExecutionDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_execution_date]).to_i unless stub[:last_execution_date].nil?
        data['AdvancedBackupSettings'] = Stubs::AdvancedBackupSettings.stub(stub[:advanced_backup_settings]) unless stub[:advanced_backup_settings].nil?
        data
      end
    end

    # Operation Stubber for ListBackupPlans
    class ListBackupPlans
      def self.default(visited=[])
        {
          next_token: 'next_token',
          backup_plans_list: BackupPlansList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['BackupPlansList'] = Stubs::BackupPlansList.stub(stub[:backup_plans_list]) unless stub[:backup_plans_list].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BackupPlansList
    class BackupPlansList
      def self.default(visited=[])
        return nil if visited.include?('BackupPlansList')
        visited = visited + ['BackupPlansList']
        [
          BackupPlansListMember.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BackupPlansListMember.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListBackupSelections
    class ListBackupSelections
      def self.default(visited=[])
        {
          next_token: 'next_token',
          backup_selections_list: BackupSelectionsList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['BackupSelectionsList'] = Stubs::BackupSelectionsList.stub(stub[:backup_selections_list]) unless stub[:backup_selections_list].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BackupSelectionsList
    class BackupSelectionsList
      def self.default(visited=[])
        return nil if visited.include?('BackupSelectionsList')
        visited = visited + ['BackupSelectionsList']
        [
          BackupSelectionsListMember.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BackupSelectionsListMember.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BackupSelectionsListMember
    class BackupSelectionsListMember
      def self.default(visited=[])
        return nil if visited.include?('BackupSelectionsListMember')
        visited = visited + ['BackupSelectionsListMember']
        {
          selection_id: 'selection_id',
          selection_name: 'selection_name',
          backup_plan_id: 'backup_plan_id',
          creation_date: Time.now,
          creator_request_id: 'creator_request_id',
          iam_role_arn: 'iam_role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::BackupSelectionsListMember.new
        data = {}
        data['SelectionId'] = stub[:selection_id] unless stub[:selection_id].nil?
        data['SelectionName'] = stub[:selection_name] unless stub[:selection_name].nil?
        data['BackupPlanId'] = stub[:backup_plan_id] unless stub[:backup_plan_id].nil?
        data['CreationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['CreatorRequestId'] = stub[:creator_request_id] unless stub[:creator_request_id].nil?
        data['IamRoleArn'] = stub[:iam_role_arn] unless stub[:iam_role_arn].nil?
        data
      end
    end

    # Operation Stubber for ListBackupVaults
    class ListBackupVaults
      def self.default(visited=[])
        {
          backup_vault_list: BackupVaultList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['BackupVaultList'] = Stubs::BackupVaultList.stub(stub[:backup_vault_list]) unless stub[:backup_vault_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BackupVaultList
    class BackupVaultList
      def self.default(visited=[])
        return nil if visited.include?('BackupVaultList')
        visited = visited + ['BackupVaultList']
        [
          BackupVaultListMember.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BackupVaultListMember.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BackupVaultListMember
    class BackupVaultListMember
      def self.default(visited=[])
        return nil if visited.include?('BackupVaultListMember')
        visited = visited + ['BackupVaultListMember']
        {
          backup_vault_name: 'backup_vault_name',
          backup_vault_arn: 'backup_vault_arn',
          creation_date: Time.now,
          encryption_key_arn: 'encryption_key_arn',
          creator_request_id: 'creator_request_id',
          number_of_recovery_points: 1,
          locked: false,
          min_retention_days: 1,
          max_retention_days: 1,
          lock_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::BackupVaultListMember.new
        data = {}
        data['BackupVaultName'] = stub[:backup_vault_name] unless stub[:backup_vault_name].nil?
        data['BackupVaultArn'] = stub[:backup_vault_arn] unless stub[:backup_vault_arn].nil?
        data['CreationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['EncryptionKeyArn'] = stub[:encryption_key_arn] unless stub[:encryption_key_arn].nil?
        data['CreatorRequestId'] = stub[:creator_request_id] unless stub[:creator_request_id].nil?
        data['NumberOfRecoveryPoints'] = stub[:number_of_recovery_points] unless stub[:number_of_recovery_points].nil?
        data['Locked'] = stub[:locked] unless stub[:locked].nil?
        data['MinRetentionDays'] = stub[:min_retention_days] unless stub[:min_retention_days].nil?
        data['MaxRetentionDays'] = stub[:max_retention_days] unless stub[:max_retention_days].nil?
        data['LockDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:lock_date]).to_i unless stub[:lock_date].nil?
        data
      end
    end

    # Operation Stubber for ListCopyJobs
    class ListCopyJobs
      def self.default(visited=[])
        {
          copy_jobs: CopyJobsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CopyJobs'] = Stubs::CopyJobsList.stub(stub[:copy_jobs]) unless stub[:copy_jobs].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for CopyJobsList
    class CopyJobsList
      def self.default(visited=[])
        return nil if visited.include?('CopyJobsList')
        visited = visited + ['CopyJobsList']
        [
          CopyJob.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CopyJob.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListFrameworks
    class ListFrameworks
      def self.default(visited=[])
        {
          frameworks: FrameworkList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Frameworks'] = Stubs::FrameworkList.stub(stub[:frameworks]) unless stub[:frameworks].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for FrameworkList
    class FrameworkList
      def self.default(visited=[])
        return nil if visited.include?('FrameworkList')
        visited = visited + ['FrameworkList']
        [
          Framework.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Framework.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Framework
    class Framework
      def self.default(visited=[])
        return nil if visited.include?('Framework')
        visited = visited + ['Framework']
        {
          framework_name: 'framework_name',
          framework_arn: 'framework_arn',
          framework_description: 'framework_description',
          number_of_controls: 1,
          creation_time: Time.now,
          deployment_status: 'deployment_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::Framework.new
        data = {}
        data['FrameworkName'] = stub[:framework_name] unless stub[:framework_name].nil?
        data['FrameworkArn'] = stub[:framework_arn] unless stub[:framework_arn].nil?
        data['FrameworkDescription'] = stub[:framework_description] unless stub[:framework_description].nil?
        data['NumberOfControls'] = stub[:number_of_controls] unless stub[:number_of_controls].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['DeploymentStatus'] = stub[:deployment_status] unless stub[:deployment_status].nil?
        data
      end
    end

    # Operation Stubber for ListProtectedResources
    class ListProtectedResources
      def self.default(visited=[])
        {
          results: ProtectedResourcesList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Results'] = Stubs::ProtectedResourcesList.stub(stub[:results]) unless stub[:results].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ProtectedResourcesList
    class ProtectedResourcesList
      def self.default(visited=[])
        return nil if visited.include?('ProtectedResourcesList')
        visited = visited + ['ProtectedResourcesList']
        [
          ProtectedResource.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ProtectedResource.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ProtectedResource
    class ProtectedResource
      def self.default(visited=[])
        return nil if visited.include?('ProtectedResource')
        visited = visited + ['ProtectedResource']
        {
          resource_arn: 'resource_arn',
          resource_type: 'resource_type',
          last_backup_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ProtectedResource.new
        data = {}
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['ResourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['LastBackupTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_backup_time]).to_i unless stub[:last_backup_time].nil?
        data
      end
    end

    # Operation Stubber for ListRecoveryPointsByBackupVault
    class ListRecoveryPointsByBackupVault
      def self.default(visited=[])
        {
          next_token: 'next_token',
          recovery_points: RecoveryPointByBackupVaultList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['RecoveryPoints'] = Stubs::RecoveryPointByBackupVaultList.stub(stub[:recovery_points]) unless stub[:recovery_points].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for RecoveryPointByBackupVaultList
    class RecoveryPointByBackupVaultList
      def self.default(visited=[])
        return nil if visited.include?('RecoveryPointByBackupVaultList')
        visited = visited + ['RecoveryPointByBackupVaultList']
        [
          RecoveryPointByBackupVault.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RecoveryPointByBackupVault.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RecoveryPointByBackupVault
    class RecoveryPointByBackupVault
      def self.default(visited=[])
        return nil if visited.include?('RecoveryPointByBackupVault')
        visited = visited + ['RecoveryPointByBackupVault']
        {
          recovery_point_arn: 'recovery_point_arn',
          backup_vault_name: 'backup_vault_name',
          backup_vault_arn: 'backup_vault_arn',
          source_backup_vault_arn: 'source_backup_vault_arn',
          resource_arn: 'resource_arn',
          resource_type: 'resource_type',
          created_by: RecoveryPointCreator.default(visited),
          iam_role_arn: 'iam_role_arn',
          status: 'status',
          status_message: 'status_message',
          creation_date: Time.now,
          completion_date: Time.now,
          backup_size_in_bytes: 1,
          calculated_lifecycle: CalculatedLifecycle.default(visited),
          lifecycle: Lifecycle.default(visited),
          encryption_key_arn: 'encryption_key_arn',
          is_encrypted: false,
          last_restore_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::RecoveryPointByBackupVault.new
        data = {}
        data['RecoveryPointArn'] = stub[:recovery_point_arn] unless stub[:recovery_point_arn].nil?
        data['BackupVaultName'] = stub[:backup_vault_name] unless stub[:backup_vault_name].nil?
        data['BackupVaultArn'] = stub[:backup_vault_arn] unless stub[:backup_vault_arn].nil?
        data['SourceBackupVaultArn'] = stub[:source_backup_vault_arn] unless stub[:source_backup_vault_arn].nil?
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['ResourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['CreatedBy'] = Stubs::RecoveryPointCreator.stub(stub[:created_by]) unless stub[:created_by].nil?
        data['IamRoleArn'] = stub[:iam_role_arn] unless stub[:iam_role_arn].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['CreationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['CompletionDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:completion_date]).to_i unless stub[:completion_date].nil?
        data['BackupSizeInBytes'] = stub[:backup_size_in_bytes] unless stub[:backup_size_in_bytes].nil?
        data['CalculatedLifecycle'] = Stubs::CalculatedLifecycle.stub(stub[:calculated_lifecycle]) unless stub[:calculated_lifecycle].nil?
        data['Lifecycle'] = Stubs::Lifecycle.stub(stub[:lifecycle]) unless stub[:lifecycle].nil?
        data['EncryptionKeyArn'] = stub[:encryption_key_arn] unless stub[:encryption_key_arn].nil?
        data['IsEncrypted'] = stub[:is_encrypted] unless stub[:is_encrypted].nil?
        data['LastRestoreTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_restore_time]).to_i unless stub[:last_restore_time].nil?
        data
      end
    end

    # Operation Stubber for ListRecoveryPointsByResource
    class ListRecoveryPointsByResource
      def self.default(visited=[])
        {
          next_token: 'next_token',
          recovery_points: RecoveryPointByResourceList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['RecoveryPoints'] = Stubs::RecoveryPointByResourceList.stub(stub[:recovery_points]) unless stub[:recovery_points].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for RecoveryPointByResourceList
    class RecoveryPointByResourceList
      def self.default(visited=[])
        return nil if visited.include?('RecoveryPointByResourceList')
        visited = visited + ['RecoveryPointByResourceList']
        [
          RecoveryPointByResource.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RecoveryPointByResource.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RecoveryPointByResource
    class RecoveryPointByResource
      def self.default(visited=[])
        return nil if visited.include?('RecoveryPointByResource')
        visited = visited + ['RecoveryPointByResource']
        {
          recovery_point_arn: 'recovery_point_arn',
          creation_date: Time.now,
          status: 'status',
          status_message: 'status_message',
          encryption_key_arn: 'encryption_key_arn',
          backup_size_bytes: 1,
          backup_vault_name: 'backup_vault_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::RecoveryPointByResource.new
        data = {}
        data['RecoveryPointArn'] = stub[:recovery_point_arn] unless stub[:recovery_point_arn].nil?
        data['CreationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['EncryptionKeyArn'] = stub[:encryption_key_arn] unless stub[:encryption_key_arn].nil?
        data['BackupSizeBytes'] = stub[:backup_size_bytes] unless stub[:backup_size_bytes].nil?
        data['BackupVaultName'] = stub[:backup_vault_name] unless stub[:backup_vault_name].nil?
        data
      end
    end

    # Operation Stubber for ListReportJobs
    class ListReportJobs
      def self.default(visited=[])
        {
          report_jobs: ReportJobList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ReportJobs'] = Stubs::ReportJobList.stub(stub[:report_jobs]) unless stub[:report_jobs].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ReportJobList
    class ReportJobList
      def self.default(visited=[])
        return nil if visited.include?('ReportJobList')
        visited = visited + ['ReportJobList']
        [
          ReportJob.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ReportJob.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListReportPlans
    class ListReportPlans
      def self.default(visited=[])
        {
          report_plans: ReportPlanList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ReportPlans'] = Stubs::ReportPlanList.stub(stub[:report_plans]) unless stub[:report_plans].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ReportPlanList
    class ReportPlanList
      def self.default(visited=[])
        return nil if visited.include?('ReportPlanList')
        visited = visited + ['ReportPlanList']
        [
          ReportPlan.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ReportPlan.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListRestoreJobs
    class ListRestoreJobs
      def self.default(visited=[])
        {
          restore_jobs: RestoreJobsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['RestoreJobs'] = Stubs::RestoreJobsList.stub(stub[:restore_jobs]) unless stub[:restore_jobs].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for RestoreJobsList
    class RestoreJobsList
      def self.default(visited=[])
        return nil if visited.include?('RestoreJobsList')
        visited = visited + ['RestoreJobsList']
        [
          RestoreJobsListMember.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RestoreJobsListMember.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RestoreJobsListMember
    class RestoreJobsListMember
      def self.default(visited=[])
        return nil if visited.include?('RestoreJobsListMember')
        visited = visited + ['RestoreJobsListMember']
        {
          account_id: 'account_id',
          restore_job_id: 'restore_job_id',
          recovery_point_arn: 'recovery_point_arn',
          creation_date: Time.now,
          completion_date: Time.now,
          status: 'status',
          status_message: 'status_message',
          percent_done: 'percent_done',
          backup_size_in_bytes: 1,
          iam_role_arn: 'iam_role_arn',
          expected_completion_time_minutes: 1,
          created_resource_arn: 'created_resource_arn',
          resource_type: 'resource_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::RestoreJobsListMember.new
        data = {}
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['RestoreJobId'] = stub[:restore_job_id] unless stub[:restore_job_id].nil?
        data['RecoveryPointArn'] = stub[:recovery_point_arn] unless stub[:recovery_point_arn].nil?
        data['CreationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['CompletionDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:completion_date]).to_i unless stub[:completion_date].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['PercentDone'] = stub[:percent_done] unless stub[:percent_done].nil?
        data['BackupSizeInBytes'] = stub[:backup_size_in_bytes] unless stub[:backup_size_in_bytes].nil?
        data['IamRoleArn'] = stub[:iam_role_arn] unless stub[:iam_role_arn].nil?
        data['ExpectedCompletionTimeMinutes'] = stub[:expected_completion_time_minutes] unless stub[:expected_completion_time_minutes].nil?
        data['CreatedResourceArn'] = stub[:created_resource_arn] unless stub[:created_resource_arn].nil?
        data['ResourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data
      end
    end

    # Operation Stubber for ListTags
    class ListTags
      def self.default(visited=[])
        {
          next_token: 'next_token',
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for PutBackupVaultAccessPolicy
    class PutBackupVaultAccessPolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutBackupVaultLockConfiguration
    class PutBackupVaultLockConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutBackupVaultNotifications
    class PutBackupVaultNotifications
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartBackupJob
    class StartBackupJob
      def self.default(visited=[])
        {
          backup_job_id: 'backup_job_id',
          recovery_point_arn: 'recovery_point_arn',
          creation_date: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['BackupJobId'] = stub[:backup_job_id] unless stub[:backup_job_id].nil?
        data['RecoveryPointArn'] = stub[:recovery_point_arn] unless stub[:recovery_point_arn].nil?
        data['CreationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StartCopyJob
    class StartCopyJob
      def self.default(visited=[])
        {
          copy_job_id: 'copy_job_id',
          creation_date: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CopyJobId'] = stub[:copy_job_id] unless stub[:copy_job_id].nil?
        data['CreationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StartReportJob
    class StartReportJob
      def self.default(visited=[])
        {
          report_job_id: 'report_job_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ReportJobId'] = stub[:report_job_id] unless stub[:report_job_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StartRestoreJob
    class StartRestoreJob
      def self.default(visited=[])
        {
          restore_job_id: 'restore_job_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['RestoreJobId'] = stub[:restore_job_id] unless stub[:restore_job_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StopBackupJob
    class StopBackupJob
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateBackupPlan
    class UpdateBackupPlan
      def self.default(visited=[])
        {
          backup_plan_id: 'backup_plan_id',
          backup_plan_arn: 'backup_plan_arn',
          creation_date: Time.now,
          version_id: 'version_id',
          advanced_backup_settings: AdvancedBackupSettings.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['BackupPlanId'] = stub[:backup_plan_id] unless stub[:backup_plan_id].nil?
        data['BackupPlanArn'] = stub[:backup_plan_arn] unless stub[:backup_plan_arn].nil?
        data['CreationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['VersionId'] = stub[:version_id] unless stub[:version_id].nil?
        data['AdvancedBackupSettings'] = Stubs::AdvancedBackupSettings.stub(stub[:advanced_backup_settings]) unless stub[:advanced_backup_settings].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateFramework
    class UpdateFramework
      def self.default(visited=[])
        {
          framework_name: 'framework_name',
          framework_arn: 'framework_arn',
          creation_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['FrameworkName'] = stub[:framework_name] unless stub[:framework_name].nil?
        data['FrameworkArn'] = stub[:framework_arn] unless stub[:framework_arn].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateGlobalSettings
    class UpdateGlobalSettings
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateRecoveryPointLifecycle
    class UpdateRecoveryPointLifecycle
      def self.default(visited=[])
        {
          backup_vault_arn: 'backup_vault_arn',
          recovery_point_arn: 'recovery_point_arn',
          lifecycle: Lifecycle.default(visited),
          calculated_lifecycle: CalculatedLifecycle.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['BackupVaultArn'] = stub[:backup_vault_arn] unless stub[:backup_vault_arn].nil?
        data['RecoveryPointArn'] = stub[:recovery_point_arn] unless stub[:recovery_point_arn].nil?
        data['Lifecycle'] = Stubs::Lifecycle.stub(stub[:lifecycle]) unless stub[:lifecycle].nil?
        data['CalculatedLifecycle'] = Stubs::CalculatedLifecycle.stub(stub[:calculated_lifecycle]) unless stub[:calculated_lifecycle].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateRegionSettings
    class UpdateRegionSettings
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateReportPlan
    class UpdateReportPlan
      def self.default(visited=[])
        {
          report_plan_name: 'report_plan_name',
          report_plan_arn: 'report_plan_arn',
          creation_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ReportPlanName'] = stub[:report_plan_name] unless stub[:report_plan_name].nil?
        data['ReportPlanArn'] = stub[:report_plan_arn] unless stub[:report_plan_arn].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
