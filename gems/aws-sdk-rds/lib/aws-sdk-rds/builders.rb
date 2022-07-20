# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::RDS
  module Builders

    # Operation Builder for AddRoleToDBCluster
    class AddRoleToDBCluster
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AddRoleToDBCluster'
        params['Version'] = '2014-10-31'
        params[context + 'DBClusterIdentifier'] = input[:db_cluster_identifier].to_s unless input[:db_cluster_identifier].nil?
        params[context + 'RoleArn'] = input[:role_arn].to_s unless input[:role_arn].nil?
        params[context + 'FeatureName'] = input[:feature_name].to_s unless input[:feature_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for AddRoleToDBInstance
    class AddRoleToDBInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AddRoleToDBInstance'
        params['Version'] = '2014-10-31'
        params[context + 'DBInstanceIdentifier'] = input[:db_instance_identifier].to_s unless input[:db_instance_identifier].nil?
        params[context + 'RoleArn'] = input[:role_arn].to_s unless input[:role_arn].nil?
        params[context + 'FeatureName'] = input[:feature_name].to_s unless input[:feature_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for AddSourceIdentifierToSubscription
    class AddSourceIdentifierToSubscription
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AddSourceIdentifierToSubscription'
        params['Version'] = '2014-10-31'
        params[context + 'SubscriptionName'] = input[:subscription_name].to_s unless input[:subscription_name].nil?
        params[context + 'SourceIdentifier'] = input[:source_identifier].to_s unless input[:source_identifier].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for AddTagsToResource
    class AddTagsToResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AddTagsToResource'
        params['Version'] = '2014-10-31'
        params[context + 'ResourceName'] = input[:resource_name].to_s unless input[:resource_name].nil?
        Builders::TagList.build(input[:tags], params, context: context + 'Tags' + '.Tag') unless input[:tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::Tag.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input, params, context: nil)
        params[context + 'Key'] = input[:key].to_s unless input[:key].nil?
        params[context + 'Value'] = input[:value].to_s unless input[:value].nil?
      end
    end

    # Operation Builder for ApplyPendingMaintenanceAction
    class ApplyPendingMaintenanceAction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ApplyPendingMaintenanceAction'
        params['Version'] = '2014-10-31'
        params[context + 'ResourceIdentifier'] = input[:resource_identifier].to_s unless input[:resource_identifier].nil?
        params[context + 'ApplyAction'] = input[:apply_action].to_s unless input[:apply_action].nil?
        params[context + 'OptInType'] = input[:opt_in_type].to_s unless input[:opt_in_type].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for AuthorizeDBSecurityGroupIngress
    class AuthorizeDBSecurityGroupIngress
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AuthorizeDBSecurityGroupIngress'
        params['Version'] = '2014-10-31'
        params[context + 'DBSecurityGroupName'] = input[:db_security_group_name].to_s unless input[:db_security_group_name].nil?
        params[context + 'CIDRIP'] = input[:cidrip].to_s unless input[:cidrip].nil?
        params[context + 'EC2SecurityGroupName'] = input[:ec2_security_group_name].to_s unless input[:ec2_security_group_name].nil?
        params[context + 'EC2SecurityGroupId'] = input[:ec2_security_group_id].to_s unless input[:ec2_security_group_id].nil?
        params[context + 'EC2SecurityGroupOwnerId'] = input[:ec2_security_group_owner_id].to_s unless input[:ec2_security_group_owner_id].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for BacktrackDBCluster
    class BacktrackDBCluster
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'BacktrackDBCluster'
        params['Version'] = '2014-10-31'
        params[context + 'DBClusterIdentifier'] = input[:db_cluster_identifier].to_s unless input[:db_cluster_identifier].nil?
        params[context + 'BacktrackTo'] = Hearth::TimeHelper.to_date_time(input[:backtrack_to]) unless input[:backtrack_to].nil?
        params[context + 'Force'] = input[:force].to_s unless input[:force].nil?
        params[context + 'UseEarliestTimeOnPointInTimeUnavailable'] = input[:use_earliest_time_on_point_in_time_unavailable].to_s unless input[:use_earliest_time_on_point_in_time_unavailable].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CancelExportTask
    class CancelExportTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CancelExportTask'
        params['Version'] = '2014-10-31'
        params[context + 'ExportTaskIdentifier'] = input[:export_task_identifier].to_s unless input[:export_task_identifier].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CopyDBClusterParameterGroup
    class CopyDBClusterParameterGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CopyDBClusterParameterGroup'
        params['Version'] = '2014-10-31'
        params[context + 'SourceDBClusterParameterGroupIdentifier'] = input[:source_db_cluster_parameter_group_identifier].to_s unless input[:source_db_cluster_parameter_group_identifier].nil?
        params[context + 'TargetDBClusterParameterGroupIdentifier'] = input[:target_db_cluster_parameter_group_identifier].to_s unless input[:target_db_cluster_parameter_group_identifier].nil?
        params[context + 'TargetDBClusterParameterGroupDescription'] = input[:target_db_cluster_parameter_group_description].to_s unless input[:target_db_cluster_parameter_group_description].nil?
        Builders::TagList.build(input[:tags], params, context: context + 'Tags' + '.Tag') unless input[:tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CopyDBClusterSnapshot
    class CopyDBClusterSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CopyDBClusterSnapshot'
        params['Version'] = '2014-10-31'
        params[context + 'SourceDBClusterSnapshotIdentifier'] = input[:source_db_cluster_snapshot_identifier].to_s unless input[:source_db_cluster_snapshot_identifier].nil?
        params[context + 'TargetDBClusterSnapshotIdentifier'] = input[:target_db_cluster_snapshot_identifier].to_s unless input[:target_db_cluster_snapshot_identifier].nil?
        params[context + 'KmsKeyId'] = input[:kms_key_id].to_s unless input[:kms_key_id].nil?
        params[context + 'PreSignedUrl'] = input[:pre_signed_url].to_s unless input[:pre_signed_url].nil?
        params[context + 'CopyTags'] = input[:copy_tags].to_s unless input[:copy_tags].nil?
        Builders::TagList.build(input[:tags], params, context: context + 'Tags' + '.Tag') unless input[:tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CopyDBParameterGroup
    class CopyDBParameterGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CopyDBParameterGroup'
        params['Version'] = '2014-10-31'
        params[context + 'SourceDBParameterGroupIdentifier'] = input[:source_db_parameter_group_identifier].to_s unless input[:source_db_parameter_group_identifier].nil?
        params[context + 'TargetDBParameterGroupIdentifier'] = input[:target_db_parameter_group_identifier].to_s unless input[:target_db_parameter_group_identifier].nil?
        params[context + 'TargetDBParameterGroupDescription'] = input[:target_db_parameter_group_description].to_s unless input[:target_db_parameter_group_description].nil?
        Builders::TagList.build(input[:tags], params, context: context + 'Tags' + '.Tag') unless input[:tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CopyDBSnapshot
    class CopyDBSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CopyDBSnapshot'
        params['Version'] = '2014-10-31'
        params[context + 'SourceDBSnapshotIdentifier'] = input[:source_db_snapshot_identifier].to_s unless input[:source_db_snapshot_identifier].nil?
        params[context + 'TargetDBSnapshotIdentifier'] = input[:target_db_snapshot_identifier].to_s unless input[:target_db_snapshot_identifier].nil?
        params[context + 'KmsKeyId'] = input[:kms_key_id].to_s unless input[:kms_key_id].nil?
        Builders::TagList.build(input[:tags], params, context: context + 'Tags' + '.Tag') unless input[:tags].nil?
        params[context + 'CopyTags'] = input[:copy_tags].to_s unless input[:copy_tags].nil?
        params[context + 'PreSignedUrl'] = input[:pre_signed_url].to_s unless input[:pre_signed_url].nil?
        params[context + 'OptionGroupName'] = input[:option_group_name].to_s unless input[:option_group_name].nil?
        params[context + 'TargetCustomAvailabilityZone'] = input[:target_custom_availability_zone].to_s unless input[:target_custom_availability_zone].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CopyOptionGroup
    class CopyOptionGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CopyOptionGroup'
        params['Version'] = '2014-10-31'
        params[context + 'SourceOptionGroupIdentifier'] = input[:source_option_group_identifier].to_s unless input[:source_option_group_identifier].nil?
        params[context + 'TargetOptionGroupIdentifier'] = input[:target_option_group_identifier].to_s unless input[:target_option_group_identifier].nil?
        params[context + 'TargetOptionGroupDescription'] = input[:target_option_group_description].to_s unless input[:target_option_group_description].nil?
        Builders::TagList.build(input[:tags], params, context: context + 'Tags' + '.Tag') unless input[:tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateCustomDBEngineVersion
    class CreateCustomDBEngineVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateCustomDBEngineVersion'
        params['Version'] = '2014-10-31'
        params[context + 'Engine'] = input[:engine].to_s unless input[:engine].nil?
        params[context + 'EngineVersion'] = input[:engine_version].to_s unless input[:engine_version].nil?
        params[context + 'DatabaseInstallationFilesS3BucketName'] = input[:database_installation_files_s3_bucket_name].to_s unless input[:database_installation_files_s3_bucket_name].nil?
        params[context + 'DatabaseInstallationFilesS3Prefix'] = input[:database_installation_files_s3_prefix].to_s unless input[:database_installation_files_s3_prefix].nil?
        params[context + 'KMSKeyId'] = input[:kms_key_id].to_s unless input[:kms_key_id].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'Manifest'] = input[:manifest].to_s unless input[:manifest].nil?
        Builders::TagList.build(input[:tags], params, context: context + 'Tags' + '.Tag') unless input[:tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateDBCluster
    class CreateDBCluster
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateDBCluster'
        params['Version'] = '2014-10-31'
        Builders::AvailabilityZones.build(input[:availability_zones], params, context: context + 'AvailabilityZones' + '.AvailabilityZone') unless input[:availability_zones].nil?
        params[context + 'BackupRetentionPeriod'] = input[:backup_retention_period].to_s unless input[:backup_retention_period].nil?
        params[context + 'CharacterSetName'] = input[:character_set_name].to_s unless input[:character_set_name].nil?
        params[context + 'DatabaseName'] = input[:database_name].to_s unless input[:database_name].nil?
        params[context + 'DBClusterIdentifier'] = input[:db_cluster_identifier].to_s unless input[:db_cluster_identifier].nil?
        params[context + 'DBClusterParameterGroupName'] = input[:db_cluster_parameter_group_name].to_s unless input[:db_cluster_parameter_group_name].nil?
        Builders::VpcSecurityGroupIdList.build(input[:vpc_security_group_ids], params, context: context + 'VpcSecurityGroupIds' + '.VpcSecurityGroupId') unless input[:vpc_security_group_ids].nil?
        params[context + 'DBSubnetGroupName'] = input[:db_subnet_group_name].to_s unless input[:db_subnet_group_name].nil?
        params[context + 'Engine'] = input[:engine].to_s unless input[:engine].nil?
        params[context + 'EngineVersion'] = input[:engine_version].to_s unless input[:engine_version].nil?
        params[context + 'Port'] = input[:port].to_s unless input[:port].nil?
        params[context + 'MasterUsername'] = input[:master_username].to_s unless input[:master_username].nil?
        params[context + 'MasterUserPassword'] = input[:master_user_password].to_s unless input[:master_user_password].nil?
        params[context + 'OptionGroupName'] = input[:option_group_name].to_s unless input[:option_group_name].nil?
        params[context + 'PreferredBackupWindow'] = input[:preferred_backup_window].to_s unless input[:preferred_backup_window].nil?
        params[context + 'PreferredMaintenanceWindow'] = input[:preferred_maintenance_window].to_s unless input[:preferred_maintenance_window].nil?
        params[context + 'ReplicationSourceIdentifier'] = input[:replication_source_identifier].to_s unless input[:replication_source_identifier].nil?
        Builders::TagList.build(input[:tags], params, context: context + 'Tags' + '.Tag') unless input[:tags].nil?
        params[context + 'StorageEncrypted'] = input[:storage_encrypted].to_s unless input[:storage_encrypted].nil?
        params[context + 'KmsKeyId'] = input[:kms_key_id].to_s unless input[:kms_key_id].nil?
        params[context + 'PreSignedUrl'] = input[:pre_signed_url].to_s unless input[:pre_signed_url].nil?
        params[context + 'EnableIAMDatabaseAuthentication'] = input[:enable_iam_database_authentication].to_s unless input[:enable_iam_database_authentication].nil?
        params[context + 'BacktrackWindow'] = input[:backtrack_window].to_s unless input[:backtrack_window].nil?
        Builders::LogTypeList.build(input[:enable_cloudwatch_logs_exports], params, context: context + 'EnableCloudwatchLogsExports' + '.member') unless input[:enable_cloudwatch_logs_exports].nil?
        params[context + 'EngineMode'] = input[:engine_mode].to_s unless input[:engine_mode].nil?
        Builders::ScalingConfiguration.build(input[:scaling_configuration], params, context: context + 'ScalingConfiguration' + '.') unless input[:scaling_configuration].nil?
        params[context + 'DeletionProtection'] = input[:deletion_protection].to_s unless input[:deletion_protection].nil?
        params[context + 'GlobalClusterIdentifier'] = input[:global_cluster_identifier].to_s unless input[:global_cluster_identifier].nil?
        params[context + 'EnableHttpEndpoint'] = input[:enable_http_endpoint].to_s unless input[:enable_http_endpoint].nil?
        params[context + 'CopyTagsToSnapshot'] = input[:copy_tags_to_snapshot].to_s unless input[:copy_tags_to_snapshot].nil?
        params[context + 'Domain'] = input[:domain].to_s unless input[:domain].nil?
        params[context + 'DomainIAMRoleName'] = input[:domain_iam_role_name].to_s unless input[:domain_iam_role_name].nil?
        params[context + 'EnableGlobalWriteForwarding'] = input[:enable_global_write_forwarding].to_s unless input[:enable_global_write_forwarding].nil?
        params[context + 'DBClusterInstanceClass'] = input[:db_cluster_instance_class].to_s unless input[:db_cluster_instance_class].nil?
        params[context + 'AllocatedStorage'] = input[:allocated_storage].to_s unless input[:allocated_storage].nil?
        params[context + 'StorageType'] = input[:storage_type].to_s unless input[:storage_type].nil?
        params[context + 'Iops'] = input[:iops].to_s unless input[:iops].nil?
        params[context + 'PubliclyAccessible'] = input[:publicly_accessible].to_s unless input[:publicly_accessible].nil?
        params[context + 'AutoMinorVersionUpgrade'] = input[:auto_minor_version_upgrade].to_s unless input[:auto_minor_version_upgrade].nil?
        params[context + 'MonitoringInterval'] = input[:monitoring_interval].to_s unless input[:monitoring_interval].nil?
        params[context + 'MonitoringRoleArn'] = input[:monitoring_role_arn].to_s unless input[:monitoring_role_arn].nil?
        params[context + 'EnablePerformanceInsights'] = input[:enable_performance_insights].to_s unless input[:enable_performance_insights].nil?
        params[context + 'PerformanceInsightsKMSKeyId'] = input[:performance_insights_kms_key_id].to_s unless input[:performance_insights_kms_key_id].nil?
        params[context + 'PerformanceInsightsRetentionPeriod'] = input[:performance_insights_retention_period].to_s unless input[:performance_insights_retention_period].nil?
        Builders::ServerlessV2ScalingConfiguration.build(input[:serverless_v2_scaling_configuration], params, context: context + 'ServerlessV2ScalingConfiguration' + '.') unless input[:serverless_v2_scaling_configuration].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for ServerlessV2ScalingConfiguration
    class ServerlessV2ScalingConfiguration
      def self.build(input, params, context: nil)
        params[context + 'MinCapacity'] = Hearth::NumberHelper.serialize(input[:min_capacity]).to_s unless input[:min_capacity].nil?
        params[context + 'MaxCapacity'] = Hearth::NumberHelper.serialize(input[:max_capacity]).to_s unless input[:max_capacity].nil?
      end
    end

    # Structure Builder for ScalingConfiguration
    class ScalingConfiguration
      def self.build(input, params, context: nil)
        params[context + 'MinCapacity'] = input[:min_capacity].to_s unless input[:min_capacity].nil?
        params[context + 'MaxCapacity'] = input[:max_capacity].to_s unless input[:max_capacity].nil?
        params[context + 'AutoPause'] = input[:auto_pause].to_s unless input[:auto_pause].nil?
        params[context + 'SecondsUntilAutoPause'] = input[:seconds_until_auto_pause].to_s unless input[:seconds_until_auto_pause].nil?
        params[context + 'TimeoutAction'] = input[:timeout_action].to_s unless input[:timeout_action].nil?
        params[context + 'SecondsBeforeTimeout'] = input[:seconds_before_timeout].to_s unless input[:seconds_before_timeout].nil?
      end
    end

    # List Builder for LogTypeList
    class LogTypeList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for VpcSecurityGroupIdList
    class VpcSecurityGroupIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for AvailabilityZones
    class AvailabilityZones
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for CreateDBClusterEndpoint
    class CreateDBClusterEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateDBClusterEndpoint'
        params['Version'] = '2014-10-31'
        params[context + 'DBClusterIdentifier'] = input[:db_cluster_identifier].to_s unless input[:db_cluster_identifier].nil?
        params[context + 'DBClusterEndpointIdentifier'] = input[:db_cluster_endpoint_identifier].to_s unless input[:db_cluster_endpoint_identifier].nil?
        params[context + 'EndpointType'] = input[:endpoint_type].to_s unless input[:endpoint_type].nil?
        Builders::StringList.build(input[:static_members], params, context: context + 'StaticMembers' + '.member') unless input[:static_members].nil?
        Builders::StringList.build(input[:excluded_members], params, context: context + 'ExcludedMembers' + '.member') unless input[:excluded_members].nil?
        Builders::TagList.build(input[:tags], params, context: context + 'Tags' + '.Tag') unless input[:tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for StringList
    class StringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for CreateDBClusterParameterGroup
    class CreateDBClusterParameterGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateDBClusterParameterGroup'
        params['Version'] = '2014-10-31'
        params[context + 'DBClusterParameterGroupName'] = input[:db_cluster_parameter_group_name].to_s unless input[:db_cluster_parameter_group_name].nil?
        params[context + 'DBParameterGroupFamily'] = input[:db_parameter_group_family].to_s unless input[:db_parameter_group_family].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        Builders::TagList.build(input[:tags], params, context: context + 'Tags' + '.Tag') unless input[:tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateDBClusterSnapshot
    class CreateDBClusterSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateDBClusterSnapshot'
        params['Version'] = '2014-10-31'
        params[context + 'DBClusterSnapshotIdentifier'] = input[:db_cluster_snapshot_identifier].to_s unless input[:db_cluster_snapshot_identifier].nil?
        params[context + 'DBClusterIdentifier'] = input[:db_cluster_identifier].to_s unless input[:db_cluster_identifier].nil?
        Builders::TagList.build(input[:tags], params, context: context + 'Tags' + '.Tag') unless input[:tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateDBInstance
    class CreateDBInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateDBInstance'
        params['Version'] = '2014-10-31'
        params[context + 'DBName'] = input[:db_name].to_s unless input[:db_name].nil?
        params[context + 'DBInstanceIdentifier'] = input[:db_instance_identifier].to_s unless input[:db_instance_identifier].nil?
        params[context + 'AllocatedStorage'] = input[:allocated_storage].to_s unless input[:allocated_storage].nil?
        params[context + 'DBInstanceClass'] = input[:db_instance_class].to_s unless input[:db_instance_class].nil?
        params[context + 'Engine'] = input[:engine].to_s unless input[:engine].nil?
        params[context + 'MasterUsername'] = input[:master_username].to_s unless input[:master_username].nil?
        params[context + 'MasterUserPassword'] = input[:master_user_password].to_s unless input[:master_user_password].nil?
        Builders::DBSecurityGroupNameList.build(input[:db_security_groups], params, context: context + 'DBSecurityGroups' + '.DBSecurityGroupName') unless input[:db_security_groups].nil?
        Builders::VpcSecurityGroupIdList.build(input[:vpc_security_group_ids], params, context: context + 'VpcSecurityGroupIds' + '.VpcSecurityGroupId') unless input[:vpc_security_group_ids].nil?
        params[context + 'AvailabilityZone'] = input[:availability_zone].to_s unless input[:availability_zone].nil?
        params[context + 'DBSubnetGroupName'] = input[:db_subnet_group_name].to_s unless input[:db_subnet_group_name].nil?
        params[context + 'PreferredMaintenanceWindow'] = input[:preferred_maintenance_window].to_s unless input[:preferred_maintenance_window].nil?
        params[context + 'DBParameterGroupName'] = input[:db_parameter_group_name].to_s unless input[:db_parameter_group_name].nil?
        params[context + 'BackupRetentionPeriod'] = input[:backup_retention_period].to_s unless input[:backup_retention_period].nil?
        params[context + 'PreferredBackupWindow'] = input[:preferred_backup_window].to_s unless input[:preferred_backup_window].nil?
        params[context + 'Port'] = input[:port].to_s unless input[:port].nil?
        params[context + 'MultiAZ'] = input[:multi_az].to_s unless input[:multi_az].nil?
        params[context + 'EngineVersion'] = input[:engine_version].to_s unless input[:engine_version].nil?
        params[context + 'AutoMinorVersionUpgrade'] = input[:auto_minor_version_upgrade].to_s unless input[:auto_minor_version_upgrade].nil?
        params[context + 'LicenseModel'] = input[:license_model].to_s unless input[:license_model].nil?
        params[context + 'Iops'] = input[:iops].to_s unless input[:iops].nil?
        params[context + 'OptionGroupName'] = input[:option_group_name].to_s unless input[:option_group_name].nil?
        params[context + 'CharacterSetName'] = input[:character_set_name].to_s unless input[:character_set_name].nil?
        params[context + 'NcharCharacterSetName'] = input[:nchar_character_set_name].to_s unless input[:nchar_character_set_name].nil?
        params[context + 'PubliclyAccessible'] = input[:publicly_accessible].to_s unless input[:publicly_accessible].nil?
        Builders::TagList.build(input[:tags], params, context: context + 'Tags' + '.Tag') unless input[:tags].nil?
        params[context + 'DBClusterIdentifier'] = input[:db_cluster_identifier].to_s unless input[:db_cluster_identifier].nil?
        params[context + 'StorageType'] = input[:storage_type].to_s unless input[:storage_type].nil?
        params[context + 'TdeCredentialArn'] = input[:tde_credential_arn].to_s unless input[:tde_credential_arn].nil?
        params[context + 'TdeCredentialPassword'] = input[:tde_credential_password].to_s unless input[:tde_credential_password].nil?
        params[context + 'StorageEncrypted'] = input[:storage_encrypted].to_s unless input[:storage_encrypted].nil?
        params[context + 'KmsKeyId'] = input[:kms_key_id].to_s unless input[:kms_key_id].nil?
        params[context + 'Domain'] = input[:domain].to_s unless input[:domain].nil?
        params[context + 'CopyTagsToSnapshot'] = input[:copy_tags_to_snapshot].to_s unless input[:copy_tags_to_snapshot].nil?
        params[context + 'MonitoringInterval'] = input[:monitoring_interval].to_s unless input[:monitoring_interval].nil?
        params[context + 'MonitoringRoleArn'] = input[:monitoring_role_arn].to_s unless input[:monitoring_role_arn].nil?
        params[context + 'DomainIAMRoleName'] = input[:domain_iam_role_name].to_s unless input[:domain_iam_role_name].nil?
        params[context + 'PromotionTier'] = input[:promotion_tier].to_s unless input[:promotion_tier].nil?
        params[context + 'Timezone'] = input[:timezone].to_s unless input[:timezone].nil?
        params[context + 'EnableIAMDatabaseAuthentication'] = input[:enable_iam_database_authentication].to_s unless input[:enable_iam_database_authentication].nil?
        params[context + 'EnablePerformanceInsights'] = input[:enable_performance_insights].to_s unless input[:enable_performance_insights].nil?
        params[context + 'PerformanceInsightsKMSKeyId'] = input[:performance_insights_kms_key_id].to_s unless input[:performance_insights_kms_key_id].nil?
        params[context + 'PerformanceInsightsRetentionPeriod'] = input[:performance_insights_retention_period].to_s unless input[:performance_insights_retention_period].nil?
        Builders::LogTypeList.build(input[:enable_cloudwatch_logs_exports], params, context: context + 'EnableCloudwatchLogsExports' + '.member') unless input[:enable_cloudwatch_logs_exports].nil?
        Builders::ProcessorFeatureList.build(input[:processor_features], params, context: context + 'ProcessorFeatures' + '.ProcessorFeature') unless input[:processor_features].nil?
        params[context + 'DeletionProtection'] = input[:deletion_protection].to_s unless input[:deletion_protection].nil?
        params[context + 'MaxAllocatedStorage'] = input[:max_allocated_storage].to_s unless input[:max_allocated_storage].nil?
        params[context + 'EnableCustomerOwnedIp'] = input[:enable_customer_owned_ip].to_s unless input[:enable_customer_owned_ip].nil?
        params[context + 'CustomIamInstanceProfile'] = input[:custom_iam_instance_profile].to_s unless input[:custom_iam_instance_profile].nil?
        params[context + 'BackupTarget'] = input[:backup_target].to_s unless input[:backup_target].nil?
        params[context + 'NetworkType'] = input[:network_type].to_s unless input[:network_type].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for ProcessorFeatureList
    class ProcessorFeatureList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::ProcessorFeature.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for ProcessorFeature
    class ProcessorFeature
      def self.build(input, params, context: nil)
        params[context + 'Name'] = input[:name].to_s unless input[:name].nil?
        params[context + 'Value'] = input[:value].to_s unless input[:value].nil?
      end
    end

    # List Builder for DBSecurityGroupNameList
    class DBSecurityGroupNameList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for CreateDBInstanceReadReplica
    class CreateDBInstanceReadReplica
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateDBInstanceReadReplica'
        params['Version'] = '2014-10-31'
        params[context + 'DBInstanceIdentifier'] = input[:db_instance_identifier].to_s unless input[:db_instance_identifier].nil?
        params[context + 'SourceDBInstanceIdentifier'] = input[:source_db_instance_identifier].to_s unless input[:source_db_instance_identifier].nil?
        params[context + 'DBInstanceClass'] = input[:db_instance_class].to_s unless input[:db_instance_class].nil?
        params[context + 'AvailabilityZone'] = input[:availability_zone].to_s unless input[:availability_zone].nil?
        params[context + 'Port'] = input[:port].to_s unless input[:port].nil?
        params[context + 'MultiAZ'] = input[:multi_az].to_s unless input[:multi_az].nil?
        params[context + 'AutoMinorVersionUpgrade'] = input[:auto_minor_version_upgrade].to_s unless input[:auto_minor_version_upgrade].nil?
        params[context + 'Iops'] = input[:iops].to_s unless input[:iops].nil?
        params[context + 'OptionGroupName'] = input[:option_group_name].to_s unless input[:option_group_name].nil?
        params[context + 'DBParameterGroupName'] = input[:db_parameter_group_name].to_s unless input[:db_parameter_group_name].nil?
        params[context + 'PubliclyAccessible'] = input[:publicly_accessible].to_s unless input[:publicly_accessible].nil?
        Builders::TagList.build(input[:tags], params, context: context + 'Tags' + '.Tag') unless input[:tags].nil?
        params[context + 'DBSubnetGroupName'] = input[:db_subnet_group_name].to_s unless input[:db_subnet_group_name].nil?
        Builders::VpcSecurityGroupIdList.build(input[:vpc_security_group_ids], params, context: context + 'VpcSecurityGroupIds' + '.VpcSecurityGroupId') unless input[:vpc_security_group_ids].nil?
        params[context + 'StorageType'] = input[:storage_type].to_s unless input[:storage_type].nil?
        params[context + 'CopyTagsToSnapshot'] = input[:copy_tags_to_snapshot].to_s unless input[:copy_tags_to_snapshot].nil?
        params[context + 'MonitoringInterval'] = input[:monitoring_interval].to_s unless input[:monitoring_interval].nil?
        params[context + 'MonitoringRoleArn'] = input[:monitoring_role_arn].to_s unless input[:monitoring_role_arn].nil?
        params[context + 'KmsKeyId'] = input[:kms_key_id].to_s unless input[:kms_key_id].nil?
        params[context + 'PreSignedUrl'] = input[:pre_signed_url].to_s unless input[:pre_signed_url].nil?
        params[context + 'EnableIAMDatabaseAuthentication'] = input[:enable_iam_database_authentication].to_s unless input[:enable_iam_database_authentication].nil?
        params[context + 'EnablePerformanceInsights'] = input[:enable_performance_insights].to_s unless input[:enable_performance_insights].nil?
        params[context + 'PerformanceInsightsKMSKeyId'] = input[:performance_insights_kms_key_id].to_s unless input[:performance_insights_kms_key_id].nil?
        params[context + 'PerformanceInsightsRetentionPeriod'] = input[:performance_insights_retention_period].to_s unless input[:performance_insights_retention_period].nil?
        Builders::LogTypeList.build(input[:enable_cloudwatch_logs_exports], params, context: context + 'EnableCloudwatchLogsExports' + '.member') unless input[:enable_cloudwatch_logs_exports].nil?
        Builders::ProcessorFeatureList.build(input[:processor_features], params, context: context + 'ProcessorFeatures' + '.ProcessorFeature') unless input[:processor_features].nil?
        params[context + 'UseDefaultProcessorFeatures'] = input[:use_default_processor_features].to_s unless input[:use_default_processor_features].nil?
        params[context + 'DeletionProtection'] = input[:deletion_protection].to_s unless input[:deletion_protection].nil?
        params[context + 'Domain'] = input[:domain].to_s unless input[:domain].nil?
        params[context + 'DomainIAMRoleName'] = input[:domain_iam_role_name].to_s unless input[:domain_iam_role_name].nil?
        params[context + 'ReplicaMode'] = input[:replica_mode].to_s unless input[:replica_mode].nil?
        params[context + 'MaxAllocatedStorage'] = input[:max_allocated_storage].to_s unless input[:max_allocated_storage].nil?
        params[context + 'CustomIamInstanceProfile'] = input[:custom_iam_instance_profile].to_s unless input[:custom_iam_instance_profile].nil?
        params[context + 'NetworkType'] = input[:network_type].to_s unless input[:network_type].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateDBParameterGroup
    class CreateDBParameterGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateDBParameterGroup'
        params['Version'] = '2014-10-31'
        params[context + 'DBParameterGroupName'] = input[:db_parameter_group_name].to_s unless input[:db_parameter_group_name].nil?
        params[context + 'DBParameterGroupFamily'] = input[:db_parameter_group_family].to_s unless input[:db_parameter_group_family].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        Builders::TagList.build(input[:tags], params, context: context + 'Tags' + '.Tag') unless input[:tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateDBProxy
    class CreateDBProxy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateDBProxy'
        params['Version'] = '2014-10-31'
        params[context + 'DBProxyName'] = input[:db_proxy_name].to_s unless input[:db_proxy_name].nil?
        params[context + 'EngineFamily'] = input[:engine_family].to_s unless input[:engine_family].nil?
        Builders::UserAuthConfigList.build(input[:auth], params, context: context + 'Auth' + '.member') unless input[:auth].nil?
        params[context + 'RoleArn'] = input[:role_arn].to_s unless input[:role_arn].nil?
        Builders::StringList.build(input[:vpc_subnet_ids], params, context: context + 'VpcSubnetIds' + '.member') unless input[:vpc_subnet_ids].nil?
        Builders::StringList.build(input[:vpc_security_group_ids], params, context: context + 'VpcSecurityGroupIds' + '.member') unless input[:vpc_security_group_ids].nil?
        params[context + 'RequireTLS'] = input[:require_tls].to_s unless input[:require_tls].nil?
        params[context + 'IdleClientTimeout'] = input[:idle_client_timeout].to_s unless input[:idle_client_timeout].nil?
        params[context + 'DebugLogging'] = input[:debug_logging].to_s unless input[:debug_logging].nil?
        Builders::TagList.build(input[:tags], params, context: context + 'Tags' + '.Tag') unless input[:tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for UserAuthConfigList
    class UserAuthConfigList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::UserAuthConfig.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for UserAuthConfig
    class UserAuthConfig
      def self.build(input, params, context: nil)
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'UserName'] = input[:user_name].to_s unless input[:user_name].nil?
        params[context + 'AuthScheme'] = input[:auth_scheme].to_s unless input[:auth_scheme].nil?
        params[context + 'SecretArn'] = input[:secret_arn].to_s unless input[:secret_arn].nil?
        params[context + 'IAMAuth'] = input[:iam_auth].to_s unless input[:iam_auth].nil?
      end
    end

    # Operation Builder for CreateDBProxyEndpoint
    class CreateDBProxyEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateDBProxyEndpoint'
        params['Version'] = '2014-10-31'
        params[context + 'DBProxyName'] = input[:db_proxy_name].to_s unless input[:db_proxy_name].nil?
        params[context + 'DBProxyEndpointName'] = input[:db_proxy_endpoint_name].to_s unless input[:db_proxy_endpoint_name].nil?
        Builders::StringList.build(input[:vpc_subnet_ids], params, context: context + 'VpcSubnetIds' + '.member') unless input[:vpc_subnet_ids].nil?
        Builders::StringList.build(input[:vpc_security_group_ids], params, context: context + 'VpcSecurityGroupIds' + '.member') unless input[:vpc_security_group_ids].nil?
        params[context + 'TargetRole'] = input[:target_role].to_s unless input[:target_role].nil?
        Builders::TagList.build(input[:tags], params, context: context + 'Tags' + '.Tag') unless input[:tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateDBSecurityGroup
    class CreateDBSecurityGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateDBSecurityGroup'
        params['Version'] = '2014-10-31'
        params[context + 'DBSecurityGroupName'] = input[:db_security_group_name].to_s unless input[:db_security_group_name].nil?
        params[context + 'DBSecurityGroupDescription'] = input[:db_security_group_description].to_s unless input[:db_security_group_description].nil?
        Builders::TagList.build(input[:tags], params, context: context + 'Tags' + '.Tag') unless input[:tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateDBSnapshot
    class CreateDBSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateDBSnapshot'
        params['Version'] = '2014-10-31'
        params[context + 'DBSnapshotIdentifier'] = input[:db_snapshot_identifier].to_s unless input[:db_snapshot_identifier].nil?
        params[context + 'DBInstanceIdentifier'] = input[:db_instance_identifier].to_s unless input[:db_instance_identifier].nil?
        Builders::TagList.build(input[:tags], params, context: context + 'Tags' + '.Tag') unless input[:tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateDBSubnetGroup
    class CreateDBSubnetGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateDBSubnetGroup'
        params['Version'] = '2014-10-31'
        params[context + 'DBSubnetGroupName'] = input[:db_subnet_group_name].to_s unless input[:db_subnet_group_name].nil?
        params[context + 'DBSubnetGroupDescription'] = input[:db_subnet_group_description].to_s unless input[:db_subnet_group_description].nil?
        Builders::SubnetIdentifierList.build(input[:subnet_ids], params, context: context + 'SubnetIds' + '.SubnetIdentifier') unless input[:subnet_ids].nil?
        Builders::TagList.build(input[:tags], params, context: context + 'Tags' + '.Tag') unless input[:tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for SubnetIdentifierList
    class SubnetIdentifierList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for CreateEventSubscription
    class CreateEventSubscription
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateEventSubscription'
        params['Version'] = '2014-10-31'
        params[context + 'SubscriptionName'] = input[:subscription_name].to_s unless input[:subscription_name].nil?
        params[context + 'SnsTopicArn'] = input[:sns_topic_arn].to_s unless input[:sns_topic_arn].nil?
        params[context + 'SourceType'] = input[:source_type].to_s unless input[:source_type].nil?
        Builders::EventCategoriesList.build(input[:event_categories], params, context: context + 'EventCategories' + '.EventCategory') unless input[:event_categories].nil?
        Builders::SourceIdsList.build(input[:source_ids], params, context: context + 'SourceIds' + '.SourceId') unless input[:source_ids].nil?
        params[context + 'Enabled'] = input[:enabled].to_s unless input[:enabled].nil?
        Builders::TagList.build(input[:tags], params, context: context + 'Tags' + '.Tag') unless input[:tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for SourceIdsList
    class SourceIdsList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for EventCategoriesList
    class EventCategoriesList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for CreateGlobalCluster
    class CreateGlobalCluster
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateGlobalCluster'
        params['Version'] = '2014-10-31'
        params[context + 'GlobalClusterIdentifier'] = input[:global_cluster_identifier].to_s unless input[:global_cluster_identifier].nil?
        params[context + 'SourceDBClusterIdentifier'] = input[:source_db_cluster_identifier].to_s unless input[:source_db_cluster_identifier].nil?
        params[context + 'Engine'] = input[:engine].to_s unless input[:engine].nil?
        params[context + 'EngineVersion'] = input[:engine_version].to_s unless input[:engine_version].nil?
        params[context + 'DeletionProtection'] = input[:deletion_protection].to_s unless input[:deletion_protection].nil?
        params[context + 'DatabaseName'] = input[:database_name].to_s unless input[:database_name].nil?
        params[context + 'StorageEncrypted'] = input[:storage_encrypted].to_s unless input[:storage_encrypted].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateOptionGroup
    class CreateOptionGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateOptionGroup'
        params['Version'] = '2014-10-31'
        params[context + 'OptionGroupName'] = input[:option_group_name].to_s unless input[:option_group_name].nil?
        params[context + 'EngineName'] = input[:engine_name].to_s unless input[:engine_name].nil?
        params[context + 'MajorEngineVersion'] = input[:major_engine_version].to_s unless input[:major_engine_version].nil?
        params[context + 'OptionGroupDescription'] = input[:option_group_description].to_s unless input[:option_group_description].nil?
        Builders::TagList.build(input[:tags], params, context: context + 'Tags' + '.Tag') unless input[:tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteCustomDBEngineVersion
    class DeleteCustomDBEngineVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteCustomDBEngineVersion'
        params['Version'] = '2014-10-31'
        params[context + 'Engine'] = input[:engine].to_s unless input[:engine].nil?
        params[context + 'EngineVersion'] = input[:engine_version].to_s unless input[:engine_version].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteDBCluster
    class DeleteDBCluster
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteDBCluster'
        params['Version'] = '2014-10-31'
        params[context + 'DBClusterIdentifier'] = input[:db_cluster_identifier].to_s unless input[:db_cluster_identifier].nil?
        params[context + 'SkipFinalSnapshot'] = input[:skip_final_snapshot].to_s unless input[:skip_final_snapshot].nil?
        params[context + 'FinalDBSnapshotIdentifier'] = input[:final_db_snapshot_identifier].to_s unless input[:final_db_snapshot_identifier].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteDBClusterEndpoint
    class DeleteDBClusterEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteDBClusterEndpoint'
        params['Version'] = '2014-10-31'
        params[context + 'DBClusterEndpointIdentifier'] = input[:db_cluster_endpoint_identifier].to_s unless input[:db_cluster_endpoint_identifier].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteDBClusterParameterGroup
    class DeleteDBClusterParameterGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteDBClusterParameterGroup'
        params['Version'] = '2014-10-31'
        params[context + 'DBClusterParameterGroupName'] = input[:db_cluster_parameter_group_name].to_s unless input[:db_cluster_parameter_group_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteDBClusterSnapshot
    class DeleteDBClusterSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteDBClusterSnapshot'
        params['Version'] = '2014-10-31'
        params[context + 'DBClusterSnapshotIdentifier'] = input[:db_cluster_snapshot_identifier].to_s unless input[:db_cluster_snapshot_identifier].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteDBInstance
    class DeleteDBInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteDBInstance'
        params['Version'] = '2014-10-31'
        params[context + 'DBInstanceIdentifier'] = input[:db_instance_identifier].to_s unless input[:db_instance_identifier].nil?
        params[context + 'SkipFinalSnapshot'] = input[:skip_final_snapshot].to_s unless input[:skip_final_snapshot].nil?
        params[context + 'FinalDBSnapshotIdentifier'] = input[:final_db_snapshot_identifier].to_s unless input[:final_db_snapshot_identifier].nil?
        params[context + 'DeleteAutomatedBackups'] = input[:delete_automated_backups].to_s unless input[:delete_automated_backups].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteDBInstanceAutomatedBackup
    class DeleteDBInstanceAutomatedBackup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteDBInstanceAutomatedBackup'
        params['Version'] = '2014-10-31'
        params[context + 'DbiResourceId'] = input[:dbi_resource_id].to_s unless input[:dbi_resource_id].nil?
        params[context + 'DBInstanceAutomatedBackupsArn'] = input[:db_instance_automated_backups_arn].to_s unless input[:db_instance_automated_backups_arn].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteDBParameterGroup
    class DeleteDBParameterGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteDBParameterGroup'
        params['Version'] = '2014-10-31'
        params[context + 'DBParameterGroupName'] = input[:db_parameter_group_name].to_s unless input[:db_parameter_group_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteDBProxy
    class DeleteDBProxy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteDBProxy'
        params['Version'] = '2014-10-31'
        params[context + 'DBProxyName'] = input[:db_proxy_name].to_s unless input[:db_proxy_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteDBProxyEndpoint
    class DeleteDBProxyEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteDBProxyEndpoint'
        params['Version'] = '2014-10-31'
        params[context + 'DBProxyEndpointName'] = input[:db_proxy_endpoint_name].to_s unless input[:db_proxy_endpoint_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteDBSecurityGroup
    class DeleteDBSecurityGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteDBSecurityGroup'
        params['Version'] = '2014-10-31'
        params[context + 'DBSecurityGroupName'] = input[:db_security_group_name].to_s unless input[:db_security_group_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteDBSnapshot
    class DeleteDBSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteDBSnapshot'
        params['Version'] = '2014-10-31'
        params[context + 'DBSnapshotIdentifier'] = input[:db_snapshot_identifier].to_s unless input[:db_snapshot_identifier].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteDBSubnetGroup
    class DeleteDBSubnetGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteDBSubnetGroup'
        params['Version'] = '2014-10-31'
        params[context + 'DBSubnetGroupName'] = input[:db_subnet_group_name].to_s unless input[:db_subnet_group_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteEventSubscription
    class DeleteEventSubscription
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteEventSubscription'
        params['Version'] = '2014-10-31'
        params[context + 'SubscriptionName'] = input[:subscription_name].to_s unless input[:subscription_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteGlobalCluster
    class DeleteGlobalCluster
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteGlobalCluster'
        params['Version'] = '2014-10-31'
        params[context + 'GlobalClusterIdentifier'] = input[:global_cluster_identifier].to_s unless input[:global_cluster_identifier].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteOptionGroup
    class DeleteOptionGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteOptionGroup'
        params['Version'] = '2014-10-31'
        params[context + 'OptionGroupName'] = input[:option_group_name].to_s unless input[:option_group_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeregisterDBProxyTargets
    class DeregisterDBProxyTargets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeregisterDBProxyTargets'
        params['Version'] = '2014-10-31'
        params[context + 'DBProxyName'] = input[:db_proxy_name].to_s unless input[:db_proxy_name].nil?
        params[context + 'TargetGroupName'] = input[:target_group_name].to_s unless input[:target_group_name].nil?
        Builders::StringList.build(input[:db_instance_identifiers], params, context: context + 'DBInstanceIdentifiers' + '.member') unless input[:db_instance_identifiers].nil?
        Builders::StringList.build(input[:db_cluster_identifiers], params, context: context + 'DBClusterIdentifiers' + '.member') unless input[:db_cluster_identifiers].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeAccountAttributes
    class DescribeAccountAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeAccountAttributes'
        params['Version'] = '2014-10-31'
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeCertificates
    class DescribeCertificates
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeCertificates'
        params['Version'] = '2014-10-31'
        params[context + 'CertificateIdentifier'] = input[:certificate_identifier].to_s unless input[:certificate_identifier].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filters' + '.Filter') unless input[:filters].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for FilterList
    class FilterList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::Filter.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for Filter
    class Filter
      def self.build(input, params, context: nil)
        params[context + 'Name'] = input[:name].to_s unless input[:name].nil?
        Builders::FilterValueList.build(input[:values], params, context: context + 'Values' + '.Value') unless input[:values].nil?
      end
    end

    # List Builder for FilterValueList
    class FilterValueList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeDBClusterBacktracks
    class DescribeDBClusterBacktracks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeDBClusterBacktracks'
        params['Version'] = '2014-10-31'
        params[context + 'DBClusterIdentifier'] = input[:db_cluster_identifier].to_s unless input[:db_cluster_identifier].nil?
        params[context + 'BacktrackIdentifier'] = input[:backtrack_identifier].to_s unless input[:backtrack_identifier].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filters' + '.Filter') unless input[:filters].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeDBClusterEndpoints
    class DescribeDBClusterEndpoints
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeDBClusterEndpoints'
        params['Version'] = '2014-10-31'
        params[context + 'DBClusterIdentifier'] = input[:db_cluster_identifier].to_s unless input[:db_cluster_identifier].nil?
        params[context + 'DBClusterEndpointIdentifier'] = input[:db_cluster_endpoint_identifier].to_s unless input[:db_cluster_endpoint_identifier].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filters' + '.Filter') unless input[:filters].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeDBClusterParameterGroups
    class DescribeDBClusterParameterGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeDBClusterParameterGroups'
        params['Version'] = '2014-10-31'
        params[context + 'DBClusterParameterGroupName'] = input[:db_cluster_parameter_group_name].to_s unless input[:db_cluster_parameter_group_name].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filters' + '.Filter') unless input[:filters].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeDBClusterParameters
    class DescribeDBClusterParameters
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeDBClusterParameters'
        params['Version'] = '2014-10-31'
        params[context + 'DBClusterParameterGroupName'] = input[:db_cluster_parameter_group_name].to_s unless input[:db_cluster_parameter_group_name].nil?
        params[context + 'Source'] = input[:source].to_s unless input[:source].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filters' + '.Filter') unless input[:filters].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeDBClusterSnapshotAttributes
    class DescribeDBClusterSnapshotAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeDBClusterSnapshotAttributes'
        params['Version'] = '2014-10-31'
        params[context + 'DBClusterSnapshotIdentifier'] = input[:db_cluster_snapshot_identifier].to_s unless input[:db_cluster_snapshot_identifier].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeDBClusterSnapshots
    class DescribeDBClusterSnapshots
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeDBClusterSnapshots'
        params['Version'] = '2014-10-31'
        params[context + 'DBClusterIdentifier'] = input[:db_cluster_identifier].to_s unless input[:db_cluster_identifier].nil?
        params[context + 'DBClusterSnapshotIdentifier'] = input[:db_cluster_snapshot_identifier].to_s unless input[:db_cluster_snapshot_identifier].nil?
        params[context + 'SnapshotType'] = input[:snapshot_type].to_s unless input[:snapshot_type].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filters' + '.Filter') unless input[:filters].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'IncludeShared'] = input[:include_shared].to_s unless input[:include_shared].nil?
        params[context + 'IncludePublic'] = input[:include_public].to_s unless input[:include_public].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeDBClusters
    class DescribeDBClusters
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeDBClusters'
        params['Version'] = '2014-10-31'
        params[context + 'DBClusterIdentifier'] = input[:db_cluster_identifier].to_s unless input[:db_cluster_identifier].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filters' + '.Filter') unless input[:filters].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'IncludeShared'] = input[:include_shared].to_s unless input[:include_shared].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeDBEngineVersions
    class DescribeDBEngineVersions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeDBEngineVersions'
        params['Version'] = '2014-10-31'
        params[context + 'Engine'] = input[:engine].to_s unless input[:engine].nil?
        params[context + 'EngineVersion'] = input[:engine_version].to_s unless input[:engine_version].nil?
        params[context + 'DBParameterGroupFamily'] = input[:db_parameter_group_family].to_s unless input[:db_parameter_group_family].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filters' + '.Filter') unless input[:filters].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'DefaultOnly'] = input[:default_only].to_s unless input[:default_only].nil?
        params[context + 'ListSupportedCharacterSets'] = input[:list_supported_character_sets].to_s unless input[:list_supported_character_sets].nil?
        params[context + 'ListSupportedTimezones'] = input[:list_supported_timezones].to_s unless input[:list_supported_timezones].nil?
        params[context + 'IncludeAll'] = input[:include_all].to_s unless input[:include_all].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeDBInstanceAutomatedBackups
    class DescribeDBInstanceAutomatedBackups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeDBInstanceAutomatedBackups'
        params['Version'] = '2014-10-31'
        params[context + 'DbiResourceId'] = input[:dbi_resource_id].to_s unless input[:dbi_resource_id].nil?
        params[context + 'DBInstanceIdentifier'] = input[:db_instance_identifier].to_s unless input[:db_instance_identifier].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filters' + '.Filter') unless input[:filters].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'DBInstanceAutomatedBackupsArn'] = input[:db_instance_automated_backups_arn].to_s unless input[:db_instance_automated_backups_arn].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeDBInstances
    class DescribeDBInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeDBInstances'
        params['Version'] = '2014-10-31'
        params[context + 'DBInstanceIdentifier'] = input[:db_instance_identifier].to_s unless input[:db_instance_identifier].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filters' + '.Filter') unless input[:filters].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeDBLogFiles
    class DescribeDBLogFiles
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeDBLogFiles'
        params['Version'] = '2014-10-31'
        params[context + 'DBInstanceIdentifier'] = input[:db_instance_identifier].to_s unless input[:db_instance_identifier].nil?
        params[context + 'FilenameContains'] = input[:filename_contains].to_s unless input[:filename_contains].nil?
        params[context + 'FileLastWritten'] = input[:file_last_written].to_s unless input[:file_last_written].nil?
        params[context + 'FileSize'] = input[:file_size].to_s unless input[:file_size].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filters' + '.Filter') unless input[:filters].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeDBParameterGroups
    class DescribeDBParameterGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeDBParameterGroups'
        params['Version'] = '2014-10-31'
        params[context + 'DBParameterGroupName'] = input[:db_parameter_group_name].to_s unless input[:db_parameter_group_name].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filters' + '.Filter') unless input[:filters].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeDBParameters
    class DescribeDBParameters
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeDBParameters'
        params['Version'] = '2014-10-31'
        params[context + 'DBParameterGroupName'] = input[:db_parameter_group_name].to_s unless input[:db_parameter_group_name].nil?
        params[context + 'Source'] = input[:source].to_s unless input[:source].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filters' + '.Filter') unless input[:filters].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeDBProxies
    class DescribeDBProxies
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeDBProxies'
        params['Version'] = '2014-10-31'
        params[context + 'DBProxyName'] = input[:db_proxy_name].to_s unless input[:db_proxy_name].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filters' + '.Filter') unless input[:filters].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeDBProxyEndpoints
    class DescribeDBProxyEndpoints
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeDBProxyEndpoints'
        params['Version'] = '2014-10-31'
        params[context + 'DBProxyName'] = input[:db_proxy_name].to_s unless input[:db_proxy_name].nil?
        params[context + 'DBProxyEndpointName'] = input[:db_proxy_endpoint_name].to_s unless input[:db_proxy_endpoint_name].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filters' + '.Filter') unless input[:filters].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeDBProxyTargetGroups
    class DescribeDBProxyTargetGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeDBProxyTargetGroups'
        params['Version'] = '2014-10-31'
        params[context + 'DBProxyName'] = input[:db_proxy_name].to_s unless input[:db_proxy_name].nil?
        params[context + 'TargetGroupName'] = input[:target_group_name].to_s unless input[:target_group_name].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filters' + '.Filter') unless input[:filters].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeDBProxyTargets
    class DescribeDBProxyTargets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeDBProxyTargets'
        params['Version'] = '2014-10-31'
        params[context + 'DBProxyName'] = input[:db_proxy_name].to_s unless input[:db_proxy_name].nil?
        params[context + 'TargetGroupName'] = input[:target_group_name].to_s unless input[:target_group_name].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filters' + '.Filter') unless input[:filters].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeDBSecurityGroups
    class DescribeDBSecurityGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeDBSecurityGroups'
        params['Version'] = '2014-10-31'
        params[context + 'DBSecurityGroupName'] = input[:db_security_group_name].to_s unless input[:db_security_group_name].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filters' + '.Filter') unless input[:filters].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeDBSnapshotAttributes
    class DescribeDBSnapshotAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeDBSnapshotAttributes'
        params['Version'] = '2014-10-31'
        params[context + 'DBSnapshotIdentifier'] = input[:db_snapshot_identifier].to_s unless input[:db_snapshot_identifier].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeDBSnapshots
    class DescribeDBSnapshots
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeDBSnapshots'
        params['Version'] = '2014-10-31'
        params[context + 'DBInstanceIdentifier'] = input[:db_instance_identifier].to_s unless input[:db_instance_identifier].nil?
        params[context + 'DBSnapshotIdentifier'] = input[:db_snapshot_identifier].to_s unless input[:db_snapshot_identifier].nil?
        params[context + 'SnapshotType'] = input[:snapshot_type].to_s unless input[:snapshot_type].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filters' + '.Filter') unless input[:filters].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'IncludeShared'] = input[:include_shared].to_s unless input[:include_shared].nil?
        params[context + 'IncludePublic'] = input[:include_public].to_s unless input[:include_public].nil?
        params[context + 'DbiResourceId'] = input[:dbi_resource_id].to_s unless input[:dbi_resource_id].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeDBSubnetGroups
    class DescribeDBSubnetGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeDBSubnetGroups'
        params['Version'] = '2014-10-31'
        params[context + 'DBSubnetGroupName'] = input[:db_subnet_group_name].to_s unless input[:db_subnet_group_name].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filters' + '.Filter') unless input[:filters].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeEngineDefaultClusterParameters
    class DescribeEngineDefaultClusterParameters
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeEngineDefaultClusterParameters'
        params['Version'] = '2014-10-31'
        params[context + 'DBParameterGroupFamily'] = input[:db_parameter_group_family].to_s unless input[:db_parameter_group_family].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filters' + '.Filter') unless input[:filters].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeEngineDefaultParameters
    class DescribeEngineDefaultParameters
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeEngineDefaultParameters'
        params['Version'] = '2014-10-31'
        params[context + 'DBParameterGroupFamily'] = input[:db_parameter_group_family].to_s unless input[:db_parameter_group_family].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filters' + '.Filter') unless input[:filters].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeEventCategories
    class DescribeEventCategories
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeEventCategories'
        params['Version'] = '2014-10-31'
        params[context + 'SourceType'] = input[:source_type].to_s unless input[:source_type].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filters' + '.Filter') unless input[:filters].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeEventSubscriptions
    class DescribeEventSubscriptions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeEventSubscriptions'
        params['Version'] = '2014-10-31'
        params[context + 'SubscriptionName'] = input[:subscription_name].to_s unless input[:subscription_name].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filters' + '.Filter') unless input[:filters].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeEvents
    class DescribeEvents
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeEvents'
        params['Version'] = '2014-10-31'
        params[context + 'SourceIdentifier'] = input[:source_identifier].to_s unless input[:source_identifier].nil?
        params[context + 'SourceType'] = input[:source_type].to_s unless input[:source_type].nil?
        params[context + 'StartTime'] = Hearth::TimeHelper.to_date_time(input[:start_time]) unless input[:start_time].nil?
        params[context + 'EndTime'] = Hearth::TimeHelper.to_date_time(input[:end_time]) unless input[:end_time].nil?
        params[context + 'Duration'] = input[:duration].to_s unless input[:duration].nil?
        Builders::EventCategoriesList.build(input[:event_categories], params, context: context + 'EventCategories' + '.EventCategory') unless input[:event_categories].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filters' + '.Filter') unless input[:filters].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeExportTasks
    class DescribeExportTasks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeExportTasks'
        params['Version'] = '2014-10-31'
        params[context + 'ExportTaskIdentifier'] = input[:export_task_identifier].to_s unless input[:export_task_identifier].nil?
        params[context + 'SourceArn'] = input[:source_arn].to_s unless input[:source_arn].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filters' + '.Filter') unless input[:filters].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeGlobalClusters
    class DescribeGlobalClusters
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeGlobalClusters'
        params['Version'] = '2014-10-31'
        params[context + 'GlobalClusterIdentifier'] = input[:global_cluster_identifier].to_s unless input[:global_cluster_identifier].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filters' + '.Filter') unless input[:filters].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeOptionGroupOptions
    class DescribeOptionGroupOptions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeOptionGroupOptions'
        params['Version'] = '2014-10-31'
        params[context + 'EngineName'] = input[:engine_name].to_s unless input[:engine_name].nil?
        params[context + 'MajorEngineVersion'] = input[:major_engine_version].to_s unless input[:major_engine_version].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filters' + '.Filter') unless input[:filters].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeOptionGroups
    class DescribeOptionGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeOptionGroups'
        params['Version'] = '2014-10-31'
        params[context + 'OptionGroupName'] = input[:option_group_name].to_s unless input[:option_group_name].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filters' + '.Filter') unless input[:filters].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'EngineName'] = input[:engine_name].to_s unless input[:engine_name].nil?
        params[context + 'MajorEngineVersion'] = input[:major_engine_version].to_s unless input[:major_engine_version].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeOrderableDBInstanceOptions
    class DescribeOrderableDBInstanceOptions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeOrderableDBInstanceOptions'
        params['Version'] = '2014-10-31'
        params[context + 'Engine'] = input[:engine].to_s unless input[:engine].nil?
        params[context + 'EngineVersion'] = input[:engine_version].to_s unless input[:engine_version].nil?
        params[context + 'DBInstanceClass'] = input[:db_instance_class].to_s unless input[:db_instance_class].nil?
        params[context + 'LicenseModel'] = input[:license_model].to_s unless input[:license_model].nil?
        params[context + 'AvailabilityZoneGroup'] = input[:availability_zone_group].to_s unless input[:availability_zone_group].nil?
        params[context + 'Vpc'] = input[:vpc].to_s unless input[:vpc].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filters' + '.Filter') unless input[:filters].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribePendingMaintenanceActions
    class DescribePendingMaintenanceActions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribePendingMaintenanceActions'
        params['Version'] = '2014-10-31'
        params[context + 'ResourceIdentifier'] = input[:resource_identifier].to_s unless input[:resource_identifier].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filters' + '.Filter') unless input[:filters].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeReservedDBInstances
    class DescribeReservedDBInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeReservedDBInstances'
        params['Version'] = '2014-10-31'
        params[context + 'ReservedDBInstanceId'] = input[:reserved_db_instance_id].to_s unless input[:reserved_db_instance_id].nil?
        params[context + 'ReservedDBInstancesOfferingId'] = input[:reserved_db_instances_offering_id].to_s unless input[:reserved_db_instances_offering_id].nil?
        params[context + 'DBInstanceClass'] = input[:db_instance_class].to_s unless input[:db_instance_class].nil?
        params[context + 'Duration'] = input[:duration].to_s unless input[:duration].nil?
        params[context + 'ProductDescription'] = input[:product_description].to_s unless input[:product_description].nil?
        params[context + 'OfferingType'] = input[:offering_type].to_s unless input[:offering_type].nil?
        params[context + 'MultiAZ'] = input[:multi_az].to_s unless input[:multi_az].nil?
        params[context + 'LeaseId'] = input[:lease_id].to_s unless input[:lease_id].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filters' + '.Filter') unless input[:filters].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeReservedDBInstancesOfferings
    class DescribeReservedDBInstancesOfferings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeReservedDBInstancesOfferings'
        params['Version'] = '2014-10-31'
        params[context + 'ReservedDBInstancesOfferingId'] = input[:reserved_db_instances_offering_id].to_s unless input[:reserved_db_instances_offering_id].nil?
        params[context + 'DBInstanceClass'] = input[:db_instance_class].to_s unless input[:db_instance_class].nil?
        params[context + 'Duration'] = input[:duration].to_s unless input[:duration].nil?
        params[context + 'ProductDescription'] = input[:product_description].to_s unless input[:product_description].nil?
        params[context + 'OfferingType'] = input[:offering_type].to_s unless input[:offering_type].nil?
        params[context + 'MultiAZ'] = input[:multi_az].to_s unless input[:multi_az].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filters' + '.Filter') unless input[:filters].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeSourceRegions
    class DescribeSourceRegions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeSourceRegions'
        params['Version'] = '2014-10-31'
        params[context + 'RegionName'] = input[:region_name].to_s unless input[:region_name].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filters' + '.Filter') unless input[:filters].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeValidDBInstanceModifications
    class DescribeValidDBInstanceModifications
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeValidDBInstanceModifications'
        params['Version'] = '2014-10-31'
        params[context + 'DBInstanceIdentifier'] = input[:db_instance_identifier].to_s unless input[:db_instance_identifier].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DownloadDBLogFilePortion
    class DownloadDBLogFilePortion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DownloadDBLogFilePortion'
        params['Version'] = '2014-10-31'
        params[context + 'DBInstanceIdentifier'] = input[:db_instance_identifier].to_s unless input[:db_instance_identifier].nil?
        params[context + 'LogFileName'] = input[:log_file_name].to_s unless input[:log_file_name].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'NumberOfLines'] = input[:number_of_lines].to_s unless input[:number_of_lines].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for FailoverDBCluster
    class FailoverDBCluster
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'FailoverDBCluster'
        params['Version'] = '2014-10-31'
        params[context + 'DBClusterIdentifier'] = input[:db_cluster_identifier].to_s unless input[:db_cluster_identifier].nil?
        params[context + 'TargetDBInstanceIdentifier'] = input[:target_db_instance_identifier].to_s unless input[:target_db_instance_identifier].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for FailoverGlobalCluster
    class FailoverGlobalCluster
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'FailoverGlobalCluster'
        params['Version'] = '2014-10-31'
        params[context + 'GlobalClusterIdentifier'] = input[:global_cluster_identifier].to_s unless input[:global_cluster_identifier].nil?
        params[context + 'TargetDbClusterIdentifier'] = input[:target_db_cluster_identifier].to_s unless input[:target_db_cluster_identifier].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListTagsForResource'
        params['Version'] = '2014-10-31'
        params[context + 'ResourceName'] = input[:resource_name].to_s unless input[:resource_name].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filters' + '.Filter') unless input[:filters].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyCertificates
    class ModifyCertificates
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyCertificates'
        params['Version'] = '2014-10-31'
        params[context + 'CertificateIdentifier'] = input[:certificate_identifier].to_s unless input[:certificate_identifier].nil?
        params[context + 'RemoveCustomerOverride'] = input[:remove_customer_override].to_s unless input[:remove_customer_override].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyCurrentDBClusterCapacity
    class ModifyCurrentDBClusterCapacity
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyCurrentDBClusterCapacity'
        params['Version'] = '2014-10-31'
        params[context + 'DBClusterIdentifier'] = input[:db_cluster_identifier].to_s unless input[:db_cluster_identifier].nil?
        params[context + 'Capacity'] = input[:capacity].to_s unless input[:capacity].nil?
        params[context + 'SecondsBeforeTimeout'] = input[:seconds_before_timeout].to_s unless input[:seconds_before_timeout].nil?
        params[context + 'TimeoutAction'] = input[:timeout_action].to_s unless input[:timeout_action].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyCustomDBEngineVersion
    class ModifyCustomDBEngineVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyCustomDBEngineVersion'
        params['Version'] = '2014-10-31'
        params[context + 'Engine'] = input[:engine].to_s unless input[:engine].nil?
        params[context + 'EngineVersion'] = input[:engine_version].to_s unless input[:engine_version].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'Status'] = input[:status].to_s unless input[:status].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyDBCluster
    class ModifyDBCluster
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyDBCluster'
        params['Version'] = '2014-10-31'
        params[context + 'DBClusterIdentifier'] = input[:db_cluster_identifier].to_s unless input[:db_cluster_identifier].nil?
        params[context + 'NewDBClusterIdentifier'] = input[:new_db_cluster_identifier].to_s unless input[:new_db_cluster_identifier].nil?
        params[context + 'ApplyImmediately'] = input[:apply_immediately].to_s unless input[:apply_immediately].nil?
        params[context + 'BackupRetentionPeriod'] = input[:backup_retention_period].to_s unless input[:backup_retention_period].nil?
        params[context + 'DBClusterParameterGroupName'] = input[:db_cluster_parameter_group_name].to_s unless input[:db_cluster_parameter_group_name].nil?
        Builders::VpcSecurityGroupIdList.build(input[:vpc_security_group_ids], params, context: context + 'VpcSecurityGroupIds' + '.VpcSecurityGroupId') unless input[:vpc_security_group_ids].nil?
        params[context + 'Port'] = input[:port].to_s unless input[:port].nil?
        params[context + 'MasterUserPassword'] = input[:master_user_password].to_s unless input[:master_user_password].nil?
        params[context + 'OptionGroupName'] = input[:option_group_name].to_s unless input[:option_group_name].nil?
        params[context + 'PreferredBackupWindow'] = input[:preferred_backup_window].to_s unless input[:preferred_backup_window].nil?
        params[context + 'PreferredMaintenanceWindow'] = input[:preferred_maintenance_window].to_s unless input[:preferred_maintenance_window].nil?
        params[context + 'EnableIAMDatabaseAuthentication'] = input[:enable_iam_database_authentication].to_s unless input[:enable_iam_database_authentication].nil?
        params[context + 'BacktrackWindow'] = input[:backtrack_window].to_s unless input[:backtrack_window].nil?
        Builders::CloudwatchLogsExportConfiguration.build(input[:cloudwatch_logs_export_configuration], params, context: context + 'CloudwatchLogsExportConfiguration' + '.') unless input[:cloudwatch_logs_export_configuration].nil?
        params[context + 'EngineVersion'] = input[:engine_version].to_s unless input[:engine_version].nil?
        params[context + 'AllowMajorVersionUpgrade'] = input[:allow_major_version_upgrade].to_s unless input[:allow_major_version_upgrade].nil?
        params[context + 'DBInstanceParameterGroupName'] = input[:db_instance_parameter_group_name].to_s unless input[:db_instance_parameter_group_name].nil?
        params[context + 'Domain'] = input[:domain].to_s unless input[:domain].nil?
        params[context + 'DomainIAMRoleName'] = input[:domain_iam_role_name].to_s unless input[:domain_iam_role_name].nil?
        Builders::ScalingConfiguration.build(input[:scaling_configuration], params, context: context + 'ScalingConfiguration' + '.') unless input[:scaling_configuration].nil?
        params[context + 'DeletionProtection'] = input[:deletion_protection].to_s unless input[:deletion_protection].nil?
        params[context + 'EnableHttpEndpoint'] = input[:enable_http_endpoint].to_s unless input[:enable_http_endpoint].nil?
        params[context + 'CopyTagsToSnapshot'] = input[:copy_tags_to_snapshot].to_s unless input[:copy_tags_to_snapshot].nil?
        params[context + 'EnableGlobalWriteForwarding'] = input[:enable_global_write_forwarding].to_s unless input[:enable_global_write_forwarding].nil?
        params[context + 'DBClusterInstanceClass'] = input[:db_cluster_instance_class].to_s unless input[:db_cluster_instance_class].nil?
        params[context + 'AllocatedStorage'] = input[:allocated_storage].to_s unless input[:allocated_storage].nil?
        params[context + 'StorageType'] = input[:storage_type].to_s unless input[:storage_type].nil?
        params[context + 'Iops'] = input[:iops].to_s unless input[:iops].nil?
        params[context + 'AutoMinorVersionUpgrade'] = input[:auto_minor_version_upgrade].to_s unless input[:auto_minor_version_upgrade].nil?
        params[context + 'MonitoringInterval'] = input[:monitoring_interval].to_s unless input[:monitoring_interval].nil?
        params[context + 'MonitoringRoleArn'] = input[:monitoring_role_arn].to_s unless input[:monitoring_role_arn].nil?
        params[context + 'EnablePerformanceInsights'] = input[:enable_performance_insights].to_s unless input[:enable_performance_insights].nil?
        params[context + 'PerformanceInsightsKMSKeyId'] = input[:performance_insights_kms_key_id].to_s unless input[:performance_insights_kms_key_id].nil?
        params[context + 'PerformanceInsightsRetentionPeriod'] = input[:performance_insights_retention_period].to_s unless input[:performance_insights_retention_period].nil?
        Builders::ServerlessV2ScalingConfiguration.build(input[:serverless_v2_scaling_configuration], params, context: context + 'ServerlessV2ScalingConfiguration' + '.') unless input[:serverless_v2_scaling_configuration].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for CloudwatchLogsExportConfiguration
    class CloudwatchLogsExportConfiguration
      def self.build(input, params, context: nil)
        Builders::LogTypeList.build(input[:enable_log_types], params, context: context + 'EnableLogTypes' + '.member') unless input[:enable_log_types].nil?
        Builders::LogTypeList.build(input[:disable_log_types], params, context: context + 'DisableLogTypes' + '.member') unless input[:disable_log_types].nil?
      end
    end

    # Operation Builder for ModifyDBClusterEndpoint
    class ModifyDBClusterEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyDBClusterEndpoint'
        params['Version'] = '2014-10-31'
        params[context + 'DBClusterEndpointIdentifier'] = input[:db_cluster_endpoint_identifier].to_s unless input[:db_cluster_endpoint_identifier].nil?
        params[context + 'EndpointType'] = input[:endpoint_type].to_s unless input[:endpoint_type].nil?
        Builders::StringList.build(input[:static_members], params, context: context + 'StaticMembers' + '.member') unless input[:static_members].nil?
        Builders::StringList.build(input[:excluded_members], params, context: context + 'ExcludedMembers' + '.member') unless input[:excluded_members].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyDBClusterParameterGroup
    class ModifyDBClusterParameterGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyDBClusterParameterGroup'
        params['Version'] = '2014-10-31'
        params[context + 'DBClusterParameterGroupName'] = input[:db_cluster_parameter_group_name].to_s unless input[:db_cluster_parameter_group_name].nil?
        Builders::ParametersList.build(input[:parameters], params, context: context + 'Parameters' + '.Parameter') unless input[:parameters].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for ParametersList
    class ParametersList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::Parameter.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for Parameter
    class Parameter
      def self.build(input, params, context: nil)
        params[context + 'ParameterName'] = input[:parameter_name].to_s unless input[:parameter_name].nil?
        params[context + 'ParameterValue'] = input[:parameter_value].to_s unless input[:parameter_value].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'Source'] = input[:source].to_s unless input[:source].nil?
        params[context + 'ApplyType'] = input[:apply_type].to_s unless input[:apply_type].nil?
        params[context + 'DataType'] = input[:data_type].to_s unless input[:data_type].nil?
        params[context + 'AllowedValues'] = input[:allowed_values].to_s unless input[:allowed_values].nil?
        params[context + 'IsModifiable'] = input[:is_modifiable].to_s unless input[:is_modifiable].nil?
        params[context + 'MinimumEngineVersion'] = input[:minimum_engine_version].to_s unless input[:minimum_engine_version].nil?
        params[context + 'ApplyMethod'] = input[:apply_method].to_s unless input[:apply_method].nil?
        Builders::EngineModeList.build(input[:supported_engine_modes], params, context: context + 'SupportedEngineModes' + '.member') unless input[:supported_engine_modes].nil?
      end
    end

    # List Builder for EngineModeList
    class EngineModeList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for ModifyDBClusterSnapshotAttribute
    class ModifyDBClusterSnapshotAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyDBClusterSnapshotAttribute'
        params['Version'] = '2014-10-31'
        params[context + 'DBClusterSnapshotIdentifier'] = input[:db_cluster_snapshot_identifier].to_s unless input[:db_cluster_snapshot_identifier].nil?
        params[context + 'AttributeName'] = input[:attribute_name].to_s unless input[:attribute_name].nil?
        Builders::AttributeValueList.build(input[:values_to_add], params, context: context + 'ValuesToAdd' + '.AttributeValue') unless input[:values_to_add].nil?
        Builders::AttributeValueList.build(input[:values_to_remove], params, context: context + 'ValuesToRemove' + '.AttributeValue') unless input[:values_to_remove].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for AttributeValueList
    class AttributeValueList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for ModifyDBInstance
    class ModifyDBInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyDBInstance'
        params['Version'] = '2014-10-31'
        params[context + 'DBInstanceIdentifier'] = input[:db_instance_identifier].to_s unless input[:db_instance_identifier].nil?
        params[context + 'AllocatedStorage'] = input[:allocated_storage].to_s unless input[:allocated_storage].nil?
        params[context + 'DBInstanceClass'] = input[:db_instance_class].to_s unless input[:db_instance_class].nil?
        params[context + 'DBSubnetGroupName'] = input[:db_subnet_group_name].to_s unless input[:db_subnet_group_name].nil?
        Builders::DBSecurityGroupNameList.build(input[:db_security_groups], params, context: context + 'DBSecurityGroups' + '.DBSecurityGroupName') unless input[:db_security_groups].nil?
        Builders::VpcSecurityGroupIdList.build(input[:vpc_security_group_ids], params, context: context + 'VpcSecurityGroupIds' + '.VpcSecurityGroupId') unless input[:vpc_security_group_ids].nil?
        params[context + 'ApplyImmediately'] = input[:apply_immediately].to_s unless input[:apply_immediately].nil?
        params[context + 'MasterUserPassword'] = input[:master_user_password].to_s unless input[:master_user_password].nil?
        params[context + 'DBParameterGroupName'] = input[:db_parameter_group_name].to_s unless input[:db_parameter_group_name].nil?
        params[context + 'BackupRetentionPeriod'] = input[:backup_retention_period].to_s unless input[:backup_retention_period].nil?
        params[context + 'PreferredBackupWindow'] = input[:preferred_backup_window].to_s unless input[:preferred_backup_window].nil?
        params[context + 'PreferredMaintenanceWindow'] = input[:preferred_maintenance_window].to_s unless input[:preferred_maintenance_window].nil?
        params[context + 'MultiAZ'] = input[:multi_az].to_s unless input[:multi_az].nil?
        params[context + 'EngineVersion'] = input[:engine_version].to_s unless input[:engine_version].nil?
        params[context + 'AllowMajorVersionUpgrade'] = input[:allow_major_version_upgrade].to_s unless input[:allow_major_version_upgrade].nil?
        params[context + 'AutoMinorVersionUpgrade'] = input[:auto_minor_version_upgrade].to_s unless input[:auto_minor_version_upgrade].nil?
        params[context + 'LicenseModel'] = input[:license_model].to_s unless input[:license_model].nil?
        params[context + 'Iops'] = input[:iops].to_s unless input[:iops].nil?
        params[context + 'OptionGroupName'] = input[:option_group_name].to_s unless input[:option_group_name].nil?
        params[context + 'NewDBInstanceIdentifier'] = input[:new_db_instance_identifier].to_s unless input[:new_db_instance_identifier].nil?
        params[context + 'StorageType'] = input[:storage_type].to_s unless input[:storage_type].nil?
        params[context + 'TdeCredentialArn'] = input[:tde_credential_arn].to_s unless input[:tde_credential_arn].nil?
        params[context + 'TdeCredentialPassword'] = input[:tde_credential_password].to_s unless input[:tde_credential_password].nil?
        params[context + 'CACertificateIdentifier'] = input[:ca_certificate_identifier].to_s unless input[:ca_certificate_identifier].nil?
        params[context + 'Domain'] = input[:domain].to_s unless input[:domain].nil?
        params[context + 'CopyTagsToSnapshot'] = input[:copy_tags_to_snapshot].to_s unless input[:copy_tags_to_snapshot].nil?
        params[context + 'MonitoringInterval'] = input[:monitoring_interval].to_s unless input[:monitoring_interval].nil?
        params[context + 'DBPortNumber'] = input[:db_port_number].to_s unless input[:db_port_number].nil?
        params[context + 'PubliclyAccessible'] = input[:publicly_accessible].to_s unless input[:publicly_accessible].nil?
        params[context + 'MonitoringRoleArn'] = input[:monitoring_role_arn].to_s unless input[:monitoring_role_arn].nil?
        params[context + 'DomainIAMRoleName'] = input[:domain_iam_role_name].to_s unless input[:domain_iam_role_name].nil?
        params[context + 'PromotionTier'] = input[:promotion_tier].to_s unless input[:promotion_tier].nil?
        params[context + 'EnableIAMDatabaseAuthentication'] = input[:enable_iam_database_authentication].to_s unless input[:enable_iam_database_authentication].nil?
        params[context + 'EnablePerformanceInsights'] = input[:enable_performance_insights].to_s unless input[:enable_performance_insights].nil?
        params[context + 'PerformanceInsightsKMSKeyId'] = input[:performance_insights_kms_key_id].to_s unless input[:performance_insights_kms_key_id].nil?
        params[context + 'PerformanceInsightsRetentionPeriod'] = input[:performance_insights_retention_period].to_s unless input[:performance_insights_retention_period].nil?
        Builders::CloudwatchLogsExportConfiguration.build(input[:cloudwatch_logs_export_configuration], params, context: context + 'CloudwatchLogsExportConfiguration' + '.') unless input[:cloudwatch_logs_export_configuration].nil?
        Builders::ProcessorFeatureList.build(input[:processor_features], params, context: context + 'ProcessorFeatures' + '.ProcessorFeature') unless input[:processor_features].nil?
        params[context + 'UseDefaultProcessorFeatures'] = input[:use_default_processor_features].to_s unless input[:use_default_processor_features].nil?
        params[context + 'DeletionProtection'] = input[:deletion_protection].to_s unless input[:deletion_protection].nil?
        params[context + 'MaxAllocatedStorage'] = input[:max_allocated_storage].to_s unless input[:max_allocated_storage].nil?
        params[context + 'CertificateRotationRestart'] = input[:certificate_rotation_restart].to_s unless input[:certificate_rotation_restart].nil?
        params[context + 'ReplicaMode'] = input[:replica_mode].to_s unless input[:replica_mode].nil?
        params[context + 'EnableCustomerOwnedIp'] = input[:enable_customer_owned_ip].to_s unless input[:enable_customer_owned_ip].nil?
        params[context + 'AwsBackupRecoveryPointArn'] = input[:aws_backup_recovery_point_arn].to_s unless input[:aws_backup_recovery_point_arn].nil?
        params[context + 'AutomationMode'] = input[:automation_mode].to_s unless input[:automation_mode].nil?
        params[context + 'ResumeFullAutomationModeMinutes'] = input[:resume_full_automation_mode_minutes].to_s unless input[:resume_full_automation_mode_minutes].nil?
        params[context + 'NetworkType'] = input[:network_type].to_s unless input[:network_type].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyDBParameterGroup
    class ModifyDBParameterGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyDBParameterGroup'
        params['Version'] = '2014-10-31'
        params[context + 'DBParameterGroupName'] = input[:db_parameter_group_name].to_s unless input[:db_parameter_group_name].nil?
        Builders::ParametersList.build(input[:parameters], params, context: context + 'Parameters' + '.Parameter') unless input[:parameters].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyDBProxy
    class ModifyDBProxy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyDBProxy'
        params['Version'] = '2014-10-31'
        params[context + 'DBProxyName'] = input[:db_proxy_name].to_s unless input[:db_proxy_name].nil?
        params[context + 'NewDBProxyName'] = input[:new_db_proxy_name].to_s unless input[:new_db_proxy_name].nil?
        Builders::UserAuthConfigList.build(input[:auth], params, context: context + 'Auth' + '.member') unless input[:auth].nil?
        params[context + 'RequireTLS'] = input[:require_tls].to_s unless input[:require_tls].nil?
        params[context + 'IdleClientTimeout'] = input[:idle_client_timeout].to_s unless input[:idle_client_timeout].nil?
        params[context + 'DebugLogging'] = input[:debug_logging].to_s unless input[:debug_logging].nil?
        params[context + 'RoleArn'] = input[:role_arn].to_s unless input[:role_arn].nil?
        Builders::StringList.build(input[:security_groups], params, context: context + 'SecurityGroups' + '.member') unless input[:security_groups].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyDBProxyEndpoint
    class ModifyDBProxyEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyDBProxyEndpoint'
        params['Version'] = '2014-10-31'
        params[context + 'DBProxyEndpointName'] = input[:db_proxy_endpoint_name].to_s unless input[:db_proxy_endpoint_name].nil?
        params[context + 'NewDBProxyEndpointName'] = input[:new_db_proxy_endpoint_name].to_s unless input[:new_db_proxy_endpoint_name].nil?
        Builders::StringList.build(input[:vpc_security_group_ids], params, context: context + 'VpcSecurityGroupIds' + '.member') unless input[:vpc_security_group_ids].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyDBProxyTargetGroup
    class ModifyDBProxyTargetGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyDBProxyTargetGroup'
        params['Version'] = '2014-10-31'
        params[context + 'TargetGroupName'] = input[:target_group_name].to_s unless input[:target_group_name].nil?
        params[context + 'DBProxyName'] = input[:db_proxy_name].to_s unless input[:db_proxy_name].nil?
        Builders::ConnectionPoolConfiguration.build(input[:connection_pool_config], params, context: context + 'ConnectionPoolConfig' + '.') unless input[:connection_pool_config].nil?
        params[context + 'NewName'] = input[:new_name].to_s unless input[:new_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for ConnectionPoolConfiguration
    class ConnectionPoolConfiguration
      def self.build(input, params, context: nil)
        params[context + 'MaxConnectionsPercent'] = input[:max_connections_percent].to_s unless input[:max_connections_percent].nil?
        params[context + 'MaxIdleConnectionsPercent'] = input[:max_idle_connections_percent].to_s unless input[:max_idle_connections_percent].nil?
        params[context + 'ConnectionBorrowTimeout'] = input[:connection_borrow_timeout].to_s unless input[:connection_borrow_timeout].nil?
        Builders::StringList.build(input[:session_pinning_filters], params, context: context + 'SessionPinningFilters' + '.member') unless input[:session_pinning_filters].nil?
        params[context + 'InitQuery'] = input[:init_query].to_s unless input[:init_query].nil?
      end
    end

    # Operation Builder for ModifyDBSnapshot
    class ModifyDBSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyDBSnapshot'
        params['Version'] = '2014-10-31'
        params[context + 'DBSnapshotIdentifier'] = input[:db_snapshot_identifier].to_s unless input[:db_snapshot_identifier].nil?
        params[context + 'EngineVersion'] = input[:engine_version].to_s unless input[:engine_version].nil?
        params[context + 'OptionGroupName'] = input[:option_group_name].to_s unless input[:option_group_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyDBSnapshotAttribute
    class ModifyDBSnapshotAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyDBSnapshotAttribute'
        params['Version'] = '2014-10-31'
        params[context + 'DBSnapshotIdentifier'] = input[:db_snapshot_identifier].to_s unless input[:db_snapshot_identifier].nil?
        params[context + 'AttributeName'] = input[:attribute_name].to_s unless input[:attribute_name].nil?
        Builders::AttributeValueList.build(input[:values_to_add], params, context: context + 'ValuesToAdd' + '.AttributeValue') unless input[:values_to_add].nil?
        Builders::AttributeValueList.build(input[:values_to_remove], params, context: context + 'ValuesToRemove' + '.AttributeValue') unless input[:values_to_remove].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyDBSubnetGroup
    class ModifyDBSubnetGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyDBSubnetGroup'
        params['Version'] = '2014-10-31'
        params[context + 'DBSubnetGroupName'] = input[:db_subnet_group_name].to_s unless input[:db_subnet_group_name].nil?
        params[context + 'DBSubnetGroupDescription'] = input[:db_subnet_group_description].to_s unless input[:db_subnet_group_description].nil?
        Builders::SubnetIdentifierList.build(input[:subnet_ids], params, context: context + 'SubnetIds' + '.SubnetIdentifier') unless input[:subnet_ids].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyEventSubscription
    class ModifyEventSubscription
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyEventSubscription'
        params['Version'] = '2014-10-31'
        params[context + 'SubscriptionName'] = input[:subscription_name].to_s unless input[:subscription_name].nil?
        params[context + 'SnsTopicArn'] = input[:sns_topic_arn].to_s unless input[:sns_topic_arn].nil?
        params[context + 'SourceType'] = input[:source_type].to_s unless input[:source_type].nil?
        Builders::EventCategoriesList.build(input[:event_categories], params, context: context + 'EventCategories' + '.EventCategory') unless input[:event_categories].nil?
        params[context + 'Enabled'] = input[:enabled].to_s unless input[:enabled].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyGlobalCluster
    class ModifyGlobalCluster
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyGlobalCluster'
        params['Version'] = '2014-10-31'
        params[context + 'GlobalClusterIdentifier'] = input[:global_cluster_identifier].to_s unless input[:global_cluster_identifier].nil?
        params[context + 'NewGlobalClusterIdentifier'] = input[:new_global_cluster_identifier].to_s unless input[:new_global_cluster_identifier].nil?
        params[context + 'DeletionProtection'] = input[:deletion_protection].to_s unless input[:deletion_protection].nil?
        params[context + 'EngineVersion'] = input[:engine_version].to_s unless input[:engine_version].nil?
        params[context + 'AllowMajorVersionUpgrade'] = input[:allow_major_version_upgrade].to_s unless input[:allow_major_version_upgrade].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyOptionGroup
    class ModifyOptionGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyOptionGroup'
        params['Version'] = '2014-10-31'
        params[context + 'OptionGroupName'] = input[:option_group_name].to_s unless input[:option_group_name].nil?
        Builders::OptionConfigurationList.build(input[:options_to_include], params, context: context + 'OptionsToInclude' + '.OptionConfiguration') unless input[:options_to_include].nil?
        Builders::OptionNamesList.build(input[:options_to_remove], params, context: context + 'OptionsToRemove' + '.member') unless input[:options_to_remove].nil?
        params[context + 'ApplyImmediately'] = input[:apply_immediately].to_s unless input[:apply_immediately].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for OptionNamesList
    class OptionNamesList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for OptionConfigurationList
    class OptionConfigurationList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::OptionConfiguration.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for OptionConfiguration
    class OptionConfiguration
      def self.build(input, params, context: nil)
        params[context + 'OptionName'] = input[:option_name].to_s unless input[:option_name].nil?
        params[context + 'Port'] = input[:port].to_s unless input[:port].nil?
        params[context + 'OptionVersion'] = input[:option_version].to_s unless input[:option_version].nil?
        Builders::DBSecurityGroupNameList.build(input[:db_security_group_memberships], params, context: context + 'DBSecurityGroupMemberships' + '.DBSecurityGroupName') unless input[:db_security_group_memberships].nil?
        Builders::VpcSecurityGroupIdList.build(input[:vpc_security_group_memberships], params, context: context + 'VpcSecurityGroupMemberships' + '.VpcSecurityGroupId') unless input[:vpc_security_group_memberships].nil?
        Builders::OptionSettingsList.build(input[:option_settings], params, context: context + 'OptionSettings' + '.OptionSetting') unless input[:option_settings].nil?
      end
    end

    # List Builder for OptionSettingsList
    class OptionSettingsList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::OptionSetting.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for OptionSetting
    class OptionSetting
      def self.build(input, params, context: nil)
        params[context + 'Name'] = input[:name].to_s unless input[:name].nil?
        params[context + 'Value'] = input[:value].to_s unless input[:value].nil?
        params[context + 'DefaultValue'] = input[:default_value].to_s unless input[:default_value].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'ApplyType'] = input[:apply_type].to_s unless input[:apply_type].nil?
        params[context + 'DataType'] = input[:data_type].to_s unless input[:data_type].nil?
        params[context + 'AllowedValues'] = input[:allowed_values].to_s unless input[:allowed_values].nil?
        params[context + 'IsModifiable'] = input[:is_modifiable].to_s unless input[:is_modifiable].nil?
        params[context + 'IsCollection'] = input[:is_collection].to_s unless input[:is_collection].nil?
      end
    end

    # Operation Builder for PromoteReadReplica
    class PromoteReadReplica
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'PromoteReadReplica'
        params['Version'] = '2014-10-31'
        params[context + 'DBInstanceIdentifier'] = input[:db_instance_identifier].to_s unless input[:db_instance_identifier].nil?
        params[context + 'BackupRetentionPeriod'] = input[:backup_retention_period].to_s unless input[:backup_retention_period].nil?
        params[context + 'PreferredBackupWindow'] = input[:preferred_backup_window].to_s unless input[:preferred_backup_window].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for PromoteReadReplicaDBCluster
    class PromoteReadReplicaDBCluster
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'PromoteReadReplicaDBCluster'
        params['Version'] = '2014-10-31'
        params[context + 'DBClusterIdentifier'] = input[:db_cluster_identifier].to_s unless input[:db_cluster_identifier].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for PurchaseReservedDBInstancesOffering
    class PurchaseReservedDBInstancesOffering
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'PurchaseReservedDBInstancesOffering'
        params['Version'] = '2014-10-31'
        params[context + 'ReservedDBInstancesOfferingId'] = input[:reserved_db_instances_offering_id].to_s unless input[:reserved_db_instances_offering_id].nil?
        params[context + 'ReservedDBInstanceId'] = input[:reserved_db_instance_id].to_s unless input[:reserved_db_instance_id].nil?
        params[context + 'DBInstanceCount'] = input[:db_instance_count].to_s unless input[:db_instance_count].nil?
        Builders::TagList.build(input[:tags], params, context: context + 'Tags' + '.Tag') unless input[:tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for RebootDBCluster
    class RebootDBCluster
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RebootDBCluster'
        params['Version'] = '2014-10-31'
        params[context + 'DBClusterIdentifier'] = input[:db_cluster_identifier].to_s unless input[:db_cluster_identifier].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for RebootDBInstance
    class RebootDBInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RebootDBInstance'
        params['Version'] = '2014-10-31'
        params[context + 'DBInstanceIdentifier'] = input[:db_instance_identifier].to_s unless input[:db_instance_identifier].nil?
        params[context + 'ForceFailover'] = input[:force_failover].to_s unless input[:force_failover].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for RegisterDBProxyTargets
    class RegisterDBProxyTargets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RegisterDBProxyTargets'
        params['Version'] = '2014-10-31'
        params[context + 'DBProxyName'] = input[:db_proxy_name].to_s unless input[:db_proxy_name].nil?
        params[context + 'TargetGroupName'] = input[:target_group_name].to_s unless input[:target_group_name].nil?
        Builders::StringList.build(input[:db_instance_identifiers], params, context: context + 'DBInstanceIdentifiers' + '.member') unless input[:db_instance_identifiers].nil?
        Builders::StringList.build(input[:db_cluster_identifiers], params, context: context + 'DBClusterIdentifiers' + '.member') unless input[:db_cluster_identifiers].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for RemoveFromGlobalCluster
    class RemoveFromGlobalCluster
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RemoveFromGlobalCluster'
        params['Version'] = '2014-10-31'
        params[context + 'GlobalClusterIdentifier'] = input[:global_cluster_identifier].to_s unless input[:global_cluster_identifier].nil?
        params[context + 'DbClusterIdentifier'] = input[:db_cluster_identifier].to_s unless input[:db_cluster_identifier].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for RemoveRoleFromDBCluster
    class RemoveRoleFromDBCluster
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RemoveRoleFromDBCluster'
        params['Version'] = '2014-10-31'
        params[context + 'DBClusterIdentifier'] = input[:db_cluster_identifier].to_s unless input[:db_cluster_identifier].nil?
        params[context + 'RoleArn'] = input[:role_arn].to_s unless input[:role_arn].nil?
        params[context + 'FeatureName'] = input[:feature_name].to_s unless input[:feature_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for RemoveRoleFromDBInstance
    class RemoveRoleFromDBInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RemoveRoleFromDBInstance'
        params['Version'] = '2014-10-31'
        params[context + 'DBInstanceIdentifier'] = input[:db_instance_identifier].to_s unless input[:db_instance_identifier].nil?
        params[context + 'RoleArn'] = input[:role_arn].to_s unless input[:role_arn].nil?
        params[context + 'FeatureName'] = input[:feature_name].to_s unless input[:feature_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for RemoveSourceIdentifierFromSubscription
    class RemoveSourceIdentifierFromSubscription
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RemoveSourceIdentifierFromSubscription'
        params['Version'] = '2014-10-31'
        params[context + 'SubscriptionName'] = input[:subscription_name].to_s unless input[:subscription_name].nil?
        params[context + 'SourceIdentifier'] = input[:source_identifier].to_s unless input[:source_identifier].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for RemoveTagsFromResource
    class RemoveTagsFromResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RemoveTagsFromResource'
        params['Version'] = '2014-10-31'
        params[context + 'ResourceName'] = input[:resource_name].to_s unless input[:resource_name].nil?
        Builders::KeyList.build(input[:tag_keys], params, context: context + 'TagKeys' + '.member') unless input[:tag_keys].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for KeyList
    class KeyList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for ResetDBClusterParameterGroup
    class ResetDBClusterParameterGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ResetDBClusterParameterGroup'
        params['Version'] = '2014-10-31'
        params[context + 'DBClusterParameterGroupName'] = input[:db_cluster_parameter_group_name].to_s unless input[:db_cluster_parameter_group_name].nil?
        params[context + 'ResetAllParameters'] = input[:reset_all_parameters].to_s unless input[:reset_all_parameters].nil?
        Builders::ParametersList.build(input[:parameters], params, context: context + 'Parameters' + '.Parameter') unless input[:parameters].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ResetDBParameterGroup
    class ResetDBParameterGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ResetDBParameterGroup'
        params['Version'] = '2014-10-31'
        params[context + 'DBParameterGroupName'] = input[:db_parameter_group_name].to_s unless input[:db_parameter_group_name].nil?
        params[context + 'ResetAllParameters'] = input[:reset_all_parameters].to_s unless input[:reset_all_parameters].nil?
        Builders::ParametersList.build(input[:parameters], params, context: context + 'Parameters' + '.Parameter') unless input[:parameters].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for RestoreDBClusterFromS3
    class RestoreDBClusterFromS3
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RestoreDBClusterFromS3'
        params['Version'] = '2014-10-31'
        Builders::AvailabilityZones.build(input[:availability_zones], params, context: context + 'AvailabilityZones' + '.AvailabilityZone') unless input[:availability_zones].nil?
        params[context + 'BackupRetentionPeriod'] = input[:backup_retention_period].to_s unless input[:backup_retention_period].nil?
        params[context + 'CharacterSetName'] = input[:character_set_name].to_s unless input[:character_set_name].nil?
        params[context + 'DatabaseName'] = input[:database_name].to_s unless input[:database_name].nil?
        params[context + 'DBClusterIdentifier'] = input[:db_cluster_identifier].to_s unless input[:db_cluster_identifier].nil?
        params[context + 'DBClusterParameterGroupName'] = input[:db_cluster_parameter_group_name].to_s unless input[:db_cluster_parameter_group_name].nil?
        Builders::VpcSecurityGroupIdList.build(input[:vpc_security_group_ids], params, context: context + 'VpcSecurityGroupIds' + '.VpcSecurityGroupId') unless input[:vpc_security_group_ids].nil?
        params[context + 'DBSubnetGroupName'] = input[:db_subnet_group_name].to_s unless input[:db_subnet_group_name].nil?
        params[context + 'Engine'] = input[:engine].to_s unless input[:engine].nil?
        params[context + 'EngineVersion'] = input[:engine_version].to_s unless input[:engine_version].nil?
        params[context + 'Port'] = input[:port].to_s unless input[:port].nil?
        params[context + 'MasterUsername'] = input[:master_username].to_s unless input[:master_username].nil?
        params[context + 'MasterUserPassword'] = input[:master_user_password].to_s unless input[:master_user_password].nil?
        params[context + 'OptionGroupName'] = input[:option_group_name].to_s unless input[:option_group_name].nil?
        params[context + 'PreferredBackupWindow'] = input[:preferred_backup_window].to_s unless input[:preferred_backup_window].nil?
        params[context + 'PreferredMaintenanceWindow'] = input[:preferred_maintenance_window].to_s unless input[:preferred_maintenance_window].nil?
        Builders::TagList.build(input[:tags], params, context: context + 'Tags' + '.Tag') unless input[:tags].nil?
        params[context + 'StorageEncrypted'] = input[:storage_encrypted].to_s unless input[:storage_encrypted].nil?
        params[context + 'KmsKeyId'] = input[:kms_key_id].to_s unless input[:kms_key_id].nil?
        params[context + 'EnableIAMDatabaseAuthentication'] = input[:enable_iam_database_authentication].to_s unless input[:enable_iam_database_authentication].nil?
        params[context + 'SourceEngine'] = input[:source_engine].to_s unless input[:source_engine].nil?
        params[context + 'SourceEngineVersion'] = input[:source_engine_version].to_s unless input[:source_engine_version].nil?
        params[context + 'S3BucketName'] = input[:s3_bucket_name].to_s unless input[:s3_bucket_name].nil?
        params[context + 'S3Prefix'] = input[:s3_prefix].to_s unless input[:s3_prefix].nil?
        params[context + 'S3IngestionRoleArn'] = input[:s3_ingestion_role_arn].to_s unless input[:s3_ingestion_role_arn].nil?
        params[context + 'BacktrackWindow'] = input[:backtrack_window].to_s unless input[:backtrack_window].nil?
        Builders::LogTypeList.build(input[:enable_cloudwatch_logs_exports], params, context: context + 'EnableCloudwatchLogsExports' + '.member') unless input[:enable_cloudwatch_logs_exports].nil?
        params[context + 'DeletionProtection'] = input[:deletion_protection].to_s unless input[:deletion_protection].nil?
        params[context + 'CopyTagsToSnapshot'] = input[:copy_tags_to_snapshot].to_s unless input[:copy_tags_to_snapshot].nil?
        params[context + 'Domain'] = input[:domain].to_s unless input[:domain].nil?
        params[context + 'DomainIAMRoleName'] = input[:domain_iam_role_name].to_s unless input[:domain_iam_role_name].nil?
        Builders::ServerlessV2ScalingConfiguration.build(input[:serverless_v2_scaling_configuration], params, context: context + 'ServerlessV2ScalingConfiguration' + '.') unless input[:serverless_v2_scaling_configuration].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for RestoreDBClusterFromSnapshot
    class RestoreDBClusterFromSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RestoreDBClusterFromSnapshot'
        params['Version'] = '2014-10-31'
        Builders::AvailabilityZones.build(input[:availability_zones], params, context: context + 'AvailabilityZones' + '.AvailabilityZone') unless input[:availability_zones].nil?
        params[context + 'DBClusterIdentifier'] = input[:db_cluster_identifier].to_s unless input[:db_cluster_identifier].nil?
        params[context + 'SnapshotIdentifier'] = input[:snapshot_identifier].to_s unless input[:snapshot_identifier].nil?
        params[context + 'Engine'] = input[:engine].to_s unless input[:engine].nil?
        params[context + 'EngineVersion'] = input[:engine_version].to_s unless input[:engine_version].nil?
        params[context + 'Port'] = input[:port].to_s unless input[:port].nil?
        params[context + 'DBSubnetGroupName'] = input[:db_subnet_group_name].to_s unless input[:db_subnet_group_name].nil?
        params[context + 'DatabaseName'] = input[:database_name].to_s unless input[:database_name].nil?
        params[context + 'OptionGroupName'] = input[:option_group_name].to_s unless input[:option_group_name].nil?
        Builders::VpcSecurityGroupIdList.build(input[:vpc_security_group_ids], params, context: context + 'VpcSecurityGroupIds' + '.VpcSecurityGroupId') unless input[:vpc_security_group_ids].nil?
        Builders::TagList.build(input[:tags], params, context: context + 'Tags' + '.Tag') unless input[:tags].nil?
        params[context + 'KmsKeyId'] = input[:kms_key_id].to_s unless input[:kms_key_id].nil?
        params[context + 'EnableIAMDatabaseAuthentication'] = input[:enable_iam_database_authentication].to_s unless input[:enable_iam_database_authentication].nil?
        params[context + 'BacktrackWindow'] = input[:backtrack_window].to_s unless input[:backtrack_window].nil?
        Builders::LogTypeList.build(input[:enable_cloudwatch_logs_exports], params, context: context + 'EnableCloudwatchLogsExports' + '.member') unless input[:enable_cloudwatch_logs_exports].nil?
        params[context + 'EngineMode'] = input[:engine_mode].to_s unless input[:engine_mode].nil?
        Builders::ScalingConfiguration.build(input[:scaling_configuration], params, context: context + 'ScalingConfiguration' + '.') unless input[:scaling_configuration].nil?
        params[context + 'DBClusterParameterGroupName'] = input[:db_cluster_parameter_group_name].to_s unless input[:db_cluster_parameter_group_name].nil?
        params[context + 'DeletionProtection'] = input[:deletion_protection].to_s unless input[:deletion_protection].nil?
        params[context + 'CopyTagsToSnapshot'] = input[:copy_tags_to_snapshot].to_s unless input[:copy_tags_to_snapshot].nil?
        params[context + 'Domain'] = input[:domain].to_s unless input[:domain].nil?
        params[context + 'DomainIAMRoleName'] = input[:domain_iam_role_name].to_s unless input[:domain_iam_role_name].nil?
        params[context + 'DBClusterInstanceClass'] = input[:db_cluster_instance_class].to_s unless input[:db_cluster_instance_class].nil?
        params[context + 'StorageType'] = input[:storage_type].to_s unless input[:storage_type].nil?
        params[context + 'Iops'] = input[:iops].to_s unless input[:iops].nil?
        params[context + 'PubliclyAccessible'] = input[:publicly_accessible].to_s unless input[:publicly_accessible].nil?
        Builders::ServerlessV2ScalingConfiguration.build(input[:serverless_v2_scaling_configuration], params, context: context + 'ServerlessV2ScalingConfiguration' + '.') unless input[:serverless_v2_scaling_configuration].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for RestoreDBClusterToPointInTime
    class RestoreDBClusterToPointInTime
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RestoreDBClusterToPointInTime'
        params['Version'] = '2014-10-31'
        params[context + 'DBClusterIdentifier'] = input[:db_cluster_identifier].to_s unless input[:db_cluster_identifier].nil?
        params[context + 'RestoreType'] = input[:restore_type].to_s unless input[:restore_type].nil?
        params[context + 'SourceDBClusterIdentifier'] = input[:source_db_cluster_identifier].to_s unless input[:source_db_cluster_identifier].nil?
        params[context + 'RestoreToTime'] = Hearth::TimeHelper.to_date_time(input[:restore_to_time]) unless input[:restore_to_time].nil?
        params[context + 'UseLatestRestorableTime'] = input[:use_latest_restorable_time].to_s unless input[:use_latest_restorable_time].nil?
        params[context + 'Port'] = input[:port].to_s unless input[:port].nil?
        params[context + 'DBSubnetGroupName'] = input[:db_subnet_group_name].to_s unless input[:db_subnet_group_name].nil?
        params[context + 'OptionGroupName'] = input[:option_group_name].to_s unless input[:option_group_name].nil?
        Builders::VpcSecurityGroupIdList.build(input[:vpc_security_group_ids], params, context: context + 'VpcSecurityGroupIds' + '.VpcSecurityGroupId') unless input[:vpc_security_group_ids].nil?
        Builders::TagList.build(input[:tags], params, context: context + 'Tags' + '.Tag') unless input[:tags].nil?
        params[context + 'KmsKeyId'] = input[:kms_key_id].to_s unless input[:kms_key_id].nil?
        params[context + 'EnableIAMDatabaseAuthentication'] = input[:enable_iam_database_authentication].to_s unless input[:enable_iam_database_authentication].nil?
        params[context + 'BacktrackWindow'] = input[:backtrack_window].to_s unless input[:backtrack_window].nil?
        Builders::LogTypeList.build(input[:enable_cloudwatch_logs_exports], params, context: context + 'EnableCloudwatchLogsExports' + '.member') unless input[:enable_cloudwatch_logs_exports].nil?
        params[context + 'DBClusterParameterGroupName'] = input[:db_cluster_parameter_group_name].to_s unless input[:db_cluster_parameter_group_name].nil?
        params[context + 'DeletionProtection'] = input[:deletion_protection].to_s unless input[:deletion_protection].nil?
        params[context + 'CopyTagsToSnapshot'] = input[:copy_tags_to_snapshot].to_s unless input[:copy_tags_to_snapshot].nil?
        params[context + 'Domain'] = input[:domain].to_s unless input[:domain].nil?
        params[context + 'DomainIAMRoleName'] = input[:domain_iam_role_name].to_s unless input[:domain_iam_role_name].nil?
        Builders::ScalingConfiguration.build(input[:scaling_configuration], params, context: context + 'ScalingConfiguration' + '.') unless input[:scaling_configuration].nil?
        params[context + 'EngineMode'] = input[:engine_mode].to_s unless input[:engine_mode].nil?
        params[context + 'DBClusterInstanceClass'] = input[:db_cluster_instance_class].to_s unless input[:db_cluster_instance_class].nil?
        params[context + 'StorageType'] = input[:storage_type].to_s unless input[:storage_type].nil?
        params[context + 'PubliclyAccessible'] = input[:publicly_accessible].to_s unless input[:publicly_accessible].nil?
        params[context + 'Iops'] = input[:iops].to_s unless input[:iops].nil?
        Builders::ServerlessV2ScalingConfiguration.build(input[:serverless_v2_scaling_configuration], params, context: context + 'ServerlessV2ScalingConfiguration' + '.') unless input[:serverless_v2_scaling_configuration].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for RestoreDBInstanceFromDBSnapshot
    class RestoreDBInstanceFromDBSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RestoreDBInstanceFromDBSnapshot'
        params['Version'] = '2014-10-31'
        params[context + 'DBInstanceIdentifier'] = input[:db_instance_identifier].to_s unless input[:db_instance_identifier].nil?
        params[context + 'DBSnapshotIdentifier'] = input[:db_snapshot_identifier].to_s unless input[:db_snapshot_identifier].nil?
        params[context + 'DBInstanceClass'] = input[:db_instance_class].to_s unless input[:db_instance_class].nil?
        params[context + 'Port'] = input[:port].to_s unless input[:port].nil?
        params[context + 'AvailabilityZone'] = input[:availability_zone].to_s unless input[:availability_zone].nil?
        params[context + 'DBSubnetGroupName'] = input[:db_subnet_group_name].to_s unless input[:db_subnet_group_name].nil?
        params[context + 'MultiAZ'] = input[:multi_az].to_s unless input[:multi_az].nil?
        params[context + 'PubliclyAccessible'] = input[:publicly_accessible].to_s unless input[:publicly_accessible].nil?
        params[context + 'AutoMinorVersionUpgrade'] = input[:auto_minor_version_upgrade].to_s unless input[:auto_minor_version_upgrade].nil?
        params[context + 'LicenseModel'] = input[:license_model].to_s unless input[:license_model].nil?
        params[context + 'DBName'] = input[:db_name].to_s unless input[:db_name].nil?
        params[context + 'Engine'] = input[:engine].to_s unless input[:engine].nil?
        params[context + 'Iops'] = input[:iops].to_s unless input[:iops].nil?
        params[context + 'OptionGroupName'] = input[:option_group_name].to_s unless input[:option_group_name].nil?
        Builders::TagList.build(input[:tags], params, context: context + 'Tags' + '.Tag') unless input[:tags].nil?
        params[context + 'StorageType'] = input[:storage_type].to_s unless input[:storage_type].nil?
        params[context + 'TdeCredentialArn'] = input[:tde_credential_arn].to_s unless input[:tde_credential_arn].nil?
        params[context + 'TdeCredentialPassword'] = input[:tde_credential_password].to_s unless input[:tde_credential_password].nil?
        Builders::VpcSecurityGroupIdList.build(input[:vpc_security_group_ids], params, context: context + 'VpcSecurityGroupIds' + '.VpcSecurityGroupId') unless input[:vpc_security_group_ids].nil?
        params[context + 'Domain'] = input[:domain].to_s unless input[:domain].nil?
        params[context + 'CopyTagsToSnapshot'] = input[:copy_tags_to_snapshot].to_s unless input[:copy_tags_to_snapshot].nil?
        params[context + 'DomainIAMRoleName'] = input[:domain_iam_role_name].to_s unless input[:domain_iam_role_name].nil?
        params[context + 'EnableIAMDatabaseAuthentication'] = input[:enable_iam_database_authentication].to_s unless input[:enable_iam_database_authentication].nil?
        Builders::LogTypeList.build(input[:enable_cloudwatch_logs_exports], params, context: context + 'EnableCloudwatchLogsExports' + '.member') unless input[:enable_cloudwatch_logs_exports].nil?
        Builders::ProcessorFeatureList.build(input[:processor_features], params, context: context + 'ProcessorFeatures' + '.ProcessorFeature') unless input[:processor_features].nil?
        params[context + 'UseDefaultProcessorFeatures'] = input[:use_default_processor_features].to_s unless input[:use_default_processor_features].nil?
        params[context + 'DBParameterGroupName'] = input[:db_parameter_group_name].to_s unless input[:db_parameter_group_name].nil?
        params[context + 'DeletionProtection'] = input[:deletion_protection].to_s unless input[:deletion_protection].nil?
        params[context + 'EnableCustomerOwnedIp'] = input[:enable_customer_owned_ip].to_s unless input[:enable_customer_owned_ip].nil?
        params[context + 'CustomIamInstanceProfile'] = input[:custom_iam_instance_profile].to_s unless input[:custom_iam_instance_profile].nil?
        params[context + 'BackupTarget'] = input[:backup_target].to_s unless input[:backup_target].nil?
        params[context + 'NetworkType'] = input[:network_type].to_s unless input[:network_type].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for RestoreDBInstanceFromS3
    class RestoreDBInstanceFromS3
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RestoreDBInstanceFromS3'
        params['Version'] = '2014-10-31'
        params[context + 'DBName'] = input[:db_name].to_s unless input[:db_name].nil?
        params[context + 'DBInstanceIdentifier'] = input[:db_instance_identifier].to_s unless input[:db_instance_identifier].nil?
        params[context + 'AllocatedStorage'] = input[:allocated_storage].to_s unless input[:allocated_storage].nil?
        params[context + 'DBInstanceClass'] = input[:db_instance_class].to_s unless input[:db_instance_class].nil?
        params[context + 'Engine'] = input[:engine].to_s unless input[:engine].nil?
        params[context + 'MasterUsername'] = input[:master_username].to_s unless input[:master_username].nil?
        params[context + 'MasterUserPassword'] = input[:master_user_password].to_s unless input[:master_user_password].nil?
        Builders::DBSecurityGroupNameList.build(input[:db_security_groups], params, context: context + 'DBSecurityGroups' + '.DBSecurityGroupName') unless input[:db_security_groups].nil?
        Builders::VpcSecurityGroupIdList.build(input[:vpc_security_group_ids], params, context: context + 'VpcSecurityGroupIds' + '.VpcSecurityGroupId') unless input[:vpc_security_group_ids].nil?
        params[context + 'AvailabilityZone'] = input[:availability_zone].to_s unless input[:availability_zone].nil?
        params[context + 'DBSubnetGroupName'] = input[:db_subnet_group_name].to_s unless input[:db_subnet_group_name].nil?
        params[context + 'PreferredMaintenanceWindow'] = input[:preferred_maintenance_window].to_s unless input[:preferred_maintenance_window].nil?
        params[context + 'DBParameterGroupName'] = input[:db_parameter_group_name].to_s unless input[:db_parameter_group_name].nil?
        params[context + 'BackupRetentionPeriod'] = input[:backup_retention_period].to_s unless input[:backup_retention_period].nil?
        params[context + 'PreferredBackupWindow'] = input[:preferred_backup_window].to_s unless input[:preferred_backup_window].nil?
        params[context + 'Port'] = input[:port].to_s unless input[:port].nil?
        params[context + 'MultiAZ'] = input[:multi_az].to_s unless input[:multi_az].nil?
        params[context + 'EngineVersion'] = input[:engine_version].to_s unless input[:engine_version].nil?
        params[context + 'AutoMinorVersionUpgrade'] = input[:auto_minor_version_upgrade].to_s unless input[:auto_minor_version_upgrade].nil?
        params[context + 'LicenseModel'] = input[:license_model].to_s unless input[:license_model].nil?
        params[context + 'Iops'] = input[:iops].to_s unless input[:iops].nil?
        params[context + 'OptionGroupName'] = input[:option_group_name].to_s unless input[:option_group_name].nil?
        params[context + 'PubliclyAccessible'] = input[:publicly_accessible].to_s unless input[:publicly_accessible].nil?
        Builders::TagList.build(input[:tags], params, context: context + 'Tags' + '.Tag') unless input[:tags].nil?
        params[context + 'StorageType'] = input[:storage_type].to_s unless input[:storage_type].nil?
        params[context + 'StorageEncrypted'] = input[:storage_encrypted].to_s unless input[:storage_encrypted].nil?
        params[context + 'KmsKeyId'] = input[:kms_key_id].to_s unless input[:kms_key_id].nil?
        params[context + 'CopyTagsToSnapshot'] = input[:copy_tags_to_snapshot].to_s unless input[:copy_tags_to_snapshot].nil?
        params[context + 'MonitoringInterval'] = input[:monitoring_interval].to_s unless input[:monitoring_interval].nil?
        params[context + 'MonitoringRoleArn'] = input[:monitoring_role_arn].to_s unless input[:monitoring_role_arn].nil?
        params[context + 'EnableIAMDatabaseAuthentication'] = input[:enable_iam_database_authentication].to_s unless input[:enable_iam_database_authentication].nil?
        params[context + 'SourceEngine'] = input[:source_engine].to_s unless input[:source_engine].nil?
        params[context + 'SourceEngineVersion'] = input[:source_engine_version].to_s unless input[:source_engine_version].nil?
        params[context + 'S3BucketName'] = input[:s3_bucket_name].to_s unless input[:s3_bucket_name].nil?
        params[context + 'S3Prefix'] = input[:s3_prefix].to_s unless input[:s3_prefix].nil?
        params[context + 'S3IngestionRoleArn'] = input[:s3_ingestion_role_arn].to_s unless input[:s3_ingestion_role_arn].nil?
        params[context + 'EnablePerformanceInsights'] = input[:enable_performance_insights].to_s unless input[:enable_performance_insights].nil?
        params[context + 'PerformanceInsightsKMSKeyId'] = input[:performance_insights_kms_key_id].to_s unless input[:performance_insights_kms_key_id].nil?
        params[context + 'PerformanceInsightsRetentionPeriod'] = input[:performance_insights_retention_period].to_s unless input[:performance_insights_retention_period].nil?
        Builders::LogTypeList.build(input[:enable_cloudwatch_logs_exports], params, context: context + 'EnableCloudwatchLogsExports' + '.member') unless input[:enable_cloudwatch_logs_exports].nil?
        Builders::ProcessorFeatureList.build(input[:processor_features], params, context: context + 'ProcessorFeatures' + '.ProcessorFeature') unless input[:processor_features].nil?
        params[context + 'UseDefaultProcessorFeatures'] = input[:use_default_processor_features].to_s unless input[:use_default_processor_features].nil?
        params[context + 'DeletionProtection'] = input[:deletion_protection].to_s unless input[:deletion_protection].nil?
        params[context + 'MaxAllocatedStorage'] = input[:max_allocated_storage].to_s unless input[:max_allocated_storage].nil?
        params[context + 'NetworkType'] = input[:network_type].to_s unless input[:network_type].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for RestoreDBInstanceToPointInTime
    class RestoreDBInstanceToPointInTime
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RestoreDBInstanceToPointInTime'
        params['Version'] = '2014-10-31'
        params[context + 'SourceDBInstanceIdentifier'] = input[:source_db_instance_identifier].to_s unless input[:source_db_instance_identifier].nil?
        params[context + 'TargetDBInstanceIdentifier'] = input[:target_db_instance_identifier].to_s unless input[:target_db_instance_identifier].nil?
        params[context + 'RestoreTime'] = Hearth::TimeHelper.to_date_time(input[:restore_time]) unless input[:restore_time].nil?
        params[context + 'UseLatestRestorableTime'] = input[:use_latest_restorable_time].to_s unless input[:use_latest_restorable_time].nil?
        params[context + 'DBInstanceClass'] = input[:db_instance_class].to_s unless input[:db_instance_class].nil?
        params[context + 'Port'] = input[:port].to_s unless input[:port].nil?
        params[context + 'AvailabilityZone'] = input[:availability_zone].to_s unless input[:availability_zone].nil?
        params[context + 'DBSubnetGroupName'] = input[:db_subnet_group_name].to_s unless input[:db_subnet_group_name].nil?
        params[context + 'MultiAZ'] = input[:multi_az].to_s unless input[:multi_az].nil?
        params[context + 'PubliclyAccessible'] = input[:publicly_accessible].to_s unless input[:publicly_accessible].nil?
        params[context + 'AutoMinorVersionUpgrade'] = input[:auto_minor_version_upgrade].to_s unless input[:auto_minor_version_upgrade].nil?
        params[context + 'LicenseModel'] = input[:license_model].to_s unless input[:license_model].nil?
        params[context + 'DBName'] = input[:db_name].to_s unless input[:db_name].nil?
        params[context + 'Engine'] = input[:engine].to_s unless input[:engine].nil?
        params[context + 'Iops'] = input[:iops].to_s unless input[:iops].nil?
        params[context + 'OptionGroupName'] = input[:option_group_name].to_s unless input[:option_group_name].nil?
        params[context + 'CopyTagsToSnapshot'] = input[:copy_tags_to_snapshot].to_s unless input[:copy_tags_to_snapshot].nil?
        Builders::TagList.build(input[:tags], params, context: context + 'Tags' + '.Tag') unless input[:tags].nil?
        params[context + 'StorageType'] = input[:storage_type].to_s unless input[:storage_type].nil?
        params[context + 'TdeCredentialArn'] = input[:tde_credential_arn].to_s unless input[:tde_credential_arn].nil?
        params[context + 'TdeCredentialPassword'] = input[:tde_credential_password].to_s unless input[:tde_credential_password].nil?
        Builders::VpcSecurityGroupIdList.build(input[:vpc_security_group_ids], params, context: context + 'VpcSecurityGroupIds' + '.VpcSecurityGroupId') unless input[:vpc_security_group_ids].nil?
        params[context + 'Domain'] = input[:domain].to_s unless input[:domain].nil?
        params[context + 'DomainIAMRoleName'] = input[:domain_iam_role_name].to_s unless input[:domain_iam_role_name].nil?
        params[context + 'EnableIAMDatabaseAuthentication'] = input[:enable_iam_database_authentication].to_s unless input[:enable_iam_database_authentication].nil?
        Builders::LogTypeList.build(input[:enable_cloudwatch_logs_exports], params, context: context + 'EnableCloudwatchLogsExports' + '.member') unless input[:enable_cloudwatch_logs_exports].nil?
        Builders::ProcessorFeatureList.build(input[:processor_features], params, context: context + 'ProcessorFeatures' + '.ProcessorFeature') unless input[:processor_features].nil?
        params[context + 'UseDefaultProcessorFeatures'] = input[:use_default_processor_features].to_s unless input[:use_default_processor_features].nil?
        params[context + 'DBParameterGroupName'] = input[:db_parameter_group_name].to_s unless input[:db_parameter_group_name].nil?
        params[context + 'DeletionProtection'] = input[:deletion_protection].to_s unless input[:deletion_protection].nil?
        params[context + 'SourceDbiResourceId'] = input[:source_dbi_resource_id].to_s unless input[:source_dbi_resource_id].nil?
        params[context + 'MaxAllocatedStorage'] = input[:max_allocated_storage].to_s unless input[:max_allocated_storage].nil?
        params[context + 'SourceDBInstanceAutomatedBackupsArn'] = input[:source_db_instance_automated_backups_arn].to_s unless input[:source_db_instance_automated_backups_arn].nil?
        params[context + 'EnableCustomerOwnedIp'] = input[:enable_customer_owned_ip].to_s unless input[:enable_customer_owned_ip].nil?
        params[context + 'CustomIamInstanceProfile'] = input[:custom_iam_instance_profile].to_s unless input[:custom_iam_instance_profile].nil?
        params[context + 'BackupTarget'] = input[:backup_target].to_s unless input[:backup_target].nil?
        params[context + 'NetworkType'] = input[:network_type].to_s unless input[:network_type].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for RevokeDBSecurityGroupIngress
    class RevokeDBSecurityGroupIngress
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RevokeDBSecurityGroupIngress'
        params['Version'] = '2014-10-31'
        params[context + 'DBSecurityGroupName'] = input[:db_security_group_name].to_s unless input[:db_security_group_name].nil?
        params[context + 'CIDRIP'] = input[:cidrip].to_s unless input[:cidrip].nil?
        params[context + 'EC2SecurityGroupName'] = input[:ec2_security_group_name].to_s unless input[:ec2_security_group_name].nil?
        params[context + 'EC2SecurityGroupId'] = input[:ec2_security_group_id].to_s unless input[:ec2_security_group_id].nil?
        params[context + 'EC2SecurityGroupOwnerId'] = input[:ec2_security_group_owner_id].to_s unless input[:ec2_security_group_owner_id].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for StartActivityStream
    class StartActivityStream
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'StartActivityStream'
        params['Version'] = '2014-10-31'
        params[context + 'ResourceArn'] = input[:resource_arn].to_s unless input[:resource_arn].nil?
        params[context + 'Mode'] = input[:mode].to_s unless input[:mode].nil?
        params[context + 'KmsKeyId'] = input[:kms_key_id].to_s unless input[:kms_key_id].nil?
        params[context + 'ApplyImmediately'] = input[:apply_immediately].to_s unless input[:apply_immediately].nil?
        params[context + 'EngineNativeAuditFieldsIncluded'] = input[:engine_native_audit_fields_included].to_s unless input[:engine_native_audit_fields_included].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for StartDBCluster
    class StartDBCluster
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'StartDBCluster'
        params['Version'] = '2014-10-31'
        params[context + 'DBClusterIdentifier'] = input[:db_cluster_identifier].to_s unless input[:db_cluster_identifier].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for StartDBInstance
    class StartDBInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'StartDBInstance'
        params['Version'] = '2014-10-31'
        params[context + 'DBInstanceIdentifier'] = input[:db_instance_identifier].to_s unless input[:db_instance_identifier].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for StartDBInstanceAutomatedBackupsReplication
    class StartDBInstanceAutomatedBackupsReplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'StartDBInstanceAutomatedBackupsReplication'
        params['Version'] = '2014-10-31'
        params[context + 'SourceDBInstanceArn'] = input[:source_db_instance_arn].to_s unless input[:source_db_instance_arn].nil?
        params[context + 'BackupRetentionPeriod'] = input[:backup_retention_period].to_s unless input[:backup_retention_period].nil?
        params[context + 'KmsKeyId'] = input[:kms_key_id].to_s unless input[:kms_key_id].nil?
        params[context + 'PreSignedUrl'] = input[:pre_signed_url].to_s unless input[:pre_signed_url].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for StartExportTask
    class StartExportTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'StartExportTask'
        params['Version'] = '2014-10-31'
        params[context + 'ExportTaskIdentifier'] = input[:export_task_identifier].to_s unless input[:export_task_identifier].nil?
        params[context + 'SourceArn'] = input[:source_arn].to_s unless input[:source_arn].nil?
        params[context + 'S3BucketName'] = input[:s3_bucket_name].to_s unless input[:s3_bucket_name].nil?
        params[context + 'IamRoleArn'] = input[:iam_role_arn].to_s unless input[:iam_role_arn].nil?
        params[context + 'KmsKeyId'] = input[:kms_key_id].to_s unless input[:kms_key_id].nil?
        params[context + 'S3Prefix'] = input[:s3_prefix].to_s unless input[:s3_prefix].nil?
        Builders::StringList.build(input[:export_only], params, context: context + 'ExportOnly' + '.member') unless input[:export_only].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for StopActivityStream
    class StopActivityStream
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'StopActivityStream'
        params['Version'] = '2014-10-31'
        params[context + 'ResourceArn'] = input[:resource_arn].to_s unless input[:resource_arn].nil?
        params[context + 'ApplyImmediately'] = input[:apply_immediately].to_s unless input[:apply_immediately].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for StopDBCluster
    class StopDBCluster
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'StopDBCluster'
        params['Version'] = '2014-10-31'
        params[context + 'DBClusterIdentifier'] = input[:db_cluster_identifier].to_s unless input[:db_cluster_identifier].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for StopDBInstance
    class StopDBInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'StopDBInstance'
        params['Version'] = '2014-10-31'
        params[context + 'DBInstanceIdentifier'] = input[:db_instance_identifier].to_s unless input[:db_instance_identifier].nil?
        params[context + 'DBSnapshotIdentifier'] = input[:db_snapshot_identifier].to_s unless input[:db_snapshot_identifier].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for StopDBInstanceAutomatedBackupsReplication
    class StopDBInstanceAutomatedBackupsReplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'StopDBInstanceAutomatedBackupsReplication'
        params['Version'] = '2014-10-31'
        params[context + 'SourceDBInstanceArn'] = input[:source_db_instance_arn].to_s unless input[:source_db_instance_arn].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end
  end
end
