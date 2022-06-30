# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::DocDB
  module Validators

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

    class Certificate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Certificate, context: context)
        Hearth::Validator.validate!(input[:certificate_identifier], ::String, context: "#{context}[:certificate_identifier]")
        Hearth::Validator.validate!(input[:certificate_type], ::String, context: "#{context}[:certificate_type]")
        Hearth::Validator.validate!(input[:thumbprint], ::String, context: "#{context}[:thumbprint]")
        Hearth::Validator.validate!(input[:valid_from], ::Time, context: "#{context}[:valid_from]")
        Hearth::Validator.validate!(input[:valid_till], ::Time, context: "#{context}[:valid_till]")
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
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

    class CloudwatchLogsExportConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudwatchLogsExportConfiguration, context: context)
        Validators::LogTypeList.validate!(input[:enable_log_types], context: "#{context}[:enable_log_types]") unless input[:enable_log_types].nil?
        Validators::LogTypeList.validate!(input[:disable_log_types], context: "#{context}[:disable_log_types]") unless input[:disable_log_types].nil?
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

    class CreateDBClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDBClusterInput, context: context)
        Validators::AvailabilityZones.validate!(input[:availability_zones], context: "#{context}[:availability_zones]") unless input[:availability_zones].nil?
        Hearth::Validator.validate!(input[:backup_retention_period], ::Integer, context: "#{context}[:backup_retention_period]")
        Hearth::Validator.validate!(input[:db_cluster_identifier], ::String, context: "#{context}[:db_cluster_identifier]")
        Hearth::Validator.validate!(input[:db_cluster_parameter_group_name], ::String, context: "#{context}[:db_cluster_parameter_group_name]")
        Validators::VpcSecurityGroupIdList.validate!(input[:vpc_security_group_ids], context: "#{context}[:vpc_security_group_ids]") unless input[:vpc_security_group_ids].nil?
        Hearth::Validator.validate!(input[:db_subnet_group_name], ::String, context: "#{context}[:db_subnet_group_name]")
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:master_username], ::String, context: "#{context}[:master_username]")
        Hearth::Validator.validate!(input[:master_user_password], ::String, context: "#{context}[:master_user_password]")
        Hearth::Validator.validate!(input[:preferred_backup_window], ::String, context: "#{context}[:preferred_backup_window]")
        Hearth::Validator.validate!(input[:preferred_maintenance_window], ::String, context: "#{context}[:preferred_maintenance_window]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:storage_encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:storage_encrypted]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:pre_signed_url], ::String, context: "#{context}[:pre_signed_url]")
        Validators::LogTypeList.validate!(input[:enable_cloudwatch_logs_exports], context: "#{context}[:enable_cloudwatch_logs_exports]") unless input[:enable_cloudwatch_logs_exports].nil?
        Hearth::Validator.validate!(input[:deletion_protection], ::TrueClass, ::FalseClass, context: "#{context}[:deletion_protection]")
        Hearth::Validator.validate!(input[:global_cluster_identifier], ::String, context: "#{context}[:global_cluster_identifier]")
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
        Hearth::Validator.validate!(input[:db_instance_identifier], ::String, context: "#{context}[:db_instance_identifier]")
        Hearth::Validator.validate!(input[:db_instance_class], ::String, context: "#{context}[:db_instance_class]")
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:preferred_maintenance_window], ::String, context: "#{context}[:preferred_maintenance_window]")
        Hearth::Validator.validate!(input[:auto_minor_version_upgrade], ::TrueClass, ::FalseClass, context: "#{context}[:auto_minor_version_upgrade]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:db_cluster_identifier], ::String, context: "#{context}[:db_cluster_identifier]")
        Hearth::Validator.validate!(input[:promotion_tier], ::Integer, context: "#{context}[:promotion_tier]")
        Hearth::Validator.validate!(input[:enable_performance_insights], ::TrueClass, ::FalseClass, context: "#{context}[:enable_performance_insights]")
        Hearth::Validator.validate!(input[:performance_insights_kms_key_id], ::String, context: "#{context}[:performance_insights_kms_key_id]")
      end
    end

    class CreateDBInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDBInstanceOutput, context: context)
        Validators::DBInstance.validate!(input[:db_instance], context: "#{context}[:db_instance]") unless input[:db_instance].nil?
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

    class DBCluster
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBCluster, context: context)
        Validators::AvailabilityZones.validate!(input[:availability_zones], context: "#{context}[:availability_zones]") unless input[:availability_zones].nil?
        Hearth::Validator.validate!(input[:backup_retention_period], ::Integer, context: "#{context}[:backup_retention_period]")
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
        Hearth::Validator.validate!(input[:cluster_create_time], ::Time, context: "#{context}[:cluster_create_time]")
        Validators::LogTypeList.validate!(input[:enabled_cloudwatch_logs_exports], context: "#{context}[:enabled_cloudwatch_logs_exports]") unless input[:enabled_cloudwatch_logs_exports].nil?
        Hearth::Validator.validate!(input[:deletion_protection], ::TrueClass, ::FalseClass, context: "#{context}[:deletion_protection]")
      end
    end

    class DBClusterAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBClusterAlreadyExistsFault, context: context)
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
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:cluster_create_time], ::Time, context: "#{context}[:cluster_create_time]")
        Hearth::Validator.validate!(input[:master_username], ::String, context: "#{context}[:master_username]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:snapshot_type], ::String, context: "#{context}[:snapshot_type]")
        Hearth::Validator.validate!(input[:percent_progress], ::Integer, context: "#{context}[:percent_progress]")
        Hearth::Validator.validate!(input[:storage_encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:storage_encrypted]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:db_cluster_snapshot_arn], ::String, context: "#{context}[:db_cluster_snapshot_arn]")
        Hearth::Validator.validate!(input[:source_db_cluster_snapshot_arn], ::String, context: "#{context}[:source_db_cluster_snapshot_arn]")
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
        Validators::ValidUpgradeTargetList.validate!(input[:valid_upgrade_target], context: "#{context}[:valid_upgrade_target]") unless input[:valid_upgrade_target].nil?
        Validators::LogTypeList.validate!(input[:exportable_log_types], context: "#{context}[:exportable_log_types]") unless input[:exportable_log_types].nil?
        Hearth::Validator.validate!(input[:supports_log_exports_to_cloudwatch_logs], ::TrueClass, ::FalseClass, context: "#{context}[:supports_log_exports_to_cloudwatch_logs]")
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
        Validators::Endpoint.validate!(input[:endpoint], context: "#{context}[:endpoint]") unless input[:endpoint].nil?
        Hearth::Validator.validate!(input[:instance_create_time], ::Time, context: "#{context}[:instance_create_time]")
        Hearth::Validator.validate!(input[:preferred_backup_window], ::String, context: "#{context}[:preferred_backup_window]")
        Hearth::Validator.validate!(input[:backup_retention_period], ::Integer, context: "#{context}[:backup_retention_period]")
        Validators::VpcSecurityGroupMembershipList.validate!(input[:vpc_security_groups], context: "#{context}[:vpc_security_groups]") unless input[:vpc_security_groups].nil?
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Validators::DBSubnetGroup.validate!(input[:db_subnet_group], context: "#{context}[:db_subnet_group]") unless input[:db_subnet_group].nil?
        Hearth::Validator.validate!(input[:preferred_maintenance_window], ::String, context: "#{context}[:preferred_maintenance_window]")
        Validators::PendingModifiedValues.validate!(input[:pending_modified_values], context: "#{context}[:pending_modified_values]") unless input[:pending_modified_values].nil?
        Hearth::Validator.validate!(input[:latest_restorable_time], ::Time, context: "#{context}[:latest_restorable_time]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:auto_minor_version_upgrade], ::TrueClass, ::FalseClass, context: "#{context}[:auto_minor_version_upgrade]")
        Hearth::Validator.validate!(input[:publicly_accessible], ::TrueClass, ::FalseClass, context: "#{context}[:publicly_accessible]")
        Validators::DBInstanceStatusInfoList.validate!(input[:status_infos], context: "#{context}[:status_infos]") unless input[:status_infos].nil?
        Hearth::Validator.validate!(input[:db_cluster_identifier], ::String, context: "#{context}[:db_cluster_identifier]")
        Hearth::Validator.validate!(input[:storage_encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:storage_encrypted]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:dbi_resource_id], ::String, context: "#{context}[:dbi_resource_id]")
        Hearth::Validator.validate!(input[:ca_certificate_identifier], ::String, context: "#{context}[:ca_certificate_identifier]")
        Hearth::Validator.validate!(input[:promotion_tier], ::Integer, context: "#{context}[:promotion_tier]")
        Hearth::Validator.validate!(input[:db_instance_arn], ::String, context: "#{context}[:db_instance_arn]")
        Validators::LogTypeList.validate!(input[:enabled_cloudwatch_logs_exports], context: "#{context}[:enabled_cloudwatch_logs_exports]") unless input[:enabled_cloudwatch_logs_exports].nil?
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

    class DBParameterGroupAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DBParameterGroupAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
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
        Validators::SubnetList.validate!(input[:subnets], context: "#{context}[:subnets]") unless input[:subnets].nil?
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

    class DeleteDBInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDBInstanceInput, context: context)
        Hearth::Validator.validate!(input[:db_instance_identifier], ::String, context: "#{context}[:db_instance_identifier]")
      end
    end

    class DeleteDBInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDBInstanceOutput, context: context)
        Validators::DBInstance.validate!(input[:db_instance], context: "#{context}[:db_instance]") unless input[:db_instance].nil?
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
      end
    end

    class DescribeDBEngineVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDBEngineVersionsOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::DBEngineVersionList.validate!(input[:db_engine_versions], context: "#{context}[:db_engine_versions]") unless input[:db_engine_versions].nil?
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

    class DescribeOrderableDBInstanceOptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOrderableDBInstanceOptionsInput, context: context)
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:db_instance_class], ::String, context: "#{context}[:db_instance_class]")
        Hearth::Validator.validate!(input[:license_model], ::String, context: "#{context}[:license_model]")
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
        Hearth::Validator.validate!(input[:preferred_backup_window], ::String, context: "#{context}[:preferred_backup_window]")
        Hearth::Validator.validate!(input[:preferred_maintenance_window], ::String, context: "#{context}[:preferred_maintenance_window]")
        Validators::CloudwatchLogsExportConfiguration.validate!(input[:cloudwatch_logs_export_configuration], context: "#{context}[:cloudwatch_logs_export_configuration]") unless input[:cloudwatch_logs_export_configuration].nil?
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:deletion_protection], ::TrueClass, ::FalseClass, context: "#{context}[:deletion_protection]")
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
        Hearth::Validator.validate!(input[:db_instance_class], ::String, context: "#{context}[:db_instance_class]")
        Hearth::Validator.validate!(input[:apply_immediately], ::TrueClass, ::FalseClass, context: "#{context}[:apply_immediately]")
        Hearth::Validator.validate!(input[:preferred_maintenance_window], ::String, context: "#{context}[:preferred_maintenance_window]")
        Hearth::Validator.validate!(input[:auto_minor_version_upgrade], ::TrueClass, ::FalseClass, context: "#{context}[:auto_minor_version_upgrade]")
        Hearth::Validator.validate!(input[:new_db_instance_identifier], ::String, context: "#{context}[:new_db_instance_identifier]")
        Hearth::Validator.validate!(input[:ca_certificate_identifier], ::String, context: "#{context}[:ca_certificate_identifier]")
        Hearth::Validator.validate!(input[:promotion_tier], ::Integer, context: "#{context}[:promotion_tier]")
        Hearth::Validator.validate!(input[:enable_performance_insights], ::TrueClass, ::FalseClass, context: "#{context}[:enable_performance_insights]")
        Hearth::Validator.validate!(input[:performance_insights_kms_key_id], ::String, context: "#{context}[:performance_insights_kms_key_id]")
      end
    end

    class ModifyDBInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyDBInstanceOutput, context: context)
        Validators::DBInstance.validate!(input[:db_instance], context: "#{context}[:db_instance]") unless input[:db_instance].nil?
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
      end
    end

    class ModifyGlobalClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyGlobalClusterOutput, context: context)
        Validators::GlobalCluster.validate!(input[:global_cluster], context: "#{context}[:global_cluster]") unless input[:global_cluster].nil?
      end
    end

    class OrderableDBInstanceOption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OrderableDBInstanceOption, context: context)
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:db_instance_class], ::String, context: "#{context}[:db_instance_class]")
        Hearth::Validator.validate!(input[:license_model], ::String, context: "#{context}[:license_model]")
        Validators::AvailabilityZoneList.validate!(input[:availability_zones], context: "#{context}[:availability_zones]") unless input[:availability_zones].nil?
        Hearth::Validator.validate!(input[:vpc], ::TrueClass, ::FalseClass, context: "#{context}[:vpc]")
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
        Validators::DBInstance.validate!(input[:db_instance], context: "#{context}[:db_instance]") unless input[:db_instance].nil?
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
        Validators::VpcSecurityGroupIdList.validate!(input[:vpc_security_group_ids], context: "#{context}[:vpc_security_group_ids]") unless input[:vpc_security_group_ids].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Validators::LogTypeList.validate!(input[:enable_cloudwatch_logs_exports], context: "#{context}[:enable_cloudwatch_logs_exports]") unless input[:enable_cloudwatch_logs_exports].nil?
        Hearth::Validator.validate!(input[:deletion_protection], ::TrueClass, ::FalseClass, context: "#{context}[:deletion_protection]")
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
        Hearth::Validator.validate!(input[:source_db_cluster_identifier], ::String, context: "#{context}[:source_db_cluster_identifier]")
        Hearth::Validator.validate!(input[:restore_to_time], ::Time, context: "#{context}[:restore_to_time]")
        Hearth::Validator.validate!(input[:use_latest_restorable_time], ::TrueClass, ::FalseClass, context: "#{context}[:use_latest_restorable_time]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:db_subnet_group_name], ::String, context: "#{context}[:db_subnet_group_name]")
        Validators::VpcSecurityGroupIdList.validate!(input[:vpc_security_group_ids], context: "#{context}[:vpc_security_group_ids]") unless input[:vpc_security_group_ids].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Validators::LogTypeList.validate!(input[:enable_cloudwatch_logs_exports], context: "#{context}[:enable_cloudwatch_logs_exports]") unless input[:enable_cloudwatch_logs_exports].nil?
        Hearth::Validator.validate!(input[:deletion_protection], ::TrueClass, ::FalseClass, context: "#{context}[:deletion_protection]")
      end
    end

    class RestoreDBClusterToPointInTimeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreDBClusterToPointInTimeOutput, context: context)
        Validators::DBCluster.validate!(input[:db_cluster], context: "#{context}[:db_cluster]") unless input[:db_cluster].nil?
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
        Validators::DBCluster.validate!(input[:db_cluster], context: "#{context}[:db_cluster]") unless input[:db_cluster].nil?
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

    class Subnet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Subnet, context: context)
        Hearth::Validator.validate!(input[:subnet_identifier], ::String, context: "#{context}[:subnet_identifier]")
        Validators::AvailabilityZone.validate!(input[:subnet_availability_zone], context: "#{context}[:subnet_availability_zone]") unless input[:subnet_availability_zone].nil?
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

    class UpgradeTarget
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpgradeTarget, context: context)
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:auto_upgrade], ::TrueClass, ::FalseClass, context: "#{context}[:auto_upgrade]")
        Hearth::Validator.validate!(input[:is_major_version_upgrade], ::TrueClass, ::FalseClass, context: "#{context}[:is_major_version_upgrade]")
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
