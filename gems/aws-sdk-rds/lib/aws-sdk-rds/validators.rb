# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::RDS
  module Validators

    class AccountQuota
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccountQuota, context: context)
        Hearth::Validator.validate!(input[:account_quota_name], ::String, context: "#{context}[:account_quota_name]")
        Hearth::Validator.validate!(input[:used], ::Integer, context: "#{context}[:used]")
        Hearth::Validator.validate!(input[:max], ::Integer, context: "#{context}[:max]")
      end
    end

    class AccountQuotaList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AccountQuota.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ActivityStreamModeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AddRoleToDBClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddRoleToDBClusterInput, context: context)
        Hearth::Validator.validate!(input[:db_cluster_identifier], ::String, context: "#{context}[:db_cluster_identifier]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:feature_name], ::String, context: "#{context}[:feature_name]")
      end
    end

    class AddRoleToDBClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddRoleToDBClusterOutput, context: context)
      end
    end

    class AddRoleToDBInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddRoleToDBInstanceInput, context: context)
        Hearth::Validator.validate!(input[:db_instance_identifier], ::String, context: "#{context}[:db_instance_identifier]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:feature_name], ::String, context: "#{context}[:feature_name]")
      end
    end

    class AddRoleToDBInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddRoleToDBInstanceOutput, context: context)
      end
    end

    class AddSourceIdentifierToSubscriptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddSourceIdentifierToSubscriptionInput, context: context)
        Hearth::Validator.validate!(input[:subscription_name], ::String, context: "#{context}[:subscription_name]")
        Hearth::Validator.validate!(input[:source_identifier], ::String, context: "#{context}[:source_identifier]")
      end
    end

    class AddSourceIdentifierToSubscriptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddSourceIdentifierToSubscriptionOutput, context: context)
        Validators::EventSubscription.validate!(input[:event_subscription], context: "#{context}[:event_subscription]") unless input[:event_subscription].nil?
      end
    end

    class AddTagsToResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddTagsToResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class AddTagsToResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddTagsToResourceOutput, context: context)
      end
    end

    class ApplyPendingMaintenanceActionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplyPendingMaintenanceActionInput, context: context)
        Hearth::Validator.validate!(input[:resource_identifier], ::String, context: "#{context}[:resource_identifier]")
        Hearth::Validator.validate!(input[:apply_action], ::String, context: "#{context}[:apply_action]")
        Hearth::Validator.validate!(input[:opt_in_type], ::String, context: "#{context}[:opt_in_type]")
      end
    end

    class ApplyPendingMaintenanceActionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplyPendingMaintenanceActionOutput, context: context)
        Validators::ResourcePendingMaintenanceActions.validate!(input[:resource_pending_maintenance_actions], context: "#{context}[:resource_pending_maintenance_actions]") unless input[:resource_pending_maintenance_actions].nil?
      end
    end

    class AttributeValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AuthorizationAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuthorizationAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AuthorizationNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuthorizationNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AuthorizationQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuthorizationQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AuthorizeDBSecurityGroupIngressInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuthorizeDBSecurityGroupIngressInput, context: context)
        Hearth::Validator.validate!(input[:db_security_group_name], ::String, context: "#{context}[:db_security_group_name]")
        Hearth::Validator.validate!(input[:cidrip], ::String, context: "#{context}[:cidrip]")
        Hearth::Validator.validate!(input[:ec2_security_group_name], ::String, context: "#{context}[:ec2_security_group_name]")
        Hearth::Validator.validate!(input[:ec2_security_group_id], ::String, context: "#{context}[:ec2_security_group_id]")
        Hearth::Validator.validate!(input[:ec2_security_group_owner_id], ::String, context: "#{context}[:ec2_security_group_owner_id]")
      end
    end

    class AuthorizeDBSecurityGroupIngressOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuthorizeDBSecurityGroupIngressOutput, context: context)
        Validators::DBSecurityGroup.validate!(input[:db_security_group], context: "#{context}[:db_security_group]") unless input[:db_security_group].nil?
      end
    end

    class AvailabilityZone
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AvailabilityZone, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class AvailabilityZoneList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AvailabilityZone.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AvailabilityZones
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AvailableProcessorFeature
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AvailableProcessorFeature, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:default_value], ::String, context: "#{context}[:default_value]")
        Hearth::Validator.validate!(input[:allowed_values], ::String, context: "#{context}[:allowed_values]")
      end
    end

    class AvailableProcessorFeatureList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AvailableProcessorFeature.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BacktrackDBClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BacktrackDBClusterInput, context: context)
        Hearth::Validator.validate!(input[:db_cluster_identifier], ::String, context: "#{context}[:db_cluster_identifier]")
        Hearth::Validator.validate!(input[:backtrack_to], ::Time, context: "#{context}[:backtrack_to]")
        Hearth::Validator.validate!(input[:force], ::TrueClass, ::FalseClass, context: "#{context}[:force]")
        Hearth::Validator.validate!(input[:use_earliest_time_on_point_in_time_unavailable], ::TrueClass, ::FalseClass, context: "#{context}[:use_earliest_time_on_point_in_time_unavailable]")
      end
    end

    class BacktrackDBClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BacktrackDBClusterOutput, context: context)
        Hearth::Validator.validate!(input[:db_cluster_identifier], ::String, context: "#{context}[:db_cluster_identifier]")
        Hearth::Validator.validate!(input[:backtrack_identifier], ::String, context: "#{context}[:backtrack_identifier]")
        Hearth::Validator.validate!(input[:backtrack_to], ::Time, context: "#{context}[:backtrack_to]")
        Hearth::Validator.validate!(input[:backtracked_from], ::Time, context: "#{context}[:backtracked_from]")
        Hearth::Validator.validate!(input[:backtrack_request_creation_time], ::Time, context: "#{context}[:backtrack_request_creation_time]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class BackupPolicyNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BackupPolicyNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CancelExportTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelExportTaskInput, context: context)
        Hearth::Validator.validate!(input[:export_task_identifier], ::String, context: "#{context}[:export_task_identifier]")
      end
    end

    class CancelExportTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelExportTaskOutput, context: context)
        Hearth::Validator.validate!(input[:export_task_identifier], ::String, context: "#{context}[:export_task_identifier]")
        Hearth::Validator.validate!(input[:source_arn], ::String, context: "#{context}[:source_arn]")
        Validators::StringList.validate!(input[:export_only], context: "#{context}[:export_only]") unless input[:export_only].nil?
        Hearth::Validator.validate!(input[:snapshot_time], ::Time, context: "#{context}[:snapshot_time]")
        Hearth::Validator.validate!(input[:task_start_time], ::Time, context: "#{context}[:task_start_time]")
        Hearth::Validator.validate!(input[:task_end_time], ::Time, context: "#{context}[:task_end_time]")
        Hearth::Validator.validate!(input[:s3_bucket], ::String, context: "#{context}[:s3_bucket]")
        Hearth::Validator.validate!(input[:s3_prefix], ::String, context: "#{context}[:s3_prefix]")
        Hearth::Validator.validate!(input[:iam_role_arn], ::String, context: "#{context}[:iam_role_arn]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:percent_progress], ::Integer, context: "#{context}[:percent_progress]")
        Hearth::Validator.validate!(input[:total_extracted_data_in_gb], ::Integer, context: "#{context}[:total_extracted_data_in_gb]")
        Hearth::Validator.validate!(input[:failure_cause], ::String, context: "#{context}[:failure_cause]")
        Hearth::Validator.validate!(input[:warning_message], ::String, context: "#{context}[:warning_message]")
      end
    end

    class Certificate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Certificate, context: context)
        Hearth::Validator.validate!(input[:certificate_identifier], ::String, context: "#{context}[:certificate_identifier]")
        Hearth::Validator.validate!(input[:certificate_type], ::String, context: "#{context}[:certificate_type]")
        Hearth::Validator.validate!(input[:thumbprint], ::String, context: "#{context}[:thumbprint]")
        Hearth::Validator.validate!(input[:valid_from], ::Time, context: "#{context}[:valid_from]")
        Hearth::Validator.validate!(input[:valid_till], ::Time, context: "#{context}[:valid_till]")
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
        Hearth::Validator.validate!(input[:customer_override], ::TrueClass, ::FalseClass, context: "#{context}[:customer_override]")
        Hearth::Validator.validate!(input[:customer_override_valid_till], ::Time, context: "#{context}[:customer_override_valid_till]")
      end
    end

    class CertificateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Certificate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CertificateNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CertificateNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CharacterSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CharacterSet, context: context)
        Hearth::Validator.validate!(input[:character_set_name], ::String, context: "#{context}[:character_set_name]")
        Hearth::Validator.validate!(input[:character_set_description], ::String, context: "#{context}[:character_set_description]")
      end
    end

    class CloudwatchLogsExportConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudwatchLogsExportConfiguration, context: context)
        Validators::LogTypeList.validate!(input[:enable_log_types], context: "#{context}[:enable_log_types]") unless input[:enable_log_types].nil?
        Validators::LogTypeList.validate!(input[:disable_log_types], context: "#{context}[:disable_log_types]") unless input[:disable_log_types].nil?
      end
    end

    class ClusterPendingModifiedValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClusterPendingModifiedValues, context: context)
        Validators::PendingCloudwatchLogsExports.validate!(input[:pending_cloudwatch_logs_exports], context: "#{context}[:pending_cloudwatch_logs_exports]") unless input[:pending_cloudwatch_logs_exports].nil?
        Hearth::Validator.validate!(input[:db_cluster_identifier], ::String, context: "#{context}[:db_cluster_identifier]")
        Hearth::Validator.validate!(input[:master_user_password], ::String, context: "#{context}[:master_user_password]")
        Hearth::Validator.validate!(input[:iam_database_authentication_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:iam_database_authentication_enabled]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
      end
    end

    class ConnectionPoolConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectionPoolConfiguration, context: context)
        Hearth::Validator.validate!(input[:max_connections_percent], ::Integer, context: "#{context}[:max_connections_percent]")
        Hearth::Validator.validate!(input[:max_idle_connections_percent], ::Integer, context: "#{context}[:max_idle_connections_percent]")
        Hearth::Validator.validate!(input[:connection_borrow_timeout], ::Integer, context: "#{context}[:connection_borrow_timeout]")
        Validators::StringList.validate!(input[:session_pinning_filters], context: "#{context}[:session_pinning_filters]") unless input[:session_pinning_filters].nil?
        Hearth::Validator.validate!(input[:init_query], ::String, context: "#{context}[:init_query]")
      end
    end

    class ConnectionPoolConfigurationInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectionPoolConfigurationInfo, context: context)
        Hearth::Validator.validate!(input[:max_connections_percent], ::Integer, context: "#{context}[:max_connections_percent]")
        Hearth::Validator.validate!(input[:max_idle_connections_percent], ::Integer, context: "#{context}[:max_idle_connections_percent]")
        Hearth::Validator.validate!(input[:connection_borrow_timeout], ::Integer, context: "#{context}[:connection_borrow_timeout]")
        Validators::StringList.validate!(input[:session_pinning_filters], context: "#{context}[:session_pinning_filters]") unless input[:session_pinning_filters].nil?
        Hearth::Validator.validate!(input[:init_query], ::String, context: "#{context}[:init_query]")
      end
    end

    class CopyDBClusterParameterGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CopyDBClusterParameterGroupInput, context: context)
        Hearth::Validator.validate!(input[:source_db_cluster_parameter_group_identifier], ::String, context: "#{context}[:source_db_cluster_parameter_group_identifier]")
        Hearth::Validator.validate!(input[:target_db_cluster_parameter_group_identifier], ::String, context: "#{context}[:target_db_cluster_parameter_group_identifier]")
        Hearth::Validator.validate!(input[:target_db_cluster_parameter_group_description], ::String, context: "#{context}[:target_db_cluster_parameter_group_description]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CopyDBClusterParameterGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CopyDBClusterParameterGroupOutput, context: context)
        Validators::DBClusterParameterGroup.validate!(input[:db_cluster_parameter_group], context: "#{context}[:db_cluster_parameter_group]") unless input[:db_cluster_parameter_group].nil?
      end
    end

    class CopyDBClusterSnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CopyDBClusterSnapshotInput, context: context)
        Hearth::Validator.validate!(input[:source_db_cluster_snapshot_identifier], ::String, context: "#{context}[:source_db_cluster_snapshot_identifier]")
        Hearth::Validator.validate!(input[:target_db_cluster_snapshot_identifier], ::String, context: "#{context}[:target_db_cluster_snapshot_identifier]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:pre_signed_url], ::String, context: "#{context}[:pre_signed_url]")
        Hearth::Validator.validate!(input[:copy_tags], ::TrueClass, ::FalseClass, context: "#{context}[:copy_tags]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CopyDBClusterSnapshotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CopyDBClusterSnapshotOutput, context: context)
        Validators::DBClusterSnapshot.validate!(input[:db_cluster_snapshot], context: "#{context}[:db_cluster_snapshot]") unless input[:db_cluster_snapshot].nil?
      end
    end

    class CopyDBParameterGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CopyDBParameterGroupInput, context: context)
        Hearth::Validator.validate!(input[:source_db_parameter_group_identifier], ::String, context: "#{context}[:source_db_parameter_group_identifier]")
        Hearth::Validator.validate!(input[:target_db_parameter_group_identifier], ::String, context: "#{context}[:target_db_parameter_group_identifier]")
        Hearth::Validator.validate!(input[:target_db_parameter_group_description], ::String, context: "#{context}[:target_db_parameter_group_description]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CopyDBParameterGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CopyDBParameterGroupOutput, context: context)
        Validators::DBParameterGroup.validate!(input[:db_parameter_group], context: "#{context}[:db_parameter_group]") unless input[:db_parameter_group].nil?
      end
    end

    class CopyDBSnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CopyDBSnapshotInput, context: context)
        Hearth::Validator.validate!(input[:source_db_snapshot_identifier], ::String, context: "#{context}[:source_db_snapshot_identifier]")
        Hearth::Validator.validate!(input[:target_db_snapshot_identifier], ::String, context: "#{context}[:target_db_snapshot_identifier]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:copy_tags], ::TrueClass, ::FalseClass, context: "#{context}[:copy_tags]")
        Hearth::Validator.validate!(input[:pre_signed_url], ::String, context: "#{context}[:pre_signed_url]")
        Hearth::Validator.validate!(input[:option_group_name], ::String, context: "#{context}[:option_group_name]")
        Hearth::Validator.validate!(input[:target_custom_availability_zone], ::String, context: "#{context}[:target_custom_availability_zone]")
      end
    end

    class CopyDBSnapshotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CopyDBSnapshotOutput, context: context)
        Validators::DBSnapshot.validate!(input[:db_snapshot], context: "#{context}[:db_snapshot]") unless input[:db_snapshot].nil?
      end
    end

    class CopyOptionGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CopyOptionGroupInput, context: context)
        Hearth::Validator.validate!(input[:source_option_group_identifier], ::String, context: "#{context}[:source_option_group_identifier]")
        Hearth::Validator.validate!(input[:target_option_group_identifier], ::String, context: "#{context}[:target_option_group_identifier]")
        Hearth::Validator.validate!(input[:target_option_group_description], ::String, context: "#{context}[:target_option_group_description]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CopyOptionGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CopyOptionGroupOutput, context: context)
        Validators::OptionGroup.validate!(input[:option_group], context: "#{context}[:option_group]") unless input[:option_group].nil?
      end
    end

    class CreateCustomDBEngineVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCustomDBEngineVersionInput, context: context)
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:database_installation_files_s3_bucket_name], ::String, context: "#{context}[:database_installation_files_s3_bucket_name]")
        Hearth::Validator.validate!(input[:database_installation_files_s3_prefix], ::String, context: "#{context}[:database_installation_files_s3_prefix]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:manifest], ::String, context: "#{context}[:manifest]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateCustomDBEngineVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCustomDBEngineVersionOutput, context: context)
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:db_parameter_group_family], ::String, context: "#{context}[:db_parameter_group_family]")
        Hearth::Validator.validate!(input[:db_engine_description], ::String, context: "#{context}[:db_engine_description]")
        Hearth::Validator.validate!(input[:db_engine_version_description], ::String, context: "#{context}[:db_engine_version_description]")
        Validators::CharacterSet.validate!(input[:default_character_set], context: "#{context}[:default_character_set]") unless input[:default_character_set].nil?
        Validators::SupportedCharacterSetsList.validate!(input[:supported_character_sets], context: "#{context}[:supported_character_sets]") unless input[:supported_character_sets].nil?
        Validators::SupportedCharacterSetsList.validate!(input[:supported_nchar_character_sets], context: "#{context}[:supported_nchar_character_sets]") unless input[:supported_nchar_character_sets].nil?
        Validators::ValidUpgradeTargetList.validate!(input[:valid_upgrade_target], context: "#{context}[:valid_upgrade_target]") unless input[:valid_upgrade_target].nil?
        Validators::SupportedTimezonesList.validate!(input[:supported_timezones], context: "#{context}[:supported_timezones]") unless input[:supported_timezones].nil?
        Validators::LogTypeList.validate!(input[:exportable_log_types], context: "#{context}[:exportable_log_types]") unless input[:exportable_log_types].nil?
        Hearth::Validator.validate!(input[:supports_log_exports_to_cloudwatch_logs], ::TrueClass, ::FalseClass, context: "#{context}[:supports_log_exports_to_cloudwatch_logs]")
        Hearth::Validator.validate!(input[:supports_read_replica], ::TrueClass, ::FalseClass, context: "#{context}[:supports_read_replica]")
        Validators::EngineModeList.validate!(input[:supported_engine_modes], context: "#{context}[:supported_engine_modes]") unless input[:supported_engine_modes].nil?
        Validators::FeatureNameList.validate!(input[:supported_feature_names], context: "#{context}[:supported_feature_names]") unless input[:supported_feature_names].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:supports_parallel_query], ::TrueClass, ::FalseClass, context: "#{context}[:supports_parallel_query]")
        Hearth::Validator.validate!(input[:supports_global_databases], ::TrueClass, ::FalseClass, context: "#{context}[:supports_global_databases]")
        Hearth::Validator.validate!(input[:major_engine_version], ::String, context: "#{context}[:major_engine_version]")
        Hearth::Validator.validate!(input[:database_installation_files_s3_bucket_name], ::String, context: "#{context}[:database_installation_files_s3_bucket_name]")
        Hearth::Validator.validate!(input[:database_installation_files_s3_prefix], ::String, context: "#{context}[:database_installation_files_s3_prefix]")
        Hearth::Validator.validate!(input[:db_engine_version_arn], ::String, context: "#{context}[:db_engine_version_arn]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:create_time], ::Time, context: "#{context}[:create_time]")
        Validators::TagList.validate!(input[:tag_list], context: "#{context}[:tag_list]") unless input[:tag_list].nil?
        Hearth::Validator.validate!(input[:supports_babelfish], ::TrueClass, ::FalseClass, context: "#{context}[:supports_babelfish]")
      end
    end

    class CreateDBClusterEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDBClusterEndpointInput, context: context)
        Hearth::Validator.validate!(input[:db_cluster_identifier], ::String, context: "#{context}[:db_cluster_identifier]")
        Hearth::Validator.validate!(input[:db_cluster_endpoint_identifier], ::String, context: "#{context}[:db_cluster_endpoint_identifier]")
        Hearth::Validator.validate!(input[:endpoint_type], ::String, context: "#{context}[:endpoint_type]")
        Validators::StringList.validate!(input[:static_members], context: "#{context}[:static_members]") unless input[:static_members].nil?
        Validators::StringList.validate!(input[:excluded_members], context: "#{context}[:excluded_members]") unless input[:excluded_members].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateDBClusterEndpointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDBClusterEndpointOutput, context: context)
        Hearth::Validator.validate!(input[:db_cluster_endpoint_identifier], ::String, context: "#{context}[:db_cluster_endpoint_identifier]")
        Hearth::Validator.validate!(input[:db_cluster_identifier], ::String, context: "#{context}[:db_cluster_identifier]")
        Hearth::Validator.validate!(input[:db_cluster_endpoint_resource_identifier], ::String, context: "#{context}[:db_cluster_endpoint_resource_identifier]")
        Hearth::Validator.validate!(input[:endpoint], ::String, context: "#{context}[:endpoint]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:endpoint_type], ::String, context: "#{context}[:endpoint_type]")
        Hearth::Validator.validate!(input[:custom_endpoint_type], ::String, context: "#{context}[:custom_endpoint_type]")
        Validators::StringList.validate!(input[:static_members], context: "#{context}[:static_members]") unless input[:static_members].nil?
        Validators::StringList.validate!(input[:excluded_members], context: "#{context}[:excluded_members]") unless input[:excluded_members].nil?
        Hearth::Validator.validate!(input[:db_cluster_endpoint_arn], ::String, context: "#{context}[:db_cluster_endpoint_arn]")
      end
    end

    class CreateDBClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDBClusterInput, context: context)
        Validators::AvailabilityZones.validate!(input[:availability_zones], context: "#{context}[:availability_zones]") unless input[:availability_zones].nil?
        Hearth::Validator.validate!(input[:backup_retention_period], ::Integer, context: "#{context}[:backup_retention_period]")
        Hearth::Validator.validate!(input[:character_set_name], ::String, context: "#{context}[:character_set_name]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:db_cluster_identifier], ::String, context: "#{context}[:db_cluster_identifier]")
        Hearth::Validator.validate!(input[:db_cluster_parameter_group_name], ::String, context: "#{context}[:db_cluster_parameter_group_name]")
        Validators::VpcSecurityGroupIdList.validate!(input[:vpc_security_group_ids], context: "#{context}[:vpc_security_group_ids]") unless input[:vpc_security_group_ids].nil?
        Hearth::Validator.validate!(input[:db_subnet_group_name], ::String, context: "#{context}[:db_subnet_group_name]")
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:master_username], ::String, context: "#{context}[:master_username]")
        Hearth::Validator.validate!(input[:master_user_password], ::String, context: "#{context}[:master_user_password]")
        Hearth::Validator.validate!(input[:option_group_name], ::String, context: "#{context}[:option_group_name]")
        Hearth::Validator.validate!(input[:preferred_backup_window], ::String, context: "#{context}[:preferred_backup_window]")
        Hearth::Validator.validate!(input[:preferred_maintenance_window], ::String, context: "#{context}[:preferred_maintenance_window]")
        Hearth::Validator.validate!(input[:replication_source_identifier], ::String, context: "#{context}[:replication_source_identifier]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:storage_encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:storage_encrypted]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:pre_signed_url], ::String, context: "#{context}[:pre_signed_url]")
        Hearth::Validator.validate!(input[:enable_iam_database_authentication], ::TrueClass, ::FalseClass, context: "#{context}[:enable_iam_database_authentication]")
        Hearth::Validator.validate!(input[:backtrack_window], ::Integer, context: "#{context}[:backtrack_window]")
        Validators::LogTypeList.validate!(input[:enable_cloudwatch_logs_exports], context: "#{context}[:enable_cloudwatch_logs_exports]") unless input[:enable_cloudwatch_logs_exports].nil?
        Hearth::Validator.validate!(input[:engine_mode], ::String, context: "#{context}[:engine_mode]")
        Validators::ScalingConfiguration.validate!(input[:scaling_configuration], context: "#{context}[:scaling_configuration]") unless input[:scaling_configuration].nil?
        Hearth::Validator.validate!(input[:deletion_protection], ::TrueClass, ::FalseClass, context: "#{context}[:deletion_protection]")
        Hearth::Validator.validate!(input[:global_cluster_identifier], ::String, context: "#{context}[:global_cluster_identifier]")
        Hearth::Validator.validate!(input[:enable_http_endpoint], ::TrueClass, ::FalseClass, context: "#{context}[:enable_http_endpoint]")
        Hearth::Validator.validate!(input[:copy_tags_to_snapshot], ::TrueClass, ::FalseClass, context: "#{context}[:copy_tags_to_snapshot]")
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:domain_iam_role_name], ::String, context: "#{context}[:domain_iam_role_name]")
        Hearth::Validator.validate!(input[:enable_global_write_forwarding], ::TrueClass, ::FalseClass, context: "#{context}[:enable_global_write_forwarding]")
        Hearth::Validator.validate!(input[:db_cluster_instance_class], ::String, context: "#{context}[:db_cluster_instance_class]")
        Hearth::Validator.validate!(input[:allocated_storage], ::Integer, context: "#{context}[:allocated_storage]")
        Hearth::Validator.validate!(input[:storage_type], ::String, context: "#{context}[:storage_type]")
        Hearth::Validator.validate!(input[:iops], ::Integer, context: "#{context}[:iops]")
        Hearth::Validator.validate!(input[:publicly_accessible], ::TrueClass, ::FalseClass, context: "#{context}[:publicly_accessible]")
        Hearth::Validator.validate!(input[:auto_minor_version_upgrade], ::TrueClass, ::FalseClass, context: "#{context}[:auto_minor_version_upgrade]")
        Hearth::Validator.validate!(input[:monitoring_interval], ::Integer, context: "#{context}[:monitoring_interval]")
        Hearth::Validator.validate!(input[:monitoring_role_arn], ::String, context: "#{context}[:monitoring_role_arn]")
        Hearth::Validator.validate!(input[:enable_performance_insights], ::TrueClass, ::FalseClass, context: "#{context}[:enable_performance_insights]")
        Hearth::Validator.validate!(input[:performance_insights_kms_key_id], ::String, context: "#{context}[:performance_insights_kms_key_id]")
        Hearth::Validator.validate!(input[:performance_insights_retention_period], ::Integer, context: "#{context}[:performance_insights_retention_period]")
        Validators::ServerlessV2ScalingConfiguration.validate!(input[:serverless_v2_scaling_configuration], context: "#{context}[:serverless_v2_scaling_configuration]") unless input[:serverless_v2_scaling_configuration].nil?
      end
    end

    class CreateDBClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDBClusterOutput, context: context)
        Validators::DBCluster.validate!(input[:db_cluster], context: "#{context}[:db_cluster]") unless input[:db_cluster].nil?
      end
    end

    class CreateDBClusterParameterGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDBClusterParameterGroupInput, context: context)
        Hearth::Validator.validate!(input[:db_cluster_parameter_group_name], ::String, context: "#{context}[:db_cluster_parameter_group_name]")
        Hearth::Validator.validate!(input[:db_parameter_group_family], ::String, context: "#{context}[:db_parameter_group_family]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateDBClusterParameterGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDBClusterParameterGroupOutput, context: context)
        Validators::DBClusterParameterGroup.validate!(input[:db_cluster_parameter_group], context: "#{context}[:db_cluster_parameter_group]") unless input[:db_cluster_parameter_group].nil?
      end
    end

    class CreateDBClusterSnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDBClusterSnapshotInput, context: context)
        Hearth::Validator.validate!(input[:db_cluster_snapshot_identifier], ::String, context: "#{context}[:db_cluster_snapshot_identifier]")
        Hearth::Validator.validate!(input[:db_cluster_identifier], ::String, context: "#{context}[:db_cluster_identifier]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateDBClusterSnapshotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDBClusterSnapshotOutput, context: context)
        Validators::DBClusterSnapshot.validate!(input[:db_cluster_snapshot], context: "#{context}[:db_cluster_snapshot]") unless input[:db_cluster_snapshot].nil?
      end
    end

    class CreateDBInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDBInstanceInput, context: context)
        Hearth::Validator.validate!(input[:db_name], ::String, context: "#{context}[:db_name]")
        Hearth::Validator.validate!(input[:db_instance_identifier], ::String, context: "#{context}[:db_instance_identifier]")
        Hearth::Validator.validate!(input[:allocated_storage], ::Integer, context: "#{context}[:allocated_storage]")
        Hearth::Validator.validate!(input[:db_instance_class], ::String, context: "#{context}[:db_instance_class]")
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:master_username], ::String, context: "#{context}[:master_username]")
        Hearth::Validator.validate!(input[:master_user_password], ::String, context: "#{context}[:master_user_password]")
        Validators::DBSecurityGroupNameList.validate!(input[:db_security_groups], context: "#{context}[:db_security_groups]") unless input[:db_security_groups].nil?
        Validators::VpcSecurityGroupIdList.validate!(input[:vpc_security_group_ids], context: "#{context}[:vpc_security_group_ids]") unless input[:vpc_security_group_ids].nil?
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:db_subnet_group_name], ::String, context: "#{context}[:db_subnet_group_name]")
        Hearth::Validator.validate!(input[:preferred_maintenance_window], ::String, context: "#{context}[:preferred_maintenance_window]")
        Hearth::Validator.validate!(input[:db_parameter_group_name], ::String, context: "#{context}[:db_parameter_group_name]")
        Hearth::Validator.validate!(input[:backup_retention_period], ::Integer, context: "#{context}[:backup_retention_period]")
        Hearth::Validator.validate!(input[:preferred_backup_window], ::String, context: "#{context}[:preferred_backup_window]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:multi_az], ::TrueClass, ::FalseClass, context: "#{context}[:multi_az]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:auto_minor_version_upgrade], ::TrueClass, ::FalseClass, context: "#{context}[:auto_minor_version_upgrade]")
        Hearth::Validator.validate!(input[:license_model], ::String, context: "#{context}[:license_model]")
        Hearth::Validator.validate!(input[:iops], ::Integer, context: "#{context}[:iops]")
        Hearth::Validator.validate!(input[:option_group_name], ::String, context: "#{context}[:option_group_name]")
        Hearth::Validator.validate!(input[:character_set_name], ::String, context: "#{context}[:character_set_name]")
        Hearth::Validator.validate!(input[:nchar_character_set_name], ::String, context: "#{context}[:nchar_character_set_name]")
        Hearth::Validator.validate!(input[:publicly_accessible], ::TrueClass, ::FalseClass, context: "#{context}[:publicly_accessible]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:db_cluster_identifier], ::String, context: "#{context}[:db_cluster_identifier]")
        Hearth::Validator.validate!(input[:storage_type], ::String, context: "#{context}[:storage_type]")
        Hearth::Validator.validate!(input[:tde_credential_arn], ::String, context: "#{context}[:tde_credential_arn]")
        Hearth::Validator.validate!(input[:tde_credential_password], ::String, context: "#{context}[:tde_credential_password]")
        Hearth::Validator.validate!(input[:storage_encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:storage_encrypted]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:copy_tags_to_snapshot], ::TrueClass, ::FalseClass, context: "#{context}[:copy_tags_to_snapshot]")
        Hearth::Validator.validate!(input[:monitoring_interval], ::Integer, context: "#{context}[:monitoring_interval]")
        Hearth::Validator.validate!(input[:monitoring_role_arn], ::String, context: "#{context}[:monitoring_role_arn]")
        Hearth::Validator.validate!(input[:domain_iam_role_name], ::String, context: "#{context}[:domain_iam_role_name]")
        Hearth::Validator.validate!(input[:promotion_tier], ::Integer, context: "#{context}[:promotion_tier]")
        Hearth::Validator.validate!(input[:timezone], ::String, context: "#{context}[:timezone]")
        Hearth::Validator.validate!(input[:enable_iam_database_authentication], ::TrueClass, ::FalseClass, context: "#{context}[:enable_iam_database_authentication]")
        Hearth::Validator.validate!(input[:enable_performance_insights], ::TrueClass, ::FalseClass, context: "#{context}[:enable_performance_insights]")
        Hearth::Validator.validate!(input[:performance_insights_kms_key_id], ::String, context: "#{context}[:performance_insights_kms_key_id]")
        Hearth::Validator.validate!(input[:performance_insights_retention_period], ::Integer, context: "#{context}[:performance_insights_retention_period]")
        Validators::LogTypeList.validate!(input[:enable_cloudwatch_logs_exports], context: "#{context}[:enable_cloudwatch_logs_exports]") unless input[:enable_cloudwatch_logs_exports].nil?
        Validators::ProcessorFeatureList.validate!(input[:processor_features], context: "#{context}[:processor_features]") unless input[:processor_features].nil?
        Hearth::Validator.validate!(input[:deletion_protection], ::TrueClass, ::FalseClass, context: "#{context}[:deletion_protection]")
        Hearth::Validator.validate!(input[:max_allocated_storage], ::Integer, context: "#{context}[:max_allocated_storage]")
        Hearth::Validator.validate!(input[:enable_customer_owned_ip], ::TrueClass, ::FalseClass, context: "#{context}[:enable_customer_owned_ip]")
        Hearth::Validator.validate!(input[:custom_iam_instance_profile], ::String, context: "#{context}[:custom_iam_instance_profile]")
        Hearth::Validator.validate!(input[:backup_target], ::String, context: "#{context}[:backup_target]")
        Hearth::Validator.validate!(input[:network_type], ::String, context: "#{context}[:network_type]")
      end
    end

    class CreateDBInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDBInstanceOutput, context: context)
        Validators::DBInstance.validate!(input[:db_instance], context: "#{context}[:db_instance]") unless input[:db_instance].nil?
      end
    end

    class CreateDBInstanceReadReplicaInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDBInstanceReadReplicaInput, context: context)
        Hearth::Validator.validate!(input[:db_instance_identifier], ::String, context: "#{context}[:db_instance_identifier]")
        Hearth::Validator.validate!(input[:source_db_instance_identifier], ::String, context: "#{context}[:source_db_instance_identifier]")
        Hearth::Validator.validate!(input[:db_instance_class], ::String, context: "#{context}[:db_instance_class]")
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:multi_az], ::TrueClass, ::FalseClass, context: "#{context}[:multi_az]")
        Hearth::Validator.validate!(input[:auto_minor_version_upgrade], ::TrueClass, ::FalseClass, context: "#{context}[:auto_minor_version_upgrade]")
        Hearth::Validator.validate!(input[:iops], ::Integer, context: "#{context}[:iops]")
        Hearth::Validator.validate!(input[:option_group_name], ::String, context: "#{context}[:option_group_name]")
        Hearth::Validator.validate!(input[:db_parameter_group_name], ::String, context: "#{context}[:db_parameter_group_name]")
        Hearth::Validator.validate!(input[:publicly_accessible], ::TrueClass, ::FalseClass, context: "#{context}[:publicly_accessible]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:db_subnet_group_name], ::String, context: "#{context}[:db_subnet_group_name]")
        Validators::VpcSecurityGroupIdList.validate!(input[:vpc_security_group_ids], context: "#{context}[:vpc_security_group_ids]") unless input[:vpc_security_group_ids].nil?
        Hearth::Validator.validate!(input[:storage_type], ::String, context: "#{context}[:storage_type]")
        Hearth::Validator.validate!(input[:copy_tags_to_snapshot], ::TrueClass, ::FalseClass, context: "#{context}[:copy_tags_to_snapshot]")
        Hearth::Validator.validate!(input[:monitoring_interval], ::Integer, context: "#{context}[:monitoring_interval]")
        Hearth::Validator.validate!(input[:monitoring_role_arn], ::String, context: "#{context}[:monitoring_role_arn]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:pre_signed_url], ::String, context: "#{context}[:pre_signed_url]")
        Hearth::Validator.validate!(input[:enable_iam_database_authentication], ::TrueClass, ::FalseClass, context: "#{context}[:enable_iam_database_authentication]")
        Hearth::Validator.validate!(input[:enable_performance_insights], ::TrueClass, ::FalseClass, context: "#{context}[:enable_performance_insights]")
        Hearth::Validator.validate!(input[:performance_insights_kms_key_id], ::String, context: "#{context}[:performance_insights_kms_key_id]")
        Hearth::Validator.validate!(input[:performance_insights_retention_period], ::Integer, context: "#{context}[:performance_insights_retention_period]")
        Validators::LogTypeList.validate!(input[:enable_cloudwatch_logs_exports], context: "#{context}[:enable_cloudwatch_logs_exports]") unless input[:enable_cloudwatch_logs_exports].nil?
        Validators::ProcessorFeatureList.validate!(input[:processor_features], context: "#{context}[:processor_features]") unless input[:processor_features].nil?
        Hearth::Validator.validate!(input[:use_default_processor_features], ::TrueClass, ::FalseClass, context: "#{context}[:use_default_processor_features]")
        Hearth::Validator.validate!(input[:deletion_protection], ::TrueClass, ::FalseClass, context: "#{context}[:deletion_protection]")
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:domain_iam_role_name], ::String, context: "#{context}[:domain_iam_role_name]")
        Hearth::Validator.validate!(input[:replica_mode], ::String, context: "#{context}[:replica_mode]")
        Hearth::Validator.validate!(input[:max_allocated_storage], ::Integer, context: "#{context}[:max_allocated_storage]")
        Hearth::Validator.validate!(input[:custom_iam_instance_profile], ::String, context: "#{context}[:custom_iam_instance_profile]")
        Hearth::Validator.validate!(input[:network_type], ::String, context: "#{context}[:network_type]")
      end
    end

    class CreateDBInstanceReadReplicaOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDBInstanceReadReplicaOutput, context: context)
        Validators::DBInstance.validate!(input[:db_instance], context: "#{context}[:db_instance]") unless input[:db_instance].nil?
      end
    end

    class CreateDBParameterGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDBParameterGroupInput, context: context)
        Hearth::Validator.validate!(input[:db_parameter_group_name], ::String, context: "#{context}[:db_parameter_group_name]")
        Hearth::Validator.validate!(input[:db_parameter_group_family], ::String, context: "#{context}[:db_parameter_group_family]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateDBParameterGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDBParameterGroupOutput, context: context)
        Validators::DBParameterGroup.validate!(input[:db_parameter_group], context: "#{context}[:db_parameter_group]") unless input[:db_parameter_group].nil?
      end
    end

    class CreateDBProxyEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDBProxyEndpointInput, context: context)
        Hearth::Validator.validate!(input[:db_proxy_name], ::String, context: "#{context}[:db_proxy_name]")
        Hearth::Validator.validate!(input[:db_proxy_endpoint_name], ::String, context: "#{context}[:db_proxy_endpoint_name]")
        Validators::StringList.validate!(input[:vpc_subnet_ids], context: "#{context}[:vpc_subnet_ids]") unless input[:vpc_subnet_ids].nil?
        Validators::StringList.validate!(input[:vpc_security_group_ids], context: "#{context}[:vpc_security_group_ids]") unless input[:vpc_security_group_ids].nil?
        Hearth::Validator.validate!(input[:target_role], ::String, context: "#{context}[:target_role]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateDBProxyEndpointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDBProxyEndpointOutput, context: context)
        Validators::DBProxyEndpoint.validate!(input[:db_proxy_endpoint], context: "#{context}[:db_proxy_endpoint]") unless input[:db_proxy_endpoint].nil?
      end
    end

    class CreateDBProxyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDBProxyInput, context: context)
        Hearth::Validator.validate!(input[:db_proxy_name], ::String, context: "#{context}[:db_proxy_name]")
        Hearth::Validator.validate!(input[:engine_family], ::String, context: "#{context}[:engine_family]")
        Validators::UserAuthConfigList.validate!(input[:auth], context: "#{context}[:auth]") unless input[:auth].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Validators::StringList.validate!(input[:vpc_subnet_ids], context: "#{context}[:vpc_subnet_ids]") unless input[:vpc_subnet_ids].nil?
        Validators::StringList.validate!(input[:vpc_security_group_ids], context: "#{context}[:vpc_security_group_ids]") unless input[:vpc_security_group_ids].nil?
        Hearth::Validator.validate!(input[:require_tls], ::TrueClass, ::FalseClass, context: "#{context}[:require_tls]")
        Hearth::Validator.validate!(input[:idle_client_timeout], ::Integer, context: "#{context}[:idle_client_timeout]")
        Hearth::Validator.validate!(input[:debug_logging], ::TrueClass, ::FalseClass, context: "#{context}[:debug_logging]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateDBProxyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDBProxyOutput, context: context)
        Validators::DBProxy.validate!(input[:db_proxy], context: "#{context}[:db_proxy]") unless input[:db_proxy].nil?
      end
    end

    class CreateDBSecurityGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDBSecurityGroupInput, context: context)
        Hearth::Validator.validate!(input[:db_security_group_name], ::String, context: "#{context}[:db_security_group_name]")
        Hearth::Validator.validate!(input[:db_security_group_description], ::String, context: "#{context}[:db_security_group_description]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateDBSecurityGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDBSecurityGroupOutput, context: context)
        Validators::DBSecurityGroup.validate!(input[:db_security_group], context: "#{context}[:db_security_group]") unless input[:db_security_group].nil?
      end
    end

    class CreateDBSnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDBSnapshotInput, context: context)
        Hearth::Validator.validate!(input[:db_snapshot_identifier], ::String, context: "#{context}[:db_snapshot_identifier]")
        Hearth::Validator.validate!(input[:db_instance_identifier], ::String, context: "#{context}[:db_instance_identifier]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateDBSnapshotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDBSnapshotOutput, context: context)
        Validators::DBSnapshot.validate!(input[:db_snapshot], context: "#{context}[:db_snapshot]") unless input[:db_snapshot].nil?
      end
    end

    class CreateDBSubnetGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDBSubnetGroupInput, context: context)
        Hearth::Validator.validate!(input[:db_subnet_group_name], ::String, context: "#{context}[:db_subnet_group_name]")
        Hearth::Validator.validate!(input[:db_subnet_group_description], ::String, context: "#{context}[:db_subnet_group_description]")
        Validators::SubnetIdentifierList.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateDBSubnetGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDBSubnetGroupOutput, context: context)
        Validators::DBSubnetGroup.validate!(input[:db_subnet_group], context: "#{context}[:db_subnet_group]") unless input[:db_subnet_group].nil?
      end
    end

    class CreateEventSubscriptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEventSubscriptionInput, context: context)
        Hearth::Validator.validate!(input[:subscription_name], ::String, context: "#{context}[:subscription_name]")
        Hearth::Validator.validate!(input[:sns_topic_arn], ::String, context: "#{context}[:sns_topic_arn]")
        Hearth::Validator.validate!(input[:source_type], ::String, context: "#{context}[:source_type]")
        Validators::EventCategoriesList.validate!(input[:event_categories], context: "#{context}[:event_categories]") unless input[:event_categories].nil?
        Validators::SourceIdsList.validate!(input[:source_ids], context: "#{context}[:source_ids]") unless input[:source_ids].nil?
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateEventSubscriptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEventSubscriptionOutput, context: context)
        Validators::EventSubscription.validate!(input[:event_subscription], context: "#{context}[:event_subscription]") unless input[:event_subscription].nil?
      end
    end

    class CreateGlobalClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGlobalClusterInput, context: context)
        Hearth::Validator.validate!(input[:global_cluster_identifier], ::String, context: "#{context}[:global_cluster_identifier]")
        Hearth::Validator.validate!(input[:source_db_cluster_identifier], ::String, context: "#{context}[:source_db_cluster_identifier]")
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:deletion_protection], ::TrueClass, ::FalseClass, context: "#{context}[:deletion_protection]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:storage_encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:storage_encrypted]")
      end
    end

    class CreateGlobalClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGlobalClusterOutput, context: context)
        Validators::GlobalCluster.validate!(input[:global_cluster], context: "#{context}[:global_cluster]") unless input[:global_cluster].nil?
      end
    end

    class CreateOptionGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateOptionGroupInput, context: context)
        Hearth::Validator.validate!(input[:option_group_name], ::String, context: "#{context}[:option_group_name]")
        Hearth::Validator.validate!(input[:engine_name], ::String, context: "#{context}[:engine_name]")
        Hearth::Validator.validate!(input[:major_engine_version], ::String, context: "#{context}[:major_engine_version]")
        Hearth::Validator.validate!(input[:option_group_description], ::String, context: "#{context}[:option_group_description]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateOptionGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateOptionGroupOutput, context: context)
        Validators::OptionGroup.validate!(input[:option_group], context: "#{context}[:option_group]") unless input[:option_group].nil?
      end
    end

    class CustomAvailabilityZoneNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomAvailabilityZoneNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CustomDBEngineVersionAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomDBEngineVersionAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CustomDBEngineVersionNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomDBEngineVersionNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CustomDBEngineVersionQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomDBEngineVersionQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DBCluster
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBCluster, context: context)
        Hearth::Validator.validate!(input[:allocated_storage], ::Integer, context: "#{context}[:allocated_storage]")
        Validators::AvailabilityZones.validate!(input[:availability_zones], context: "#{context}[:availability_zones]") unless input[:availability_zones].nil?
        Hearth::Validator.validate!(input[:backup_retention_period], ::Integer, context: "#{context}[:backup_retention_period]")
        Hearth::Validator.validate!(input[:character_set_name], ::String, context: "#{context}[:character_set_name]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:db_cluster_identifier], ::String, context: "#{context}[:db_cluster_identifier]")
        Hearth::Validator.validate!(input[:db_cluster_parameter_group], ::String, context: "#{context}[:db_cluster_parameter_group]")
        Hearth::Validator.validate!(input[:db_subnet_group], ::String, context: "#{context}[:db_subnet_group]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:automatic_restart_time], ::Time, context: "#{context}[:automatic_restart_time]")
        Hearth::Validator.validate!(input[:percent_progress], ::String, context: "#{context}[:percent_progress]")
        Hearth::Validator.validate!(input[:earliest_restorable_time], ::Time, context: "#{context}[:earliest_restorable_time]")
        Hearth::Validator.validate!(input[:endpoint], ::String, context: "#{context}[:endpoint]")
        Hearth::Validator.validate!(input[:reader_endpoint], ::String, context: "#{context}[:reader_endpoint]")
        Validators::StringList.validate!(input[:custom_endpoints], context: "#{context}[:custom_endpoints]") unless input[:custom_endpoints].nil?
        Hearth::Validator.validate!(input[:multi_az], ::TrueClass, ::FalseClass, context: "#{context}[:multi_az]")
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:latest_restorable_time], ::Time, context: "#{context}[:latest_restorable_time]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:master_username], ::String, context: "#{context}[:master_username]")
        Validators::DBClusterOptionGroupMemberships.validate!(input[:db_cluster_option_group_memberships], context: "#{context}[:db_cluster_option_group_memberships]") unless input[:db_cluster_option_group_memberships].nil?
        Hearth::Validator.validate!(input[:preferred_backup_window], ::String, context: "#{context}[:preferred_backup_window]")
        Hearth::Validator.validate!(input[:preferred_maintenance_window], ::String, context: "#{context}[:preferred_maintenance_window]")
        Hearth::Validator.validate!(input[:replication_source_identifier], ::String, context: "#{context}[:replication_source_identifier]")
        Validators::ReadReplicaIdentifierList.validate!(input[:read_replica_identifiers], context: "#{context}[:read_replica_identifiers]") unless input[:read_replica_identifiers].nil?
        Validators::DBClusterMemberList.validate!(input[:db_cluster_members], context: "#{context}[:db_cluster_members]") unless input[:db_cluster_members].nil?
        Validators::VpcSecurityGroupMembershipList.validate!(input[:vpc_security_groups], context: "#{context}[:vpc_security_groups]") unless input[:vpc_security_groups].nil?
        Hearth::Validator.validate!(input[:hosted_zone_id], ::String, context: "#{context}[:hosted_zone_id]")
        Hearth::Validator.validate!(input[:storage_encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:storage_encrypted]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:db_cluster_resource_id], ::String, context: "#{context}[:db_cluster_resource_id]")
        Hearth::Validator.validate!(input[:db_cluster_arn], ::String, context: "#{context}[:db_cluster_arn]")
        Validators::DBClusterRoles.validate!(input[:associated_roles], context: "#{context}[:associated_roles]") unless input[:associated_roles].nil?
        Hearth::Validator.validate!(input[:iam_database_authentication_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:iam_database_authentication_enabled]")
        Hearth::Validator.validate!(input[:clone_group_id], ::String, context: "#{context}[:clone_group_id]")
        Hearth::Validator.validate!(input[:cluster_create_time], ::Time, context: "#{context}[:cluster_create_time]")
        Hearth::Validator.validate!(input[:earliest_backtrack_time], ::Time, context: "#{context}[:earliest_backtrack_time]")
        Hearth::Validator.validate!(input[:backtrack_window], ::Integer, context: "#{context}[:backtrack_window]")
        Hearth::Validator.validate!(input[:backtrack_consumed_change_records], ::Integer, context: "#{context}[:backtrack_consumed_change_records]")
        Validators::LogTypeList.validate!(input[:enabled_cloudwatch_logs_exports], context: "#{context}[:enabled_cloudwatch_logs_exports]") unless input[:enabled_cloudwatch_logs_exports].nil?
        Hearth::Validator.validate!(input[:capacity], ::Integer, context: "#{context}[:capacity]")
        Hearth::Validator.validate!(input[:engine_mode], ::String, context: "#{context}[:engine_mode]")
        Validators::ScalingConfigurationInfo.validate!(input[:scaling_configuration_info], context: "#{context}[:scaling_configuration_info]") unless input[:scaling_configuration_info].nil?
        Hearth::Validator.validate!(input[:deletion_protection], ::TrueClass, ::FalseClass, context: "#{context}[:deletion_protection]")
        Hearth::Validator.validate!(input[:http_endpoint_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:http_endpoint_enabled]")
        Hearth::Validator.validate!(input[:activity_stream_mode], ::String, context: "#{context}[:activity_stream_mode]")
        Hearth::Validator.validate!(input[:activity_stream_status], ::String, context: "#{context}[:activity_stream_status]")
        Hearth::Validator.validate!(input[:activity_stream_kms_key_id], ::String, context: "#{context}[:activity_stream_kms_key_id]")
        Hearth::Validator.validate!(input[:activity_stream_kinesis_stream_name], ::String, context: "#{context}[:activity_stream_kinesis_stream_name]")
        Hearth::Validator.validate!(input[:copy_tags_to_snapshot], ::TrueClass, ::FalseClass, context: "#{context}[:copy_tags_to_snapshot]")
        Hearth::Validator.validate!(input[:cross_account_clone], ::TrueClass, ::FalseClass, context: "#{context}[:cross_account_clone]")
        Validators::DomainMembershipList.validate!(input[:domain_memberships], context: "#{context}[:domain_memberships]") unless input[:domain_memberships].nil?
        Validators::TagList.validate!(input[:tag_list], context: "#{context}[:tag_list]") unless input[:tag_list].nil?
        Hearth::Validator.validate!(input[:global_write_forwarding_status], ::String, context: "#{context}[:global_write_forwarding_status]")
        Hearth::Validator.validate!(input[:global_write_forwarding_requested], ::TrueClass, ::FalseClass, context: "#{context}[:global_write_forwarding_requested]")
        Validators::ClusterPendingModifiedValues.validate!(input[:pending_modified_values], context: "#{context}[:pending_modified_values]") unless input[:pending_modified_values].nil?
        Hearth::Validator.validate!(input[:db_cluster_instance_class], ::String, context: "#{context}[:db_cluster_instance_class]")
        Hearth::Validator.validate!(input[:storage_type], ::String, context: "#{context}[:storage_type]")
        Hearth::Validator.validate!(input[:iops], ::Integer, context: "#{context}[:iops]")
        Hearth::Validator.validate!(input[:publicly_accessible], ::TrueClass, ::FalseClass, context: "#{context}[:publicly_accessible]")
        Hearth::Validator.validate!(input[:auto_minor_version_upgrade], ::TrueClass, ::FalseClass, context: "#{context}[:auto_minor_version_upgrade]")
        Hearth::Validator.validate!(input[:monitoring_interval], ::Integer, context: "#{context}[:monitoring_interval]")
        Hearth::Validator.validate!(input[:monitoring_role_arn], ::String, context: "#{context}[:monitoring_role_arn]")
        Hearth::Validator.validate!(input[:performance_insights_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:performance_insights_enabled]")
        Hearth::Validator.validate!(input[:performance_insights_kms_key_id], ::String, context: "#{context}[:performance_insights_kms_key_id]")
        Hearth::Validator.validate!(input[:performance_insights_retention_period], ::Integer, context: "#{context}[:performance_insights_retention_period]")
        Validators::ServerlessV2ScalingConfigurationInfo.validate!(input[:serverless_v2_scaling_configuration], context: "#{context}[:serverless_v2_scaling_configuration]") unless input[:serverless_v2_scaling_configuration].nil?
      end
    end

    class DBClusterAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBClusterAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DBClusterBacktrack
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBClusterBacktrack, context: context)
        Hearth::Validator.validate!(input[:db_cluster_identifier], ::String, context: "#{context}[:db_cluster_identifier]")
        Hearth::Validator.validate!(input[:backtrack_identifier], ::String, context: "#{context}[:backtrack_identifier]")
        Hearth::Validator.validate!(input[:backtrack_to], ::Time, context: "#{context}[:backtrack_to]")
        Hearth::Validator.validate!(input[:backtracked_from], ::Time, context: "#{context}[:backtracked_from]")
        Hearth::Validator.validate!(input[:backtrack_request_creation_time], ::Time, context: "#{context}[:backtrack_request_creation_time]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class DBClusterBacktrackList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DBClusterBacktrack.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DBClusterBacktrackNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBClusterBacktrackNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DBClusterEndpoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBClusterEndpoint, context: context)
        Hearth::Validator.validate!(input[:db_cluster_endpoint_identifier], ::String, context: "#{context}[:db_cluster_endpoint_identifier]")
        Hearth::Validator.validate!(input[:db_cluster_identifier], ::String, context: "#{context}[:db_cluster_identifier]")
        Hearth::Validator.validate!(input[:db_cluster_endpoint_resource_identifier], ::String, context: "#{context}[:db_cluster_endpoint_resource_identifier]")
        Hearth::Validator.validate!(input[:endpoint], ::String, context: "#{context}[:endpoint]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:endpoint_type], ::String, context: "#{context}[:endpoint_type]")
        Hearth::Validator.validate!(input[:custom_endpoint_type], ::String, context: "#{context}[:custom_endpoint_type]")
        Validators::StringList.validate!(input[:static_members], context: "#{context}[:static_members]") unless input[:static_members].nil?
        Validators::StringList.validate!(input[:excluded_members], context: "#{context}[:excluded_members]") unless input[:excluded_members].nil?
        Hearth::Validator.validate!(input[:db_cluster_endpoint_arn], ::String, context: "#{context}[:db_cluster_endpoint_arn]")
      end
    end

    class DBClusterEndpointAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBClusterEndpointAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DBClusterEndpointList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DBClusterEndpoint.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DBClusterEndpointNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBClusterEndpointNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DBClusterEndpointQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBClusterEndpointQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DBClusterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DBCluster.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DBClusterMember
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBClusterMember, context: context)
        Hearth::Validator.validate!(input[:db_instance_identifier], ::String, context: "#{context}[:db_instance_identifier]")
        Hearth::Validator.validate!(input[:is_cluster_writer], ::TrueClass, ::FalseClass, context: "#{context}[:is_cluster_writer]")
        Hearth::Validator.validate!(input[:db_cluster_parameter_group_status], ::String, context: "#{context}[:db_cluster_parameter_group_status]")
        Hearth::Validator.validate!(input[:promotion_tier], ::Integer, context: "#{context}[:promotion_tier]")
      end
    end

    class DBClusterMemberList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DBClusterMember.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DBClusterNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBClusterNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DBClusterOptionGroupMemberships
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DBClusterOptionGroupStatus.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DBClusterOptionGroupStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBClusterOptionGroupStatus, context: context)
        Hearth::Validator.validate!(input[:db_cluster_option_group_name], ::String, context: "#{context}[:db_cluster_option_group_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class DBClusterParameterGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBClusterParameterGroup, context: context)
        Hearth::Validator.validate!(input[:db_cluster_parameter_group_name], ::String, context: "#{context}[:db_cluster_parameter_group_name]")
        Hearth::Validator.validate!(input[:db_parameter_group_family], ::String, context: "#{context}[:db_parameter_group_family]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:db_cluster_parameter_group_arn], ::String, context: "#{context}[:db_cluster_parameter_group_arn]")
      end
    end

    class DBClusterParameterGroupList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DBClusterParameterGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DBClusterParameterGroupNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBClusterParameterGroupNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DBClusterQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBClusterQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DBClusterRole
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBClusterRole, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:feature_name], ::String, context: "#{context}[:feature_name]")
      end
    end

    class DBClusterRoleAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBClusterRoleAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DBClusterRoleNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBClusterRoleNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DBClusterRoleQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBClusterRoleQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DBClusterRoles
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DBClusterRole.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DBClusterSnapshot
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBClusterSnapshot, context: context)
        Validators::AvailabilityZones.validate!(input[:availability_zones], context: "#{context}[:availability_zones]") unless input[:availability_zones].nil?
        Hearth::Validator.validate!(input[:db_cluster_snapshot_identifier], ::String, context: "#{context}[:db_cluster_snapshot_identifier]")
        Hearth::Validator.validate!(input[:db_cluster_identifier], ::String, context: "#{context}[:db_cluster_identifier]")
        Hearth::Validator.validate!(input[:snapshot_create_time], ::Time, context: "#{context}[:snapshot_create_time]")
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:engine_mode], ::String, context: "#{context}[:engine_mode]")
        Hearth::Validator.validate!(input[:allocated_storage], ::Integer, context: "#{context}[:allocated_storage]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:cluster_create_time], ::Time, context: "#{context}[:cluster_create_time]")
        Hearth::Validator.validate!(input[:master_username], ::String, context: "#{context}[:master_username]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:license_model], ::String, context: "#{context}[:license_model]")
        Hearth::Validator.validate!(input[:snapshot_type], ::String, context: "#{context}[:snapshot_type]")
        Hearth::Validator.validate!(input[:percent_progress], ::Integer, context: "#{context}[:percent_progress]")
        Hearth::Validator.validate!(input[:storage_encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:storage_encrypted]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:db_cluster_snapshot_arn], ::String, context: "#{context}[:db_cluster_snapshot_arn]")
        Hearth::Validator.validate!(input[:source_db_cluster_snapshot_arn], ::String, context: "#{context}[:source_db_cluster_snapshot_arn]")
        Hearth::Validator.validate!(input[:iam_database_authentication_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:iam_database_authentication_enabled]")
        Validators::TagList.validate!(input[:tag_list], context: "#{context}[:tag_list]") unless input[:tag_list].nil?
      end
    end

    class DBClusterSnapshotAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBClusterSnapshotAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DBClusterSnapshotAttribute
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBClusterSnapshotAttribute, context: context)
        Hearth::Validator.validate!(input[:attribute_name], ::String, context: "#{context}[:attribute_name]")
        Validators::AttributeValueList.validate!(input[:attribute_values], context: "#{context}[:attribute_values]") unless input[:attribute_values].nil?
      end
    end

    class DBClusterSnapshotAttributeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DBClusterSnapshotAttribute.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DBClusterSnapshotAttributesResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBClusterSnapshotAttributesResult, context: context)
        Hearth::Validator.validate!(input[:db_cluster_snapshot_identifier], ::String, context: "#{context}[:db_cluster_snapshot_identifier]")
        Validators::DBClusterSnapshotAttributeList.validate!(input[:db_cluster_snapshot_attributes], context: "#{context}[:db_cluster_snapshot_attributes]") unless input[:db_cluster_snapshot_attributes].nil?
      end
    end

    class DBClusterSnapshotList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DBClusterSnapshot.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DBClusterSnapshotNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBClusterSnapshotNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DBEngineVersion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBEngineVersion, context: context)
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:db_parameter_group_family], ::String, context: "#{context}[:db_parameter_group_family]")
        Hearth::Validator.validate!(input[:db_engine_description], ::String, context: "#{context}[:db_engine_description]")
        Hearth::Validator.validate!(input[:db_engine_version_description], ::String, context: "#{context}[:db_engine_version_description]")
        Validators::CharacterSet.validate!(input[:default_character_set], context: "#{context}[:default_character_set]") unless input[:default_character_set].nil?
        Validators::SupportedCharacterSetsList.validate!(input[:supported_character_sets], context: "#{context}[:supported_character_sets]") unless input[:supported_character_sets].nil?
        Validators::SupportedCharacterSetsList.validate!(input[:supported_nchar_character_sets], context: "#{context}[:supported_nchar_character_sets]") unless input[:supported_nchar_character_sets].nil?
        Validators::ValidUpgradeTargetList.validate!(input[:valid_upgrade_target], context: "#{context}[:valid_upgrade_target]") unless input[:valid_upgrade_target].nil?
        Validators::SupportedTimezonesList.validate!(input[:supported_timezones], context: "#{context}[:supported_timezones]") unless input[:supported_timezones].nil?
        Validators::LogTypeList.validate!(input[:exportable_log_types], context: "#{context}[:exportable_log_types]") unless input[:exportable_log_types].nil?
        Hearth::Validator.validate!(input[:supports_log_exports_to_cloudwatch_logs], ::TrueClass, ::FalseClass, context: "#{context}[:supports_log_exports_to_cloudwatch_logs]")
        Hearth::Validator.validate!(input[:supports_read_replica], ::TrueClass, ::FalseClass, context: "#{context}[:supports_read_replica]")
        Validators::EngineModeList.validate!(input[:supported_engine_modes], context: "#{context}[:supported_engine_modes]") unless input[:supported_engine_modes].nil?
        Validators::FeatureNameList.validate!(input[:supported_feature_names], context: "#{context}[:supported_feature_names]") unless input[:supported_feature_names].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:supports_parallel_query], ::TrueClass, ::FalseClass, context: "#{context}[:supports_parallel_query]")
        Hearth::Validator.validate!(input[:supports_global_databases], ::TrueClass, ::FalseClass, context: "#{context}[:supports_global_databases]")
        Hearth::Validator.validate!(input[:major_engine_version], ::String, context: "#{context}[:major_engine_version]")
        Hearth::Validator.validate!(input[:database_installation_files_s3_bucket_name], ::String, context: "#{context}[:database_installation_files_s3_bucket_name]")
        Hearth::Validator.validate!(input[:database_installation_files_s3_prefix], ::String, context: "#{context}[:database_installation_files_s3_prefix]")
        Hearth::Validator.validate!(input[:db_engine_version_arn], ::String, context: "#{context}[:db_engine_version_arn]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:create_time], ::Time, context: "#{context}[:create_time]")
        Validators::TagList.validate!(input[:tag_list], context: "#{context}[:tag_list]") unless input[:tag_list].nil?
        Hearth::Validator.validate!(input[:supports_babelfish], ::TrueClass, ::FalseClass, context: "#{context}[:supports_babelfish]")
      end
    end

    class DBEngineVersionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DBEngineVersion.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DBInstance
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBInstance, context: context)
        Hearth::Validator.validate!(input[:db_instance_identifier], ::String, context: "#{context}[:db_instance_identifier]")
        Hearth::Validator.validate!(input[:db_instance_class], ::String, context: "#{context}[:db_instance_class]")
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:db_instance_status], ::String, context: "#{context}[:db_instance_status]")
        Hearth::Validator.validate!(input[:automatic_restart_time], ::Time, context: "#{context}[:automatic_restart_time]")
        Hearth::Validator.validate!(input[:master_username], ::String, context: "#{context}[:master_username]")
        Hearth::Validator.validate!(input[:db_name], ::String, context: "#{context}[:db_name]")
        Validators::Endpoint.validate!(input[:endpoint], context: "#{context}[:endpoint]") unless input[:endpoint].nil?
        Hearth::Validator.validate!(input[:allocated_storage], ::Integer, context: "#{context}[:allocated_storage]")
        Hearth::Validator.validate!(input[:instance_create_time], ::Time, context: "#{context}[:instance_create_time]")
        Hearth::Validator.validate!(input[:preferred_backup_window], ::String, context: "#{context}[:preferred_backup_window]")
        Hearth::Validator.validate!(input[:backup_retention_period], ::Integer, context: "#{context}[:backup_retention_period]")
        Validators::DBSecurityGroupMembershipList.validate!(input[:db_security_groups], context: "#{context}[:db_security_groups]") unless input[:db_security_groups].nil?
        Validators::VpcSecurityGroupMembershipList.validate!(input[:vpc_security_groups], context: "#{context}[:vpc_security_groups]") unless input[:vpc_security_groups].nil?
        Validators::DBParameterGroupStatusList.validate!(input[:db_parameter_groups], context: "#{context}[:db_parameter_groups]") unless input[:db_parameter_groups].nil?
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Validators::DBSubnetGroup.validate!(input[:db_subnet_group], context: "#{context}[:db_subnet_group]") unless input[:db_subnet_group].nil?
        Hearth::Validator.validate!(input[:preferred_maintenance_window], ::String, context: "#{context}[:preferred_maintenance_window]")
        Validators::PendingModifiedValues.validate!(input[:pending_modified_values], context: "#{context}[:pending_modified_values]") unless input[:pending_modified_values].nil?
        Hearth::Validator.validate!(input[:latest_restorable_time], ::Time, context: "#{context}[:latest_restorable_time]")
        Hearth::Validator.validate!(input[:multi_az], ::TrueClass, ::FalseClass, context: "#{context}[:multi_az]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:auto_minor_version_upgrade], ::TrueClass, ::FalseClass, context: "#{context}[:auto_minor_version_upgrade]")
        Hearth::Validator.validate!(input[:read_replica_source_db_instance_identifier], ::String, context: "#{context}[:read_replica_source_db_instance_identifier]")
        Validators::ReadReplicaDBInstanceIdentifierList.validate!(input[:read_replica_db_instance_identifiers], context: "#{context}[:read_replica_db_instance_identifiers]") unless input[:read_replica_db_instance_identifiers].nil?
        Validators::ReadReplicaDBClusterIdentifierList.validate!(input[:read_replica_db_cluster_identifiers], context: "#{context}[:read_replica_db_cluster_identifiers]") unless input[:read_replica_db_cluster_identifiers].nil?
        Hearth::Validator.validate!(input[:replica_mode], ::String, context: "#{context}[:replica_mode]")
        Hearth::Validator.validate!(input[:license_model], ::String, context: "#{context}[:license_model]")
        Hearth::Validator.validate!(input[:iops], ::Integer, context: "#{context}[:iops]")
        Validators::OptionGroupMembershipList.validate!(input[:option_group_memberships], context: "#{context}[:option_group_memberships]") unless input[:option_group_memberships].nil?
        Hearth::Validator.validate!(input[:character_set_name], ::String, context: "#{context}[:character_set_name]")
        Hearth::Validator.validate!(input[:nchar_character_set_name], ::String, context: "#{context}[:nchar_character_set_name]")
        Hearth::Validator.validate!(input[:secondary_availability_zone], ::String, context: "#{context}[:secondary_availability_zone]")
        Hearth::Validator.validate!(input[:publicly_accessible], ::TrueClass, ::FalseClass, context: "#{context}[:publicly_accessible]")
        Validators::DBInstanceStatusInfoList.validate!(input[:status_infos], context: "#{context}[:status_infos]") unless input[:status_infos].nil?
        Hearth::Validator.validate!(input[:storage_type], ::String, context: "#{context}[:storage_type]")
        Hearth::Validator.validate!(input[:tde_credential_arn], ::String, context: "#{context}[:tde_credential_arn]")
        Hearth::Validator.validate!(input[:db_instance_port], ::Integer, context: "#{context}[:db_instance_port]")
        Hearth::Validator.validate!(input[:db_cluster_identifier], ::String, context: "#{context}[:db_cluster_identifier]")
        Hearth::Validator.validate!(input[:storage_encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:storage_encrypted]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:dbi_resource_id], ::String, context: "#{context}[:dbi_resource_id]")
        Hearth::Validator.validate!(input[:ca_certificate_identifier], ::String, context: "#{context}[:ca_certificate_identifier]")
        Validators::DomainMembershipList.validate!(input[:domain_memberships], context: "#{context}[:domain_memberships]") unless input[:domain_memberships].nil?
        Hearth::Validator.validate!(input[:copy_tags_to_snapshot], ::TrueClass, ::FalseClass, context: "#{context}[:copy_tags_to_snapshot]")
        Hearth::Validator.validate!(input[:monitoring_interval], ::Integer, context: "#{context}[:monitoring_interval]")
        Hearth::Validator.validate!(input[:enhanced_monitoring_resource_arn], ::String, context: "#{context}[:enhanced_monitoring_resource_arn]")
        Hearth::Validator.validate!(input[:monitoring_role_arn], ::String, context: "#{context}[:monitoring_role_arn]")
        Hearth::Validator.validate!(input[:promotion_tier], ::Integer, context: "#{context}[:promotion_tier]")
        Hearth::Validator.validate!(input[:db_instance_arn], ::String, context: "#{context}[:db_instance_arn]")
        Hearth::Validator.validate!(input[:timezone], ::String, context: "#{context}[:timezone]")
        Hearth::Validator.validate!(input[:iam_database_authentication_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:iam_database_authentication_enabled]")
        Hearth::Validator.validate!(input[:performance_insights_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:performance_insights_enabled]")
        Hearth::Validator.validate!(input[:performance_insights_kms_key_id], ::String, context: "#{context}[:performance_insights_kms_key_id]")
        Hearth::Validator.validate!(input[:performance_insights_retention_period], ::Integer, context: "#{context}[:performance_insights_retention_period]")
        Validators::LogTypeList.validate!(input[:enabled_cloudwatch_logs_exports], context: "#{context}[:enabled_cloudwatch_logs_exports]") unless input[:enabled_cloudwatch_logs_exports].nil?
        Validators::ProcessorFeatureList.validate!(input[:processor_features], context: "#{context}[:processor_features]") unless input[:processor_features].nil?
        Hearth::Validator.validate!(input[:deletion_protection], ::TrueClass, ::FalseClass, context: "#{context}[:deletion_protection]")
        Validators::DBInstanceRoles.validate!(input[:associated_roles], context: "#{context}[:associated_roles]") unless input[:associated_roles].nil?
        Validators::Endpoint.validate!(input[:listener_endpoint], context: "#{context}[:listener_endpoint]") unless input[:listener_endpoint].nil?
        Hearth::Validator.validate!(input[:max_allocated_storage], ::Integer, context: "#{context}[:max_allocated_storage]")
        Validators::TagList.validate!(input[:tag_list], context: "#{context}[:tag_list]") unless input[:tag_list].nil?
        Validators::DBInstanceAutomatedBackupsReplicationList.validate!(input[:db_instance_automated_backups_replications], context: "#{context}[:db_instance_automated_backups_replications]") unless input[:db_instance_automated_backups_replications].nil?
        Hearth::Validator.validate!(input[:customer_owned_ip_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:customer_owned_ip_enabled]")
        Hearth::Validator.validate!(input[:aws_backup_recovery_point_arn], ::String, context: "#{context}[:aws_backup_recovery_point_arn]")
        Hearth::Validator.validate!(input[:activity_stream_status], ::String, context: "#{context}[:activity_stream_status]")
        Hearth::Validator.validate!(input[:activity_stream_kms_key_id], ::String, context: "#{context}[:activity_stream_kms_key_id]")
        Hearth::Validator.validate!(input[:activity_stream_kinesis_stream_name], ::String, context: "#{context}[:activity_stream_kinesis_stream_name]")
        Hearth::Validator.validate!(input[:activity_stream_mode], ::String, context: "#{context}[:activity_stream_mode]")
        Hearth::Validator.validate!(input[:activity_stream_engine_native_audit_fields_included], ::TrueClass, ::FalseClass, context: "#{context}[:activity_stream_engine_native_audit_fields_included]")
        Hearth::Validator.validate!(input[:automation_mode], ::String, context: "#{context}[:automation_mode]")
        Hearth::Validator.validate!(input[:resume_full_automation_mode_time], ::Time, context: "#{context}[:resume_full_automation_mode_time]")
        Hearth::Validator.validate!(input[:custom_iam_instance_profile], ::String, context: "#{context}[:custom_iam_instance_profile]")
        Hearth::Validator.validate!(input[:backup_target], ::String, context: "#{context}[:backup_target]")
        Hearth::Validator.validate!(input[:network_type], ::String, context: "#{context}[:network_type]")
      end
    end

    class DBInstanceAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBInstanceAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DBInstanceAutomatedBackup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBInstanceAutomatedBackup, context: context)
        Hearth::Validator.validate!(input[:db_instance_arn], ::String, context: "#{context}[:db_instance_arn]")
        Hearth::Validator.validate!(input[:dbi_resource_id], ::String, context: "#{context}[:dbi_resource_id]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:db_instance_identifier], ::String, context: "#{context}[:db_instance_identifier]")
        Validators::RestoreWindow.validate!(input[:restore_window], context: "#{context}[:restore_window]") unless input[:restore_window].nil?
        Hearth::Validator.validate!(input[:allocated_storage], ::Integer, context: "#{context}[:allocated_storage]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:instance_create_time], ::Time, context: "#{context}[:instance_create_time]")
        Hearth::Validator.validate!(input[:master_username], ::String, context: "#{context}[:master_username]")
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:license_model], ::String, context: "#{context}[:license_model]")
        Hearth::Validator.validate!(input[:iops], ::Integer, context: "#{context}[:iops]")
        Hearth::Validator.validate!(input[:option_group_name], ::String, context: "#{context}[:option_group_name]")
        Hearth::Validator.validate!(input[:tde_credential_arn], ::String, context: "#{context}[:tde_credential_arn]")
        Hearth::Validator.validate!(input[:encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:encrypted]")
        Hearth::Validator.validate!(input[:storage_type], ::String, context: "#{context}[:storage_type]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:timezone], ::String, context: "#{context}[:timezone]")
        Hearth::Validator.validate!(input[:iam_database_authentication_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:iam_database_authentication_enabled]")
        Hearth::Validator.validate!(input[:backup_retention_period], ::Integer, context: "#{context}[:backup_retention_period]")
        Hearth::Validator.validate!(input[:db_instance_automated_backups_arn], ::String, context: "#{context}[:db_instance_automated_backups_arn]")
        Validators::DBInstanceAutomatedBackupsReplicationList.validate!(input[:db_instance_automated_backups_replications], context: "#{context}[:db_instance_automated_backups_replications]") unless input[:db_instance_automated_backups_replications].nil?
        Hearth::Validator.validate!(input[:backup_target], ::String, context: "#{context}[:backup_target]")
      end
    end

    class DBInstanceAutomatedBackupList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DBInstanceAutomatedBackup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DBInstanceAutomatedBackupNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBInstanceAutomatedBackupNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DBInstanceAutomatedBackupQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBInstanceAutomatedBackupQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DBInstanceAutomatedBackupsReplication
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBInstanceAutomatedBackupsReplication, context: context)
        Hearth::Validator.validate!(input[:db_instance_automated_backups_arn], ::String, context: "#{context}[:db_instance_automated_backups_arn]")
      end
    end

    class DBInstanceAutomatedBackupsReplicationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DBInstanceAutomatedBackupsReplication.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DBInstanceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DBInstance.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DBInstanceNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBInstanceNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DBInstanceRole
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBInstanceRole, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:feature_name], ::String, context: "#{context}[:feature_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class DBInstanceRoleAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBInstanceRoleAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DBInstanceRoleNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBInstanceRoleNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DBInstanceRoleQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBInstanceRoleQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DBInstanceRoles
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DBInstanceRole.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DBInstanceStatusInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBInstanceStatusInfo, context: context)
        Hearth::Validator.validate!(input[:status_type], ::String, context: "#{context}[:status_type]")
        Hearth::Validator.validate!(input[:normal], ::TrueClass, ::FalseClass, context: "#{context}[:normal]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DBInstanceStatusInfoList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DBInstanceStatusInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DBLogFileNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBLogFileNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DBParameterGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBParameterGroup, context: context)
        Hearth::Validator.validate!(input[:db_parameter_group_name], ::String, context: "#{context}[:db_parameter_group_name]")
        Hearth::Validator.validate!(input[:db_parameter_group_family], ::String, context: "#{context}[:db_parameter_group_family]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:db_parameter_group_arn], ::String, context: "#{context}[:db_parameter_group_arn]")
      end
    end

    class DBParameterGroupAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBParameterGroupAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DBParameterGroupList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DBParameterGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DBParameterGroupNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBParameterGroupNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DBParameterGroupQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBParameterGroupQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DBParameterGroupStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBParameterGroupStatus, context: context)
        Hearth::Validator.validate!(input[:db_parameter_group_name], ::String, context: "#{context}[:db_parameter_group_name]")
        Hearth::Validator.validate!(input[:parameter_apply_status], ::String, context: "#{context}[:parameter_apply_status]")
      end
    end

    class DBParameterGroupStatusList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DBParameterGroupStatus.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DBProxy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBProxy, context: context)
        Hearth::Validator.validate!(input[:db_proxy_name], ::String, context: "#{context}[:db_proxy_name]")
        Hearth::Validator.validate!(input[:db_proxy_arn], ::String, context: "#{context}[:db_proxy_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:engine_family], ::String, context: "#{context}[:engine_family]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Validators::StringList.validate!(input[:vpc_security_group_ids], context: "#{context}[:vpc_security_group_ids]") unless input[:vpc_security_group_ids].nil?
        Validators::StringList.validate!(input[:vpc_subnet_ids], context: "#{context}[:vpc_subnet_ids]") unless input[:vpc_subnet_ids].nil?
        Validators::UserAuthConfigInfoList.validate!(input[:auth], context: "#{context}[:auth]") unless input[:auth].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:endpoint], ::String, context: "#{context}[:endpoint]")
        Hearth::Validator.validate!(input[:require_tls], ::TrueClass, ::FalseClass, context: "#{context}[:require_tls]")
        Hearth::Validator.validate!(input[:idle_client_timeout], ::Integer, context: "#{context}[:idle_client_timeout]")
        Hearth::Validator.validate!(input[:debug_logging], ::TrueClass, ::FalseClass, context: "#{context}[:debug_logging]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:updated_date], ::Time, context: "#{context}[:updated_date]")
      end
    end

    class DBProxyAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBProxyAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DBProxyEndpoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBProxyEndpoint, context: context)
        Hearth::Validator.validate!(input[:db_proxy_endpoint_name], ::String, context: "#{context}[:db_proxy_endpoint_name]")
        Hearth::Validator.validate!(input[:db_proxy_endpoint_arn], ::String, context: "#{context}[:db_proxy_endpoint_arn]")
        Hearth::Validator.validate!(input[:db_proxy_name], ::String, context: "#{context}[:db_proxy_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Validators::StringList.validate!(input[:vpc_security_group_ids], context: "#{context}[:vpc_security_group_ids]") unless input[:vpc_security_group_ids].nil?
        Validators::StringList.validate!(input[:vpc_subnet_ids], context: "#{context}[:vpc_subnet_ids]") unless input[:vpc_subnet_ids].nil?
        Hearth::Validator.validate!(input[:endpoint], ::String, context: "#{context}[:endpoint]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:target_role], ::String, context: "#{context}[:target_role]")
        Hearth::Validator.validate!(input[:is_default], ::TrueClass, ::FalseClass, context: "#{context}[:is_default]")
      end
    end

    class DBProxyEndpointAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBProxyEndpointAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DBProxyEndpointList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DBProxyEndpoint.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DBProxyEndpointNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBProxyEndpointNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DBProxyEndpointQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBProxyEndpointQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DBProxyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DBProxy.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DBProxyNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBProxyNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DBProxyQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBProxyQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DBProxyTarget
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBProxyTarget, context: context)
        Hearth::Validator.validate!(input[:target_arn], ::String, context: "#{context}[:target_arn]")
        Hearth::Validator.validate!(input[:endpoint], ::String, context: "#{context}[:endpoint]")
        Hearth::Validator.validate!(input[:tracked_cluster_id], ::String, context: "#{context}[:tracked_cluster_id]")
        Hearth::Validator.validate!(input[:rds_resource_id], ::String, context: "#{context}[:rds_resource_id]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
        Validators::TargetHealth.validate!(input[:target_health], context: "#{context}[:target_health]") unless input[:target_health].nil?
      end
    end

    class DBProxyTargetAlreadyRegisteredFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBProxyTargetAlreadyRegisteredFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DBProxyTargetGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBProxyTargetGroup, context: context)
        Hearth::Validator.validate!(input[:db_proxy_name], ::String, context: "#{context}[:db_proxy_name]")
        Hearth::Validator.validate!(input[:target_group_name], ::String, context: "#{context}[:target_group_name]")
        Hearth::Validator.validate!(input[:target_group_arn], ::String, context: "#{context}[:target_group_arn]")
        Hearth::Validator.validate!(input[:is_default], ::TrueClass, ::FalseClass, context: "#{context}[:is_default]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::ConnectionPoolConfigurationInfo.validate!(input[:connection_pool_config], context: "#{context}[:connection_pool_config]") unless input[:connection_pool_config].nil?
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:updated_date], ::Time, context: "#{context}[:updated_date]")
      end
    end

    class DBProxyTargetGroupNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBProxyTargetGroupNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DBProxyTargetNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBProxyTargetNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DBSecurityGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBSecurityGroup, context: context)
        Hearth::Validator.validate!(input[:owner_id], ::String, context: "#{context}[:owner_id]")
        Hearth::Validator.validate!(input[:db_security_group_name], ::String, context: "#{context}[:db_security_group_name]")
        Hearth::Validator.validate!(input[:db_security_group_description], ::String, context: "#{context}[:db_security_group_description]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Validators::EC2SecurityGroupList.validate!(input[:ec2_security_groups], context: "#{context}[:ec2_security_groups]") unless input[:ec2_security_groups].nil?
        Validators::IPRangeList.validate!(input[:ip_ranges], context: "#{context}[:ip_ranges]") unless input[:ip_ranges].nil?
        Hearth::Validator.validate!(input[:db_security_group_arn], ::String, context: "#{context}[:db_security_group_arn]")
      end
    end

    class DBSecurityGroupAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBSecurityGroupAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DBSecurityGroupMembership
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBSecurityGroupMembership, context: context)
        Hearth::Validator.validate!(input[:db_security_group_name], ::String, context: "#{context}[:db_security_group_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class DBSecurityGroupMembershipList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DBSecurityGroupMembership.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DBSecurityGroupNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DBSecurityGroupNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBSecurityGroupNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DBSecurityGroupNotSupportedFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBSecurityGroupNotSupportedFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DBSecurityGroupQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBSecurityGroupQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DBSecurityGroups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DBSecurityGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DBSnapshot
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBSnapshot, context: context)
        Hearth::Validator.validate!(input[:db_snapshot_identifier], ::String, context: "#{context}[:db_snapshot_identifier]")
        Hearth::Validator.validate!(input[:db_instance_identifier], ::String, context: "#{context}[:db_instance_identifier]")
        Hearth::Validator.validate!(input[:snapshot_create_time], ::Time, context: "#{context}[:snapshot_create_time]")
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:allocated_storage], ::Integer, context: "#{context}[:allocated_storage]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:instance_create_time], ::Time, context: "#{context}[:instance_create_time]")
        Hearth::Validator.validate!(input[:master_username], ::String, context: "#{context}[:master_username]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:license_model], ::String, context: "#{context}[:license_model]")
        Hearth::Validator.validate!(input[:snapshot_type], ::String, context: "#{context}[:snapshot_type]")
        Hearth::Validator.validate!(input[:iops], ::Integer, context: "#{context}[:iops]")
        Hearth::Validator.validate!(input[:option_group_name], ::String, context: "#{context}[:option_group_name]")
        Hearth::Validator.validate!(input[:percent_progress], ::Integer, context: "#{context}[:percent_progress]")
        Hearth::Validator.validate!(input[:source_region], ::String, context: "#{context}[:source_region]")
        Hearth::Validator.validate!(input[:source_db_snapshot_identifier], ::String, context: "#{context}[:source_db_snapshot_identifier]")
        Hearth::Validator.validate!(input[:storage_type], ::String, context: "#{context}[:storage_type]")
        Hearth::Validator.validate!(input[:tde_credential_arn], ::String, context: "#{context}[:tde_credential_arn]")
        Hearth::Validator.validate!(input[:encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:encrypted]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:db_snapshot_arn], ::String, context: "#{context}[:db_snapshot_arn]")
        Hearth::Validator.validate!(input[:timezone], ::String, context: "#{context}[:timezone]")
        Hearth::Validator.validate!(input[:iam_database_authentication_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:iam_database_authentication_enabled]")
        Validators::ProcessorFeatureList.validate!(input[:processor_features], context: "#{context}[:processor_features]") unless input[:processor_features].nil?
        Hearth::Validator.validate!(input[:dbi_resource_id], ::String, context: "#{context}[:dbi_resource_id]")
        Validators::TagList.validate!(input[:tag_list], context: "#{context}[:tag_list]") unless input[:tag_list].nil?
        Hearth::Validator.validate!(input[:original_snapshot_create_time], ::Time, context: "#{context}[:original_snapshot_create_time]")
        Hearth::Validator.validate!(input[:snapshot_target], ::String, context: "#{context}[:snapshot_target]")
      end
    end

    class DBSnapshotAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBSnapshotAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DBSnapshotAttribute
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBSnapshotAttribute, context: context)
        Hearth::Validator.validate!(input[:attribute_name], ::String, context: "#{context}[:attribute_name]")
        Validators::AttributeValueList.validate!(input[:attribute_values], context: "#{context}[:attribute_values]") unless input[:attribute_values].nil?
      end
    end

    class DBSnapshotAttributeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DBSnapshotAttribute.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DBSnapshotAttributesResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBSnapshotAttributesResult, context: context)
        Hearth::Validator.validate!(input[:db_snapshot_identifier], ::String, context: "#{context}[:db_snapshot_identifier]")
        Validators::DBSnapshotAttributeList.validate!(input[:db_snapshot_attributes], context: "#{context}[:db_snapshot_attributes]") unless input[:db_snapshot_attributes].nil?
      end
    end

    class DBSnapshotList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DBSnapshot.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DBSnapshotNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBSnapshotNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DBSubnetGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBSubnetGroup, context: context)
        Hearth::Validator.validate!(input[:db_subnet_group_name], ::String, context: "#{context}[:db_subnet_group_name]")
        Hearth::Validator.validate!(input[:db_subnet_group_description], ::String, context: "#{context}[:db_subnet_group_description]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:subnet_group_status], ::String, context: "#{context}[:subnet_group_status]")
        Validators::SubnetList.validate!(input[:subnets], context: "#{context}[:subnets]") unless input[:subnets].nil?
        Hearth::Validator.validate!(input[:db_subnet_group_arn], ::String, context: "#{context}[:db_subnet_group_arn]")
        Validators::StringList.validate!(input[:supported_network_types], context: "#{context}[:supported_network_types]") unless input[:supported_network_types].nil?
      end
    end

    class DBSubnetGroupAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBSubnetGroupAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DBSubnetGroupDoesNotCoverEnoughAZs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBSubnetGroupDoesNotCoverEnoughAZs, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DBSubnetGroupNotAllowedFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBSubnetGroupNotAllowedFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DBSubnetGroupNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBSubnetGroupNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DBSubnetGroupQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBSubnetGroupQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DBSubnetGroups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DBSubnetGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DBSubnetQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBSubnetQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DBUpgradeDependencyFailureFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBUpgradeDependencyFailureFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DeleteCustomDBEngineVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCustomDBEngineVersionInput, context: context)
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
      end
    end

    class DeleteCustomDBEngineVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCustomDBEngineVersionOutput, context: context)
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:db_parameter_group_family], ::String, context: "#{context}[:db_parameter_group_family]")
        Hearth::Validator.validate!(input[:db_engine_description], ::String, context: "#{context}[:db_engine_description]")
        Hearth::Validator.validate!(input[:db_engine_version_description], ::String, context: "#{context}[:db_engine_version_description]")
        Validators::CharacterSet.validate!(input[:default_character_set], context: "#{context}[:default_character_set]") unless input[:default_character_set].nil?
        Validators::SupportedCharacterSetsList.validate!(input[:supported_character_sets], context: "#{context}[:supported_character_sets]") unless input[:supported_character_sets].nil?
        Validators::SupportedCharacterSetsList.validate!(input[:supported_nchar_character_sets], context: "#{context}[:supported_nchar_character_sets]") unless input[:supported_nchar_character_sets].nil?
        Validators::ValidUpgradeTargetList.validate!(input[:valid_upgrade_target], context: "#{context}[:valid_upgrade_target]") unless input[:valid_upgrade_target].nil?
        Validators::SupportedTimezonesList.validate!(input[:supported_timezones], context: "#{context}[:supported_timezones]") unless input[:supported_timezones].nil?
        Validators::LogTypeList.validate!(input[:exportable_log_types], context: "#{context}[:exportable_log_types]") unless input[:exportable_log_types].nil?
        Hearth::Validator.validate!(input[:supports_log_exports_to_cloudwatch_logs], ::TrueClass, ::FalseClass, context: "#{context}[:supports_log_exports_to_cloudwatch_logs]")
        Hearth::Validator.validate!(input[:supports_read_replica], ::TrueClass, ::FalseClass, context: "#{context}[:supports_read_replica]")
        Validators::EngineModeList.validate!(input[:supported_engine_modes], context: "#{context}[:supported_engine_modes]") unless input[:supported_engine_modes].nil?
        Validators::FeatureNameList.validate!(input[:supported_feature_names], context: "#{context}[:supported_feature_names]") unless input[:supported_feature_names].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:supports_parallel_query], ::TrueClass, ::FalseClass, context: "#{context}[:supports_parallel_query]")
        Hearth::Validator.validate!(input[:supports_global_databases], ::TrueClass, ::FalseClass, context: "#{context}[:supports_global_databases]")
        Hearth::Validator.validate!(input[:major_engine_version], ::String, context: "#{context}[:major_engine_version]")
        Hearth::Validator.validate!(input[:database_installation_files_s3_bucket_name], ::String, context: "#{context}[:database_installation_files_s3_bucket_name]")
        Hearth::Validator.validate!(input[:database_installation_files_s3_prefix], ::String, context: "#{context}[:database_installation_files_s3_prefix]")
        Hearth::Validator.validate!(input[:db_engine_version_arn], ::String, context: "#{context}[:db_engine_version_arn]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:create_time], ::Time, context: "#{context}[:create_time]")
        Validators::TagList.validate!(input[:tag_list], context: "#{context}[:tag_list]") unless input[:tag_list].nil?
        Hearth::Validator.validate!(input[:supports_babelfish], ::TrueClass, ::FalseClass, context: "#{context}[:supports_babelfish]")
      end
    end

    class DeleteDBClusterEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDBClusterEndpointInput, context: context)
        Hearth::Validator.validate!(input[:db_cluster_endpoint_identifier], ::String, context: "#{context}[:db_cluster_endpoint_identifier]")
      end
    end

    class DeleteDBClusterEndpointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDBClusterEndpointOutput, context: context)
        Hearth::Validator.validate!(input[:db_cluster_endpoint_identifier], ::String, context: "#{context}[:db_cluster_endpoint_identifier]")
        Hearth::Validator.validate!(input[:db_cluster_identifier], ::String, context: "#{context}[:db_cluster_identifier]")
        Hearth::Validator.validate!(input[:db_cluster_endpoint_resource_identifier], ::String, context: "#{context}[:db_cluster_endpoint_resource_identifier]")
        Hearth::Validator.validate!(input[:endpoint], ::String, context: "#{context}[:endpoint]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:endpoint_type], ::String, context: "#{context}[:endpoint_type]")
        Hearth::Validator.validate!(input[:custom_endpoint_type], ::String, context: "#{context}[:custom_endpoint_type]")
        Validators::StringList.validate!(input[:static_members], context: "#{context}[:static_members]") unless input[:static_members].nil?
        Validators::StringList.validate!(input[:excluded_members], context: "#{context}[:excluded_members]") unless input[:excluded_members].nil?
        Hearth::Validator.validate!(input[:db_cluster_endpoint_arn], ::String, context: "#{context}[:db_cluster_endpoint_arn]")
      end
    end

    class DeleteDBClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDBClusterInput, context: context)
        Hearth::Validator.validate!(input[:db_cluster_identifier], ::String, context: "#{context}[:db_cluster_identifier]")
        Hearth::Validator.validate!(input[:skip_final_snapshot], ::TrueClass, ::FalseClass, context: "#{context}[:skip_final_snapshot]")
        Hearth::Validator.validate!(input[:final_db_snapshot_identifier], ::String, context: "#{context}[:final_db_snapshot_identifier]")
      end
    end

    class DeleteDBClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDBClusterOutput, context: context)
        Validators::DBCluster.validate!(input[:db_cluster], context: "#{context}[:db_cluster]") unless input[:db_cluster].nil?
      end
    end

    class DeleteDBClusterParameterGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDBClusterParameterGroupInput, context: context)
        Hearth::Validator.validate!(input[:db_cluster_parameter_group_name], ::String, context: "#{context}[:db_cluster_parameter_group_name]")
      end
    end

    class DeleteDBClusterParameterGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDBClusterParameterGroupOutput, context: context)
      end
    end

    class DeleteDBClusterSnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDBClusterSnapshotInput, context: context)
        Hearth::Validator.validate!(input[:db_cluster_snapshot_identifier], ::String, context: "#{context}[:db_cluster_snapshot_identifier]")
      end
    end

    class DeleteDBClusterSnapshotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDBClusterSnapshotOutput, context: context)
        Validators::DBClusterSnapshot.validate!(input[:db_cluster_snapshot], context: "#{context}[:db_cluster_snapshot]") unless input[:db_cluster_snapshot].nil?
      end
    end

    class DeleteDBInstanceAutomatedBackupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDBInstanceAutomatedBackupInput, context: context)
        Hearth::Validator.validate!(input[:dbi_resource_id], ::String, context: "#{context}[:dbi_resource_id]")
        Hearth::Validator.validate!(input[:db_instance_automated_backups_arn], ::String, context: "#{context}[:db_instance_automated_backups_arn]")
      end
    end

    class DeleteDBInstanceAutomatedBackupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDBInstanceAutomatedBackupOutput, context: context)
        Validators::DBInstanceAutomatedBackup.validate!(input[:db_instance_automated_backup], context: "#{context}[:db_instance_automated_backup]") unless input[:db_instance_automated_backup].nil?
      end
    end

    class DeleteDBInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDBInstanceInput, context: context)
        Hearth::Validator.validate!(input[:db_instance_identifier], ::String, context: "#{context}[:db_instance_identifier]")
        Hearth::Validator.validate!(input[:skip_final_snapshot], ::TrueClass, ::FalseClass, context: "#{context}[:skip_final_snapshot]")
        Hearth::Validator.validate!(input[:final_db_snapshot_identifier], ::String, context: "#{context}[:final_db_snapshot_identifier]")
        Hearth::Validator.validate!(input[:delete_automated_backups], ::TrueClass, ::FalseClass, context: "#{context}[:delete_automated_backups]")
      end
    end

    class DeleteDBInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDBInstanceOutput, context: context)
        Validators::DBInstance.validate!(input[:db_instance], context: "#{context}[:db_instance]") unless input[:db_instance].nil?
      end
    end

    class DeleteDBParameterGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDBParameterGroupInput, context: context)
        Hearth::Validator.validate!(input[:db_parameter_group_name], ::String, context: "#{context}[:db_parameter_group_name]")
      end
    end

    class DeleteDBParameterGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDBParameterGroupOutput, context: context)
      end
    end

    class DeleteDBProxyEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDBProxyEndpointInput, context: context)
        Hearth::Validator.validate!(input[:db_proxy_endpoint_name], ::String, context: "#{context}[:db_proxy_endpoint_name]")
      end
    end

    class DeleteDBProxyEndpointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDBProxyEndpointOutput, context: context)
        Validators::DBProxyEndpoint.validate!(input[:db_proxy_endpoint], context: "#{context}[:db_proxy_endpoint]") unless input[:db_proxy_endpoint].nil?
      end
    end

    class DeleteDBProxyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDBProxyInput, context: context)
        Hearth::Validator.validate!(input[:db_proxy_name], ::String, context: "#{context}[:db_proxy_name]")
      end
    end

    class DeleteDBProxyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDBProxyOutput, context: context)
        Validators::DBProxy.validate!(input[:db_proxy], context: "#{context}[:db_proxy]") unless input[:db_proxy].nil?
      end
    end

    class DeleteDBSecurityGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDBSecurityGroupInput, context: context)
        Hearth::Validator.validate!(input[:db_security_group_name], ::String, context: "#{context}[:db_security_group_name]")
      end
    end

    class DeleteDBSecurityGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDBSecurityGroupOutput, context: context)
      end
    end

    class DeleteDBSnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDBSnapshotInput, context: context)
        Hearth::Validator.validate!(input[:db_snapshot_identifier], ::String, context: "#{context}[:db_snapshot_identifier]")
      end
    end

    class DeleteDBSnapshotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDBSnapshotOutput, context: context)
        Validators::DBSnapshot.validate!(input[:db_snapshot], context: "#{context}[:db_snapshot]") unless input[:db_snapshot].nil?
      end
    end

    class DeleteDBSubnetGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDBSubnetGroupInput, context: context)
        Hearth::Validator.validate!(input[:db_subnet_group_name], ::String, context: "#{context}[:db_subnet_group_name]")
      end
    end

    class DeleteDBSubnetGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDBSubnetGroupOutput, context: context)
      end
    end

    class DeleteEventSubscriptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEventSubscriptionInput, context: context)
        Hearth::Validator.validate!(input[:subscription_name], ::String, context: "#{context}[:subscription_name]")
      end
    end

    class DeleteEventSubscriptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEventSubscriptionOutput, context: context)
        Validators::EventSubscription.validate!(input[:event_subscription], context: "#{context}[:event_subscription]") unless input[:event_subscription].nil?
      end
    end

    class DeleteGlobalClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteGlobalClusterInput, context: context)
        Hearth::Validator.validate!(input[:global_cluster_identifier], ::String, context: "#{context}[:global_cluster_identifier]")
      end
    end

    class DeleteGlobalClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteGlobalClusterOutput, context: context)
        Validators::GlobalCluster.validate!(input[:global_cluster], context: "#{context}[:global_cluster]") unless input[:global_cluster].nil?
      end
    end

    class DeleteOptionGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteOptionGroupInput, context: context)
        Hearth::Validator.validate!(input[:option_group_name], ::String, context: "#{context}[:option_group_name]")
      end
    end

    class DeleteOptionGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteOptionGroupOutput, context: context)
      end
    end

    class DeregisterDBProxyTargetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterDBProxyTargetsInput, context: context)
        Hearth::Validator.validate!(input[:db_proxy_name], ::String, context: "#{context}[:db_proxy_name]")
        Hearth::Validator.validate!(input[:target_group_name], ::String, context: "#{context}[:target_group_name]")
        Validators::StringList.validate!(input[:db_instance_identifiers], context: "#{context}[:db_instance_identifiers]") unless input[:db_instance_identifiers].nil?
        Validators::StringList.validate!(input[:db_cluster_identifiers], context: "#{context}[:db_cluster_identifiers]") unless input[:db_cluster_identifiers].nil?
      end
    end

    class DeregisterDBProxyTargetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterDBProxyTargetsOutput, context: context)
      end
    end

    class DescribeAccountAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAccountAttributesInput, context: context)
      end
    end

    class DescribeAccountAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAccountAttributesOutput, context: context)
        Validators::AccountQuotaList.validate!(input[:account_quotas], context: "#{context}[:account_quotas]") unless input[:account_quotas].nil?
      end
    end

    class DescribeCertificatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCertificatesInput, context: context)
        Hearth::Validator.validate!(input[:certificate_identifier], ::String, context: "#{context}[:certificate_identifier]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeCertificatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCertificatesOutput, context: context)
        Validators::CertificateList.validate!(input[:certificates], context: "#{context}[:certificates]") unless input[:certificates].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeDBClusterBacktracksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBClusterBacktracksInput, context: context)
        Hearth::Validator.validate!(input[:db_cluster_identifier], ::String, context: "#{context}[:db_cluster_identifier]")
        Hearth::Validator.validate!(input[:backtrack_identifier], ::String, context: "#{context}[:backtrack_identifier]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeDBClusterBacktracksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBClusterBacktracksOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::DBClusterBacktrackList.validate!(input[:db_cluster_backtracks], context: "#{context}[:db_cluster_backtracks]") unless input[:db_cluster_backtracks].nil?
      end
    end

    class DescribeDBClusterEndpointsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBClusterEndpointsInput, context: context)
        Hearth::Validator.validate!(input[:db_cluster_identifier], ::String, context: "#{context}[:db_cluster_identifier]")
        Hearth::Validator.validate!(input[:db_cluster_endpoint_identifier], ::String, context: "#{context}[:db_cluster_endpoint_identifier]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeDBClusterEndpointsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBClusterEndpointsOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::DBClusterEndpointList.validate!(input[:db_cluster_endpoints], context: "#{context}[:db_cluster_endpoints]") unless input[:db_cluster_endpoints].nil?
      end
    end

    class DescribeDBClusterParameterGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBClusterParameterGroupsInput, context: context)
        Hearth::Validator.validate!(input[:db_cluster_parameter_group_name], ::String, context: "#{context}[:db_cluster_parameter_group_name]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeDBClusterParameterGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBClusterParameterGroupsOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::DBClusterParameterGroupList.validate!(input[:db_cluster_parameter_groups], context: "#{context}[:db_cluster_parameter_groups]") unless input[:db_cluster_parameter_groups].nil?
      end
    end

    class DescribeDBClusterParametersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBClusterParametersInput, context: context)
        Hearth::Validator.validate!(input[:db_cluster_parameter_group_name], ::String, context: "#{context}[:db_cluster_parameter_group_name]")
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeDBClusterParametersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBClusterParametersOutput, context: context)
        Validators::ParametersList.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeDBClusterSnapshotAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBClusterSnapshotAttributesInput, context: context)
        Hearth::Validator.validate!(input[:db_cluster_snapshot_identifier], ::String, context: "#{context}[:db_cluster_snapshot_identifier]")
      end
    end

    class DescribeDBClusterSnapshotAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBClusterSnapshotAttributesOutput, context: context)
        Validators::DBClusterSnapshotAttributesResult.validate!(input[:db_cluster_snapshot_attributes_result], context: "#{context}[:db_cluster_snapshot_attributes_result]") unless input[:db_cluster_snapshot_attributes_result].nil?
      end
    end

    class DescribeDBClusterSnapshotsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBClusterSnapshotsInput, context: context)
        Hearth::Validator.validate!(input[:db_cluster_identifier], ::String, context: "#{context}[:db_cluster_identifier]")
        Hearth::Validator.validate!(input[:db_cluster_snapshot_identifier], ::String, context: "#{context}[:db_cluster_snapshot_identifier]")
        Hearth::Validator.validate!(input[:snapshot_type], ::String, context: "#{context}[:snapshot_type]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:include_shared], ::TrueClass, ::FalseClass, context: "#{context}[:include_shared]")
        Hearth::Validator.validate!(input[:include_public], ::TrueClass, ::FalseClass, context: "#{context}[:include_public]")
      end
    end

    class DescribeDBClusterSnapshotsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBClusterSnapshotsOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::DBClusterSnapshotList.validate!(input[:db_cluster_snapshots], context: "#{context}[:db_cluster_snapshots]") unless input[:db_cluster_snapshots].nil?
      end
    end

    class DescribeDBClustersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBClustersInput, context: context)
        Hearth::Validator.validate!(input[:db_cluster_identifier], ::String, context: "#{context}[:db_cluster_identifier]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:include_shared], ::TrueClass, ::FalseClass, context: "#{context}[:include_shared]")
      end
    end

    class DescribeDBClustersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBClustersOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::DBClusterList.validate!(input[:db_clusters], context: "#{context}[:db_clusters]") unless input[:db_clusters].nil?
      end
    end

    class DescribeDBEngineVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBEngineVersionsInput, context: context)
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:db_parameter_group_family], ::String, context: "#{context}[:db_parameter_group_family]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:default_only], ::TrueClass, ::FalseClass, context: "#{context}[:default_only]")
        Hearth::Validator.validate!(input[:list_supported_character_sets], ::TrueClass, ::FalseClass, context: "#{context}[:list_supported_character_sets]")
        Hearth::Validator.validate!(input[:list_supported_timezones], ::TrueClass, ::FalseClass, context: "#{context}[:list_supported_timezones]")
        Hearth::Validator.validate!(input[:include_all], ::TrueClass, ::FalseClass, context: "#{context}[:include_all]")
      end
    end

    class DescribeDBEngineVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBEngineVersionsOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::DBEngineVersionList.validate!(input[:db_engine_versions], context: "#{context}[:db_engine_versions]") unless input[:db_engine_versions].nil?
      end
    end

    class DescribeDBInstanceAutomatedBackupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBInstanceAutomatedBackupsInput, context: context)
        Hearth::Validator.validate!(input[:dbi_resource_id], ::String, context: "#{context}[:dbi_resource_id]")
        Hearth::Validator.validate!(input[:db_instance_identifier], ::String, context: "#{context}[:db_instance_identifier]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:db_instance_automated_backups_arn], ::String, context: "#{context}[:db_instance_automated_backups_arn]")
      end
    end

    class DescribeDBInstanceAutomatedBackupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBInstanceAutomatedBackupsOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::DBInstanceAutomatedBackupList.validate!(input[:db_instance_automated_backups], context: "#{context}[:db_instance_automated_backups]") unless input[:db_instance_automated_backups].nil?
      end
    end

    class DescribeDBInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBInstancesInput, context: context)
        Hearth::Validator.validate!(input[:db_instance_identifier], ::String, context: "#{context}[:db_instance_identifier]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeDBInstancesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBInstancesOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::DBInstanceList.validate!(input[:db_instances], context: "#{context}[:db_instances]") unless input[:db_instances].nil?
      end
    end

    class DescribeDBLogFilesDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBLogFilesDetails, context: context)
        Hearth::Validator.validate!(input[:log_file_name], ::String, context: "#{context}[:log_file_name]")
        Hearth::Validator.validate!(input[:last_written], ::Integer, context: "#{context}[:last_written]")
        Hearth::Validator.validate!(input[:size], ::Integer, context: "#{context}[:size]")
      end
    end

    class DescribeDBLogFilesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBLogFilesInput, context: context)
        Hearth::Validator.validate!(input[:db_instance_identifier], ::String, context: "#{context}[:db_instance_identifier]")
        Hearth::Validator.validate!(input[:filename_contains], ::String, context: "#{context}[:filename_contains]")
        Hearth::Validator.validate!(input[:file_last_written], ::Integer, context: "#{context}[:file_last_written]")
        Hearth::Validator.validate!(input[:file_size], ::Integer, context: "#{context}[:file_size]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeDBLogFilesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DescribeDBLogFilesDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DescribeDBLogFilesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBLogFilesOutput, context: context)
        Validators::DescribeDBLogFilesList.validate!(input[:describe_db_log_files], context: "#{context}[:describe_db_log_files]") unless input[:describe_db_log_files].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeDBParameterGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBParameterGroupsInput, context: context)
        Hearth::Validator.validate!(input[:db_parameter_group_name], ::String, context: "#{context}[:db_parameter_group_name]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeDBParameterGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBParameterGroupsOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::DBParameterGroupList.validate!(input[:db_parameter_groups], context: "#{context}[:db_parameter_groups]") unless input[:db_parameter_groups].nil?
      end
    end

    class DescribeDBParametersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBParametersInput, context: context)
        Hearth::Validator.validate!(input[:db_parameter_group_name], ::String, context: "#{context}[:db_parameter_group_name]")
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeDBParametersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBParametersOutput, context: context)
        Validators::ParametersList.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeDBProxiesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBProxiesInput, context: context)
        Hearth::Validator.validate!(input[:db_proxy_name], ::String, context: "#{context}[:db_proxy_name]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
      end
    end

    class DescribeDBProxiesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBProxiesOutput, context: context)
        Validators::DBProxyList.validate!(input[:db_proxies], context: "#{context}[:db_proxies]") unless input[:db_proxies].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeDBProxyEndpointsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBProxyEndpointsInput, context: context)
        Hearth::Validator.validate!(input[:db_proxy_name], ::String, context: "#{context}[:db_proxy_name]")
        Hearth::Validator.validate!(input[:db_proxy_endpoint_name], ::String, context: "#{context}[:db_proxy_endpoint_name]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
      end
    end

    class DescribeDBProxyEndpointsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBProxyEndpointsOutput, context: context)
        Validators::DBProxyEndpointList.validate!(input[:db_proxy_endpoints], context: "#{context}[:db_proxy_endpoints]") unless input[:db_proxy_endpoints].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeDBProxyTargetGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBProxyTargetGroupsInput, context: context)
        Hearth::Validator.validate!(input[:db_proxy_name], ::String, context: "#{context}[:db_proxy_name]")
        Hearth::Validator.validate!(input[:target_group_name], ::String, context: "#{context}[:target_group_name]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
      end
    end

    class DescribeDBProxyTargetGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBProxyTargetGroupsOutput, context: context)
        Validators::TargetGroupList.validate!(input[:target_groups], context: "#{context}[:target_groups]") unless input[:target_groups].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeDBProxyTargetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBProxyTargetsInput, context: context)
        Hearth::Validator.validate!(input[:db_proxy_name], ::String, context: "#{context}[:db_proxy_name]")
        Hearth::Validator.validate!(input[:target_group_name], ::String, context: "#{context}[:target_group_name]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
      end
    end

    class DescribeDBProxyTargetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBProxyTargetsOutput, context: context)
        Validators::TargetList.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeDBSecurityGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBSecurityGroupsInput, context: context)
        Hearth::Validator.validate!(input[:db_security_group_name], ::String, context: "#{context}[:db_security_group_name]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeDBSecurityGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBSecurityGroupsOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::DBSecurityGroups.validate!(input[:db_security_groups], context: "#{context}[:db_security_groups]") unless input[:db_security_groups].nil?
      end
    end

    class DescribeDBSnapshotAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBSnapshotAttributesInput, context: context)
        Hearth::Validator.validate!(input[:db_snapshot_identifier], ::String, context: "#{context}[:db_snapshot_identifier]")
      end
    end

    class DescribeDBSnapshotAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBSnapshotAttributesOutput, context: context)
        Validators::DBSnapshotAttributesResult.validate!(input[:db_snapshot_attributes_result], context: "#{context}[:db_snapshot_attributes_result]") unless input[:db_snapshot_attributes_result].nil?
      end
    end

    class DescribeDBSnapshotsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBSnapshotsInput, context: context)
        Hearth::Validator.validate!(input[:db_instance_identifier], ::String, context: "#{context}[:db_instance_identifier]")
        Hearth::Validator.validate!(input[:db_snapshot_identifier], ::String, context: "#{context}[:db_snapshot_identifier]")
        Hearth::Validator.validate!(input[:snapshot_type], ::String, context: "#{context}[:snapshot_type]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:include_shared], ::TrueClass, ::FalseClass, context: "#{context}[:include_shared]")
        Hearth::Validator.validate!(input[:include_public], ::TrueClass, ::FalseClass, context: "#{context}[:include_public]")
        Hearth::Validator.validate!(input[:dbi_resource_id], ::String, context: "#{context}[:dbi_resource_id]")
      end
    end

    class DescribeDBSnapshotsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBSnapshotsOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::DBSnapshotList.validate!(input[:db_snapshots], context: "#{context}[:db_snapshots]") unless input[:db_snapshots].nil?
      end
    end

    class DescribeDBSubnetGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBSubnetGroupsInput, context: context)
        Hearth::Validator.validate!(input[:db_subnet_group_name], ::String, context: "#{context}[:db_subnet_group_name]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeDBSubnetGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBSubnetGroupsOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::DBSubnetGroups.validate!(input[:db_subnet_groups], context: "#{context}[:db_subnet_groups]") unless input[:db_subnet_groups].nil?
      end
    end

    class DescribeEngineDefaultClusterParametersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEngineDefaultClusterParametersInput, context: context)
        Hearth::Validator.validate!(input[:db_parameter_group_family], ::String, context: "#{context}[:db_parameter_group_family]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeEngineDefaultClusterParametersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEngineDefaultClusterParametersOutput, context: context)
        Validators::EngineDefaults.validate!(input[:engine_defaults], context: "#{context}[:engine_defaults]") unless input[:engine_defaults].nil?
      end
    end

    class DescribeEngineDefaultParametersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEngineDefaultParametersInput, context: context)
        Hearth::Validator.validate!(input[:db_parameter_group_family], ::String, context: "#{context}[:db_parameter_group_family]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeEngineDefaultParametersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEngineDefaultParametersOutput, context: context)
        Validators::EngineDefaults.validate!(input[:engine_defaults], context: "#{context}[:engine_defaults]") unless input[:engine_defaults].nil?
      end
    end

    class DescribeEventCategoriesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventCategoriesInput, context: context)
        Hearth::Validator.validate!(input[:source_type], ::String, context: "#{context}[:source_type]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class DescribeEventCategoriesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventCategoriesOutput, context: context)
        Validators::EventCategoriesMapList.validate!(input[:event_categories_map_list], context: "#{context}[:event_categories_map_list]") unless input[:event_categories_map_list].nil?
      end
    end

    class DescribeEventSubscriptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventSubscriptionsInput, context: context)
        Hearth::Validator.validate!(input[:subscription_name], ::String, context: "#{context}[:subscription_name]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeEventSubscriptionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventSubscriptionsOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::EventSubscriptionsList.validate!(input[:event_subscriptions_list], context: "#{context}[:event_subscriptions_list]") unless input[:event_subscriptions_list].nil?
      end
    end

    class DescribeEventsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventsInput, context: context)
        Hearth::Validator.validate!(input[:source_identifier], ::String, context: "#{context}[:source_identifier]")
        Hearth::Validator.validate!(input[:source_type], ::String, context: "#{context}[:source_type]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:duration], ::Integer, context: "#{context}[:duration]")
        Validators::EventCategoriesList.validate!(input[:event_categories], context: "#{context}[:event_categories]") unless input[:event_categories].nil?
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeEventsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventsOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::EventList.validate!(input[:events], context: "#{context}[:events]") unless input[:events].nil?
      end
    end

    class DescribeExportTasksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeExportTasksInput, context: context)
        Hearth::Validator.validate!(input[:export_task_identifier], ::String, context: "#{context}[:export_task_identifier]")
        Hearth::Validator.validate!(input[:source_arn], ::String, context: "#{context}[:source_arn]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
      end
    end

    class DescribeExportTasksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeExportTasksOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::ExportTasksList.validate!(input[:export_tasks], context: "#{context}[:export_tasks]") unless input[:export_tasks].nil?
      end
    end

    class DescribeGlobalClustersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeGlobalClustersInput, context: context)
        Hearth::Validator.validate!(input[:global_cluster_identifier], ::String, context: "#{context}[:global_cluster_identifier]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeGlobalClustersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeGlobalClustersOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::GlobalClusterList.validate!(input[:global_clusters], context: "#{context}[:global_clusters]") unless input[:global_clusters].nil?
      end
    end

    class DescribeOptionGroupOptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOptionGroupOptionsInput, context: context)
        Hearth::Validator.validate!(input[:engine_name], ::String, context: "#{context}[:engine_name]")
        Hearth::Validator.validate!(input[:major_engine_version], ::String, context: "#{context}[:major_engine_version]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeOptionGroupOptionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOptionGroupOptionsOutput, context: context)
        Validators::OptionGroupOptionsList.validate!(input[:option_group_options], context: "#{context}[:option_group_options]") unless input[:option_group_options].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeOptionGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOptionGroupsInput, context: context)
        Hearth::Validator.validate!(input[:option_group_name], ::String, context: "#{context}[:option_group_name]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:engine_name], ::String, context: "#{context}[:engine_name]")
        Hearth::Validator.validate!(input[:major_engine_version], ::String, context: "#{context}[:major_engine_version]")
      end
    end

    class DescribeOptionGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOptionGroupsOutput, context: context)
        Validators::OptionGroupsList.validate!(input[:option_groups_list], context: "#{context}[:option_groups_list]") unless input[:option_groups_list].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeOrderableDBInstanceOptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOrderableDBInstanceOptionsInput, context: context)
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:db_instance_class], ::String, context: "#{context}[:db_instance_class]")
        Hearth::Validator.validate!(input[:license_model], ::String, context: "#{context}[:license_model]")
        Hearth::Validator.validate!(input[:availability_zone_group], ::String, context: "#{context}[:availability_zone_group]")
        Hearth::Validator.validate!(input[:vpc], ::TrueClass, ::FalseClass, context: "#{context}[:vpc]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeOrderableDBInstanceOptionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOrderableDBInstanceOptionsOutput, context: context)
        Validators::OrderableDBInstanceOptionsList.validate!(input[:orderable_db_instance_options], context: "#{context}[:orderable_db_instance_options]") unless input[:orderable_db_instance_options].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribePendingMaintenanceActionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePendingMaintenanceActionsInput, context: context)
        Hearth::Validator.validate!(input[:resource_identifier], ::String, context: "#{context}[:resource_identifier]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
      end
    end

    class DescribePendingMaintenanceActionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePendingMaintenanceActionsOutput, context: context)
        Validators::PendingMaintenanceActions.validate!(input[:pending_maintenance_actions], context: "#{context}[:pending_maintenance_actions]") unless input[:pending_maintenance_actions].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeReservedDBInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReservedDBInstancesInput, context: context)
        Hearth::Validator.validate!(input[:reserved_db_instance_id], ::String, context: "#{context}[:reserved_db_instance_id]")
        Hearth::Validator.validate!(input[:reserved_db_instances_offering_id], ::String, context: "#{context}[:reserved_db_instances_offering_id]")
        Hearth::Validator.validate!(input[:db_instance_class], ::String, context: "#{context}[:db_instance_class]")
        Hearth::Validator.validate!(input[:duration], ::String, context: "#{context}[:duration]")
        Hearth::Validator.validate!(input[:product_description], ::String, context: "#{context}[:product_description]")
        Hearth::Validator.validate!(input[:offering_type], ::String, context: "#{context}[:offering_type]")
        Hearth::Validator.validate!(input[:multi_az], ::TrueClass, ::FalseClass, context: "#{context}[:multi_az]")
        Hearth::Validator.validate!(input[:lease_id], ::String, context: "#{context}[:lease_id]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeReservedDBInstancesOfferingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReservedDBInstancesOfferingsInput, context: context)
        Hearth::Validator.validate!(input[:reserved_db_instances_offering_id], ::String, context: "#{context}[:reserved_db_instances_offering_id]")
        Hearth::Validator.validate!(input[:db_instance_class], ::String, context: "#{context}[:db_instance_class]")
        Hearth::Validator.validate!(input[:duration], ::String, context: "#{context}[:duration]")
        Hearth::Validator.validate!(input[:product_description], ::String, context: "#{context}[:product_description]")
        Hearth::Validator.validate!(input[:offering_type], ::String, context: "#{context}[:offering_type]")
        Hearth::Validator.validate!(input[:multi_az], ::TrueClass, ::FalseClass, context: "#{context}[:multi_az]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeReservedDBInstancesOfferingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReservedDBInstancesOfferingsOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::ReservedDBInstancesOfferingList.validate!(input[:reserved_db_instances_offerings], context: "#{context}[:reserved_db_instances_offerings]") unless input[:reserved_db_instances_offerings].nil?
      end
    end

    class DescribeReservedDBInstancesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReservedDBInstancesOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::ReservedDBInstanceList.validate!(input[:reserved_db_instances], context: "#{context}[:reserved_db_instances]") unless input[:reserved_db_instances].nil?
      end
    end

    class DescribeSourceRegionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSourceRegionsInput, context: context)
        Hearth::Validator.validate!(input[:region_name], ::String, context: "#{context}[:region_name]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class DescribeSourceRegionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSourceRegionsOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::SourceRegionList.validate!(input[:source_regions], context: "#{context}[:source_regions]") unless input[:source_regions].nil?
      end
    end

    class DescribeValidDBInstanceModificationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeValidDBInstanceModificationsInput, context: context)
        Hearth::Validator.validate!(input[:db_instance_identifier], ::String, context: "#{context}[:db_instance_identifier]")
      end
    end

    class DescribeValidDBInstanceModificationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeValidDBInstanceModificationsOutput, context: context)
        Validators::ValidDBInstanceModificationsMessage.validate!(input[:valid_db_instance_modifications_message], context: "#{context}[:valid_db_instance_modifications_message]") unless input[:valid_db_instance_modifications_message].nil?
      end
    end

    class DomainMembership
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DomainMembership, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:fqdn], ::String, context: "#{context}[:fqdn]")
        Hearth::Validator.validate!(input[:iam_role_name], ::String, context: "#{context}[:iam_role_name]")
      end
    end

    class DomainMembershipList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DomainMembership.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DomainNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DomainNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DoubleRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DoubleRange, context: context)
        Hearth::Validator.validate!(input[:from], ::Float, context: "#{context}[:from]")
        Hearth::Validator.validate!(input[:to], ::Float, context: "#{context}[:to]")
      end
    end

    class DoubleRangeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DoubleRange.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DownloadDBLogFilePortionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DownloadDBLogFilePortionInput, context: context)
        Hearth::Validator.validate!(input[:db_instance_identifier], ::String, context: "#{context}[:db_instance_identifier]")
        Hearth::Validator.validate!(input[:log_file_name], ::String, context: "#{context}[:log_file_name]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:number_of_lines], ::Integer, context: "#{context}[:number_of_lines]")
      end
    end

    class DownloadDBLogFilePortionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DownloadDBLogFilePortionOutput, context: context)
        Hearth::Validator.validate!(input[:log_file_data], ::String, context: "#{context}[:log_file_data]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:additional_data_pending], ::TrueClass, ::FalseClass, context: "#{context}[:additional_data_pending]")
      end
    end

    class EC2SecurityGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EC2SecurityGroup, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:ec2_security_group_name], ::String, context: "#{context}[:ec2_security_group_name]")
        Hearth::Validator.validate!(input[:ec2_security_group_id], ::String, context: "#{context}[:ec2_security_group_id]")
        Hearth::Validator.validate!(input[:ec2_security_group_owner_id], ::String, context: "#{context}[:ec2_security_group_owner_id]")
      end
    end

    class EC2SecurityGroupList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EC2SecurityGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Endpoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Endpoint, context: context)
        Hearth::Validator.validate!(input[:address], ::String, context: "#{context}[:address]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:hosted_zone_id], ::String, context: "#{context}[:hosted_zone_id]")
      end
    end

    class EngineDefaults
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EngineDefaults, context: context)
        Hearth::Validator.validate!(input[:db_parameter_group_family], ::String, context: "#{context}[:db_parameter_group_family]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::ParametersList.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
      end
    end

    class EngineModeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Event
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Event, context: context)
        Hearth::Validator.validate!(input[:source_identifier], ::String, context: "#{context}[:source_identifier]")
        Hearth::Validator.validate!(input[:source_type], ::String, context: "#{context}[:source_type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Validators::EventCategoriesList.validate!(input[:event_categories], context: "#{context}[:event_categories]") unless input[:event_categories].nil?
        Hearth::Validator.validate!(input[:date], ::Time, context: "#{context}[:date]")
        Hearth::Validator.validate!(input[:source_arn], ::String, context: "#{context}[:source_arn]")
      end
    end

    class EventCategoriesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class EventCategoriesMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventCategoriesMap, context: context)
        Hearth::Validator.validate!(input[:source_type], ::String, context: "#{context}[:source_type]")
        Validators::EventCategoriesList.validate!(input[:event_categories], context: "#{context}[:event_categories]") unless input[:event_categories].nil?
      end
    end

    class EventCategoriesMapList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EventCategoriesMap.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EventList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Event.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EventSubscription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventSubscription, context: context)
        Hearth::Validator.validate!(input[:customer_aws_id], ::String, context: "#{context}[:customer_aws_id]")
        Hearth::Validator.validate!(input[:cust_subscription_id], ::String, context: "#{context}[:cust_subscription_id]")
        Hearth::Validator.validate!(input[:sns_topic_arn], ::String, context: "#{context}[:sns_topic_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:subscription_creation_time], ::String, context: "#{context}[:subscription_creation_time]")
        Hearth::Validator.validate!(input[:source_type], ::String, context: "#{context}[:source_type]")
        Validators::SourceIdsList.validate!(input[:source_ids_list], context: "#{context}[:source_ids_list]") unless input[:source_ids_list].nil?
        Validators::EventCategoriesList.validate!(input[:event_categories_list], context: "#{context}[:event_categories_list]") unless input[:event_categories_list].nil?
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:event_subscription_arn], ::String, context: "#{context}[:event_subscription_arn]")
      end
    end

    class EventSubscriptionQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventSubscriptionQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EventSubscriptionsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EventSubscription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ExportTask
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportTask, context: context)
        Hearth::Validator.validate!(input[:export_task_identifier], ::String, context: "#{context}[:export_task_identifier]")
        Hearth::Validator.validate!(input[:source_arn], ::String, context: "#{context}[:source_arn]")
        Validators::StringList.validate!(input[:export_only], context: "#{context}[:export_only]") unless input[:export_only].nil?
        Hearth::Validator.validate!(input[:snapshot_time], ::Time, context: "#{context}[:snapshot_time]")
        Hearth::Validator.validate!(input[:task_start_time], ::Time, context: "#{context}[:task_start_time]")
        Hearth::Validator.validate!(input[:task_end_time], ::Time, context: "#{context}[:task_end_time]")
        Hearth::Validator.validate!(input[:s3_bucket], ::String, context: "#{context}[:s3_bucket]")
        Hearth::Validator.validate!(input[:s3_prefix], ::String, context: "#{context}[:s3_prefix]")
        Hearth::Validator.validate!(input[:iam_role_arn], ::String, context: "#{context}[:iam_role_arn]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:percent_progress], ::Integer, context: "#{context}[:percent_progress]")
        Hearth::Validator.validate!(input[:total_extracted_data_in_gb], ::Integer, context: "#{context}[:total_extracted_data_in_gb]")
        Hearth::Validator.validate!(input[:failure_cause], ::String, context: "#{context}[:failure_cause]")
        Hearth::Validator.validate!(input[:warning_message], ::String, context: "#{context}[:warning_message]")
      end
    end

    class ExportTaskAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportTaskAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ExportTaskNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportTaskNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ExportTasksList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ExportTask.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FailoverDBClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FailoverDBClusterInput, context: context)
        Hearth::Validator.validate!(input[:db_cluster_identifier], ::String, context: "#{context}[:db_cluster_identifier]")
        Hearth::Validator.validate!(input[:target_db_instance_identifier], ::String, context: "#{context}[:target_db_instance_identifier]")
      end
    end

    class FailoverDBClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FailoverDBClusterOutput, context: context)
        Validators::DBCluster.validate!(input[:db_cluster], context: "#{context}[:db_cluster]") unless input[:db_cluster].nil?
      end
    end

    class FailoverGlobalClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FailoverGlobalClusterInput, context: context)
        Hearth::Validator.validate!(input[:global_cluster_identifier], ::String, context: "#{context}[:global_cluster_identifier]")
        Hearth::Validator.validate!(input[:target_db_cluster_identifier], ::String, context: "#{context}[:target_db_cluster_identifier]")
      end
    end

    class FailoverGlobalClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FailoverGlobalClusterOutput, context: context)
        Validators::GlobalCluster.validate!(input[:global_cluster], context: "#{context}[:global_cluster]") unless input[:global_cluster].nil?
      end
    end

    class FailoverState
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FailoverState, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:from_db_cluster_arn], ::String, context: "#{context}[:from_db_cluster_arn]")
        Hearth::Validator.validate!(input[:to_db_cluster_arn], ::String, context: "#{context}[:to_db_cluster_arn]")
      end
    end

    class FeatureNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Filter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Filter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::FilterValueList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class FilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Filter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FilterValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class GlobalCluster
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GlobalCluster, context: context)
        Hearth::Validator.validate!(input[:global_cluster_identifier], ::String, context: "#{context}[:global_cluster_identifier]")
        Hearth::Validator.validate!(input[:global_cluster_resource_id], ::String, context: "#{context}[:global_cluster_resource_id]")
        Hearth::Validator.validate!(input[:global_cluster_arn], ::String, context: "#{context}[:global_cluster_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:storage_encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:storage_encrypted]")
        Hearth::Validator.validate!(input[:deletion_protection], ::TrueClass, ::FalseClass, context: "#{context}[:deletion_protection]")
        Validators::GlobalClusterMemberList.validate!(input[:global_cluster_members], context: "#{context}[:global_cluster_members]") unless input[:global_cluster_members].nil?
        Validators::FailoverState.validate!(input[:failover_state], context: "#{context}[:failover_state]") unless input[:failover_state].nil?
      end
    end

    class GlobalClusterAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GlobalClusterAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class GlobalClusterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::GlobalCluster.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GlobalClusterMember
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GlobalClusterMember, context: context)
        Hearth::Validator.validate!(input[:db_cluster_arn], ::String, context: "#{context}[:db_cluster_arn]")
        Validators::ReadersArnList.validate!(input[:readers], context: "#{context}[:readers]") unless input[:readers].nil?
        Hearth::Validator.validate!(input[:is_writer], ::TrueClass, ::FalseClass, context: "#{context}[:is_writer]")
        Hearth::Validator.validate!(input[:global_write_forwarding_status], ::String, context: "#{context}[:global_write_forwarding_status]")
      end
    end

    class GlobalClusterMemberList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::GlobalClusterMember.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GlobalClusterNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GlobalClusterNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class GlobalClusterQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GlobalClusterQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class IPRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IPRange, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:cidrip], ::String, context: "#{context}[:cidrip]")
      end
    end

    class IPRangeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::IPRange.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class IamRoleMissingPermissionsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IamRoleMissingPermissionsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class IamRoleNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IamRoleNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InstanceQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InsufficientAvailableIPsInSubnetFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InsufficientAvailableIPsInSubnetFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InsufficientDBClusterCapacityFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InsufficientDBClusterCapacityFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InsufficientDBInstanceCapacityFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InsufficientDBInstanceCapacityFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InsufficientStorageClusterCapacityFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InsufficientStorageClusterCapacityFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidCustomDBEngineVersionStateFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidCustomDBEngineVersionStateFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidDBClusterCapacityFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidDBClusterCapacityFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidDBClusterEndpointStateFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidDBClusterEndpointStateFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidDBClusterSnapshotStateFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidDBClusterSnapshotStateFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidDBClusterStateFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidDBClusterStateFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidDBInstanceAutomatedBackupStateFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidDBInstanceAutomatedBackupStateFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidDBInstanceStateFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidDBInstanceStateFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidDBParameterGroupStateFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidDBParameterGroupStateFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidDBProxyEndpointStateFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidDBProxyEndpointStateFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidDBProxyStateFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidDBProxyStateFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidDBSecurityGroupStateFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidDBSecurityGroupStateFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidDBSnapshotStateFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidDBSnapshotStateFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidDBSubnetGroupFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidDBSubnetGroupFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidDBSubnetGroupStateFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidDBSubnetGroupStateFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidDBSubnetStateFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidDBSubnetStateFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidEventSubscriptionStateFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidEventSubscriptionStateFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidExportOnlyFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidExportOnlyFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidExportSourceStateFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidExportSourceStateFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidExportTaskStateFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidExportTaskStateFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidGlobalClusterStateFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidGlobalClusterStateFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidOptionGroupStateFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidOptionGroupStateFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRestoreFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRestoreFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidS3BucketFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidS3BucketFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidSubnet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidSubnet, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidVPCNetworkStateFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidVPCNetworkStateFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KMSKeyNotAccessibleFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KMSKeyNotAccessibleFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Validators::TagList.validate!(input[:tag_list], context: "#{context}[:tag_list]") unless input[:tag_list].nil?
      end
    end

    class LogTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class MinimumEngineVersionPerAllowedValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MinimumEngineVersionPerAllowedValue, context: context)
        Hearth::Validator.validate!(input[:allowed_value], ::String, context: "#{context}[:allowed_value]")
        Hearth::Validator.validate!(input[:minimum_engine_version], ::String, context: "#{context}[:minimum_engine_version]")
      end
    end

    class MinimumEngineVersionPerAllowedValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::MinimumEngineVersionPerAllowedValue.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ModifyCertificatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyCertificatesInput, context: context)
        Hearth::Validator.validate!(input[:certificate_identifier], ::String, context: "#{context}[:certificate_identifier]")
        Hearth::Validator.validate!(input[:remove_customer_override], ::TrueClass, ::FalseClass, context: "#{context}[:remove_customer_override]")
      end
    end

    class ModifyCertificatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyCertificatesOutput, context: context)
        Validators::Certificate.validate!(input[:certificate], context: "#{context}[:certificate]") unless input[:certificate].nil?
      end
    end

    class ModifyCurrentDBClusterCapacityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyCurrentDBClusterCapacityInput, context: context)
        Hearth::Validator.validate!(input[:db_cluster_identifier], ::String, context: "#{context}[:db_cluster_identifier]")
        Hearth::Validator.validate!(input[:capacity], ::Integer, context: "#{context}[:capacity]")
        Hearth::Validator.validate!(input[:seconds_before_timeout], ::Integer, context: "#{context}[:seconds_before_timeout]")
        Hearth::Validator.validate!(input[:timeout_action], ::String, context: "#{context}[:timeout_action]")
      end
    end

    class ModifyCurrentDBClusterCapacityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyCurrentDBClusterCapacityOutput, context: context)
        Hearth::Validator.validate!(input[:db_cluster_identifier], ::String, context: "#{context}[:db_cluster_identifier]")
        Hearth::Validator.validate!(input[:pending_capacity], ::Integer, context: "#{context}[:pending_capacity]")
        Hearth::Validator.validate!(input[:current_capacity], ::Integer, context: "#{context}[:current_capacity]")
        Hearth::Validator.validate!(input[:seconds_before_timeout], ::Integer, context: "#{context}[:seconds_before_timeout]")
        Hearth::Validator.validate!(input[:timeout_action], ::String, context: "#{context}[:timeout_action]")
      end
    end

    class ModifyCustomDBEngineVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyCustomDBEngineVersionInput, context: context)
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class ModifyCustomDBEngineVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyCustomDBEngineVersionOutput, context: context)
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:db_parameter_group_family], ::String, context: "#{context}[:db_parameter_group_family]")
        Hearth::Validator.validate!(input[:db_engine_description], ::String, context: "#{context}[:db_engine_description]")
        Hearth::Validator.validate!(input[:db_engine_version_description], ::String, context: "#{context}[:db_engine_version_description]")
        Validators::CharacterSet.validate!(input[:default_character_set], context: "#{context}[:default_character_set]") unless input[:default_character_set].nil?
        Validators::SupportedCharacterSetsList.validate!(input[:supported_character_sets], context: "#{context}[:supported_character_sets]") unless input[:supported_character_sets].nil?
        Validators::SupportedCharacterSetsList.validate!(input[:supported_nchar_character_sets], context: "#{context}[:supported_nchar_character_sets]") unless input[:supported_nchar_character_sets].nil?
        Validators::ValidUpgradeTargetList.validate!(input[:valid_upgrade_target], context: "#{context}[:valid_upgrade_target]") unless input[:valid_upgrade_target].nil?
        Validators::SupportedTimezonesList.validate!(input[:supported_timezones], context: "#{context}[:supported_timezones]") unless input[:supported_timezones].nil?
        Validators::LogTypeList.validate!(input[:exportable_log_types], context: "#{context}[:exportable_log_types]") unless input[:exportable_log_types].nil?
        Hearth::Validator.validate!(input[:supports_log_exports_to_cloudwatch_logs], ::TrueClass, ::FalseClass, context: "#{context}[:supports_log_exports_to_cloudwatch_logs]")
        Hearth::Validator.validate!(input[:supports_read_replica], ::TrueClass, ::FalseClass, context: "#{context}[:supports_read_replica]")
        Validators::EngineModeList.validate!(input[:supported_engine_modes], context: "#{context}[:supported_engine_modes]") unless input[:supported_engine_modes].nil?
        Validators::FeatureNameList.validate!(input[:supported_feature_names], context: "#{context}[:supported_feature_names]") unless input[:supported_feature_names].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:supports_parallel_query], ::TrueClass, ::FalseClass, context: "#{context}[:supports_parallel_query]")
        Hearth::Validator.validate!(input[:supports_global_databases], ::TrueClass, ::FalseClass, context: "#{context}[:supports_global_databases]")
        Hearth::Validator.validate!(input[:major_engine_version], ::String, context: "#{context}[:major_engine_version]")
        Hearth::Validator.validate!(input[:database_installation_files_s3_bucket_name], ::String, context: "#{context}[:database_installation_files_s3_bucket_name]")
        Hearth::Validator.validate!(input[:database_installation_files_s3_prefix], ::String, context: "#{context}[:database_installation_files_s3_prefix]")
        Hearth::Validator.validate!(input[:db_engine_version_arn], ::String, context: "#{context}[:db_engine_version_arn]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:create_time], ::Time, context: "#{context}[:create_time]")
        Validators::TagList.validate!(input[:tag_list], context: "#{context}[:tag_list]") unless input[:tag_list].nil?
        Hearth::Validator.validate!(input[:supports_babelfish], ::TrueClass, ::FalseClass, context: "#{context}[:supports_babelfish]")
      end
    end

    class ModifyDBClusterEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyDBClusterEndpointInput, context: context)
        Hearth::Validator.validate!(input[:db_cluster_endpoint_identifier], ::String, context: "#{context}[:db_cluster_endpoint_identifier]")
        Hearth::Validator.validate!(input[:endpoint_type], ::String, context: "#{context}[:endpoint_type]")
        Validators::StringList.validate!(input[:static_members], context: "#{context}[:static_members]") unless input[:static_members].nil?
        Validators::StringList.validate!(input[:excluded_members], context: "#{context}[:excluded_members]") unless input[:excluded_members].nil?
      end
    end

    class ModifyDBClusterEndpointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyDBClusterEndpointOutput, context: context)
        Hearth::Validator.validate!(input[:db_cluster_endpoint_identifier], ::String, context: "#{context}[:db_cluster_endpoint_identifier]")
        Hearth::Validator.validate!(input[:db_cluster_identifier], ::String, context: "#{context}[:db_cluster_identifier]")
        Hearth::Validator.validate!(input[:db_cluster_endpoint_resource_identifier], ::String, context: "#{context}[:db_cluster_endpoint_resource_identifier]")
        Hearth::Validator.validate!(input[:endpoint], ::String, context: "#{context}[:endpoint]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:endpoint_type], ::String, context: "#{context}[:endpoint_type]")
        Hearth::Validator.validate!(input[:custom_endpoint_type], ::String, context: "#{context}[:custom_endpoint_type]")
        Validators::StringList.validate!(input[:static_members], context: "#{context}[:static_members]") unless input[:static_members].nil?
        Validators::StringList.validate!(input[:excluded_members], context: "#{context}[:excluded_members]") unless input[:excluded_members].nil?
        Hearth::Validator.validate!(input[:db_cluster_endpoint_arn], ::String, context: "#{context}[:db_cluster_endpoint_arn]")
      end
    end

    class ModifyDBClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyDBClusterInput, context: context)
        Hearth::Validator.validate!(input[:db_cluster_identifier], ::String, context: "#{context}[:db_cluster_identifier]")
        Hearth::Validator.validate!(input[:new_db_cluster_identifier], ::String, context: "#{context}[:new_db_cluster_identifier]")
        Hearth::Validator.validate!(input[:apply_immediately], ::TrueClass, ::FalseClass, context: "#{context}[:apply_immediately]")
        Hearth::Validator.validate!(input[:backup_retention_period], ::Integer, context: "#{context}[:backup_retention_period]")
        Hearth::Validator.validate!(input[:db_cluster_parameter_group_name], ::String, context: "#{context}[:db_cluster_parameter_group_name]")
        Validators::VpcSecurityGroupIdList.validate!(input[:vpc_security_group_ids], context: "#{context}[:vpc_security_group_ids]") unless input[:vpc_security_group_ids].nil?
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:master_user_password], ::String, context: "#{context}[:master_user_password]")
        Hearth::Validator.validate!(input[:option_group_name], ::String, context: "#{context}[:option_group_name]")
        Hearth::Validator.validate!(input[:preferred_backup_window], ::String, context: "#{context}[:preferred_backup_window]")
        Hearth::Validator.validate!(input[:preferred_maintenance_window], ::String, context: "#{context}[:preferred_maintenance_window]")
        Hearth::Validator.validate!(input[:enable_iam_database_authentication], ::TrueClass, ::FalseClass, context: "#{context}[:enable_iam_database_authentication]")
        Hearth::Validator.validate!(input[:backtrack_window], ::Integer, context: "#{context}[:backtrack_window]")
        Validators::CloudwatchLogsExportConfiguration.validate!(input[:cloudwatch_logs_export_configuration], context: "#{context}[:cloudwatch_logs_export_configuration]") unless input[:cloudwatch_logs_export_configuration].nil?
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:allow_major_version_upgrade], ::TrueClass, ::FalseClass, context: "#{context}[:allow_major_version_upgrade]")
        Hearth::Validator.validate!(input[:db_instance_parameter_group_name], ::String, context: "#{context}[:db_instance_parameter_group_name]")
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:domain_iam_role_name], ::String, context: "#{context}[:domain_iam_role_name]")
        Validators::ScalingConfiguration.validate!(input[:scaling_configuration], context: "#{context}[:scaling_configuration]") unless input[:scaling_configuration].nil?
        Hearth::Validator.validate!(input[:deletion_protection], ::TrueClass, ::FalseClass, context: "#{context}[:deletion_protection]")
        Hearth::Validator.validate!(input[:enable_http_endpoint], ::TrueClass, ::FalseClass, context: "#{context}[:enable_http_endpoint]")
        Hearth::Validator.validate!(input[:copy_tags_to_snapshot], ::TrueClass, ::FalseClass, context: "#{context}[:copy_tags_to_snapshot]")
        Hearth::Validator.validate!(input[:enable_global_write_forwarding], ::TrueClass, ::FalseClass, context: "#{context}[:enable_global_write_forwarding]")
        Hearth::Validator.validate!(input[:db_cluster_instance_class], ::String, context: "#{context}[:db_cluster_instance_class]")
        Hearth::Validator.validate!(input[:allocated_storage], ::Integer, context: "#{context}[:allocated_storage]")
        Hearth::Validator.validate!(input[:storage_type], ::String, context: "#{context}[:storage_type]")
        Hearth::Validator.validate!(input[:iops], ::Integer, context: "#{context}[:iops]")
        Hearth::Validator.validate!(input[:auto_minor_version_upgrade], ::TrueClass, ::FalseClass, context: "#{context}[:auto_minor_version_upgrade]")
        Hearth::Validator.validate!(input[:monitoring_interval], ::Integer, context: "#{context}[:monitoring_interval]")
        Hearth::Validator.validate!(input[:monitoring_role_arn], ::String, context: "#{context}[:monitoring_role_arn]")
        Hearth::Validator.validate!(input[:enable_performance_insights], ::TrueClass, ::FalseClass, context: "#{context}[:enable_performance_insights]")
        Hearth::Validator.validate!(input[:performance_insights_kms_key_id], ::String, context: "#{context}[:performance_insights_kms_key_id]")
        Hearth::Validator.validate!(input[:performance_insights_retention_period], ::Integer, context: "#{context}[:performance_insights_retention_period]")
        Validators::ServerlessV2ScalingConfiguration.validate!(input[:serverless_v2_scaling_configuration], context: "#{context}[:serverless_v2_scaling_configuration]") unless input[:serverless_v2_scaling_configuration].nil?
      end
    end

    class ModifyDBClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyDBClusterOutput, context: context)
        Validators::DBCluster.validate!(input[:db_cluster], context: "#{context}[:db_cluster]") unless input[:db_cluster].nil?
      end
    end

    class ModifyDBClusterParameterGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyDBClusterParameterGroupInput, context: context)
        Hearth::Validator.validate!(input[:db_cluster_parameter_group_name], ::String, context: "#{context}[:db_cluster_parameter_group_name]")
        Validators::ParametersList.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
      end
    end

    class ModifyDBClusterParameterGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyDBClusterParameterGroupOutput, context: context)
        Hearth::Validator.validate!(input[:db_cluster_parameter_group_name], ::String, context: "#{context}[:db_cluster_parameter_group_name]")
      end
    end

    class ModifyDBClusterSnapshotAttributeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyDBClusterSnapshotAttributeInput, context: context)
        Hearth::Validator.validate!(input[:db_cluster_snapshot_identifier], ::String, context: "#{context}[:db_cluster_snapshot_identifier]")
        Hearth::Validator.validate!(input[:attribute_name], ::String, context: "#{context}[:attribute_name]")
        Validators::AttributeValueList.validate!(input[:values_to_add], context: "#{context}[:values_to_add]") unless input[:values_to_add].nil?
        Validators::AttributeValueList.validate!(input[:values_to_remove], context: "#{context}[:values_to_remove]") unless input[:values_to_remove].nil?
      end
    end

    class ModifyDBClusterSnapshotAttributeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyDBClusterSnapshotAttributeOutput, context: context)
        Validators::DBClusterSnapshotAttributesResult.validate!(input[:db_cluster_snapshot_attributes_result], context: "#{context}[:db_cluster_snapshot_attributes_result]") unless input[:db_cluster_snapshot_attributes_result].nil?
      end
    end

    class ModifyDBInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyDBInstanceInput, context: context)
        Hearth::Validator.validate!(input[:db_instance_identifier], ::String, context: "#{context}[:db_instance_identifier]")
        Hearth::Validator.validate!(input[:allocated_storage], ::Integer, context: "#{context}[:allocated_storage]")
        Hearth::Validator.validate!(input[:db_instance_class], ::String, context: "#{context}[:db_instance_class]")
        Hearth::Validator.validate!(input[:db_subnet_group_name], ::String, context: "#{context}[:db_subnet_group_name]")
        Validators::DBSecurityGroupNameList.validate!(input[:db_security_groups], context: "#{context}[:db_security_groups]") unless input[:db_security_groups].nil?
        Validators::VpcSecurityGroupIdList.validate!(input[:vpc_security_group_ids], context: "#{context}[:vpc_security_group_ids]") unless input[:vpc_security_group_ids].nil?
        Hearth::Validator.validate!(input[:apply_immediately], ::TrueClass, ::FalseClass, context: "#{context}[:apply_immediately]")
        Hearth::Validator.validate!(input[:master_user_password], ::String, context: "#{context}[:master_user_password]")
        Hearth::Validator.validate!(input[:db_parameter_group_name], ::String, context: "#{context}[:db_parameter_group_name]")
        Hearth::Validator.validate!(input[:backup_retention_period], ::Integer, context: "#{context}[:backup_retention_period]")
        Hearth::Validator.validate!(input[:preferred_backup_window], ::String, context: "#{context}[:preferred_backup_window]")
        Hearth::Validator.validate!(input[:preferred_maintenance_window], ::String, context: "#{context}[:preferred_maintenance_window]")
        Hearth::Validator.validate!(input[:multi_az], ::TrueClass, ::FalseClass, context: "#{context}[:multi_az]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:allow_major_version_upgrade], ::TrueClass, ::FalseClass, context: "#{context}[:allow_major_version_upgrade]")
        Hearth::Validator.validate!(input[:auto_minor_version_upgrade], ::TrueClass, ::FalseClass, context: "#{context}[:auto_minor_version_upgrade]")
        Hearth::Validator.validate!(input[:license_model], ::String, context: "#{context}[:license_model]")
        Hearth::Validator.validate!(input[:iops], ::Integer, context: "#{context}[:iops]")
        Hearth::Validator.validate!(input[:option_group_name], ::String, context: "#{context}[:option_group_name]")
        Hearth::Validator.validate!(input[:new_db_instance_identifier], ::String, context: "#{context}[:new_db_instance_identifier]")
        Hearth::Validator.validate!(input[:storage_type], ::String, context: "#{context}[:storage_type]")
        Hearth::Validator.validate!(input[:tde_credential_arn], ::String, context: "#{context}[:tde_credential_arn]")
        Hearth::Validator.validate!(input[:tde_credential_password], ::String, context: "#{context}[:tde_credential_password]")
        Hearth::Validator.validate!(input[:ca_certificate_identifier], ::String, context: "#{context}[:ca_certificate_identifier]")
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:copy_tags_to_snapshot], ::TrueClass, ::FalseClass, context: "#{context}[:copy_tags_to_snapshot]")
        Hearth::Validator.validate!(input[:monitoring_interval], ::Integer, context: "#{context}[:monitoring_interval]")
        Hearth::Validator.validate!(input[:db_port_number], ::Integer, context: "#{context}[:db_port_number]")
        Hearth::Validator.validate!(input[:publicly_accessible], ::TrueClass, ::FalseClass, context: "#{context}[:publicly_accessible]")
        Hearth::Validator.validate!(input[:monitoring_role_arn], ::String, context: "#{context}[:monitoring_role_arn]")
        Hearth::Validator.validate!(input[:domain_iam_role_name], ::String, context: "#{context}[:domain_iam_role_name]")
        Hearth::Validator.validate!(input[:promotion_tier], ::Integer, context: "#{context}[:promotion_tier]")
        Hearth::Validator.validate!(input[:enable_iam_database_authentication], ::TrueClass, ::FalseClass, context: "#{context}[:enable_iam_database_authentication]")
        Hearth::Validator.validate!(input[:enable_performance_insights], ::TrueClass, ::FalseClass, context: "#{context}[:enable_performance_insights]")
        Hearth::Validator.validate!(input[:performance_insights_kms_key_id], ::String, context: "#{context}[:performance_insights_kms_key_id]")
        Hearth::Validator.validate!(input[:performance_insights_retention_period], ::Integer, context: "#{context}[:performance_insights_retention_period]")
        Validators::CloudwatchLogsExportConfiguration.validate!(input[:cloudwatch_logs_export_configuration], context: "#{context}[:cloudwatch_logs_export_configuration]") unless input[:cloudwatch_logs_export_configuration].nil?
        Validators::ProcessorFeatureList.validate!(input[:processor_features], context: "#{context}[:processor_features]") unless input[:processor_features].nil?
        Hearth::Validator.validate!(input[:use_default_processor_features], ::TrueClass, ::FalseClass, context: "#{context}[:use_default_processor_features]")
        Hearth::Validator.validate!(input[:deletion_protection], ::TrueClass, ::FalseClass, context: "#{context}[:deletion_protection]")
        Hearth::Validator.validate!(input[:max_allocated_storage], ::Integer, context: "#{context}[:max_allocated_storage]")
        Hearth::Validator.validate!(input[:certificate_rotation_restart], ::TrueClass, ::FalseClass, context: "#{context}[:certificate_rotation_restart]")
        Hearth::Validator.validate!(input[:replica_mode], ::String, context: "#{context}[:replica_mode]")
        Hearth::Validator.validate!(input[:enable_customer_owned_ip], ::TrueClass, ::FalseClass, context: "#{context}[:enable_customer_owned_ip]")
        Hearth::Validator.validate!(input[:aws_backup_recovery_point_arn], ::String, context: "#{context}[:aws_backup_recovery_point_arn]")
        Hearth::Validator.validate!(input[:automation_mode], ::String, context: "#{context}[:automation_mode]")
        Hearth::Validator.validate!(input[:resume_full_automation_mode_minutes], ::Integer, context: "#{context}[:resume_full_automation_mode_minutes]")
        Hearth::Validator.validate!(input[:network_type], ::String, context: "#{context}[:network_type]")
      end
    end

    class ModifyDBInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyDBInstanceOutput, context: context)
        Validators::DBInstance.validate!(input[:db_instance], context: "#{context}[:db_instance]") unless input[:db_instance].nil?
      end
    end

    class ModifyDBParameterGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyDBParameterGroupInput, context: context)
        Hearth::Validator.validate!(input[:db_parameter_group_name], ::String, context: "#{context}[:db_parameter_group_name]")
        Validators::ParametersList.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
      end
    end

    class ModifyDBParameterGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyDBParameterGroupOutput, context: context)
        Hearth::Validator.validate!(input[:db_parameter_group_name], ::String, context: "#{context}[:db_parameter_group_name]")
      end
    end

    class ModifyDBProxyEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyDBProxyEndpointInput, context: context)
        Hearth::Validator.validate!(input[:db_proxy_endpoint_name], ::String, context: "#{context}[:db_proxy_endpoint_name]")
        Hearth::Validator.validate!(input[:new_db_proxy_endpoint_name], ::String, context: "#{context}[:new_db_proxy_endpoint_name]")
        Validators::StringList.validate!(input[:vpc_security_group_ids], context: "#{context}[:vpc_security_group_ids]") unless input[:vpc_security_group_ids].nil?
      end
    end

    class ModifyDBProxyEndpointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyDBProxyEndpointOutput, context: context)
        Validators::DBProxyEndpoint.validate!(input[:db_proxy_endpoint], context: "#{context}[:db_proxy_endpoint]") unless input[:db_proxy_endpoint].nil?
      end
    end

    class ModifyDBProxyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyDBProxyInput, context: context)
        Hearth::Validator.validate!(input[:db_proxy_name], ::String, context: "#{context}[:db_proxy_name]")
        Hearth::Validator.validate!(input[:new_db_proxy_name], ::String, context: "#{context}[:new_db_proxy_name]")
        Validators::UserAuthConfigList.validate!(input[:auth], context: "#{context}[:auth]") unless input[:auth].nil?
        Hearth::Validator.validate!(input[:require_tls], ::TrueClass, ::FalseClass, context: "#{context}[:require_tls]")
        Hearth::Validator.validate!(input[:idle_client_timeout], ::Integer, context: "#{context}[:idle_client_timeout]")
        Hearth::Validator.validate!(input[:debug_logging], ::TrueClass, ::FalseClass, context: "#{context}[:debug_logging]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Validators::StringList.validate!(input[:security_groups], context: "#{context}[:security_groups]") unless input[:security_groups].nil?
      end
    end

    class ModifyDBProxyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyDBProxyOutput, context: context)
        Validators::DBProxy.validate!(input[:db_proxy], context: "#{context}[:db_proxy]") unless input[:db_proxy].nil?
      end
    end

    class ModifyDBProxyTargetGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyDBProxyTargetGroupInput, context: context)
        Hearth::Validator.validate!(input[:target_group_name], ::String, context: "#{context}[:target_group_name]")
        Hearth::Validator.validate!(input[:db_proxy_name], ::String, context: "#{context}[:db_proxy_name]")
        Validators::ConnectionPoolConfiguration.validate!(input[:connection_pool_config], context: "#{context}[:connection_pool_config]") unless input[:connection_pool_config].nil?
        Hearth::Validator.validate!(input[:new_name], ::String, context: "#{context}[:new_name]")
      end
    end

    class ModifyDBProxyTargetGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyDBProxyTargetGroupOutput, context: context)
        Validators::DBProxyTargetGroup.validate!(input[:db_proxy_target_group], context: "#{context}[:db_proxy_target_group]") unless input[:db_proxy_target_group].nil?
      end
    end

    class ModifyDBSnapshotAttributeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyDBSnapshotAttributeInput, context: context)
        Hearth::Validator.validate!(input[:db_snapshot_identifier], ::String, context: "#{context}[:db_snapshot_identifier]")
        Hearth::Validator.validate!(input[:attribute_name], ::String, context: "#{context}[:attribute_name]")
        Validators::AttributeValueList.validate!(input[:values_to_add], context: "#{context}[:values_to_add]") unless input[:values_to_add].nil?
        Validators::AttributeValueList.validate!(input[:values_to_remove], context: "#{context}[:values_to_remove]") unless input[:values_to_remove].nil?
      end
    end

    class ModifyDBSnapshotAttributeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyDBSnapshotAttributeOutput, context: context)
        Validators::DBSnapshotAttributesResult.validate!(input[:db_snapshot_attributes_result], context: "#{context}[:db_snapshot_attributes_result]") unless input[:db_snapshot_attributes_result].nil?
      end
    end

    class ModifyDBSnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyDBSnapshotInput, context: context)
        Hearth::Validator.validate!(input[:db_snapshot_identifier], ::String, context: "#{context}[:db_snapshot_identifier]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:option_group_name], ::String, context: "#{context}[:option_group_name]")
      end
    end

    class ModifyDBSnapshotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyDBSnapshotOutput, context: context)
        Validators::DBSnapshot.validate!(input[:db_snapshot], context: "#{context}[:db_snapshot]") unless input[:db_snapshot].nil?
      end
    end

    class ModifyDBSubnetGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyDBSubnetGroupInput, context: context)
        Hearth::Validator.validate!(input[:db_subnet_group_name], ::String, context: "#{context}[:db_subnet_group_name]")
        Hearth::Validator.validate!(input[:db_subnet_group_description], ::String, context: "#{context}[:db_subnet_group_description]")
        Validators::SubnetIdentifierList.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
      end
    end

    class ModifyDBSubnetGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyDBSubnetGroupOutput, context: context)
        Validators::DBSubnetGroup.validate!(input[:db_subnet_group], context: "#{context}[:db_subnet_group]") unless input[:db_subnet_group].nil?
      end
    end

    class ModifyEventSubscriptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyEventSubscriptionInput, context: context)
        Hearth::Validator.validate!(input[:subscription_name], ::String, context: "#{context}[:subscription_name]")
        Hearth::Validator.validate!(input[:sns_topic_arn], ::String, context: "#{context}[:sns_topic_arn]")
        Hearth::Validator.validate!(input[:source_type], ::String, context: "#{context}[:source_type]")
        Validators::EventCategoriesList.validate!(input[:event_categories], context: "#{context}[:event_categories]") unless input[:event_categories].nil?
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class ModifyEventSubscriptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyEventSubscriptionOutput, context: context)
        Validators::EventSubscription.validate!(input[:event_subscription], context: "#{context}[:event_subscription]") unless input[:event_subscription].nil?
      end
    end

    class ModifyGlobalClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyGlobalClusterInput, context: context)
        Hearth::Validator.validate!(input[:global_cluster_identifier], ::String, context: "#{context}[:global_cluster_identifier]")
        Hearth::Validator.validate!(input[:new_global_cluster_identifier], ::String, context: "#{context}[:new_global_cluster_identifier]")
        Hearth::Validator.validate!(input[:deletion_protection], ::TrueClass, ::FalseClass, context: "#{context}[:deletion_protection]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:allow_major_version_upgrade], ::TrueClass, ::FalseClass, context: "#{context}[:allow_major_version_upgrade]")
      end
    end

    class ModifyGlobalClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyGlobalClusterOutput, context: context)
        Validators::GlobalCluster.validate!(input[:global_cluster], context: "#{context}[:global_cluster]") unless input[:global_cluster].nil?
      end
    end

    class ModifyOptionGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyOptionGroupInput, context: context)
        Hearth::Validator.validate!(input[:option_group_name], ::String, context: "#{context}[:option_group_name]")
        Validators::OptionConfigurationList.validate!(input[:options_to_include], context: "#{context}[:options_to_include]") unless input[:options_to_include].nil?
        Validators::OptionNamesList.validate!(input[:options_to_remove], context: "#{context}[:options_to_remove]") unless input[:options_to_remove].nil?
        Hearth::Validator.validate!(input[:apply_immediately], ::TrueClass, ::FalseClass, context: "#{context}[:apply_immediately]")
      end
    end

    class ModifyOptionGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyOptionGroupOutput, context: context)
        Validators::OptionGroup.validate!(input[:option_group], context: "#{context}[:option_group]") unless input[:option_group].nil?
      end
    end

    class NetworkTypeNotSupported
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkTypeNotSupported, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Option
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Option, context: context)
        Hearth::Validator.validate!(input[:option_name], ::String, context: "#{context}[:option_name]")
        Hearth::Validator.validate!(input[:option_description], ::String, context: "#{context}[:option_description]")
        Hearth::Validator.validate!(input[:persistent], ::TrueClass, ::FalseClass, context: "#{context}[:persistent]")
        Hearth::Validator.validate!(input[:permanent], ::TrueClass, ::FalseClass, context: "#{context}[:permanent]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:option_version], ::String, context: "#{context}[:option_version]")
        Validators::OptionSettingConfigurationList.validate!(input[:option_settings], context: "#{context}[:option_settings]") unless input[:option_settings].nil?
        Validators::DBSecurityGroupMembershipList.validate!(input[:db_security_group_memberships], context: "#{context}[:db_security_group_memberships]") unless input[:db_security_group_memberships].nil?
        Validators::VpcSecurityGroupMembershipList.validate!(input[:vpc_security_group_memberships], context: "#{context}[:vpc_security_group_memberships]") unless input[:vpc_security_group_memberships].nil?
      end
    end

    class OptionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OptionConfiguration, context: context)
        Hearth::Validator.validate!(input[:option_name], ::String, context: "#{context}[:option_name]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:option_version], ::String, context: "#{context}[:option_version]")
        Validators::DBSecurityGroupNameList.validate!(input[:db_security_group_memberships], context: "#{context}[:db_security_group_memberships]") unless input[:db_security_group_memberships].nil?
        Validators::VpcSecurityGroupIdList.validate!(input[:vpc_security_group_memberships], context: "#{context}[:vpc_security_group_memberships]") unless input[:vpc_security_group_memberships].nil?
        Validators::OptionSettingsList.validate!(input[:option_settings], context: "#{context}[:option_settings]") unless input[:option_settings].nil?
      end
    end

    class OptionConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::OptionConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OptionGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OptionGroup, context: context)
        Hearth::Validator.validate!(input[:option_group_name], ::String, context: "#{context}[:option_group_name]")
        Hearth::Validator.validate!(input[:option_group_description], ::String, context: "#{context}[:option_group_description]")
        Hearth::Validator.validate!(input[:engine_name], ::String, context: "#{context}[:engine_name]")
        Hearth::Validator.validate!(input[:major_engine_version], ::String, context: "#{context}[:major_engine_version]")
        Validators::OptionsList.validate!(input[:options], context: "#{context}[:options]") unless input[:options].nil?
        Hearth::Validator.validate!(input[:allows_vpc_and_non_vpc_instance_memberships], ::TrueClass, ::FalseClass, context: "#{context}[:allows_vpc_and_non_vpc_instance_memberships]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:option_group_arn], ::String, context: "#{context}[:option_group_arn]")
      end
    end

    class OptionGroupAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OptionGroupAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OptionGroupMembership
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OptionGroupMembership, context: context)
        Hearth::Validator.validate!(input[:option_group_name], ::String, context: "#{context}[:option_group_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class OptionGroupMembershipList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::OptionGroupMembership.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OptionGroupNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OptionGroupNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OptionGroupOption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OptionGroupOption, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:engine_name], ::String, context: "#{context}[:engine_name]")
        Hearth::Validator.validate!(input[:major_engine_version], ::String, context: "#{context}[:major_engine_version]")
        Hearth::Validator.validate!(input[:minimum_required_minor_engine_version], ::String, context: "#{context}[:minimum_required_minor_engine_version]")
        Hearth::Validator.validate!(input[:port_required], ::TrueClass, ::FalseClass, context: "#{context}[:port_required]")
        Hearth::Validator.validate!(input[:default_port], ::Integer, context: "#{context}[:default_port]")
        Validators::OptionsDependedOn.validate!(input[:options_depended_on], context: "#{context}[:options_depended_on]") unless input[:options_depended_on].nil?
        Validators::OptionsConflictsWith.validate!(input[:options_conflicts_with], context: "#{context}[:options_conflicts_with]") unless input[:options_conflicts_with].nil?
        Hearth::Validator.validate!(input[:persistent], ::TrueClass, ::FalseClass, context: "#{context}[:persistent]")
        Hearth::Validator.validate!(input[:permanent], ::TrueClass, ::FalseClass, context: "#{context}[:permanent]")
        Hearth::Validator.validate!(input[:requires_auto_minor_engine_version_upgrade], ::TrueClass, ::FalseClass, context: "#{context}[:requires_auto_minor_engine_version_upgrade]")
        Hearth::Validator.validate!(input[:vpc_only], ::TrueClass, ::FalseClass, context: "#{context}[:vpc_only]")
        Hearth::Validator.validate!(input[:supports_option_version_downgrade], ::TrueClass, ::FalseClass, context: "#{context}[:supports_option_version_downgrade]")
        Validators::OptionGroupOptionSettingsList.validate!(input[:option_group_option_settings], context: "#{context}[:option_group_option_settings]") unless input[:option_group_option_settings].nil?
        Validators::OptionGroupOptionVersionsList.validate!(input[:option_group_option_versions], context: "#{context}[:option_group_option_versions]") unless input[:option_group_option_versions].nil?
      end
    end

    class OptionGroupOptionSetting
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OptionGroupOptionSetting, context: context)
        Hearth::Validator.validate!(input[:setting_name], ::String, context: "#{context}[:setting_name]")
        Hearth::Validator.validate!(input[:setting_description], ::String, context: "#{context}[:setting_description]")
        Hearth::Validator.validate!(input[:default_value], ::String, context: "#{context}[:default_value]")
        Hearth::Validator.validate!(input[:apply_type], ::String, context: "#{context}[:apply_type]")
        Hearth::Validator.validate!(input[:allowed_values], ::String, context: "#{context}[:allowed_values]")
        Hearth::Validator.validate!(input[:is_modifiable], ::TrueClass, ::FalseClass, context: "#{context}[:is_modifiable]")
        Hearth::Validator.validate!(input[:is_required], ::TrueClass, ::FalseClass, context: "#{context}[:is_required]")
        Validators::MinimumEngineVersionPerAllowedValueList.validate!(input[:minimum_engine_version_per_allowed_value], context: "#{context}[:minimum_engine_version_per_allowed_value]") unless input[:minimum_engine_version_per_allowed_value].nil?
      end
    end

    class OptionGroupOptionSettingsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::OptionGroupOptionSetting.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OptionGroupOptionVersionsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::OptionVersion.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OptionGroupOptionsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::OptionGroupOption.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OptionGroupQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OptionGroupQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OptionGroupsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::OptionGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OptionNamesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class OptionSetting
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OptionSetting, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:default_value], ::String, context: "#{context}[:default_value]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:apply_type], ::String, context: "#{context}[:apply_type]")
        Hearth::Validator.validate!(input[:data_type], ::String, context: "#{context}[:data_type]")
        Hearth::Validator.validate!(input[:allowed_values], ::String, context: "#{context}[:allowed_values]")
        Hearth::Validator.validate!(input[:is_modifiable], ::TrueClass, ::FalseClass, context: "#{context}[:is_modifiable]")
        Hearth::Validator.validate!(input[:is_collection], ::TrueClass, ::FalseClass, context: "#{context}[:is_collection]")
      end
    end

    class OptionSettingConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::OptionSetting.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OptionSettingsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::OptionSetting.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OptionVersion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OptionVersion, context: context)
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:is_default], ::TrueClass, ::FalseClass, context: "#{context}[:is_default]")
      end
    end

    class OptionsConflictsWith
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class OptionsDependedOn
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class OptionsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Option.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OrderableDBInstanceOption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OrderableDBInstanceOption, context: context)
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:db_instance_class], ::String, context: "#{context}[:db_instance_class]")
        Hearth::Validator.validate!(input[:license_model], ::String, context: "#{context}[:license_model]")
        Hearth::Validator.validate!(input[:availability_zone_group], ::String, context: "#{context}[:availability_zone_group]")
        Validators::AvailabilityZoneList.validate!(input[:availability_zones], context: "#{context}[:availability_zones]") unless input[:availability_zones].nil?
        Hearth::Validator.validate!(input[:multi_az_capable], ::TrueClass, ::FalseClass, context: "#{context}[:multi_az_capable]")
        Hearth::Validator.validate!(input[:read_replica_capable], ::TrueClass, ::FalseClass, context: "#{context}[:read_replica_capable]")
        Hearth::Validator.validate!(input[:vpc], ::TrueClass, ::FalseClass, context: "#{context}[:vpc]")
        Hearth::Validator.validate!(input[:supports_storage_encryption], ::TrueClass, ::FalseClass, context: "#{context}[:supports_storage_encryption]")
        Hearth::Validator.validate!(input[:storage_type], ::String, context: "#{context}[:storage_type]")
        Hearth::Validator.validate!(input[:supports_iops], ::TrueClass, ::FalseClass, context: "#{context}[:supports_iops]")
        Hearth::Validator.validate!(input[:supports_enhanced_monitoring], ::TrueClass, ::FalseClass, context: "#{context}[:supports_enhanced_monitoring]")
        Hearth::Validator.validate!(input[:supports_iam_database_authentication], ::TrueClass, ::FalseClass, context: "#{context}[:supports_iam_database_authentication]")
        Hearth::Validator.validate!(input[:supports_performance_insights], ::TrueClass, ::FalseClass, context: "#{context}[:supports_performance_insights]")
        Hearth::Validator.validate!(input[:min_storage_size], ::Integer, context: "#{context}[:min_storage_size]")
        Hearth::Validator.validate!(input[:max_storage_size], ::Integer, context: "#{context}[:max_storage_size]")
        Hearth::Validator.validate!(input[:min_iops_per_db_instance], ::Integer, context: "#{context}[:min_iops_per_db_instance]")
        Hearth::Validator.validate!(input[:max_iops_per_db_instance], ::Integer, context: "#{context}[:max_iops_per_db_instance]")
        Hearth::Validator.validate!(input[:min_iops_per_gib], ::Float, context: "#{context}[:min_iops_per_gib]")
        Hearth::Validator.validate!(input[:max_iops_per_gib], ::Float, context: "#{context}[:max_iops_per_gib]")
        Validators::AvailableProcessorFeatureList.validate!(input[:available_processor_features], context: "#{context}[:available_processor_features]") unless input[:available_processor_features].nil?
        Validators::EngineModeList.validate!(input[:supported_engine_modes], context: "#{context}[:supported_engine_modes]") unless input[:supported_engine_modes].nil?
        Hearth::Validator.validate!(input[:supports_storage_autoscaling], ::TrueClass, ::FalseClass, context: "#{context}[:supports_storage_autoscaling]")
        Hearth::Validator.validate!(input[:supports_kerberos_authentication], ::TrueClass, ::FalseClass, context: "#{context}[:supports_kerberos_authentication]")
        Hearth::Validator.validate!(input[:outpost_capable], ::TrueClass, ::FalseClass, context: "#{context}[:outpost_capable]")
        Validators::ActivityStreamModeList.validate!(input[:supported_activity_stream_modes], context: "#{context}[:supported_activity_stream_modes]") unless input[:supported_activity_stream_modes].nil?
        Hearth::Validator.validate!(input[:supports_global_databases], ::TrueClass, ::FalseClass, context: "#{context}[:supports_global_databases]")
        Hearth::Validator.validate!(input[:supports_clusters], ::TrueClass, ::FalseClass, context: "#{context}[:supports_clusters]")
        Validators::StringList.validate!(input[:supported_network_types], context: "#{context}[:supported_network_types]") unless input[:supported_network_types].nil?
      end
    end

    class OrderableDBInstanceOptionsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::OrderableDBInstanceOption.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Outpost
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Outpost, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class Parameter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Parameter, context: context)
        Hearth::Validator.validate!(input[:parameter_name], ::String, context: "#{context}[:parameter_name]")
        Hearth::Validator.validate!(input[:parameter_value], ::String, context: "#{context}[:parameter_value]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
        Hearth::Validator.validate!(input[:apply_type], ::String, context: "#{context}[:apply_type]")
        Hearth::Validator.validate!(input[:data_type], ::String, context: "#{context}[:data_type]")
        Hearth::Validator.validate!(input[:allowed_values], ::String, context: "#{context}[:allowed_values]")
        Hearth::Validator.validate!(input[:is_modifiable], ::TrueClass, ::FalseClass, context: "#{context}[:is_modifiable]")
        Hearth::Validator.validate!(input[:minimum_engine_version], ::String, context: "#{context}[:minimum_engine_version]")
        Hearth::Validator.validate!(input[:apply_method], ::String, context: "#{context}[:apply_method]")
        Validators::EngineModeList.validate!(input[:supported_engine_modes], context: "#{context}[:supported_engine_modes]") unless input[:supported_engine_modes].nil?
      end
    end

    class ParametersList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Parameter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PendingCloudwatchLogsExports
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PendingCloudwatchLogsExports, context: context)
        Validators::LogTypeList.validate!(input[:log_types_to_enable], context: "#{context}[:log_types_to_enable]") unless input[:log_types_to_enable].nil?
        Validators::LogTypeList.validate!(input[:log_types_to_disable], context: "#{context}[:log_types_to_disable]") unless input[:log_types_to_disable].nil?
      end
    end

    class PendingMaintenanceAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PendingMaintenanceAction, context: context)
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Hearth::Validator.validate!(input[:auto_applied_after_date], ::Time, context: "#{context}[:auto_applied_after_date]")
        Hearth::Validator.validate!(input[:forced_apply_date], ::Time, context: "#{context}[:forced_apply_date]")
        Hearth::Validator.validate!(input[:opt_in_status], ::String, context: "#{context}[:opt_in_status]")
        Hearth::Validator.validate!(input[:current_apply_date], ::Time, context: "#{context}[:current_apply_date]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class PendingMaintenanceActionDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PendingMaintenanceAction.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PendingMaintenanceActions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ResourcePendingMaintenanceActions.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PendingModifiedValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PendingModifiedValues, context: context)
        Hearth::Validator.validate!(input[:db_instance_class], ::String, context: "#{context}[:db_instance_class]")
        Hearth::Validator.validate!(input[:allocated_storage], ::Integer, context: "#{context}[:allocated_storage]")
        Hearth::Validator.validate!(input[:master_user_password], ::String, context: "#{context}[:master_user_password]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:backup_retention_period], ::Integer, context: "#{context}[:backup_retention_period]")
        Hearth::Validator.validate!(input[:multi_az], ::TrueClass, ::FalseClass, context: "#{context}[:multi_az]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:license_model], ::String, context: "#{context}[:license_model]")
        Hearth::Validator.validate!(input[:iops], ::Integer, context: "#{context}[:iops]")
        Hearth::Validator.validate!(input[:db_instance_identifier], ::String, context: "#{context}[:db_instance_identifier]")
        Hearth::Validator.validate!(input[:storage_type], ::String, context: "#{context}[:storage_type]")
        Hearth::Validator.validate!(input[:ca_certificate_identifier], ::String, context: "#{context}[:ca_certificate_identifier]")
        Hearth::Validator.validate!(input[:db_subnet_group_name], ::String, context: "#{context}[:db_subnet_group_name]")
        Validators::PendingCloudwatchLogsExports.validate!(input[:pending_cloudwatch_logs_exports], context: "#{context}[:pending_cloudwatch_logs_exports]") unless input[:pending_cloudwatch_logs_exports].nil?
        Validators::ProcessorFeatureList.validate!(input[:processor_features], context: "#{context}[:processor_features]") unless input[:processor_features].nil?
        Hearth::Validator.validate!(input[:iam_database_authentication_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:iam_database_authentication_enabled]")
        Hearth::Validator.validate!(input[:automation_mode], ::String, context: "#{context}[:automation_mode]")
        Hearth::Validator.validate!(input[:resume_full_automation_mode_time], ::Time, context: "#{context}[:resume_full_automation_mode_time]")
      end
    end

    class PointInTimeRestoreNotEnabledFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PointInTimeRestoreNotEnabledFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ProcessorFeature
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProcessorFeature, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class ProcessorFeatureList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ProcessorFeature.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PromoteReadReplicaDBClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PromoteReadReplicaDBClusterInput, context: context)
        Hearth::Validator.validate!(input[:db_cluster_identifier], ::String, context: "#{context}[:db_cluster_identifier]")
      end
    end

    class PromoteReadReplicaDBClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PromoteReadReplicaDBClusterOutput, context: context)
        Validators::DBCluster.validate!(input[:db_cluster], context: "#{context}[:db_cluster]") unless input[:db_cluster].nil?
      end
    end

    class PromoteReadReplicaInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PromoteReadReplicaInput, context: context)
        Hearth::Validator.validate!(input[:db_instance_identifier], ::String, context: "#{context}[:db_instance_identifier]")
        Hearth::Validator.validate!(input[:backup_retention_period], ::Integer, context: "#{context}[:backup_retention_period]")
        Hearth::Validator.validate!(input[:preferred_backup_window], ::String, context: "#{context}[:preferred_backup_window]")
      end
    end

    class PromoteReadReplicaOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PromoteReadReplicaOutput, context: context)
        Validators::DBInstance.validate!(input[:db_instance], context: "#{context}[:db_instance]") unless input[:db_instance].nil?
      end
    end

    class ProvisionedIopsNotAvailableInAZFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProvisionedIopsNotAvailableInAZFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PurchaseReservedDBInstancesOfferingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PurchaseReservedDBInstancesOfferingInput, context: context)
        Hearth::Validator.validate!(input[:reserved_db_instances_offering_id], ::String, context: "#{context}[:reserved_db_instances_offering_id]")
        Hearth::Validator.validate!(input[:reserved_db_instance_id], ::String, context: "#{context}[:reserved_db_instance_id]")
        Hearth::Validator.validate!(input[:db_instance_count], ::Integer, context: "#{context}[:db_instance_count]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class PurchaseReservedDBInstancesOfferingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PurchaseReservedDBInstancesOfferingOutput, context: context)
        Validators::ReservedDBInstance.validate!(input[:reserved_db_instance], context: "#{context}[:reserved_db_instance]") unless input[:reserved_db_instance].nil?
      end
    end

    class Range
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Range, context: context)
        Hearth::Validator.validate!(input[:from], ::Integer, context: "#{context}[:from]")
        Hearth::Validator.validate!(input[:to], ::Integer, context: "#{context}[:to]")
        Hearth::Validator.validate!(input[:step], ::Integer, context: "#{context}[:step]")
      end
    end

    class RangeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Range.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReadReplicaDBClusterIdentifierList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ReadReplicaDBInstanceIdentifierList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ReadReplicaIdentifierList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ReadersArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RebootDBClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RebootDBClusterInput, context: context)
        Hearth::Validator.validate!(input[:db_cluster_identifier], ::String, context: "#{context}[:db_cluster_identifier]")
      end
    end

    class RebootDBClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RebootDBClusterOutput, context: context)
        Validators::DBCluster.validate!(input[:db_cluster], context: "#{context}[:db_cluster]") unless input[:db_cluster].nil?
      end
    end

    class RebootDBInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RebootDBInstanceInput, context: context)
        Hearth::Validator.validate!(input[:db_instance_identifier], ::String, context: "#{context}[:db_instance_identifier]")
        Hearth::Validator.validate!(input[:force_failover], ::TrueClass, ::FalseClass, context: "#{context}[:force_failover]")
      end
    end

    class RebootDBInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RebootDBInstanceOutput, context: context)
        Validators::DBInstance.validate!(input[:db_instance], context: "#{context}[:db_instance]") unless input[:db_instance].nil?
      end
    end

    class RecurringCharge
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecurringCharge, context: context)
        Hearth::Validator.validate!(input[:recurring_charge_amount], ::Float, context: "#{context}[:recurring_charge_amount]")
        Hearth::Validator.validate!(input[:recurring_charge_frequency], ::String, context: "#{context}[:recurring_charge_frequency]")
      end
    end

    class RecurringChargeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RecurringCharge.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RegisterDBProxyTargetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterDBProxyTargetsInput, context: context)
        Hearth::Validator.validate!(input[:db_proxy_name], ::String, context: "#{context}[:db_proxy_name]")
        Hearth::Validator.validate!(input[:target_group_name], ::String, context: "#{context}[:target_group_name]")
        Validators::StringList.validate!(input[:db_instance_identifiers], context: "#{context}[:db_instance_identifiers]") unless input[:db_instance_identifiers].nil?
        Validators::StringList.validate!(input[:db_cluster_identifiers], context: "#{context}[:db_cluster_identifiers]") unless input[:db_cluster_identifiers].nil?
      end
    end

    class RegisterDBProxyTargetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterDBProxyTargetsOutput, context: context)
        Validators::TargetList.validate!(input[:db_proxy_targets], context: "#{context}[:db_proxy_targets]") unless input[:db_proxy_targets].nil?
      end
    end

    class RemoveFromGlobalClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveFromGlobalClusterInput, context: context)
        Hearth::Validator.validate!(input[:global_cluster_identifier], ::String, context: "#{context}[:global_cluster_identifier]")
        Hearth::Validator.validate!(input[:db_cluster_identifier], ::String, context: "#{context}[:db_cluster_identifier]")
      end
    end

    class RemoveFromGlobalClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveFromGlobalClusterOutput, context: context)
        Validators::GlobalCluster.validate!(input[:global_cluster], context: "#{context}[:global_cluster]") unless input[:global_cluster].nil?
      end
    end

    class RemoveRoleFromDBClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveRoleFromDBClusterInput, context: context)
        Hearth::Validator.validate!(input[:db_cluster_identifier], ::String, context: "#{context}[:db_cluster_identifier]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:feature_name], ::String, context: "#{context}[:feature_name]")
      end
    end

    class RemoveRoleFromDBClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveRoleFromDBClusterOutput, context: context)
      end
    end

    class RemoveRoleFromDBInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveRoleFromDBInstanceInput, context: context)
        Hearth::Validator.validate!(input[:db_instance_identifier], ::String, context: "#{context}[:db_instance_identifier]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:feature_name], ::String, context: "#{context}[:feature_name]")
      end
    end

    class RemoveRoleFromDBInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveRoleFromDBInstanceOutput, context: context)
      end
    end

    class RemoveSourceIdentifierFromSubscriptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveSourceIdentifierFromSubscriptionInput, context: context)
        Hearth::Validator.validate!(input[:subscription_name], ::String, context: "#{context}[:subscription_name]")
        Hearth::Validator.validate!(input[:source_identifier], ::String, context: "#{context}[:source_identifier]")
      end
    end

    class RemoveSourceIdentifierFromSubscriptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveSourceIdentifierFromSubscriptionOutput, context: context)
        Validators::EventSubscription.validate!(input[:event_subscription], context: "#{context}[:event_subscription]") unless input[:event_subscription].nil?
      end
    end

    class RemoveTagsFromResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveTagsFromResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
        Validators::KeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class RemoveTagsFromResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveTagsFromResourceOutput, context: context)
      end
    end

    class ReservedDBInstance
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReservedDBInstance, context: context)
        Hearth::Validator.validate!(input[:reserved_db_instance_id], ::String, context: "#{context}[:reserved_db_instance_id]")
        Hearth::Validator.validate!(input[:reserved_db_instances_offering_id], ::String, context: "#{context}[:reserved_db_instances_offering_id]")
        Hearth::Validator.validate!(input[:db_instance_class], ::String, context: "#{context}[:db_instance_class]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:duration], ::Integer, context: "#{context}[:duration]")
        Hearth::Validator.validate!(input[:fixed_price], ::Float, context: "#{context}[:fixed_price]")
        Hearth::Validator.validate!(input[:usage_price], ::Float, context: "#{context}[:usage_price]")
        Hearth::Validator.validate!(input[:currency_code], ::String, context: "#{context}[:currency_code]")
        Hearth::Validator.validate!(input[:db_instance_count], ::Integer, context: "#{context}[:db_instance_count]")
        Hearth::Validator.validate!(input[:product_description], ::String, context: "#{context}[:product_description]")
        Hearth::Validator.validate!(input[:offering_type], ::String, context: "#{context}[:offering_type]")
        Hearth::Validator.validate!(input[:multi_az], ::TrueClass, ::FalseClass, context: "#{context}[:multi_az]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Validators::RecurringChargeList.validate!(input[:recurring_charges], context: "#{context}[:recurring_charges]") unless input[:recurring_charges].nil?
        Hearth::Validator.validate!(input[:reserved_db_instance_arn], ::String, context: "#{context}[:reserved_db_instance_arn]")
        Hearth::Validator.validate!(input[:lease_id], ::String, context: "#{context}[:lease_id]")
      end
    end

    class ReservedDBInstanceAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReservedDBInstanceAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ReservedDBInstanceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ReservedDBInstance.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReservedDBInstanceNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReservedDBInstanceNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ReservedDBInstanceQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReservedDBInstanceQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ReservedDBInstancesOffering
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReservedDBInstancesOffering, context: context)
        Hearth::Validator.validate!(input[:reserved_db_instances_offering_id], ::String, context: "#{context}[:reserved_db_instances_offering_id]")
        Hearth::Validator.validate!(input[:db_instance_class], ::String, context: "#{context}[:db_instance_class]")
        Hearth::Validator.validate!(input[:duration], ::Integer, context: "#{context}[:duration]")
        Hearth::Validator.validate!(input[:fixed_price], ::Float, context: "#{context}[:fixed_price]")
        Hearth::Validator.validate!(input[:usage_price], ::Float, context: "#{context}[:usage_price]")
        Hearth::Validator.validate!(input[:currency_code], ::String, context: "#{context}[:currency_code]")
        Hearth::Validator.validate!(input[:product_description], ::String, context: "#{context}[:product_description]")
        Hearth::Validator.validate!(input[:offering_type], ::String, context: "#{context}[:offering_type]")
        Hearth::Validator.validate!(input[:multi_az], ::TrueClass, ::FalseClass, context: "#{context}[:multi_az]")
        Validators::RecurringChargeList.validate!(input[:recurring_charges], context: "#{context}[:recurring_charges]") unless input[:recurring_charges].nil?
      end
    end

    class ReservedDBInstancesOfferingList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ReservedDBInstancesOffering.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReservedDBInstancesOfferingNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReservedDBInstancesOfferingNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResetDBClusterParameterGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResetDBClusterParameterGroupInput, context: context)
        Hearth::Validator.validate!(input[:db_cluster_parameter_group_name], ::String, context: "#{context}[:db_cluster_parameter_group_name]")
        Hearth::Validator.validate!(input[:reset_all_parameters], ::TrueClass, ::FalseClass, context: "#{context}[:reset_all_parameters]")
        Validators::ParametersList.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
      end
    end

    class ResetDBClusterParameterGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResetDBClusterParameterGroupOutput, context: context)
        Hearth::Validator.validate!(input[:db_cluster_parameter_group_name], ::String, context: "#{context}[:db_cluster_parameter_group_name]")
      end
    end

    class ResetDBParameterGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResetDBParameterGroupInput, context: context)
        Hearth::Validator.validate!(input[:db_parameter_group_name], ::String, context: "#{context}[:db_parameter_group_name]")
        Hearth::Validator.validate!(input[:reset_all_parameters], ::TrueClass, ::FalseClass, context: "#{context}[:reset_all_parameters]")
        Validators::ParametersList.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
      end
    end

    class ResetDBParameterGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResetDBParameterGroupOutput, context: context)
        Hearth::Validator.validate!(input[:db_parameter_group_name], ::String, context: "#{context}[:db_parameter_group_name]")
      end
    end

    class ResourceNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourcePendingMaintenanceActions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourcePendingMaintenanceActions, context: context)
        Hearth::Validator.validate!(input[:resource_identifier], ::String, context: "#{context}[:resource_identifier]")
        Validators::PendingMaintenanceActionDetails.validate!(input[:pending_maintenance_action_details], context: "#{context}[:pending_maintenance_action_details]") unless input[:pending_maintenance_action_details].nil?
      end
    end

    class RestoreDBClusterFromS3Input
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreDBClusterFromS3Input, context: context)
        Validators::AvailabilityZones.validate!(input[:availability_zones], context: "#{context}[:availability_zones]") unless input[:availability_zones].nil?
        Hearth::Validator.validate!(input[:backup_retention_period], ::Integer, context: "#{context}[:backup_retention_period]")
        Hearth::Validator.validate!(input[:character_set_name], ::String, context: "#{context}[:character_set_name]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:db_cluster_identifier], ::String, context: "#{context}[:db_cluster_identifier]")
        Hearth::Validator.validate!(input[:db_cluster_parameter_group_name], ::String, context: "#{context}[:db_cluster_parameter_group_name]")
        Validators::VpcSecurityGroupIdList.validate!(input[:vpc_security_group_ids], context: "#{context}[:vpc_security_group_ids]") unless input[:vpc_security_group_ids].nil?
        Hearth::Validator.validate!(input[:db_subnet_group_name], ::String, context: "#{context}[:db_subnet_group_name]")
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:master_username], ::String, context: "#{context}[:master_username]")
        Hearth::Validator.validate!(input[:master_user_password], ::String, context: "#{context}[:master_user_password]")
        Hearth::Validator.validate!(input[:option_group_name], ::String, context: "#{context}[:option_group_name]")
        Hearth::Validator.validate!(input[:preferred_backup_window], ::String, context: "#{context}[:preferred_backup_window]")
        Hearth::Validator.validate!(input[:preferred_maintenance_window], ::String, context: "#{context}[:preferred_maintenance_window]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:storage_encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:storage_encrypted]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:enable_iam_database_authentication], ::TrueClass, ::FalseClass, context: "#{context}[:enable_iam_database_authentication]")
        Hearth::Validator.validate!(input[:source_engine], ::String, context: "#{context}[:source_engine]")
        Hearth::Validator.validate!(input[:source_engine_version], ::String, context: "#{context}[:source_engine_version]")
        Hearth::Validator.validate!(input[:s3_bucket_name], ::String, context: "#{context}[:s3_bucket_name]")
        Hearth::Validator.validate!(input[:s3_prefix], ::String, context: "#{context}[:s3_prefix]")
        Hearth::Validator.validate!(input[:s3_ingestion_role_arn], ::String, context: "#{context}[:s3_ingestion_role_arn]")
        Hearth::Validator.validate!(input[:backtrack_window], ::Integer, context: "#{context}[:backtrack_window]")
        Validators::LogTypeList.validate!(input[:enable_cloudwatch_logs_exports], context: "#{context}[:enable_cloudwatch_logs_exports]") unless input[:enable_cloudwatch_logs_exports].nil?
        Hearth::Validator.validate!(input[:deletion_protection], ::TrueClass, ::FalseClass, context: "#{context}[:deletion_protection]")
        Hearth::Validator.validate!(input[:copy_tags_to_snapshot], ::TrueClass, ::FalseClass, context: "#{context}[:copy_tags_to_snapshot]")
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:domain_iam_role_name], ::String, context: "#{context}[:domain_iam_role_name]")
        Validators::ServerlessV2ScalingConfiguration.validate!(input[:serverless_v2_scaling_configuration], context: "#{context}[:serverless_v2_scaling_configuration]") unless input[:serverless_v2_scaling_configuration].nil?
      end
    end

    class RestoreDBClusterFromS3Output
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreDBClusterFromS3Output, context: context)
        Validators::DBCluster.validate!(input[:db_cluster], context: "#{context}[:db_cluster]") unless input[:db_cluster].nil?
      end
    end

    class RestoreDBClusterFromSnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreDBClusterFromSnapshotInput, context: context)
        Validators::AvailabilityZones.validate!(input[:availability_zones], context: "#{context}[:availability_zones]") unless input[:availability_zones].nil?
        Hearth::Validator.validate!(input[:db_cluster_identifier], ::String, context: "#{context}[:db_cluster_identifier]")
        Hearth::Validator.validate!(input[:snapshot_identifier], ::String, context: "#{context}[:snapshot_identifier]")
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:db_subnet_group_name], ::String, context: "#{context}[:db_subnet_group_name]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:option_group_name], ::String, context: "#{context}[:option_group_name]")
        Validators::VpcSecurityGroupIdList.validate!(input[:vpc_security_group_ids], context: "#{context}[:vpc_security_group_ids]") unless input[:vpc_security_group_ids].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:enable_iam_database_authentication], ::TrueClass, ::FalseClass, context: "#{context}[:enable_iam_database_authentication]")
        Hearth::Validator.validate!(input[:backtrack_window], ::Integer, context: "#{context}[:backtrack_window]")
        Validators::LogTypeList.validate!(input[:enable_cloudwatch_logs_exports], context: "#{context}[:enable_cloudwatch_logs_exports]") unless input[:enable_cloudwatch_logs_exports].nil?
        Hearth::Validator.validate!(input[:engine_mode], ::String, context: "#{context}[:engine_mode]")
        Validators::ScalingConfiguration.validate!(input[:scaling_configuration], context: "#{context}[:scaling_configuration]") unless input[:scaling_configuration].nil?
        Hearth::Validator.validate!(input[:db_cluster_parameter_group_name], ::String, context: "#{context}[:db_cluster_parameter_group_name]")
        Hearth::Validator.validate!(input[:deletion_protection], ::TrueClass, ::FalseClass, context: "#{context}[:deletion_protection]")
        Hearth::Validator.validate!(input[:copy_tags_to_snapshot], ::TrueClass, ::FalseClass, context: "#{context}[:copy_tags_to_snapshot]")
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:domain_iam_role_name], ::String, context: "#{context}[:domain_iam_role_name]")
        Hearth::Validator.validate!(input[:db_cluster_instance_class], ::String, context: "#{context}[:db_cluster_instance_class]")
        Hearth::Validator.validate!(input[:storage_type], ::String, context: "#{context}[:storage_type]")
        Hearth::Validator.validate!(input[:iops], ::Integer, context: "#{context}[:iops]")
        Hearth::Validator.validate!(input[:publicly_accessible], ::TrueClass, ::FalseClass, context: "#{context}[:publicly_accessible]")
        Validators::ServerlessV2ScalingConfiguration.validate!(input[:serverless_v2_scaling_configuration], context: "#{context}[:serverless_v2_scaling_configuration]") unless input[:serverless_v2_scaling_configuration].nil?
      end
    end

    class RestoreDBClusterFromSnapshotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreDBClusterFromSnapshotOutput, context: context)
        Validators::DBCluster.validate!(input[:db_cluster], context: "#{context}[:db_cluster]") unless input[:db_cluster].nil?
      end
    end

    class RestoreDBClusterToPointInTimeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreDBClusterToPointInTimeInput, context: context)
        Hearth::Validator.validate!(input[:db_cluster_identifier], ::String, context: "#{context}[:db_cluster_identifier]")
        Hearth::Validator.validate!(input[:restore_type], ::String, context: "#{context}[:restore_type]")
        Hearth::Validator.validate!(input[:source_db_cluster_identifier], ::String, context: "#{context}[:source_db_cluster_identifier]")
        Hearth::Validator.validate!(input[:restore_to_time], ::Time, context: "#{context}[:restore_to_time]")
        Hearth::Validator.validate!(input[:use_latest_restorable_time], ::TrueClass, ::FalseClass, context: "#{context}[:use_latest_restorable_time]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:db_subnet_group_name], ::String, context: "#{context}[:db_subnet_group_name]")
        Hearth::Validator.validate!(input[:option_group_name], ::String, context: "#{context}[:option_group_name]")
        Validators::VpcSecurityGroupIdList.validate!(input[:vpc_security_group_ids], context: "#{context}[:vpc_security_group_ids]") unless input[:vpc_security_group_ids].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:enable_iam_database_authentication], ::TrueClass, ::FalseClass, context: "#{context}[:enable_iam_database_authentication]")
        Hearth::Validator.validate!(input[:backtrack_window], ::Integer, context: "#{context}[:backtrack_window]")
        Validators::LogTypeList.validate!(input[:enable_cloudwatch_logs_exports], context: "#{context}[:enable_cloudwatch_logs_exports]") unless input[:enable_cloudwatch_logs_exports].nil?
        Hearth::Validator.validate!(input[:db_cluster_parameter_group_name], ::String, context: "#{context}[:db_cluster_parameter_group_name]")
        Hearth::Validator.validate!(input[:deletion_protection], ::TrueClass, ::FalseClass, context: "#{context}[:deletion_protection]")
        Hearth::Validator.validate!(input[:copy_tags_to_snapshot], ::TrueClass, ::FalseClass, context: "#{context}[:copy_tags_to_snapshot]")
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:domain_iam_role_name], ::String, context: "#{context}[:domain_iam_role_name]")
        Validators::ScalingConfiguration.validate!(input[:scaling_configuration], context: "#{context}[:scaling_configuration]") unless input[:scaling_configuration].nil?
        Hearth::Validator.validate!(input[:engine_mode], ::String, context: "#{context}[:engine_mode]")
        Hearth::Validator.validate!(input[:db_cluster_instance_class], ::String, context: "#{context}[:db_cluster_instance_class]")
        Hearth::Validator.validate!(input[:storage_type], ::String, context: "#{context}[:storage_type]")
        Hearth::Validator.validate!(input[:publicly_accessible], ::TrueClass, ::FalseClass, context: "#{context}[:publicly_accessible]")
        Hearth::Validator.validate!(input[:iops], ::Integer, context: "#{context}[:iops]")
        Validators::ServerlessV2ScalingConfiguration.validate!(input[:serverless_v2_scaling_configuration], context: "#{context}[:serverless_v2_scaling_configuration]") unless input[:serverless_v2_scaling_configuration].nil?
      end
    end

    class RestoreDBClusterToPointInTimeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreDBClusterToPointInTimeOutput, context: context)
        Validators::DBCluster.validate!(input[:db_cluster], context: "#{context}[:db_cluster]") unless input[:db_cluster].nil?
      end
    end

    class RestoreDBInstanceFromDBSnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreDBInstanceFromDBSnapshotInput, context: context)
        Hearth::Validator.validate!(input[:db_instance_identifier], ::String, context: "#{context}[:db_instance_identifier]")
        Hearth::Validator.validate!(input[:db_snapshot_identifier], ::String, context: "#{context}[:db_snapshot_identifier]")
        Hearth::Validator.validate!(input[:db_instance_class], ::String, context: "#{context}[:db_instance_class]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:db_subnet_group_name], ::String, context: "#{context}[:db_subnet_group_name]")
        Hearth::Validator.validate!(input[:multi_az], ::TrueClass, ::FalseClass, context: "#{context}[:multi_az]")
        Hearth::Validator.validate!(input[:publicly_accessible], ::TrueClass, ::FalseClass, context: "#{context}[:publicly_accessible]")
        Hearth::Validator.validate!(input[:auto_minor_version_upgrade], ::TrueClass, ::FalseClass, context: "#{context}[:auto_minor_version_upgrade]")
        Hearth::Validator.validate!(input[:license_model], ::String, context: "#{context}[:license_model]")
        Hearth::Validator.validate!(input[:db_name], ::String, context: "#{context}[:db_name]")
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:iops], ::Integer, context: "#{context}[:iops]")
        Hearth::Validator.validate!(input[:option_group_name], ::String, context: "#{context}[:option_group_name]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:storage_type], ::String, context: "#{context}[:storage_type]")
        Hearth::Validator.validate!(input[:tde_credential_arn], ::String, context: "#{context}[:tde_credential_arn]")
        Hearth::Validator.validate!(input[:tde_credential_password], ::String, context: "#{context}[:tde_credential_password]")
        Validators::VpcSecurityGroupIdList.validate!(input[:vpc_security_group_ids], context: "#{context}[:vpc_security_group_ids]") unless input[:vpc_security_group_ids].nil?
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:copy_tags_to_snapshot], ::TrueClass, ::FalseClass, context: "#{context}[:copy_tags_to_snapshot]")
        Hearth::Validator.validate!(input[:domain_iam_role_name], ::String, context: "#{context}[:domain_iam_role_name]")
        Hearth::Validator.validate!(input[:enable_iam_database_authentication], ::TrueClass, ::FalseClass, context: "#{context}[:enable_iam_database_authentication]")
        Validators::LogTypeList.validate!(input[:enable_cloudwatch_logs_exports], context: "#{context}[:enable_cloudwatch_logs_exports]") unless input[:enable_cloudwatch_logs_exports].nil?
        Validators::ProcessorFeatureList.validate!(input[:processor_features], context: "#{context}[:processor_features]") unless input[:processor_features].nil?
        Hearth::Validator.validate!(input[:use_default_processor_features], ::TrueClass, ::FalseClass, context: "#{context}[:use_default_processor_features]")
        Hearth::Validator.validate!(input[:db_parameter_group_name], ::String, context: "#{context}[:db_parameter_group_name]")
        Hearth::Validator.validate!(input[:deletion_protection], ::TrueClass, ::FalseClass, context: "#{context}[:deletion_protection]")
        Hearth::Validator.validate!(input[:enable_customer_owned_ip], ::TrueClass, ::FalseClass, context: "#{context}[:enable_customer_owned_ip]")
        Hearth::Validator.validate!(input[:custom_iam_instance_profile], ::String, context: "#{context}[:custom_iam_instance_profile]")
        Hearth::Validator.validate!(input[:backup_target], ::String, context: "#{context}[:backup_target]")
        Hearth::Validator.validate!(input[:network_type], ::String, context: "#{context}[:network_type]")
      end
    end

    class RestoreDBInstanceFromDBSnapshotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreDBInstanceFromDBSnapshotOutput, context: context)
        Validators::DBInstance.validate!(input[:db_instance], context: "#{context}[:db_instance]") unless input[:db_instance].nil?
      end
    end

    class RestoreDBInstanceFromS3Input
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreDBInstanceFromS3Input, context: context)
        Hearth::Validator.validate!(input[:db_name], ::String, context: "#{context}[:db_name]")
        Hearth::Validator.validate!(input[:db_instance_identifier], ::String, context: "#{context}[:db_instance_identifier]")
        Hearth::Validator.validate!(input[:allocated_storage], ::Integer, context: "#{context}[:allocated_storage]")
        Hearth::Validator.validate!(input[:db_instance_class], ::String, context: "#{context}[:db_instance_class]")
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:master_username], ::String, context: "#{context}[:master_username]")
        Hearth::Validator.validate!(input[:master_user_password], ::String, context: "#{context}[:master_user_password]")
        Validators::DBSecurityGroupNameList.validate!(input[:db_security_groups], context: "#{context}[:db_security_groups]") unless input[:db_security_groups].nil?
        Validators::VpcSecurityGroupIdList.validate!(input[:vpc_security_group_ids], context: "#{context}[:vpc_security_group_ids]") unless input[:vpc_security_group_ids].nil?
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:db_subnet_group_name], ::String, context: "#{context}[:db_subnet_group_name]")
        Hearth::Validator.validate!(input[:preferred_maintenance_window], ::String, context: "#{context}[:preferred_maintenance_window]")
        Hearth::Validator.validate!(input[:db_parameter_group_name], ::String, context: "#{context}[:db_parameter_group_name]")
        Hearth::Validator.validate!(input[:backup_retention_period], ::Integer, context: "#{context}[:backup_retention_period]")
        Hearth::Validator.validate!(input[:preferred_backup_window], ::String, context: "#{context}[:preferred_backup_window]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:multi_az], ::TrueClass, ::FalseClass, context: "#{context}[:multi_az]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:auto_minor_version_upgrade], ::TrueClass, ::FalseClass, context: "#{context}[:auto_minor_version_upgrade]")
        Hearth::Validator.validate!(input[:license_model], ::String, context: "#{context}[:license_model]")
        Hearth::Validator.validate!(input[:iops], ::Integer, context: "#{context}[:iops]")
        Hearth::Validator.validate!(input[:option_group_name], ::String, context: "#{context}[:option_group_name]")
        Hearth::Validator.validate!(input[:publicly_accessible], ::TrueClass, ::FalseClass, context: "#{context}[:publicly_accessible]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:storage_type], ::String, context: "#{context}[:storage_type]")
        Hearth::Validator.validate!(input[:storage_encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:storage_encrypted]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:copy_tags_to_snapshot], ::TrueClass, ::FalseClass, context: "#{context}[:copy_tags_to_snapshot]")
        Hearth::Validator.validate!(input[:monitoring_interval], ::Integer, context: "#{context}[:monitoring_interval]")
        Hearth::Validator.validate!(input[:monitoring_role_arn], ::String, context: "#{context}[:monitoring_role_arn]")
        Hearth::Validator.validate!(input[:enable_iam_database_authentication], ::TrueClass, ::FalseClass, context: "#{context}[:enable_iam_database_authentication]")
        Hearth::Validator.validate!(input[:source_engine], ::String, context: "#{context}[:source_engine]")
        Hearth::Validator.validate!(input[:source_engine_version], ::String, context: "#{context}[:source_engine_version]")
        Hearth::Validator.validate!(input[:s3_bucket_name], ::String, context: "#{context}[:s3_bucket_name]")
        Hearth::Validator.validate!(input[:s3_prefix], ::String, context: "#{context}[:s3_prefix]")
        Hearth::Validator.validate!(input[:s3_ingestion_role_arn], ::String, context: "#{context}[:s3_ingestion_role_arn]")
        Hearth::Validator.validate!(input[:enable_performance_insights], ::TrueClass, ::FalseClass, context: "#{context}[:enable_performance_insights]")
        Hearth::Validator.validate!(input[:performance_insights_kms_key_id], ::String, context: "#{context}[:performance_insights_kms_key_id]")
        Hearth::Validator.validate!(input[:performance_insights_retention_period], ::Integer, context: "#{context}[:performance_insights_retention_period]")
        Validators::LogTypeList.validate!(input[:enable_cloudwatch_logs_exports], context: "#{context}[:enable_cloudwatch_logs_exports]") unless input[:enable_cloudwatch_logs_exports].nil?
        Validators::ProcessorFeatureList.validate!(input[:processor_features], context: "#{context}[:processor_features]") unless input[:processor_features].nil?
        Hearth::Validator.validate!(input[:use_default_processor_features], ::TrueClass, ::FalseClass, context: "#{context}[:use_default_processor_features]")
        Hearth::Validator.validate!(input[:deletion_protection], ::TrueClass, ::FalseClass, context: "#{context}[:deletion_protection]")
        Hearth::Validator.validate!(input[:max_allocated_storage], ::Integer, context: "#{context}[:max_allocated_storage]")
        Hearth::Validator.validate!(input[:network_type], ::String, context: "#{context}[:network_type]")
      end
    end

    class RestoreDBInstanceFromS3Output
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreDBInstanceFromS3Output, context: context)
        Validators::DBInstance.validate!(input[:db_instance], context: "#{context}[:db_instance]") unless input[:db_instance].nil?
      end
    end

    class RestoreDBInstanceToPointInTimeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreDBInstanceToPointInTimeInput, context: context)
        Hearth::Validator.validate!(input[:source_db_instance_identifier], ::String, context: "#{context}[:source_db_instance_identifier]")
        Hearth::Validator.validate!(input[:target_db_instance_identifier], ::String, context: "#{context}[:target_db_instance_identifier]")
        Hearth::Validator.validate!(input[:restore_time], ::Time, context: "#{context}[:restore_time]")
        Hearth::Validator.validate!(input[:use_latest_restorable_time], ::TrueClass, ::FalseClass, context: "#{context}[:use_latest_restorable_time]")
        Hearth::Validator.validate!(input[:db_instance_class], ::String, context: "#{context}[:db_instance_class]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:db_subnet_group_name], ::String, context: "#{context}[:db_subnet_group_name]")
        Hearth::Validator.validate!(input[:multi_az], ::TrueClass, ::FalseClass, context: "#{context}[:multi_az]")
        Hearth::Validator.validate!(input[:publicly_accessible], ::TrueClass, ::FalseClass, context: "#{context}[:publicly_accessible]")
        Hearth::Validator.validate!(input[:auto_minor_version_upgrade], ::TrueClass, ::FalseClass, context: "#{context}[:auto_minor_version_upgrade]")
        Hearth::Validator.validate!(input[:license_model], ::String, context: "#{context}[:license_model]")
        Hearth::Validator.validate!(input[:db_name], ::String, context: "#{context}[:db_name]")
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:iops], ::Integer, context: "#{context}[:iops]")
        Hearth::Validator.validate!(input[:option_group_name], ::String, context: "#{context}[:option_group_name]")
        Hearth::Validator.validate!(input[:copy_tags_to_snapshot], ::TrueClass, ::FalseClass, context: "#{context}[:copy_tags_to_snapshot]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:storage_type], ::String, context: "#{context}[:storage_type]")
        Hearth::Validator.validate!(input[:tde_credential_arn], ::String, context: "#{context}[:tde_credential_arn]")
        Hearth::Validator.validate!(input[:tde_credential_password], ::String, context: "#{context}[:tde_credential_password]")
        Validators::VpcSecurityGroupIdList.validate!(input[:vpc_security_group_ids], context: "#{context}[:vpc_security_group_ids]") unless input[:vpc_security_group_ids].nil?
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:domain_iam_role_name], ::String, context: "#{context}[:domain_iam_role_name]")
        Hearth::Validator.validate!(input[:enable_iam_database_authentication], ::TrueClass, ::FalseClass, context: "#{context}[:enable_iam_database_authentication]")
        Validators::LogTypeList.validate!(input[:enable_cloudwatch_logs_exports], context: "#{context}[:enable_cloudwatch_logs_exports]") unless input[:enable_cloudwatch_logs_exports].nil?
        Validators::ProcessorFeatureList.validate!(input[:processor_features], context: "#{context}[:processor_features]") unless input[:processor_features].nil?
        Hearth::Validator.validate!(input[:use_default_processor_features], ::TrueClass, ::FalseClass, context: "#{context}[:use_default_processor_features]")
        Hearth::Validator.validate!(input[:db_parameter_group_name], ::String, context: "#{context}[:db_parameter_group_name]")
        Hearth::Validator.validate!(input[:deletion_protection], ::TrueClass, ::FalseClass, context: "#{context}[:deletion_protection]")
        Hearth::Validator.validate!(input[:source_dbi_resource_id], ::String, context: "#{context}[:source_dbi_resource_id]")
        Hearth::Validator.validate!(input[:max_allocated_storage], ::Integer, context: "#{context}[:max_allocated_storage]")
        Hearth::Validator.validate!(input[:source_db_instance_automated_backups_arn], ::String, context: "#{context}[:source_db_instance_automated_backups_arn]")
        Hearth::Validator.validate!(input[:enable_customer_owned_ip], ::TrueClass, ::FalseClass, context: "#{context}[:enable_customer_owned_ip]")
        Hearth::Validator.validate!(input[:custom_iam_instance_profile], ::String, context: "#{context}[:custom_iam_instance_profile]")
        Hearth::Validator.validate!(input[:backup_target], ::String, context: "#{context}[:backup_target]")
        Hearth::Validator.validate!(input[:network_type], ::String, context: "#{context}[:network_type]")
      end
    end

    class RestoreDBInstanceToPointInTimeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreDBInstanceToPointInTimeOutput, context: context)
        Validators::DBInstance.validate!(input[:db_instance], context: "#{context}[:db_instance]") unless input[:db_instance].nil?
      end
    end

    class RestoreWindow
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreWindow, context: context)
        Hearth::Validator.validate!(input[:earliest_time], ::Time, context: "#{context}[:earliest_time]")
        Hearth::Validator.validate!(input[:latest_time], ::Time, context: "#{context}[:latest_time]")
      end
    end

    class RevokeDBSecurityGroupIngressInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RevokeDBSecurityGroupIngressInput, context: context)
        Hearth::Validator.validate!(input[:db_security_group_name], ::String, context: "#{context}[:db_security_group_name]")
        Hearth::Validator.validate!(input[:cidrip], ::String, context: "#{context}[:cidrip]")
        Hearth::Validator.validate!(input[:ec2_security_group_name], ::String, context: "#{context}[:ec2_security_group_name]")
        Hearth::Validator.validate!(input[:ec2_security_group_id], ::String, context: "#{context}[:ec2_security_group_id]")
        Hearth::Validator.validate!(input[:ec2_security_group_owner_id], ::String, context: "#{context}[:ec2_security_group_owner_id]")
      end
    end

    class RevokeDBSecurityGroupIngressOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RevokeDBSecurityGroupIngressOutput, context: context)
        Validators::DBSecurityGroup.validate!(input[:db_security_group], context: "#{context}[:db_security_group]") unless input[:db_security_group].nil?
      end
    end

    class SNSInvalidTopicFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SNSInvalidTopicFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SNSNoAuthorizationFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SNSNoAuthorizationFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SNSTopicArnNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SNSTopicArnNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ScalingConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScalingConfiguration, context: context)
        Hearth::Validator.validate!(input[:min_capacity], ::Integer, context: "#{context}[:min_capacity]")
        Hearth::Validator.validate!(input[:max_capacity], ::Integer, context: "#{context}[:max_capacity]")
        Hearth::Validator.validate!(input[:auto_pause], ::TrueClass, ::FalseClass, context: "#{context}[:auto_pause]")
        Hearth::Validator.validate!(input[:seconds_until_auto_pause], ::Integer, context: "#{context}[:seconds_until_auto_pause]")
        Hearth::Validator.validate!(input[:timeout_action], ::String, context: "#{context}[:timeout_action]")
        Hearth::Validator.validate!(input[:seconds_before_timeout], ::Integer, context: "#{context}[:seconds_before_timeout]")
      end
    end

    class ScalingConfigurationInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScalingConfigurationInfo, context: context)
        Hearth::Validator.validate!(input[:min_capacity], ::Integer, context: "#{context}[:min_capacity]")
        Hearth::Validator.validate!(input[:max_capacity], ::Integer, context: "#{context}[:max_capacity]")
        Hearth::Validator.validate!(input[:auto_pause], ::TrueClass, ::FalseClass, context: "#{context}[:auto_pause]")
        Hearth::Validator.validate!(input[:seconds_until_auto_pause], ::Integer, context: "#{context}[:seconds_until_auto_pause]")
        Hearth::Validator.validate!(input[:timeout_action], ::String, context: "#{context}[:timeout_action]")
        Hearth::Validator.validate!(input[:seconds_before_timeout], ::Integer, context: "#{context}[:seconds_before_timeout]")
      end
    end

    class ServerlessV2ScalingConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServerlessV2ScalingConfiguration, context: context)
        Hearth::Validator.validate!(input[:min_capacity], ::Float, context: "#{context}[:min_capacity]")
        Hearth::Validator.validate!(input[:max_capacity], ::Float, context: "#{context}[:max_capacity]")
      end
    end

    class ServerlessV2ScalingConfigurationInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServerlessV2ScalingConfigurationInfo, context: context)
        Hearth::Validator.validate!(input[:min_capacity], ::Float, context: "#{context}[:min_capacity]")
        Hearth::Validator.validate!(input[:max_capacity], ::Float, context: "#{context}[:max_capacity]")
      end
    end

    class SharedSnapshotQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SharedSnapshotQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SnapshotQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SnapshotQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SourceIdsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SourceNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SourceNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SourceRegion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SourceRegion, context: context)
        Hearth::Validator.validate!(input[:region_name], ::String, context: "#{context}[:region_name]")
        Hearth::Validator.validate!(input[:endpoint], ::String, context: "#{context}[:endpoint]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:supports_db_instance_automated_backups_replication], ::TrueClass, ::FalseClass, context: "#{context}[:supports_db_instance_automated_backups_replication]")
      end
    end

    class SourceRegionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SourceRegion.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StartActivityStreamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartActivityStreamInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:mode], ::String, context: "#{context}[:mode]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:apply_immediately], ::TrueClass, ::FalseClass, context: "#{context}[:apply_immediately]")
        Hearth::Validator.validate!(input[:engine_native_audit_fields_included], ::TrueClass, ::FalseClass, context: "#{context}[:engine_native_audit_fields_included]")
      end
    end

    class StartActivityStreamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartActivityStreamOutput, context: context)
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:kinesis_stream_name], ::String, context: "#{context}[:kinesis_stream_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:mode], ::String, context: "#{context}[:mode]")
        Hearth::Validator.validate!(input[:apply_immediately], ::TrueClass, ::FalseClass, context: "#{context}[:apply_immediately]")
        Hearth::Validator.validate!(input[:engine_native_audit_fields_included], ::TrueClass, ::FalseClass, context: "#{context}[:engine_native_audit_fields_included]")
      end
    end

    class StartDBClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartDBClusterInput, context: context)
        Hearth::Validator.validate!(input[:db_cluster_identifier], ::String, context: "#{context}[:db_cluster_identifier]")
      end
    end

    class StartDBClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartDBClusterOutput, context: context)
        Validators::DBCluster.validate!(input[:db_cluster], context: "#{context}[:db_cluster]") unless input[:db_cluster].nil?
      end
    end

    class StartDBInstanceAutomatedBackupsReplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartDBInstanceAutomatedBackupsReplicationInput, context: context)
        Hearth::Validator.validate!(input[:source_db_instance_arn], ::String, context: "#{context}[:source_db_instance_arn]")
        Hearth::Validator.validate!(input[:backup_retention_period], ::Integer, context: "#{context}[:backup_retention_period]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:pre_signed_url], ::String, context: "#{context}[:pre_signed_url]")
      end
    end

    class StartDBInstanceAutomatedBackupsReplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartDBInstanceAutomatedBackupsReplicationOutput, context: context)
        Validators::DBInstanceAutomatedBackup.validate!(input[:db_instance_automated_backup], context: "#{context}[:db_instance_automated_backup]") unless input[:db_instance_automated_backup].nil?
      end
    end

    class StartDBInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartDBInstanceInput, context: context)
        Hearth::Validator.validate!(input[:db_instance_identifier], ::String, context: "#{context}[:db_instance_identifier]")
      end
    end

    class StartDBInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartDBInstanceOutput, context: context)
        Validators::DBInstance.validate!(input[:db_instance], context: "#{context}[:db_instance]") unless input[:db_instance].nil?
      end
    end

    class StartExportTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartExportTaskInput, context: context)
        Hearth::Validator.validate!(input[:export_task_identifier], ::String, context: "#{context}[:export_task_identifier]")
        Hearth::Validator.validate!(input[:source_arn], ::String, context: "#{context}[:source_arn]")
        Hearth::Validator.validate!(input[:s3_bucket_name], ::String, context: "#{context}[:s3_bucket_name]")
        Hearth::Validator.validate!(input[:iam_role_arn], ::String, context: "#{context}[:iam_role_arn]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:s3_prefix], ::String, context: "#{context}[:s3_prefix]")
        Validators::StringList.validate!(input[:export_only], context: "#{context}[:export_only]") unless input[:export_only].nil?
      end
    end

    class StartExportTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartExportTaskOutput, context: context)
        Hearth::Validator.validate!(input[:export_task_identifier], ::String, context: "#{context}[:export_task_identifier]")
        Hearth::Validator.validate!(input[:source_arn], ::String, context: "#{context}[:source_arn]")
        Validators::StringList.validate!(input[:export_only], context: "#{context}[:export_only]") unless input[:export_only].nil?
        Hearth::Validator.validate!(input[:snapshot_time], ::Time, context: "#{context}[:snapshot_time]")
        Hearth::Validator.validate!(input[:task_start_time], ::Time, context: "#{context}[:task_start_time]")
        Hearth::Validator.validate!(input[:task_end_time], ::Time, context: "#{context}[:task_end_time]")
        Hearth::Validator.validate!(input[:s3_bucket], ::String, context: "#{context}[:s3_bucket]")
        Hearth::Validator.validate!(input[:s3_prefix], ::String, context: "#{context}[:s3_prefix]")
        Hearth::Validator.validate!(input[:iam_role_arn], ::String, context: "#{context}[:iam_role_arn]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:percent_progress], ::Integer, context: "#{context}[:percent_progress]")
        Hearth::Validator.validate!(input[:total_extracted_data_in_gb], ::Integer, context: "#{context}[:total_extracted_data_in_gb]")
        Hearth::Validator.validate!(input[:failure_cause], ::String, context: "#{context}[:failure_cause]")
        Hearth::Validator.validate!(input[:warning_message], ::String, context: "#{context}[:warning_message]")
      end
    end

    class StopActivityStreamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopActivityStreamInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:apply_immediately], ::TrueClass, ::FalseClass, context: "#{context}[:apply_immediately]")
      end
    end

    class StopActivityStreamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopActivityStreamOutput, context: context)
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:kinesis_stream_name], ::String, context: "#{context}[:kinesis_stream_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class StopDBClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopDBClusterInput, context: context)
        Hearth::Validator.validate!(input[:db_cluster_identifier], ::String, context: "#{context}[:db_cluster_identifier]")
      end
    end

    class StopDBClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopDBClusterOutput, context: context)
        Validators::DBCluster.validate!(input[:db_cluster], context: "#{context}[:db_cluster]") unless input[:db_cluster].nil?
      end
    end

    class StopDBInstanceAutomatedBackupsReplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopDBInstanceAutomatedBackupsReplicationInput, context: context)
        Hearth::Validator.validate!(input[:source_db_instance_arn], ::String, context: "#{context}[:source_db_instance_arn]")
      end
    end

    class StopDBInstanceAutomatedBackupsReplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopDBInstanceAutomatedBackupsReplicationOutput, context: context)
        Validators::DBInstanceAutomatedBackup.validate!(input[:db_instance_automated_backup], context: "#{context}[:db_instance_automated_backup]") unless input[:db_instance_automated_backup].nil?
      end
    end

    class StopDBInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopDBInstanceInput, context: context)
        Hearth::Validator.validate!(input[:db_instance_identifier], ::String, context: "#{context}[:db_instance_identifier]")
        Hearth::Validator.validate!(input[:db_snapshot_identifier], ::String, context: "#{context}[:db_snapshot_identifier]")
      end
    end

    class StopDBInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopDBInstanceOutput, context: context)
        Validators::DBInstance.validate!(input[:db_instance], context: "#{context}[:db_instance]") unless input[:db_instance].nil?
      end
    end

    class StorageQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StorageQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class StorageTypeNotSupportedFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StorageTypeNotSupportedFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
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

    class Subnet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Subnet, context: context)
        Hearth::Validator.validate!(input[:subnet_identifier], ::String, context: "#{context}[:subnet_identifier]")
        Validators::AvailabilityZone.validate!(input[:subnet_availability_zone], context: "#{context}[:subnet_availability_zone]") unless input[:subnet_availability_zone].nil?
        Validators::Outpost.validate!(input[:subnet_outpost], context: "#{context}[:subnet_outpost]") unless input[:subnet_outpost].nil?
        Hearth::Validator.validate!(input[:subnet_status], ::String, context: "#{context}[:subnet_status]")
      end
    end

    class SubnetAlreadyInUse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubnetAlreadyInUse, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SubnetIdentifierList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SubnetList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Subnet.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SubscriptionAlreadyExistFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubscriptionAlreadyExistFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SubscriptionCategoryNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubscriptionCategoryNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SubscriptionNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubscriptionNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SupportedCharacterSetsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CharacterSet.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SupportedTimezonesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Timezone.validate!(element, context: "#{context}[#{index}]") unless element.nil?
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

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TargetGroupList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DBProxyTargetGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TargetHealth
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TargetHealth, context: context)
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class TargetList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DBProxyTarget.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Timezone
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Timezone, context: context)
        Hearth::Validator.validate!(input[:timezone_name], ::String, context: "#{context}[:timezone_name]")
      end
    end

    class UpgradeTarget
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpgradeTarget, context: context)
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:auto_upgrade], ::TrueClass, ::FalseClass, context: "#{context}[:auto_upgrade]")
        Hearth::Validator.validate!(input[:is_major_version_upgrade], ::TrueClass, ::FalseClass, context: "#{context}[:is_major_version_upgrade]")
        Validators::EngineModeList.validate!(input[:supported_engine_modes], context: "#{context}[:supported_engine_modes]") unless input[:supported_engine_modes].nil?
        Hearth::Validator.validate!(input[:supports_parallel_query], ::TrueClass, ::FalseClass, context: "#{context}[:supports_parallel_query]")
        Hearth::Validator.validate!(input[:supports_global_databases], ::TrueClass, ::FalseClass, context: "#{context}[:supports_global_databases]")
        Hearth::Validator.validate!(input[:supports_babelfish], ::TrueClass, ::FalseClass, context: "#{context}[:supports_babelfish]")
      end
    end

    class UserAuthConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserAuthConfig, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:auth_scheme], ::String, context: "#{context}[:auth_scheme]")
        Hearth::Validator.validate!(input[:secret_arn], ::String, context: "#{context}[:secret_arn]")
        Hearth::Validator.validate!(input[:iam_auth], ::String, context: "#{context}[:iam_auth]")
      end
    end

    class UserAuthConfigInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserAuthConfigInfo, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:auth_scheme], ::String, context: "#{context}[:auth_scheme]")
        Hearth::Validator.validate!(input[:secret_arn], ::String, context: "#{context}[:secret_arn]")
        Hearth::Validator.validate!(input[:iam_auth], ::String, context: "#{context}[:iam_auth]")
      end
    end

    class UserAuthConfigInfoList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::UserAuthConfigInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UserAuthConfigList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::UserAuthConfig.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ValidDBInstanceModificationsMessage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidDBInstanceModificationsMessage, context: context)
        Validators::ValidStorageOptionsList.validate!(input[:storage], context: "#{context}[:storage]") unless input[:storage].nil?
        Validators::AvailableProcessorFeatureList.validate!(input[:valid_processor_features], context: "#{context}[:valid_processor_features]") unless input[:valid_processor_features].nil?
      end
    end

    class ValidStorageOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidStorageOptions, context: context)
        Hearth::Validator.validate!(input[:storage_type], ::String, context: "#{context}[:storage_type]")
        Validators::RangeList.validate!(input[:storage_size], context: "#{context}[:storage_size]") unless input[:storage_size].nil?
        Validators::RangeList.validate!(input[:provisioned_iops], context: "#{context}[:provisioned_iops]") unless input[:provisioned_iops].nil?
        Validators::DoubleRangeList.validate!(input[:iops_to_storage_ratio], context: "#{context}[:iops_to_storage_ratio]") unless input[:iops_to_storage_ratio].nil?
        Hearth::Validator.validate!(input[:supports_storage_autoscaling], ::TrueClass, ::FalseClass, context: "#{context}[:supports_storage_autoscaling]")
      end
    end

    class ValidStorageOptionsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ValidStorageOptions.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ValidUpgradeTargetList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::UpgradeTarget.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class VpcSecurityGroupIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class VpcSecurityGroupMembership
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VpcSecurityGroupMembership, context: context)
        Hearth::Validator.validate!(input[:vpc_security_group_id], ::String, context: "#{context}[:vpc_security_group_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class VpcSecurityGroupMembershipList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::VpcSecurityGroupMembership.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
