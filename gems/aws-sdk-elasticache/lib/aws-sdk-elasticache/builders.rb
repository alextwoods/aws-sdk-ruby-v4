# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ElastiCache
  module Builders

    # Operation Builder for AddTagsToResource
    class AddTagsToResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AddTagsToResource'
        params['Version'] = '2015-02-02'
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

    # Operation Builder for AuthorizeCacheSecurityGroupIngress
    class AuthorizeCacheSecurityGroupIngress
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AuthorizeCacheSecurityGroupIngress'
        params['Version'] = '2015-02-02'
        params[context + 'CacheSecurityGroupName'] = input[:cache_security_group_name].to_s unless input[:cache_security_group_name].nil?
        params[context + 'EC2SecurityGroupName'] = input[:ec2_security_group_name].to_s unless input[:ec2_security_group_name].nil?
        params[context + 'EC2SecurityGroupOwnerId'] = input[:ec2_security_group_owner_id].to_s unless input[:ec2_security_group_owner_id].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for BatchApplyUpdateAction
    class BatchApplyUpdateAction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'BatchApplyUpdateAction'
        params['Version'] = '2015-02-02'
        Builders::ReplicationGroupIdList.build(input[:replication_group_ids], params, context: context + 'ReplicationGroupIds' + '.member') unless input[:replication_group_ids].nil?
        Builders::CacheClusterIdList.build(input[:cache_cluster_ids], params, context: context + 'CacheClusterIds' + '.member') unless input[:cache_cluster_ids].nil?
        params[context + 'ServiceUpdateName'] = input[:service_update_name].to_s unless input[:service_update_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for CacheClusterIdList
    class CacheClusterIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for ReplicationGroupIdList
    class ReplicationGroupIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for BatchStopUpdateAction
    class BatchStopUpdateAction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'BatchStopUpdateAction'
        params['Version'] = '2015-02-02'
        Builders::ReplicationGroupIdList.build(input[:replication_group_ids], params, context: context + 'ReplicationGroupIds' + '.member') unless input[:replication_group_ids].nil?
        Builders::CacheClusterIdList.build(input[:cache_cluster_ids], params, context: context + 'CacheClusterIds' + '.member') unless input[:cache_cluster_ids].nil?
        params[context + 'ServiceUpdateName'] = input[:service_update_name].to_s unless input[:service_update_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CompleteMigration
    class CompleteMigration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CompleteMigration'
        params['Version'] = '2015-02-02'
        params[context + 'ReplicationGroupId'] = input[:replication_group_id].to_s unless input[:replication_group_id].nil?
        params[context + 'Force'] = input[:force].to_s unless input[:force].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CopySnapshot
    class CopySnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CopySnapshot'
        params['Version'] = '2015-02-02'
        params[context + 'SourceSnapshotName'] = input[:source_snapshot_name].to_s unless input[:source_snapshot_name].nil?
        params[context + 'TargetSnapshotName'] = input[:target_snapshot_name].to_s unless input[:target_snapshot_name].nil?
        params[context + 'TargetBucket'] = input[:target_bucket].to_s unless input[:target_bucket].nil?
        params[context + 'KmsKeyId'] = input[:kms_key_id].to_s unless input[:kms_key_id].nil?
        Builders::TagList.build(input[:tags], params, context: context + 'Tags' + '.Tag') unless input[:tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateCacheCluster
    class CreateCacheCluster
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateCacheCluster'
        params['Version'] = '2015-02-02'
        params[context + 'CacheClusterId'] = input[:cache_cluster_id].to_s unless input[:cache_cluster_id].nil?
        params[context + 'ReplicationGroupId'] = input[:replication_group_id].to_s unless input[:replication_group_id].nil?
        params[context + 'AZMode'] = input[:az_mode].to_s unless input[:az_mode].nil?
        params[context + 'PreferredAvailabilityZone'] = input[:preferred_availability_zone].to_s unless input[:preferred_availability_zone].nil?
        Builders::PreferredAvailabilityZoneList.build(input[:preferred_availability_zones], params, context: context + 'PreferredAvailabilityZones' + '.PreferredAvailabilityZone') unless input[:preferred_availability_zones].nil?
        params[context + 'NumCacheNodes'] = input[:num_cache_nodes].to_s unless input[:num_cache_nodes].nil?
        params[context + 'CacheNodeType'] = input[:cache_node_type].to_s unless input[:cache_node_type].nil?
        params[context + 'Engine'] = input[:engine].to_s unless input[:engine].nil?
        params[context + 'EngineVersion'] = input[:engine_version].to_s unless input[:engine_version].nil?
        params[context + 'CacheParameterGroupName'] = input[:cache_parameter_group_name].to_s unless input[:cache_parameter_group_name].nil?
        params[context + 'CacheSubnetGroupName'] = input[:cache_subnet_group_name].to_s unless input[:cache_subnet_group_name].nil?
        Builders::CacheSecurityGroupNameList.build(input[:cache_security_group_names], params, context: context + 'CacheSecurityGroupNames' + '.CacheSecurityGroupName') unless input[:cache_security_group_names].nil?
        Builders::SecurityGroupIdsList.build(input[:security_group_ids], params, context: context + 'SecurityGroupIds' + '.SecurityGroupId') unless input[:security_group_ids].nil?
        Builders::TagList.build(input[:tags], params, context: context + 'Tags' + '.Tag') unless input[:tags].nil?
        Builders::SnapshotArnsList.build(input[:snapshot_arns], params, context: context + 'SnapshotArns' + '.SnapshotArn') unless input[:snapshot_arns].nil?
        params[context + 'SnapshotName'] = input[:snapshot_name].to_s unless input[:snapshot_name].nil?
        params[context + 'PreferredMaintenanceWindow'] = input[:preferred_maintenance_window].to_s unless input[:preferred_maintenance_window].nil?
        params[context + 'Port'] = input[:port].to_s unless input[:port].nil?
        params[context + 'NotificationTopicArn'] = input[:notification_topic_arn].to_s unless input[:notification_topic_arn].nil?
        params[context + 'AutoMinorVersionUpgrade'] = input[:auto_minor_version_upgrade].to_s unless input[:auto_minor_version_upgrade].nil?
        params[context + 'SnapshotRetentionLimit'] = input[:snapshot_retention_limit].to_s unless input[:snapshot_retention_limit].nil?
        params[context + 'SnapshotWindow'] = input[:snapshot_window].to_s unless input[:snapshot_window].nil?
        params[context + 'AuthToken'] = input[:auth_token].to_s unless input[:auth_token].nil?
        params[context + 'OutpostMode'] = input[:outpost_mode].to_s unless input[:outpost_mode].nil?
        params[context + 'PreferredOutpostArn'] = input[:preferred_outpost_arn].to_s unless input[:preferred_outpost_arn].nil?
        Builders::PreferredOutpostArnList.build(input[:preferred_outpost_arns], params, context: context + 'PreferredOutpostArns' + '.PreferredOutpostArn') unless input[:preferred_outpost_arns].nil?
        Builders::LogDeliveryConfigurationRequestList.build(input[:log_delivery_configurations], params, context: context + 'LogDeliveryConfigurations' + '.LogDeliveryConfigurationRequest') unless input[:log_delivery_configurations].nil?
        params[context + 'TransitEncryptionEnabled'] = input[:transit_encryption_enabled].to_s unless input[:transit_encryption_enabled].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for LogDeliveryConfigurationRequestList
    class LogDeliveryConfigurationRequestList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::LogDeliveryConfigurationRequest.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for LogDeliveryConfigurationRequest
    class LogDeliveryConfigurationRequest
      def self.build(input, params, context: nil)
        params[context + 'LogType'] = input[:log_type].to_s unless input[:log_type].nil?
        params[context + 'DestinationType'] = input[:destination_type].to_s unless input[:destination_type].nil?
        Builders::DestinationDetails.build(input[:destination_details], params, context: context + 'DestinationDetails' + '.') unless input[:destination_details].nil?
        params[context + 'LogFormat'] = input[:log_format].to_s unless input[:log_format].nil?
        params[context + 'Enabled'] = input[:enabled].to_s unless input[:enabled].nil?
      end
    end

    # Structure Builder for DestinationDetails
    class DestinationDetails
      def self.build(input, params, context: nil)
        Builders::CloudWatchLogsDestinationDetails.build(input[:cloud_watch_logs_details], params, context: context + 'CloudWatchLogsDetails' + '.') unless input[:cloud_watch_logs_details].nil?
        Builders::KinesisFirehoseDestinationDetails.build(input[:kinesis_firehose_details], params, context: context + 'KinesisFirehoseDetails' + '.') unless input[:kinesis_firehose_details].nil?
      end
    end

    # Structure Builder for KinesisFirehoseDestinationDetails
    class KinesisFirehoseDestinationDetails
      def self.build(input, params, context: nil)
        params[context + 'DeliveryStream'] = input[:delivery_stream].to_s unless input[:delivery_stream].nil?
      end
    end

    # Structure Builder for CloudWatchLogsDestinationDetails
    class CloudWatchLogsDestinationDetails
      def self.build(input, params, context: nil)
        params[context + 'LogGroup'] = input[:log_group].to_s unless input[:log_group].nil?
      end
    end

    # List Builder for PreferredOutpostArnList
    class PreferredOutpostArnList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for SnapshotArnsList
    class SnapshotArnsList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for SecurityGroupIdsList
    class SecurityGroupIdsList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for CacheSecurityGroupNameList
    class CacheSecurityGroupNameList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for PreferredAvailabilityZoneList
    class PreferredAvailabilityZoneList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for CreateCacheParameterGroup
    class CreateCacheParameterGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateCacheParameterGroup'
        params['Version'] = '2015-02-02'
        params[context + 'CacheParameterGroupName'] = input[:cache_parameter_group_name].to_s unless input[:cache_parameter_group_name].nil?
        params[context + 'CacheParameterGroupFamily'] = input[:cache_parameter_group_family].to_s unless input[:cache_parameter_group_family].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        Builders::TagList.build(input[:tags], params, context: context + 'Tags' + '.Tag') unless input[:tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateCacheSecurityGroup
    class CreateCacheSecurityGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateCacheSecurityGroup'
        params['Version'] = '2015-02-02'
        params[context + 'CacheSecurityGroupName'] = input[:cache_security_group_name].to_s unless input[:cache_security_group_name].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        Builders::TagList.build(input[:tags], params, context: context + 'Tags' + '.Tag') unless input[:tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateCacheSubnetGroup
    class CreateCacheSubnetGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateCacheSubnetGroup'
        params['Version'] = '2015-02-02'
        params[context + 'CacheSubnetGroupName'] = input[:cache_subnet_group_name].to_s unless input[:cache_subnet_group_name].nil?
        params[context + 'CacheSubnetGroupDescription'] = input[:cache_subnet_group_description].to_s unless input[:cache_subnet_group_description].nil?
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

    # Operation Builder for CreateGlobalReplicationGroup
    class CreateGlobalReplicationGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateGlobalReplicationGroup'
        params['Version'] = '2015-02-02'
        params[context + 'GlobalReplicationGroupIdSuffix'] = input[:global_replication_group_id_suffix].to_s unless input[:global_replication_group_id_suffix].nil?
        params[context + 'GlobalReplicationGroupDescription'] = input[:global_replication_group_description].to_s unless input[:global_replication_group_description].nil?
        params[context + 'PrimaryReplicationGroupId'] = input[:primary_replication_group_id].to_s unless input[:primary_replication_group_id].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateReplicationGroup
    class CreateReplicationGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateReplicationGroup'
        params['Version'] = '2015-02-02'
        params[context + 'ReplicationGroupId'] = input[:replication_group_id].to_s unless input[:replication_group_id].nil?
        params[context + 'ReplicationGroupDescription'] = input[:replication_group_description].to_s unless input[:replication_group_description].nil?
        params[context + 'GlobalReplicationGroupId'] = input[:global_replication_group_id].to_s unless input[:global_replication_group_id].nil?
        params[context + 'PrimaryClusterId'] = input[:primary_cluster_id].to_s unless input[:primary_cluster_id].nil?
        params[context + 'AutomaticFailoverEnabled'] = input[:automatic_failover_enabled].to_s unless input[:automatic_failover_enabled].nil?
        params[context + 'MultiAZEnabled'] = input[:multi_az_enabled].to_s unless input[:multi_az_enabled].nil?
        params[context + 'NumCacheClusters'] = input[:num_cache_clusters].to_s unless input[:num_cache_clusters].nil?
        Builders::AvailabilityZonesList.build(input[:preferred_cache_cluster_a_zs], params, context: context + 'PreferredCacheClusterAZs' + '.AvailabilityZone') unless input[:preferred_cache_cluster_a_zs].nil?
        params[context + 'NumNodeGroups'] = input[:num_node_groups].to_s unless input[:num_node_groups].nil?
        params[context + 'ReplicasPerNodeGroup'] = input[:replicas_per_node_group].to_s unless input[:replicas_per_node_group].nil?
        Builders::NodeGroupConfigurationList.build(input[:node_group_configuration], params, context: context + 'NodeGroupConfiguration' + '.NodeGroupConfiguration') unless input[:node_group_configuration].nil?
        params[context + 'CacheNodeType'] = input[:cache_node_type].to_s unless input[:cache_node_type].nil?
        params[context + 'Engine'] = input[:engine].to_s unless input[:engine].nil?
        params[context + 'EngineVersion'] = input[:engine_version].to_s unless input[:engine_version].nil?
        params[context + 'CacheParameterGroupName'] = input[:cache_parameter_group_name].to_s unless input[:cache_parameter_group_name].nil?
        params[context + 'CacheSubnetGroupName'] = input[:cache_subnet_group_name].to_s unless input[:cache_subnet_group_name].nil?
        Builders::CacheSecurityGroupNameList.build(input[:cache_security_group_names], params, context: context + 'CacheSecurityGroupNames' + '.CacheSecurityGroupName') unless input[:cache_security_group_names].nil?
        Builders::SecurityGroupIdsList.build(input[:security_group_ids], params, context: context + 'SecurityGroupIds' + '.SecurityGroupId') unless input[:security_group_ids].nil?
        Builders::TagList.build(input[:tags], params, context: context + 'Tags' + '.Tag') unless input[:tags].nil?
        Builders::SnapshotArnsList.build(input[:snapshot_arns], params, context: context + 'SnapshotArns' + '.SnapshotArn') unless input[:snapshot_arns].nil?
        params[context + 'SnapshotName'] = input[:snapshot_name].to_s unless input[:snapshot_name].nil?
        params[context + 'PreferredMaintenanceWindow'] = input[:preferred_maintenance_window].to_s unless input[:preferred_maintenance_window].nil?
        params[context + 'Port'] = input[:port].to_s unless input[:port].nil?
        params[context + 'NotificationTopicArn'] = input[:notification_topic_arn].to_s unless input[:notification_topic_arn].nil?
        params[context + 'AutoMinorVersionUpgrade'] = input[:auto_minor_version_upgrade].to_s unless input[:auto_minor_version_upgrade].nil?
        params[context + 'SnapshotRetentionLimit'] = input[:snapshot_retention_limit].to_s unless input[:snapshot_retention_limit].nil?
        params[context + 'SnapshotWindow'] = input[:snapshot_window].to_s unless input[:snapshot_window].nil?
        params[context + 'AuthToken'] = input[:auth_token].to_s unless input[:auth_token].nil?
        params[context + 'TransitEncryptionEnabled'] = input[:transit_encryption_enabled].to_s unless input[:transit_encryption_enabled].nil?
        params[context + 'AtRestEncryptionEnabled'] = input[:at_rest_encryption_enabled].to_s unless input[:at_rest_encryption_enabled].nil?
        params[context + 'KmsKeyId'] = input[:kms_key_id].to_s unless input[:kms_key_id].nil?
        Builders::UserGroupIdListInput.build(input[:user_group_ids], params, context: context + 'UserGroupIds' + '.member') unless input[:user_group_ids].nil?
        Builders::LogDeliveryConfigurationRequestList.build(input[:log_delivery_configurations], params, context: context + 'LogDeliveryConfigurations' + '.LogDeliveryConfigurationRequest') unless input[:log_delivery_configurations].nil?
        params[context + 'DataTieringEnabled'] = input[:data_tiering_enabled].to_s unless input[:data_tiering_enabled].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for UserGroupIdListInput
    class UserGroupIdListInput
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for NodeGroupConfigurationList
    class NodeGroupConfigurationList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::NodeGroupConfiguration.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for NodeGroupConfiguration
    class NodeGroupConfiguration
      def self.build(input, params, context: nil)
        params[context + 'NodeGroupId'] = input[:node_group_id].to_s unless input[:node_group_id].nil?
        params[context + 'Slots'] = input[:slots].to_s unless input[:slots].nil?
        params[context + 'ReplicaCount'] = input[:replica_count].to_s unless input[:replica_count].nil?
        params[context + 'PrimaryAvailabilityZone'] = input[:primary_availability_zone].to_s unless input[:primary_availability_zone].nil?
        Builders::AvailabilityZonesList.build(input[:replica_availability_zones], params, context: context + 'ReplicaAvailabilityZones' + '.AvailabilityZone') unless input[:replica_availability_zones].nil?
        params[context + 'PrimaryOutpostArn'] = input[:primary_outpost_arn].to_s unless input[:primary_outpost_arn].nil?
        Builders::OutpostArnsList.build(input[:replica_outpost_arns], params, context: context + 'ReplicaOutpostArns' + '.OutpostArn') unless input[:replica_outpost_arns].nil?
      end
    end

    # List Builder for OutpostArnsList
    class OutpostArnsList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for AvailabilityZonesList
    class AvailabilityZonesList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for CreateSnapshot
    class CreateSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateSnapshot'
        params['Version'] = '2015-02-02'
        params[context + 'ReplicationGroupId'] = input[:replication_group_id].to_s unless input[:replication_group_id].nil?
        params[context + 'CacheClusterId'] = input[:cache_cluster_id].to_s unless input[:cache_cluster_id].nil?
        params[context + 'SnapshotName'] = input[:snapshot_name].to_s unless input[:snapshot_name].nil?
        params[context + 'KmsKeyId'] = input[:kms_key_id].to_s unless input[:kms_key_id].nil?
        Builders::TagList.build(input[:tags], params, context: context + 'Tags' + '.Tag') unless input[:tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateUser
    class CreateUser
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateUser'
        params['Version'] = '2015-02-02'
        params[context + 'UserId'] = input[:user_id].to_s unless input[:user_id].nil?
        params[context + 'UserName'] = input[:user_name].to_s unless input[:user_name].nil?
        params[context + 'Engine'] = input[:engine].to_s unless input[:engine].nil?
        Builders::PasswordListInput.build(input[:passwords], params, context: context + 'Passwords' + '.member') unless input[:passwords].nil?
        params[context + 'AccessString'] = input[:access_string].to_s unless input[:access_string].nil?
        params[context + 'NoPasswordRequired'] = input[:no_password_required].to_s unless input[:no_password_required].nil?
        Builders::TagList.build(input[:tags], params, context: context + 'Tags' + '.Tag') unless input[:tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for PasswordListInput
    class PasswordListInput
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for CreateUserGroup
    class CreateUserGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateUserGroup'
        params['Version'] = '2015-02-02'
        params[context + 'UserGroupId'] = input[:user_group_id].to_s unless input[:user_group_id].nil?
        params[context + 'Engine'] = input[:engine].to_s unless input[:engine].nil?
        Builders::UserIdListInput.build(input[:user_ids], params, context: context + 'UserIds' + '.member') unless input[:user_ids].nil?
        Builders::TagList.build(input[:tags], params, context: context + 'Tags' + '.Tag') unless input[:tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for UserIdListInput
    class UserIdListInput
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DecreaseNodeGroupsInGlobalReplicationGroup
    class DecreaseNodeGroupsInGlobalReplicationGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DecreaseNodeGroupsInGlobalReplicationGroup'
        params['Version'] = '2015-02-02'
        params[context + 'GlobalReplicationGroupId'] = input[:global_replication_group_id].to_s unless input[:global_replication_group_id].nil?
        params[context + 'NodeGroupCount'] = input[:node_group_count].to_s unless input[:node_group_count].nil?
        Builders::GlobalNodeGroupIdList.build(input[:global_node_groups_to_remove], params, context: context + 'GlobalNodeGroupsToRemove' + '.GlobalNodeGroupId') unless input[:global_node_groups_to_remove].nil?
        Builders::GlobalNodeGroupIdList.build(input[:global_node_groups_to_retain], params, context: context + 'GlobalNodeGroupsToRetain' + '.GlobalNodeGroupId') unless input[:global_node_groups_to_retain].nil?
        params[context + 'ApplyImmediately'] = input[:apply_immediately].to_s unless input[:apply_immediately].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for GlobalNodeGroupIdList
    class GlobalNodeGroupIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DecreaseReplicaCount
    class DecreaseReplicaCount
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DecreaseReplicaCount'
        params['Version'] = '2015-02-02'
        params[context + 'ReplicationGroupId'] = input[:replication_group_id].to_s unless input[:replication_group_id].nil?
        params[context + 'NewReplicaCount'] = input[:new_replica_count].to_s unless input[:new_replica_count].nil?
        Builders::ReplicaConfigurationList.build(input[:replica_configuration], params, context: context + 'ReplicaConfiguration' + '.ConfigureShard') unless input[:replica_configuration].nil?
        Builders::RemoveReplicasList.build(input[:replicas_to_remove], params, context: context + 'ReplicasToRemove' + '.member') unless input[:replicas_to_remove].nil?
        params[context + 'ApplyImmediately'] = input[:apply_immediately].to_s unless input[:apply_immediately].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for RemoveReplicasList
    class RemoveReplicasList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for ReplicaConfigurationList
    class ReplicaConfigurationList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::ConfigureShard.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for ConfigureShard
    class ConfigureShard
      def self.build(input, params, context: nil)
        params[context + 'NodeGroupId'] = input[:node_group_id].to_s unless input[:node_group_id].nil?
        params[context + 'NewReplicaCount'] = input[:new_replica_count].to_s unless input[:new_replica_count].nil?
        Builders::PreferredAvailabilityZoneList.build(input[:preferred_availability_zones], params, context: context + 'PreferredAvailabilityZones' + '.PreferredAvailabilityZone') unless input[:preferred_availability_zones].nil?
        Builders::PreferredOutpostArnList.build(input[:preferred_outpost_arns], params, context: context + 'PreferredOutpostArns' + '.PreferredOutpostArn') unless input[:preferred_outpost_arns].nil?
      end
    end

    # Operation Builder for DeleteCacheCluster
    class DeleteCacheCluster
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteCacheCluster'
        params['Version'] = '2015-02-02'
        params[context + 'CacheClusterId'] = input[:cache_cluster_id].to_s unless input[:cache_cluster_id].nil?
        params[context + 'FinalSnapshotIdentifier'] = input[:final_snapshot_identifier].to_s unless input[:final_snapshot_identifier].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteCacheParameterGroup
    class DeleteCacheParameterGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteCacheParameterGroup'
        params['Version'] = '2015-02-02'
        params[context + 'CacheParameterGroupName'] = input[:cache_parameter_group_name].to_s unless input[:cache_parameter_group_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteCacheSecurityGroup
    class DeleteCacheSecurityGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteCacheSecurityGroup'
        params['Version'] = '2015-02-02'
        params[context + 'CacheSecurityGroupName'] = input[:cache_security_group_name].to_s unless input[:cache_security_group_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteCacheSubnetGroup
    class DeleteCacheSubnetGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteCacheSubnetGroup'
        params['Version'] = '2015-02-02'
        params[context + 'CacheSubnetGroupName'] = input[:cache_subnet_group_name].to_s unless input[:cache_subnet_group_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteGlobalReplicationGroup
    class DeleteGlobalReplicationGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteGlobalReplicationGroup'
        params['Version'] = '2015-02-02'
        params[context + 'GlobalReplicationGroupId'] = input[:global_replication_group_id].to_s unless input[:global_replication_group_id].nil?
        params[context + 'RetainPrimaryReplicationGroup'] = input[:retain_primary_replication_group].to_s unless input[:retain_primary_replication_group].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteReplicationGroup
    class DeleteReplicationGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteReplicationGroup'
        params['Version'] = '2015-02-02'
        params[context + 'ReplicationGroupId'] = input[:replication_group_id].to_s unless input[:replication_group_id].nil?
        params[context + 'RetainPrimaryCluster'] = input[:retain_primary_cluster].to_s unless input[:retain_primary_cluster].nil?
        params[context + 'FinalSnapshotIdentifier'] = input[:final_snapshot_identifier].to_s unless input[:final_snapshot_identifier].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteSnapshot
    class DeleteSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteSnapshot'
        params['Version'] = '2015-02-02'
        params[context + 'SnapshotName'] = input[:snapshot_name].to_s unless input[:snapshot_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteUser
    class DeleteUser
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteUser'
        params['Version'] = '2015-02-02'
        params[context + 'UserId'] = input[:user_id].to_s unless input[:user_id].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteUserGroup
    class DeleteUserGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteUserGroup'
        params['Version'] = '2015-02-02'
        params[context + 'UserGroupId'] = input[:user_group_id].to_s unless input[:user_group_id].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeCacheClusters
    class DescribeCacheClusters
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeCacheClusters'
        params['Version'] = '2015-02-02'
        params[context + 'CacheClusterId'] = input[:cache_cluster_id].to_s unless input[:cache_cluster_id].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'ShowCacheNodeInfo'] = input[:show_cache_node_info].to_s unless input[:show_cache_node_info].nil?
        params[context + 'ShowCacheClustersNotInReplicationGroups'] = input[:show_cache_clusters_not_in_replication_groups].to_s unless input[:show_cache_clusters_not_in_replication_groups].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeCacheEngineVersions
    class DescribeCacheEngineVersions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeCacheEngineVersions'
        params['Version'] = '2015-02-02'
        params[context + 'Engine'] = input[:engine].to_s unless input[:engine].nil?
        params[context + 'EngineVersion'] = input[:engine_version].to_s unless input[:engine_version].nil?
        params[context + 'CacheParameterGroupFamily'] = input[:cache_parameter_group_family].to_s unless input[:cache_parameter_group_family].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'DefaultOnly'] = input[:default_only].to_s unless input[:default_only].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeCacheParameterGroups
    class DescribeCacheParameterGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeCacheParameterGroups'
        params['Version'] = '2015-02-02'
        params[context + 'CacheParameterGroupName'] = input[:cache_parameter_group_name].to_s unless input[:cache_parameter_group_name].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeCacheParameters
    class DescribeCacheParameters
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeCacheParameters'
        params['Version'] = '2015-02-02'
        params[context + 'CacheParameterGroupName'] = input[:cache_parameter_group_name].to_s unless input[:cache_parameter_group_name].nil?
        params[context + 'Source'] = input[:source].to_s unless input[:source].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeCacheSecurityGroups
    class DescribeCacheSecurityGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeCacheSecurityGroups'
        params['Version'] = '2015-02-02'
        params[context + 'CacheSecurityGroupName'] = input[:cache_security_group_name].to_s unless input[:cache_security_group_name].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeCacheSubnetGroups
    class DescribeCacheSubnetGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeCacheSubnetGroups'
        params['Version'] = '2015-02-02'
        params[context + 'CacheSubnetGroupName'] = input[:cache_subnet_group_name].to_s unless input[:cache_subnet_group_name].nil?
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
        params['Version'] = '2015-02-02'
        params[context + 'CacheParameterGroupFamily'] = input[:cache_parameter_group_family].to_s unless input[:cache_parameter_group_family].nil?
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
        params['Version'] = '2015-02-02'
        params[context + 'SourceIdentifier'] = input[:source_identifier].to_s unless input[:source_identifier].nil?
        params[context + 'SourceType'] = input[:source_type].to_s unless input[:source_type].nil?
        params[context + 'StartTime'] = Hearth::TimeHelper.to_date_time(input[:start_time]) unless input[:start_time].nil?
        params[context + 'EndTime'] = Hearth::TimeHelper.to_date_time(input[:end_time]) unless input[:end_time].nil?
        params[context + 'Duration'] = input[:duration].to_s unless input[:duration].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeGlobalReplicationGroups
    class DescribeGlobalReplicationGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeGlobalReplicationGroups'
        params['Version'] = '2015-02-02'
        params[context + 'GlobalReplicationGroupId'] = input[:global_replication_group_id].to_s unless input[:global_replication_group_id].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'ShowMemberInfo'] = input[:show_member_info].to_s unless input[:show_member_info].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeReplicationGroups
    class DescribeReplicationGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeReplicationGroups'
        params['Version'] = '2015-02-02'
        params[context + 'ReplicationGroupId'] = input[:replication_group_id].to_s unless input[:replication_group_id].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeReservedCacheNodes
    class DescribeReservedCacheNodes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeReservedCacheNodes'
        params['Version'] = '2015-02-02'
        params[context + 'ReservedCacheNodeId'] = input[:reserved_cache_node_id].to_s unless input[:reserved_cache_node_id].nil?
        params[context + 'ReservedCacheNodesOfferingId'] = input[:reserved_cache_nodes_offering_id].to_s unless input[:reserved_cache_nodes_offering_id].nil?
        params[context + 'CacheNodeType'] = input[:cache_node_type].to_s unless input[:cache_node_type].nil?
        params[context + 'Duration'] = input[:duration].to_s unless input[:duration].nil?
        params[context + 'ProductDescription'] = input[:product_description].to_s unless input[:product_description].nil?
        params[context + 'OfferingType'] = input[:offering_type].to_s unless input[:offering_type].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeReservedCacheNodesOfferings
    class DescribeReservedCacheNodesOfferings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeReservedCacheNodesOfferings'
        params['Version'] = '2015-02-02'
        params[context + 'ReservedCacheNodesOfferingId'] = input[:reserved_cache_nodes_offering_id].to_s unless input[:reserved_cache_nodes_offering_id].nil?
        params[context + 'CacheNodeType'] = input[:cache_node_type].to_s unless input[:cache_node_type].nil?
        params[context + 'Duration'] = input[:duration].to_s unless input[:duration].nil?
        params[context + 'ProductDescription'] = input[:product_description].to_s unless input[:product_description].nil?
        params[context + 'OfferingType'] = input[:offering_type].to_s unless input[:offering_type].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeServiceUpdates
    class DescribeServiceUpdates
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeServiceUpdates'
        params['Version'] = '2015-02-02'
        params[context + 'ServiceUpdateName'] = input[:service_update_name].to_s unless input[:service_update_name].nil?
        Builders::ServiceUpdateStatusList.build(input[:service_update_status], params, context: context + 'ServiceUpdateStatus' + '.member') unless input[:service_update_status].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for ServiceUpdateStatusList
    class ServiceUpdateStatusList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeSnapshots
    class DescribeSnapshots
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeSnapshots'
        params['Version'] = '2015-02-02'
        params[context + 'ReplicationGroupId'] = input[:replication_group_id].to_s unless input[:replication_group_id].nil?
        params[context + 'CacheClusterId'] = input[:cache_cluster_id].to_s unless input[:cache_cluster_id].nil?
        params[context + 'SnapshotName'] = input[:snapshot_name].to_s unless input[:snapshot_name].nil?
        params[context + 'SnapshotSource'] = input[:snapshot_source].to_s unless input[:snapshot_source].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'ShowNodeGroupConfig'] = input[:show_node_group_config].to_s unless input[:show_node_group_config].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeUpdateActions
    class DescribeUpdateActions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeUpdateActions'
        params['Version'] = '2015-02-02'
        params[context + 'ServiceUpdateName'] = input[:service_update_name].to_s unless input[:service_update_name].nil?
        Builders::ReplicationGroupIdList.build(input[:replication_group_ids], params, context: context + 'ReplicationGroupIds' + '.member') unless input[:replication_group_ids].nil?
        Builders::CacheClusterIdList.build(input[:cache_cluster_ids], params, context: context + 'CacheClusterIds' + '.member') unless input[:cache_cluster_ids].nil?
        params[context + 'Engine'] = input[:engine].to_s unless input[:engine].nil?
        Builders::ServiceUpdateStatusList.build(input[:service_update_status], params, context: context + 'ServiceUpdateStatus' + '.member') unless input[:service_update_status].nil?
        Builders::TimeRangeFilter.build(input[:service_update_time_range], params, context: context + 'ServiceUpdateTimeRange' + '.') unless input[:service_update_time_range].nil?
        Builders::UpdateActionStatusList.build(input[:update_action_status], params, context: context + 'UpdateActionStatus' + '.member') unless input[:update_action_status].nil?
        params[context + 'ShowNodeLevelUpdateStatus'] = input[:show_node_level_update_status].to_s unless input[:show_node_level_update_status].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for UpdateActionStatusList
    class UpdateActionStatusList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Structure Builder for TimeRangeFilter
    class TimeRangeFilter
      def self.build(input, params, context: nil)
        params[context + 'StartTime'] = Hearth::TimeHelper.to_date_time(input[:start_time]) unless input[:start_time].nil?
        params[context + 'EndTime'] = Hearth::TimeHelper.to_date_time(input[:end_time]) unless input[:end_time].nil?
      end
    end

    # Operation Builder for DescribeUserGroups
    class DescribeUserGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeUserGroups'
        params['Version'] = '2015-02-02'
        params[context + 'UserGroupId'] = input[:user_group_id].to_s unless input[:user_group_id].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeUsers
    class DescribeUsers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeUsers'
        params['Version'] = '2015-02-02'
        params[context + 'Engine'] = input[:engine].to_s unless input[:engine].nil?
        params[context + 'UserId'] = input[:user_id].to_s unless input[:user_id].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filters' + '.member') unless input[:filters].nil?
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
        Builders::FilterValueList.build(input[:values], params, context: context + 'Values' + '.member') unless input[:values].nil?
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

    # Operation Builder for DisassociateGlobalReplicationGroup
    class DisassociateGlobalReplicationGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DisassociateGlobalReplicationGroup'
        params['Version'] = '2015-02-02'
        params[context + 'GlobalReplicationGroupId'] = input[:global_replication_group_id].to_s unless input[:global_replication_group_id].nil?
        params[context + 'ReplicationGroupId'] = input[:replication_group_id].to_s unless input[:replication_group_id].nil?
        params[context + 'ReplicationGroupRegion'] = input[:replication_group_region].to_s unless input[:replication_group_region].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for FailoverGlobalReplicationGroup
    class FailoverGlobalReplicationGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'FailoverGlobalReplicationGroup'
        params['Version'] = '2015-02-02'
        params[context + 'GlobalReplicationGroupId'] = input[:global_replication_group_id].to_s unless input[:global_replication_group_id].nil?
        params[context + 'PrimaryRegion'] = input[:primary_region].to_s unless input[:primary_region].nil?
        params[context + 'PrimaryReplicationGroupId'] = input[:primary_replication_group_id].to_s unless input[:primary_replication_group_id].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for IncreaseNodeGroupsInGlobalReplicationGroup
    class IncreaseNodeGroupsInGlobalReplicationGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'IncreaseNodeGroupsInGlobalReplicationGroup'
        params['Version'] = '2015-02-02'
        params[context + 'GlobalReplicationGroupId'] = input[:global_replication_group_id].to_s unless input[:global_replication_group_id].nil?
        params[context + 'NodeGroupCount'] = input[:node_group_count].to_s unless input[:node_group_count].nil?
        Builders::RegionalConfigurationList.build(input[:regional_configurations], params, context: context + 'RegionalConfigurations' + '.RegionalConfiguration') unless input[:regional_configurations].nil?
        params[context + 'ApplyImmediately'] = input[:apply_immediately].to_s unless input[:apply_immediately].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for RegionalConfigurationList
    class RegionalConfigurationList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::RegionalConfiguration.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for RegionalConfiguration
    class RegionalConfiguration
      def self.build(input, params, context: nil)
        params[context + 'ReplicationGroupId'] = input[:replication_group_id].to_s unless input[:replication_group_id].nil?
        params[context + 'ReplicationGroupRegion'] = input[:replication_group_region].to_s unless input[:replication_group_region].nil?
        Builders::ReshardingConfigurationList.build(input[:resharding_configuration], params, context: context + 'ReshardingConfiguration' + '.ReshardingConfiguration') unless input[:resharding_configuration].nil?
      end
    end

    # List Builder for ReshardingConfigurationList
    class ReshardingConfigurationList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::ReshardingConfiguration.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for ReshardingConfiguration
    class ReshardingConfiguration
      def self.build(input, params, context: nil)
        params[context + 'NodeGroupId'] = input[:node_group_id].to_s unless input[:node_group_id].nil?
        Builders::AvailabilityZonesList.build(input[:preferred_availability_zones], params, context: context + 'PreferredAvailabilityZones' + '.AvailabilityZone') unless input[:preferred_availability_zones].nil?
      end
    end

    # Operation Builder for IncreaseReplicaCount
    class IncreaseReplicaCount
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'IncreaseReplicaCount'
        params['Version'] = '2015-02-02'
        params[context + 'ReplicationGroupId'] = input[:replication_group_id].to_s unless input[:replication_group_id].nil?
        params[context + 'NewReplicaCount'] = input[:new_replica_count].to_s unless input[:new_replica_count].nil?
        Builders::ReplicaConfigurationList.build(input[:replica_configuration], params, context: context + 'ReplicaConfiguration' + '.ConfigureShard') unless input[:replica_configuration].nil?
        params[context + 'ApplyImmediately'] = input[:apply_immediately].to_s unless input[:apply_immediately].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListAllowedNodeTypeModifications
    class ListAllowedNodeTypeModifications
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListAllowedNodeTypeModifications'
        params['Version'] = '2015-02-02'
        params[context + 'CacheClusterId'] = input[:cache_cluster_id].to_s unless input[:cache_cluster_id].nil?
        params[context + 'ReplicationGroupId'] = input[:replication_group_id].to_s unless input[:replication_group_id].nil?
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
        params['Version'] = '2015-02-02'
        params[context + 'ResourceName'] = input[:resource_name].to_s unless input[:resource_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyCacheCluster
    class ModifyCacheCluster
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyCacheCluster'
        params['Version'] = '2015-02-02'
        params[context + 'CacheClusterId'] = input[:cache_cluster_id].to_s unless input[:cache_cluster_id].nil?
        params[context + 'NumCacheNodes'] = input[:num_cache_nodes].to_s unless input[:num_cache_nodes].nil?
        Builders::CacheNodeIdsList.build(input[:cache_node_ids_to_remove], params, context: context + 'CacheNodeIdsToRemove' + '.CacheNodeId') unless input[:cache_node_ids_to_remove].nil?
        params[context + 'AZMode'] = input[:az_mode].to_s unless input[:az_mode].nil?
        Builders::PreferredAvailabilityZoneList.build(input[:new_availability_zones], params, context: context + 'NewAvailabilityZones' + '.PreferredAvailabilityZone') unless input[:new_availability_zones].nil?
        Builders::CacheSecurityGroupNameList.build(input[:cache_security_group_names], params, context: context + 'CacheSecurityGroupNames' + '.CacheSecurityGroupName') unless input[:cache_security_group_names].nil?
        Builders::SecurityGroupIdsList.build(input[:security_group_ids], params, context: context + 'SecurityGroupIds' + '.SecurityGroupId') unless input[:security_group_ids].nil?
        params[context + 'PreferredMaintenanceWindow'] = input[:preferred_maintenance_window].to_s unless input[:preferred_maintenance_window].nil?
        params[context + 'NotificationTopicArn'] = input[:notification_topic_arn].to_s unless input[:notification_topic_arn].nil?
        params[context + 'CacheParameterGroupName'] = input[:cache_parameter_group_name].to_s unless input[:cache_parameter_group_name].nil?
        params[context + 'NotificationTopicStatus'] = input[:notification_topic_status].to_s unless input[:notification_topic_status].nil?
        params[context + 'ApplyImmediately'] = input[:apply_immediately].to_s unless input[:apply_immediately].nil?
        params[context + 'EngineVersion'] = input[:engine_version].to_s unless input[:engine_version].nil?
        params[context + 'AutoMinorVersionUpgrade'] = input[:auto_minor_version_upgrade].to_s unless input[:auto_minor_version_upgrade].nil?
        params[context + 'SnapshotRetentionLimit'] = input[:snapshot_retention_limit].to_s unless input[:snapshot_retention_limit].nil?
        params[context + 'SnapshotWindow'] = input[:snapshot_window].to_s unless input[:snapshot_window].nil?
        params[context + 'CacheNodeType'] = input[:cache_node_type].to_s unless input[:cache_node_type].nil?
        params[context + 'AuthToken'] = input[:auth_token].to_s unless input[:auth_token].nil?
        params[context + 'AuthTokenUpdateStrategy'] = input[:auth_token_update_strategy].to_s unless input[:auth_token_update_strategy].nil?
        Builders::LogDeliveryConfigurationRequestList.build(input[:log_delivery_configurations], params, context: context + 'LogDeliveryConfigurations' + '.LogDeliveryConfigurationRequest') unless input[:log_delivery_configurations].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for CacheNodeIdsList
    class CacheNodeIdsList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for ModifyCacheParameterGroup
    class ModifyCacheParameterGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyCacheParameterGroup'
        params['Version'] = '2015-02-02'
        params[context + 'CacheParameterGroupName'] = input[:cache_parameter_group_name].to_s unless input[:cache_parameter_group_name].nil?
        Builders::ParameterNameValueList.build(input[:parameter_name_values], params, context: context + 'ParameterNameValues' + '.ParameterNameValue') unless input[:parameter_name_values].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for ParameterNameValueList
    class ParameterNameValueList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::ParameterNameValue.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for ParameterNameValue
    class ParameterNameValue
      def self.build(input, params, context: nil)
        params[context + 'ParameterName'] = input[:parameter_name].to_s unless input[:parameter_name].nil?
        params[context + 'ParameterValue'] = input[:parameter_value].to_s unless input[:parameter_value].nil?
      end
    end

    # Operation Builder for ModifyCacheSubnetGroup
    class ModifyCacheSubnetGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyCacheSubnetGroup'
        params['Version'] = '2015-02-02'
        params[context + 'CacheSubnetGroupName'] = input[:cache_subnet_group_name].to_s unless input[:cache_subnet_group_name].nil?
        params[context + 'CacheSubnetGroupDescription'] = input[:cache_subnet_group_description].to_s unless input[:cache_subnet_group_description].nil?
        Builders::SubnetIdentifierList.build(input[:subnet_ids], params, context: context + 'SubnetIds' + '.SubnetIdentifier') unless input[:subnet_ids].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyGlobalReplicationGroup
    class ModifyGlobalReplicationGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyGlobalReplicationGroup'
        params['Version'] = '2015-02-02'
        params[context + 'GlobalReplicationGroupId'] = input[:global_replication_group_id].to_s unless input[:global_replication_group_id].nil?
        params[context + 'ApplyImmediately'] = input[:apply_immediately].to_s unless input[:apply_immediately].nil?
        params[context + 'CacheNodeType'] = input[:cache_node_type].to_s unless input[:cache_node_type].nil?
        params[context + 'EngineVersion'] = input[:engine_version].to_s unless input[:engine_version].nil?
        params[context + 'CacheParameterGroupName'] = input[:cache_parameter_group_name].to_s unless input[:cache_parameter_group_name].nil?
        params[context + 'GlobalReplicationGroupDescription'] = input[:global_replication_group_description].to_s unless input[:global_replication_group_description].nil?
        params[context + 'AutomaticFailoverEnabled'] = input[:automatic_failover_enabled].to_s unless input[:automatic_failover_enabled].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyReplicationGroup
    class ModifyReplicationGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyReplicationGroup'
        params['Version'] = '2015-02-02'
        params[context + 'ReplicationGroupId'] = input[:replication_group_id].to_s unless input[:replication_group_id].nil?
        params[context + 'ReplicationGroupDescription'] = input[:replication_group_description].to_s unless input[:replication_group_description].nil?
        params[context + 'PrimaryClusterId'] = input[:primary_cluster_id].to_s unless input[:primary_cluster_id].nil?
        params[context + 'SnapshottingClusterId'] = input[:snapshotting_cluster_id].to_s unless input[:snapshotting_cluster_id].nil?
        params[context + 'AutomaticFailoverEnabled'] = input[:automatic_failover_enabled].to_s unless input[:automatic_failover_enabled].nil?
        params[context + 'MultiAZEnabled'] = input[:multi_az_enabled].to_s unless input[:multi_az_enabled].nil?
        params[context + 'NodeGroupId'] = input[:node_group_id].to_s unless input[:node_group_id].nil?
        Builders::CacheSecurityGroupNameList.build(input[:cache_security_group_names], params, context: context + 'CacheSecurityGroupNames' + '.CacheSecurityGroupName') unless input[:cache_security_group_names].nil?
        Builders::SecurityGroupIdsList.build(input[:security_group_ids], params, context: context + 'SecurityGroupIds' + '.SecurityGroupId') unless input[:security_group_ids].nil?
        params[context + 'PreferredMaintenanceWindow'] = input[:preferred_maintenance_window].to_s unless input[:preferred_maintenance_window].nil?
        params[context + 'NotificationTopicArn'] = input[:notification_topic_arn].to_s unless input[:notification_topic_arn].nil?
        params[context + 'CacheParameterGroupName'] = input[:cache_parameter_group_name].to_s unless input[:cache_parameter_group_name].nil?
        params[context + 'NotificationTopicStatus'] = input[:notification_topic_status].to_s unless input[:notification_topic_status].nil?
        params[context + 'ApplyImmediately'] = input[:apply_immediately].to_s unless input[:apply_immediately].nil?
        params[context + 'EngineVersion'] = input[:engine_version].to_s unless input[:engine_version].nil?
        params[context + 'AutoMinorVersionUpgrade'] = input[:auto_minor_version_upgrade].to_s unless input[:auto_minor_version_upgrade].nil?
        params[context + 'SnapshotRetentionLimit'] = input[:snapshot_retention_limit].to_s unless input[:snapshot_retention_limit].nil?
        params[context + 'SnapshotWindow'] = input[:snapshot_window].to_s unless input[:snapshot_window].nil?
        params[context + 'CacheNodeType'] = input[:cache_node_type].to_s unless input[:cache_node_type].nil?
        params[context + 'AuthToken'] = input[:auth_token].to_s unless input[:auth_token].nil?
        params[context + 'AuthTokenUpdateStrategy'] = input[:auth_token_update_strategy].to_s unless input[:auth_token_update_strategy].nil?
        Builders::UserGroupIdList.build(input[:user_group_ids_to_add], params, context: context + 'UserGroupIdsToAdd' + '.member') unless input[:user_group_ids_to_add].nil?
        Builders::UserGroupIdList.build(input[:user_group_ids_to_remove], params, context: context + 'UserGroupIdsToRemove' + '.member') unless input[:user_group_ids_to_remove].nil?
        params[context + 'RemoveUserGroups'] = input[:remove_user_groups].to_s unless input[:remove_user_groups].nil?
        Builders::LogDeliveryConfigurationRequestList.build(input[:log_delivery_configurations], params, context: context + 'LogDeliveryConfigurations' + '.LogDeliveryConfigurationRequest') unless input[:log_delivery_configurations].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for UserGroupIdList
    class UserGroupIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for ModifyReplicationGroupShardConfiguration
    class ModifyReplicationGroupShardConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyReplicationGroupShardConfiguration'
        params['Version'] = '2015-02-02'
        params[context + 'ReplicationGroupId'] = input[:replication_group_id].to_s unless input[:replication_group_id].nil?
        params[context + 'NodeGroupCount'] = input[:node_group_count].to_s unless input[:node_group_count].nil?
        params[context + 'ApplyImmediately'] = input[:apply_immediately].to_s unless input[:apply_immediately].nil?
        Builders::ReshardingConfigurationList.build(input[:resharding_configuration], params, context: context + 'ReshardingConfiguration' + '.ReshardingConfiguration') unless input[:resharding_configuration].nil?
        Builders::NodeGroupsToRemoveList.build(input[:node_groups_to_remove], params, context: context + 'NodeGroupsToRemove' + '.NodeGroupToRemove') unless input[:node_groups_to_remove].nil?
        Builders::NodeGroupsToRetainList.build(input[:node_groups_to_retain], params, context: context + 'NodeGroupsToRetain' + '.NodeGroupToRetain') unless input[:node_groups_to_retain].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for NodeGroupsToRetainList
    class NodeGroupsToRetainList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for NodeGroupsToRemoveList
    class NodeGroupsToRemoveList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for ModifyUser
    class ModifyUser
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyUser'
        params['Version'] = '2015-02-02'
        params[context + 'UserId'] = input[:user_id].to_s unless input[:user_id].nil?
        params[context + 'AccessString'] = input[:access_string].to_s unless input[:access_string].nil?
        params[context + 'AppendAccessString'] = input[:append_access_string].to_s unless input[:append_access_string].nil?
        Builders::PasswordListInput.build(input[:passwords], params, context: context + 'Passwords' + '.member') unless input[:passwords].nil?
        params[context + 'NoPasswordRequired'] = input[:no_password_required].to_s unless input[:no_password_required].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyUserGroup
    class ModifyUserGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyUserGroup'
        params['Version'] = '2015-02-02'
        params[context + 'UserGroupId'] = input[:user_group_id].to_s unless input[:user_group_id].nil?
        Builders::UserIdListInput.build(input[:user_ids_to_add], params, context: context + 'UserIdsToAdd' + '.member') unless input[:user_ids_to_add].nil?
        Builders::UserIdListInput.build(input[:user_ids_to_remove], params, context: context + 'UserIdsToRemove' + '.member') unless input[:user_ids_to_remove].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for PurchaseReservedCacheNodesOffering
    class PurchaseReservedCacheNodesOffering
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'PurchaseReservedCacheNodesOffering'
        params['Version'] = '2015-02-02'
        params[context + 'ReservedCacheNodesOfferingId'] = input[:reserved_cache_nodes_offering_id].to_s unless input[:reserved_cache_nodes_offering_id].nil?
        params[context + 'ReservedCacheNodeId'] = input[:reserved_cache_node_id].to_s unless input[:reserved_cache_node_id].nil?
        params[context + 'CacheNodeCount'] = input[:cache_node_count].to_s unless input[:cache_node_count].nil?
        Builders::TagList.build(input[:tags], params, context: context + 'Tags' + '.Tag') unless input[:tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for RebalanceSlotsInGlobalReplicationGroup
    class RebalanceSlotsInGlobalReplicationGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RebalanceSlotsInGlobalReplicationGroup'
        params['Version'] = '2015-02-02'
        params[context + 'GlobalReplicationGroupId'] = input[:global_replication_group_id].to_s unless input[:global_replication_group_id].nil?
        params[context + 'ApplyImmediately'] = input[:apply_immediately].to_s unless input[:apply_immediately].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for RebootCacheCluster
    class RebootCacheCluster
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RebootCacheCluster'
        params['Version'] = '2015-02-02'
        params[context + 'CacheClusterId'] = input[:cache_cluster_id].to_s unless input[:cache_cluster_id].nil?
        Builders::CacheNodeIdsList.build(input[:cache_node_ids_to_reboot], params, context: context + 'CacheNodeIdsToReboot' + '.CacheNodeId') unless input[:cache_node_ids_to_reboot].nil?
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
        params['Version'] = '2015-02-02'
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

    # Operation Builder for ResetCacheParameterGroup
    class ResetCacheParameterGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ResetCacheParameterGroup'
        params['Version'] = '2015-02-02'
        params[context + 'CacheParameterGroupName'] = input[:cache_parameter_group_name].to_s unless input[:cache_parameter_group_name].nil?
        params[context + 'ResetAllParameters'] = input[:reset_all_parameters].to_s unless input[:reset_all_parameters].nil?
        Builders::ParameterNameValueList.build(input[:parameter_name_values], params, context: context + 'ParameterNameValues' + '.ParameterNameValue') unless input[:parameter_name_values].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for RevokeCacheSecurityGroupIngress
    class RevokeCacheSecurityGroupIngress
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RevokeCacheSecurityGroupIngress'
        params['Version'] = '2015-02-02'
        params[context + 'CacheSecurityGroupName'] = input[:cache_security_group_name].to_s unless input[:cache_security_group_name].nil?
        params[context + 'EC2SecurityGroupName'] = input[:ec2_security_group_name].to_s unless input[:ec2_security_group_name].nil?
        params[context + 'EC2SecurityGroupOwnerId'] = input[:ec2_security_group_owner_id].to_s unless input[:ec2_security_group_owner_id].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for StartMigration
    class StartMigration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'StartMigration'
        params['Version'] = '2015-02-02'
        params[context + 'ReplicationGroupId'] = input[:replication_group_id].to_s unless input[:replication_group_id].nil?
        Builders::CustomerNodeEndpointList.build(input[:customer_node_endpoint_list], params, context: context + 'CustomerNodeEndpointList' + '.member') unless input[:customer_node_endpoint_list].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for CustomerNodeEndpointList
    class CustomerNodeEndpointList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::CustomerNodeEndpoint.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for CustomerNodeEndpoint
    class CustomerNodeEndpoint
      def self.build(input, params, context: nil)
        params[context + 'Address'] = input[:address].to_s unless input[:address].nil?
        params[context + 'Port'] = input[:port].to_s unless input[:port].nil?
      end
    end

    # Operation Builder for TestFailover
    class TestFailover
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'TestFailover'
        params['Version'] = '2015-02-02'
        params[context + 'ReplicationGroupId'] = input[:replication_group_id].to_s unless input[:replication_group_id].nil?
        params[context + 'NodeGroupId'] = input[:node_group_id].to_s unless input[:node_group_id].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end
  end
end
