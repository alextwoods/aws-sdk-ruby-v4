# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::Neptune
  module Validators

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
        EventSubscription.validate!(input[:event_subscription], context: "#{context}[:event_subscription]") unless input[:event_subscription].nil?
      end
    end

    class AddTagsToResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddTagsToResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
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
        ResourcePendingMaintenanceActions.validate!(input[:resource_pending_maintenance_actions], context: "#{context}[:resource_pending_maintenance_actions]") unless input[:resource_pending_maintenance_actions].nil?
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

    class AuthorizationNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuthorizationNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
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
          AvailabilityZone.validate!(element, context: "#{context}[#{index}]") unless element.nil?
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
        LogTypeList.validate!(input[:enable_log_types], context: "#{context}[:enable_log_types]") unless input[:enable_log_types].nil?
        LogTypeList.validate!(input[:disable_log_types], context: "#{context}[:disable_log_types]") unless input[:disable_log_types].nil?
      end
    end

    class CopyDBClusterParameterGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CopyDBClusterParameterGroupInput, context: context)
        Hearth::Validator.validate!(input[:source_db_cluster_parameter_group_identifier], ::String, context: "#{context}[:source_db_cluster_parameter_group_identifier]")
        Hearth::Validator.validate!(input[:target_db_cluster_parameter_group_identifier], ::String, context: "#{context}[:target_db_cluster_parameter_group_identifier]")
        Hearth::Validator.validate!(input[:target_db_cluster_parameter_group_description], ::String, context: "#{context}[:target_db_cluster_parameter_group_description]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CopyDBClusterParameterGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CopyDBClusterParameterGroupOutput, context: context)
        DBClusterParameterGroup.validate!(input[:db_cluster_parameter_group], context: "#{context}[:db_cluster_parameter_group]") unless input[:db_cluster_parameter_group].nil?
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
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CopyDBClusterSnapshotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CopyDBClusterSnapshotOutput, context: context)
        DBClusterSnapshot.validate!(input[:db_cluster_snapshot], context: "#{context}[:db_cluster_snapshot]") unless input[:db_cluster_snapshot].nil?
      end
    end

    class CopyDBParameterGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CopyDBParameterGroupInput, context: context)
        Hearth::Validator.validate!(input[:source_db_parameter_group_identifier], ::String, context: "#{context}[:source_db_parameter_group_identifier]")
        Hearth::Validator.validate!(input[:target_db_parameter_group_identifier], ::String, context: "#{context}[:target_db_parameter_group_identifier]")
        Hearth::Validator.validate!(input[:target_db_parameter_group_description], ::String, context: "#{context}[:target_db_parameter_group_description]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CopyDBParameterGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CopyDBParameterGroupOutput, context: context)
        DBParameterGroup.validate!(input[:db_parameter_group], context: "#{context}[:db_parameter_group]") unless input[:db_parameter_group].nil?
      end
    end

    class CreateDBClusterEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDBClusterEndpointInput, context: context)
        Hearth::Validator.validate!(input[:db_cluster_identifier], ::String, context: "#{context}[:db_cluster_identifier]")
        Hearth::Validator.validate!(input[:db_cluster_endpoint_identifier], ::String, context: "#{context}[:db_cluster_endpoint_identifier]")
        Hearth::Validator.validate!(input[:endpoint_type], ::String, context: "#{context}[:endpoint_type]")
        StringList.validate!(input[:static_members], context: "#{context}[:static_members]") unless input[:static_members].nil?
        StringList.validate!(input[:excluded_members], context: "#{context}[:excluded_members]") unless input[:excluded_members].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
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
        StringList.validate!(input[:static_members], context: "#{context}[:static_members]") unless input[:static_members].nil?
        StringList.validate!(input[:excluded_members], context: "#{context}[:excluded_members]") unless input[:excluded_members].nil?
        Hearth::Validator.validate!(input[:db_cluster_endpoint_arn], ::String, context: "#{context}[:db_cluster_endpoint_arn]")
      end
    end

    class CreateDBClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDBClusterInput, context: context)
        AvailabilityZones.validate!(input[:availability_zones], context: "#{context}[:availability_zones]") unless input[:availability_zones].nil?
        Hearth::Validator.validate!(input[:backup_retention_period], ::Integer, context: "#{context}[:backup_retention_period]")
        Hearth::Validator.validate!(input[:character_set_name], ::String, context: "#{context}[:character_set_name]")
        Hearth::Validator.validate!(input[:copy_tags_to_snapshot], ::TrueClass, ::FalseClass, context: "#{context}[:copy_tags_to_snapshot]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:db_cluster_identifier], ::String, context: "#{context}[:db_cluster_identifier]")
        Hearth::Validator.validate!(input[:db_cluster_parameter_group_name], ::String, context: "#{context}[:db_cluster_parameter_group_name]")
        VpcSecurityGroupIdList.validate!(input[:vpc_security_group_ids], context: "#{context}[:vpc_security_group_ids]") unless input[:vpc_security_group_ids].nil?
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
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:storage_encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:storage_encrypted]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:pre_signed_url], ::String, context: "#{context}[:pre_signed_url]")
        Hearth::Validator.validate!(input[:enable_iam_database_authentication], ::TrueClass, ::FalseClass, context: "#{context}[:enable_iam_database_authentication]")
        LogTypeList.validate!(input[:enable_cloudwatch_logs_exports], context: "#{context}[:enable_cloudwatch_logs_exports]") unless input[:enable_cloudwatch_logs_exports].nil?
        Hearth::Validator.validate!(input[:deletion_protection], ::TrueClass, ::FalseClass, context: "#{context}[:deletion_protection]")
        Hearth::Validator.validate!(input[:global_cluster_identifier], ::String, context: "#{context}[:global_cluster_identifier]")
      end
    end

    class CreateDBClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDBClusterOutput, context: context)
        DBCluster.validate!(input[:db_cluster], context: "#{context}[:db_cluster]") unless input[:db_cluster].nil?
      end
    end

    class CreateDBClusterParameterGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDBClusterParameterGroupInput, context: context)
        Hearth::Validator.validate!(input[:db_cluster_parameter_group_name], ::String, context: "#{context}[:db_cluster_parameter_group_name]")
        Hearth::Validator.validate!(input[:db_parameter_group_family], ::String, context: "#{context}[:db_parameter_group_family]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateDBClusterParameterGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDBClusterParameterGroupOutput, context: context)
        DBClusterParameterGroup.validate!(input[:db_cluster_parameter_group], context: "#{context}[:db_cluster_parameter_group]") unless input[:db_cluster_parameter_group].nil?
      end
    end

    class CreateDBClusterSnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDBClusterSnapshotInput, context: context)
        Hearth::Validator.validate!(input[:db_cluster_snapshot_identifier], ::String, context: "#{context}[:db_cluster_snapshot_identifier]")
        Hearth::Validator.validate!(input[:db_cluster_identifier], ::String, context: "#{context}[:db_cluster_identifier]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateDBClusterSnapshotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDBClusterSnapshotOutput, context: context)
        DBClusterSnapshot.validate!(input[:db_cluster_snapshot], context: "#{context}[:db_cluster_snapshot]") unless input[:db_cluster_snapshot].nil?
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
        DBSecurityGroupNameList.validate!(input[:db_security_groups], context: "#{context}[:db_security_groups]") unless input[:db_security_groups].nil?
        VpcSecurityGroupIdList.validate!(input[:vpc_security_group_ids], context: "#{context}[:vpc_security_group_ids]") unless input[:vpc_security_group_ids].nil?
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
        Hearth::Validator.validate!(input[:publicly_accessible], ::TrueClass, ::FalseClass, context: "#{context}[:publicly_accessible]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
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
        LogTypeList.validate!(input[:enable_cloudwatch_logs_exports], context: "#{context}[:enable_cloudwatch_logs_exports]") unless input[:enable_cloudwatch_logs_exports].nil?
        Hearth::Validator.validate!(input[:deletion_protection], ::TrueClass, ::FalseClass, context: "#{context}[:deletion_protection]")
      end
    end

    class CreateDBInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDBInstanceOutput, context: context)
        DBInstance.validate!(input[:db_instance], context: "#{context}[:db_instance]") unless input[:db_instance].nil?
      end
    end

    class CreateDBParameterGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDBParameterGroupInput, context: context)
        Hearth::Validator.validate!(input[:db_parameter_group_name], ::String, context: "#{context}[:db_parameter_group_name]")
        Hearth::Validator.validate!(input[:db_parameter_group_family], ::String, context: "#{context}[:db_parameter_group_family]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateDBParameterGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDBParameterGroupOutput, context: context)
        DBParameterGroup.validate!(input[:db_parameter_group], context: "#{context}[:db_parameter_group]") unless input[:db_parameter_group].nil?
      end
    end

    class CreateDBSubnetGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDBSubnetGroupInput, context: context)
        Hearth::Validator.validate!(input[:db_subnet_group_name], ::String, context: "#{context}[:db_subnet_group_name]")
        Hearth::Validator.validate!(input[:db_subnet_group_description], ::String, context: "#{context}[:db_subnet_group_description]")
        SubnetIdentifierList.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateDBSubnetGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDBSubnetGroupOutput, context: context)
        DBSubnetGroup.validate!(input[:db_subnet_group], context: "#{context}[:db_subnet_group]") unless input[:db_subnet_group].nil?
      end
    end

    class CreateEventSubscriptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEventSubscriptionInput, context: context)
        Hearth::Validator.validate!(input[:subscription_name], ::String, context: "#{context}[:subscription_name]")
        Hearth::Validator.validate!(input[:sns_topic_arn], ::String, context: "#{context}[:sns_topic_arn]")
        Hearth::Validator.validate!(input[:source_type], ::String, context: "#{context}[:source_type]")
        EventCategoriesList.validate!(input[:event_categories], context: "#{context}[:event_categories]") unless input[:event_categories].nil?
        SourceIdsList.validate!(input[:source_ids], context: "#{context}[:source_ids]") unless input[:source_ids].nil?
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateEventSubscriptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEventSubscriptionOutput, context: context)
        EventSubscription.validate!(input[:event_subscription], context: "#{context}[:event_subscription]") unless input[:event_subscription].nil?
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
        Hearth::Validator.validate!(input[:storage_encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:storage_encrypted]")
      end
    end

    class CreateGlobalClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGlobalClusterOutput, context: context)
        GlobalCluster.validate!(input[:global_cluster], context: "#{context}[:global_cluster]") unless input[:global_cluster].nil?
      end
    end

    class DBCluster
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBCluster, context: context)
        Hearth::Validator.validate!(input[:allocated_storage], ::Integer, context: "#{context}[:allocated_storage]")
        AvailabilityZones.validate!(input[:availability_zones], context: "#{context}[:availability_zones]") unless input[:availability_zones].nil?
        Hearth::Validator.validate!(input[:backup_retention_period], ::Integer, context: "#{context}[:backup_retention_period]")
        Hearth::Validator.validate!(input[:character_set_name], ::String, context: "#{context}[:character_set_name]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:db_cluster_identifier], ::String, context: "#{context}[:db_cluster_identifier]")
        Hearth::Validator.validate!(input[:db_cluster_parameter_group], ::String, context: "#{context}[:db_cluster_parameter_group]")
        Hearth::Validator.validate!(input[:db_subnet_group], ::String, context: "#{context}[:db_subnet_group]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:percent_progress], ::String, context: "#{context}[:percent_progress]")
        Hearth::Validator.validate!(input[:earliest_restorable_time], ::Time, context: "#{context}[:earliest_restorable_time]")
        Hearth::Validator.validate!(input[:endpoint], ::String, context: "#{context}[:endpoint]")
        Hearth::Validator.validate!(input[:reader_endpoint], ::String, context: "#{context}[:reader_endpoint]")
        Hearth::Validator.validate!(input[:multi_az], ::TrueClass, ::FalseClass, context: "#{context}[:multi_az]")
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:latest_restorable_time], ::Time, context: "#{context}[:latest_restorable_time]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:master_username], ::String, context: "#{context}[:master_username]")
        DBClusterOptionGroupMemberships.validate!(input[:db_cluster_option_group_memberships], context: "#{context}[:db_cluster_option_group_memberships]") unless input[:db_cluster_option_group_memberships].nil?
        Hearth::Validator.validate!(input[:preferred_backup_window], ::String, context: "#{context}[:preferred_backup_window]")
        Hearth::Validator.validate!(input[:preferred_maintenance_window], ::String, context: "#{context}[:preferred_maintenance_window]")
        Hearth::Validator.validate!(input[:replication_source_identifier], ::String, context: "#{context}[:replication_source_identifier]")
        ReadReplicaIdentifierList.validate!(input[:read_replica_identifiers], context: "#{context}[:read_replica_identifiers]") unless input[:read_replica_identifiers].nil?
        DBClusterMemberList.validate!(input[:db_cluster_members], context: "#{context}[:db_cluster_members]") unless input[:db_cluster_members].nil?
        VpcSecurityGroupMembershipList.validate!(input[:vpc_security_groups], context: "#{context}[:vpc_security_groups]") unless input[:vpc_security_groups].nil?
        Hearth::Validator.validate!(input[:hosted_zone_id], ::String, context: "#{context}[:hosted_zone_id]")
        Hearth::Validator.validate!(input[:storage_encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:storage_encrypted]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:db_cluster_resource_id], ::String, context: "#{context}[:db_cluster_resource_id]")
        Hearth::Validator.validate!(input[:db_cluster_arn], ::String, context: "#{context}[:db_cluster_arn]")
        DBClusterRoles.validate!(input[:associated_roles], context: "#{context}[:associated_roles]") unless input[:associated_roles].nil?
        Hearth::Validator.validate!(input[:iam_database_authentication_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:iam_database_authentication_enabled]")
        Hearth::Validator.validate!(input[:clone_group_id], ::String, context: "#{context}[:clone_group_id]")
        Hearth::Validator.validate!(input[:cluster_create_time], ::Time, context: "#{context}[:cluster_create_time]")
        Hearth::Validator.validate!(input[:copy_tags_to_snapshot], ::TrueClass, ::FalseClass, context: "#{context}[:copy_tags_to_snapshot]")
        LogTypeList.validate!(input[:enabled_cloudwatch_logs_exports], context: "#{context}[:enabled_cloudwatch_logs_exports]") unless input[:enabled_cloudwatch_logs_exports].nil?
        Hearth::Validator.validate!(input[:deletion_protection], ::TrueClass, ::FalseClass, context: "#{context}[:deletion_protection]")
        Hearth::Validator.validate!(input[:cross_account_clone], ::TrueClass, ::FalseClass, context: "#{context}[:cross_account_clone]")
        Hearth::Validator.validate!(input[:automatic_restart_time], ::Time, context: "#{context}[:automatic_restart_time]")
      end
    end

    class DBClusterAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBClusterAlreadyExistsFault, context: context)
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
        StringList.validate!(input[:static_members], context: "#{context}[:static_members]") unless input[:static_members].nil?
        StringList.validate!(input[:excluded_members], context: "#{context}[:excluded_members]") unless input[:excluded_members].nil?
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
          DBClusterEndpoint.validate!(element, context: "#{context}[#{index}]") unless element.nil?
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
          DBCluster.validate!(element, context: "#{context}[#{index}]") unless element.nil?
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
          DBClusterMember.validate!(element, context: "#{context}[#{index}]") unless element.nil?
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
          DBClusterOptionGroupStatus.validate!(element, context: "#{context}[#{index}]") unless element.nil?
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
          DBClusterParameterGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
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
          DBClusterRole.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DBClusterSnapshot
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBClusterSnapshot, context: context)
        AvailabilityZones.validate!(input[:availability_zones], context: "#{context}[:availability_zones]") unless input[:availability_zones].nil?
        Hearth::Validator.validate!(input[:db_cluster_snapshot_identifier], ::String, context: "#{context}[:db_cluster_snapshot_identifier]")
        Hearth::Validator.validate!(input[:db_cluster_identifier], ::String, context: "#{context}[:db_cluster_identifier]")
        Hearth::Validator.validate!(input[:snapshot_create_time], ::Time, context: "#{context}[:snapshot_create_time]")
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
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
        AttributeValueList.validate!(input[:attribute_values], context: "#{context}[:attribute_values]") unless input[:attribute_values].nil?
      end
    end

    class DBClusterSnapshotAttributeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DBClusterSnapshotAttribute.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DBClusterSnapshotAttributesResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBClusterSnapshotAttributesResult, context: context)
        Hearth::Validator.validate!(input[:db_cluster_snapshot_identifier], ::String, context: "#{context}[:db_cluster_snapshot_identifier]")
        DBClusterSnapshotAttributeList.validate!(input[:db_cluster_snapshot_attributes], context: "#{context}[:db_cluster_snapshot_attributes]") unless input[:db_cluster_snapshot_attributes].nil?
      end
    end

    class DBClusterSnapshotList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DBClusterSnapshot.validate!(element, context: "#{context}[#{index}]") unless element.nil?
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
        CharacterSet.validate!(input[:default_character_set], context: "#{context}[:default_character_set]") unless input[:default_character_set].nil?
        SupportedCharacterSetsList.validate!(input[:supported_character_sets], context: "#{context}[:supported_character_sets]") unless input[:supported_character_sets].nil?
        ValidUpgradeTargetList.validate!(input[:valid_upgrade_target], context: "#{context}[:valid_upgrade_target]") unless input[:valid_upgrade_target].nil?
        SupportedTimezonesList.validate!(input[:supported_timezones], context: "#{context}[:supported_timezones]") unless input[:supported_timezones].nil?
        LogTypeList.validate!(input[:exportable_log_types], context: "#{context}[:exportable_log_types]") unless input[:exportable_log_types].nil?
        Hearth::Validator.validate!(input[:supports_log_exports_to_cloudwatch_logs], ::TrueClass, ::FalseClass, context: "#{context}[:supports_log_exports_to_cloudwatch_logs]")
        Hearth::Validator.validate!(input[:supports_read_replica], ::TrueClass, ::FalseClass, context: "#{context}[:supports_read_replica]")
        Hearth::Validator.validate!(input[:supports_global_databases], ::TrueClass, ::FalseClass, context: "#{context}[:supports_global_databases]")
      end
    end

    class DBEngineVersionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DBEngineVersion.validate!(element, context: "#{context}[#{index}]") unless element.nil?
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
        Hearth::Validator.validate!(input[:master_username], ::String, context: "#{context}[:master_username]")
        Hearth::Validator.validate!(input[:db_name], ::String, context: "#{context}[:db_name]")
        Endpoint.validate!(input[:endpoint], context: "#{context}[:endpoint]") unless input[:endpoint].nil?
        Hearth::Validator.validate!(input[:allocated_storage], ::Integer, context: "#{context}[:allocated_storage]")
        Hearth::Validator.validate!(input[:instance_create_time], ::Time, context: "#{context}[:instance_create_time]")
        Hearth::Validator.validate!(input[:preferred_backup_window], ::String, context: "#{context}[:preferred_backup_window]")
        Hearth::Validator.validate!(input[:backup_retention_period], ::Integer, context: "#{context}[:backup_retention_period]")
        DBSecurityGroupMembershipList.validate!(input[:db_security_groups], context: "#{context}[:db_security_groups]") unless input[:db_security_groups].nil?
        VpcSecurityGroupMembershipList.validate!(input[:vpc_security_groups], context: "#{context}[:vpc_security_groups]") unless input[:vpc_security_groups].nil?
        DBParameterGroupStatusList.validate!(input[:db_parameter_groups], context: "#{context}[:db_parameter_groups]") unless input[:db_parameter_groups].nil?
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        DBSubnetGroup.validate!(input[:db_subnet_group], context: "#{context}[:db_subnet_group]") unless input[:db_subnet_group].nil?
        Hearth::Validator.validate!(input[:preferred_maintenance_window], ::String, context: "#{context}[:preferred_maintenance_window]")
        PendingModifiedValues.validate!(input[:pending_modified_values], context: "#{context}[:pending_modified_values]") unless input[:pending_modified_values].nil?
        Hearth::Validator.validate!(input[:latest_restorable_time], ::Time, context: "#{context}[:latest_restorable_time]")
        Hearth::Validator.validate!(input[:multi_az], ::TrueClass, ::FalseClass, context: "#{context}[:multi_az]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:auto_minor_version_upgrade], ::TrueClass, ::FalseClass, context: "#{context}[:auto_minor_version_upgrade]")
        Hearth::Validator.validate!(input[:read_replica_source_db_instance_identifier], ::String, context: "#{context}[:read_replica_source_db_instance_identifier]")
        ReadReplicaDBInstanceIdentifierList.validate!(input[:read_replica_db_instance_identifiers], context: "#{context}[:read_replica_db_instance_identifiers]") unless input[:read_replica_db_instance_identifiers].nil?
        ReadReplicaDBClusterIdentifierList.validate!(input[:read_replica_db_cluster_identifiers], context: "#{context}[:read_replica_db_cluster_identifiers]") unless input[:read_replica_db_cluster_identifiers].nil?
        Hearth::Validator.validate!(input[:license_model], ::String, context: "#{context}[:license_model]")
        Hearth::Validator.validate!(input[:iops], ::Integer, context: "#{context}[:iops]")
        OptionGroupMembershipList.validate!(input[:option_group_memberships], context: "#{context}[:option_group_memberships]") unless input[:option_group_memberships].nil?
        Hearth::Validator.validate!(input[:character_set_name], ::String, context: "#{context}[:character_set_name]")
        Hearth::Validator.validate!(input[:secondary_availability_zone], ::String, context: "#{context}[:secondary_availability_zone]")
        Hearth::Validator.validate!(input[:publicly_accessible], ::TrueClass, ::FalseClass, context: "#{context}[:publicly_accessible]")
        DBInstanceStatusInfoList.validate!(input[:status_infos], context: "#{context}[:status_infos]") unless input[:status_infos].nil?
        Hearth::Validator.validate!(input[:storage_type], ::String, context: "#{context}[:storage_type]")
        Hearth::Validator.validate!(input[:tde_credential_arn], ::String, context: "#{context}[:tde_credential_arn]")
        Hearth::Validator.validate!(input[:db_instance_port], ::Integer, context: "#{context}[:db_instance_port]")
        Hearth::Validator.validate!(input[:db_cluster_identifier], ::String, context: "#{context}[:db_cluster_identifier]")
        Hearth::Validator.validate!(input[:storage_encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:storage_encrypted]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:dbi_resource_id], ::String, context: "#{context}[:dbi_resource_id]")
        Hearth::Validator.validate!(input[:ca_certificate_identifier], ::String, context: "#{context}[:ca_certificate_identifier]")
        DomainMembershipList.validate!(input[:domain_memberships], context: "#{context}[:domain_memberships]") unless input[:domain_memberships].nil?
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
        LogTypeList.validate!(input[:enabled_cloudwatch_logs_exports], context: "#{context}[:enabled_cloudwatch_logs_exports]") unless input[:enabled_cloudwatch_logs_exports].nil?
        Hearth::Validator.validate!(input[:deletion_protection], ::TrueClass, ::FalseClass, context: "#{context}[:deletion_protection]")
      end
    end

    class DBInstanceAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBInstanceAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DBInstanceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DBInstance.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DBInstanceNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBInstanceNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
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
          DBInstanceStatusInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
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
          DBParameterGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
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
          DBParameterGroupStatus.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
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
          DBSecurityGroupMembership.validate!(element, context: "#{context}[#{index}]") unless element.nil?
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

    class DBSnapshotAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBSnapshotAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
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
        SubnetList.validate!(input[:subnets], context: "#{context}[:subnets]") unless input[:subnets].nil?
        Hearth::Validator.validate!(input[:db_subnet_group_arn], ::String, context: "#{context}[:db_subnet_group_arn]")
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
          DBSubnetGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
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
        StringList.validate!(input[:static_members], context: "#{context}[:static_members]") unless input[:static_members].nil?
        StringList.validate!(input[:excluded_members], context: "#{context}[:excluded_members]") unless input[:excluded_members].nil?
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
        DBCluster.validate!(input[:db_cluster], context: "#{context}[:db_cluster]") unless input[:db_cluster].nil?
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
        DBClusterSnapshot.validate!(input[:db_cluster_snapshot], context: "#{context}[:db_cluster_snapshot]") unless input[:db_cluster_snapshot].nil?
      end
    end

    class DeleteDBInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDBInstanceInput, context: context)
        Hearth::Validator.validate!(input[:db_instance_identifier], ::String, context: "#{context}[:db_instance_identifier]")
        Hearth::Validator.validate!(input[:skip_final_snapshot], ::TrueClass, ::FalseClass, context: "#{context}[:skip_final_snapshot]")
        Hearth::Validator.validate!(input[:final_db_snapshot_identifier], ::String, context: "#{context}[:final_db_snapshot_identifier]")
      end
    end

    class DeleteDBInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDBInstanceOutput, context: context)
        DBInstance.validate!(input[:db_instance], context: "#{context}[:db_instance]") unless input[:db_instance].nil?
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
        EventSubscription.validate!(input[:event_subscription], context: "#{context}[:event_subscription]") unless input[:event_subscription].nil?
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
        GlobalCluster.validate!(input[:global_cluster], context: "#{context}[:global_cluster]") unless input[:global_cluster].nil?
      end
    end

    class DescribeDBClusterEndpointsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBClusterEndpointsInput, context: context)
        Hearth::Validator.validate!(input[:db_cluster_identifier], ::String, context: "#{context}[:db_cluster_identifier]")
        Hearth::Validator.validate!(input[:db_cluster_endpoint_identifier], ::String, context: "#{context}[:db_cluster_endpoint_identifier]")
        FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeDBClusterEndpointsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBClusterEndpointsOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        DBClusterEndpointList.validate!(input[:db_cluster_endpoints], context: "#{context}[:db_cluster_endpoints]") unless input[:db_cluster_endpoints].nil?
      end
    end

    class DescribeDBClusterParameterGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBClusterParameterGroupsInput, context: context)
        Hearth::Validator.validate!(input[:db_cluster_parameter_group_name], ::String, context: "#{context}[:db_cluster_parameter_group_name]")
        FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeDBClusterParameterGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBClusterParameterGroupsOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        DBClusterParameterGroupList.validate!(input[:db_cluster_parameter_groups], context: "#{context}[:db_cluster_parameter_groups]") unless input[:db_cluster_parameter_groups].nil?
      end
    end

    class DescribeDBClusterParametersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBClusterParametersInput, context: context)
        Hearth::Validator.validate!(input[:db_cluster_parameter_group_name], ::String, context: "#{context}[:db_cluster_parameter_group_name]")
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
        FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeDBClusterParametersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBClusterParametersOutput, context: context)
        ParametersList.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
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
        DBClusterSnapshotAttributesResult.validate!(input[:db_cluster_snapshot_attributes_result], context: "#{context}[:db_cluster_snapshot_attributes_result]") unless input[:db_cluster_snapshot_attributes_result].nil?
      end
    end

    class DescribeDBClusterSnapshotsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBClusterSnapshotsInput, context: context)
        Hearth::Validator.validate!(input[:db_cluster_identifier], ::String, context: "#{context}[:db_cluster_identifier]")
        Hearth::Validator.validate!(input[:db_cluster_snapshot_identifier], ::String, context: "#{context}[:db_cluster_snapshot_identifier]")
        Hearth::Validator.validate!(input[:snapshot_type], ::String, context: "#{context}[:snapshot_type]")
        FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
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
        DBClusterSnapshotList.validate!(input[:db_cluster_snapshots], context: "#{context}[:db_cluster_snapshots]") unless input[:db_cluster_snapshots].nil?
      end
    end

    class DescribeDBClustersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBClustersInput, context: context)
        Hearth::Validator.validate!(input[:db_cluster_identifier], ::String, context: "#{context}[:db_cluster_identifier]")
        FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeDBClustersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBClustersOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        DBClusterList.validate!(input[:db_clusters], context: "#{context}[:db_clusters]") unless input[:db_clusters].nil?
      end
    end

    class DescribeDBEngineVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBEngineVersionsInput, context: context)
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:db_parameter_group_family], ::String, context: "#{context}[:db_parameter_group_family]")
        FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:default_only], ::TrueClass, ::FalseClass, context: "#{context}[:default_only]")
        Hearth::Validator.validate!(input[:list_supported_character_sets], ::TrueClass, ::FalseClass, context: "#{context}[:list_supported_character_sets]")
        Hearth::Validator.validate!(input[:list_supported_timezones], ::TrueClass, ::FalseClass, context: "#{context}[:list_supported_timezones]")
      end
    end

    class DescribeDBEngineVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBEngineVersionsOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        DBEngineVersionList.validate!(input[:db_engine_versions], context: "#{context}[:db_engine_versions]") unless input[:db_engine_versions].nil?
      end
    end

    class DescribeDBInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBInstancesInput, context: context)
        Hearth::Validator.validate!(input[:db_instance_identifier], ::String, context: "#{context}[:db_instance_identifier]")
        FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeDBInstancesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBInstancesOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        DBInstanceList.validate!(input[:db_instances], context: "#{context}[:db_instances]") unless input[:db_instances].nil?
      end
    end

    class DescribeDBParameterGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBParameterGroupsInput, context: context)
        Hearth::Validator.validate!(input[:db_parameter_group_name], ::String, context: "#{context}[:db_parameter_group_name]")
        FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeDBParameterGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBParameterGroupsOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        DBParameterGroupList.validate!(input[:db_parameter_groups], context: "#{context}[:db_parameter_groups]") unless input[:db_parameter_groups].nil?
      end
    end

    class DescribeDBParametersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBParametersInput, context: context)
        Hearth::Validator.validate!(input[:db_parameter_group_name], ::String, context: "#{context}[:db_parameter_group_name]")
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
        FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeDBParametersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBParametersOutput, context: context)
        ParametersList.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeDBSubnetGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBSubnetGroupsInput, context: context)
        Hearth::Validator.validate!(input[:db_subnet_group_name], ::String, context: "#{context}[:db_subnet_group_name]")
        FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeDBSubnetGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBSubnetGroupsOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        DBSubnetGroups.validate!(input[:db_subnet_groups], context: "#{context}[:db_subnet_groups]") unless input[:db_subnet_groups].nil?
      end
    end

    class DescribeEngineDefaultClusterParametersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEngineDefaultClusterParametersInput, context: context)
        Hearth::Validator.validate!(input[:db_parameter_group_family], ::String, context: "#{context}[:db_parameter_group_family]")
        FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeEngineDefaultClusterParametersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEngineDefaultClusterParametersOutput, context: context)
        EngineDefaults.validate!(input[:engine_defaults], context: "#{context}[:engine_defaults]") unless input[:engine_defaults].nil?
      end
    end

    class DescribeEngineDefaultParametersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEngineDefaultParametersInput, context: context)
        Hearth::Validator.validate!(input[:db_parameter_group_family], ::String, context: "#{context}[:db_parameter_group_family]")
        FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeEngineDefaultParametersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEngineDefaultParametersOutput, context: context)
        EngineDefaults.validate!(input[:engine_defaults], context: "#{context}[:engine_defaults]") unless input[:engine_defaults].nil?
      end
    end

    class DescribeEventCategoriesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventCategoriesInput, context: context)
        Hearth::Validator.validate!(input[:source_type], ::String, context: "#{context}[:source_type]")
        FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class DescribeEventCategoriesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventCategoriesOutput, context: context)
        EventCategoriesMapList.validate!(input[:event_categories_map_list], context: "#{context}[:event_categories_map_list]") unless input[:event_categories_map_list].nil?
      end
    end

    class DescribeEventSubscriptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventSubscriptionsInput, context: context)
        Hearth::Validator.validate!(input[:subscription_name], ::String, context: "#{context}[:subscription_name]")
        FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeEventSubscriptionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventSubscriptionsOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        EventSubscriptionsList.validate!(input[:event_subscriptions_list], context: "#{context}[:event_subscriptions_list]") unless input[:event_subscriptions_list].nil?
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
        EventCategoriesList.validate!(input[:event_categories], context: "#{context}[:event_categories]") unless input[:event_categories].nil?
        FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeEventsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventsOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        EventList.validate!(input[:events], context: "#{context}[:events]") unless input[:events].nil?
      end
    end

    class DescribeGlobalClustersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeGlobalClustersInput, context: context)
        Hearth::Validator.validate!(input[:global_cluster_identifier], ::String, context: "#{context}[:global_cluster_identifier]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeGlobalClustersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeGlobalClustersOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        GlobalClusterList.validate!(input[:global_clusters], context: "#{context}[:global_clusters]") unless input[:global_clusters].nil?
      end
    end

    class DescribeOrderableDBInstanceOptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOrderableDBInstanceOptionsInput, context: context)
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:db_instance_class], ::String, context: "#{context}[:db_instance_class]")
        Hearth::Validator.validate!(input[:license_model], ::String, context: "#{context}[:license_model]")
        Hearth::Validator.validate!(input[:vpc], ::TrueClass, ::FalseClass, context: "#{context}[:vpc]")
        FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeOrderableDBInstanceOptionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOrderableDBInstanceOptionsOutput, context: context)
        OrderableDBInstanceOptionsList.validate!(input[:orderable_db_instance_options], context: "#{context}[:orderable_db_instance_options]") unless input[:orderable_db_instance_options].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribePendingMaintenanceActionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePendingMaintenanceActionsInput, context: context)
        Hearth::Validator.validate!(input[:resource_identifier], ::String, context: "#{context}[:resource_identifier]")
        FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
      end
    end

    class DescribePendingMaintenanceActionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePendingMaintenanceActionsOutput, context: context)
        PendingMaintenanceActions.validate!(input[:pending_maintenance_actions], context: "#{context}[:pending_maintenance_actions]") unless input[:pending_maintenance_actions].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
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
        ValidDBInstanceModificationsMessage.validate!(input[:valid_db_instance_modifications_message], context: "#{context}[:valid_db_instance_modifications_message]") unless input[:valid_db_instance_modifications_message].nil?
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
          DomainMembership.validate!(element, context: "#{context}[#{index}]") unless element.nil?
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
          DoubleRange.validate!(element, context: "#{context}[#{index}]") unless element.nil?
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
        ParametersList.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
      end
    end

    class Event
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Event, context: context)
        Hearth::Validator.validate!(input[:source_identifier], ::String, context: "#{context}[:source_identifier]")
        Hearth::Validator.validate!(input[:source_type], ::String, context: "#{context}[:source_type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        EventCategoriesList.validate!(input[:event_categories], context: "#{context}[:event_categories]") unless input[:event_categories].nil?
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
        EventCategoriesList.validate!(input[:event_categories], context: "#{context}[:event_categories]") unless input[:event_categories].nil?
      end
    end

    class EventCategoriesMapList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EventCategoriesMap.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EventList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Event.validate!(element, context: "#{context}[#{index}]") unless element.nil?
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
        SourceIdsList.validate!(input[:source_ids_list], context: "#{context}[:source_ids_list]") unless input[:source_ids_list].nil?
        EventCategoriesList.validate!(input[:event_categories_list], context: "#{context}[:event_categories_list]") unless input[:event_categories_list].nil?
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
          EventSubscription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
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
        DBCluster.validate!(input[:db_cluster], context: "#{context}[:db_cluster]") unless input[:db_cluster].nil?
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
        GlobalCluster.validate!(input[:global_cluster], context: "#{context}[:global_cluster]") unless input[:global_cluster].nil?
      end
    end

    class Filter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Filter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        FilterValueList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class FilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Filter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
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
        Hearth::Validator.validate!(input[:storage_encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:storage_encrypted]")
        Hearth::Validator.validate!(input[:deletion_protection], ::TrueClass, ::FalseClass, context: "#{context}[:deletion_protection]")
        GlobalClusterMemberList.validate!(input[:global_cluster_members], context: "#{context}[:global_cluster_members]") unless input[:global_cluster_members].nil?
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
          GlobalCluster.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GlobalClusterMember
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GlobalClusterMember, context: context)
        Hearth::Validator.validate!(input[:db_cluster_arn], ::String, context: "#{context}[:db_cluster_arn]")
        ReadersArnList.validate!(input[:readers], context: "#{context}[:readers]") unless input[:readers].nil?
        Hearth::Validator.validate!(input[:is_writer], ::TrueClass, ::FalseClass, context: "#{context}[:is_writer]")
      end
    end

    class GlobalClusterMemberList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          GlobalClusterMember.validate!(element, context: "#{context}[#{index}]") unless element.nil?
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

    class InstanceQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceQuotaExceededFault, context: context)
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

    class InvalidGlobalClusterStateFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidGlobalClusterStateFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRestoreFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRestoreFault, context: context)
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
        FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        TagList.validate!(input[:tag_list], context: "#{context}[:tag_list]") unless input[:tag_list].nil?
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

    class ModifyDBClusterEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyDBClusterEndpointInput, context: context)
        Hearth::Validator.validate!(input[:db_cluster_endpoint_identifier], ::String, context: "#{context}[:db_cluster_endpoint_identifier]")
        Hearth::Validator.validate!(input[:endpoint_type], ::String, context: "#{context}[:endpoint_type]")
        StringList.validate!(input[:static_members], context: "#{context}[:static_members]") unless input[:static_members].nil?
        StringList.validate!(input[:excluded_members], context: "#{context}[:excluded_members]") unless input[:excluded_members].nil?
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
        StringList.validate!(input[:static_members], context: "#{context}[:static_members]") unless input[:static_members].nil?
        StringList.validate!(input[:excluded_members], context: "#{context}[:excluded_members]") unless input[:excluded_members].nil?
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
        VpcSecurityGroupIdList.validate!(input[:vpc_security_group_ids], context: "#{context}[:vpc_security_group_ids]") unless input[:vpc_security_group_ids].nil?
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:master_user_password], ::String, context: "#{context}[:master_user_password]")
        Hearth::Validator.validate!(input[:option_group_name], ::String, context: "#{context}[:option_group_name]")
        Hearth::Validator.validate!(input[:preferred_backup_window], ::String, context: "#{context}[:preferred_backup_window]")
        Hearth::Validator.validate!(input[:preferred_maintenance_window], ::String, context: "#{context}[:preferred_maintenance_window]")
        Hearth::Validator.validate!(input[:enable_iam_database_authentication], ::TrueClass, ::FalseClass, context: "#{context}[:enable_iam_database_authentication]")
        CloudwatchLogsExportConfiguration.validate!(input[:cloudwatch_logs_export_configuration], context: "#{context}[:cloudwatch_logs_export_configuration]") unless input[:cloudwatch_logs_export_configuration].nil?
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:allow_major_version_upgrade], ::TrueClass, ::FalseClass, context: "#{context}[:allow_major_version_upgrade]")
        Hearth::Validator.validate!(input[:db_instance_parameter_group_name], ::String, context: "#{context}[:db_instance_parameter_group_name]")
        Hearth::Validator.validate!(input[:deletion_protection], ::TrueClass, ::FalseClass, context: "#{context}[:deletion_protection]")
        Hearth::Validator.validate!(input[:copy_tags_to_snapshot], ::TrueClass, ::FalseClass, context: "#{context}[:copy_tags_to_snapshot]")
      end
    end

    class ModifyDBClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyDBClusterOutput, context: context)
        DBCluster.validate!(input[:db_cluster], context: "#{context}[:db_cluster]") unless input[:db_cluster].nil?
      end
    end

    class ModifyDBClusterParameterGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyDBClusterParameterGroupInput, context: context)
        Hearth::Validator.validate!(input[:db_cluster_parameter_group_name], ::String, context: "#{context}[:db_cluster_parameter_group_name]")
        ParametersList.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
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
        AttributeValueList.validate!(input[:values_to_add], context: "#{context}[:values_to_add]") unless input[:values_to_add].nil?
        AttributeValueList.validate!(input[:values_to_remove], context: "#{context}[:values_to_remove]") unless input[:values_to_remove].nil?
      end
    end

    class ModifyDBClusterSnapshotAttributeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyDBClusterSnapshotAttributeOutput, context: context)
        DBClusterSnapshotAttributesResult.validate!(input[:db_cluster_snapshot_attributes_result], context: "#{context}[:db_cluster_snapshot_attributes_result]") unless input[:db_cluster_snapshot_attributes_result].nil?
      end
    end

    class ModifyDBInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyDBInstanceInput, context: context)
        Hearth::Validator.validate!(input[:db_instance_identifier], ::String, context: "#{context}[:db_instance_identifier]")
        Hearth::Validator.validate!(input[:allocated_storage], ::Integer, context: "#{context}[:allocated_storage]")
        Hearth::Validator.validate!(input[:db_instance_class], ::String, context: "#{context}[:db_instance_class]")
        Hearth::Validator.validate!(input[:db_subnet_group_name], ::String, context: "#{context}[:db_subnet_group_name]")
        DBSecurityGroupNameList.validate!(input[:db_security_groups], context: "#{context}[:db_security_groups]") unless input[:db_security_groups].nil?
        VpcSecurityGroupIdList.validate!(input[:vpc_security_group_ids], context: "#{context}[:vpc_security_group_ids]") unless input[:vpc_security_group_ids].nil?
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
        CloudwatchLogsExportConfiguration.validate!(input[:cloudwatch_logs_export_configuration], context: "#{context}[:cloudwatch_logs_export_configuration]") unless input[:cloudwatch_logs_export_configuration].nil?
        Hearth::Validator.validate!(input[:deletion_protection], ::TrueClass, ::FalseClass, context: "#{context}[:deletion_protection]")
      end
    end

    class ModifyDBInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyDBInstanceOutput, context: context)
        DBInstance.validate!(input[:db_instance], context: "#{context}[:db_instance]") unless input[:db_instance].nil?
      end
    end

    class ModifyDBParameterGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyDBParameterGroupInput, context: context)
        Hearth::Validator.validate!(input[:db_parameter_group_name], ::String, context: "#{context}[:db_parameter_group_name]")
        ParametersList.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
      end
    end

    class ModifyDBParameterGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyDBParameterGroupOutput, context: context)
        Hearth::Validator.validate!(input[:db_parameter_group_name], ::String, context: "#{context}[:db_parameter_group_name]")
      end
    end

    class ModifyDBSubnetGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyDBSubnetGroupInput, context: context)
        Hearth::Validator.validate!(input[:db_subnet_group_name], ::String, context: "#{context}[:db_subnet_group_name]")
        Hearth::Validator.validate!(input[:db_subnet_group_description], ::String, context: "#{context}[:db_subnet_group_description]")
        SubnetIdentifierList.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
      end
    end

    class ModifyDBSubnetGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyDBSubnetGroupOutput, context: context)
        DBSubnetGroup.validate!(input[:db_subnet_group], context: "#{context}[:db_subnet_group]") unless input[:db_subnet_group].nil?
      end
    end

    class ModifyEventSubscriptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyEventSubscriptionInput, context: context)
        Hearth::Validator.validate!(input[:subscription_name], ::String, context: "#{context}[:subscription_name]")
        Hearth::Validator.validate!(input[:sns_topic_arn], ::String, context: "#{context}[:sns_topic_arn]")
        Hearth::Validator.validate!(input[:source_type], ::String, context: "#{context}[:source_type]")
        EventCategoriesList.validate!(input[:event_categories], context: "#{context}[:event_categories]") unless input[:event_categories].nil?
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class ModifyEventSubscriptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyEventSubscriptionOutput, context: context)
        EventSubscription.validate!(input[:event_subscription], context: "#{context}[:event_subscription]") unless input[:event_subscription].nil?
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
        GlobalCluster.validate!(input[:global_cluster], context: "#{context}[:global_cluster]") unless input[:global_cluster].nil?
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
          OptionGroupMembership.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OptionGroupNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OptionGroupNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OrderableDBInstanceOption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OrderableDBInstanceOption, context: context)
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:db_instance_class], ::String, context: "#{context}[:db_instance_class]")
        Hearth::Validator.validate!(input[:license_model], ::String, context: "#{context}[:license_model]")
        AvailabilityZoneList.validate!(input[:availability_zones], context: "#{context}[:availability_zones]") unless input[:availability_zones].nil?
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
        Hearth::Validator.validate!(input[:supports_global_databases], ::TrueClass, ::FalseClass, context: "#{context}[:supports_global_databases]")
      end
    end

    class OrderableDBInstanceOptionsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          OrderableDBInstanceOption.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
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
      end
    end

    class ParametersList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Parameter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PendingCloudwatchLogsExports
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PendingCloudwatchLogsExports, context: context)
        LogTypeList.validate!(input[:log_types_to_enable], context: "#{context}[:log_types_to_enable]") unless input[:log_types_to_enable].nil?
        LogTypeList.validate!(input[:log_types_to_disable], context: "#{context}[:log_types_to_disable]") unless input[:log_types_to_disable].nil?
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
          PendingMaintenanceAction.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PendingMaintenanceActions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ResourcePendingMaintenanceActions.validate!(element, context: "#{context}[#{index}]") unless element.nil?
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
        PendingCloudwatchLogsExports.validate!(input[:pending_cloudwatch_logs_exports], context: "#{context}[:pending_cloudwatch_logs_exports]") unless input[:pending_cloudwatch_logs_exports].nil?
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
        DBCluster.validate!(input[:db_cluster], context: "#{context}[:db_cluster]") unless input[:db_cluster].nil?
      end
    end

    class ProvisionedIopsNotAvailableInAZFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProvisionedIopsNotAvailableInAZFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
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
          Range.validate!(element, context: "#{context}[#{index}]") unless element.nil?
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
        DBInstance.validate!(input[:db_instance], context: "#{context}[:db_instance]") unless input[:db_instance].nil?
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
        GlobalCluster.validate!(input[:global_cluster], context: "#{context}[:global_cluster]") unless input[:global_cluster].nil?
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
        EventSubscription.validate!(input[:event_subscription], context: "#{context}[:event_subscription]") unless input[:event_subscription].nil?
      end
    end

    class RemoveTagsFromResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveTagsFromResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
        KeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class RemoveTagsFromResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveTagsFromResourceOutput, context: context)
      end
    end

    class ResetDBClusterParameterGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResetDBClusterParameterGroupInput, context: context)
        Hearth::Validator.validate!(input[:db_cluster_parameter_group_name], ::String, context: "#{context}[:db_cluster_parameter_group_name]")
        Hearth::Validator.validate!(input[:reset_all_parameters], ::TrueClass, ::FalseClass, context: "#{context}[:reset_all_parameters]")
        ParametersList.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
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
        ParametersList.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
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
        PendingMaintenanceActionDetails.validate!(input[:pending_maintenance_action_details], context: "#{context}[:pending_maintenance_action_details]") unless input[:pending_maintenance_action_details].nil?
      end
    end

    class RestoreDBClusterFromSnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreDBClusterFromSnapshotInput, context: context)
        AvailabilityZones.validate!(input[:availability_zones], context: "#{context}[:availability_zones]") unless input[:availability_zones].nil?
        Hearth::Validator.validate!(input[:db_cluster_identifier], ::String, context: "#{context}[:db_cluster_identifier]")
        Hearth::Validator.validate!(input[:snapshot_identifier], ::String, context: "#{context}[:snapshot_identifier]")
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:db_subnet_group_name], ::String, context: "#{context}[:db_subnet_group_name]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:option_group_name], ::String, context: "#{context}[:option_group_name]")
        VpcSecurityGroupIdList.validate!(input[:vpc_security_group_ids], context: "#{context}[:vpc_security_group_ids]") unless input[:vpc_security_group_ids].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:enable_iam_database_authentication], ::TrueClass, ::FalseClass, context: "#{context}[:enable_iam_database_authentication]")
        LogTypeList.validate!(input[:enable_cloudwatch_logs_exports], context: "#{context}[:enable_cloudwatch_logs_exports]") unless input[:enable_cloudwatch_logs_exports].nil?
        Hearth::Validator.validate!(input[:db_cluster_parameter_group_name], ::String, context: "#{context}[:db_cluster_parameter_group_name]")
        Hearth::Validator.validate!(input[:deletion_protection], ::TrueClass, ::FalseClass, context: "#{context}[:deletion_protection]")
        Hearth::Validator.validate!(input[:copy_tags_to_snapshot], ::TrueClass, ::FalseClass, context: "#{context}[:copy_tags_to_snapshot]")
      end
    end

    class RestoreDBClusterFromSnapshotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreDBClusterFromSnapshotOutput, context: context)
        DBCluster.validate!(input[:db_cluster], context: "#{context}[:db_cluster]") unless input[:db_cluster].nil?
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
        VpcSecurityGroupIdList.validate!(input[:vpc_security_group_ids], context: "#{context}[:vpc_security_group_ids]") unless input[:vpc_security_group_ids].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:enable_iam_database_authentication], ::TrueClass, ::FalseClass, context: "#{context}[:enable_iam_database_authentication]")
        LogTypeList.validate!(input[:enable_cloudwatch_logs_exports], context: "#{context}[:enable_cloudwatch_logs_exports]") unless input[:enable_cloudwatch_logs_exports].nil?
        Hearth::Validator.validate!(input[:db_cluster_parameter_group_name], ::String, context: "#{context}[:db_cluster_parameter_group_name]")
        Hearth::Validator.validate!(input[:deletion_protection], ::TrueClass, ::FalseClass, context: "#{context}[:deletion_protection]")
      end
    end

    class RestoreDBClusterToPointInTimeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreDBClusterToPointInTimeOutput, context: context)
        DBCluster.validate!(input[:db_cluster], context: "#{context}[:db_cluster]") unless input[:db_cluster].nil?
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

    class StartDBClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartDBClusterInput, context: context)
        Hearth::Validator.validate!(input[:db_cluster_identifier], ::String, context: "#{context}[:db_cluster_identifier]")
      end
    end

    class StartDBClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartDBClusterOutput, context: context)
        DBCluster.validate!(input[:db_cluster], context: "#{context}[:db_cluster]") unless input[:db_cluster].nil?
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
        DBCluster.validate!(input[:db_cluster], context: "#{context}[:db_cluster]") unless input[:db_cluster].nil?
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
        AvailabilityZone.validate!(input[:subnet_availability_zone], context: "#{context}[:subnet_availability_zone]") unless input[:subnet_availability_zone].nil?
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
          Subnet.validate!(element, context: "#{context}[#{index}]") unless element.nil?
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
          CharacterSet.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SupportedTimezonesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Timezone.validate!(element, context: "#{context}[#{index}]") unless element.nil?
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
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
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
        Hearth::Validator.validate!(input[:supports_global_databases], ::TrueClass, ::FalseClass, context: "#{context}[:supports_global_databases]")
      end
    end

    class ValidDBInstanceModificationsMessage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidDBInstanceModificationsMessage, context: context)
        ValidStorageOptionsList.validate!(input[:storage], context: "#{context}[:storage]") unless input[:storage].nil?
      end
    end

    class ValidStorageOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidStorageOptions, context: context)
        Hearth::Validator.validate!(input[:storage_type], ::String, context: "#{context}[:storage_type]")
        RangeList.validate!(input[:storage_size], context: "#{context}[:storage_size]") unless input[:storage_size].nil?
        RangeList.validate!(input[:provisioned_iops], context: "#{context}[:provisioned_iops]") unless input[:provisioned_iops].nil?
        DoubleRangeList.validate!(input[:iops_to_storage_ratio], context: "#{context}[:iops_to_storage_ratio]") unless input[:iops_to_storage_ratio].nil?
      end
    end

    class ValidStorageOptionsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ValidStorageOptions.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ValidUpgradeTargetList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UpgradeTarget.validate!(element, context: "#{context}[#{index}]") unless element.nil?
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
          VpcSecurityGroupMembership.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
