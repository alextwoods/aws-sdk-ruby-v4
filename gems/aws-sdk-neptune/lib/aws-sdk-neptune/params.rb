# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Neptune
  module Params

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

    module AuthorizationNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuthorizationNotFoundFault, context: context)
        type = Types::AuthorizationNotFoundFault.new
        type.message = params[:message]
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
        type.copy_tags_to_snapshot = params[:copy_tags_to_snapshot]
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
        type.enable_cloudwatch_logs_exports = LogTypeList.build(params[:enable_cloudwatch_logs_exports], context: "#{context}[:enable_cloudwatch_logs_exports]") unless params[:enable_cloudwatch_logs_exports].nil?
        type.deletion_protection = params[:deletion_protection]
        type.global_cluster_identifier = params[:global_cluster_identifier]
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
        type.enable_cloudwatch_logs_exports = LogTypeList.build(params[:enable_cloudwatch_logs_exports], context: "#{context}[:enable_cloudwatch_logs_exports]") unless params[:enable_cloudwatch_logs_exports].nil?
        type.deletion_protection = params[:deletion_protection]
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
        type.percent_progress = params[:percent_progress]
        type.earliest_restorable_time = params[:earliest_restorable_time]
        type.endpoint = params[:endpoint]
        type.reader_endpoint = params[:reader_endpoint]
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
        type.copy_tags_to_snapshot = params[:copy_tags_to_snapshot]
        type.enabled_cloudwatch_logs_exports = LogTypeList.build(params[:enabled_cloudwatch_logs_exports], context: "#{context}[:enabled_cloudwatch_logs_exports]") unless params[:enabled_cloudwatch_logs_exports].nil?
        type.deletion_protection = params[:deletion_protection]
        type.cross_account_clone = params[:cross_account_clone]
        type.automatic_restart_time = params[:automatic_restart_time]
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
        type.valid_upgrade_target = ValidUpgradeTargetList.build(params[:valid_upgrade_target], context: "#{context}[:valid_upgrade_target]") unless params[:valid_upgrade_target].nil?
        type.supported_timezones = SupportedTimezonesList.build(params[:supported_timezones], context: "#{context}[:supported_timezones]") unless params[:supported_timezones].nil?
        type.exportable_log_types = LogTypeList.build(params[:exportable_log_types], context: "#{context}[:exportable_log_types]") unless params[:exportable_log_types].nil?
        type.supports_log_exports_to_cloudwatch_logs = params[:supports_log_exports_to_cloudwatch_logs]
        type.supports_read_replica = params[:supports_read_replica]
        type.supports_global_databases = params[:supports_global_databases]
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
        type.license_model = params[:license_model]
        type.iops = params[:iops]
        type.option_group_memberships = OptionGroupMembershipList.build(params[:option_group_memberships], context: "#{context}[:option_group_memberships]") unless params[:option_group_memberships].nil?
        type.character_set_name = params[:character_set_name]
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
        type.enabled_cloudwatch_logs_exports = LogTypeList.build(params[:enabled_cloudwatch_logs_exports], context: "#{context}[:enabled_cloudwatch_logs_exports]") unless params[:enabled_cloudwatch_logs_exports].nil?
        type.deletion_protection = params[:deletion_protection]
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

    module DBSnapshotAlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DBSnapshotAlreadyExistsFault, context: context)
        type = Types::DBSnapshotAlreadyExistsFault.new
        type.message = params[:message]
        type
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

    module DeleteDBInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDBInstanceInput, context: context)
        type = Types::DeleteDBInstanceInput.new
        type.db_instance_identifier = params[:db_instance_identifier]
        type.skip_final_snapshot = params[:skip_final_snapshot]
        type.final_db_snapshot_identifier = params[:final_db_snapshot_identifier]
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

    module DescribeGlobalClustersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeGlobalClustersInput, context: context)
        type = Types::DescribeGlobalClustersInput.new
        type.global_cluster_identifier = params[:global_cluster_identifier]
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

    module DescribeOrderableDBInstanceOptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeOrderableDBInstanceOptionsInput, context: context)
        type = Types::DescribeOrderableDBInstanceOptionsInput.new
        type.engine = params[:engine]
        type.engine_version = params[:engine_version]
        type.db_instance_class = params[:db_instance_class]
        type.license_model = params[:license_model]
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
        type.storage_encrypted = params[:storage_encrypted]
        type.deletion_protection = params[:deletion_protection]
        type.global_cluster_members = GlobalClusterMemberList.build(params[:global_cluster_members], context: "#{context}[:global_cluster_members]") unless params[:global_cluster_members].nil?
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

    module InstanceQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceQuotaExceededFault, context: context)
        type = Types::InstanceQuotaExceededFault.new
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

    module InvalidGlobalClusterStateFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidGlobalClusterStateFault, context: context)
        type = Types::InvalidGlobalClusterStateFault.new
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
        type.cloudwatch_logs_export_configuration = CloudwatchLogsExportConfiguration.build(params[:cloudwatch_logs_export_configuration], context: "#{context}[:cloudwatch_logs_export_configuration]") unless params[:cloudwatch_logs_export_configuration].nil?
        type.engine_version = params[:engine_version]
        type.allow_major_version_upgrade = params[:allow_major_version_upgrade]
        type.db_instance_parameter_group_name = params[:db_instance_parameter_group_name]
        type.deletion_protection = params[:deletion_protection]
        type.copy_tags_to_snapshot = params[:copy_tags_to_snapshot]
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
        type.cloudwatch_logs_export_configuration = CloudwatchLogsExportConfiguration.build(params[:cloudwatch_logs_export_configuration], context: "#{context}[:cloudwatch_logs_export_configuration]") unless params[:cloudwatch_logs_export_configuration].nil?
        type.deletion_protection = params[:deletion_protection]
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

    module OrderableDBInstanceOption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OrderableDBInstanceOption, context: context)
        type = Types::OrderableDBInstanceOption.new
        type.engine = params[:engine]
        type.engine_version = params[:engine_version]
        type.db_instance_class = params[:db_instance_class]
        type.license_model = params[:license_model]
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
        type.supports_global_databases = params[:supports_global_databases]
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
        type
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

    module ProvisionedIopsNotAvailableInAZFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProvisionedIopsNotAvailableInAZFault, context: context)
        type = Types::ProvisionedIopsNotAvailableInAZFault.new
        type.message = params[:message]
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
        type.enable_cloudwatch_logs_exports = LogTypeList.build(params[:enable_cloudwatch_logs_exports], context: "#{context}[:enable_cloudwatch_logs_exports]") unless params[:enable_cloudwatch_logs_exports].nil?
        type.db_cluster_parameter_group_name = params[:db_cluster_parameter_group_name]
        type.deletion_protection = params[:deletion_protection]
        type.copy_tags_to_snapshot = params[:copy_tags_to_snapshot]
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
        type.enable_cloudwatch_logs_exports = LogTypeList.build(params[:enable_cloudwatch_logs_exports], context: "#{context}[:enable_cloudwatch_logs_exports]") unless params[:enable_cloudwatch_logs_exports].nil?
        type.db_cluster_parameter_group_name = params[:db_cluster_parameter_group_name]
        type.deletion_protection = params[:deletion_protection]
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
        type.supports_global_databases = params[:supports_global_databases]
        type
      end
    end

    module ValidDBInstanceModificationsMessage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidDBInstanceModificationsMessage, context: context)
        type = Types::ValidDBInstanceModificationsMessage.new
        type.storage = ValidStorageOptionsList.build(params[:storage], context: "#{context}[:storage]") unless params[:storage].nil?
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
