# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ElastiCache
  module Parsers

    # Operation Parser for AddTagsToResource
    class AddTagsToResource
      def self.parse(http_resp)
        data = Types::AddTagsToResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('AddTagsToResourceResult')
        xml.at('TagList') do |node|
          children = node.children('Tag')
          data.tag_list = TagList.parse(children)
        end
        data
      end
    end

    class TagList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Tag.parse(node)
        end
        data
      end
    end

    class Tag
      def self.parse(xml)
        data = Types::Tag.new
        xml.at('Key') do |node|
          data.key = (node.text || '')
        end
        xml.at('Value') do |node|
          data.value = (node.text || '')
        end
        return data
      end
    end

    # Error Parser for CacheSecurityGroupNotFoundFault
    class CacheSecurityGroupNotFoundFault
      def self.parse(http_resp)
        data = Types::CacheSecurityGroupNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidARNFault
    class InvalidARNFault
      def self.parse(http_resp)
        data = Types::InvalidARNFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for CacheClusterNotFoundFault
    class CacheClusterNotFoundFault
      def self.parse(http_resp)
        data = Types::CacheClusterNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for SnapshotNotFoundFault
    class SnapshotNotFoundFault
      def self.parse(http_resp)
        data = Types::SnapshotNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for UserNotFoundFault
    class UserNotFoundFault
      def self.parse(http_resp)
        data = Types::UserNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for CacheSubnetGroupNotFoundFault
    class CacheSubnetGroupNotFoundFault
      def self.parse(http_resp)
        data = Types::CacheSubnetGroupNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidReplicationGroupStateFault
    class InvalidReplicationGroupStateFault
      def self.parse(http_resp)
        data = Types::InvalidReplicationGroupStateFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for UserGroupNotFoundFault
    class UserGroupNotFoundFault
      def self.parse(http_resp)
        data = Types::UserGroupNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for ReservedCacheNodeNotFoundFault
    class ReservedCacheNodeNotFoundFault
      def self.parse(http_resp)
        data = Types::ReservedCacheNodeNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for CacheParameterGroupNotFoundFault
    class CacheParameterGroupNotFoundFault
      def self.parse(http_resp)
        data = Types::CacheParameterGroupNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TagQuotaPerResourceExceeded
    class TagQuotaPerResourceExceeded
      def self.parse(http_resp)
        data = Types::TagQuotaPerResourceExceeded.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for ReplicationGroupNotFoundFault
    class ReplicationGroupNotFoundFault
      def self.parse(http_resp)
        data = Types::ReplicationGroupNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for AuthorizeCacheSecurityGroupIngress
    class AuthorizeCacheSecurityGroupIngress
      def self.parse(http_resp)
        data = Types::AuthorizeCacheSecurityGroupIngressOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('AuthorizeCacheSecurityGroupIngressResult')
        xml.at('CacheSecurityGroup') do |node|
          data.cache_security_group = CacheSecurityGroup.parse(node)
        end
        data
      end
    end

    class CacheSecurityGroup
      def self.parse(xml)
        data = Types::CacheSecurityGroup.new
        xml.at('OwnerId') do |node|
          data.owner_id = (node.text || '')
        end
        xml.at('CacheSecurityGroupName') do |node|
          data.cache_security_group_name = (node.text || '')
        end
        xml.at('Description') do |node|
          data.description = (node.text || '')
        end
        xml.at('EC2SecurityGroups') do |node|
          children = node.children('EC2SecurityGroup')
          data.ec2_security_groups = EC2SecurityGroupList.parse(children)
        end
        xml.at('ARN') do |node|
          data.arn = (node.text || '')
        end
        return data
      end
    end

    class EC2SecurityGroupList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << EC2SecurityGroup.parse(node)
        end
        data
      end
    end

    class EC2SecurityGroup
      def self.parse(xml)
        data = Types::EC2SecurityGroup.new
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('EC2SecurityGroupName') do |node|
          data.ec2_security_group_name = (node.text || '')
        end
        xml.at('EC2SecurityGroupOwnerId') do |node|
          data.ec2_security_group_owner_id = (node.text || '')
        end
        return data
      end
    end

    # Error Parser for InvalidParameterValueException
    class InvalidParameterValueException
      def self.parse(http_resp)
        data = Types::InvalidParameterValueException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidCacheSecurityGroupStateFault
    class InvalidCacheSecurityGroupStateFault
      def self.parse(http_resp)
        data = Types::InvalidCacheSecurityGroupStateFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for AuthorizationAlreadyExistsFault
    class AuthorizationAlreadyExistsFault
      def self.parse(http_resp)
        data = Types::AuthorizationAlreadyExistsFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidParameterCombinationException
    class InvalidParameterCombinationException
      def self.parse(http_resp)
        data = Types::InvalidParameterCombinationException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for BatchApplyUpdateAction
    class BatchApplyUpdateAction
      def self.parse(http_resp)
        data = Types::BatchApplyUpdateActionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('BatchApplyUpdateActionResult')
        xml.at('ProcessedUpdateActions') do |node|
          children = node.children('ProcessedUpdateAction')
          data.processed_update_actions = ProcessedUpdateActionList.parse(children)
        end
        xml.at('UnprocessedUpdateActions') do |node|
          children = node.children('UnprocessedUpdateAction')
          data.unprocessed_update_actions = UnprocessedUpdateActionList.parse(children)
        end
        data
      end
    end

    class UnprocessedUpdateActionList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << UnprocessedUpdateAction.parse(node)
        end
        data
      end
    end

    class UnprocessedUpdateAction
      def self.parse(xml)
        data = Types::UnprocessedUpdateAction.new
        xml.at('ReplicationGroupId') do |node|
          data.replication_group_id = (node.text || '')
        end
        xml.at('CacheClusterId') do |node|
          data.cache_cluster_id = (node.text || '')
        end
        xml.at('ServiceUpdateName') do |node|
          data.service_update_name = (node.text || '')
        end
        xml.at('ErrorType') do |node|
          data.error_type = (node.text || '')
        end
        xml.at('ErrorMessage') do |node|
          data.error_message = (node.text || '')
        end
        return data
      end
    end

    class ProcessedUpdateActionList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << ProcessedUpdateAction.parse(node)
        end
        data
      end
    end

    class ProcessedUpdateAction
      def self.parse(xml)
        data = Types::ProcessedUpdateAction.new
        xml.at('ReplicationGroupId') do |node|
          data.replication_group_id = (node.text || '')
        end
        xml.at('CacheClusterId') do |node|
          data.cache_cluster_id = (node.text || '')
        end
        xml.at('ServiceUpdateName') do |node|
          data.service_update_name = (node.text || '')
        end
        xml.at('UpdateActionStatus') do |node|
          data.update_action_status = (node.text || '')
        end
        return data
      end
    end

    # Error Parser for ServiceUpdateNotFoundFault
    class ServiceUpdateNotFoundFault
      def self.parse(http_resp)
        data = Types::ServiceUpdateNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for BatchStopUpdateAction
    class BatchStopUpdateAction
      def self.parse(http_resp)
        data = Types::BatchStopUpdateActionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('BatchStopUpdateActionResult')
        xml.at('ProcessedUpdateActions') do |node|
          children = node.children('ProcessedUpdateAction')
          data.processed_update_actions = ProcessedUpdateActionList.parse(children)
        end
        xml.at('UnprocessedUpdateActions') do |node|
          children = node.children('UnprocessedUpdateAction')
          data.unprocessed_update_actions = UnprocessedUpdateActionList.parse(children)
        end
        data
      end
    end

    # Operation Parser for CompleteMigration
    class CompleteMigration
      def self.parse(http_resp)
        data = Types::CompleteMigrationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CompleteMigrationResult')
        xml.at('ReplicationGroup') do |node|
          data.replication_group = ReplicationGroup.parse(node)
        end
        data
      end
    end

    class ReplicationGroup
      def self.parse(xml)
        data = Types::ReplicationGroup.new
        xml.at('ReplicationGroupId') do |node|
          data.replication_group_id = (node.text || '')
        end
        xml.at('Description') do |node|
          data.description = (node.text || '')
        end
        xml.at('GlobalReplicationGroupInfo') do |node|
          data.global_replication_group_info = GlobalReplicationGroupInfo.parse(node)
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('PendingModifiedValues') do |node|
          data.pending_modified_values = ReplicationGroupPendingModifiedValues.parse(node)
        end
        xml.at('MemberClusters') do |node|
          children = node.children('ClusterId')
          data.member_clusters = ClusterIdList.parse(children)
        end
        xml.at('NodeGroups') do |node|
          children = node.children('NodeGroup')
          data.node_groups = NodeGroupList.parse(children)
        end
        xml.at('SnapshottingClusterId') do |node|
          data.snapshotting_cluster_id = (node.text || '')
        end
        xml.at('AutomaticFailover') do |node|
          data.automatic_failover = (node.text || '')
        end
        xml.at('MultiAZ') do |node|
          data.multi_az = (node.text || '')
        end
        xml.at('ConfigurationEndpoint') do |node|
          data.configuration_endpoint = Endpoint.parse(node)
        end
        xml.at('SnapshotRetentionLimit') do |node|
          data.snapshot_retention_limit = node.text&.to_i
        end
        xml.at('SnapshotWindow') do |node|
          data.snapshot_window = (node.text || '')
        end
        xml.at('ClusterEnabled') do |node|
          data.cluster_enabled = (node.text == 'true')
        end
        xml.at('CacheNodeType') do |node|
          data.cache_node_type = (node.text || '')
        end
        xml.at('AuthTokenEnabled') do |node|
          data.auth_token_enabled = (node.text == 'true')
        end
        xml.at('AuthTokenLastModifiedDate') do |node|
          data.auth_token_last_modified_date = Time.parse(node.text) if node.text
        end
        xml.at('TransitEncryptionEnabled') do |node|
          data.transit_encryption_enabled = (node.text == 'true')
        end
        xml.at('AtRestEncryptionEnabled') do |node|
          data.at_rest_encryption_enabled = (node.text == 'true')
        end
        xml.at('MemberClustersOutpostArns') do |node|
          children = node.children('ReplicationGroupOutpostArn')
          data.member_clusters_outpost_arns = ReplicationGroupOutpostArnList.parse(children)
        end
        xml.at('KmsKeyId') do |node|
          data.kms_key_id = (node.text || '')
        end
        xml.at('ARN') do |node|
          data.arn = (node.text || '')
        end
        xml.at('UserGroupIds') do |node|
          children = node.children('member')
          data.user_group_ids = UserGroupIdList.parse(children)
        end
        xml.at('LogDeliveryConfigurations') do |node|
          children = node.children('LogDeliveryConfiguration')
          data.log_delivery_configurations = LogDeliveryConfigurationList.parse(children)
        end
        xml.at('ReplicationGroupCreateTime') do |node|
          data.replication_group_create_time = Time.parse(node.text) if node.text
        end
        xml.at('DataTiering') do |node|
          data.data_tiering = (node.text || '')
        end
        return data
      end
    end

    class LogDeliveryConfigurationList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << LogDeliveryConfiguration.parse(node)
        end
        data
      end
    end

    class LogDeliveryConfiguration
      def self.parse(xml)
        data = Types::LogDeliveryConfiguration.new
        xml.at('LogType') do |node|
          data.log_type = (node.text || '')
        end
        xml.at('DestinationType') do |node|
          data.destination_type = (node.text || '')
        end
        xml.at('DestinationDetails') do |node|
          data.destination_details = DestinationDetails.parse(node)
        end
        xml.at('LogFormat') do |node|
          data.log_format = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        return data
      end
    end

    class DestinationDetails
      def self.parse(xml)
        data = Types::DestinationDetails.new
        xml.at('CloudWatchLogsDetails') do |node|
          data.cloud_watch_logs_details = CloudWatchLogsDestinationDetails.parse(node)
        end
        xml.at('KinesisFirehoseDetails') do |node|
          data.kinesis_firehose_details = KinesisFirehoseDestinationDetails.parse(node)
        end
        return data
      end
    end

    class KinesisFirehoseDestinationDetails
      def self.parse(xml)
        data = Types::KinesisFirehoseDestinationDetails.new
        xml.at('DeliveryStream') do |node|
          data.delivery_stream = (node.text || '')
        end
        return data
      end
    end

    class CloudWatchLogsDestinationDetails
      def self.parse(xml)
        data = Types::CloudWatchLogsDestinationDetails.new
        xml.at('LogGroup') do |node|
          data.log_group = (node.text || '')
        end
        return data
      end
    end

    class UserGroupIdList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class ReplicationGroupOutpostArnList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class Endpoint
      def self.parse(xml)
        data = Types::Endpoint.new
        xml.at('Address') do |node|
          data.address = (node.text || '')
        end
        xml.at('Port') do |node|
          data.port = node.text&.to_i
        end
        return data
      end
    end

    class NodeGroupList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << NodeGroup.parse(node)
        end
        data
      end
    end

    class NodeGroup
      def self.parse(xml)
        data = Types::NodeGroup.new
        xml.at('NodeGroupId') do |node|
          data.node_group_id = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('PrimaryEndpoint') do |node|
          data.primary_endpoint = Endpoint.parse(node)
        end
        xml.at('ReaderEndpoint') do |node|
          data.reader_endpoint = Endpoint.parse(node)
        end
        xml.at('Slots') do |node|
          data.slots = (node.text || '')
        end
        xml.at('NodeGroupMembers') do |node|
          children = node.children('NodeGroupMember')
          data.node_group_members = NodeGroupMemberList.parse(children)
        end
        return data
      end
    end

    class NodeGroupMemberList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << NodeGroupMember.parse(node)
        end
        data
      end
    end

    class NodeGroupMember
      def self.parse(xml)
        data = Types::NodeGroupMember.new
        xml.at('CacheClusterId') do |node|
          data.cache_cluster_id = (node.text || '')
        end
        xml.at('CacheNodeId') do |node|
          data.cache_node_id = (node.text || '')
        end
        xml.at('ReadEndpoint') do |node|
          data.read_endpoint = Endpoint.parse(node)
        end
        xml.at('PreferredAvailabilityZone') do |node|
          data.preferred_availability_zone = (node.text || '')
        end
        xml.at('PreferredOutpostArn') do |node|
          data.preferred_outpost_arn = (node.text || '')
        end
        xml.at('CurrentRole') do |node|
          data.current_role = (node.text || '')
        end
        return data
      end
    end

    class ClusterIdList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class ReplicationGroupPendingModifiedValues
      def self.parse(xml)
        data = Types::ReplicationGroupPendingModifiedValues.new
        xml.at('PrimaryClusterId') do |node|
          data.primary_cluster_id = (node.text || '')
        end
        xml.at('AutomaticFailoverStatus') do |node|
          data.automatic_failover_status = (node.text || '')
        end
        xml.at('Resharding') do |node|
          data.resharding = ReshardingStatus.parse(node)
        end
        xml.at('AuthTokenStatus') do |node|
          data.auth_token_status = (node.text || '')
        end
        xml.at('UserGroups') do |node|
          data.user_groups = UserGroupsUpdateStatus.parse(node)
        end
        xml.at('LogDeliveryConfigurations') do |node|
          children = node.children('member')
          data.log_delivery_configurations = PendingLogDeliveryConfigurationList.parse(children)
        end
        return data
      end
    end

    class PendingLogDeliveryConfigurationList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << PendingLogDeliveryConfiguration.parse(node)
        end
        data
      end
    end

    class PendingLogDeliveryConfiguration
      def self.parse(xml)
        data = Types::PendingLogDeliveryConfiguration.new
        xml.at('LogType') do |node|
          data.log_type = (node.text || '')
        end
        xml.at('DestinationType') do |node|
          data.destination_type = (node.text || '')
        end
        xml.at('DestinationDetails') do |node|
          data.destination_details = DestinationDetails.parse(node)
        end
        xml.at('LogFormat') do |node|
          data.log_format = (node.text || '')
        end
        return data
      end
    end

    class UserGroupsUpdateStatus
      def self.parse(xml)
        data = Types::UserGroupsUpdateStatus.new
        xml.at('UserGroupIdsToAdd') do |node|
          children = node.children('member')
          data.user_group_ids_to_add = UserGroupIdList.parse(children)
        end
        xml.at('UserGroupIdsToRemove') do |node|
          children = node.children('member')
          data.user_group_ids_to_remove = UserGroupIdList.parse(children)
        end
        return data
      end
    end

    class ReshardingStatus
      def self.parse(xml)
        data = Types::ReshardingStatus.new
        xml.at('SlotMigration') do |node|
          data.slot_migration = SlotMigration.parse(node)
        end
        return data
      end
    end

    class SlotMigration
      def self.parse(xml)
        data = Types::SlotMigration.new
        xml.at('ProgressPercentage') do |node|
          data.progress_percentage = Hearth::NumberHelper.deserialize(node.text)
        end
        return data
      end
    end

    class GlobalReplicationGroupInfo
      def self.parse(xml)
        data = Types::GlobalReplicationGroupInfo.new
        xml.at('GlobalReplicationGroupId') do |node|
          data.global_replication_group_id = (node.text || '')
        end
        xml.at('GlobalReplicationGroupMemberRole') do |node|
          data.global_replication_group_member_role = (node.text || '')
        end
        return data
      end
    end

    # Error Parser for ReplicationGroupNotUnderMigrationFault
    class ReplicationGroupNotUnderMigrationFault
      def self.parse(http_resp)
        data = Types::ReplicationGroupNotUnderMigrationFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CopySnapshot
    class CopySnapshot
      def self.parse(http_resp)
        data = Types::CopySnapshotOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CopySnapshotResult')
        xml.at('Snapshot') do |node|
          data.snapshot = Snapshot.parse(node)
        end
        data
      end
    end

    class Snapshot
      def self.parse(xml)
        data = Types::Snapshot.new
        xml.at('SnapshotName') do |node|
          data.snapshot_name = (node.text || '')
        end
        xml.at('ReplicationGroupId') do |node|
          data.replication_group_id = (node.text || '')
        end
        xml.at('ReplicationGroupDescription') do |node|
          data.replication_group_description = (node.text || '')
        end
        xml.at('CacheClusterId') do |node|
          data.cache_cluster_id = (node.text || '')
        end
        xml.at('SnapshotStatus') do |node|
          data.snapshot_status = (node.text || '')
        end
        xml.at('SnapshotSource') do |node|
          data.snapshot_source = (node.text || '')
        end
        xml.at('CacheNodeType') do |node|
          data.cache_node_type = (node.text || '')
        end
        xml.at('Engine') do |node|
          data.engine = (node.text || '')
        end
        xml.at('EngineVersion') do |node|
          data.engine_version = (node.text || '')
        end
        xml.at('NumCacheNodes') do |node|
          data.num_cache_nodes = node.text&.to_i
        end
        xml.at('PreferredAvailabilityZone') do |node|
          data.preferred_availability_zone = (node.text || '')
        end
        xml.at('PreferredOutpostArn') do |node|
          data.preferred_outpost_arn = (node.text || '')
        end
        xml.at('CacheClusterCreateTime') do |node|
          data.cache_cluster_create_time = Time.parse(node.text) if node.text
        end
        xml.at('PreferredMaintenanceWindow') do |node|
          data.preferred_maintenance_window = (node.text || '')
        end
        xml.at('TopicArn') do |node|
          data.topic_arn = (node.text || '')
        end
        xml.at('Port') do |node|
          data.port = node.text&.to_i
        end
        xml.at('CacheParameterGroupName') do |node|
          data.cache_parameter_group_name = (node.text || '')
        end
        xml.at('CacheSubnetGroupName') do |node|
          data.cache_subnet_group_name = (node.text || '')
        end
        xml.at('VpcId') do |node|
          data.vpc_id = (node.text || '')
        end
        xml.at('AutoMinorVersionUpgrade') do |node|
          data.auto_minor_version_upgrade = (node.text == 'true')
        end
        xml.at('SnapshotRetentionLimit') do |node|
          data.snapshot_retention_limit = node.text&.to_i
        end
        xml.at('SnapshotWindow') do |node|
          data.snapshot_window = (node.text || '')
        end
        xml.at('NumNodeGroups') do |node|
          data.num_node_groups = node.text&.to_i
        end
        xml.at('AutomaticFailover') do |node|
          data.automatic_failover = (node.text || '')
        end
        xml.at('NodeSnapshots') do |node|
          children = node.children('NodeSnapshot')
          data.node_snapshots = NodeSnapshotList.parse(children)
        end
        xml.at('KmsKeyId') do |node|
          data.kms_key_id = (node.text || '')
        end
        xml.at('ARN') do |node|
          data.arn = (node.text || '')
        end
        xml.at('DataTiering') do |node|
          data.data_tiering = (node.text || '')
        end
        return data
      end
    end

    class NodeSnapshotList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << NodeSnapshot.parse(node)
        end
        data
      end
    end

    class NodeSnapshot
      def self.parse(xml)
        data = Types::NodeSnapshot.new
        xml.at('CacheClusterId') do |node|
          data.cache_cluster_id = (node.text || '')
        end
        xml.at('NodeGroupId') do |node|
          data.node_group_id = (node.text || '')
        end
        xml.at('CacheNodeId') do |node|
          data.cache_node_id = (node.text || '')
        end
        xml.at('NodeGroupConfiguration') do |node|
          data.node_group_configuration = NodeGroupConfiguration.parse(node)
        end
        xml.at('CacheSize') do |node|
          data.cache_size = (node.text || '')
        end
        xml.at('CacheNodeCreateTime') do |node|
          data.cache_node_create_time = Time.parse(node.text) if node.text
        end
        xml.at('SnapshotCreateTime') do |node|
          data.snapshot_create_time = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    class NodeGroupConfiguration
      def self.parse(xml)
        data = Types::NodeGroupConfiguration.new
        xml.at('NodeGroupId') do |node|
          data.node_group_id = (node.text || '')
        end
        xml.at('Slots') do |node|
          data.slots = (node.text || '')
        end
        xml.at('ReplicaCount') do |node|
          data.replica_count = node.text&.to_i
        end
        xml.at('PrimaryAvailabilityZone') do |node|
          data.primary_availability_zone = (node.text || '')
        end
        xml.at('ReplicaAvailabilityZones') do |node|
          children = node.children('AvailabilityZone')
          data.replica_availability_zones = AvailabilityZonesList.parse(children)
        end
        xml.at('PrimaryOutpostArn') do |node|
          data.primary_outpost_arn = (node.text || '')
        end
        xml.at('ReplicaOutpostArns') do |node|
          children = node.children('OutpostArn')
          data.replica_outpost_arns = OutpostArnsList.parse(children)
        end
        return data
      end
    end

    class OutpostArnsList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class AvailabilityZonesList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Error Parser for SnapshotAlreadyExistsFault
    class SnapshotAlreadyExistsFault
      def self.parse(http_resp)
        data = Types::SnapshotAlreadyExistsFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidSnapshotStateFault
    class InvalidSnapshotStateFault
      def self.parse(http_resp)
        data = Types::InvalidSnapshotStateFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for SnapshotQuotaExceededFault
    class SnapshotQuotaExceededFault
      def self.parse(http_resp)
        data = Types::SnapshotQuotaExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateCacheCluster
    class CreateCacheCluster
      def self.parse(http_resp)
        data = Types::CreateCacheClusterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateCacheClusterResult')
        xml.at('CacheCluster') do |node|
          data.cache_cluster = CacheCluster.parse(node)
        end
        data
      end
    end

    class CacheCluster
      def self.parse(xml)
        data = Types::CacheCluster.new
        xml.at('CacheClusterId') do |node|
          data.cache_cluster_id = (node.text || '')
        end
        xml.at('ConfigurationEndpoint') do |node|
          data.configuration_endpoint = Endpoint.parse(node)
        end
        xml.at('ClientDownloadLandingPage') do |node|
          data.client_download_landing_page = (node.text || '')
        end
        xml.at('CacheNodeType') do |node|
          data.cache_node_type = (node.text || '')
        end
        xml.at('Engine') do |node|
          data.engine = (node.text || '')
        end
        xml.at('EngineVersion') do |node|
          data.engine_version = (node.text || '')
        end
        xml.at('CacheClusterStatus') do |node|
          data.cache_cluster_status = (node.text || '')
        end
        xml.at('NumCacheNodes') do |node|
          data.num_cache_nodes = node.text&.to_i
        end
        xml.at('PreferredAvailabilityZone') do |node|
          data.preferred_availability_zone = (node.text || '')
        end
        xml.at('PreferredOutpostArn') do |node|
          data.preferred_outpost_arn = (node.text || '')
        end
        xml.at('CacheClusterCreateTime') do |node|
          data.cache_cluster_create_time = Time.parse(node.text) if node.text
        end
        xml.at('PreferredMaintenanceWindow') do |node|
          data.preferred_maintenance_window = (node.text || '')
        end
        xml.at('PendingModifiedValues') do |node|
          data.pending_modified_values = PendingModifiedValues.parse(node)
        end
        xml.at('NotificationConfiguration') do |node|
          data.notification_configuration = NotificationConfiguration.parse(node)
        end
        xml.at('CacheSecurityGroups') do |node|
          children = node.children('CacheSecurityGroup')
          data.cache_security_groups = CacheSecurityGroupMembershipList.parse(children)
        end
        xml.at('CacheParameterGroup') do |node|
          data.cache_parameter_group = CacheParameterGroupStatus.parse(node)
        end
        xml.at('CacheSubnetGroupName') do |node|
          data.cache_subnet_group_name = (node.text || '')
        end
        xml.at('CacheNodes') do |node|
          children = node.children('CacheNode')
          data.cache_nodes = CacheNodeList.parse(children)
        end
        xml.at('AutoMinorVersionUpgrade') do |node|
          data.auto_minor_version_upgrade = (node.text == 'true')
        end
        xml.at('SecurityGroups') do |node|
          children = node.children('member')
          data.security_groups = SecurityGroupMembershipList.parse(children)
        end
        xml.at('ReplicationGroupId') do |node|
          data.replication_group_id = (node.text || '')
        end
        xml.at('SnapshotRetentionLimit') do |node|
          data.snapshot_retention_limit = node.text&.to_i
        end
        xml.at('SnapshotWindow') do |node|
          data.snapshot_window = (node.text || '')
        end
        xml.at('AuthTokenEnabled') do |node|
          data.auth_token_enabled = (node.text == 'true')
        end
        xml.at('AuthTokenLastModifiedDate') do |node|
          data.auth_token_last_modified_date = Time.parse(node.text) if node.text
        end
        xml.at('TransitEncryptionEnabled') do |node|
          data.transit_encryption_enabled = (node.text == 'true')
        end
        xml.at('AtRestEncryptionEnabled') do |node|
          data.at_rest_encryption_enabled = (node.text == 'true')
        end
        xml.at('ARN') do |node|
          data.arn = (node.text || '')
        end
        xml.at('ReplicationGroupLogDeliveryEnabled') do |node|
          data.replication_group_log_delivery_enabled = (node.text == 'true')
        end
        xml.at('LogDeliveryConfigurations') do |node|
          children = node.children('LogDeliveryConfiguration')
          data.log_delivery_configurations = LogDeliveryConfigurationList.parse(children)
        end
        return data
      end
    end

    class SecurityGroupMembershipList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << SecurityGroupMembership.parse(node)
        end
        data
      end
    end

    class SecurityGroupMembership
      def self.parse(xml)
        data = Types::SecurityGroupMembership.new
        xml.at('SecurityGroupId') do |node|
          data.security_group_id = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        return data
      end
    end

    class CacheNodeList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << CacheNode.parse(node)
        end
        data
      end
    end

    class CacheNode
      def self.parse(xml)
        data = Types::CacheNode.new
        xml.at('CacheNodeId') do |node|
          data.cache_node_id = (node.text || '')
        end
        xml.at('CacheNodeStatus') do |node|
          data.cache_node_status = (node.text || '')
        end
        xml.at('CacheNodeCreateTime') do |node|
          data.cache_node_create_time = Time.parse(node.text) if node.text
        end
        xml.at('Endpoint') do |node|
          data.endpoint = Endpoint.parse(node)
        end
        xml.at('ParameterGroupStatus') do |node|
          data.parameter_group_status = (node.text || '')
        end
        xml.at('SourceCacheNodeId') do |node|
          data.source_cache_node_id = (node.text || '')
        end
        xml.at('CustomerAvailabilityZone') do |node|
          data.customer_availability_zone = (node.text || '')
        end
        xml.at('CustomerOutpostArn') do |node|
          data.customer_outpost_arn = (node.text || '')
        end
        return data
      end
    end

    class CacheParameterGroupStatus
      def self.parse(xml)
        data = Types::CacheParameterGroupStatus.new
        xml.at('CacheParameterGroupName') do |node|
          data.cache_parameter_group_name = (node.text || '')
        end
        xml.at('ParameterApplyStatus') do |node|
          data.parameter_apply_status = (node.text || '')
        end
        xml.at('CacheNodeIdsToReboot') do |node|
          children = node.children('CacheNodeId')
          data.cache_node_ids_to_reboot = CacheNodeIdsList.parse(children)
        end
        return data
      end
    end

    class CacheNodeIdsList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class CacheSecurityGroupMembershipList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << CacheSecurityGroupMembership.parse(node)
        end
        data
      end
    end

    class CacheSecurityGroupMembership
      def self.parse(xml)
        data = Types::CacheSecurityGroupMembership.new
        xml.at('CacheSecurityGroupName') do |node|
          data.cache_security_group_name = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        return data
      end
    end

    class NotificationConfiguration
      def self.parse(xml)
        data = Types::NotificationConfiguration.new
        xml.at('TopicArn') do |node|
          data.topic_arn = (node.text || '')
        end
        xml.at('TopicStatus') do |node|
          data.topic_status = (node.text || '')
        end
        return data
      end
    end

    class PendingModifiedValues
      def self.parse(xml)
        data = Types::PendingModifiedValues.new
        xml.at('NumCacheNodes') do |node|
          data.num_cache_nodes = node.text&.to_i
        end
        xml.at('CacheNodeIdsToRemove') do |node|
          children = node.children('CacheNodeId')
          data.cache_node_ids_to_remove = CacheNodeIdsList.parse(children)
        end
        xml.at('EngineVersion') do |node|
          data.engine_version = (node.text || '')
        end
        xml.at('CacheNodeType') do |node|
          data.cache_node_type = (node.text || '')
        end
        xml.at('AuthTokenStatus') do |node|
          data.auth_token_status = (node.text || '')
        end
        xml.at('LogDeliveryConfigurations') do |node|
          children = node.children('member')
          data.log_delivery_configurations = PendingLogDeliveryConfigurationList.parse(children)
        end
        return data
      end
    end

    # Error Parser for InvalidVPCNetworkStateFault
    class InvalidVPCNetworkStateFault
      def self.parse(http_resp)
        data = Types::InvalidVPCNetworkStateFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for CacheClusterAlreadyExistsFault
    class CacheClusterAlreadyExistsFault
      def self.parse(http_resp)
        data = Types::CacheClusterAlreadyExistsFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for NodeQuotaForClusterExceededFault
    class NodeQuotaForClusterExceededFault
      def self.parse(http_resp)
        data = Types::NodeQuotaForClusterExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for NodeQuotaForCustomerExceededFault
    class NodeQuotaForCustomerExceededFault
      def self.parse(http_resp)
        data = Types::NodeQuotaForCustomerExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for ClusterQuotaForCustomerExceededFault
    class ClusterQuotaForCustomerExceededFault
      def self.parse(http_resp)
        data = Types::ClusterQuotaForCustomerExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InsufficientCacheClusterCapacityFault
    class InsufficientCacheClusterCapacityFault
      def self.parse(http_resp)
        data = Types::InsufficientCacheClusterCapacityFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateCacheParameterGroup
    class CreateCacheParameterGroup
      def self.parse(http_resp)
        data = Types::CreateCacheParameterGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateCacheParameterGroupResult')
        xml.at('CacheParameterGroup') do |node|
          data.cache_parameter_group = CacheParameterGroup.parse(node)
        end
        data
      end
    end

    class CacheParameterGroup
      def self.parse(xml)
        data = Types::CacheParameterGroup.new
        xml.at('CacheParameterGroupName') do |node|
          data.cache_parameter_group_name = (node.text || '')
        end
        xml.at('CacheParameterGroupFamily') do |node|
          data.cache_parameter_group_family = (node.text || '')
        end
        xml.at('Description') do |node|
          data.description = (node.text || '')
        end
        xml.at('IsGlobal') do |node|
          data.is_global = (node.text == 'true')
        end
        xml.at('ARN') do |node|
          data.arn = (node.text || '')
        end
        return data
      end
    end

    # Error Parser for CacheParameterGroupAlreadyExistsFault
    class CacheParameterGroupAlreadyExistsFault
      def self.parse(http_resp)
        data = Types::CacheParameterGroupAlreadyExistsFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for CacheParameterGroupQuotaExceededFault
    class CacheParameterGroupQuotaExceededFault
      def self.parse(http_resp)
        data = Types::CacheParameterGroupQuotaExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidCacheParameterGroupStateFault
    class InvalidCacheParameterGroupStateFault
      def self.parse(http_resp)
        data = Types::InvalidCacheParameterGroupStateFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateCacheSecurityGroup
    class CreateCacheSecurityGroup
      def self.parse(http_resp)
        data = Types::CreateCacheSecurityGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateCacheSecurityGroupResult')
        xml.at('CacheSecurityGroup') do |node|
          data.cache_security_group = CacheSecurityGroup.parse(node)
        end
        data
      end
    end

    # Error Parser for CacheSecurityGroupQuotaExceededFault
    class CacheSecurityGroupQuotaExceededFault
      def self.parse(http_resp)
        data = Types::CacheSecurityGroupQuotaExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for CacheSecurityGroupAlreadyExistsFault
    class CacheSecurityGroupAlreadyExistsFault
      def self.parse(http_resp)
        data = Types::CacheSecurityGroupAlreadyExistsFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateCacheSubnetGroup
    class CreateCacheSubnetGroup
      def self.parse(http_resp)
        data = Types::CreateCacheSubnetGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateCacheSubnetGroupResult')
        xml.at('CacheSubnetGroup') do |node|
          data.cache_subnet_group = CacheSubnetGroup.parse(node)
        end
        data
      end
    end

    class CacheSubnetGroup
      def self.parse(xml)
        data = Types::CacheSubnetGroup.new
        xml.at('CacheSubnetGroupName') do |node|
          data.cache_subnet_group_name = (node.text || '')
        end
        xml.at('CacheSubnetGroupDescription') do |node|
          data.cache_subnet_group_description = (node.text || '')
        end
        xml.at('VpcId') do |node|
          data.vpc_id = (node.text || '')
        end
        xml.at('Subnets') do |node|
          children = node.children('Subnet')
          data.subnets = SubnetList.parse(children)
        end
        xml.at('ARN') do |node|
          data.arn = (node.text || '')
        end
        return data
      end
    end

    class SubnetList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Subnet.parse(node)
        end
        data
      end
    end

    class Subnet
      def self.parse(xml)
        data = Types::Subnet.new
        xml.at('SubnetIdentifier') do |node|
          data.subnet_identifier = (node.text || '')
        end
        xml.at('SubnetAvailabilityZone') do |node|
          data.subnet_availability_zone = AvailabilityZone.parse(node)
        end
        xml.at('SubnetOutpost') do |node|
          data.subnet_outpost = SubnetOutpost.parse(node)
        end
        return data
      end
    end

    class SubnetOutpost
      def self.parse(xml)
        data = Types::SubnetOutpost.new
        xml.at('SubnetOutpostArn') do |node|
          data.subnet_outpost_arn = (node.text || '')
        end
        return data
      end
    end

    class AvailabilityZone
      def self.parse(xml)
        data = Types::AvailabilityZone.new
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        return data
      end
    end

    # Error Parser for CacheSubnetGroupAlreadyExistsFault
    class CacheSubnetGroupAlreadyExistsFault
      def self.parse(http_resp)
        data = Types::CacheSubnetGroupAlreadyExistsFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidSubnet
    class InvalidSubnet
      def self.parse(http_resp)
        data = Types::InvalidSubnet.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for SubnetNotAllowedFault
    class SubnetNotAllowedFault
      def self.parse(http_resp)
        data = Types::SubnetNotAllowedFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for CacheSubnetGroupQuotaExceededFault
    class CacheSubnetGroupQuotaExceededFault
      def self.parse(http_resp)
        data = Types::CacheSubnetGroupQuotaExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for CacheSubnetQuotaExceededFault
    class CacheSubnetQuotaExceededFault
      def self.parse(http_resp)
        data = Types::CacheSubnetQuotaExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateGlobalReplicationGroup
    class CreateGlobalReplicationGroup
      def self.parse(http_resp)
        data = Types::CreateGlobalReplicationGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateGlobalReplicationGroupResult')
        xml.at('GlobalReplicationGroup') do |node|
          data.global_replication_group = GlobalReplicationGroup.parse(node)
        end
        data
      end
    end

    class GlobalReplicationGroup
      def self.parse(xml)
        data = Types::GlobalReplicationGroup.new
        xml.at('GlobalReplicationGroupId') do |node|
          data.global_replication_group_id = (node.text || '')
        end
        xml.at('GlobalReplicationGroupDescription') do |node|
          data.global_replication_group_description = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('CacheNodeType') do |node|
          data.cache_node_type = (node.text || '')
        end
        xml.at('Engine') do |node|
          data.engine = (node.text || '')
        end
        xml.at('EngineVersion') do |node|
          data.engine_version = (node.text || '')
        end
        xml.at('Members') do |node|
          children = node.children('GlobalReplicationGroupMember')
          data.members = GlobalReplicationGroupMemberList.parse(children)
        end
        xml.at('ClusterEnabled') do |node|
          data.cluster_enabled = (node.text == 'true')
        end
        xml.at('GlobalNodeGroups') do |node|
          children = node.children('GlobalNodeGroup')
          data.global_node_groups = GlobalNodeGroupList.parse(children)
        end
        xml.at('AuthTokenEnabled') do |node|
          data.auth_token_enabled = (node.text == 'true')
        end
        xml.at('TransitEncryptionEnabled') do |node|
          data.transit_encryption_enabled = (node.text == 'true')
        end
        xml.at('AtRestEncryptionEnabled') do |node|
          data.at_rest_encryption_enabled = (node.text == 'true')
        end
        xml.at('ARN') do |node|
          data.arn = (node.text || '')
        end
        return data
      end
    end

    class GlobalNodeGroupList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << GlobalNodeGroup.parse(node)
        end
        data
      end
    end

    class GlobalNodeGroup
      def self.parse(xml)
        data = Types::GlobalNodeGroup.new
        xml.at('GlobalNodeGroupId') do |node|
          data.global_node_group_id = (node.text || '')
        end
        xml.at('Slots') do |node|
          data.slots = (node.text || '')
        end
        return data
      end
    end

    class GlobalReplicationGroupMemberList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << GlobalReplicationGroupMember.parse(node)
        end
        data
      end
    end

    class GlobalReplicationGroupMember
      def self.parse(xml)
        data = Types::GlobalReplicationGroupMember.new
        xml.at('ReplicationGroupId') do |node|
          data.replication_group_id = (node.text || '')
        end
        xml.at('ReplicationGroupRegion') do |node|
          data.replication_group_region = (node.text || '')
        end
        xml.at('Role') do |node|
          data.role = (node.text || '')
        end
        xml.at('AutomaticFailover') do |node|
          data.automatic_failover = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        return data
      end
    end

    # Error Parser for GlobalReplicationGroupAlreadyExistsFault
    class GlobalReplicationGroupAlreadyExistsFault
      def self.parse(http_resp)
        data = Types::GlobalReplicationGroupAlreadyExistsFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for ServiceLinkedRoleNotFoundFault
    class ServiceLinkedRoleNotFoundFault
      def self.parse(http_resp)
        data = Types::ServiceLinkedRoleNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateReplicationGroup
    class CreateReplicationGroup
      def self.parse(http_resp)
        data = Types::CreateReplicationGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateReplicationGroupResult')
        xml.at('ReplicationGroup') do |node|
          data.replication_group = ReplicationGroup.parse(node)
        end
        data
      end
    end

    # Error Parser for InvalidCacheClusterStateFault
    class InvalidCacheClusterStateFault
      def self.parse(http_resp)
        data = Types::InvalidCacheClusterStateFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for NodeGroupsPerReplicationGroupQuotaExceededFault
    class NodeGroupsPerReplicationGroupQuotaExceededFault
      def self.parse(http_resp)
        data = Types::NodeGroupsPerReplicationGroupQuotaExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for GlobalReplicationGroupNotFoundFault
    class GlobalReplicationGroupNotFoundFault
      def self.parse(http_resp)
        data = Types::GlobalReplicationGroupNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidGlobalReplicationGroupStateFault
    class InvalidGlobalReplicationGroupStateFault
      def self.parse(http_resp)
        data = Types::InvalidGlobalReplicationGroupStateFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for ReplicationGroupAlreadyExistsFault
    class ReplicationGroupAlreadyExistsFault
      def self.parse(http_resp)
        data = Types::ReplicationGroupAlreadyExistsFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidUserGroupStateFault
    class InvalidUserGroupStateFault
      def self.parse(http_resp)
        data = Types::InvalidUserGroupStateFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateSnapshot
    class CreateSnapshot
      def self.parse(http_resp)
        data = Types::CreateSnapshotOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateSnapshotResult')
        xml.at('Snapshot') do |node|
          data.snapshot = Snapshot.parse(node)
        end
        data
      end
    end

    # Error Parser for SnapshotFeatureNotSupportedFault
    class SnapshotFeatureNotSupportedFault
      def self.parse(http_resp)
        data = Types::SnapshotFeatureNotSupportedFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateUser
    class CreateUser
      def self.parse(http_resp)
        data = Types::CreateUserOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateUserResult')
        xml.at('UserId') do |node|
          data.user_id = (node.text || '')
        end
        xml.at('UserName') do |node|
          data.user_name = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('Engine') do |node|
          data.engine = (node.text || '')
        end
        xml.at('MinimumEngineVersion') do |node|
          data.minimum_engine_version = (node.text || '')
        end
        xml.at('AccessString') do |node|
          data.access_string = (node.text || '')
        end
        xml.at('UserGroupIds') do |node|
          children = node.children('member')
          data.user_group_ids = UserGroupIdList.parse(children)
        end
        xml.at('Authentication') do |node|
          data.authentication = Authentication.parse(node)
        end
        xml.at('ARN') do |node|
          data.arn = (node.text || '')
        end
        data
      end
    end

    class Authentication
      def self.parse(xml)
        data = Types::Authentication.new
        xml.at('Type') do |node|
          data.type = (node.text || '')
        end
        xml.at('PasswordCount') do |node|
          data.password_count = node.text&.to_i
        end
        return data
      end
    end

    # Error Parser for UserQuotaExceededFault
    class UserQuotaExceededFault
      def self.parse(http_resp)
        data = Types::UserQuotaExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for UserAlreadyExistsFault
    class UserAlreadyExistsFault
      def self.parse(http_resp)
        data = Types::UserAlreadyExistsFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for DuplicateUserNameFault
    class DuplicateUserNameFault
      def self.parse(http_resp)
        data = Types::DuplicateUserNameFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateUserGroup
    class CreateUserGroup
      def self.parse(http_resp)
        data = Types::CreateUserGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateUserGroupResult')
        xml.at('UserGroupId') do |node|
          data.user_group_id = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('Engine') do |node|
          data.engine = (node.text || '')
        end
        xml.at('UserIds') do |node|
          children = node.children('member')
          data.user_ids = UserIdList.parse(children)
        end
        xml.at('MinimumEngineVersion') do |node|
          data.minimum_engine_version = (node.text || '')
        end
        xml.at('PendingChanges') do |node|
          data.pending_changes = UserGroupPendingChanges.parse(node)
        end
        xml.at('ReplicationGroups') do |node|
          children = node.children('member')
          data.replication_groups = UGReplicationGroupIdList.parse(children)
        end
        xml.at('ARN') do |node|
          data.arn = (node.text || '')
        end
        data
      end
    end

    class UGReplicationGroupIdList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class UserGroupPendingChanges
      def self.parse(xml)
        data = Types::UserGroupPendingChanges.new
        xml.at('UserIdsToRemove') do |node|
          children = node.children('member')
          data.user_ids_to_remove = UserIdList.parse(children)
        end
        xml.at('UserIdsToAdd') do |node|
          children = node.children('member')
          data.user_ids_to_add = UserIdList.parse(children)
        end
        return data
      end
    end

    class UserIdList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Error Parser for UserGroupAlreadyExistsFault
    class UserGroupAlreadyExistsFault
      def self.parse(http_resp)
        data = Types::UserGroupAlreadyExistsFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for UserGroupQuotaExceededFault
    class UserGroupQuotaExceededFault
      def self.parse(http_resp)
        data = Types::UserGroupQuotaExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for DefaultUserRequired
    class DefaultUserRequired
      def self.parse(http_resp)
        data = Types::DefaultUserRequired.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DecreaseNodeGroupsInGlobalReplicationGroup
    class DecreaseNodeGroupsInGlobalReplicationGroup
      def self.parse(http_resp)
        data = Types::DecreaseNodeGroupsInGlobalReplicationGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DecreaseNodeGroupsInGlobalReplicationGroupResult')
        xml.at('GlobalReplicationGroup') do |node|
          data.global_replication_group = GlobalReplicationGroup.parse(node)
        end
        data
      end
    end

    # Operation Parser for DecreaseReplicaCount
    class DecreaseReplicaCount
      def self.parse(http_resp)
        data = Types::DecreaseReplicaCountOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DecreaseReplicaCountResult')
        xml.at('ReplicationGroup') do |node|
          data.replication_group = ReplicationGroup.parse(node)
        end
        data
      end
    end

    # Error Parser for NoOperationFault
    class NoOperationFault
      def self.parse(http_resp)
        data = Types::NoOperationFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteCacheCluster
    class DeleteCacheCluster
      def self.parse(http_resp)
        data = Types::DeleteCacheClusterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteCacheClusterResult')
        xml.at('CacheCluster') do |node|
          data.cache_cluster = CacheCluster.parse(node)
        end
        data
      end
    end

    # Operation Parser for DeleteCacheParameterGroup
    class DeleteCacheParameterGroup
      def self.parse(http_resp)
        data = Types::DeleteCacheParameterGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteCacheParameterGroupResult')
        data
      end
    end

    # Operation Parser for DeleteCacheSecurityGroup
    class DeleteCacheSecurityGroup
      def self.parse(http_resp)
        data = Types::DeleteCacheSecurityGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteCacheSecurityGroupResult')
        data
      end
    end

    # Operation Parser for DeleteCacheSubnetGroup
    class DeleteCacheSubnetGroup
      def self.parse(http_resp)
        data = Types::DeleteCacheSubnetGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteCacheSubnetGroupResult')
        data
      end
    end

    # Error Parser for CacheSubnetGroupInUse
    class CacheSubnetGroupInUse
      def self.parse(http_resp)
        data = Types::CacheSubnetGroupInUse.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteGlobalReplicationGroup
    class DeleteGlobalReplicationGroup
      def self.parse(http_resp)
        data = Types::DeleteGlobalReplicationGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteGlobalReplicationGroupResult')
        xml.at('GlobalReplicationGroup') do |node|
          data.global_replication_group = GlobalReplicationGroup.parse(node)
        end
        data
      end
    end

    # Operation Parser for DeleteReplicationGroup
    class DeleteReplicationGroup
      def self.parse(http_resp)
        data = Types::DeleteReplicationGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteReplicationGroupResult')
        xml.at('ReplicationGroup') do |node|
          data.replication_group = ReplicationGroup.parse(node)
        end
        data
      end
    end

    # Operation Parser for DeleteSnapshot
    class DeleteSnapshot
      def self.parse(http_resp)
        data = Types::DeleteSnapshotOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteSnapshotResult')
        xml.at('Snapshot') do |node|
          data.snapshot = Snapshot.parse(node)
        end
        data
      end
    end

    # Operation Parser for DeleteUser
    class DeleteUser
      def self.parse(http_resp)
        data = Types::DeleteUserOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteUserResult')
        xml.at('UserId') do |node|
          data.user_id = (node.text || '')
        end
        xml.at('UserName') do |node|
          data.user_name = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('Engine') do |node|
          data.engine = (node.text || '')
        end
        xml.at('MinimumEngineVersion') do |node|
          data.minimum_engine_version = (node.text || '')
        end
        xml.at('AccessString') do |node|
          data.access_string = (node.text || '')
        end
        xml.at('UserGroupIds') do |node|
          children = node.children('member')
          data.user_group_ids = UserGroupIdList.parse(children)
        end
        xml.at('Authentication') do |node|
          data.authentication = Authentication.parse(node)
        end
        xml.at('ARN') do |node|
          data.arn = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidUserStateFault
    class InvalidUserStateFault
      def self.parse(http_resp)
        data = Types::InvalidUserStateFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for DefaultUserAssociatedToUserGroupFault
    class DefaultUserAssociatedToUserGroupFault
      def self.parse(http_resp)
        data = Types::DefaultUserAssociatedToUserGroupFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteUserGroup
    class DeleteUserGroup
      def self.parse(http_resp)
        data = Types::DeleteUserGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteUserGroupResult')
        xml.at('UserGroupId') do |node|
          data.user_group_id = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('Engine') do |node|
          data.engine = (node.text || '')
        end
        xml.at('UserIds') do |node|
          children = node.children('member')
          data.user_ids = UserIdList.parse(children)
        end
        xml.at('MinimumEngineVersion') do |node|
          data.minimum_engine_version = (node.text || '')
        end
        xml.at('PendingChanges') do |node|
          data.pending_changes = UserGroupPendingChanges.parse(node)
        end
        xml.at('ReplicationGroups') do |node|
          children = node.children('member')
          data.replication_groups = UGReplicationGroupIdList.parse(children)
        end
        xml.at('ARN') do |node|
          data.arn = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DescribeCacheClusters
    class DescribeCacheClusters
      def self.parse(http_resp)
        data = Types::DescribeCacheClustersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeCacheClustersResult')
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('CacheClusters') do |node|
          children = node.children('CacheCluster')
          data.cache_clusters = CacheClusterList.parse(children)
        end
        data
      end
    end

    class CacheClusterList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << CacheCluster.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeCacheEngineVersions
    class DescribeCacheEngineVersions
      def self.parse(http_resp)
        data = Types::DescribeCacheEngineVersionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeCacheEngineVersionsResult')
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('CacheEngineVersions') do |node|
          children = node.children('CacheEngineVersion')
          data.cache_engine_versions = CacheEngineVersionList.parse(children)
        end
        data
      end
    end

    class CacheEngineVersionList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << CacheEngineVersion.parse(node)
        end
        data
      end
    end

    class CacheEngineVersion
      def self.parse(xml)
        data = Types::CacheEngineVersion.new
        xml.at('Engine') do |node|
          data.engine = (node.text || '')
        end
        xml.at('EngineVersion') do |node|
          data.engine_version = (node.text || '')
        end
        xml.at('CacheParameterGroupFamily') do |node|
          data.cache_parameter_group_family = (node.text || '')
        end
        xml.at('CacheEngineDescription') do |node|
          data.cache_engine_description = (node.text || '')
        end
        xml.at('CacheEngineVersionDescription') do |node|
          data.cache_engine_version_description = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeCacheParameterGroups
    class DescribeCacheParameterGroups
      def self.parse(http_resp)
        data = Types::DescribeCacheParameterGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeCacheParameterGroupsResult')
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('CacheParameterGroups') do |node|
          children = node.children('CacheParameterGroup')
          data.cache_parameter_groups = CacheParameterGroupList.parse(children)
        end
        data
      end
    end

    class CacheParameterGroupList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << CacheParameterGroup.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeCacheParameters
    class DescribeCacheParameters
      def self.parse(http_resp)
        data = Types::DescribeCacheParametersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeCacheParametersResult')
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('Parameters') do |node|
          children = node.children('Parameter')
          data.parameters = ParametersList.parse(children)
        end
        xml.at('CacheNodeTypeSpecificParameters') do |node|
          children = node.children('CacheNodeTypeSpecificParameter')
          data.cache_node_type_specific_parameters = CacheNodeTypeSpecificParametersList.parse(children)
        end
        data
      end
    end

    class CacheNodeTypeSpecificParametersList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << CacheNodeTypeSpecificParameter.parse(node)
        end
        data
      end
    end

    class CacheNodeTypeSpecificParameter
      def self.parse(xml)
        data = Types::CacheNodeTypeSpecificParameter.new
        xml.at('ParameterName') do |node|
          data.parameter_name = (node.text || '')
        end
        xml.at('Description') do |node|
          data.description = (node.text || '')
        end
        xml.at('Source') do |node|
          data.source = (node.text || '')
        end
        xml.at('DataType') do |node|
          data.data_type = (node.text || '')
        end
        xml.at('AllowedValues') do |node|
          data.allowed_values = (node.text || '')
        end
        xml.at('IsModifiable') do |node|
          data.is_modifiable = (node.text == 'true')
        end
        xml.at('MinimumEngineVersion') do |node|
          data.minimum_engine_version = (node.text || '')
        end
        xml.at('CacheNodeTypeSpecificValues') do |node|
          children = node.children('CacheNodeTypeSpecificValue')
          data.cache_node_type_specific_values = CacheNodeTypeSpecificValueList.parse(children)
        end
        xml.at('ChangeType') do |node|
          data.change_type = (node.text || '')
        end
        return data
      end
    end

    class CacheNodeTypeSpecificValueList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << CacheNodeTypeSpecificValue.parse(node)
        end
        data
      end
    end

    class CacheNodeTypeSpecificValue
      def self.parse(xml)
        data = Types::CacheNodeTypeSpecificValue.new
        xml.at('CacheNodeType') do |node|
          data.cache_node_type = (node.text || '')
        end
        xml.at('Value') do |node|
          data.value = (node.text || '')
        end
        return data
      end
    end

    class ParametersList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parameter.parse(node)
        end
        data
      end
    end

    class Parameter
      def self.parse(xml)
        data = Types::Parameter.new
        xml.at('ParameterName') do |node|
          data.parameter_name = (node.text || '')
        end
        xml.at('ParameterValue') do |node|
          data.parameter_value = (node.text || '')
        end
        xml.at('Description') do |node|
          data.description = (node.text || '')
        end
        xml.at('Source') do |node|
          data.source = (node.text || '')
        end
        xml.at('DataType') do |node|
          data.data_type = (node.text || '')
        end
        xml.at('AllowedValues') do |node|
          data.allowed_values = (node.text || '')
        end
        xml.at('IsModifiable') do |node|
          data.is_modifiable = (node.text == 'true')
        end
        xml.at('MinimumEngineVersion') do |node|
          data.minimum_engine_version = (node.text || '')
        end
        xml.at('ChangeType') do |node|
          data.change_type = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeCacheSecurityGroups
    class DescribeCacheSecurityGroups
      def self.parse(http_resp)
        data = Types::DescribeCacheSecurityGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeCacheSecurityGroupsResult')
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('CacheSecurityGroups') do |node|
          children = node.children('CacheSecurityGroup')
          data.cache_security_groups = CacheSecurityGroups.parse(children)
        end
        data
      end
    end

    class CacheSecurityGroups
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << CacheSecurityGroup.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeCacheSubnetGroups
    class DescribeCacheSubnetGroups
      def self.parse(http_resp)
        data = Types::DescribeCacheSubnetGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeCacheSubnetGroupsResult')
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('CacheSubnetGroups') do |node|
          children = node.children('CacheSubnetGroup')
          data.cache_subnet_groups = CacheSubnetGroups.parse(children)
        end
        data
      end
    end

    class CacheSubnetGroups
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << CacheSubnetGroup.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeEngineDefaultParameters
    class DescribeEngineDefaultParameters
      def self.parse(http_resp)
        data = Types::DescribeEngineDefaultParametersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeEngineDefaultParametersResult')
        xml.at('EngineDefaults') do |node|
          data.engine_defaults = EngineDefaults.parse(node)
        end
        data
      end
    end

    class EngineDefaults
      def self.parse(xml)
        data = Types::EngineDefaults.new
        xml.at('CacheParameterGroupFamily') do |node|
          data.cache_parameter_group_family = (node.text || '')
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('Parameters') do |node|
          children = node.children('Parameter')
          data.parameters = ParametersList.parse(children)
        end
        xml.at('CacheNodeTypeSpecificParameters') do |node|
          children = node.children('CacheNodeTypeSpecificParameter')
          data.cache_node_type_specific_parameters = CacheNodeTypeSpecificParametersList.parse(children)
        end
        return data
      end
    end

    # Operation Parser for DescribeEvents
    class DescribeEvents
      def self.parse(http_resp)
        data = Types::DescribeEventsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeEventsResult')
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('Events') do |node|
          children = node.children('Event')
          data.events = EventList.parse(children)
        end
        data
      end
    end

    class EventList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Event.parse(node)
        end
        data
      end
    end

    class Event
      def self.parse(xml)
        data = Types::Event.new
        xml.at('SourceIdentifier') do |node|
          data.source_identifier = (node.text || '')
        end
        xml.at('SourceType') do |node|
          data.source_type = (node.text || '')
        end
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        xml.at('Date') do |node|
          data.date = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    # Operation Parser for DescribeGlobalReplicationGroups
    class DescribeGlobalReplicationGroups
      def self.parse(http_resp)
        data = Types::DescribeGlobalReplicationGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeGlobalReplicationGroupsResult')
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('GlobalReplicationGroups') do |node|
          children = node.children('GlobalReplicationGroup')
          data.global_replication_groups = GlobalReplicationGroupList.parse(children)
        end
        data
      end
    end

    class GlobalReplicationGroupList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << GlobalReplicationGroup.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeReplicationGroups
    class DescribeReplicationGroups
      def self.parse(http_resp)
        data = Types::DescribeReplicationGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeReplicationGroupsResult')
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('ReplicationGroups') do |node|
          children = node.children('ReplicationGroup')
          data.replication_groups = ReplicationGroupList.parse(children)
        end
        data
      end
    end

    class ReplicationGroupList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << ReplicationGroup.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeReservedCacheNodes
    class DescribeReservedCacheNodes
      def self.parse(http_resp)
        data = Types::DescribeReservedCacheNodesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeReservedCacheNodesResult')
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('ReservedCacheNodes') do |node|
          children = node.children('ReservedCacheNode')
          data.reserved_cache_nodes = ReservedCacheNodeList.parse(children)
        end
        data
      end
    end

    class ReservedCacheNodeList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << ReservedCacheNode.parse(node)
        end
        data
      end
    end

    class ReservedCacheNode
      def self.parse(xml)
        data = Types::ReservedCacheNode.new
        xml.at('ReservedCacheNodeId') do |node|
          data.reserved_cache_node_id = (node.text || '')
        end
        xml.at('ReservedCacheNodesOfferingId') do |node|
          data.reserved_cache_nodes_offering_id = (node.text || '')
        end
        xml.at('CacheNodeType') do |node|
          data.cache_node_type = (node.text || '')
        end
        xml.at('StartTime') do |node|
          data.start_time = Time.parse(node.text) if node.text
        end
        xml.at('Duration') do |node|
          data.duration = node.text&.to_i
        end
        xml.at('FixedPrice') do |node|
          data.fixed_price = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('UsagePrice') do |node|
          data.usage_price = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('CacheNodeCount') do |node|
          data.cache_node_count = node.text&.to_i
        end
        xml.at('ProductDescription') do |node|
          data.product_description = (node.text || '')
        end
        xml.at('OfferingType') do |node|
          data.offering_type = (node.text || '')
        end
        xml.at('State') do |node|
          data.state = (node.text || '')
        end
        xml.at('RecurringCharges') do |node|
          children = node.children('RecurringCharge')
          data.recurring_charges = RecurringChargeList.parse(children)
        end
        xml.at('ReservationARN') do |node|
          data.reservation_arn = (node.text || '')
        end
        return data
      end
    end

    class RecurringChargeList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << RecurringCharge.parse(node)
        end
        data
      end
    end

    class RecurringCharge
      def self.parse(xml)
        data = Types::RecurringCharge.new
        xml.at('RecurringChargeAmount') do |node|
          data.recurring_charge_amount = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('RecurringChargeFrequency') do |node|
          data.recurring_charge_frequency = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeReservedCacheNodesOfferings
    class DescribeReservedCacheNodesOfferings
      def self.parse(http_resp)
        data = Types::DescribeReservedCacheNodesOfferingsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeReservedCacheNodesOfferingsResult')
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('ReservedCacheNodesOfferings') do |node|
          children = node.children('ReservedCacheNodesOffering')
          data.reserved_cache_nodes_offerings = ReservedCacheNodesOfferingList.parse(children)
        end
        data
      end
    end

    class ReservedCacheNodesOfferingList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << ReservedCacheNodesOffering.parse(node)
        end
        data
      end
    end

    class ReservedCacheNodesOffering
      def self.parse(xml)
        data = Types::ReservedCacheNodesOffering.new
        xml.at('ReservedCacheNodesOfferingId') do |node|
          data.reserved_cache_nodes_offering_id = (node.text || '')
        end
        xml.at('CacheNodeType') do |node|
          data.cache_node_type = (node.text || '')
        end
        xml.at('Duration') do |node|
          data.duration = node.text&.to_i
        end
        xml.at('FixedPrice') do |node|
          data.fixed_price = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('UsagePrice') do |node|
          data.usage_price = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('ProductDescription') do |node|
          data.product_description = (node.text || '')
        end
        xml.at('OfferingType') do |node|
          data.offering_type = (node.text || '')
        end
        xml.at('RecurringCharges') do |node|
          children = node.children('RecurringCharge')
          data.recurring_charges = RecurringChargeList.parse(children)
        end
        return data
      end
    end

    # Error Parser for ReservedCacheNodesOfferingNotFoundFault
    class ReservedCacheNodesOfferingNotFoundFault
      def self.parse(http_resp)
        data = Types::ReservedCacheNodesOfferingNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DescribeServiceUpdates
    class DescribeServiceUpdates
      def self.parse(http_resp)
        data = Types::DescribeServiceUpdatesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeServiceUpdatesResult')
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('ServiceUpdates') do |node|
          children = node.children('ServiceUpdate')
          data.service_updates = ServiceUpdateList.parse(children)
        end
        data
      end
    end

    class ServiceUpdateList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << ServiceUpdate.parse(node)
        end
        data
      end
    end

    class ServiceUpdate
      def self.parse(xml)
        data = Types::ServiceUpdate.new
        xml.at('ServiceUpdateName') do |node|
          data.service_update_name = (node.text || '')
        end
        xml.at('ServiceUpdateReleaseDate') do |node|
          data.service_update_release_date = Time.parse(node.text) if node.text
        end
        xml.at('ServiceUpdateEndDate') do |node|
          data.service_update_end_date = Time.parse(node.text) if node.text
        end
        xml.at('ServiceUpdateSeverity') do |node|
          data.service_update_severity = (node.text || '')
        end
        xml.at('ServiceUpdateRecommendedApplyByDate') do |node|
          data.service_update_recommended_apply_by_date = Time.parse(node.text) if node.text
        end
        xml.at('ServiceUpdateStatus') do |node|
          data.service_update_status = (node.text || '')
        end
        xml.at('ServiceUpdateDescription') do |node|
          data.service_update_description = (node.text || '')
        end
        xml.at('ServiceUpdateType') do |node|
          data.service_update_type = (node.text || '')
        end
        xml.at('Engine') do |node|
          data.engine = (node.text || '')
        end
        xml.at('EngineVersion') do |node|
          data.engine_version = (node.text || '')
        end
        xml.at('AutoUpdateAfterRecommendedApplyByDate') do |node|
          data.auto_update_after_recommended_apply_by_date = (node.text == 'true')
        end
        xml.at('EstimatedUpdateTime') do |node|
          data.estimated_update_time = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeSnapshots
    class DescribeSnapshots
      def self.parse(http_resp)
        data = Types::DescribeSnapshotsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeSnapshotsResult')
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('Snapshots') do |node|
          children = node.children('Snapshot')
          data.snapshots = SnapshotList.parse(children)
        end
        data
      end
    end

    class SnapshotList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Snapshot.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeUpdateActions
    class DescribeUpdateActions
      def self.parse(http_resp)
        data = Types::DescribeUpdateActionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeUpdateActionsResult')
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('UpdateActions') do |node|
          children = node.children('UpdateAction')
          data.update_actions = UpdateActionList.parse(children)
        end
        data
      end
    end

    class UpdateActionList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << UpdateAction.parse(node)
        end
        data
      end
    end

    class UpdateAction
      def self.parse(xml)
        data = Types::UpdateAction.new
        xml.at('ReplicationGroupId') do |node|
          data.replication_group_id = (node.text || '')
        end
        xml.at('CacheClusterId') do |node|
          data.cache_cluster_id = (node.text || '')
        end
        xml.at('ServiceUpdateName') do |node|
          data.service_update_name = (node.text || '')
        end
        xml.at('ServiceUpdateReleaseDate') do |node|
          data.service_update_release_date = Time.parse(node.text) if node.text
        end
        xml.at('ServiceUpdateSeverity') do |node|
          data.service_update_severity = (node.text || '')
        end
        xml.at('ServiceUpdateStatus') do |node|
          data.service_update_status = (node.text || '')
        end
        xml.at('ServiceUpdateRecommendedApplyByDate') do |node|
          data.service_update_recommended_apply_by_date = Time.parse(node.text) if node.text
        end
        xml.at('ServiceUpdateType') do |node|
          data.service_update_type = (node.text || '')
        end
        xml.at('UpdateActionAvailableDate') do |node|
          data.update_action_available_date = Time.parse(node.text) if node.text
        end
        xml.at('UpdateActionStatus') do |node|
          data.update_action_status = (node.text || '')
        end
        xml.at('NodesUpdated') do |node|
          data.nodes_updated = (node.text || '')
        end
        xml.at('UpdateActionStatusModifiedDate') do |node|
          data.update_action_status_modified_date = Time.parse(node.text) if node.text
        end
        xml.at('SlaMet') do |node|
          data.sla_met = (node.text || '')
        end
        xml.at('NodeGroupUpdateStatus') do |node|
          children = node.children('NodeGroupUpdateStatus')
          data.node_group_update_status = NodeGroupUpdateStatusList.parse(children)
        end
        xml.at('CacheNodeUpdateStatus') do |node|
          children = node.children('CacheNodeUpdateStatus')
          data.cache_node_update_status = CacheNodeUpdateStatusList.parse(children)
        end
        xml.at('EstimatedUpdateTime') do |node|
          data.estimated_update_time = (node.text || '')
        end
        xml.at('Engine') do |node|
          data.engine = (node.text || '')
        end
        return data
      end
    end

    class CacheNodeUpdateStatusList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << CacheNodeUpdateStatus.parse(node)
        end
        data
      end
    end

    class CacheNodeUpdateStatus
      def self.parse(xml)
        data = Types::CacheNodeUpdateStatus.new
        xml.at('CacheNodeId') do |node|
          data.cache_node_id = (node.text || '')
        end
        xml.at('NodeUpdateStatus') do |node|
          data.node_update_status = (node.text || '')
        end
        xml.at('NodeDeletionDate') do |node|
          data.node_deletion_date = Time.parse(node.text) if node.text
        end
        xml.at('NodeUpdateStartDate') do |node|
          data.node_update_start_date = Time.parse(node.text) if node.text
        end
        xml.at('NodeUpdateEndDate') do |node|
          data.node_update_end_date = Time.parse(node.text) if node.text
        end
        xml.at('NodeUpdateInitiatedBy') do |node|
          data.node_update_initiated_by = (node.text || '')
        end
        xml.at('NodeUpdateInitiatedDate') do |node|
          data.node_update_initiated_date = Time.parse(node.text) if node.text
        end
        xml.at('NodeUpdateStatusModifiedDate') do |node|
          data.node_update_status_modified_date = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    class NodeGroupUpdateStatusList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << NodeGroupUpdateStatus.parse(node)
        end
        data
      end
    end

    class NodeGroupUpdateStatus
      def self.parse(xml)
        data = Types::NodeGroupUpdateStatus.new
        xml.at('NodeGroupId') do |node|
          data.node_group_id = (node.text || '')
        end
        xml.at('NodeGroupMemberUpdateStatus') do |node|
          children = node.children('NodeGroupMemberUpdateStatus')
          data.node_group_member_update_status = NodeGroupMemberUpdateStatusList.parse(children)
        end
        return data
      end
    end

    class NodeGroupMemberUpdateStatusList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << NodeGroupMemberUpdateStatus.parse(node)
        end
        data
      end
    end

    class NodeGroupMemberUpdateStatus
      def self.parse(xml)
        data = Types::NodeGroupMemberUpdateStatus.new
        xml.at('CacheClusterId') do |node|
          data.cache_cluster_id = (node.text || '')
        end
        xml.at('CacheNodeId') do |node|
          data.cache_node_id = (node.text || '')
        end
        xml.at('NodeUpdateStatus') do |node|
          data.node_update_status = (node.text || '')
        end
        xml.at('NodeDeletionDate') do |node|
          data.node_deletion_date = Time.parse(node.text) if node.text
        end
        xml.at('NodeUpdateStartDate') do |node|
          data.node_update_start_date = Time.parse(node.text) if node.text
        end
        xml.at('NodeUpdateEndDate') do |node|
          data.node_update_end_date = Time.parse(node.text) if node.text
        end
        xml.at('NodeUpdateInitiatedBy') do |node|
          data.node_update_initiated_by = (node.text || '')
        end
        xml.at('NodeUpdateInitiatedDate') do |node|
          data.node_update_initiated_date = Time.parse(node.text) if node.text
        end
        xml.at('NodeUpdateStatusModifiedDate') do |node|
          data.node_update_status_modified_date = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    # Operation Parser for DescribeUserGroups
    class DescribeUserGroups
      def self.parse(http_resp)
        data = Types::DescribeUserGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeUserGroupsResult')
        xml.at('UserGroups') do |node|
          children = node.children('member')
          data.user_groups = UserGroupList.parse(children)
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    class UserGroupList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << UserGroup.parse(node)
        end
        data
      end
    end

    class UserGroup
      def self.parse(xml)
        data = Types::UserGroup.new
        xml.at('UserGroupId') do |node|
          data.user_group_id = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('Engine') do |node|
          data.engine = (node.text || '')
        end
        xml.at('UserIds') do |node|
          children = node.children('member')
          data.user_ids = UserIdList.parse(children)
        end
        xml.at('MinimumEngineVersion') do |node|
          data.minimum_engine_version = (node.text || '')
        end
        xml.at('PendingChanges') do |node|
          data.pending_changes = UserGroupPendingChanges.parse(node)
        end
        xml.at('ReplicationGroups') do |node|
          children = node.children('member')
          data.replication_groups = UGReplicationGroupIdList.parse(children)
        end
        xml.at('ARN') do |node|
          data.arn = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeUsers
    class DescribeUsers
      def self.parse(http_resp)
        data = Types::DescribeUsersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeUsersResult')
        xml.at('Users') do |node|
          children = node.children('member')
          data.users = UserList.parse(children)
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    class UserList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << User.parse(node)
        end
        data
      end
    end

    class User
      def self.parse(xml)
        data = Types::User.new
        xml.at('UserId') do |node|
          data.user_id = (node.text || '')
        end
        xml.at('UserName') do |node|
          data.user_name = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('Engine') do |node|
          data.engine = (node.text || '')
        end
        xml.at('MinimumEngineVersion') do |node|
          data.minimum_engine_version = (node.text || '')
        end
        xml.at('AccessString') do |node|
          data.access_string = (node.text || '')
        end
        xml.at('UserGroupIds') do |node|
          children = node.children('member')
          data.user_group_ids = UserGroupIdList.parse(children)
        end
        xml.at('Authentication') do |node|
          data.authentication = Authentication.parse(node)
        end
        xml.at('ARN') do |node|
          data.arn = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DisassociateGlobalReplicationGroup
    class DisassociateGlobalReplicationGroup
      def self.parse(http_resp)
        data = Types::DisassociateGlobalReplicationGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DisassociateGlobalReplicationGroupResult')
        xml.at('GlobalReplicationGroup') do |node|
          data.global_replication_group = GlobalReplicationGroup.parse(node)
        end
        data
      end
    end

    # Operation Parser for FailoverGlobalReplicationGroup
    class FailoverGlobalReplicationGroup
      def self.parse(http_resp)
        data = Types::FailoverGlobalReplicationGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('FailoverGlobalReplicationGroupResult')
        xml.at('GlobalReplicationGroup') do |node|
          data.global_replication_group = GlobalReplicationGroup.parse(node)
        end
        data
      end
    end

    # Operation Parser for IncreaseNodeGroupsInGlobalReplicationGroup
    class IncreaseNodeGroupsInGlobalReplicationGroup
      def self.parse(http_resp)
        data = Types::IncreaseNodeGroupsInGlobalReplicationGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('IncreaseNodeGroupsInGlobalReplicationGroupResult')
        xml.at('GlobalReplicationGroup') do |node|
          data.global_replication_group = GlobalReplicationGroup.parse(node)
        end
        data
      end
    end

    # Operation Parser for IncreaseReplicaCount
    class IncreaseReplicaCount
      def self.parse(http_resp)
        data = Types::IncreaseReplicaCountOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('IncreaseReplicaCountResult')
        xml.at('ReplicationGroup') do |node|
          data.replication_group = ReplicationGroup.parse(node)
        end
        data
      end
    end

    # Error Parser for InvalidKMSKeyFault
    class InvalidKMSKeyFault
      def self.parse(http_resp)
        data = Types::InvalidKMSKeyFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ListAllowedNodeTypeModifications
    class ListAllowedNodeTypeModifications
      def self.parse(http_resp)
        data = Types::ListAllowedNodeTypeModificationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListAllowedNodeTypeModificationsResult')
        xml.at('ScaleUpModifications') do |node|
          children = node.children('member')
          data.scale_up_modifications = NodeTypeList.parse(children)
        end
        xml.at('ScaleDownModifications') do |node|
          children = node.children('member')
          data.scale_down_modifications = NodeTypeList.parse(children)
        end
        data
      end
    end

    class NodeTypeList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListTagsForResourceResult')
        xml.at('TagList') do |node|
          children = node.children('Tag')
          data.tag_list = TagList.parse(children)
        end
        data
      end
    end

    # Operation Parser for ModifyCacheCluster
    class ModifyCacheCluster
      def self.parse(http_resp)
        data = Types::ModifyCacheClusterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ModifyCacheClusterResult')
        xml.at('CacheCluster') do |node|
          data.cache_cluster = CacheCluster.parse(node)
        end
        data
      end
    end

    # Operation Parser for ModifyCacheParameterGroup
    class ModifyCacheParameterGroup
      def self.parse(http_resp)
        data = Types::ModifyCacheParameterGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ModifyCacheParameterGroupResult')
        xml.at('CacheParameterGroupName') do |node|
          data.cache_parameter_group_name = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ModifyCacheSubnetGroup
    class ModifyCacheSubnetGroup
      def self.parse(http_resp)
        data = Types::ModifyCacheSubnetGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ModifyCacheSubnetGroupResult')
        xml.at('CacheSubnetGroup') do |node|
          data.cache_subnet_group = CacheSubnetGroup.parse(node)
        end
        data
      end
    end

    # Error Parser for SubnetInUse
    class SubnetInUse
      def self.parse(http_resp)
        data = Types::SubnetInUse.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ModifyGlobalReplicationGroup
    class ModifyGlobalReplicationGroup
      def self.parse(http_resp)
        data = Types::ModifyGlobalReplicationGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ModifyGlobalReplicationGroupResult')
        xml.at('GlobalReplicationGroup') do |node|
          data.global_replication_group = GlobalReplicationGroup.parse(node)
        end
        data
      end
    end

    # Operation Parser for ModifyReplicationGroup
    class ModifyReplicationGroup
      def self.parse(http_resp)
        data = Types::ModifyReplicationGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ModifyReplicationGroupResult')
        xml.at('ReplicationGroup') do |node|
          data.replication_group = ReplicationGroup.parse(node)
        end
        data
      end
    end

    # Operation Parser for ModifyReplicationGroupShardConfiguration
    class ModifyReplicationGroupShardConfiguration
      def self.parse(http_resp)
        data = Types::ModifyReplicationGroupShardConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ModifyReplicationGroupShardConfigurationResult')
        xml.at('ReplicationGroup') do |node|
          data.replication_group = ReplicationGroup.parse(node)
        end
        data
      end
    end

    # Operation Parser for ModifyUser
    class ModifyUser
      def self.parse(http_resp)
        data = Types::ModifyUserOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ModifyUserResult')
        xml.at('UserId') do |node|
          data.user_id = (node.text || '')
        end
        xml.at('UserName') do |node|
          data.user_name = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('Engine') do |node|
          data.engine = (node.text || '')
        end
        xml.at('MinimumEngineVersion') do |node|
          data.minimum_engine_version = (node.text || '')
        end
        xml.at('AccessString') do |node|
          data.access_string = (node.text || '')
        end
        xml.at('UserGroupIds') do |node|
          children = node.children('member')
          data.user_group_ids = UserGroupIdList.parse(children)
        end
        xml.at('Authentication') do |node|
          data.authentication = Authentication.parse(node)
        end
        xml.at('ARN') do |node|
          data.arn = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ModifyUserGroup
    class ModifyUserGroup
      def self.parse(http_resp)
        data = Types::ModifyUserGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ModifyUserGroupResult')
        xml.at('UserGroupId') do |node|
          data.user_group_id = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('Engine') do |node|
          data.engine = (node.text || '')
        end
        xml.at('UserIds') do |node|
          children = node.children('member')
          data.user_ids = UserIdList.parse(children)
        end
        xml.at('MinimumEngineVersion') do |node|
          data.minimum_engine_version = (node.text || '')
        end
        xml.at('PendingChanges') do |node|
          data.pending_changes = UserGroupPendingChanges.parse(node)
        end
        xml.at('ReplicationGroups') do |node|
          children = node.children('member')
          data.replication_groups = UGReplicationGroupIdList.parse(children)
        end
        xml.at('ARN') do |node|
          data.arn = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for PurchaseReservedCacheNodesOffering
    class PurchaseReservedCacheNodesOffering
      def self.parse(http_resp)
        data = Types::PurchaseReservedCacheNodesOfferingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('PurchaseReservedCacheNodesOfferingResult')
        xml.at('ReservedCacheNode') do |node|
          data.reserved_cache_node = ReservedCacheNode.parse(node)
        end
        data
      end
    end

    # Error Parser for ReservedCacheNodeAlreadyExistsFault
    class ReservedCacheNodeAlreadyExistsFault
      def self.parse(http_resp)
        data = Types::ReservedCacheNodeAlreadyExistsFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for ReservedCacheNodeQuotaExceededFault
    class ReservedCacheNodeQuotaExceededFault
      def self.parse(http_resp)
        data = Types::ReservedCacheNodeQuotaExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for RebalanceSlotsInGlobalReplicationGroup
    class RebalanceSlotsInGlobalReplicationGroup
      def self.parse(http_resp)
        data = Types::RebalanceSlotsInGlobalReplicationGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('RebalanceSlotsInGlobalReplicationGroupResult')
        xml.at('GlobalReplicationGroup') do |node|
          data.global_replication_group = GlobalReplicationGroup.parse(node)
        end
        data
      end
    end

    # Operation Parser for RebootCacheCluster
    class RebootCacheCluster
      def self.parse(http_resp)
        data = Types::RebootCacheClusterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('RebootCacheClusterResult')
        xml.at('CacheCluster') do |node|
          data.cache_cluster = CacheCluster.parse(node)
        end
        data
      end
    end

    # Operation Parser for RemoveTagsFromResource
    class RemoveTagsFromResource
      def self.parse(http_resp)
        data = Types::RemoveTagsFromResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('RemoveTagsFromResourceResult')
        xml.at('TagList') do |node|
          children = node.children('Tag')
          data.tag_list = TagList.parse(children)
        end
        data
      end
    end

    # Error Parser for TagNotFoundFault
    class TagNotFoundFault
      def self.parse(http_resp)
        data = Types::TagNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ResetCacheParameterGroup
    class ResetCacheParameterGroup
      def self.parse(http_resp)
        data = Types::ResetCacheParameterGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ResetCacheParameterGroupResult')
        xml.at('CacheParameterGroupName') do |node|
          data.cache_parameter_group_name = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for RevokeCacheSecurityGroupIngress
    class RevokeCacheSecurityGroupIngress
      def self.parse(http_resp)
        data = Types::RevokeCacheSecurityGroupIngressOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('RevokeCacheSecurityGroupIngressResult')
        xml.at('CacheSecurityGroup') do |node|
          data.cache_security_group = CacheSecurityGroup.parse(node)
        end
        data
      end
    end

    # Error Parser for AuthorizationNotFoundFault
    class AuthorizationNotFoundFault
      def self.parse(http_resp)
        data = Types::AuthorizationNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for StartMigration
    class StartMigration
      def self.parse(http_resp)
        data = Types::StartMigrationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('StartMigrationResult')
        xml.at('ReplicationGroup') do |node|
          data.replication_group = ReplicationGroup.parse(node)
        end
        data
      end
    end

    # Error Parser for ReplicationGroupAlreadyUnderMigrationFault
    class ReplicationGroupAlreadyUnderMigrationFault
      def self.parse(http_resp)
        data = Types::ReplicationGroupAlreadyUnderMigrationFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for TestFailover
    class TestFailover
      def self.parse(http_resp)
        data = Types::TestFailoverOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('TestFailoverResult')
        xml.at('ReplicationGroup') do |node|
          data.replication_group = ReplicationGroup.parse(node)
        end
        data
      end
    end

    # Error Parser for NodeGroupNotFoundFault
    class NodeGroupNotFoundFault
      def self.parse(http_resp)
        data = Types::NodeGroupNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TestFailoverNotAvailableFault
    class TestFailoverNotAvailableFault
      def self.parse(http_resp)
        data = Types::TestFailoverNotAvailableFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for APICallRateForCustomerExceededFault
    class APICallRateForCustomerExceededFault
      def self.parse(http_resp)
        data = Types::APICallRateForCustomerExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end
  end
end
