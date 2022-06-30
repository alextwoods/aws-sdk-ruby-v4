# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::RDS
  module Params

    module AccountQuota
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccountQuota, context: context)
        type = Types::AccountQuota.new
        type.account_quota_name = params[:account_quota_name]
        type.used = params[:used]
        type.max = params[:max]
        type
      end
    end

    module AccountQuotaList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AccountQuota.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ActivityStreamModeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AddRoleToDBClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddRoleToDBClusterInput, context: context)
        type = Types::AddRoleToDBClusterInput.new
        type.db_cluster_identifier = params[:db_cluster_identifier]
        type.role_arn = params[:role_arn]
        type.feature_name = params[:feature_name]
        type
      end
    end

    module AddRoleToDBClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddRoleToDBClusterOutput, context: context)
        type = Types::AddRoleToDBClusterOutput.new
        type
      end
    end

    module AddRoleToDBInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddRoleToDBInstanceInput, context: context)
        type = Types::AddRoleToDBInstanceInput.new
        type.db_instance_identifier = params[:db_instance_identifier]
        type.role_arn = params[:role_arn]
        type.feature_name = params[:feature_name]
        type
      end
    end

    module AddRoleToDBInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddRoleToDBInstanceOutput, context: context)
        type = Types::AddRoleToDBInstanceOutput.new
        type
      end
    end

    module AddSourceIdentifierToSubscriptionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddSourceIdentifierToSubscriptionInput, context: context)
        type = Types::AddSourceIdentifierToSubscriptionInput.new
        type.subscription_name = params[:subscription_name]
        type.source_identifier = params[:source_identifier]
        type
      end
    end

    module AddSourceIdentifierToSubscriptionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddSourceIdentifierToSubscriptionOutput, context: context)
        type = Types::AddSourceIdentifierToSubscriptionOutput.new
        type.event_subscription = EventSubscription.build(params[:event_subscription], context: "#{context}[:event_subscription]") unless params[:event_subscription].nil?
        type
      end
    end

    module AddTagsToResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddTagsToResourceInput, context: context)
        type = Types::AddTagsToResourceInput.new
        type.resource_name = params[:resource_name]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module AddTagsToResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddTagsToResourceOutput, context: context)
        type = Types::AddTagsToResourceOutput.new
        type
      end
    end

    module ApplyPendingMaintenanceActionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplyPendingMaintenanceActionInput, context: context)
        type = Types::ApplyPendingMaintenanceActionInput.new
        type.resource_identifier = params[:resource_identifier]
        type.apply_action = params[:apply_action]
        type.opt_in_type = params[:opt_in_type]
        type
      end
    end

    module ApplyPendingMaintenanceActionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplyPendingMaintenanceActionOutput, context: context)
        type = Types::ApplyPendingMaintenanceActionOutput.new
        type.resource_pending_maintenance_actions = ResourcePendingMaintenanceActions.build(params[:resource_pending_maintenance_actions], context: "#{context}[:resource_pending_maintenance_actions]") unless params[:resource_pending_maintenance_actions].nil?
        type
      end
    end

    module AttributeValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AuthorizationAlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuthorizationAlreadyExistsFault, context: context)
        type = Types::AuthorizationAlreadyExistsFault.new
        type.message = params[:message]
        type
      end
    end

    module AuthorizationNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuthorizationNotFoundFault, context: context)
        type = Types::AuthorizationNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module AuthorizationQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuthorizationQuotaExceededFault, context: context)
        type = Types::AuthorizationQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module AuthorizeDBSecurityGroupIngressInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuthorizeDBSecurityGroupIngressInput, context: context)
        type = Types::AuthorizeDBSecurityGroupIngressInput.new
        type.db_security_group_name = params[:db_security_group_name]
        type.cidrip = params[:cidrip]
        type.ec2_security_group_name = params[:ec2_security_group_name]
        type.ec2_security_group_id = params[:ec2_security_group_id]
        type.ec2_security_group_owner_id = params[:ec2_security_group_owner_id]
        type
      end
    end

    module AuthorizeDBSecurityGroupIngressOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuthorizeDBSecurityGroupIngressOutput, context: context)
        type = Types::AuthorizeDBSecurityGroupIngressOutput.new
        type.db_security_group = DBSecurityGroup.build(params[:db_security_group], context: "#{context}[:db_security_group]") unless params[:db_security_group].nil?
        type
      end
    end

    module AvailabilityZone
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AvailabilityZone, context: context)
        type = Types::AvailabilityZone.new
        type.name = params[:name]
        type
      end
    end

    module AvailabilityZoneList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AvailabilityZone.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AvailabilityZones
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AvailableProcessorFeature
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AvailableProcessorFeature, context: context)
        type = Types::AvailableProcessorFeature.new
        type.name = params[:name]
        type.default_value = params[:default_value]
        type.allowed_values = params[:allowed_values]
        type
      end
    end

    module AvailableProcessorFeatureList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AvailableProcessorFeature.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BacktrackDBClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BacktrackDBClusterInput, context: context)
        type = Types::BacktrackDBClusterInput.new
        type.db_cluster_identifier = params[:db_cluster_identifier]
        type.backtrack_to = params[:backtrack_to]
        type.force = params[:force]
        type.use_earliest_time_on_point_in_time_unavailable = params[:use_earliest_time_on_point_in_time_unavailable]
        type
      end
    end

    module BacktrackDBClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BacktrackDBClusterOutput, context: context)
        type = Types::BacktrackDBClusterOutput.new
        type.db_cluster_identifier = params[:db_cluster_identifier]
        type.backtrack_identifier = params[:backtrack_identifier]
        type.backtrack_to = params[:backtrack_to]
        type.backtracked_from = params[:backtracked_from]
        type.backtrack_request_creation_time = params[:backtrack_request_creation_time]
        type.status = params[:status]
        type
      end
    end

    module BackupPolicyNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BackupPolicyNotFoundFault, context: context)
        type = Types::BackupPolicyNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module CancelExportTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelExportTaskInput, context: context)
        type = Types::CancelExportTaskInput.new
        type.export_task_identifier = params[:export_task_identifier]
        type
      end
    end

    module CancelExportTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelExportTaskOutput, context: context)
        type = Types::CancelExportTaskOutput.new
        type.export_task_identifier = params[:export_task_identifier]
        type.source_arn = params[:source_arn]
        type.export_only = StringList.build(params[:export_only], context: "#{context}[:export_only]") unless params[:export_only].nil?
        type.snapshot_time = params[:snapshot_time]
        type.task_start_time = params[:task_start_time]
        type.task_end_time = params[:task_end_time]
        type.s3_bucket = params[:s3_bucket]
        type.s3_prefix = params[:s3_prefix]
        type.iam_role_arn = params[:iam_role_arn]
        type.kms_key_id = params[:kms_key_id]
        type.status = params[:status]
        type.percent_progress = params[:percent_progress]
        type.total_extracted_data_in_gb = params[:total_extracted_data_in_gb]
        type.failure_cause = params[:failure_cause]
        type.warning_message = params[:warning_message]
        type
      end
    end

    module Certificate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Certificate, context: context)
        type = Types::Certificate.new
        type.certificate_identifier = params[:certificate_identifier]
        type.certificate_type = params[:certificate_type]
        type.thumbprint = params[:thumbprint]
        type.valid_from = params[:valid_from]
        type.valid_till = params[:valid_till]
        type.certificate_arn = params[:certificate_arn]
        type.customer_override = params[:customer_override]
        type.customer_override_valid_till = params[:customer_override_valid_till]
        type
      end
    end

    module CertificateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Certificate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CertificateNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CertificateNotFoundFault, context: context)
        type = Types::CertificateNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module CharacterSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CharacterSet, context: context)
        type = Types::CharacterSet.new
        type.character_set_name = params[:character_set_name]
        type.character_set_description = params[:character_set_description]
        type
      end
    end

    module CloudwatchLogsExportConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudwatchLogsExportConfiguration, context: context)
        type = Types::CloudwatchLogsExportConfiguration.new
        type.enable_log_types = LogTypeList.build(params[:enable_log_types], context: "#{context}[:enable_log_types]") unless params[:enable_log_types].nil?
        type.disable_log_types = LogTypeList.build(params[:disable_log_types], context: "#{context}[:disable_log_types]") unless params[:disable_log_types].nil?
        type
      end
    end

    module ClusterPendingModifiedValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClusterPendingModifiedValues, context: context)
        type = Types::ClusterPendingModifiedValues.new
        type.pending_cloudwatch_logs_exports = PendingCloudwatchLogsExports.build(params[:pending_cloudwatch_logs_exports], context: "#{context}[:pending_cloudwatch_logs_exports]") unless params[:pending_cloudwatch_logs_exports].nil?
        type.db_cluster_identifier = params[:db_cluster_identifier]
        type.master_user_password = params[:master_user_password]
        type.iam_database_authentication_enabled = params[:iam_database_authentication_enabled]
        type.engine_version = params[:engine_version]
        type
      end
    end

    module ConnectionPoolConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectionPoolConfiguration, context: context)
        type = Types::ConnectionPoolConfiguration.new
        type.max_connections_percent = params[:max_connections_percent]
        type.max_idle_connections_percent = params[:max_idle_connections_percent]
        type.connection_borrow_timeout = params[:connection_borrow_timeout]
        type.session_pinning_filters = StringList.build(params[:session_pinning_filters], context: "#{context}[:session_pinning_filters]") unless params[:session_pinning_filters].nil?
        type.init_query = params[:init_query]
        type
      end
    end

    module ConnectionPoolConfigurationInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectionPoolConfigurationInfo, context: context)
        type = Types::ConnectionPoolConfigurationInfo.new
        type.max_connections_percent = params[:max_connections_percent]
        type.max_idle_connections_percent = params[:max_idle_connections_percent]
        type.connection_borrow_timeout = params[:connection_borrow_timeout]
        type.session_pinning_filters = StringList.build(params[:session_pinning_filters], context: "#{context}[:session_pinning_filters]") unless params[:session_pinning_filters].nil?
        type.init_query = params[:init_query]
        type
      end
    end

    module CopyDBClusterParameterGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CopyDBClusterParameterGroupInput, context: context)
        type = Types::CopyDBClusterParameterGroupInput.new
        type.source_db_cluster_parameter_group_identifier = params[:source_db_cluster_parameter_group_identifier]
        type.target_db_cluster_parameter_group_identifier = params[:target_db_cluster_parameter_group_identifier]
        type.target_db_cluster_parameter_group_description = params[:target_db_cluster_parameter_group_description]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CopyDBClusterParameterGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CopyDBClusterParameterGroupOutput, context: context)
        type = Types::CopyDBClusterParameterGroupOutput.new
        type.db_cluster_parameter_group = DBClusterParameterGroup.build(params[:db_cluster_parameter_group], context: "#{context}[:db_cluster_parameter_group]") unless params[:db_cluster_parameter_group].nil?
        type
      end
    end

    module CopyDBClusterSnapshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CopyDBClusterSnapshotInput, context: context)
        type = Types::CopyDBClusterSnapshotInput.new
        type.source_db_cluster_snapshot_identifier = params[:source_db_cluster_snapshot_identifier]
        type.target_db_cluster_snapshot_identifier = params[:target_db_cluster_snapshot_identifier]
        type.kms_key_id = params[:kms_key_id]
        type.pre_signed_url = params[:pre_signed_url]
        type.copy_tags = params[:copy_tags]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CopyDBClusterSnapshotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CopyDBClusterSnapshotOutput, context: context)
        type = Types::CopyDBClusterSnapshotOutput.new
        type.db_cluster_snapshot = DBClusterSnapshot.build(params[:db_cluster_snapshot], context: "#{context}[:db_cluster_snapshot]") unless params[:db_cluster_snapshot].nil?
        type
      end
    end

    module CopyDBParameterGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CopyDBParameterGroupInput, context: context)
        type = Types::CopyDBParameterGroupInput.new
        type.source_db_parameter_group_identifier = params[:source_db_parameter_group_identifier]
        type.target_db_parameter_group_identifier = params[:target_db_parameter_group_identifier]
        type.target_db_parameter_group_description = params[:target_db_parameter_group_description]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CopyDBParameterGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CopyDBParameterGroupOutput, context: context)
        type = Types::CopyDBParameterGroupOutput.new
        type.db_parameter_group = DBParameterGroup.build(params[:db_parameter_group], context: "#{context}[:db_parameter_group]") unless params[:db_parameter_group].nil?
        type
      end
    end

    module CopyDBSnapshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CopyDBSnapshotInput, context: context)
        type = Types::CopyDBSnapshotInput.new
        type.source_db_snapshot_identifier = params[:source_db_snapshot_identifier]
        type.target_db_snapshot_identifier = params[:target_db_snapshot_identifier]
        type.kms_key_id = params[:kms_key_id]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.copy_tags = params[:copy_tags]
        type.pre_signed_url = params[:pre_signed_url]
        type.option_group_name = params[:option_group_name]
        type.target_custom_availability_zone = params[:target_custom_availability_zone]
        type
      end
    end

    module CopyDBSnapshotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CopyDBSnapshotOutput, context: context)
        type = Types::CopyDBSnapshotOutput.new
        type.db_snapshot = DBSnapshot.build(params[:db_snapshot], context: "#{context}[:db_snapshot]") unless params[:db_snapshot].nil?
        type
      end
    end

    module CopyOptionGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CopyOptionGroupInput, context: context)
        type = Types::CopyOptionGroupInput.new
        type.source_option_group_identifier = params[:source_option_group_identifier]
        type.target_option_group_identifier = params[:target_option_group_identifier]
        type.target_option_group_description = params[:target_option_group_description]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CopyOptionGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CopyOptionGroupOutput, context: context)
        type = Types::CopyOptionGroupOutput.new
        type.option_group = OptionGroup.build(params[:option_group], context: "#{context}[:option_group]") unless params[:option_group].nil?
        type
      end
    end

    module CreateCustomDBEngineVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCustomDBEngineVersionInput, context: context)
        type = Types::CreateCustomDBEngineVersionInput.new
        type.engine = params[:engine]
        type.engine_version = params[:engine_version]
        type.database_installation_files_s3_bucket_name = params[:database_installation_files_s3_bucket_name]
        type.database_installation_files_s3_prefix = params[:database_installation_files_s3_prefix]
        type.kms_key_id = params[:kms_key_id]
        type.description = params[:description]
        type.manifest = params[:manifest]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateCustomDBEngineVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCustomDBEngineVersionOutput, context: context)
        type = Types::CreateCustomDBEngineVersionOutput.new
        type.engine = params[:engine]
        type.engine_version = params[:engine_version]
        type.db_parameter_group_family = params[:db_parameter_group_family]
        type.db_engine_description = params[:db_engine_description]
        type.db_engine_version_description = params[:db_engine_version_description]
        type.default_character_set = CharacterSet.build(params[:default_character_set], context: "#{context}[:default_character_set]") unless params[:default_character_set].nil?
        type.supported_character_sets = SupportedCharacterSetsList.build(params[:supported_character_sets], context: "#{context}[:supported_character_sets]") unless params[:supported_character_sets].nil?
        type.supported_nchar_character_sets = SupportedCharacterSetsList.build(params[:supported_nchar_character_sets], context: "#{context}[:supported_nchar_character_sets]") unless params[:supported_nchar_character_sets].nil?
        type.valid_upgrade_target = ValidUpgradeTargetList.build(params[:valid_upgrade_target], context: "#{context}[:valid_upgrade_target]") unless params[:valid_upgrade_target].nil?
        type.supported_timezones = SupportedTimezonesList.build(params[:supported_timezones], context: "#{context}[:supported_timezones]") unless params[:supported_timezones].nil?
        type.exportable_log_types = LogTypeList.build(params[:exportable_log_types], context: "#{context}[:exportable_log_types]") unless params[:exportable_log_types].nil?
        type.supports_log_exports_to_cloudwatch_logs = params[:supports_log_exports_to_cloudwatch_logs]
        type.supports_read_replica = params[:supports_read_replica]
        type.supported_engine_modes = EngineModeList.build(params[:supported_engine_modes], context: "#{context}[:supported_engine_modes]") unless params[:supported_engine_modes].nil?
        type.supported_feature_names = FeatureNameList.build(params[:supported_feature_names], context: "#{context}[:supported_feature_names]") unless params[:supported_feature_names].nil?
        type.status = params[:status]
        type.supports_parallel_query = params[:supports_parallel_query]
        type.supports_global_databases = params[:supports_global_databases]
        type.major_engine_version = params[:major_engine_version]
        type.database_installation_files_s3_bucket_name = params[:database_installation_files_s3_bucket_name]
        type.database_installation_files_s3_prefix = params[:database_installation_files_s3_prefix]
        type.db_engine_version_arn = params[:db_engine_version_arn]
        type.kms_key_id = params[:kms_key_id]
        type.create_time = params[:create_time]
        type.tag_list = TagList.build(params[:tag_list], context: "#{context}[:tag_list]") unless params[:tag_list].nil?
        type.supports_babelfish = params[:supports_babelfish]
        type
      end
    end

    module CreateDBClusterEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDBClusterEndpointInput, context: context)
        type = Types::CreateDBClusterEndpointInput.new
        type.db_cluster_identifier = params[:db_cluster_identifier]
        type.db_cluster_endpoint_identifier = params[:db_cluster_endpoint_identifier]
        type.endpoint_type = params[:endpoint_type]
        type.static_members = StringList.build(params[:static_members], context: "#{context}[:static_members]") unless params[:static_members].nil?
        type.excluded_members = StringList.build(params[:excluded_members], context: "#{context}[:excluded_members]") unless params[:excluded_members].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateDBClusterEndpointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDBClusterEndpointOutput, context: context)
        type = Types::CreateDBClusterEndpointOutput.new
        type.db_cluster_endpoint_identifier = params[:db_cluster_endpoint_identifier]
        type.db_cluster_identifier = params[:db_cluster_identifier]
        type.db_cluster_endpoint_resource_identifier = params[:db_cluster_endpoint_resource_identifier]
        type.endpoint = params[:endpoint]
        type.status = params[:status]
        type.endpoint_type = params[:endpoint_type]
        type.custom_endpoint_type = params[:custom_endpoint_type]
        type.static_members = StringList.build(params[:static_members], context: "#{context}[:static_members]") unless params[:static_members].nil?
        type.excluded_members = StringList.build(params[:excluded_members], context: "#{context}[:excluded_members]") unless params[:excluded_members].nil?
        type.db_cluster_endpoint_arn = params[:db_cluster_endpoint_arn]
        type
      end
    end

    module CreateDBClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDBClusterInput, context: context)
        type = Types::CreateDBClusterInput.new
        type.availability_zones = AvailabilityZones.build(params[:availability_zones], context: "#{context}[:availability_zones]") unless params[:availability_zones].nil?
        type.backup_retention_period = params[:backup_retention_period]
        type.character_set_name = params[:character_set_name]
        type.database_name = params[:database_name]
        type.db_cluster_identifier = params[:db_cluster_identifier]
        type.db_cluster_parameter_group_name = params[:db_cluster_parameter_group_name]
        type.vpc_security_group_ids = VpcSecurityGroupIdList.build(params[:vpc_security_group_ids], context: "#{context}[:vpc_security_group_ids]") unless params[:vpc_security_group_ids].nil?
        type.db_subnet_group_name = params[:db_subnet_group_name]
        type.engine = params[:engine]
        type.engine_version = params[:engine_version]
        type.port = params[:port]
        type.master_username = params[:master_username]
        type.master_user_password = params[:master_user_password]
        type.option_group_name = params[:option_group_name]
        type.preferred_backup_window = params[:preferred_backup_window]
        type.preferred_maintenance_window = params[:preferred_maintenance_window]
        type.replication_source_identifier = params[:replication_source_identifier]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.storage_encrypted = params[:storage_encrypted]
        type.kms_key_id = params[:kms_key_id]
        type.pre_signed_url = params[:pre_signed_url]
        type.enable_iam_database_authentication = params[:enable_iam_database_authentication]
        type.backtrack_window = params[:backtrack_window]
        type.enable_cloudwatch_logs_exports = LogTypeList.build(params[:enable_cloudwatch_logs_exports], context: "#{context}[:enable_cloudwatch_logs_exports]") unless params[:enable_cloudwatch_logs_exports].nil?
        type.engine_mode = params[:engine_mode]
        type.scaling_configuration = ScalingConfiguration.build(params[:scaling_configuration], context: "#{context}[:scaling_configuration]") unless params[:scaling_configuration].nil?
        type.deletion_protection = params[:deletion_protection]
        type.global_cluster_identifier = params[:global_cluster_identifier]
        type.enable_http_endpoint = params[:enable_http_endpoint]
        type.copy_tags_to_snapshot = params[:copy_tags_to_snapshot]
        type.domain = params[:domain]
        type.domain_iam_role_name = params[:domain_iam_role_name]
        type.enable_global_write_forwarding = params[:enable_global_write_forwarding]
        type.db_cluster_instance_class = params[:db_cluster_instance_class]
        type.allocated_storage = params[:allocated_storage]
        type.storage_type = params[:storage_type]
        type.iops = params[:iops]
        type.publicly_accessible = params[:publicly_accessible]
        type.auto_minor_version_upgrade = params[:auto_minor_version_upgrade]
        type.monitoring_interval = params[:monitoring_interval]
        type.monitoring_role_arn = params[:monitoring_role_arn]
        type.enable_performance_insights = params[:enable_performance_insights]
        type.performance_insights_kms_key_id = params[:performance_insights_kms_key_id]
        type.performance_insights_retention_period = params[:performance_insights_retention_period]
        type.serverless_v2_scaling_configuration = ServerlessV2ScalingConfiguration.build(params[:serverless_v2_scaling_configuration], context: "#{context}[:serverless_v2_scaling_configuration]") unless params[:serverless_v2_scaling_configuration].nil?
        type
      end
    end

    module CreateDBClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDBClusterOutput, context: context)
        type = Types::CreateDBClusterOutput.new
        type.db_cluster = DBCluster.build(params[:db_cluster], context: "#{context}[:db_cluster]") unless params[:db_cluster].nil?
        type
      end
    end

    module CreateDBClusterParameterGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDBClusterParameterGroupInput, context: context)
        type = Types::CreateDBClusterParameterGroupInput.new
        type.db_cluster_parameter_group_name = params[:db_cluster_parameter_group_name]
        type.db_parameter_group_family = params[:db_parameter_group_family]
        type.description = params[:description]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateDBClusterParameterGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDBClusterParameterGroupOutput, context: context)
        type = Types::CreateDBClusterParameterGroupOutput.new
        type.db_cluster_parameter_group = DBClusterParameterGroup.build(params[:db_cluster_parameter_group], context: "#{context}[:db_cluster_parameter_group]") unless params[:db_cluster_parameter_group].nil?
        type
      end
    end

    module CreateDBClusterSnapshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDBClusterSnapshotInput, context: context)
        type = Types::CreateDBClusterSnapshotInput.new
        type.db_cluster_snapshot_identifier = params[:db_cluster_snapshot_identifier]
        type.db_cluster_identifier = params[:db_cluster_identifier]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateDBClusterSnapshotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDBClusterSnapshotOutput, context: context)
        type = Types::CreateDBClusterSnapshotOutput.new
        type.db_cluster_snapshot = DBClusterSnapshot.build(params[:db_cluster_snapshot], context: "#{context}[:db_cluster_snapshot]") unless params[:db_cluster_snapshot].nil?
        type
      end
    end

    module CreateDBInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDBInstanceInput, context: context)
        type = Types::CreateDBInstanceInput.new
        type.db_name = params[:db_name]
        type.db_instance_identifier = params[:db_instance_identifier]
        type.allocated_storage = params[:allocated_storage]
        type.db_instance_class = params[:db_instance_class]
        type.engine = params[:engine]
        type.master_username = params[:master_username]
        type.master_user_password = params[:master_user_password]
        type.db_security_groups = DBSecurityGroupNameList.build(params[:db_security_groups], context: "#{context}[:db_security_groups]") unless params[:db_security_groups].nil?
        type.vpc_security_group_ids = VpcSecurityGroupIdList.build(params[:vpc_security_group_ids], context: "#{context}[:vpc_security_group_ids]") unless params[:vpc_security_group_ids].nil?
        type.availability_zone = params[:availability_zone]
        type.db_subnet_group_name = params[:db_subnet_group_name]
        type.preferred_maintenance_window = params[:preferred_maintenance_window]
        type.db_parameter_group_name = params[:db_parameter_group_name]
        type.backup_retention_period = params[:backup_retention_period]
        type.preferred_backup_window = params[:preferred_backup_window]
        type.port = params[:port]
        type.multi_az = params[:multi_az]
        type.engine_version = params[:engine_version]
        type.auto_minor_version_upgrade = params[:auto_minor_version_upgrade]
        type.license_model = params[:license_model]
        type.iops = params[:iops]
        type.option_group_name = params[:option_group_name]
        type.character_set_name = params[:character_set_name]
        type.nchar_character_set_name = params[:nchar_character_set_name]
        type.publicly_accessible = params[:publicly_accessible]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.db_cluster_identifier = params[:db_cluster_identifier]
        type.storage_type = params[:storage_type]
        type.tde_credential_arn = params[:tde_credential_arn]
        type.tde_credential_password = params[:tde_credential_password]
        type.storage_encrypted = params[:storage_encrypted]
        type.kms_key_id = params[:kms_key_id]
        type.domain = params[:domain]
        type.copy_tags_to_snapshot = params[:copy_tags_to_snapshot]
        type.monitoring_interval = params[:monitoring_interval]
        type.monitoring_role_arn = params[:monitoring_role_arn]
        type.domain_iam_role_name = params[:domain_iam_role_name]
        type.promotion_tier = params[:promotion_tier]
        type.timezone = params[:timezone]
        type.enable_iam_database_authentication = params[:enable_iam_database_authentication]
        type.enable_performance_insights = params[:enable_performance_insights]
        type.performance_insights_kms_key_id = params[:performance_insights_kms_key_id]
        type.performance_insights_retention_period = params[:performance_insights_retention_period]
        type.enable_cloudwatch_logs_exports = LogTypeList.build(params[:enable_cloudwatch_logs_exports], context: "#{context}[:enable_cloudwatch_logs_exports]") unless params[:enable_cloudwatch_logs_exports].nil?
        type.processor_features = ProcessorFeatureList.build(params[:processor_features], context: "#{context}[:processor_features]") unless params[:processor_features].nil?
        type.deletion_protection = params[:deletion_protection]
        type.max_allocated_storage = params[:max_allocated_storage]
        type.enable_customer_owned_ip = params[:enable_customer_owned_ip]
        type.custom_iam_instance_profile = params[:custom_iam_instance_profile]
        type.backup_target = params[:backup_target]
        type.network_type = params[:network_type]
        type
      end
    end

    module CreateDBInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDBInstanceOutput, context: context)
        type = Types::CreateDBInstanceOutput.new
        type.db_instance = DBInstance.build(params[:db_instance], context: "#{context}[:db_instance]") unless params[:db_instance].nil?
        type
      end
    end

    module CreateDBInstanceReadReplicaInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDBInstanceReadReplicaInput, context: context)
        type = Types::CreateDBInstanceReadReplicaInput.new
        type.db_instance_identifier = params[:db_instance_identifier]
        type.source_db_instance_identifier = params[:source_db_instance_identifier]
        type.db_instance_class = params[:db_instance_class]
        type.availability_zone = params[:availability_zone]
        type.port = params[:port]
        type.multi_az = params[:multi_az]
        type.auto_minor_version_upgrade = params[:auto_minor_version_upgrade]
        type.iops = params[:iops]
        type.option_group_name = params[:option_group_name]
        type.db_parameter_group_name = params[:db_parameter_group_name]
        type.publicly_accessible = params[:publicly_accessible]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.db_subnet_group_name = params[:db_subnet_group_name]
        type.vpc_security_group_ids = VpcSecurityGroupIdList.build(params[:vpc_security_group_ids], context: "#{context}[:vpc_security_group_ids]") unless params[:vpc_security_group_ids].nil?
        type.storage_type = params[:storage_type]
        type.copy_tags_to_snapshot = params[:copy_tags_to_snapshot]
        type.monitoring_interval = params[:monitoring_interval]
        type.monitoring_role_arn = params[:monitoring_role_arn]
        type.kms_key_id = params[:kms_key_id]
        type.pre_signed_url = params[:pre_signed_url]
        type.enable_iam_database_authentication = params[:enable_iam_database_authentication]
        type.enable_performance_insights = params[:enable_performance_insights]
        type.performance_insights_kms_key_id = params[:performance_insights_kms_key_id]
        type.performance_insights_retention_period = params[:performance_insights_retention_period]
        type.enable_cloudwatch_logs_exports = LogTypeList.build(params[:enable_cloudwatch_logs_exports], context: "#{context}[:enable_cloudwatch_logs_exports]") unless params[:enable_cloudwatch_logs_exports].nil?
        type.processor_features = ProcessorFeatureList.build(params[:processor_features], context: "#{context}[:processor_features]") unless params[:processor_features].nil?
        type.use_default_processor_features = params[:use_default_processor_features]
        type.deletion_protection = params[:deletion_protection]
        type.domain = params[:domain]
        type.domain_iam_role_name = params[:domain_iam_role_name]
        type.replica_mode = params[:replica_mode]
        type.max_allocated_storage = params[:max_allocated_storage]
        type.custom_iam_instance_profile = params[:custom_iam_instance_profile]
        type.network_type = params[:network_type]
        type
      end
    end

    module CreateDBInstanceReadReplicaOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDBInstanceReadReplicaOutput, context: context)
        type = Types::CreateDBInstanceReadReplicaOutput.new
        type.db_instance = DBInstance.build(params[:db_instance], context: "#{context}[:db_instance]") unless params[:db_instance].nil?
        type
      end
    end

    module CreateDBParameterGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDBParameterGroupInput, context: context)
        type = Types::CreateDBParameterGroupInput.new
        type.db_parameter_group_name = params[:db_parameter_group_name]
        type.db_parameter_group_family = params[:db_parameter_group_family]
        type.description = params[:description]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateDBParameterGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDBParameterGroupOutput, context: context)
        type = Types::CreateDBParameterGroupOutput.new
        type.db_parameter_group = DBParameterGroup.build(params[:db_parameter_group], context: "#{context}[:db_parameter_group]") unless params[:db_parameter_group].nil?
        type
      end
    end

    module CreateDBProxyEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDBProxyEndpointInput, context: context)
        type = Types::CreateDBProxyEndpointInput.new
        type.db_proxy_name = params[:db_proxy_name]
        type.db_proxy_endpoint_name = params[:db_proxy_endpoint_name]
        type.vpc_subnet_ids = StringList.build(params[:vpc_subnet_ids], context: "#{context}[:vpc_subnet_ids]") unless params[:vpc_subnet_ids].nil?
        type.vpc_security_group_ids = StringList.build(params[:vpc_security_group_ids], context: "#{context}[:vpc_security_group_ids]") unless params[:vpc_security_group_ids].nil?
        type.target_role = params[:target_role]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateDBProxyEndpointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDBProxyEndpointOutput, context: context)
        type = Types::CreateDBProxyEndpointOutput.new
        type.db_proxy_endpoint = DBProxyEndpoint.build(params[:db_proxy_endpoint], context: "#{context}[:db_proxy_endpoint]") unless params[:db_proxy_endpoint].nil?
        type
      end
    end

    module CreateDBProxyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDBProxyInput, context: context)
        type = Types::CreateDBProxyInput.new
        type.db_proxy_name = params[:db_proxy_name]
        type.engine_family = params[:engine_family]
        type.auth = UserAuthConfigList.build(params[:auth], context: "#{context}[:auth]") unless params[:auth].nil?
        type.role_arn = params[:role_arn]
        type.vpc_subnet_ids = StringList.build(params[:vpc_subnet_ids], context: "#{context}[:vpc_subnet_ids]") unless params[:vpc_subnet_ids].nil?
        type.vpc_security_group_ids = StringList.build(params[:vpc_security_group_ids], context: "#{context}[:vpc_security_group_ids]") unless params[:vpc_security_group_ids].nil?
        type.require_tls = params[:require_tls]
        type.idle_client_timeout = params[:idle_client_timeout]
        type.debug_logging = params[:debug_logging]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateDBProxyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDBProxyOutput, context: context)
        type = Types::CreateDBProxyOutput.new
        type.db_proxy = DBProxy.build(params[:db_proxy], context: "#{context}[:db_proxy]") unless params[:db_proxy].nil?
        type
      end
    end

    module CreateDBSecurityGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDBSecurityGroupInput, context: context)
        type = Types::CreateDBSecurityGroupInput.new
        type.db_security_group_name = params[:db_security_group_name]
        type.db_security_group_description = params[:db_security_group_description]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateDBSecurityGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDBSecurityGroupOutput, context: context)
        type = Types::CreateDBSecurityGroupOutput.new
        type.db_security_group = DBSecurityGroup.build(params[:db_security_group], context: "#{context}[:db_security_group]") unless params[:db_security_group].nil?
        type
      end
    end

    module CreateDBSnapshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDBSnapshotInput, context: context)
        type = Types::CreateDBSnapshotInput.new
        type.db_snapshot_identifier = params[:db_snapshot_identifier]
        type.db_instance_identifier = params[:db_instance_identifier]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateDBSnapshotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDBSnapshotOutput, context: context)
        type = Types::CreateDBSnapshotOutput.new
        type.db_snapshot = DBSnapshot.build(params[:db_snapshot], context: "#{context}[:db_snapshot]") unless params[:db_snapshot].nil?
        type
      end
    end

    module CreateDBSubnetGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDBSubnetGroupInput, context: context)
        type = Types::CreateDBSubnetGroupInput.new
        type.db_subnet_group_name = params[:db_subnet_group_name]
        type.db_subnet_group_description = params[:db_subnet_group_description]
        type.subnet_ids = SubnetIdentifierList.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateDBSubnetGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDBSubnetGroupOutput, context: context)
        type = Types::CreateDBSubnetGroupOutput.new
        type.db_subnet_group = DBSubnetGroup.build(params[:db_subnet_group], context: "#{context}[:db_subnet_group]") unless params[:db_subnet_group].nil?
        type
      end
    end

    module CreateEventSubscriptionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEventSubscriptionInput, context: context)
        type = Types::CreateEventSubscriptionInput.new
        type.subscription_name = params[:subscription_name]
        type.sns_topic_arn = params[:sns_topic_arn]
        type.source_type = params[:source_type]
        type.event_categories = EventCategoriesList.build(params[:event_categories], context: "#{context}[:event_categories]") unless params[:event_categories].nil?
        type.source_ids = SourceIdsList.build(params[:source_ids], context: "#{context}[:source_ids]") unless params[:source_ids].nil?
        type.enabled = params[:enabled]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateEventSubscriptionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEventSubscriptionOutput, context: context)
        type = Types::CreateEventSubscriptionOutput.new
        type.event_subscription = EventSubscription.build(params[:event_subscription], context: "#{context}[:event_subscription]") unless params[:event_subscription].nil?
        type
      end
    end

    module CreateGlobalClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGlobalClusterInput, context: context)
        type = Types::CreateGlobalClusterInput.new
        type.global_cluster_identifier = params[:global_cluster_identifier]
        type.source_db_cluster_identifier = params[:source_db_cluster_identifier]
        type.engine = params[:engine]
        type.engine_version = params[:engine_version]
        type.deletion_protection = params[:deletion_protection]
        type.database_name = params[:database_name]
        type.storage_encrypted = params[:storage_encrypted]
        type
      end
    end

    module CreateGlobalClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGlobalClusterOutput, context: context)
        type = Types::CreateGlobalClusterOutput.new
        type.global_cluster = GlobalCluster.build(params[:global_cluster], context: "#{context}[:global_cluster]") unless params[:global_cluster].nil?
        type
      end
    end

    module CreateOptionGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateOptionGroupInput, context: context)
        type = Types::CreateOptionGroupInput.new
        type.option_group_name = params[:option_group_name]
        type.engine_name = params[:engine_name]
        type.major_engine_version = params[:major_engine_version]
        type.option_group_description = params[:option_group_description]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateOptionGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateOptionGroupOutput, context: context)
        type = Types::CreateOptionGroupOutput.new
        type.option_group = OptionGroup.build(params[:option_group], context: "#{context}[:option_group]") unless params[:option_group].nil?
        type
      end
    end

    module CustomAvailabilityZoneNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomAvailabilityZoneNotFoundFault, context: context)
        type = Types::CustomAvailabilityZoneNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module CustomDBEngineVersionAlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomDBEngineVersionAlreadyExistsFault, context: context)
        type = Types::CustomDBEngineVersionAlreadyExistsFault.new
        type.message = params[:message]
        type
      end
    end

    module CustomDBEngineVersionNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomDBEngineVersionNotFoundFault, context: context)
        type = Types::CustomDBEngineVersionNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module CustomDBEngineVersionQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomDBEngineVersionQuotaExceededFault, context: context)
        type = Types::CustomDBEngineVersionQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module DBCluster
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBCluster, context: context)
        type = Types::DBCluster.new
        type.allocated_storage = params[:allocated_storage]
        type.availability_zones = AvailabilityZones.build(params[:availability_zones], context: "#{context}[:availability_zones]") unless params[:availability_zones].nil?
        type.backup_retention_period = params[:backup_retention_period]
        type.character_set_name = params[:character_set_name]
        type.database_name = params[:database_name]
        type.db_cluster_identifier = params[:db_cluster_identifier]
        type.db_cluster_parameter_group = params[:db_cluster_parameter_group]
        type.db_subnet_group = params[:db_subnet_group]
        type.status = params[:status]
        type.automatic_restart_time = params[:automatic_restart_time]
        type.percent_progress = params[:percent_progress]
        type.earliest_restorable_time = params[:earliest_restorable_time]
        type.endpoint = params[:endpoint]
        type.reader_endpoint = params[:reader_endpoint]
        type.custom_endpoints = StringList.build(params[:custom_endpoints], context: "#{context}[:custom_endpoints]") unless params[:custom_endpoints].nil?
        type.multi_az = params[:multi_az]
        type.engine = params[:engine]
        type.engine_version = params[:engine_version]
        type.latest_restorable_time = params[:latest_restorable_time]
        type.port = params[:port]
        type.master_username = params[:master_username]
        type.db_cluster_option_group_memberships = DBClusterOptionGroupMemberships.build(params[:db_cluster_option_group_memberships], context: "#{context}[:db_cluster_option_group_memberships]") unless params[:db_cluster_option_group_memberships].nil?
        type.preferred_backup_window = params[:preferred_backup_window]
        type.preferred_maintenance_window = params[:preferred_maintenance_window]
        type.replication_source_identifier = params[:replication_source_identifier]
        type.read_replica_identifiers = ReadReplicaIdentifierList.build(params[:read_replica_identifiers], context: "#{context}[:read_replica_identifiers]") unless params[:read_replica_identifiers].nil?
        type.db_cluster_members = DBClusterMemberList.build(params[:db_cluster_members], context: "#{context}[:db_cluster_members]") unless params[:db_cluster_members].nil?
        type.vpc_security_groups = VpcSecurityGroupMembershipList.build(params[:vpc_security_groups], context: "#{context}[:vpc_security_groups]") unless params[:vpc_security_groups].nil?
        type.hosted_zone_id = params[:hosted_zone_id]
        type.storage_encrypted = params[:storage_encrypted]
        type.kms_key_id = params[:kms_key_id]
        type.db_cluster_resource_id = params[:db_cluster_resource_id]
        type.db_cluster_arn = params[:db_cluster_arn]
        type.associated_roles = DBClusterRoles.build(params[:associated_roles], context: "#{context}[:associated_roles]") unless params[:associated_roles].nil?
        type.iam_database_authentication_enabled = params[:iam_database_authentication_enabled]
        type.clone_group_id = params[:clone_group_id]
        type.cluster_create_time = params[:cluster_create_time]
        type.earliest_backtrack_time = params[:earliest_backtrack_time]
        type.backtrack_window = params[:backtrack_window]
        type.backtrack_consumed_change_records = params[:backtrack_consumed_change_records]
        type.enabled_cloudwatch_logs_exports = LogTypeList.build(params[:enabled_cloudwatch_logs_exports], context: "#{context}[:enabled_cloudwatch_logs_exports]") unless params[:enabled_cloudwatch_logs_exports].nil?
        type.capacity = params[:capacity]
        type.engine_mode = params[:engine_mode]
        type.scaling_configuration_info = ScalingConfigurationInfo.build(params[:scaling_configuration_info], context: "#{context}[:scaling_configuration_info]") unless params[:scaling_configuration_info].nil?
        type.deletion_protection = params[:deletion_protection]
        type.http_endpoint_enabled = params[:http_endpoint_enabled]
        type.activity_stream_mode = params[:activity_stream_mode]
        type.activity_stream_status = params[:activity_stream_status]
        type.activity_stream_kms_key_id = params[:activity_stream_kms_key_id]
        type.activity_stream_kinesis_stream_name = params[:activity_stream_kinesis_stream_name]
        type.copy_tags_to_snapshot = params[:copy_tags_to_snapshot]
        type.cross_account_clone = params[:cross_account_clone]
        type.domain_memberships = DomainMembershipList.build(params[:domain_memberships], context: "#{context}[:domain_memberships]") unless params[:domain_memberships].nil?
        type.tag_list = TagList.build(params[:tag_list], context: "#{context}[:tag_list]") unless params[:tag_list].nil?
        type.global_write_forwarding_status = params[:global_write_forwarding_status]
        type.global_write_forwarding_requested = params[:global_write_forwarding_requested]
        type.pending_modified_values = ClusterPendingModifiedValues.build(params[:pending_modified_values], context: "#{context}[:pending_modified_values]") unless params[:pending_modified_values].nil?
        type.db_cluster_instance_class = params[:db_cluster_instance_class]
        type.storage_type = params[:storage_type]
        type.iops = params[:iops]
        type.publicly_accessible = params[:publicly_accessible]
        type.auto_minor_version_upgrade = params[:auto_minor_version_upgrade]
        type.monitoring_interval = params[:monitoring_interval]
        type.monitoring_role_arn = params[:monitoring_role_arn]
        type.performance_insights_enabled = params[:performance_insights_enabled]
        type.performance_insights_kms_key_id = params[:performance_insights_kms_key_id]
        type.performance_insights_retention_period = params[:performance_insights_retention_period]
        type.serverless_v2_scaling_configuration = ServerlessV2ScalingConfigurationInfo.build(params[:serverless_v2_scaling_configuration], context: "#{context}[:serverless_v2_scaling_configuration]") unless params[:serverless_v2_scaling_configuration].nil?
        type
      end
    end

    module DBClusterAlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBClusterAlreadyExistsFault, context: context)
        type = Types::DBClusterAlreadyExistsFault.new
        type.message = params[:message]
        type
      end
    end

    module DBClusterBacktrack
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBClusterBacktrack, context: context)
        type = Types::DBClusterBacktrack.new
        type.db_cluster_identifier = params[:db_cluster_identifier]
        type.backtrack_identifier = params[:backtrack_identifier]
        type.backtrack_to = params[:backtrack_to]
        type.backtracked_from = params[:backtracked_from]
        type.backtrack_request_creation_time = params[:backtrack_request_creation_time]
        type.status = params[:status]
        type
      end
    end

    module DBClusterBacktrackList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DBClusterBacktrack.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DBClusterBacktrackNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBClusterBacktrackNotFoundFault, context: context)
        type = Types::DBClusterBacktrackNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module DBClusterEndpoint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBClusterEndpoint, context: context)
        type = Types::DBClusterEndpoint.new
        type.db_cluster_endpoint_identifier = params[:db_cluster_endpoint_identifier]
        type.db_cluster_identifier = params[:db_cluster_identifier]
        type.db_cluster_endpoint_resource_identifier = params[:db_cluster_endpoint_resource_identifier]
        type.endpoint = params[:endpoint]
        type.status = params[:status]
        type.endpoint_type = params[:endpoint_type]
        type.custom_endpoint_type = params[:custom_endpoint_type]
        type.static_members = StringList.build(params[:static_members], context: "#{context}[:static_members]") unless params[:static_members].nil?
        type.excluded_members = StringList.build(params[:excluded_members], context: "#{context}[:excluded_members]") unless params[:excluded_members].nil?
        type.db_cluster_endpoint_arn = params[:db_cluster_endpoint_arn]
        type
      end
    end

    module DBClusterEndpointAlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBClusterEndpointAlreadyExistsFault, context: context)
        type = Types::DBClusterEndpointAlreadyExistsFault.new
        type.message = params[:message]
        type
      end
    end

    module DBClusterEndpointList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DBClusterEndpoint.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DBClusterEndpointNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBClusterEndpointNotFoundFault, context: context)
        type = Types::DBClusterEndpointNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module DBClusterEndpointQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBClusterEndpointQuotaExceededFault, context: context)
        type = Types::DBClusterEndpointQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module DBClusterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DBCluster.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DBClusterMember
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBClusterMember, context: context)
        type = Types::DBClusterMember.new
        type.db_instance_identifier = params[:db_instance_identifier]
        type.is_cluster_writer = params[:is_cluster_writer]
        type.db_cluster_parameter_group_status = params[:db_cluster_parameter_group_status]
        type.promotion_tier = params[:promotion_tier]
        type
      end
    end

    module DBClusterMemberList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DBClusterMember.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DBClusterNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBClusterNotFoundFault, context: context)
        type = Types::DBClusterNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module DBClusterOptionGroupMemberships
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DBClusterOptionGroupStatus.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DBClusterOptionGroupStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBClusterOptionGroupStatus, context: context)
        type = Types::DBClusterOptionGroupStatus.new
        type.db_cluster_option_group_name = params[:db_cluster_option_group_name]
        type.status = params[:status]
        type
      end
    end

    module DBClusterParameterGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBClusterParameterGroup, context: context)
        type = Types::DBClusterParameterGroup.new
        type.db_cluster_parameter_group_name = params[:db_cluster_parameter_group_name]
        type.db_parameter_group_family = params[:db_parameter_group_family]
        type.description = params[:description]
        type.db_cluster_parameter_group_arn = params[:db_cluster_parameter_group_arn]
        type
      end
    end

    module DBClusterParameterGroupList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DBClusterParameterGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DBClusterParameterGroupNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBClusterParameterGroupNotFoundFault, context: context)
        type = Types::DBClusterParameterGroupNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module DBClusterQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBClusterQuotaExceededFault, context: context)
        type = Types::DBClusterQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module DBClusterRole
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBClusterRole, context: context)
        type = Types::DBClusterRole.new
        type.role_arn = params[:role_arn]
        type.status = params[:status]
        type.feature_name = params[:feature_name]
        type
      end
    end

    module DBClusterRoleAlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBClusterRoleAlreadyExistsFault, context: context)
        type = Types::DBClusterRoleAlreadyExistsFault.new
        type.message = params[:message]
        type
      end
    end

    module DBClusterRoleNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBClusterRoleNotFoundFault, context: context)
        type = Types::DBClusterRoleNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module DBClusterRoleQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBClusterRoleQuotaExceededFault, context: context)
        type = Types::DBClusterRoleQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module DBClusterRoles
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DBClusterRole.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DBClusterSnapshot
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBClusterSnapshot, context: context)
        type = Types::DBClusterSnapshot.new
        type.availability_zones = AvailabilityZones.build(params[:availability_zones], context: "#{context}[:availability_zones]") unless params[:availability_zones].nil?
        type.db_cluster_snapshot_identifier = params[:db_cluster_snapshot_identifier]
        type.db_cluster_identifier = params[:db_cluster_identifier]
        type.snapshot_create_time = params[:snapshot_create_time]
        type.engine = params[:engine]
        type.engine_mode = params[:engine_mode]
        type.allocated_storage = params[:allocated_storage]
        type.status = params[:status]
        type.port = params[:port]
        type.vpc_id = params[:vpc_id]
        type.cluster_create_time = params[:cluster_create_time]
        type.master_username = params[:master_username]
        type.engine_version = params[:engine_version]
        type.license_model = params[:license_model]
        type.snapshot_type = params[:snapshot_type]
        type.percent_progress = params[:percent_progress]
        type.storage_encrypted = params[:storage_encrypted]
        type.kms_key_id = params[:kms_key_id]
        type.db_cluster_snapshot_arn = params[:db_cluster_snapshot_arn]
        type.source_db_cluster_snapshot_arn = params[:source_db_cluster_snapshot_arn]
        type.iam_database_authentication_enabled = params[:iam_database_authentication_enabled]
        type.tag_list = TagList.build(params[:tag_list], context: "#{context}[:tag_list]") unless params[:tag_list].nil?
        type
      end
    end

    module DBClusterSnapshotAlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBClusterSnapshotAlreadyExistsFault, context: context)
        type = Types::DBClusterSnapshotAlreadyExistsFault.new
        type.message = params[:message]
        type
      end
    end

    module DBClusterSnapshotAttribute
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBClusterSnapshotAttribute, context: context)
        type = Types::DBClusterSnapshotAttribute.new
        type.attribute_name = params[:attribute_name]
        type.attribute_values = AttributeValueList.build(params[:attribute_values], context: "#{context}[:attribute_values]") unless params[:attribute_values].nil?
        type
      end
    end

    module DBClusterSnapshotAttributeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DBClusterSnapshotAttribute.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DBClusterSnapshotAttributesResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBClusterSnapshotAttributesResult, context: context)
        type = Types::DBClusterSnapshotAttributesResult.new
        type.db_cluster_snapshot_identifier = params[:db_cluster_snapshot_identifier]
        type.db_cluster_snapshot_attributes = DBClusterSnapshotAttributeList.build(params[:db_cluster_snapshot_attributes], context: "#{context}[:db_cluster_snapshot_attributes]") unless params[:db_cluster_snapshot_attributes].nil?
        type
      end
    end

    module DBClusterSnapshotList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DBClusterSnapshot.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DBClusterSnapshotNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBClusterSnapshotNotFoundFault, context: context)
        type = Types::DBClusterSnapshotNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module DBEngineVersion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBEngineVersion, context: context)
        type = Types::DBEngineVersion.new
        type.engine = params[:engine]
        type.engine_version = params[:engine_version]
        type.db_parameter_group_family = params[:db_parameter_group_family]
        type.db_engine_description = params[:db_engine_description]
        type.db_engine_version_description = params[:db_engine_version_description]
        type.default_character_set = CharacterSet.build(params[:default_character_set], context: "#{context}[:default_character_set]") unless params[:default_character_set].nil?
        type.supported_character_sets = SupportedCharacterSetsList.build(params[:supported_character_sets], context: "#{context}[:supported_character_sets]") unless params[:supported_character_sets].nil?
        type.supported_nchar_character_sets = SupportedCharacterSetsList.build(params[:supported_nchar_character_sets], context: "#{context}[:supported_nchar_character_sets]") unless params[:supported_nchar_character_sets].nil?
        type.valid_upgrade_target = ValidUpgradeTargetList.build(params[:valid_upgrade_target], context: "#{context}[:valid_upgrade_target]") unless params[:valid_upgrade_target].nil?
        type.supported_timezones = SupportedTimezonesList.build(params[:supported_timezones], context: "#{context}[:supported_timezones]") unless params[:supported_timezones].nil?
        type.exportable_log_types = LogTypeList.build(params[:exportable_log_types], context: "#{context}[:exportable_log_types]") unless params[:exportable_log_types].nil?
        type.supports_log_exports_to_cloudwatch_logs = params[:supports_log_exports_to_cloudwatch_logs]
        type.supports_read_replica = params[:supports_read_replica]
        type.supported_engine_modes = EngineModeList.build(params[:supported_engine_modes], context: "#{context}[:supported_engine_modes]") unless params[:supported_engine_modes].nil?
        type.supported_feature_names = FeatureNameList.build(params[:supported_feature_names], context: "#{context}[:supported_feature_names]") unless params[:supported_feature_names].nil?
        type.status = params[:status]
        type.supports_parallel_query = params[:supports_parallel_query]
        type.supports_global_databases = params[:supports_global_databases]
        type.major_engine_version = params[:major_engine_version]
        type.database_installation_files_s3_bucket_name = params[:database_installation_files_s3_bucket_name]
        type.database_installation_files_s3_prefix = params[:database_installation_files_s3_prefix]
        type.db_engine_version_arn = params[:db_engine_version_arn]
        type.kms_key_id = params[:kms_key_id]
        type.create_time = params[:create_time]
        type.tag_list = TagList.build(params[:tag_list], context: "#{context}[:tag_list]") unless params[:tag_list].nil?
        type.supports_babelfish = params[:supports_babelfish]
        type
      end
    end

    module DBEngineVersionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DBEngineVersion.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DBInstance
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBInstance, context: context)
        type = Types::DBInstance.new
        type.db_instance_identifier = params[:db_instance_identifier]
        type.db_instance_class = params[:db_instance_class]
        type.engine = params[:engine]
        type.db_instance_status = params[:db_instance_status]
        type.automatic_restart_time = params[:automatic_restart_time]
        type.master_username = params[:master_username]
        type.db_name = params[:db_name]
        type.endpoint = Endpoint.build(params[:endpoint], context: "#{context}[:endpoint]") unless params[:endpoint].nil?
        type.allocated_storage = params[:allocated_storage]
        type.instance_create_time = params[:instance_create_time]
        type.preferred_backup_window = params[:preferred_backup_window]
        type.backup_retention_period = params[:backup_retention_period]
        type.db_security_groups = DBSecurityGroupMembershipList.build(params[:db_security_groups], context: "#{context}[:db_security_groups]") unless params[:db_security_groups].nil?
        type.vpc_security_groups = VpcSecurityGroupMembershipList.build(params[:vpc_security_groups], context: "#{context}[:vpc_security_groups]") unless params[:vpc_security_groups].nil?
        type.db_parameter_groups = DBParameterGroupStatusList.build(params[:db_parameter_groups], context: "#{context}[:db_parameter_groups]") unless params[:db_parameter_groups].nil?
        type.availability_zone = params[:availability_zone]
        type.db_subnet_group = DBSubnetGroup.build(params[:db_subnet_group], context: "#{context}[:db_subnet_group]") unless params[:db_subnet_group].nil?
        type.preferred_maintenance_window = params[:preferred_maintenance_window]
        type.pending_modified_values = PendingModifiedValues.build(params[:pending_modified_values], context: "#{context}[:pending_modified_values]") unless params[:pending_modified_values].nil?
        type.latest_restorable_time = params[:latest_restorable_time]
        type.multi_az = params[:multi_az]
        type.engine_version = params[:engine_version]
        type.auto_minor_version_upgrade = params[:auto_minor_version_upgrade]
        type.read_replica_source_db_instance_identifier = params[:read_replica_source_db_instance_identifier]
        type.read_replica_db_instance_identifiers = ReadReplicaDBInstanceIdentifierList.build(params[:read_replica_db_instance_identifiers], context: "#{context}[:read_replica_db_instance_identifiers]") unless params[:read_replica_db_instance_identifiers].nil?
        type.read_replica_db_cluster_identifiers = ReadReplicaDBClusterIdentifierList.build(params[:read_replica_db_cluster_identifiers], context: "#{context}[:read_replica_db_cluster_identifiers]") unless params[:read_replica_db_cluster_identifiers].nil?
        type.replica_mode = params[:replica_mode]
        type.license_model = params[:license_model]
        type.iops = params[:iops]
        type.option_group_memberships = OptionGroupMembershipList.build(params[:option_group_memberships], context: "#{context}[:option_group_memberships]") unless params[:option_group_memberships].nil?
        type.character_set_name = params[:character_set_name]
        type.nchar_character_set_name = params[:nchar_character_set_name]
        type.secondary_availability_zone = params[:secondary_availability_zone]
        type.publicly_accessible = params[:publicly_accessible]
        type.status_infos = DBInstanceStatusInfoList.build(params[:status_infos], context: "#{context}[:status_infos]") unless params[:status_infos].nil?
        type.storage_type = params[:storage_type]
        type.tde_credential_arn = params[:tde_credential_arn]
        type.db_instance_port = params[:db_instance_port]
        type.db_cluster_identifier = params[:db_cluster_identifier]
        type.storage_encrypted = params[:storage_encrypted]
        type.kms_key_id = params[:kms_key_id]
        type.dbi_resource_id = params[:dbi_resource_id]
        type.ca_certificate_identifier = params[:ca_certificate_identifier]
        type.domain_memberships = DomainMembershipList.build(params[:domain_memberships], context: "#{context}[:domain_memberships]") unless params[:domain_memberships].nil?
        type.copy_tags_to_snapshot = params[:copy_tags_to_snapshot]
        type.monitoring_interval = params[:monitoring_interval]
        type.enhanced_monitoring_resource_arn = params[:enhanced_monitoring_resource_arn]
        type.monitoring_role_arn = params[:monitoring_role_arn]
        type.promotion_tier = params[:promotion_tier]
        type.db_instance_arn = params[:db_instance_arn]
        type.timezone = params[:timezone]
        type.iam_database_authentication_enabled = params[:iam_database_authentication_enabled]
        type.performance_insights_enabled = params[:performance_insights_enabled]
        type.performance_insights_kms_key_id = params[:performance_insights_kms_key_id]
        type.performance_insights_retention_period = params[:performance_insights_retention_period]
        type.enabled_cloudwatch_logs_exports = LogTypeList.build(params[:enabled_cloudwatch_logs_exports], context: "#{context}[:enabled_cloudwatch_logs_exports]") unless params[:enabled_cloudwatch_logs_exports].nil?
        type.processor_features = ProcessorFeatureList.build(params[:processor_features], context: "#{context}[:processor_features]") unless params[:processor_features].nil?
        type.deletion_protection = params[:deletion_protection]
        type.associated_roles = DBInstanceRoles.build(params[:associated_roles], context: "#{context}[:associated_roles]") unless params[:associated_roles].nil?
        type.listener_endpoint = Endpoint.build(params[:listener_endpoint], context: "#{context}[:listener_endpoint]") unless params[:listener_endpoint].nil?
        type.max_allocated_storage = params[:max_allocated_storage]
        type.tag_list = TagList.build(params[:tag_list], context: "#{context}[:tag_list]") unless params[:tag_list].nil?
        type.db_instance_automated_backups_replications = DBInstanceAutomatedBackupsReplicationList.build(params[:db_instance_automated_backups_replications], context: "#{context}[:db_instance_automated_backups_replications]") unless params[:db_instance_automated_backups_replications].nil?
        type.customer_owned_ip_enabled = params[:customer_owned_ip_enabled]
        type.aws_backup_recovery_point_arn = params[:aws_backup_recovery_point_arn]
        type.activity_stream_status = params[:activity_stream_status]
        type.activity_stream_kms_key_id = params[:activity_stream_kms_key_id]
        type.activity_stream_kinesis_stream_name = params[:activity_stream_kinesis_stream_name]
        type.activity_stream_mode = params[:activity_stream_mode]
        type.activity_stream_engine_native_audit_fields_included = params[:activity_stream_engine_native_audit_fields_included]
        type.automation_mode = params[:automation_mode]
        type.resume_full_automation_mode_time = params[:resume_full_automation_mode_time]
        type.custom_iam_instance_profile = params[:custom_iam_instance_profile]
        type.backup_target = params[:backup_target]
        type.network_type = params[:network_type]
        type
      end
    end

    module DBInstanceAlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBInstanceAlreadyExistsFault, context: context)
        type = Types::DBInstanceAlreadyExistsFault.new
        type.message = params[:message]
        type
      end
    end

    module DBInstanceAutomatedBackup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBInstanceAutomatedBackup, context: context)
        type = Types::DBInstanceAutomatedBackup.new
        type.db_instance_arn = params[:db_instance_arn]
        type.dbi_resource_id = params[:dbi_resource_id]
        type.region = params[:region]
        type.db_instance_identifier = params[:db_instance_identifier]
        type.restore_window = RestoreWindow.build(params[:restore_window], context: "#{context}[:restore_window]") unless params[:restore_window].nil?
        type.allocated_storage = params[:allocated_storage]
        type.status = params[:status]
        type.port = params[:port]
        type.availability_zone = params[:availability_zone]
        type.vpc_id = params[:vpc_id]
        type.instance_create_time = params[:instance_create_time]
        type.master_username = params[:master_username]
        type.engine = params[:engine]
        type.engine_version = params[:engine_version]
        type.license_model = params[:license_model]
        type.iops = params[:iops]
        type.option_group_name = params[:option_group_name]
        type.tde_credential_arn = params[:tde_credential_arn]
        type.encrypted = params[:encrypted]
        type.storage_type = params[:storage_type]
        type.kms_key_id = params[:kms_key_id]
        type.timezone = params[:timezone]
        type.iam_database_authentication_enabled = params[:iam_database_authentication_enabled]
        type.backup_retention_period = params[:backup_retention_period]
        type.db_instance_automated_backups_arn = params[:db_instance_automated_backups_arn]
        type.db_instance_automated_backups_replications = DBInstanceAutomatedBackupsReplicationList.build(params[:db_instance_automated_backups_replications], context: "#{context}[:db_instance_automated_backups_replications]") unless params[:db_instance_automated_backups_replications].nil?
        type.backup_target = params[:backup_target]
        type
      end
    end

    module DBInstanceAutomatedBackupList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DBInstanceAutomatedBackup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DBInstanceAutomatedBackupNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBInstanceAutomatedBackupNotFoundFault, context: context)
        type = Types::DBInstanceAutomatedBackupNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module DBInstanceAutomatedBackupQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBInstanceAutomatedBackupQuotaExceededFault, context: context)
        type = Types::DBInstanceAutomatedBackupQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module DBInstanceAutomatedBackupsReplication
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBInstanceAutomatedBackupsReplication, context: context)
        type = Types::DBInstanceAutomatedBackupsReplication.new
        type.db_instance_automated_backups_arn = params[:db_instance_automated_backups_arn]
        type
      end
    end

    module DBInstanceAutomatedBackupsReplicationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DBInstanceAutomatedBackupsReplication.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DBInstanceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DBInstance.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DBInstanceNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBInstanceNotFoundFault, context: context)
        type = Types::DBInstanceNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module DBInstanceRole
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBInstanceRole, context: context)
        type = Types::DBInstanceRole.new
        type.role_arn = params[:role_arn]
        type.feature_name = params[:feature_name]
        type.status = params[:status]
        type
      end
    end

    module DBInstanceRoleAlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBInstanceRoleAlreadyExistsFault, context: context)
        type = Types::DBInstanceRoleAlreadyExistsFault.new
        type.message = params[:message]
        type
      end
    end

    module DBInstanceRoleNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBInstanceRoleNotFoundFault, context: context)
        type = Types::DBInstanceRoleNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module DBInstanceRoleQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBInstanceRoleQuotaExceededFault, context: context)
        type = Types::DBInstanceRoleQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module DBInstanceRoles
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DBInstanceRole.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DBInstanceStatusInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBInstanceStatusInfo, context: context)
        type = Types::DBInstanceStatusInfo.new
        type.status_type = params[:status_type]
        type.normal = params[:normal]
        type.status = params[:status]
        type.message = params[:message]
        type
      end
    end

    module DBInstanceStatusInfoList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DBInstanceStatusInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DBLogFileNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBLogFileNotFoundFault, context: context)
        type = Types::DBLogFileNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module DBParameterGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBParameterGroup, context: context)
        type = Types::DBParameterGroup.new
        type.db_parameter_group_name = params[:db_parameter_group_name]
        type.db_parameter_group_family = params[:db_parameter_group_family]
        type.description = params[:description]
        type.db_parameter_group_arn = params[:db_parameter_group_arn]
        type
      end
    end

    module DBParameterGroupAlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBParameterGroupAlreadyExistsFault, context: context)
        type = Types::DBParameterGroupAlreadyExistsFault.new
        type.message = params[:message]
        type
      end
    end

    module DBParameterGroupList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DBParameterGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DBParameterGroupNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBParameterGroupNotFoundFault, context: context)
        type = Types::DBParameterGroupNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module DBParameterGroupQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBParameterGroupQuotaExceededFault, context: context)
        type = Types::DBParameterGroupQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module DBParameterGroupStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBParameterGroupStatus, context: context)
        type = Types::DBParameterGroupStatus.new
        type.db_parameter_group_name = params[:db_parameter_group_name]
        type.parameter_apply_status = params[:parameter_apply_status]
        type
      end
    end

    module DBParameterGroupStatusList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DBParameterGroupStatus.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DBProxy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBProxy, context: context)
        type = Types::DBProxy.new
        type.db_proxy_name = params[:db_proxy_name]
        type.db_proxy_arn = params[:db_proxy_arn]
        type.status = params[:status]
        type.engine_family = params[:engine_family]
        type.vpc_id = params[:vpc_id]
        type.vpc_security_group_ids = StringList.build(params[:vpc_security_group_ids], context: "#{context}[:vpc_security_group_ids]") unless params[:vpc_security_group_ids].nil?
        type.vpc_subnet_ids = StringList.build(params[:vpc_subnet_ids], context: "#{context}[:vpc_subnet_ids]") unless params[:vpc_subnet_ids].nil?
        type.auth = UserAuthConfigInfoList.build(params[:auth], context: "#{context}[:auth]") unless params[:auth].nil?
        type.role_arn = params[:role_arn]
        type.endpoint = params[:endpoint]
        type.require_tls = params[:require_tls]
        type.idle_client_timeout = params[:idle_client_timeout]
        type.debug_logging = params[:debug_logging]
        type.created_date = params[:created_date]
        type.updated_date = params[:updated_date]
        type
      end
    end

    module DBProxyAlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBProxyAlreadyExistsFault, context: context)
        type = Types::DBProxyAlreadyExistsFault.new
        type.message = params[:message]
        type
      end
    end

    module DBProxyEndpoint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBProxyEndpoint, context: context)
        type = Types::DBProxyEndpoint.new
        type.db_proxy_endpoint_name = params[:db_proxy_endpoint_name]
        type.db_proxy_endpoint_arn = params[:db_proxy_endpoint_arn]
        type.db_proxy_name = params[:db_proxy_name]
        type.status = params[:status]
        type.vpc_id = params[:vpc_id]
        type.vpc_security_group_ids = StringList.build(params[:vpc_security_group_ids], context: "#{context}[:vpc_security_group_ids]") unless params[:vpc_security_group_ids].nil?
        type.vpc_subnet_ids = StringList.build(params[:vpc_subnet_ids], context: "#{context}[:vpc_subnet_ids]") unless params[:vpc_subnet_ids].nil?
        type.endpoint = params[:endpoint]
        type.created_date = params[:created_date]
        type.target_role = params[:target_role]
        type.is_default = params[:is_default]
        type
      end
    end

    module DBProxyEndpointAlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBProxyEndpointAlreadyExistsFault, context: context)
        type = Types::DBProxyEndpointAlreadyExistsFault.new
        type.message = params[:message]
        type
      end
    end

    module DBProxyEndpointList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DBProxyEndpoint.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DBProxyEndpointNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBProxyEndpointNotFoundFault, context: context)
        type = Types::DBProxyEndpointNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module DBProxyEndpointQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBProxyEndpointQuotaExceededFault, context: context)
        type = Types::DBProxyEndpointQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module DBProxyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DBProxy.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DBProxyNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBProxyNotFoundFault, context: context)
        type = Types::DBProxyNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module DBProxyQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBProxyQuotaExceededFault, context: context)
        type = Types::DBProxyQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module DBProxyTarget
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBProxyTarget, context: context)
        type = Types::DBProxyTarget.new
        type.target_arn = params[:target_arn]
        type.endpoint = params[:endpoint]
        type.tracked_cluster_id = params[:tracked_cluster_id]
        type.rds_resource_id = params[:rds_resource_id]
        type.port = params[:port]
        type.type = params[:type]
        type.role = params[:role]
        type.target_health = TargetHealth.build(params[:target_health], context: "#{context}[:target_health]") unless params[:target_health].nil?
        type
      end
    end

    module DBProxyTargetAlreadyRegisteredFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBProxyTargetAlreadyRegisteredFault, context: context)
        type = Types::DBProxyTargetAlreadyRegisteredFault.new
        type.message = params[:message]
        type
      end
    end

    module DBProxyTargetGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBProxyTargetGroup, context: context)
        type = Types::DBProxyTargetGroup.new
        type.db_proxy_name = params[:db_proxy_name]
        type.target_group_name = params[:target_group_name]
        type.target_group_arn = params[:target_group_arn]
        type.is_default = params[:is_default]
        type.status = params[:status]
        type.connection_pool_config = ConnectionPoolConfigurationInfo.build(params[:connection_pool_config], context: "#{context}[:connection_pool_config]") unless params[:connection_pool_config].nil?
        type.created_date = params[:created_date]
        type.updated_date = params[:updated_date]
        type
      end
    end

    module DBProxyTargetGroupNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBProxyTargetGroupNotFoundFault, context: context)
        type = Types::DBProxyTargetGroupNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module DBProxyTargetNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBProxyTargetNotFoundFault, context: context)
        type = Types::DBProxyTargetNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module DBSecurityGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBSecurityGroup, context: context)
        type = Types::DBSecurityGroup.new
        type.owner_id = params[:owner_id]
        type.db_security_group_name = params[:db_security_group_name]
        type.db_security_group_description = params[:db_security_group_description]
        type.vpc_id = params[:vpc_id]
        type.ec2_security_groups = EC2SecurityGroupList.build(params[:ec2_security_groups], context: "#{context}[:ec2_security_groups]") unless params[:ec2_security_groups].nil?
        type.ip_ranges = IPRangeList.build(params[:ip_ranges], context: "#{context}[:ip_ranges]") unless params[:ip_ranges].nil?
        type.db_security_group_arn = params[:db_security_group_arn]
        type
      end
    end

    module DBSecurityGroupAlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBSecurityGroupAlreadyExistsFault, context: context)
        type = Types::DBSecurityGroupAlreadyExistsFault.new
        type.message = params[:message]
        type
      end
    end

    module DBSecurityGroupMembership
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBSecurityGroupMembership, context: context)
        type = Types::DBSecurityGroupMembership.new
        type.db_security_group_name = params[:db_security_group_name]
        type.status = params[:status]
        type
      end
    end

    module DBSecurityGroupMembershipList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DBSecurityGroupMembership.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DBSecurityGroupNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DBSecurityGroupNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBSecurityGroupNotFoundFault, context: context)
        type = Types::DBSecurityGroupNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module DBSecurityGroupNotSupportedFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBSecurityGroupNotSupportedFault, context: context)
        type = Types::DBSecurityGroupNotSupportedFault.new
        type.message = params[:message]
        type
      end
    end

    module DBSecurityGroupQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBSecurityGroupQuotaExceededFault, context: context)
        type = Types::DBSecurityGroupQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module DBSecurityGroups
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DBSecurityGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DBSnapshot
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBSnapshot, context: context)
        type = Types::DBSnapshot.new
        type.db_snapshot_identifier = params[:db_snapshot_identifier]
        type.db_instance_identifier = params[:db_instance_identifier]
        type.snapshot_create_time = params[:snapshot_create_time]
        type.engine = params[:engine]
        type.allocated_storage = params[:allocated_storage]
        type.status = params[:status]
        type.port = params[:port]
        type.availability_zone = params[:availability_zone]
        type.vpc_id = params[:vpc_id]
        type.instance_create_time = params[:instance_create_time]
        type.master_username = params[:master_username]
        type.engine_version = params[:engine_version]
        type.license_model = params[:license_model]
        type.snapshot_type = params[:snapshot_type]
        type.iops = params[:iops]
        type.option_group_name = params[:option_group_name]
        type.percent_progress = params[:percent_progress]
        type.source_region = params[:source_region]
        type.source_db_snapshot_identifier = params[:source_db_snapshot_identifier]
        type.storage_type = params[:storage_type]
        type.tde_credential_arn = params[:tde_credential_arn]
        type.encrypted = params[:encrypted]
        type.kms_key_id = params[:kms_key_id]
        type.db_snapshot_arn = params[:db_snapshot_arn]
        type.timezone = params[:timezone]
        type.iam_database_authentication_enabled = params[:iam_database_authentication_enabled]
        type.processor_features = ProcessorFeatureList.build(params[:processor_features], context: "#{context}[:processor_features]") unless params[:processor_features].nil?
        type.dbi_resource_id = params[:dbi_resource_id]
        type.tag_list = TagList.build(params[:tag_list], context: "#{context}[:tag_list]") unless params[:tag_list].nil?
        type.original_snapshot_create_time = params[:original_snapshot_create_time]
        type.snapshot_target = params[:snapshot_target]
        type
      end
    end

    module DBSnapshotAlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBSnapshotAlreadyExistsFault, context: context)
        type = Types::DBSnapshotAlreadyExistsFault.new
        type.message = params[:message]
        type
      end
    end

    module DBSnapshotAttribute
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBSnapshotAttribute, context: context)
        type = Types::DBSnapshotAttribute.new
        type.attribute_name = params[:attribute_name]
        type.attribute_values = AttributeValueList.build(params[:attribute_values], context: "#{context}[:attribute_values]") unless params[:attribute_values].nil?
        type
      end
    end

    module DBSnapshotAttributeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DBSnapshotAttribute.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DBSnapshotAttributesResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBSnapshotAttributesResult, context: context)
        type = Types::DBSnapshotAttributesResult.new
        type.db_snapshot_identifier = params[:db_snapshot_identifier]
        type.db_snapshot_attributes = DBSnapshotAttributeList.build(params[:db_snapshot_attributes], context: "#{context}[:db_snapshot_attributes]") unless params[:db_snapshot_attributes].nil?
        type
      end
    end

    module DBSnapshotList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DBSnapshot.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DBSnapshotNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBSnapshotNotFoundFault, context: context)
        type = Types::DBSnapshotNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module DBSubnetGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBSubnetGroup, context: context)
        type = Types::DBSubnetGroup.new
        type.db_subnet_group_name = params[:db_subnet_group_name]
        type.db_subnet_group_description = params[:db_subnet_group_description]
        type.vpc_id = params[:vpc_id]
        type.subnet_group_status = params[:subnet_group_status]
        type.subnets = SubnetList.build(params[:subnets], context: "#{context}[:subnets]") unless params[:subnets].nil?
        type.db_subnet_group_arn = params[:db_subnet_group_arn]
        type.supported_network_types = StringList.build(params[:supported_network_types], context: "#{context}[:supported_network_types]") unless params[:supported_network_types].nil?
        type
      end
    end

    module DBSubnetGroupAlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBSubnetGroupAlreadyExistsFault, context: context)
        type = Types::DBSubnetGroupAlreadyExistsFault.new
        type.message = params[:message]
        type
      end
    end

    module DBSubnetGroupDoesNotCoverEnoughAZs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBSubnetGroupDoesNotCoverEnoughAZs, context: context)
        type = Types::DBSubnetGroupDoesNotCoverEnoughAZs.new
        type.message = params[:message]
        type
      end
    end

    module DBSubnetGroupNotAllowedFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBSubnetGroupNotAllowedFault, context: context)
        type = Types::DBSubnetGroupNotAllowedFault.new
        type.message = params[:message]
        type
      end
    end

    module DBSubnetGroupNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBSubnetGroupNotFoundFault, context: context)
        type = Types::DBSubnetGroupNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module DBSubnetGroupQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBSubnetGroupQuotaExceededFault, context: context)
        type = Types::DBSubnetGroupQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module DBSubnetGroups
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DBSubnetGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DBSubnetQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBSubnetQuotaExceededFault, context: context)
        type = Types::DBSubnetQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module DBUpgradeDependencyFailureFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBUpgradeDependencyFailureFault, context: context)
        type = Types::DBUpgradeDependencyFailureFault.new
        type.message = params[:message]
        type
      end
    end

    module DeleteCustomDBEngineVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCustomDBEngineVersionInput, context: context)
        type = Types::DeleteCustomDBEngineVersionInput.new
        type.engine = params[:engine]
        type.engine_version = params[:engine_version]
        type
      end
    end

    module DeleteCustomDBEngineVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCustomDBEngineVersionOutput, context: context)
        type = Types::DeleteCustomDBEngineVersionOutput.new
        type.engine = params[:engine]
        type.engine_version = params[:engine_version]
        type.db_parameter_group_family = params[:db_parameter_group_family]
        type.db_engine_description = params[:db_engine_description]
        type.db_engine_version_description = params[:db_engine_version_description]
        type.default_character_set = CharacterSet.build(params[:default_character_set], context: "#{context}[:default_character_set]") unless params[:default_character_set].nil?
        type.supported_character_sets = SupportedCharacterSetsList.build(params[:supported_character_sets], context: "#{context}[:supported_character_sets]") unless params[:supported_character_sets].nil?
        type.supported_nchar_character_sets = SupportedCharacterSetsList.build(params[:supported_nchar_character_sets], context: "#{context}[:supported_nchar_character_sets]") unless params[:supported_nchar_character_sets].nil?
        type.valid_upgrade_target = ValidUpgradeTargetList.build(params[:valid_upgrade_target], context: "#{context}[:valid_upgrade_target]") unless params[:valid_upgrade_target].nil?
        type.supported_timezones = SupportedTimezonesList.build(params[:supported_timezones], context: "#{context}[:supported_timezones]") unless params[:supported_timezones].nil?
        type.exportable_log_types = LogTypeList.build(params[:exportable_log_types], context: "#{context}[:exportable_log_types]") unless params[:exportable_log_types].nil?
        type.supports_log_exports_to_cloudwatch_logs = params[:supports_log_exports_to_cloudwatch_logs]
        type.supports_read_replica = params[:supports_read_replica]
        type.supported_engine_modes = EngineModeList.build(params[:supported_engine_modes], context: "#{context}[:supported_engine_modes]") unless params[:supported_engine_modes].nil?
        type.supported_feature_names = FeatureNameList.build(params[:supported_feature_names], context: "#{context}[:supported_feature_names]") unless params[:supported_feature_names].nil?
        type.status = params[:status]
        type.supports_parallel_query = params[:supports_parallel_query]
        type.supports_global_databases = params[:supports_global_databases]
        type.major_engine_version = params[:major_engine_version]
        type.database_installation_files_s3_bucket_name = params[:database_installation_files_s3_bucket_name]
        type.database_installation_files_s3_prefix = params[:database_installation_files_s3_prefix]
        type.db_engine_version_arn = params[:db_engine_version_arn]
        type.kms_key_id = params[:kms_key_id]
        type.create_time = params[:create_time]
        type.tag_list = TagList.build(params[:tag_list], context: "#{context}[:tag_list]") unless params[:tag_list].nil?
        type.supports_babelfish = params[:supports_babelfish]
        type
      end
    end

    module DeleteDBClusterEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDBClusterEndpointInput, context: context)
        type = Types::DeleteDBClusterEndpointInput.new
        type.db_cluster_endpoint_identifier = params[:db_cluster_endpoint_identifier]
        type
      end
    end

    module DeleteDBClusterEndpointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDBClusterEndpointOutput, context: context)
        type = Types::DeleteDBClusterEndpointOutput.new
        type.db_cluster_endpoint_identifier = params[:db_cluster_endpoint_identifier]
        type.db_cluster_identifier = params[:db_cluster_identifier]
        type.db_cluster_endpoint_resource_identifier = params[:db_cluster_endpoint_resource_identifier]
        type.endpoint = params[:endpoint]
        type.status = params[:status]
        type.endpoint_type = params[:endpoint_type]
        type.custom_endpoint_type = params[:custom_endpoint_type]
        type.static_members = StringList.build(params[:static_members], context: "#{context}[:static_members]") unless params[:static_members].nil?
        type.excluded_members = StringList.build(params[:excluded_members], context: "#{context}[:excluded_members]") unless params[:excluded_members].nil?
        type.db_cluster_endpoint_arn = params[:db_cluster_endpoint_arn]
        type
      end
    end

    module DeleteDBClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDBClusterInput, context: context)
        type = Types::DeleteDBClusterInput.new
        type.db_cluster_identifier = params[:db_cluster_identifier]
        type.skip_final_snapshot = params[:skip_final_snapshot]
        type.final_db_snapshot_identifier = params[:final_db_snapshot_identifier]
        type
      end
    end

    module DeleteDBClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDBClusterOutput, context: context)
        type = Types::DeleteDBClusterOutput.new
        type.db_cluster = DBCluster.build(params[:db_cluster], context: "#{context}[:db_cluster]") unless params[:db_cluster].nil?
        type
      end
    end

    module DeleteDBClusterParameterGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDBClusterParameterGroupInput, context: context)
        type = Types::DeleteDBClusterParameterGroupInput.new
        type.db_cluster_parameter_group_name = params[:db_cluster_parameter_group_name]
        type
      end
    end

    module DeleteDBClusterParameterGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDBClusterParameterGroupOutput, context: context)
        type = Types::DeleteDBClusterParameterGroupOutput.new
        type
      end
    end

    module DeleteDBClusterSnapshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDBClusterSnapshotInput, context: context)
        type = Types::DeleteDBClusterSnapshotInput.new
        type.db_cluster_snapshot_identifier = params[:db_cluster_snapshot_identifier]
        type
      end
    end

    module DeleteDBClusterSnapshotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDBClusterSnapshotOutput, context: context)
        type = Types::DeleteDBClusterSnapshotOutput.new
        type.db_cluster_snapshot = DBClusterSnapshot.build(params[:db_cluster_snapshot], context: "#{context}[:db_cluster_snapshot]") unless params[:db_cluster_snapshot].nil?
        type
      end
    end

    module DeleteDBInstanceAutomatedBackupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDBInstanceAutomatedBackupInput, context: context)
        type = Types::DeleteDBInstanceAutomatedBackupInput.new
        type.dbi_resource_id = params[:dbi_resource_id]
        type.db_instance_automated_backups_arn = params[:db_instance_automated_backups_arn]
        type
      end
    end

    module DeleteDBInstanceAutomatedBackupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDBInstanceAutomatedBackupOutput, context: context)
        type = Types::DeleteDBInstanceAutomatedBackupOutput.new
        type.db_instance_automated_backup = DBInstanceAutomatedBackup.build(params[:db_instance_automated_backup], context: "#{context}[:db_instance_automated_backup]") unless params[:db_instance_automated_backup].nil?
        type
      end
    end

    module DeleteDBInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDBInstanceInput, context: context)
        type = Types::DeleteDBInstanceInput.new
        type.db_instance_identifier = params[:db_instance_identifier]
        type.skip_final_snapshot = params[:skip_final_snapshot]
        type.final_db_snapshot_identifier = params[:final_db_snapshot_identifier]
        type.delete_automated_backups = params[:delete_automated_backups]
        type
      end
    end

    module DeleteDBInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDBInstanceOutput, context: context)
        type = Types::DeleteDBInstanceOutput.new
        type.db_instance = DBInstance.build(params[:db_instance], context: "#{context}[:db_instance]") unless params[:db_instance].nil?
        type
      end
    end

    module DeleteDBParameterGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDBParameterGroupInput, context: context)
        type = Types::DeleteDBParameterGroupInput.new
        type.db_parameter_group_name = params[:db_parameter_group_name]
        type
      end
    end

    module DeleteDBParameterGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDBParameterGroupOutput, context: context)
        type = Types::DeleteDBParameterGroupOutput.new
        type
      end
    end

    module DeleteDBProxyEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDBProxyEndpointInput, context: context)
        type = Types::DeleteDBProxyEndpointInput.new
        type.db_proxy_endpoint_name = params[:db_proxy_endpoint_name]
        type
      end
    end

    module DeleteDBProxyEndpointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDBProxyEndpointOutput, context: context)
        type = Types::DeleteDBProxyEndpointOutput.new
        type.db_proxy_endpoint = DBProxyEndpoint.build(params[:db_proxy_endpoint], context: "#{context}[:db_proxy_endpoint]") unless params[:db_proxy_endpoint].nil?
        type
      end
    end

    module DeleteDBProxyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDBProxyInput, context: context)
        type = Types::DeleteDBProxyInput.new
        type.db_proxy_name = params[:db_proxy_name]
        type
      end
    end

    module DeleteDBProxyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDBProxyOutput, context: context)
        type = Types::DeleteDBProxyOutput.new
        type.db_proxy = DBProxy.build(params[:db_proxy], context: "#{context}[:db_proxy]") unless params[:db_proxy].nil?
        type
      end
    end

    module DeleteDBSecurityGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDBSecurityGroupInput, context: context)
        type = Types::DeleteDBSecurityGroupInput.new
        type.db_security_group_name = params[:db_security_group_name]
        type
      end
    end

    module DeleteDBSecurityGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDBSecurityGroupOutput, context: context)
        type = Types::DeleteDBSecurityGroupOutput.new
        type
      end
    end

    module DeleteDBSnapshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDBSnapshotInput, context: context)
        type = Types::DeleteDBSnapshotInput.new
        type.db_snapshot_identifier = params[:db_snapshot_identifier]
        type
      end
    end

    module DeleteDBSnapshotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDBSnapshotOutput, context: context)
        type = Types::DeleteDBSnapshotOutput.new
        type.db_snapshot = DBSnapshot.build(params[:db_snapshot], context: "#{context}[:db_snapshot]") unless params[:db_snapshot].nil?
        type
      end
    end

    module DeleteDBSubnetGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDBSubnetGroupInput, context: context)
        type = Types::DeleteDBSubnetGroupInput.new
        type.db_subnet_group_name = params[:db_subnet_group_name]
        type
      end
    end

    module DeleteDBSubnetGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDBSubnetGroupOutput, context: context)
        type = Types::DeleteDBSubnetGroupOutput.new
        type
      end
    end

    module DeleteEventSubscriptionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEventSubscriptionInput, context: context)
        type = Types::DeleteEventSubscriptionInput.new
        type.subscription_name = params[:subscription_name]
        type
      end
    end

    module DeleteEventSubscriptionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEventSubscriptionOutput, context: context)
        type = Types::DeleteEventSubscriptionOutput.new
        type.event_subscription = EventSubscription.build(params[:event_subscription], context: "#{context}[:event_subscription]") unless params[:event_subscription].nil?
        type
      end
    end

    module DeleteGlobalClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteGlobalClusterInput, context: context)
        type = Types::DeleteGlobalClusterInput.new
        type.global_cluster_identifier = params[:global_cluster_identifier]
        type
      end
    end

    module DeleteGlobalClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteGlobalClusterOutput, context: context)
        type = Types::DeleteGlobalClusterOutput.new
        type.global_cluster = GlobalCluster.build(params[:global_cluster], context: "#{context}[:global_cluster]") unless params[:global_cluster].nil?
        type
      end
    end

    module DeleteOptionGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteOptionGroupInput, context: context)
        type = Types::DeleteOptionGroupInput.new
        type.option_group_name = params[:option_group_name]
        type
      end
    end

    module DeleteOptionGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteOptionGroupOutput, context: context)
        type = Types::DeleteOptionGroupOutput.new
        type
      end
    end

    module DeregisterDBProxyTargetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterDBProxyTargetsInput, context: context)
        type = Types::DeregisterDBProxyTargetsInput.new
        type.db_proxy_name = params[:db_proxy_name]
        type.target_group_name = params[:target_group_name]
        type.db_instance_identifiers = StringList.build(params[:db_instance_identifiers], context: "#{context}[:db_instance_identifiers]") unless params[:db_instance_identifiers].nil?
        type.db_cluster_identifiers = StringList.build(params[:db_cluster_identifiers], context: "#{context}[:db_cluster_identifiers]") unless params[:db_cluster_identifiers].nil?
        type
      end
    end

    module DeregisterDBProxyTargetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterDBProxyTargetsOutput, context: context)
        type = Types::DeregisterDBProxyTargetsOutput.new
        type
      end
    end

    module DescribeAccountAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAccountAttributesInput, context: context)
        type = Types::DescribeAccountAttributesInput.new
        type
      end
    end

    module DescribeAccountAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAccountAttributesOutput, context: context)
        type = Types::DescribeAccountAttributesOutput.new
        type.account_quotas = AccountQuotaList.build(params[:account_quotas], context: "#{context}[:account_quotas]") unless params[:account_quotas].nil?
        type
      end
    end

    module DescribeCertificatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCertificatesInput, context: context)
        type = Types::DescribeCertificatesInput.new
        type.certificate_identifier = params[:certificate_identifier]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeCertificatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCertificatesOutput, context: context)
        type = Types::DescribeCertificatesOutput.new
        type.certificates = CertificateList.build(params[:certificates], context: "#{context}[:certificates]") unless params[:certificates].nil?
        type.marker = params[:marker]
        type
      end
    end

    module DescribeDBClusterBacktracksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDBClusterBacktracksInput, context: context)
        type = Types::DescribeDBClusterBacktracksInput.new
        type.db_cluster_identifier = params[:db_cluster_identifier]
        type.backtrack_identifier = params[:backtrack_identifier]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeDBClusterBacktracksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDBClusterBacktracksOutput, context: context)
        type = Types::DescribeDBClusterBacktracksOutput.new
        type.marker = params[:marker]
        type.db_cluster_backtracks = DBClusterBacktrackList.build(params[:db_cluster_backtracks], context: "#{context}[:db_cluster_backtracks]") unless params[:db_cluster_backtracks].nil?
        type
      end
    end

    module DescribeDBClusterEndpointsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDBClusterEndpointsInput, context: context)
        type = Types::DescribeDBClusterEndpointsInput.new
        type.db_cluster_identifier = params[:db_cluster_identifier]
        type.db_cluster_endpoint_identifier = params[:db_cluster_endpoint_identifier]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeDBClusterEndpointsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDBClusterEndpointsOutput, context: context)
        type = Types::DescribeDBClusterEndpointsOutput.new
        type.marker = params[:marker]
        type.db_cluster_endpoints = DBClusterEndpointList.build(params[:db_cluster_endpoints], context: "#{context}[:db_cluster_endpoints]") unless params[:db_cluster_endpoints].nil?
        type
      end
    end

    module DescribeDBClusterParameterGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDBClusterParameterGroupsInput, context: context)
        type = Types::DescribeDBClusterParameterGroupsInput.new
        type.db_cluster_parameter_group_name = params[:db_cluster_parameter_group_name]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeDBClusterParameterGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDBClusterParameterGroupsOutput, context: context)
        type = Types::DescribeDBClusterParameterGroupsOutput.new
        type.marker = params[:marker]
        type.db_cluster_parameter_groups = DBClusterParameterGroupList.build(params[:db_cluster_parameter_groups], context: "#{context}[:db_cluster_parameter_groups]") unless params[:db_cluster_parameter_groups].nil?
        type
      end
    end

    module DescribeDBClusterParametersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDBClusterParametersInput, context: context)
        type = Types::DescribeDBClusterParametersInput.new
        type.db_cluster_parameter_group_name = params[:db_cluster_parameter_group_name]
        type.source = params[:source]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeDBClusterParametersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDBClusterParametersOutput, context: context)
        type = Types::DescribeDBClusterParametersOutput.new
        type.parameters = ParametersList.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.marker = params[:marker]
        type
      end
    end

    module DescribeDBClusterSnapshotAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDBClusterSnapshotAttributesInput, context: context)
        type = Types::DescribeDBClusterSnapshotAttributesInput.new
        type.db_cluster_snapshot_identifier = params[:db_cluster_snapshot_identifier]
        type
      end
    end

    module DescribeDBClusterSnapshotAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDBClusterSnapshotAttributesOutput, context: context)
        type = Types::DescribeDBClusterSnapshotAttributesOutput.new
        type.db_cluster_snapshot_attributes_result = DBClusterSnapshotAttributesResult.build(params[:db_cluster_snapshot_attributes_result], context: "#{context}[:db_cluster_snapshot_attributes_result]") unless params[:db_cluster_snapshot_attributes_result].nil?
        type
      end
    end

    module DescribeDBClusterSnapshotsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDBClusterSnapshotsInput, context: context)
        type = Types::DescribeDBClusterSnapshotsInput.new
        type.db_cluster_identifier = params[:db_cluster_identifier]
        type.db_cluster_snapshot_identifier = params[:db_cluster_snapshot_identifier]
        type.snapshot_type = params[:snapshot_type]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type.include_shared = params[:include_shared]
        type.include_public = params[:include_public]
        type
      end
    end

    module DescribeDBClusterSnapshotsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDBClusterSnapshotsOutput, context: context)
        type = Types::DescribeDBClusterSnapshotsOutput.new
        type.marker = params[:marker]
        type.db_cluster_snapshots = DBClusterSnapshotList.build(params[:db_cluster_snapshots], context: "#{context}[:db_cluster_snapshots]") unless params[:db_cluster_snapshots].nil?
        type
      end
    end

    module DescribeDBClustersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDBClustersInput, context: context)
        type = Types::DescribeDBClustersInput.new
        type.db_cluster_identifier = params[:db_cluster_identifier]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type.include_shared = params[:include_shared]
        type
      end
    end

    module DescribeDBClustersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDBClustersOutput, context: context)
        type = Types::DescribeDBClustersOutput.new
        type.marker = params[:marker]
        type.db_clusters = DBClusterList.build(params[:db_clusters], context: "#{context}[:db_clusters]") unless params[:db_clusters].nil?
        type
      end
    end

    module DescribeDBEngineVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDBEngineVersionsInput, context: context)
        type = Types::DescribeDBEngineVersionsInput.new
        type.engine = params[:engine]
        type.engine_version = params[:engine_version]
        type.db_parameter_group_family = params[:db_parameter_group_family]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type.default_only = params[:default_only]
        type.list_supported_character_sets = params[:list_supported_character_sets]
        type.list_supported_timezones = params[:list_supported_timezones]
        type.include_all = params[:include_all]
        type
      end
    end

    module DescribeDBEngineVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDBEngineVersionsOutput, context: context)
        type = Types::DescribeDBEngineVersionsOutput.new
        type.marker = params[:marker]
        type.db_engine_versions = DBEngineVersionList.build(params[:db_engine_versions], context: "#{context}[:db_engine_versions]") unless params[:db_engine_versions].nil?
        type
      end
    end

    module DescribeDBInstanceAutomatedBackupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDBInstanceAutomatedBackupsInput, context: context)
        type = Types::DescribeDBInstanceAutomatedBackupsInput.new
        type.dbi_resource_id = params[:dbi_resource_id]
        type.db_instance_identifier = params[:db_instance_identifier]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type.db_instance_automated_backups_arn = params[:db_instance_automated_backups_arn]
        type
      end
    end

    module DescribeDBInstanceAutomatedBackupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDBInstanceAutomatedBackupsOutput, context: context)
        type = Types::DescribeDBInstanceAutomatedBackupsOutput.new
        type.marker = params[:marker]
        type.db_instance_automated_backups = DBInstanceAutomatedBackupList.build(params[:db_instance_automated_backups], context: "#{context}[:db_instance_automated_backups]") unless params[:db_instance_automated_backups].nil?
        type
      end
    end

    module DescribeDBInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDBInstancesInput, context: context)
        type = Types::DescribeDBInstancesInput.new
        type.db_instance_identifier = params[:db_instance_identifier]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeDBInstancesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDBInstancesOutput, context: context)
        type = Types::DescribeDBInstancesOutput.new
        type.marker = params[:marker]
        type.db_instances = DBInstanceList.build(params[:db_instances], context: "#{context}[:db_instances]") unless params[:db_instances].nil?
        type
      end
    end

    module DescribeDBLogFilesDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDBLogFilesDetails, context: context)
        type = Types::DescribeDBLogFilesDetails.new
        type.log_file_name = params[:log_file_name]
        type.last_written = params[:last_written]
        type.size = params[:size]
        type
      end
    end

    module DescribeDBLogFilesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDBLogFilesInput, context: context)
        type = Types::DescribeDBLogFilesInput.new
        type.db_instance_identifier = params[:db_instance_identifier]
        type.filename_contains = params[:filename_contains]
        type.file_last_written = params[:file_last_written]
        type.file_size = params[:file_size]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeDBLogFilesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DescribeDBLogFilesDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DescribeDBLogFilesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDBLogFilesOutput, context: context)
        type = Types::DescribeDBLogFilesOutput.new
        type.describe_db_log_files = DescribeDBLogFilesList.build(params[:describe_db_log_files], context: "#{context}[:describe_db_log_files]") unless params[:describe_db_log_files].nil?
        type.marker = params[:marker]
        type
      end
    end

    module DescribeDBParameterGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDBParameterGroupsInput, context: context)
        type = Types::DescribeDBParameterGroupsInput.new
        type.db_parameter_group_name = params[:db_parameter_group_name]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeDBParameterGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDBParameterGroupsOutput, context: context)
        type = Types::DescribeDBParameterGroupsOutput.new
        type.marker = params[:marker]
        type.db_parameter_groups = DBParameterGroupList.build(params[:db_parameter_groups], context: "#{context}[:db_parameter_groups]") unless params[:db_parameter_groups].nil?
        type
      end
    end

    module DescribeDBParametersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDBParametersInput, context: context)
        type = Types::DescribeDBParametersInput.new
        type.db_parameter_group_name = params[:db_parameter_group_name]
        type.source = params[:source]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeDBParametersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDBParametersOutput, context: context)
        type = Types::DescribeDBParametersOutput.new
        type.parameters = ParametersList.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.marker = params[:marker]
        type
      end
    end

    module DescribeDBProxiesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDBProxiesInput, context: context)
        type = Types::DescribeDBProxiesInput.new
        type.db_proxy_name = params[:db_proxy_name]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.marker = params[:marker]
        type.max_records = params[:max_records]
        type
      end
    end

    module DescribeDBProxiesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDBProxiesOutput, context: context)
        type = Types::DescribeDBProxiesOutput.new
        type.db_proxies = DBProxyList.build(params[:db_proxies], context: "#{context}[:db_proxies]") unless params[:db_proxies].nil?
        type.marker = params[:marker]
        type
      end
    end

    module DescribeDBProxyEndpointsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDBProxyEndpointsInput, context: context)
        type = Types::DescribeDBProxyEndpointsInput.new
        type.db_proxy_name = params[:db_proxy_name]
        type.db_proxy_endpoint_name = params[:db_proxy_endpoint_name]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.marker = params[:marker]
        type.max_records = params[:max_records]
        type
      end
    end

    module DescribeDBProxyEndpointsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDBProxyEndpointsOutput, context: context)
        type = Types::DescribeDBProxyEndpointsOutput.new
        type.db_proxy_endpoints = DBProxyEndpointList.build(params[:db_proxy_endpoints], context: "#{context}[:db_proxy_endpoints]") unless params[:db_proxy_endpoints].nil?
        type.marker = params[:marker]
        type
      end
    end

    module DescribeDBProxyTargetGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDBProxyTargetGroupsInput, context: context)
        type = Types::DescribeDBProxyTargetGroupsInput.new
        type.db_proxy_name = params[:db_proxy_name]
        type.target_group_name = params[:target_group_name]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.marker = params[:marker]
        type.max_records = params[:max_records]
        type
      end
    end

    module DescribeDBProxyTargetGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDBProxyTargetGroupsOutput, context: context)
        type = Types::DescribeDBProxyTargetGroupsOutput.new
        type.target_groups = TargetGroupList.build(params[:target_groups], context: "#{context}[:target_groups]") unless params[:target_groups].nil?
        type.marker = params[:marker]
        type
      end
    end

    module DescribeDBProxyTargetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDBProxyTargetsInput, context: context)
        type = Types::DescribeDBProxyTargetsInput.new
        type.db_proxy_name = params[:db_proxy_name]
        type.target_group_name = params[:target_group_name]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.marker = params[:marker]
        type.max_records = params[:max_records]
        type
      end
    end

    module DescribeDBProxyTargetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDBProxyTargetsOutput, context: context)
        type = Types::DescribeDBProxyTargetsOutput.new
        type.targets = TargetList.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type.marker = params[:marker]
        type
      end
    end

    module DescribeDBSecurityGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDBSecurityGroupsInput, context: context)
        type = Types::DescribeDBSecurityGroupsInput.new
        type.db_security_group_name = params[:db_security_group_name]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeDBSecurityGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDBSecurityGroupsOutput, context: context)
        type = Types::DescribeDBSecurityGroupsOutput.new
        type.marker = params[:marker]
        type.db_security_groups = DBSecurityGroups.build(params[:db_security_groups], context: "#{context}[:db_security_groups]") unless params[:db_security_groups].nil?
        type
      end
    end

    module DescribeDBSnapshotAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDBSnapshotAttributesInput, context: context)
        type = Types::DescribeDBSnapshotAttributesInput.new
        type.db_snapshot_identifier = params[:db_snapshot_identifier]
        type
      end
    end

    module DescribeDBSnapshotAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDBSnapshotAttributesOutput, context: context)
        type = Types::DescribeDBSnapshotAttributesOutput.new
        type.db_snapshot_attributes_result = DBSnapshotAttributesResult.build(params[:db_snapshot_attributes_result], context: "#{context}[:db_snapshot_attributes_result]") unless params[:db_snapshot_attributes_result].nil?
        type
      end
    end

    module DescribeDBSnapshotsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDBSnapshotsInput, context: context)
        type = Types::DescribeDBSnapshotsInput.new
        type.db_instance_identifier = params[:db_instance_identifier]
        type.db_snapshot_identifier = params[:db_snapshot_identifier]
        type.snapshot_type = params[:snapshot_type]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type.include_shared = params[:include_shared]
        type.include_public = params[:include_public]
        type.dbi_resource_id = params[:dbi_resource_id]
        type
      end
    end

    module DescribeDBSnapshotsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDBSnapshotsOutput, context: context)
        type = Types::DescribeDBSnapshotsOutput.new
        type.marker = params[:marker]
        type.db_snapshots = DBSnapshotList.build(params[:db_snapshots], context: "#{context}[:db_snapshots]") unless params[:db_snapshots].nil?
        type
      end
    end

    module DescribeDBSubnetGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDBSubnetGroupsInput, context: context)
        type = Types::DescribeDBSubnetGroupsInput.new
        type.db_subnet_group_name = params[:db_subnet_group_name]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeDBSubnetGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDBSubnetGroupsOutput, context: context)
        type = Types::DescribeDBSubnetGroupsOutput.new
        type.marker = params[:marker]
        type.db_subnet_groups = DBSubnetGroups.build(params[:db_subnet_groups], context: "#{context}[:db_subnet_groups]") unless params[:db_subnet_groups].nil?
        type
      end
    end

    module DescribeEngineDefaultClusterParametersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEngineDefaultClusterParametersInput, context: context)
        type = Types::DescribeEngineDefaultClusterParametersInput.new
        type.db_parameter_group_family = params[:db_parameter_group_family]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeEngineDefaultClusterParametersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEngineDefaultClusterParametersOutput, context: context)
        type = Types::DescribeEngineDefaultClusterParametersOutput.new
        type.engine_defaults = EngineDefaults.build(params[:engine_defaults], context: "#{context}[:engine_defaults]") unless params[:engine_defaults].nil?
        type
      end
    end

    module DescribeEngineDefaultParametersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEngineDefaultParametersInput, context: context)
        type = Types::DescribeEngineDefaultParametersInput.new
        type.db_parameter_group_family = params[:db_parameter_group_family]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeEngineDefaultParametersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEngineDefaultParametersOutput, context: context)
        type = Types::DescribeEngineDefaultParametersOutput.new
        type.engine_defaults = EngineDefaults.build(params[:engine_defaults], context: "#{context}[:engine_defaults]") unless params[:engine_defaults].nil?
        type
      end
    end

    module DescribeEventCategoriesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEventCategoriesInput, context: context)
        type = Types::DescribeEventCategoriesInput.new
        type.source_type = params[:source_type]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module DescribeEventCategoriesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEventCategoriesOutput, context: context)
        type = Types::DescribeEventCategoriesOutput.new
        type.event_categories_map_list = EventCategoriesMapList.build(params[:event_categories_map_list], context: "#{context}[:event_categories_map_list]") unless params[:event_categories_map_list].nil?
        type
      end
    end

    module DescribeEventSubscriptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEventSubscriptionsInput, context: context)
        type = Types::DescribeEventSubscriptionsInput.new
        type.subscription_name = params[:subscription_name]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeEventSubscriptionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEventSubscriptionsOutput, context: context)
        type = Types::DescribeEventSubscriptionsOutput.new
        type.marker = params[:marker]
        type.event_subscriptions_list = EventSubscriptionsList.build(params[:event_subscriptions_list], context: "#{context}[:event_subscriptions_list]") unless params[:event_subscriptions_list].nil?
        type
      end
    end

    module DescribeEventsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEventsInput, context: context)
        type = Types::DescribeEventsInput.new
        type.source_identifier = params[:source_identifier]
        type.source_type = params[:source_type]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.duration = params[:duration]
        type.event_categories = EventCategoriesList.build(params[:event_categories], context: "#{context}[:event_categories]") unless params[:event_categories].nil?
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeEventsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEventsOutput, context: context)
        type = Types::DescribeEventsOutput.new
        type.marker = params[:marker]
        type.events = EventList.build(params[:events], context: "#{context}[:events]") unless params[:events].nil?
        type
      end
    end

    module DescribeExportTasksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeExportTasksInput, context: context)
        type = Types::DescribeExportTasksInput.new
        type.export_task_identifier = params[:export_task_identifier]
        type.source_arn = params[:source_arn]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.marker = params[:marker]
        type.max_records = params[:max_records]
        type
      end
    end

    module DescribeExportTasksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeExportTasksOutput, context: context)
        type = Types::DescribeExportTasksOutput.new
        type.marker = params[:marker]
        type.export_tasks = ExportTasksList.build(params[:export_tasks], context: "#{context}[:export_tasks]") unless params[:export_tasks].nil?
        type
      end
    end

    module DescribeGlobalClustersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeGlobalClustersInput, context: context)
        type = Types::DescribeGlobalClustersInput.new
        type.global_cluster_identifier = params[:global_cluster_identifier]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeGlobalClustersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeGlobalClustersOutput, context: context)
        type = Types::DescribeGlobalClustersOutput.new
        type.marker = params[:marker]
        type.global_clusters = GlobalClusterList.build(params[:global_clusters], context: "#{context}[:global_clusters]") unless params[:global_clusters].nil?
        type
      end
    end

    module DescribeOptionGroupOptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeOptionGroupOptionsInput, context: context)
        type = Types::DescribeOptionGroupOptionsInput.new
        type.engine_name = params[:engine_name]
        type.major_engine_version = params[:major_engine_version]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeOptionGroupOptionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeOptionGroupOptionsOutput, context: context)
        type = Types::DescribeOptionGroupOptionsOutput.new
        type.option_group_options = OptionGroupOptionsList.build(params[:option_group_options], context: "#{context}[:option_group_options]") unless params[:option_group_options].nil?
        type.marker = params[:marker]
        type
      end
    end

    module DescribeOptionGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeOptionGroupsInput, context: context)
        type = Types::DescribeOptionGroupsInput.new
        type.option_group_name = params[:option_group_name]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.marker = params[:marker]
        type.max_records = params[:max_records]
        type.engine_name = params[:engine_name]
        type.major_engine_version = params[:major_engine_version]
        type
      end
    end

    module DescribeOptionGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeOptionGroupsOutput, context: context)
        type = Types::DescribeOptionGroupsOutput.new
        type.option_groups_list = OptionGroupsList.build(params[:option_groups_list], context: "#{context}[:option_groups_list]") unless params[:option_groups_list].nil?
        type.marker = params[:marker]
        type
      end
    end

    module DescribeOrderableDBInstanceOptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeOrderableDBInstanceOptionsInput, context: context)
        type = Types::DescribeOrderableDBInstanceOptionsInput.new
        type.engine = params[:engine]
        type.engine_version = params[:engine_version]
        type.db_instance_class = params[:db_instance_class]
        type.license_model = params[:license_model]
        type.availability_zone_group = params[:availability_zone_group]
        type.vpc = params[:vpc]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeOrderableDBInstanceOptionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeOrderableDBInstanceOptionsOutput, context: context)
        type = Types::DescribeOrderableDBInstanceOptionsOutput.new
        type.orderable_db_instance_options = OrderableDBInstanceOptionsList.build(params[:orderable_db_instance_options], context: "#{context}[:orderable_db_instance_options]") unless params[:orderable_db_instance_options].nil?
        type.marker = params[:marker]
        type
      end
    end

    module DescribePendingMaintenanceActionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePendingMaintenanceActionsInput, context: context)
        type = Types::DescribePendingMaintenanceActionsInput.new
        type.resource_identifier = params[:resource_identifier]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.marker = params[:marker]
        type.max_records = params[:max_records]
        type
      end
    end

    module DescribePendingMaintenanceActionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePendingMaintenanceActionsOutput, context: context)
        type = Types::DescribePendingMaintenanceActionsOutput.new
        type.pending_maintenance_actions = PendingMaintenanceActions.build(params[:pending_maintenance_actions], context: "#{context}[:pending_maintenance_actions]") unless params[:pending_maintenance_actions].nil?
        type.marker = params[:marker]
        type
      end
    end

    module DescribeReservedDBInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReservedDBInstancesInput, context: context)
        type = Types::DescribeReservedDBInstancesInput.new
        type.reserved_db_instance_id = params[:reserved_db_instance_id]
        type.reserved_db_instances_offering_id = params[:reserved_db_instances_offering_id]
        type.db_instance_class = params[:db_instance_class]
        type.duration = params[:duration]
        type.product_description = params[:product_description]
        type.offering_type = params[:offering_type]
        type.multi_az = params[:multi_az]
        type.lease_id = params[:lease_id]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeReservedDBInstancesOfferingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReservedDBInstancesOfferingsInput, context: context)
        type = Types::DescribeReservedDBInstancesOfferingsInput.new
        type.reserved_db_instances_offering_id = params[:reserved_db_instances_offering_id]
        type.db_instance_class = params[:db_instance_class]
        type.duration = params[:duration]
        type.product_description = params[:product_description]
        type.offering_type = params[:offering_type]
        type.multi_az = params[:multi_az]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeReservedDBInstancesOfferingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReservedDBInstancesOfferingsOutput, context: context)
        type = Types::DescribeReservedDBInstancesOfferingsOutput.new
        type.marker = params[:marker]
        type.reserved_db_instances_offerings = ReservedDBInstancesOfferingList.build(params[:reserved_db_instances_offerings], context: "#{context}[:reserved_db_instances_offerings]") unless params[:reserved_db_instances_offerings].nil?
        type
      end
    end

    module DescribeReservedDBInstancesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReservedDBInstancesOutput, context: context)
        type = Types::DescribeReservedDBInstancesOutput.new
        type.marker = params[:marker]
        type.reserved_db_instances = ReservedDBInstanceList.build(params[:reserved_db_instances], context: "#{context}[:reserved_db_instances]") unless params[:reserved_db_instances].nil?
        type
      end
    end

    module DescribeSourceRegionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSourceRegionsInput, context: context)
        type = Types::DescribeSourceRegionsInput.new
        type.region_name = params[:region_name]
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module DescribeSourceRegionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSourceRegionsOutput, context: context)
        type = Types::DescribeSourceRegionsOutput.new
        type.marker = params[:marker]
        type.source_regions = SourceRegionList.build(params[:source_regions], context: "#{context}[:source_regions]") unless params[:source_regions].nil?
        type
      end
    end

    module DescribeValidDBInstanceModificationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeValidDBInstanceModificationsInput, context: context)
        type = Types::DescribeValidDBInstanceModificationsInput.new
        type.db_instance_identifier = params[:db_instance_identifier]
        type
      end
    end

    module DescribeValidDBInstanceModificationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeValidDBInstanceModificationsOutput, context: context)
        type = Types::DescribeValidDBInstanceModificationsOutput.new
        type.valid_db_instance_modifications_message = ValidDBInstanceModificationsMessage.build(params[:valid_db_instance_modifications_message], context: "#{context}[:valid_db_instance_modifications_message]") unless params[:valid_db_instance_modifications_message].nil?
        type
      end
    end

    module DomainMembership
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DomainMembership, context: context)
        type = Types::DomainMembership.new
        type.domain = params[:domain]
        type.status = params[:status]
        type.fqdn = params[:fqdn]
        type.iam_role_name = params[:iam_role_name]
        type
      end
    end

    module DomainMembershipList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DomainMembership.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DomainNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DomainNotFoundFault, context: context)
        type = Types::DomainNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module DoubleRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DoubleRange, context: context)
        type = Types::DoubleRange.new
        type.from = params[:from]
        type.to = params[:to]
        type
      end
    end

    module DoubleRangeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DoubleRange.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DownloadDBLogFilePortionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DownloadDBLogFilePortionInput, context: context)
        type = Types::DownloadDBLogFilePortionInput.new
        type.db_instance_identifier = params[:db_instance_identifier]
        type.log_file_name = params[:log_file_name]
        type.marker = params[:marker]
        type.number_of_lines = params[:number_of_lines]
        type
      end
    end

    module DownloadDBLogFilePortionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DownloadDBLogFilePortionOutput, context: context)
        type = Types::DownloadDBLogFilePortionOutput.new
        type.log_file_data = params[:log_file_data]
        type.marker = params[:marker]
        type.additional_data_pending = params[:additional_data_pending]
        type
      end
    end

    module EC2SecurityGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EC2SecurityGroup, context: context)
        type = Types::EC2SecurityGroup.new
        type.status = params[:status]
        type.ec2_security_group_name = params[:ec2_security_group_name]
        type.ec2_security_group_id = params[:ec2_security_group_id]
        type.ec2_security_group_owner_id = params[:ec2_security_group_owner_id]
        type
      end
    end

    module EC2SecurityGroupList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EC2SecurityGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Endpoint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Endpoint, context: context)
        type = Types::Endpoint.new
        type.address = params[:address]
        type.port = params[:port]
        type.hosted_zone_id = params[:hosted_zone_id]
        type
      end
    end

    module EngineDefaults
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EngineDefaults, context: context)
        type = Types::EngineDefaults.new
        type.db_parameter_group_family = params[:db_parameter_group_family]
        type.marker = params[:marker]
        type.parameters = ParametersList.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type
      end
    end

    module EngineModeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Event
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Event, context: context)
        type = Types::Event.new
        type.source_identifier = params[:source_identifier]
        type.source_type = params[:source_type]
        type.message = params[:message]
        type.event_categories = EventCategoriesList.build(params[:event_categories], context: "#{context}[:event_categories]") unless params[:event_categories].nil?
        type.date = params[:date]
        type.source_arn = params[:source_arn]
        type
      end
    end

    module EventCategoriesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module EventCategoriesMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventCategoriesMap, context: context)
        type = Types::EventCategoriesMap.new
        type.source_type = params[:source_type]
        type.event_categories = EventCategoriesList.build(params[:event_categories], context: "#{context}[:event_categories]") unless params[:event_categories].nil?
        type
      end
    end

    module EventCategoriesMapList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EventCategoriesMap.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EventList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Event.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EventSubscription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventSubscription, context: context)
        type = Types::EventSubscription.new
        type.customer_aws_id = params[:customer_aws_id]
        type.cust_subscription_id = params[:cust_subscription_id]
        type.sns_topic_arn = params[:sns_topic_arn]
        type.status = params[:status]
        type.subscription_creation_time = params[:subscription_creation_time]
        type.source_type = params[:source_type]
        type.source_ids_list = SourceIdsList.build(params[:source_ids_list], context: "#{context}[:source_ids_list]") unless params[:source_ids_list].nil?
        type.event_categories_list = EventCategoriesList.build(params[:event_categories_list], context: "#{context}[:event_categories_list]") unless params[:event_categories_list].nil?
        type.enabled = params[:enabled]
        type.event_subscription_arn = params[:event_subscription_arn]
        type
      end
    end

    module EventSubscriptionQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventSubscriptionQuotaExceededFault, context: context)
        type = Types::EventSubscriptionQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module EventSubscriptionsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EventSubscription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ExportTask
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportTask, context: context)
        type = Types::ExportTask.new
        type.export_task_identifier = params[:export_task_identifier]
        type.source_arn = params[:source_arn]
        type.export_only = StringList.build(params[:export_only], context: "#{context}[:export_only]") unless params[:export_only].nil?
        type.snapshot_time = params[:snapshot_time]
        type.task_start_time = params[:task_start_time]
        type.task_end_time = params[:task_end_time]
        type.s3_bucket = params[:s3_bucket]
        type.s3_prefix = params[:s3_prefix]
        type.iam_role_arn = params[:iam_role_arn]
        type.kms_key_id = params[:kms_key_id]
        type.status = params[:status]
        type.percent_progress = params[:percent_progress]
        type.total_extracted_data_in_gb = params[:total_extracted_data_in_gb]
        type.failure_cause = params[:failure_cause]
        type.warning_message = params[:warning_message]
        type
      end
    end

    module ExportTaskAlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportTaskAlreadyExistsFault, context: context)
        type = Types::ExportTaskAlreadyExistsFault.new
        type.message = params[:message]
        type
      end
    end

    module ExportTaskNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportTaskNotFoundFault, context: context)
        type = Types::ExportTaskNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module ExportTasksList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ExportTask.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FailoverDBClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FailoverDBClusterInput, context: context)
        type = Types::FailoverDBClusterInput.new
        type.db_cluster_identifier = params[:db_cluster_identifier]
        type.target_db_instance_identifier = params[:target_db_instance_identifier]
        type
      end
    end

    module FailoverDBClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FailoverDBClusterOutput, context: context)
        type = Types::FailoverDBClusterOutput.new
        type.db_cluster = DBCluster.build(params[:db_cluster], context: "#{context}[:db_cluster]") unless params[:db_cluster].nil?
        type
      end
    end

    module FailoverGlobalClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FailoverGlobalClusterInput, context: context)
        type = Types::FailoverGlobalClusterInput.new
        type.global_cluster_identifier = params[:global_cluster_identifier]
        type.target_db_cluster_identifier = params[:target_db_cluster_identifier]
        type
      end
    end

    module FailoverGlobalClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FailoverGlobalClusterOutput, context: context)
        type = Types::FailoverGlobalClusterOutput.new
        type.global_cluster = GlobalCluster.build(params[:global_cluster], context: "#{context}[:global_cluster]") unless params[:global_cluster].nil?
        type
      end
    end

    module FailoverState
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FailoverState, context: context)
        type = Types::FailoverState.new
        type.status = params[:status]
        type.from_db_cluster_arn = params[:from_db_cluster_arn]
        type.to_db_cluster_arn = params[:to_db_cluster_arn]
        type
      end
    end

    module FeatureNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Filter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Filter, context: context)
        type = Types::Filter.new
        type.name = params[:name]
        type.values = FilterValueList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module FilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Filter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FilterValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module GlobalCluster
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GlobalCluster, context: context)
        type = Types::GlobalCluster.new
        type.global_cluster_identifier = params[:global_cluster_identifier]
        type.global_cluster_resource_id = params[:global_cluster_resource_id]
        type.global_cluster_arn = params[:global_cluster_arn]
        type.status = params[:status]
        type.engine = params[:engine]
        type.engine_version = params[:engine_version]
        type.database_name = params[:database_name]
        type.storage_encrypted = params[:storage_encrypted]
        type.deletion_protection = params[:deletion_protection]
        type.global_cluster_members = GlobalClusterMemberList.build(params[:global_cluster_members], context: "#{context}[:global_cluster_members]") unless params[:global_cluster_members].nil?
        type.failover_state = FailoverState.build(params[:failover_state], context: "#{context}[:failover_state]") unless params[:failover_state].nil?
        type
      end
    end

    module GlobalClusterAlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GlobalClusterAlreadyExistsFault, context: context)
        type = Types::GlobalClusterAlreadyExistsFault.new
        type.message = params[:message]
        type
      end
    end

    module GlobalClusterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GlobalCluster.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GlobalClusterMember
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GlobalClusterMember, context: context)
        type = Types::GlobalClusterMember.new
        type.db_cluster_arn = params[:db_cluster_arn]
        type.readers = ReadersArnList.build(params[:readers], context: "#{context}[:readers]") unless params[:readers].nil?
        type.is_writer = params[:is_writer]
        type.global_write_forwarding_status = params[:global_write_forwarding_status]
        type
      end
    end

    module GlobalClusterMemberList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GlobalClusterMember.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GlobalClusterNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GlobalClusterNotFoundFault, context: context)
        type = Types::GlobalClusterNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module GlobalClusterQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GlobalClusterQuotaExceededFault, context: context)
        type = Types::GlobalClusterQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module IPRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IPRange, context: context)
        type = Types::IPRange.new
        type.status = params[:status]
        type.cidrip = params[:cidrip]
        type
      end
    end

    module IPRangeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << IPRange.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module IamRoleMissingPermissionsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IamRoleMissingPermissionsFault, context: context)
        type = Types::IamRoleMissingPermissionsFault.new
        type.message = params[:message]
        type
      end
    end

    module IamRoleNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IamRoleNotFoundFault, context: context)
        type = Types::IamRoleNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module InstanceQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceQuotaExceededFault, context: context)
        type = Types::InstanceQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module InsufficientAvailableIPsInSubnetFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InsufficientAvailableIPsInSubnetFault, context: context)
        type = Types::InsufficientAvailableIPsInSubnetFault.new
        type.message = params[:message]
        type
      end
    end

    module InsufficientDBClusterCapacityFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InsufficientDBClusterCapacityFault, context: context)
        type = Types::InsufficientDBClusterCapacityFault.new
        type.message = params[:message]
        type
      end
    end

    module InsufficientDBInstanceCapacityFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InsufficientDBInstanceCapacityFault, context: context)
        type = Types::InsufficientDBInstanceCapacityFault.new
        type.message = params[:message]
        type
      end
    end

    module InsufficientStorageClusterCapacityFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InsufficientStorageClusterCapacityFault, context: context)
        type = Types::InsufficientStorageClusterCapacityFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidCustomDBEngineVersionStateFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidCustomDBEngineVersionStateFault, context: context)
        type = Types::InvalidCustomDBEngineVersionStateFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidDBClusterCapacityFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidDBClusterCapacityFault, context: context)
        type = Types::InvalidDBClusterCapacityFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidDBClusterEndpointStateFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidDBClusterEndpointStateFault, context: context)
        type = Types::InvalidDBClusterEndpointStateFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidDBClusterSnapshotStateFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidDBClusterSnapshotStateFault, context: context)
        type = Types::InvalidDBClusterSnapshotStateFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidDBClusterStateFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidDBClusterStateFault, context: context)
        type = Types::InvalidDBClusterStateFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidDBInstanceAutomatedBackupStateFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidDBInstanceAutomatedBackupStateFault, context: context)
        type = Types::InvalidDBInstanceAutomatedBackupStateFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidDBInstanceStateFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidDBInstanceStateFault, context: context)
        type = Types::InvalidDBInstanceStateFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidDBParameterGroupStateFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidDBParameterGroupStateFault, context: context)
        type = Types::InvalidDBParameterGroupStateFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidDBProxyEndpointStateFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidDBProxyEndpointStateFault, context: context)
        type = Types::InvalidDBProxyEndpointStateFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidDBProxyStateFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidDBProxyStateFault, context: context)
        type = Types::InvalidDBProxyStateFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidDBSecurityGroupStateFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidDBSecurityGroupStateFault, context: context)
        type = Types::InvalidDBSecurityGroupStateFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidDBSnapshotStateFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidDBSnapshotStateFault, context: context)
        type = Types::InvalidDBSnapshotStateFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidDBSubnetGroupFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidDBSubnetGroupFault, context: context)
        type = Types::InvalidDBSubnetGroupFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidDBSubnetGroupStateFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidDBSubnetGroupStateFault, context: context)
        type = Types::InvalidDBSubnetGroupStateFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidDBSubnetStateFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidDBSubnetStateFault, context: context)
        type = Types::InvalidDBSubnetStateFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidEventSubscriptionStateFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidEventSubscriptionStateFault, context: context)
        type = Types::InvalidEventSubscriptionStateFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidExportOnlyFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidExportOnlyFault, context: context)
        type = Types::InvalidExportOnlyFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidExportSourceStateFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidExportSourceStateFault, context: context)
        type = Types::InvalidExportSourceStateFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidExportTaskStateFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidExportTaskStateFault, context: context)
        type = Types::InvalidExportTaskStateFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidGlobalClusterStateFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidGlobalClusterStateFault, context: context)
        type = Types::InvalidGlobalClusterStateFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidOptionGroupStateFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidOptionGroupStateFault, context: context)
        type = Types::InvalidOptionGroupStateFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidRestoreFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRestoreFault, context: context)
        type = Types::InvalidRestoreFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidS3BucketFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidS3BucketFault, context: context)
        type = Types::InvalidS3BucketFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidSubnet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidSubnet, context: context)
        type = Types::InvalidSubnet.new
        type.message = params[:message]
        type
      end
    end

    module InvalidVPCNetworkStateFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidVPCNetworkStateFault, context: context)
        type = Types::InvalidVPCNetworkStateFault.new
        type.message = params[:message]
        type
      end
    end

    module KMSKeyNotAccessibleFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KMSKeyNotAccessibleFault, context: context)
        type = Types::KMSKeyNotAccessibleFault.new
        type.message = params[:message]
        type
      end
    end

    module KeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_name = params[:resource_name]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tag_list = TagList.build(params[:tag_list], context: "#{context}[:tag_list]") unless params[:tag_list].nil?
        type
      end
    end

    module LogTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module MinimumEngineVersionPerAllowedValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MinimumEngineVersionPerAllowedValue, context: context)
        type = Types::MinimumEngineVersionPerAllowedValue.new
        type.allowed_value = params[:allowed_value]
        type.minimum_engine_version = params[:minimum_engine_version]
        type
      end
    end

    module MinimumEngineVersionPerAllowedValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MinimumEngineVersionPerAllowedValue.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ModifyCertificatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyCertificatesInput, context: context)
        type = Types::ModifyCertificatesInput.new
        type.certificate_identifier = params[:certificate_identifier]
        type.remove_customer_override = params[:remove_customer_override]
        type
      end
    end

    module ModifyCertificatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyCertificatesOutput, context: context)
        type = Types::ModifyCertificatesOutput.new
        type.certificate = Certificate.build(params[:certificate], context: "#{context}[:certificate]") unless params[:certificate].nil?
        type
      end
    end

    module ModifyCurrentDBClusterCapacityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyCurrentDBClusterCapacityInput, context: context)
        type = Types::ModifyCurrentDBClusterCapacityInput.new
        type.db_cluster_identifier = params[:db_cluster_identifier]
        type.capacity = params[:capacity]
        type.seconds_before_timeout = params[:seconds_before_timeout]
        type.timeout_action = params[:timeout_action]
        type
      end
    end

    module ModifyCurrentDBClusterCapacityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyCurrentDBClusterCapacityOutput, context: context)
        type = Types::ModifyCurrentDBClusterCapacityOutput.new
        type.db_cluster_identifier = params[:db_cluster_identifier]
        type.pending_capacity = params[:pending_capacity]
        type.current_capacity = params[:current_capacity]
        type.seconds_before_timeout = params[:seconds_before_timeout]
        type.timeout_action = params[:timeout_action]
        type
      end
    end

    module ModifyCustomDBEngineVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyCustomDBEngineVersionInput, context: context)
        type = Types::ModifyCustomDBEngineVersionInput.new
        type.engine = params[:engine]
        type.engine_version = params[:engine_version]
        type.description = params[:description]
        type.status = params[:status]
        type
      end
    end

    module ModifyCustomDBEngineVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyCustomDBEngineVersionOutput, context: context)
        type = Types::ModifyCustomDBEngineVersionOutput.new
        type.engine = params[:engine]
        type.engine_version = params[:engine_version]
        type.db_parameter_group_family = params[:db_parameter_group_family]
        type.db_engine_description = params[:db_engine_description]
        type.db_engine_version_description = params[:db_engine_version_description]
        type.default_character_set = CharacterSet.build(params[:default_character_set], context: "#{context}[:default_character_set]") unless params[:default_character_set].nil?
        type.supported_character_sets = SupportedCharacterSetsList.build(params[:supported_character_sets], context: "#{context}[:supported_character_sets]") unless params[:supported_character_sets].nil?
        type.supported_nchar_character_sets = SupportedCharacterSetsList.build(params[:supported_nchar_character_sets], context: "#{context}[:supported_nchar_character_sets]") unless params[:supported_nchar_character_sets].nil?
        type.valid_upgrade_target = ValidUpgradeTargetList.build(params[:valid_upgrade_target], context: "#{context}[:valid_upgrade_target]") unless params[:valid_upgrade_target].nil?
        type.supported_timezones = SupportedTimezonesList.build(params[:supported_timezones], context: "#{context}[:supported_timezones]") unless params[:supported_timezones].nil?
        type.exportable_log_types = LogTypeList.build(params[:exportable_log_types], context: "#{context}[:exportable_log_types]") unless params[:exportable_log_types].nil?
        type.supports_log_exports_to_cloudwatch_logs = params[:supports_log_exports_to_cloudwatch_logs]
        type.supports_read_replica = params[:supports_read_replica]
        type.supported_engine_modes = EngineModeList.build(params[:supported_engine_modes], context: "#{context}[:supported_engine_modes]") unless params[:supported_engine_modes].nil?
        type.supported_feature_names = FeatureNameList.build(params[:supported_feature_names], context: "#{context}[:supported_feature_names]") unless params[:supported_feature_names].nil?
        type.status = params[:status]
        type.supports_parallel_query = params[:supports_parallel_query]
        type.supports_global_databases = params[:supports_global_databases]
        type.major_engine_version = params[:major_engine_version]
        type.database_installation_files_s3_bucket_name = params[:database_installation_files_s3_bucket_name]
        type.database_installation_files_s3_prefix = params[:database_installation_files_s3_prefix]
        type.db_engine_version_arn = params[:db_engine_version_arn]
        type.kms_key_id = params[:kms_key_id]
        type.create_time = params[:create_time]
        type.tag_list = TagList.build(params[:tag_list], context: "#{context}[:tag_list]") unless params[:tag_list].nil?
        type.supports_babelfish = params[:supports_babelfish]
        type
      end
    end

    module ModifyDBClusterEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyDBClusterEndpointInput, context: context)
        type = Types::ModifyDBClusterEndpointInput.new
        type.db_cluster_endpoint_identifier = params[:db_cluster_endpoint_identifier]
        type.endpoint_type = params[:endpoint_type]
        type.static_members = StringList.build(params[:static_members], context: "#{context}[:static_members]") unless params[:static_members].nil?
        type.excluded_members = StringList.build(params[:excluded_members], context: "#{context}[:excluded_members]") unless params[:excluded_members].nil?
        type
      end
    end

    module ModifyDBClusterEndpointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyDBClusterEndpointOutput, context: context)
        type = Types::ModifyDBClusterEndpointOutput.new
        type.db_cluster_endpoint_identifier = params[:db_cluster_endpoint_identifier]
        type.db_cluster_identifier = params[:db_cluster_identifier]
        type.db_cluster_endpoint_resource_identifier = params[:db_cluster_endpoint_resource_identifier]
        type.endpoint = params[:endpoint]
        type.status = params[:status]
        type.endpoint_type = params[:endpoint_type]
        type.custom_endpoint_type = params[:custom_endpoint_type]
        type.static_members = StringList.build(params[:static_members], context: "#{context}[:static_members]") unless params[:static_members].nil?
        type.excluded_members = StringList.build(params[:excluded_members], context: "#{context}[:excluded_members]") unless params[:excluded_members].nil?
        type.db_cluster_endpoint_arn = params[:db_cluster_endpoint_arn]
        type
      end
    end

    module ModifyDBClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyDBClusterInput, context: context)
        type = Types::ModifyDBClusterInput.new
        type.db_cluster_identifier = params[:db_cluster_identifier]
        type.new_db_cluster_identifier = params[:new_db_cluster_identifier]
        type.apply_immediately = params[:apply_immediately]
        type.backup_retention_period = params[:backup_retention_period]
        type.db_cluster_parameter_group_name = params[:db_cluster_parameter_group_name]
        type.vpc_security_group_ids = VpcSecurityGroupIdList.build(params[:vpc_security_group_ids], context: "#{context}[:vpc_security_group_ids]") unless params[:vpc_security_group_ids].nil?
        type.port = params[:port]
        type.master_user_password = params[:master_user_password]
        type.option_group_name = params[:option_group_name]
        type.preferred_backup_window = params[:preferred_backup_window]
        type.preferred_maintenance_window = params[:preferred_maintenance_window]
        type.enable_iam_database_authentication = params[:enable_iam_database_authentication]
        type.backtrack_window = params[:backtrack_window]
        type.cloudwatch_logs_export_configuration = CloudwatchLogsExportConfiguration.build(params[:cloudwatch_logs_export_configuration], context: "#{context}[:cloudwatch_logs_export_configuration]") unless params[:cloudwatch_logs_export_configuration].nil?
        type.engine_version = params[:engine_version]
        type.allow_major_version_upgrade = params[:allow_major_version_upgrade]
        type.db_instance_parameter_group_name = params[:db_instance_parameter_group_name]
        type.domain = params[:domain]
        type.domain_iam_role_name = params[:domain_iam_role_name]
        type.scaling_configuration = ScalingConfiguration.build(params[:scaling_configuration], context: "#{context}[:scaling_configuration]") unless params[:scaling_configuration].nil?
        type.deletion_protection = params[:deletion_protection]
        type.enable_http_endpoint = params[:enable_http_endpoint]
        type.copy_tags_to_snapshot = params[:copy_tags_to_snapshot]
        type.enable_global_write_forwarding = params[:enable_global_write_forwarding]
        type.db_cluster_instance_class = params[:db_cluster_instance_class]
        type.allocated_storage = params[:allocated_storage]
        type.storage_type = params[:storage_type]
        type.iops = params[:iops]
        type.auto_minor_version_upgrade = params[:auto_minor_version_upgrade]
        type.monitoring_interval = params[:monitoring_interval]
        type.monitoring_role_arn = params[:monitoring_role_arn]
        type.enable_performance_insights = params[:enable_performance_insights]
        type.performance_insights_kms_key_id = params[:performance_insights_kms_key_id]
        type.performance_insights_retention_period = params[:performance_insights_retention_period]
        type.serverless_v2_scaling_configuration = ServerlessV2ScalingConfiguration.build(params[:serverless_v2_scaling_configuration], context: "#{context}[:serverless_v2_scaling_configuration]") unless params[:serverless_v2_scaling_configuration].nil?
        type
      end
    end

    module ModifyDBClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyDBClusterOutput, context: context)
        type = Types::ModifyDBClusterOutput.new
        type.db_cluster = DBCluster.build(params[:db_cluster], context: "#{context}[:db_cluster]") unless params[:db_cluster].nil?
        type
      end
    end

    module ModifyDBClusterParameterGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyDBClusterParameterGroupInput, context: context)
        type = Types::ModifyDBClusterParameterGroupInput.new
        type.db_cluster_parameter_group_name = params[:db_cluster_parameter_group_name]
        type.parameters = ParametersList.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type
      end
    end

    module ModifyDBClusterParameterGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyDBClusterParameterGroupOutput, context: context)
        type = Types::ModifyDBClusterParameterGroupOutput.new
        type.db_cluster_parameter_group_name = params[:db_cluster_parameter_group_name]
        type
      end
    end

    module ModifyDBClusterSnapshotAttributeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyDBClusterSnapshotAttributeInput, context: context)
        type = Types::ModifyDBClusterSnapshotAttributeInput.new
        type.db_cluster_snapshot_identifier = params[:db_cluster_snapshot_identifier]
        type.attribute_name = params[:attribute_name]
        type.values_to_add = AttributeValueList.build(params[:values_to_add], context: "#{context}[:values_to_add]") unless params[:values_to_add].nil?
        type.values_to_remove = AttributeValueList.build(params[:values_to_remove], context: "#{context}[:values_to_remove]") unless params[:values_to_remove].nil?
        type
      end
    end

    module ModifyDBClusterSnapshotAttributeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyDBClusterSnapshotAttributeOutput, context: context)
        type = Types::ModifyDBClusterSnapshotAttributeOutput.new
        type.db_cluster_snapshot_attributes_result = DBClusterSnapshotAttributesResult.build(params[:db_cluster_snapshot_attributes_result], context: "#{context}[:db_cluster_snapshot_attributes_result]") unless params[:db_cluster_snapshot_attributes_result].nil?
        type
      end
    end

    module ModifyDBInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyDBInstanceInput, context: context)
        type = Types::ModifyDBInstanceInput.new
        type.db_instance_identifier = params[:db_instance_identifier]
        type.allocated_storage = params[:allocated_storage]
        type.db_instance_class = params[:db_instance_class]
        type.db_subnet_group_name = params[:db_subnet_group_name]
        type.db_security_groups = DBSecurityGroupNameList.build(params[:db_security_groups], context: "#{context}[:db_security_groups]") unless params[:db_security_groups].nil?
        type.vpc_security_group_ids = VpcSecurityGroupIdList.build(params[:vpc_security_group_ids], context: "#{context}[:vpc_security_group_ids]") unless params[:vpc_security_group_ids].nil?
        type.apply_immediately = params[:apply_immediately]
        type.master_user_password = params[:master_user_password]
        type.db_parameter_group_name = params[:db_parameter_group_name]
        type.backup_retention_period = params[:backup_retention_period]
        type.preferred_backup_window = params[:preferred_backup_window]
        type.preferred_maintenance_window = params[:preferred_maintenance_window]
        type.multi_az = params[:multi_az]
        type.engine_version = params[:engine_version]
        type.allow_major_version_upgrade = params[:allow_major_version_upgrade]
        type.auto_minor_version_upgrade = params[:auto_minor_version_upgrade]
        type.license_model = params[:license_model]
        type.iops = params[:iops]
        type.option_group_name = params[:option_group_name]
        type.new_db_instance_identifier = params[:new_db_instance_identifier]
        type.storage_type = params[:storage_type]
        type.tde_credential_arn = params[:tde_credential_arn]
        type.tde_credential_password = params[:tde_credential_password]
        type.ca_certificate_identifier = params[:ca_certificate_identifier]
        type.domain = params[:domain]
        type.copy_tags_to_snapshot = params[:copy_tags_to_snapshot]
        type.monitoring_interval = params[:monitoring_interval]
        type.db_port_number = params[:db_port_number]
        type.publicly_accessible = params[:publicly_accessible]
        type.monitoring_role_arn = params[:monitoring_role_arn]
        type.domain_iam_role_name = params[:domain_iam_role_name]
        type.promotion_tier = params[:promotion_tier]
        type.enable_iam_database_authentication = params[:enable_iam_database_authentication]
        type.enable_performance_insights = params[:enable_performance_insights]
        type.performance_insights_kms_key_id = params[:performance_insights_kms_key_id]
        type.performance_insights_retention_period = params[:performance_insights_retention_period]
        type.cloudwatch_logs_export_configuration = CloudwatchLogsExportConfiguration.build(params[:cloudwatch_logs_export_configuration], context: "#{context}[:cloudwatch_logs_export_configuration]") unless params[:cloudwatch_logs_export_configuration].nil?
        type.processor_features = ProcessorFeatureList.build(params[:processor_features], context: "#{context}[:processor_features]") unless params[:processor_features].nil?
        type.use_default_processor_features = params[:use_default_processor_features]
        type.deletion_protection = params[:deletion_protection]
        type.max_allocated_storage = params[:max_allocated_storage]
        type.certificate_rotation_restart = params[:certificate_rotation_restart]
        type.replica_mode = params[:replica_mode]
        type.enable_customer_owned_ip = params[:enable_customer_owned_ip]
        type.aws_backup_recovery_point_arn = params[:aws_backup_recovery_point_arn]
        type.automation_mode = params[:automation_mode]
        type.resume_full_automation_mode_minutes = params[:resume_full_automation_mode_minutes]
        type.network_type = params[:network_type]
        type
      end
    end

    module ModifyDBInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyDBInstanceOutput, context: context)
        type = Types::ModifyDBInstanceOutput.new
        type.db_instance = DBInstance.build(params[:db_instance], context: "#{context}[:db_instance]") unless params[:db_instance].nil?
        type
      end
    end

    module ModifyDBParameterGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyDBParameterGroupInput, context: context)
        type = Types::ModifyDBParameterGroupInput.new
        type.db_parameter_group_name = params[:db_parameter_group_name]
        type.parameters = ParametersList.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type
      end
    end

    module ModifyDBParameterGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyDBParameterGroupOutput, context: context)
        type = Types::ModifyDBParameterGroupOutput.new
        type.db_parameter_group_name = params[:db_parameter_group_name]
        type
      end
    end

    module ModifyDBProxyEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyDBProxyEndpointInput, context: context)
        type = Types::ModifyDBProxyEndpointInput.new
        type.db_proxy_endpoint_name = params[:db_proxy_endpoint_name]
        type.new_db_proxy_endpoint_name = params[:new_db_proxy_endpoint_name]
        type.vpc_security_group_ids = StringList.build(params[:vpc_security_group_ids], context: "#{context}[:vpc_security_group_ids]") unless params[:vpc_security_group_ids].nil?
        type
      end
    end

    module ModifyDBProxyEndpointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyDBProxyEndpointOutput, context: context)
        type = Types::ModifyDBProxyEndpointOutput.new
        type.db_proxy_endpoint = DBProxyEndpoint.build(params[:db_proxy_endpoint], context: "#{context}[:db_proxy_endpoint]") unless params[:db_proxy_endpoint].nil?
        type
      end
    end

    module ModifyDBProxyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyDBProxyInput, context: context)
        type = Types::ModifyDBProxyInput.new
        type.db_proxy_name = params[:db_proxy_name]
        type.new_db_proxy_name = params[:new_db_proxy_name]
        type.auth = UserAuthConfigList.build(params[:auth], context: "#{context}[:auth]") unless params[:auth].nil?
        type.require_tls = params[:require_tls]
        type.idle_client_timeout = params[:idle_client_timeout]
        type.debug_logging = params[:debug_logging]
        type.role_arn = params[:role_arn]
        type.security_groups = StringList.build(params[:security_groups], context: "#{context}[:security_groups]") unless params[:security_groups].nil?
        type
      end
    end

    module ModifyDBProxyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyDBProxyOutput, context: context)
        type = Types::ModifyDBProxyOutput.new
        type.db_proxy = DBProxy.build(params[:db_proxy], context: "#{context}[:db_proxy]") unless params[:db_proxy].nil?
        type
      end
    end

    module ModifyDBProxyTargetGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyDBProxyTargetGroupInput, context: context)
        type = Types::ModifyDBProxyTargetGroupInput.new
        type.target_group_name = params[:target_group_name]
        type.db_proxy_name = params[:db_proxy_name]
        type.connection_pool_config = ConnectionPoolConfiguration.build(params[:connection_pool_config], context: "#{context}[:connection_pool_config]") unless params[:connection_pool_config].nil?
        type.new_name = params[:new_name]
        type
      end
    end

    module ModifyDBProxyTargetGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyDBProxyTargetGroupOutput, context: context)
        type = Types::ModifyDBProxyTargetGroupOutput.new
        type.db_proxy_target_group = DBProxyTargetGroup.build(params[:db_proxy_target_group], context: "#{context}[:db_proxy_target_group]") unless params[:db_proxy_target_group].nil?
        type
      end
    end

    module ModifyDBSnapshotAttributeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyDBSnapshotAttributeInput, context: context)
        type = Types::ModifyDBSnapshotAttributeInput.new
        type.db_snapshot_identifier = params[:db_snapshot_identifier]
        type.attribute_name = params[:attribute_name]
        type.values_to_add = AttributeValueList.build(params[:values_to_add], context: "#{context}[:values_to_add]") unless params[:values_to_add].nil?
        type.values_to_remove = AttributeValueList.build(params[:values_to_remove], context: "#{context}[:values_to_remove]") unless params[:values_to_remove].nil?
        type
      end
    end

    module ModifyDBSnapshotAttributeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyDBSnapshotAttributeOutput, context: context)
        type = Types::ModifyDBSnapshotAttributeOutput.new
        type.db_snapshot_attributes_result = DBSnapshotAttributesResult.build(params[:db_snapshot_attributes_result], context: "#{context}[:db_snapshot_attributes_result]") unless params[:db_snapshot_attributes_result].nil?
        type
      end
    end

    module ModifyDBSnapshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyDBSnapshotInput, context: context)
        type = Types::ModifyDBSnapshotInput.new
        type.db_snapshot_identifier = params[:db_snapshot_identifier]
        type.engine_version = params[:engine_version]
        type.option_group_name = params[:option_group_name]
        type
      end
    end

    module ModifyDBSnapshotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyDBSnapshotOutput, context: context)
        type = Types::ModifyDBSnapshotOutput.new
        type.db_snapshot = DBSnapshot.build(params[:db_snapshot], context: "#{context}[:db_snapshot]") unless params[:db_snapshot].nil?
        type
      end
    end

    module ModifyDBSubnetGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyDBSubnetGroupInput, context: context)
        type = Types::ModifyDBSubnetGroupInput.new
        type.db_subnet_group_name = params[:db_subnet_group_name]
        type.db_subnet_group_description = params[:db_subnet_group_description]
        type.subnet_ids = SubnetIdentifierList.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type
      end
    end

    module ModifyDBSubnetGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyDBSubnetGroupOutput, context: context)
        type = Types::ModifyDBSubnetGroupOutput.new
        type.db_subnet_group = DBSubnetGroup.build(params[:db_subnet_group], context: "#{context}[:db_subnet_group]") unless params[:db_subnet_group].nil?
        type
      end
    end

    module ModifyEventSubscriptionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyEventSubscriptionInput, context: context)
        type = Types::ModifyEventSubscriptionInput.new
        type.subscription_name = params[:subscription_name]
        type.sns_topic_arn = params[:sns_topic_arn]
        type.source_type = params[:source_type]
        type.event_categories = EventCategoriesList.build(params[:event_categories], context: "#{context}[:event_categories]") unless params[:event_categories].nil?
        type.enabled = params[:enabled]
        type
      end
    end

    module ModifyEventSubscriptionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyEventSubscriptionOutput, context: context)
        type = Types::ModifyEventSubscriptionOutput.new
        type.event_subscription = EventSubscription.build(params[:event_subscription], context: "#{context}[:event_subscription]") unless params[:event_subscription].nil?
        type
      end
    end

    module ModifyGlobalClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyGlobalClusterInput, context: context)
        type = Types::ModifyGlobalClusterInput.new
        type.global_cluster_identifier = params[:global_cluster_identifier]
        type.new_global_cluster_identifier = params[:new_global_cluster_identifier]
        type.deletion_protection = params[:deletion_protection]
        type.engine_version = params[:engine_version]
        type.allow_major_version_upgrade = params[:allow_major_version_upgrade]
        type
      end
    end

    module ModifyGlobalClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyGlobalClusterOutput, context: context)
        type = Types::ModifyGlobalClusterOutput.new
        type.global_cluster = GlobalCluster.build(params[:global_cluster], context: "#{context}[:global_cluster]") unless params[:global_cluster].nil?
        type
      end
    end

    module ModifyOptionGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyOptionGroupInput, context: context)
        type = Types::ModifyOptionGroupInput.new
        type.option_group_name = params[:option_group_name]
        type.options_to_include = OptionConfigurationList.build(params[:options_to_include], context: "#{context}[:options_to_include]") unless params[:options_to_include].nil?
        type.options_to_remove = OptionNamesList.build(params[:options_to_remove], context: "#{context}[:options_to_remove]") unless params[:options_to_remove].nil?
        type.apply_immediately = params[:apply_immediately]
        type
      end
    end

    module ModifyOptionGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyOptionGroupOutput, context: context)
        type = Types::ModifyOptionGroupOutput.new
        type.option_group = OptionGroup.build(params[:option_group], context: "#{context}[:option_group]") unless params[:option_group].nil?
        type
      end
    end

    module NetworkTypeNotSupported
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkTypeNotSupported, context: context)
        type = Types::NetworkTypeNotSupported.new
        type.message = params[:message]
        type
      end
    end

    module Option
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Option, context: context)
        type = Types::Option.new
        type.option_name = params[:option_name]
        type.option_description = params[:option_description]
        type.persistent = params[:persistent]
        type.permanent = params[:permanent]
        type.port = params[:port]
        type.option_version = params[:option_version]
        type.option_settings = OptionSettingConfigurationList.build(params[:option_settings], context: "#{context}[:option_settings]") unless params[:option_settings].nil?
        type.db_security_group_memberships = DBSecurityGroupMembershipList.build(params[:db_security_group_memberships], context: "#{context}[:db_security_group_memberships]") unless params[:db_security_group_memberships].nil?
        type.vpc_security_group_memberships = VpcSecurityGroupMembershipList.build(params[:vpc_security_group_memberships], context: "#{context}[:vpc_security_group_memberships]") unless params[:vpc_security_group_memberships].nil?
        type
      end
    end

    module OptionConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OptionConfiguration, context: context)
        type = Types::OptionConfiguration.new
        type.option_name = params[:option_name]
        type.port = params[:port]
        type.option_version = params[:option_version]
        type.db_security_group_memberships = DBSecurityGroupNameList.build(params[:db_security_group_memberships], context: "#{context}[:db_security_group_memberships]") unless params[:db_security_group_memberships].nil?
        type.vpc_security_group_memberships = VpcSecurityGroupIdList.build(params[:vpc_security_group_memberships], context: "#{context}[:vpc_security_group_memberships]") unless params[:vpc_security_group_memberships].nil?
        type.option_settings = OptionSettingsList.build(params[:option_settings], context: "#{context}[:option_settings]") unless params[:option_settings].nil?
        type
      end
    end

    module OptionConfigurationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OptionConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OptionGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OptionGroup, context: context)
        type = Types::OptionGroup.new
        type.option_group_name = params[:option_group_name]
        type.option_group_description = params[:option_group_description]
        type.engine_name = params[:engine_name]
        type.major_engine_version = params[:major_engine_version]
        type.options = OptionsList.build(params[:options], context: "#{context}[:options]") unless params[:options].nil?
        type.allows_vpc_and_non_vpc_instance_memberships = params[:allows_vpc_and_non_vpc_instance_memberships]
        type.vpc_id = params[:vpc_id]
        type.option_group_arn = params[:option_group_arn]
        type
      end
    end

    module OptionGroupAlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OptionGroupAlreadyExistsFault, context: context)
        type = Types::OptionGroupAlreadyExistsFault.new
        type.message = params[:message]
        type
      end
    end

    module OptionGroupMembership
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OptionGroupMembership, context: context)
        type = Types::OptionGroupMembership.new
        type.option_group_name = params[:option_group_name]
        type.status = params[:status]
        type
      end
    end

    module OptionGroupMembershipList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OptionGroupMembership.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OptionGroupNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OptionGroupNotFoundFault, context: context)
        type = Types::OptionGroupNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module OptionGroupOption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OptionGroupOption, context: context)
        type = Types::OptionGroupOption.new
        type.name = params[:name]
        type.description = params[:description]
        type.engine_name = params[:engine_name]
        type.major_engine_version = params[:major_engine_version]
        type.minimum_required_minor_engine_version = params[:minimum_required_minor_engine_version]
        type.port_required = params[:port_required]
        type.default_port = params[:default_port]
        type.options_depended_on = OptionsDependedOn.build(params[:options_depended_on], context: "#{context}[:options_depended_on]") unless params[:options_depended_on].nil?
        type.options_conflicts_with = OptionsConflictsWith.build(params[:options_conflicts_with], context: "#{context}[:options_conflicts_with]") unless params[:options_conflicts_with].nil?
        type.persistent = params[:persistent]
        type.permanent = params[:permanent]
        type.requires_auto_minor_engine_version_upgrade = params[:requires_auto_minor_engine_version_upgrade]
        type.vpc_only = params[:vpc_only]
        type.supports_option_version_downgrade = params[:supports_option_version_downgrade]
        type.option_group_option_settings = OptionGroupOptionSettingsList.build(params[:option_group_option_settings], context: "#{context}[:option_group_option_settings]") unless params[:option_group_option_settings].nil?
        type.option_group_option_versions = OptionGroupOptionVersionsList.build(params[:option_group_option_versions], context: "#{context}[:option_group_option_versions]") unless params[:option_group_option_versions].nil?
        type
      end
    end

    module OptionGroupOptionSetting
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OptionGroupOptionSetting, context: context)
        type = Types::OptionGroupOptionSetting.new
        type.setting_name = params[:setting_name]
        type.setting_description = params[:setting_description]
        type.default_value = params[:default_value]
        type.apply_type = params[:apply_type]
        type.allowed_values = params[:allowed_values]
        type.is_modifiable = params[:is_modifiable]
        type.is_required = params[:is_required]
        type.minimum_engine_version_per_allowed_value = MinimumEngineVersionPerAllowedValueList.build(params[:minimum_engine_version_per_allowed_value], context: "#{context}[:minimum_engine_version_per_allowed_value]") unless params[:minimum_engine_version_per_allowed_value].nil?
        type
      end
    end

    module OptionGroupOptionSettingsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OptionGroupOptionSetting.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OptionGroupOptionVersionsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OptionVersion.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OptionGroupOptionsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OptionGroupOption.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OptionGroupQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OptionGroupQuotaExceededFault, context: context)
        type = Types::OptionGroupQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module OptionGroupsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OptionGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OptionNamesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module OptionSetting
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OptionSetting, context: context)
        type = Types::OptionSetting.new
        type.name = params[:name]
        type.value = params[:value]
        type.default_value = params[:default_value]
        type.description = params[:description]
        type.apply_type = params[:apply_type]
        type.data_type = params[:data_type]
        type.allowed_values = params[:allowed_values]
        type.is_modifiable = params[:is_modifiable]
        type.is_collection = params[:is_collection]
        type
      end
    end

    module OptionSettingConfigurationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OptionSetting.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OptionSettingsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OptionSetting.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OptionVersion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OptionVersion, context: context)
        type = Types::OptionVersion.new
        type.version = params[:version]
        type.is_default = params[:is_default]
        type
      end
    end

    module OptionsConflictsWith
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module OptionsDependedOn
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module OptionsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Option.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OrderableDBInstanceOption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OrderableDBInstanceOption, context: context)
        type = Types::OrderableDBInstanceOption.new
        type.engine = params[:engine]
        type.engine_version = params[:engine_version]
        type.db_instance_class = params[:db_instance_class]
        type.license_model = params[:license_model]
        type.availability_zone_group = params[:availability_zone_group]
        type.availability_zones = AvailabilityZoneList.build(params[:availability_zones], context: "#{context}[:availability_zones]") unless params[:availability_zones].nil?
        type.multi_az_capable = params[:multi_az_capable]
        type.read_replica_capable = params[:read_replica_capable]
        type.vpc = params[:vpc]
        type.supports_storage_encryption = params[:supports_storage_encryption]
        type.storage_type = params[:storage_type]
        type.supports_iops = params[:supports_iops]
        type.supports_enhanced_monitoring = params[:supports_enhanced_monitoring]
        type.supports_iam_database_authentication = params[:supports_iam_database_authentication]
        type.supports_performance_insights = params[:supports_performance_insights]
        type.min_storage_size = params[:min_storage_size]
        type.max_storage_size = params[:max_storage_size]
        type.min_iops_per_db_instance = params[:min_iops_per_db_instance]
        type.max_iops_per_db_instance = params[:max_iops_per_db_instance]
        type.min_iops_per_gib = params[:min_iops_per_gib]
        type.max_iops_per_gib = params[:max_iops_per_gib]
        type.available_processor_features = AvailableProcessorFeatureList.build(params[:available_processor_features], context: "#{context}[:available_processor_features]") unless params[:available_processor_features].nil?
        type.supported_engine_modes = EngineModeList.build(params[:supported_engine_modes], context: "#{context}[:supported_engine_modes]") unless params[:supported_engine_modes].nil?
        type.supports_storage_autoscaling = params[:supports_storage_autoscaling]
        type.supports_kerberos_authentication = params[:supports_kerberos_authentication]
        type.outpost_capable = params[:outpost_capable]
        type.supported_activity_stream_modes = ActivityStreamModeList.build(params[:supported_activity_stream_modes], context: "#{context}[:supported_activity_stream_modes]") unless params[:supported_activity_stream_modes].nil?
        type.supports_global_databases = params[:supports_global_databases]
        type.supports_clusters = params[:supports_clusters]
        type.supported_network_types = StringList.build(params[:supported_network_types], context: "#{context}[:supported_network_types]") unless params[:supported_network_types].nil?
        type
      end
    end

    module OrderableDBInstanceOptionsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OrderableDBInstanceOption.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Outpost
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Outpost, context: context)
        type = Types::Outpost.new
        type.arn = params[:arn]
        type
      end
    end

    module Parameter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Parameter, context: context)
        type = Types::Parameter.new
        type.parameter_name = params[:parameter_name]
        type.parameter_value = params[:parameter_value]
        type.description = params[:description]
        type.source = params[:source]
        type.apply_type = params[:apply_type]
        type.data_type = params[:data_type]
        type.allowed_values = params[:allowed_values]
        type.is_modifiable = params[:is_modifiable]
        type.minimum_engine_version = params[:minimum_engine_version]
        type.apply_method = params[:apply_method]
        type.supported_engine_modes = EngineModeList.build(params[:supported_engine_modes], context: "#{context}[:supported_engine_modes]") unless params[:supported_engine_modes].nil?
        type
      end
    end

    module ParametersList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Parameter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PendingCloudwatchLogsExports
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PendingCloudwatchLogsExports, context: context)
        type = Types::PendingCloudwatchLogsExports.new
        type.log_types_to_enable = LogTypeList.build(params[:log_types_to_enable], context: "#{context}[:log_types_to_enable]") unless params[:log_types_to_enable].nil?
        type.log_types_to_disable = LogTypeList.build(params[:log_types_to_disable], context: "#{context}[:log_types_to_disable]") unless params[:log_types_to_disable].nil?
        type
      end
    end

    module PendingMaintenanceAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PendingMaintenanceAction, context: context)
        type = Types::PendingMaintenanceAction.new
        type.action = params[:action]
        type.auto_applied_after_date = params[:auto_applied_after_date]
        type.forced_apply_date = params[:forced_apply_date]
        type.opt_in_status = params[:opt_in_status]
        type.current_apply_date = params[:current_apply_date]
        type.description = params[:description]
        type
      end
    end

    module PendingMaintenanceActionDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PendingMaintenanceAction.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PendingMaintenanceActions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourcePendingMaintenanceActions.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PendingModifiedValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PendingModifiedValues, context: context)
        type = Types::PendingModifiedValues.new
        type.db_instance_class = params[:db_instance_class]
        type.allocated_storage = params[:allocated_storage]
        type.master_user_password = params[:master_user_password]
        type.port = params[:port]
        type.backup_retention_period = params[:backup_retention_period]
        type.multi_az = params[:multi_az]
        type.engine_version = params[:engine_version]
        type.license_model = params[:license_model]
        type.iops = params[:iops]
        type.db_instance_identifier = params[:db_instance_identifier]
        type.storage_type = params[:storage_type]
        type.ca_certificate_identifier = params[:ca_certificate_identifier]
        type.db_subnet_group_name = params[:db_subnet_group_name]
        type.pending_cloudwatch_logs_exports = PendingCloudwatchLogsExports.build(params[:pending_cloudwatch_logs_exports], context: "#{context}[:pending_cloudwatch_logs_exports]") unless params[:pending_cloudwatch_logs_exports].nil?
        type.processor_features = ProcessorFeatureList.build(params[:processor_features], context: "#{context}[:processor_features]") unless params[:processor_features].nil?
        type.iam_database_authentication_enabled = params[:iam_database_authentication_enabled]
        type.automation_mode = params[:automation_mode]
        type.resume_full_automation_mode_time = params[:resume_full_automation_mode_time]
        type
      end
    end

    module PointInTimeRestoreNotEnabledFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PointInTimeRestoreNotEnabledFault, context: context)
        type = Types::PointInTimeRestoreNotEnabledFault.new
        type.message = params[:message]
        type
      end
    end

    module ProcessorFeature
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProcessorFeature, context: context)
        type = Types::ProcessorFeature.new
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module ProcessorFeatureList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProcessorFeature.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PromoteReadReplicaDBClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PromoteReadReplicaDBClusterInput, context: context)
        type = Types::PromoteReadReplicaDBClusterInput.new
        type.db_cluster_identifier = params[:db_cluster_identifier]
        type
      end
    end

    module PromoteReadReplicaDBClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PromoteReadReplicaDBClusterOutput, context: context)
        type = Types::PromoteReadReplicaDBClusterOutput.new
        type.db_cluster = DBCluster.build(params[:db_cluster], context: "#{context}[:db_cluster]") unless params[:db_cluster].nil?
        type
      end
    end

    module PromoteReadReplicaInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PromoteReadReplicaInput, context: context)
        type = Types::PromoteReadReplicaInput.new
        type.db_instance_identifier = params[:db_instance_identifier]
        type.backup_retention_period = params[:backup_retention_period]
        type.preferred_backup_window = params[:preferred_backup_window]
        type
      end
    end

    module PromoteReadReplicaOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PromoteReadReplicaOutput, context: context)
        type = Types::PromoteReadReplicaOutput.new
        type.db_instance = DBInstance.build(params[:db_instance], context: "#{context}[:db_instance]") unless params[:db_instance].nil?
        type
      end
    end

    module ProvisionedIopsNotAvailableInAZFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProvisionedIopsNotAvailableInAZFault, context: context)
        type = Types::ProvisionedIopsNotAvailableInAZFault.new
        type.message = params[:message]
        type
      end
    end

    module PurchaseReservedDBInstancesOfferingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PurchaseReservedDBInstancesOfferingInput, context: context)
        type = Types::PurchaseReservedDBInstancesOfferingInput.new
        type.reserved_db_instances_offering_id = params[:reserved_db_instances_offering_id]
        type.reserved_db_instance_id = params[:reserved_db_instance_id]
        type.db_instance_count = params[:db_instance_count]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module PurchaseReservedDBInstancesOfferingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PurchaseReservedDBInstancesOfferingOutput, context: context)
        type = Types::PurchaseReservedDBInstancesOfferingOutput.new
        type.reserved_db_instance = ReservedDBInstance.build(params[:reserved_db_instance], context: "#{context}[:reserved_db_instance]") unless params[:reserved_db_instance].nil?
        type
      end
    end

    module Range
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Range, context: context)
        type = Types::Range.new
        type.from = params[:from]
        type.to = params[:to]
        type.step = params[:step]
        type
      end
    end

    module RangeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Range.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReadReplicaDBClusterIdentifierList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ReadReplicaDBInstanceIdentifierList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ReadReplicaIdentifierList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ReadersArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RebootDBClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RebootDBClusterInput, context: context)
        type = Types::RebootDBClusterInput.new
        type.db_cluster_identifier = params[:db_cluster_identifier]
        type
      end
    end

    module RebootDBClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RebootDBClusterOutput, context: context)
        type = Types::RebootDBClusterOutput.new
        type.db_cluster = DBCluster.build(params[:db_cluster], context: "#{context}[:db_cluster]") unless params[:db_cluster].nil?
        type
      end
    end

    module RebootDBInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RebootDBInstanceInput, context: context)
        type = Types::RebootDBInstanceInput.new
        type.db_instance_identifier = params[:db_instance_identifier]
        type.force_failover = params[:force_failover]
        type
      end
    end

    module RebootDBInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RebootDBInstanceOutput, context: context)
        type = Types::RebootDBInstanceOutput.new
        type.db_instance = DBInstance.build(params[:db_instance], context: "#{context}[:db_instance]") unless params[:db_instance].nil?
        type
      end
    end

    module RecurringCharge
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecurringCharge, context: context)
        type = Types::RecurringCharge.new
        type.recurring_charge_amount = params[:recurring_charge_amount]
        type.recurring_charge_frequency = params[:recurring_charge_frequency]
        type
      end
    end

    module RecurringChargeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RecurringCharge.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RegisterDBProxyTargetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterDBProxyTargetsInput, context: context)
        type = Types::RegisterDBProxyTargetsInput.new
        type.db_proxy_name = params[:db_proxy_name]
        type.target_group_name = params[:target_group_name]
        type.db_instance_identifiers = StringList.build(params[:db_instance_identifiers], context: "#{context}[:db_instance_identifiers]") unless params[:db_instance_identifiers].nil?
        type.db_cluster_identifiers = StringList.build(params[:db_cluster_identifiers], context: "#{context}[:db_cluster_identifiers]") unless params[:db_cluster_identifiers].nil?
        type
      end
    end

    module RegisterDBProxyTargetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterDBProxyTargetsOutput, context: context)
        type = Types::RegisterDBProxyTargetsOutput.new
        type.db_proxy_targets = TargetList.build(params[:db_proxy_targets], context: "#{context}[:db_proxy_targets]") unless params[:db_proxy_targets].nil?
        type
      end
    end

    module RemoveFromGlobalClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveFromGlobalClusterInput, context: context)
        type = Types::RemoveFromGlobalClusterInput.new
        type.global_cluster_identifier = params[:global_cluster_identifier]
        type.db_cluster_identifier = params[:db_cluster_identifier]
        type
      end
    end

    module RemoveFromGlobalClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveFromGlobalClusterOutput, context: context)
        type = Types::RemoveFromGlobalClusterOutput.new
        type.global_cluster = GlobalCluster.build(params[:global_cluster], context: "#{context}[:global_cluster]") unless params[:global_cluster].nil?
        type
      end
    end

    module RemoveRoleFromDBClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveRoleFromDBClusterInput, context: context)
        type = Types::RemoveRoleFromDBClusterInput.new
        type.db_cluster_identifier = params[:db_cluster_identifier]
        type.role_arn = params[:role_arn]
        type.feature_name = params[:feature_name]
        type
      end
    end

    module RemoveRoleFromDBClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveRoleFromDBClusterOutput, context: context)
        type = Types::RemoveRoleFromDBClusterOutput.new
        type
      end
    end

    module RemoveRoleFromDBInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveRoleFromDBInstanceInput, context: context)
        type = Types::RemoveRoleFromDBInstanceInput.new
        type.db_instance_identifier = params[:db_instance_identifier]
        type.role_arn = params[:role_arn]
        type.feature_name = params[:feature_name]
        type
      end
    end

    module RemoveRoleFromDBInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveRoleFromDBInstanceOutput, context: context)
        type = Types::RemoveRoleFromDBInstanceOutput.new
        type
      end
    end

    module RemoveSourceIdentifierFromSubscriptionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveSourceIdentifierFromSubscriptionInput, context: context)
        type = Types::RemoveSourceIdentifierFromSubscriptionInput.new
        type.subscription_name = params[:subscription_name]
        type.source_identifier = params[:source_identifier]
        type
      end
    end

    module RemoveSourceIdentifierFromSubscriptionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveSourceIdentifierFromSubscriptionOutput, context: context)
        type = Types::RemoveSourceIdentifierFromSubscriptionOutput.new
        type.event_subscription = EventSubscription.build(params[:event_subscription], context: "#{context}[:event_subscription]") unless params[:event_subscription].nil?
        type
      end
    end

    module RemoveTagsFromResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveTagsFromResourceInput, context: context)
        type = Types::RemoveTagsFromResourceInput.new
        type.resource_name = params[:resource_name]
        type.tag_keys = KeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module RemoveTagsFromResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveTagsFromResourceOutput, context: context)
        type = Types::RemoveTagsFromResourceOutput.new
        type
      end
    end

    module ReservedDBInstance
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReservedDBInstance, context: context)
        type = Types::ReservedDBInstance.new
        type.reserved_db_instance_id = params[:reserved_db_instance_id]
        type.reserved_db_instances_offering_id = params[:reserved_db_instances_offering_id]
        type.db_instance_class = params[:db_instance_class]
        type.start_time = params[:start_time]
        type.duration = params[:duration]
        type.fixed_price = params[:fixed_price]
        type.usage_price = params[:usage_price]
        type.currency_code = params[:currency_code]
        type.db_instance_count = params[:db_instance_count]
        type.product_description = params[:product_description]
        type.offering_type = params[:offering_type]
        type.multi_az = params[:multi_az]
        type.state = params[:state]
        type.recurring_charges = RecurringChargeList.build(params[:recurring_charges], context: "#{context}[:recurring_charges]") unless params[:recurring_charges].nil?
        type.reserved_db_instance_arn = params[:reserved_db_instance_arn]
        type.lease_id = params[:lease_id]
        type
      end
    end

    module ReservedDBInstanceAlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReservedDBInstanceAlreadyExistsFault, context: context)
        type = Types::ReservedDBInstanceAlreadyExistsFault.new
        type.message = params[:message]
        type
      end
    end

    module ReservedDBInstanceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReservedDBInstance.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReservedDBInstanceNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReservedDBInstanceNotFoundFault, context: context)
        type = Types::ReservedDBInstanceNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module ReservedDBInstanceQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReservedDBInstanceQuotaExceededFault, context: context)
        type = Types::ReservedDBInstanceQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module ReservedDBInstancesOffering
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReservedDBInstancesOffering, context: context)
        type = Types::ReservedDBInstancesOffering.new
        type.reserved_db_instances_offering_id = params[:reserved_db_instances_offering_id]
        type.db_instance_class = params[:db_instance_class]
        type.duration = params[:duration]
        type.fixed_price = params[:fixed_price]
        type.usage_price = params[:usage_price]
        type.currency_code = params[:currency_code]
        type.product_description = params[:product_description]
        type.offering_type = params[:offering_type]
        type.multi_az = params[:multi_az]
        type.recurring_charges = RecurringChargeList.build(params[:recurring_charges], context: "#{context}[:recurring_charges]") unless params[:recurring_charges].nil?
        type
      end
    end

    module ReservedDBInstancesOfferingList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReservedDBInstancesOffering.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReservedDBInstancesOfferingNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReservedDBInstancesOfferingNotFoundFault, context: context)
        type = Types::ReservedDBInstancesOfferingNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module ResetDBClusterParameterGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResetDBClusterParameterGroupInput, context: context)
        type = Types::ResetDBClusterParameterGroupInput.new
        type.db_cluster_parameter_group_name = params[:db_cluster_parameter_group_name]
        type.reset_all_parameters = params[:reset_all_parameters]
        type.parameters = ParametersList.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type
      end
    end

    module ResetDBClusterParameterGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResetDBClusterParameterGroupOutput, context: context)
        type = Types::ResetDBClusterParameterGroupOutput.new
        type.db_cluster_parameter_group_name = params[:db_cluster_parameter_group_name]
        type
      end
    end

    module ResetDBParameterGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResetDBParameterGroupInput, context: context)
        type = Types::ResetDBParameterGroupInput.new
        type.db_parameter_group_name = params[:db_parameter_group_name]
        type.reset_all_parameters = params[:reset_all_parameters]
        type.parameters = ParametersList.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type
      end
    end

    module ResetDBParameterGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResetDBParameterGroupOutput, context: context)
        type = Types::ResetDBParameterGroupOutput.new
        type.db_parameter_group_name = params[:db_parameter_group_name]
        type
      end
    end

    module ResourceNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundFault, context: context)
        type = Types::ResourceNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module ResourcePendingMaintenanceActions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourcePendingMaintenanceActions, context: context)
        type = Types::ResourcePendingMaintenanceActions.new
        type.resource_identifier = params[:resource_identifier]
        type.pending_maintenance_action_details = PendingMaintenanceActionDetails.build(params[:pending_maintenance_action_details], context: "#{context}[:pending_maintenance_action_details]") unless params[:pending_maintenance_action_details].nil?
        type
      end
    end

    module RestoreDBClusterFromS3Input
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RestoreDBClusterFromS3Input, context: context)
        type = Types::RestoreDBClusterFromS3Input.new
        type.availability_zones = AvailabilityZones.build(params[:availability_zones], context: "#{context}[:availability_zones]") unless params[:availability_zones].nil?
        type.backup_retention_period = params[:backup_retention_period]
        type.character_set_name = params[:character_set_name]
        type.database_name = params[:database_name]
        type.db_cluster_identifier = params[:db_cluster_identifier]
        type.db_cluster_parameter_group_name = params[:db_cluster_parameter_group_name]
        type.vpc_security_group_ids = VpcSecurityGroupIdList.build(params[:vpc_security_group_ids], context: "#{context}[:vpc_security_group_ids]") unless params[:vpc_security_group_ids].nil?
        type.db_subnet_group_name = params[:db_subnet_group_name]
        type.engine = params[:engine]
        type.engine_version = params[:engine_version]
        type.port = params[:port]
        type.master_username = params[:master_username]
        type.master_user_password = params[:master_user_password]
        type.option_group_name = params[:option_group_name]
        type.preferred_backup_window = params[:preferred_backup_window]
        type.preferred_maintenance_window = params[:preferred_maintenance_window]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.storage_encrypted = params[:storage_encrypted]
        type.kms_key_id = params[:kms_key_id]
        type.enable_iam_database_authentication = params[:enable_iam_database_authentication]
        type.source_engine = params[:source_engine]
        type.source_engine_version = params[:source_engine_version]
        type.s3_bucket_name = params[:s3_bucket_name]
        type.s3_prefix = params[:s3_prefix]
        type.s3_ingestion_role_arn = params[:s3_ingestion_role_arn]
        type.backtrack_window = params[:backtrack_window]
        type.enable_cloudwatch_logs_exports = LogTypeList.build(params[:enable_cloudwatch_logs_exports], context: "#{context}[:enable_cloudwatch_logs_exports]") unless params[:enable_cloudwatch_logs_exports].nil?
        type.deletion_protection = params[:deletion_protection]
        type.copy_tags_to_snapshot = params[:copy_tags_to_snapshot]
        type.domain = params[:domain]
        type.domain_iam_role_name = params[:domain_iam_role_name]
        type.serverless_v2_scaling_configuration = ServerlessV2ScalingConfiguration.build(params[:serverless_v2_scaling_configuration], context: "#{context}[:serverless_v2_scaling_configuration]") unless params[:serverless_v2_scaling_configuration].nil?
        type
      end
    end

    module RestoreDBClusterFromS3Output
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RestoreDBClusterFromS3Output, context: context)
        type = Types::RestoreDBClusterFromS3Output.new
        type.db_cluster = DBCluster.build(params[:db_cluster], context: "#{context}[:db_cluster]") unless params[:db_cluster].nil?
        type
      end
    end

    module RestoreDBClusterFromSnapshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RestoreDBClusterFromSnapshotInput, context: context)
        type = Types::RestoreDBClusterFromSnapshotInput.new
        type.availability_zones = AvailabilityZones.build(params[:availability_zones], context: "#{context}[:availability_zones]") unless params[:availability_zones].nil?
        type.db_cluster_identifier = params[:db_cluster_identifier]
        type.snapshot_identifier = params[:snapshot_identifier]
        type.engine = params[:engine]
        type.engine_version = params[:engine_version]
        type.port = params[:port]
        type.db_subnet_group_name = params[:db_subnet_group_name]
        type.database_name = params[:database_name]
        type.option_group_name = params[:option_group_name]
        type.vpc_security_group_ids = VpcSecurityGroupIdList.build(params[:vpc_security_group_ids], context: "#{context}[:vpc_security_group_ids]") unless params[:vpc_security_group_ids].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.kms_key_id = params[:kms_key_id]
        type.enable_iam_database_authentication = params[:enable_iam_database_authentication]
        type.backtrack_window = params[:backtrack_window]
        type.enable_cloudwatch_logs_exports = LogTypeList.build(params[:enable_cloudwatch_logs_exports], context: "#{context}[:enable_cloudwatch_logs_exports]") unless params[:enable_cloudwatch_logs_exports].nil?
        type.engine_mode = params[:engine_mode]
        type.scaling_configuration = ScalingConfiguration.build(params[:scaling_configuration], context: "#{context}[:scaling_configuration]") unless params[:scaling_configuration].nil?
        type.db_cluster_parameter_group_name = params[:db_cluster_parameter_group_name]
        type.deletion_protection = params[:deletion_protection]
        type.copy_tags_to_snapshot = params[:copy_tags_to_snapshot]
        type.domain = params[:domain]
        type.domain_iam_role_name = params[:domain_iam_role_name]
        type.db_cluster_instance_class = params[:db_cluster_instance_class]
        type.storage_type = params[:storage_type]
        type.iops = params[:iops]
        type.publicly_accessible = params[:publicly_accessible]
        type.serverless_v2_scaling_configuration = ServerlessV2ScalingConfiguration.build(params[:serverless_v2_scaling_configuration], context: "#{context}[:serverless_v2_scaling_configuration]") unless params[:serverless_v2_scaling_configuration].nil?
        type
      end
    end

    module RestoreDBClusterFromSnapshotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RestoreDBClusterFromSnapshotOutput, context: context)
        type = Types::RestoreDBClusterFromSnapshotOutput.new
        type.db_cluster = DBCluster.build(params[:db_cluster], context: "#{context}[:db_cluster]") unless params[:db_cluster].nil?
        type
      end
    end

    module RestoreDBClusterToPointInTimeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RestoreDBClusterToPointInTimeInput, context: context)
        type = Types::RestoreDBClusterToPointInTimeInput.new
        type.db_cluster_identifier = params[:db_cluster_identifier]
        type.restore_type = params[:restore_type]
        type.source_db_cluster_identifier = params[:source_db_cluster_identifier]
        type.restore_to_time = params[:restore_to_time]
        type.use_latest_restorable_time = params[:use_latest_restorable_time]
        type.port = params[:port]
        type.db_subnet_group_name = params[:db_subnet_group_name]
        type.option_group_name = params[:option_group_name]
        type.vpc_security_group_ids = VpcSecurityGroupIdList.build(params[:vpc_security_group_ids], context: "#{context}[:vpc_security_group_ids]") unless params[:vpc_security_group_ids].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.kms_key_id = params[:kms_key_id]
        type.enable_iam_database_authentication = params[:enable_iam_database_authentication]
        type.backtrack_window = params[:backtrack_window]
        type.enable_cloudwatch_logs_exports = LogTypeList.build(params[:enable_cloudwatch_logs_exports], context: "#{context}[:enable_cloudwatch_logs_exports]") unless params[:enable_cloudwatch_logs_exports].nil?
        type.db_cluster_parameter_group_name = params[:db_cluster_parameter_group_name]
        type.deletion_protection = params[:deletion_protection]
        type.copy_tags_to_snapshot = params[:copy_tags_to_snapshot]
        type.domain = params[:domain]
        type.domain_iam_role_name = params[:domain_iam_role_name]
        type.scaling_configuration = ScalingConfiguration.build(params[:scaling_configuration], context: "#{context}[:scaling_configuration]") unless params[:scaling_configuration].nil?
        type.engine_mode = params[:engine_mode]
        type.db_cluster_instance_class = params[:db_cluster_instance_class]
        type.storage_type = params[:storage_type]
        type.publicly_accessible = params[:publicly_accessible]
        type.iops = params[:iops]
        type.serverless_v2_scaling_configuration = ServerlessV2ScalingConfiguration.build(params[:serverless_v2_scaling_configuration], context: "#{context}[:serverless_v2_scaling_configuration]") unless params[:serverless_v2_scaling_configuration].nil?
        type
      end
    end

    module RestoreDBClusterToPointInTimeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RestoreDBClusterToPointInTimeOutput, context: context)
        type = Types::RestoreDBClusterToPointInTimeOutput.new
        type.db_cluster = DBCluster.build(params[:db_cluster], context: "#{context}[:db_cluster]") unless params[:db_cluster].nil?
        type
      end
    end

    module RestoreDBInstanceFromDBSnapshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RestoreDBInstanceFromDBSnapshotInput, context: context)
        type = Types::RestoreDBInstanceFromDBSnapshotInput.new
        type.db_instance_identifier = params[:db_instance_identifier]
        type.db_snapshot_identifier = params[:db_snapshot_identifier]
        type.db_instance_class = params[:db_instance_class]
        type.port = params[:port]
        type.availability_zone = params[:availability_zone]
        type.db_subnet_group_name = params[:db_subnet_group_name]
        type.multi_az = params[:multi_az]
        type.publicly_accessible = params[:publicly_accessible]
        type.auto_minor_version_upgrade = params[:auto_minor_version_upgrade]
        type.license_model = params[:license_model]
        type.db_name = params[:db_name]
        type.engine = params[:engine]
        type.iops = params[:iops]
        type.option_group_name = params[:option_group_name]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.storage_type = params[:storage_type]
        type.tde_credential_arn = params[:tde_credential_arn]
        type.tde_credential_password = params[:tde_credential_password]
        type.vpc_security_group_ids = VpcSecurityGroupIdList.build(params[:vpc_security_group_ids], context: "#{context}[:vpc_security_group_ids]") unless params[:vpc_security_group_ids].nil?
        type.domain = params[:domain]
        type.copy_tags_to_snapshot = params[:copy_tags_to_snapshot]
        type.domain_iam_role_name = params[:domain_iam_role_name]
        type.enable_iam_database_authentication = params[:enable_iam_database_authentication]
        type.enable_cloudwatch_logs_exports = LogTypeList.build(params[:enable_cloudwatch_logs_exports], context: "#{context}[:enable_cloudwatch_logs_exports]") unless params[:enable_cloudwatch_logs_exports].nil?
        type.processor_features = ProcessorFeatureList.build(params[:processor_features], context: "#{context}[:processor_features]") unless params[:processor_features].nil?
        type.use_default_processor_features = params[:use_default_processor_features]
        type.db_parameter_group_name = params[:db_parameter_group_name]
        type.deletion_protection = params[:deletion_protection]
        type.enable_customer_owned_ip = params[:enable_customer_owned_ip]
        type.custom_iam_instance_profile = params[:custom_iam_instance_profile]
        type.backup_target = params[:backup_target]
        type.network_type = params[:network_type]
        type
      end
    end

    module RestoreDBInstanceFromDBSnapshotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RestoreDBInstanceFromDBSnapshotOutput, context: context)
        type = Types::RestoreDBInstanceFromDBSnapshotOutput.new
        type.db_instance = DBInstance.build(params[:db_instance], context: "#{context}[:db_instance]") unless params[:db_instance].nil?
        type
      end
    end

    module RestoreDBInstanceFromS3Input
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RestoreDBInstanceFromS3Input, context: context)
        type = Types::RestoreDBInstanceFromS3Input.new
        type.db_name = params[:db_name]
        type.db_instance_identifier = params[:db_instance_identifier]
        type.allocated_storage = params[:allocated_storage]
        type.db_instance_class = params[:db_instance_class]
        type.engine = params[:engine]
        type.master_username = params[:master_username]
        type.master_user_password = params[:master_user_password]
        type.db_security_groups = DBSecurityGroupNameList.build(params[:db_security_groups], context: "#{context}[:db_security_groups]") unless params[:db_security_groups].nil?
        type.vpc_security_group_ids = VpcSecurityGroupIdList.build(params[:vpc_security_group_ids], context: "#{context}[:vpc_security_group_ids]") unless params[:vpc_security_group_ids].nil?
        type.availability_zone = params[:availability_zone]
        type.db_subnet_group_name = params[:db_subnet_group_name]
        type.preferred_maintenance_window = params[:preferred_maintenance_window]
        type.db_parameter_group_name = params[:db_parameter_group_name]
        type.backup_retention_period = params[:backup_retention_period]
        type.preferred_backup_window = params[:preferred_backup_window]
        type.port = params[:port]
        type.multi_az = params[:multi_az]
        type.engine_version = params[:engine_version]
        type.auto_minor_version_upgrade = params[:auto_minor_version_upgrade]
        type.license_model = params[:license_model]
        type.iops = params[:iops]
        type.option_group_name = params[:option_group_name]
        type.publicly_accessible = params[:publicly_accessible]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.storage_type = params[:storage_type]
        type.storage_encrypted = params[:storage_encrypted]
        type.kms_key_id = params[:kms_key_id]
        type.copy_tags_to_snapshot = params[:copy_tags_to_snapshot]
        type.monitoring_interval = params[:monitoring_interval]
        type.monitoring_role_arn = params[:monitoring_role_arn]
        type.enable_iam_database_authentication = params[:enable_iam_database_authentication]
        type.source_engine = params[:source_engine]
        type.source_engine_version = params[:source_engine_version]
        type.s3_bucket_name = params[:s3_bucket_name]
        type.s3_prefix = params[:s3_prefix]
        type.s3_ingestion_role_arn = params[:s3_ingestion_role_arn]
        type.enable_performance_insights = params[:enable_performance_insights]
        type.performance_insights_kms_key_id = params[:performance_insights_kms_key_id]
        type.performance_insights_retention_period = params[:performance_insights_retention_period]
        type.enable_cloudwatch_logs_exports = LogTypeList.build(params[:enable_cloudwatch_logs_exports], context: "#{context}[:enable_cloudwatch_logs_exports]") unless params[:enable_cloudwatch_logs_exports].nil?
        type.processor_features = ProcessorFeatureList.build(params[:processor_features], context: "#{context}[:processor_features]") unless params[:processor_features].nil?
        type.use_default_processor_features = params[:use_default_processor_features]
        type.deletion_protection = params[:deletion_protection]
        type.max_allocated_storage = params[:max_allocated_storage]
        type.network_type = params[:network_type]
        type
      end
    end

    module RestoreDBInstanceFromS3Output
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RestoreDBInstanceFromS3Output, context: context)
        type = Types::RestoreDBInstanceFromS3Output.new
        type.db_instance = DBInstance.build(params[:db_instance], context: "#{context}[:db_instance]") unless params[:db_instance].nil?
        type
      end
    end

    module RestoreDBInstanceToPointInTimeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RestoreDBInstanceToPointInTimeInput, context: context)
        type = Types::RestoreDBInstanceToPointInTimeInput.new
        type.source_db_instance_identifier = params[:source_db_instance_identifier]
        type.target_db_instance_identifier = params[:target_db_instance_identifier]
        type.restore_time = params[:restore_time]
        type.use_latest_restorable_time = params[:use_latest_restorable_time]
        type.db_instance_class = params[:db_instance_class]
        type.port = params[:port]
        type.availability_zone = params[:availability_zone]
        type.db_subnet_group_name = params[:db_subnet_group_name]
        type.multi_az = params[:multi_az]
        type.publicly_accessible = params[:publicly_accessible]
        type.auto_minor_version_upgrade = params[:auto_minor_version_upgrade]
        type.license_model = params[:license_model]
        type.db_name = params[:db_name]
        type.engine = params[:engine]
        type.iops = params[:iops]
        type.option_group_name = params[:option_group_name]
        type.copy_tags_to_snapshot = params[:copy_tags_to_snapshot]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.storage_type = params[:storage_type]
        type.tde_credential_arn = params[:tde_credential_arn]
        type.tde_credential_password = params[:tde_credential_password]
        type.vpc_security_group_ids = VpcSecurityGroupIdList.build(params[:vpc_security_group_ids], context: "#{context}[:vpc_security_group_ids]") unless params[:vpc_security_group_ids].nil?
        type.domain = params[:domain]
        type.domain_iam_role_name = params[:domain_iam_role_name]
        type.enable_iam_database_authentication = params[:enable_iam_database_authentication]
        type.enable_cloudwatch_logs_exports = LogTypeList.build(params[:enable_cloudwatch_logs_exports], context: "#{context}[:enable_cloudwatch_logs_exports]") unless params[:enable_cloudwatch_logs_exports].nil?
        type.processor_features = ProcessorFeatureList.build(params[:processor_features], context: "#{context}[:processor_features]") unless params[:processor_features].nil?
        type.use_default_processor_features = params[:use_default_processor_features]
        type.db_parameter_group_name = params[:db_parameter_group_name]
        type.deletion_protection = params[:deletion_protection]
        type.source_dbi_resource_id = params[:source_dbi_resource_id]
        type.max_allocated_storage = params[:max_allocated_storage]
        type.source_db_instance_automated_backups_arn = params[:source_db_instance_automated_backups_arn]
        type.enable_customer_owned_ip = params[:enable_customer_owned_ip]
        type.custom_iam_instance_profile = params[:custom_iam_instance_profile]
        type.backup_target = params[:backup_target]
        type.network_type = params[:network_type]
        type
      end
    end

    module RestoreDBInstanceToPointInTimeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RestoreDBInstanceToPointInTimeOutput, context: context)
        type = Types::RestoreDBInstanceToPointInTimeOutput.new
        type.db_instance = DBInstance.build(params[:db_instance], context: "#{context}[:db_instance]") unless params[:db_instance].nil?
        type
      end
    end

    module RestoreWindow
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RestoreWindow, context: context)
        type = Types::RestoreWindow.new
        type.earliest_time = params[:earliest_time]
        type.latest_time = params[:latest_time]
        type
      end
    end

    module RevokeDBSecurityGroupIngressInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RevokeDBSecurityGroupIngressInput, context: context)
        type = Types::RevokeDBSecurityGroupIngressInput.new
        type.db_security_group_name = params[:db_security_group_name]
        type.cidrip = params[:cidrip]
        type.ec2_security_group_name = params[:ec2_security_group_name]
        type.ec2_security_group_id = params[:ec2_security_group_id]
        type.ec2_security_group_owner_id = params[:ec2_security_group_owner_id]
        type
      end
    end

    module RevokeDBSecurityGroupIngressOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RevokeDBSecurityGroupIngressOutput, context: context)
        type = Types::RevokeDBSecurityGroupIngressOutput.new
        type.db_security_group = DBSecurityGroup.build(params[:db_security_group], context: "#{context}[:db_security_group]") unless params[:db_security_group].nil?
        type
      end
    end

    module SNSInvalidTopicFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SNSInvalidTopicFault, context: context)
        type = Types::SNSInvalidTopicFault.new
        type.message = params[:message]
        type
      end
    end

    module SNSNoAuthorizationFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SNSNoAuthorizationFault, context: context)
        type = Types::SNSNoAuthorizationFault.new
        type.message = params[:message]
        type
      end
    end

    module SNSTopicArnNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SNSTopicArnNotFoundFault, context: context)
        type = Types::SNSTopicArnNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module ScalingConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScalingConfiguration, context: context)
        type = Types::ScalingConfiguration.new
        type.min_capacity = params[:min_capacity]
        type.max_capacity = params[:max_capacity]
        type.auto_pause = params[:auto_pause]
        type.seconds_until_auto_pause = params[:seconds_until_auto_pause]
        type.timeout_action = params[:timeout_action]
        type.seconds_before_timeout = params[:seconds_before_timeout]
        type
      end
    end

    module ScalingConfigurationInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScalingConfigurationInfo, context: context)
        type = Types::ScalingConfigurationInfo.new
        type.min_capacity = params[:min_capacity]
        type.max_capacity = params[:max_capacity]
        type.auto_pause = params[:auto_pause]
        type.seconds_until_auto_pause = params[:seconds_until_auto_pause]
        type.timeout_action = params[:timeout_action]
        type.seconds_before_timeout = params[:seconds_before_timeout]
        type
      end
    end

    module ServerlessV2ScalingConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServerlessV2ScalingConfiguration, context: context)
        type = Types::ServerlessV2ScalingConfiguration.new
        type.min_capacity = params[:min_capacity]
        type.max_capacity = params[:max_capacity]
        type
      end
    end

    module ServerlessV2ScalingConfigurationInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServerlessV2ScalingConfigurationInfo, context: context)
        type = Types::ServerlessV2ScalingConfigurationInfo.new
        type.min_capacity = params[:min_capacity]
        type.max_capacity = params[:max_capacity]
        type
      end
    end

    module SharedSnapshotQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SharedSnapshotQuotaExceededFault, context: context)
        type = Types::SharedSnapshotQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module SnapshotQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SnapshotQuotaExceededFault, context: context)
        type = Types::SnapshotQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module SourceIdsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SourceNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SourceNotFoundFault, context: context)
        type = Types::SourceNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module SourceRegion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SourceRegion, context: context)
        type = Types::SourceRegion.new
        type.region_name = params[:region_name]
        type.endpoint = params[:endpoint]
        type.status = params[:status]
        type.supports_db_instance_automated_backups_replication = params[:supports_db_instance_automated_backups_replication]
        type
      end
    end

    module SourceRegionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SourceRegion.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StartActivityStreamInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartActivityStreamInput, context: context)
        type = Types::StartActivityStreamInput.new
        type.resource_arn = params[:resource_arn]
        type.mode = params[:mode]
        type.kms_key_id = params[:kms_key_id]
        type.apply_immediately = params[:apply_immediately]
        type.engine_native_audit_fields_included = params[:engine_native_audit_fields_included]
        type
      end
    end

    module StartActivityStreamOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartActivityStreamOutput, context: context)
        type = Types::StartActivityStreamOutput.new
        type.kms_key_id = params[:kms_key_id]
        type.kinesis_stream_name = params[:kinesis_stream_name]
        type.status = params[:status]
        type.mode = params[:mode]
        type.apply_immediately = params[:apply_immediately]
        type.engine_native_audit_fields_included = params[:engine_native_audit_fields_included]
        type
      end
    end

    module StartDBClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartDBClusterInput, context: context)
        type = Types::StartDBClusterInput.new
        type.db_cluster_identifier = params[:db_cluster_identifier]
        type
      end
    end

    module StartDBClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartDBClusterOutput, context: context)
        type = Types::StartDBClusterOutput.new
        type.db_cluster = DBCluster.build(params[:db_cluster], context: "#{context}[:db_cluster]") unless params[:db_cluster].nil?
        type
      end
    end

    module StartDBInstanceAutomatedBackupsReplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartDBInstanceAutomatedBackupsReplicationInput, context: context)
        type = Types::StartDBInstanceAutomatedBackupsReplicationInput.new
        type.source_db_instance_arn = params[:source_db_instance_arn]
        type.backup_retention_period = params[:backup_retention_period]
        type.kms_key_id = params[:kms_key_id]
        type.pre_signed_url = params[:pre_signed_url]
        type
      end
    end

    module StartDBInstanceAutomatedBackupsReplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartDBInstanceAutomatedBackupsReplicationOutput, context: context)
        type = Types::StartDBInstanceAutomatedBackupsReplicationOutput.new
        type.db_instance_automated_backup = DBInstanceAutomatedBackup.build(params[:db_instance_automated_backup], context: "#{context}[:db_instance_automated_backup]") unless params[:db_instance_automated_backup].nil?
        type
      end
    end

    module StartDBInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartDBInstanceInput, context: context)
        type = Types::StartDBInstanceInput.new
        type.db_instance_identifier = params[:db_instance_identifier]
        type
      end
    end

    module StartDBInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartDBInstanceOutput, context: context)
        type = Types::StartDBInstanceOutput.new
        type.db_instance = DBInstance.build(params[:db_instance], context: "#{context}[:db_instance]") unless params[:db_instance].nil?
        type
      end
    end

    module StartExportTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartExportTaskInput, context: context)
        type = Types::StartExportTaskInput.new
        type.export_task_identifier = params[:export_task_identifier]
        type.source_arn = params[:source_arn]
        type.s3_bucket_name = params[:s3_bucket_name]
        type.iam_role_arn = params[:iam_role_arn]
        type.kms_key_id = params[:kms_key_id]
        type.s3_prefix = params[:s3_prefix]
        type.export_only = StringList.build(params[:export_only], context: "#{context}[:export_only]") unless params[:export_only].nil?
        type
      end
    end

    module StartExportTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartExportTaskOutput, context: context)
        type = Types::StartExportTaskOutput.new
        type.export_task_identifier = params[:export_task_identifier]
        type.source_arn = params[:source_arn]
        type.export_only = StringList.build(params[:export_only], context: "#{context}[:export_only]") unless params[:export_only].nil?
        type.snapshot_time = params[:snapshot_time]
        type.task_start_time = params[:task_start_time]
        type.task_end_time = params[:task_end_time]
        type.s3_bucket = params[:s3_bucket]
        type.s3_prefix = params[:s3_prefix]
        type.iam_role_arn = params[:iam_role_arn]
        type.kms_key_id = params[:kms_key_id]
        type.status = params[:status]
        type.percent_progress = params[:percent_progress]
        type.total_extracted_data_in_gb = params[:total_extracted_data_in_gb]
        type.failure_cause = params[:failure_cause]
        type.warning_message = params[:warning_message]
        type
      end
    end

    module StopActivityStreamInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopActivityStreamInput, context: context)
        type = Types::StopActivityStreamInput.new
        type.resource_arn = params[:resource_arn]
        type.apply_immediately = params[:apply_immediately]
        type
      end
    end

    module StopActivityStreamOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopActivityStreamOutput, context: context)
        type = Types::StopActivityStreamOutput.new
        type.kms_key_id = params[:kms_key_id]
        type.kinesis_stream_name = params[:kinesis_stream_name]
        type.status = params[:status]
        type
      end
    end

    module StopDBClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopDBClusterInput, context: context)
        type = Types::StopDBClusterInput.new
        type.db_cluster_identifier = params[:db_cluster_identifier]
        type
      end
    end

    module StopDBClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopDBClusterOutput, context: context)
        type = Types::StopDBClusterOutput.new
        type.db_cluster = DBCluster.build(params[:db_cluster], context: "#{context}[:db_cluster]") unless params[:db_cluster].nil?
        type
      end
    end

    module StopDBInstanceAutomatedBackupsReplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopDBInstanceAutomatedBackupsReplicationInput, context: context)
        type = Types::StopDBInstanceAutomatedBackupsReplicationInput.new
        type.source_db_instance_arn = params[:source_db_instance_arn]
        type
      end
    end

    module StopDBInstanceAutomatedBackupsReplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopDBInstanceAutomatedBackupsReplicationOutput, context: context)
        type = Types::StopDBInstanceAutomatedBackupsReplicationOutput.new
        type.db_instance_automated_backup = DBInstanceAutomatedBackup.build(params[:db_instance_automated_backup], context: "#{context}[:db_instance_automated_backup]") unless params[:db_instance_automated_backup].nil?
        type
      end
    end

    module StopDBInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopDBInstanceInput, context: context)
        type = Types::StopDBInstanceInput.new
        type.db_instance_identifier = params[:db_instance_identifier]
        type.db_snapshot_identifier = params[:db_snapshot_identifier]
        type
      end
    end

    module StopDBInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopDBInstanceOutput, context: context)
        type = Types::StopDBInstanceOutput.new
        type.db_instance = DBInstance.build(params[:db_instance], context: "#{context}[:db_instance]") unless params[:db_instance].nil?
        type
      end
    end

    module StorageQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StorageQuotaExceededFault, context: context)
        type = Types::StorageQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module StorageTypeNotSupportedFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StorageTypeNotSupportedFault, context: context)
        type = Types::StorageTypeNotSupportedFault.new
        type.message = params[:message]
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

    module Subnet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Subnet, context: context)
        type = Types::Subnet.new
        type.subnet_identifier = params[:subnet_identifier]
        type.subnet_availability_zone = AvailabilityZone.build(params[:subnet_availability_zone], context: "#{context}[:subnet_availability_zone]") unless params[:subnet_availability_zone].nil?
        type.subnet_outpost = Outpost.build(params[:subnet_outpost], context: "#{context}[:subnet_outpost]") unless params[:subnet_outpost].nil?
        type.subnet_status = params[:subnet_status]
        type
      end
    end

    module SubnetAlreadyInUse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubnetAlreadyInUse, context: context)
        type = Types::SubnetAlreadyInUse.new
        type.message = params[:message]
        type
      end
    end

    module SubnetIdentifierList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SubnetList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Subnet.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SubscriptionAlreadyExistFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubscriptionAlreadyExistFault, context: context)
        type = Types::SubscriptionAlreadyExistFault.new
        type.message = params[:message]
        type
      end
    end

    module SubscriptionCategoryNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubscriptionCategoryNotFoundFault, context: context)
        type = Types::SubscriptionCategoryNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module SubscriptionNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubscriptionNotFoundFault, context: context)
        type = Types::SubscriptionNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module SupportedCharacterSetsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CharacterSet.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SupportedTimezonesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Timezone.build(element, context: "#{context}[#{index}]") unless element.nil?
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

    module TargetGroupList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DBProxyTargetGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TargetHealth
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TargetHealth, context: context)
        type = Types::TargetHealth.new
        type.state = params[:state]
        type.reason = params[:reason]
        type.description = params[:description]
        type
      end
    end

    module TargetList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DBProxyTarget.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Timezone
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Timezone, context: context)
        type = Types::Timezone.new
        type.timezone_name = params[:timezone_name]
        type
      end
    end

    module UpgradeTarget
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpgradeTarget, context: context)
        type = Types::UpgradeTarget.new
        type.engine = params[:engine]
        type.engine_version = params[:engine_version]
        type.description = params[:description]
        type.auto_upgrade = params[:auto_upgrade]
        type.is_major_version_upgrade = params[:is_major_version_upgrade]
        type.supported_engine_modes = EngineModeList.build(params[:supported_engine_modes], context: "#{context}[:supported_engine_modes]") unless params[:supported_engine_modes].nil?
        type.supports_parallel_query = params[:supports_parallel_query]
        type.supports_global_databases = params[:supports_global_databases]
        type.supports_babelfish = params[:supports_babelfish]
        type
      end
    end

    module UserAuthConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserAuthConfig, context: context)
        type = Types::UserAuthConfig.new
        type.description = params[:description]
        type.user_name = params[:user_name]
        type.auth_scheme = params[:auth_scheme]
        type.secret_arn = params[:secret_arn]
        type.iam_auth = params[:iam_auth]
        type
      end
    end

    module UserAuthConfigInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserAuthConfigInfo, context: context)
        type = Types::UserAuthConfigInfo.new
        type.description = params[:description]
        type.user_name = params[:user_name]
        type.auth_scheme = params[:auth_scheme]
        type.secret_arn = params[:secret_arn]
        type.iam_auth = params[:iam_auth]
        type
      end
    end

    module UserAuthConfigInfoList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UserAuthConfigInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UserAuthConfigList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UserAuthConfig.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ValidDBInstanceModificationsMessage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidDBInstanceModificationsMessage, context: context)
        type = Types::ValidDBInstanceModificationsMessage.new
        type.storage = ValidStorageOptionsList.build(params[:storage], context: "#{context}[:storage]") unless params[:storage].nil?
        type.valid_processor_features = AvailableProcessorFeatureList.build(params[:valid_processor_features], context: "#{context}[:valid_processor_features]") unless params[:valid_processor_features].nil?
        type
      end
    end

    module ValidStorageOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidStorageOptions, context: context)
        type = Types::ValidStorageOptions.new
        type.storage_type = params[:storage_type]
        type.storage_size = RangeList.build(params[:storage_size], context: "#{context}[:storage_size]") unless params[:storage_size].nil?
        type.provisioned_iops = RangeList.build(params[:provisioned_iops], context: "#{context}[:provisioned_iops]") unless params[:provisioned_iops].nil?
        type.iops_to_storage_ratio = DoubleRangeList.build(params[:iops_to_storage_ratio], context: "#{context}[:iops_to_storage_ratio]") unless params[:iops_to_storage_ratio].nil?
        type.supports_storage_autoscaling = params[:supports_storage_autoscaling]
        type
      end
    end

    module ValidStorageOptionsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ValidStorageOptions.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ValidUpgradeTargetList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UpgradeTarget.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module VpcSecurityGroupIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module VpcSecurityGroupMembership
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VpcSecurityGroupMembership, context: context)
        type = Types::VpcSecurityGroupMembership.new
        type.vpc_security_group_id = params[:vpc_security_group_id]
        type.status = params[:status]
        type
      end
    end

    module VpcSecurityGroupMembershipList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VpcSecurityGroupMembership.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
