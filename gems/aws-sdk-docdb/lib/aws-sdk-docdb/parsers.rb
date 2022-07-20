# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::DocDB
  module Parsers

    # Operation Parser for AddSourceIdentifierToSubscription
    class AddSourceIdentifierToSubscription
      def self.parse(http_resp)
        data = Types::AddSourceIdentifierToSubscriptionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('AddSourceIdentifierToSubscriptionResult')
        xml.at('EventSubscription') do |node|
          data.event_subscription = EventSubscription.parse(node)
        end
        data
      end
    end

    class EventSubscription
      def self.parse(xml)
        data = Types::EventSubscription.new
        xml.at('CustomerAwsId') do |node|
          data.customer_aws_id = (node.text || '')
        end
        xml.at('CustSubscriptionId') do |node|
          data.cust_subscription_id = (node.text || '')
        end
        xml.at('SnsTopicArn') do |node|
          data.sns_topic_arn = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('SubscriptionCreationTime') do |node|
          data.subscription_creation_time = (node.text || '')
        end
        xml.at('SourceType') do |node|
          data.source_type = (node.text || '')
        end
        xml.at('SourceIdsList') do |node|
          children = node.children('SourceId')
          data.source_ids_list = SourceIdsList.parse(children)
        end
        xml.at('EventCategoriesList') do |node|
          children = node.children('EventCategory')
          data.event_categories_list = EventCategoriesList.parse(children)
        end
        xml.at('Enabled') do |node|
          data.enabled = (node.text == 'true')
        end
        xml.at('EventSubscriptionArn') do |node|
          data.event_subscription_arn = (node.text || '')
        end
        return data
      end
    end

    class EventCategoriesList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class SourceIdsList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Error Parser for SourceNotFoundFault
    class SourceNotFoundFault
      def self.parse(http_resp)
        data = Types::SourceNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for SubscriptionNotFoundFault
    class SubscriptionNotFoundFault
      def self.parse(http_resp)
        data = Types::SubscriptionNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for AddTagsToResource
    class AddTagsToResource
      def self.parse(http_resp)
        data = Types::AddTagsToResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('AddTagsToResourceResult')
        data
      end
    end

    # Error Parser for DBInstanceNotFoundFault
    class DBInstanceNotFoundFault
      def self.parse(http_resp)
        data = Types::DBInstanceNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for DBSnapshotNotFoundFault
    class DBSnapshotNotFoundFault
      def self.parse(http_resp)
        data = Types::DBSnapshotNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for DBClusterNotFoundFault
    class DBClusterNotFoundFault
      def self.parse(http_resp)
        data = Types::DBClusterNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ApplyPendingMaintenanceAction
    class ApplyPendingMaintenanceAction
      def self.parse(http_resp)
        data = Types::ApplyPendingMaintenanceActionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ApplyPendingMaintenanceActionResult')
        xml.at('ResourcePendingMaintenanceActions') do |node|
          data.resource_pending_maintenance_actions = ResourcePendingMaintenanceActions.parse(node)
        end
        data
      end
    end

    class ResourcePendingMaintenanceActions
      def self.parse(xml)
        data = Types::ResourcePendingMaintenanceActions.new
        xml.at('ResourceIdentifier') do |node|
          data.resource_identifier = (node.text || '')
        end
        xml.at('PendingMaintenanceActionDetails') do |node|
          children = node.children('PendingMaintenanceAction')
          data.pending_maintenance_action_details = PendingMaintenanceActionDetails.parse(children)
        end
        return data
      end
    end

    class PendingMaintenanceActionDetails
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << PendingMaintenanceAction.parse(node)
        end
        data
      end
    end

    class PendingMaintenanceAction
      def self.parse(xml)
        data = Types::PendingMaintenanceAction.new
        xml.at('Action') do |node|
          data.action = (node.text || '')
        end
        xml.at('AutoAppliedAfterDate') do |node|
          data.auto_applied_after_date = Time.parse(node.text) if node.text
        end
        xml.at('ForcedApplyDate') do |node|
          data.forced_apply_date = Time.parse(node.text) if node.text
        end
        xml.at('OptInStatus') do |node|
          data.opt_in_status = (node.text || '')
        end
        xml.at('CurrentApplyDate') do |node|
          data.current_apply_date = Time.parse(node.text) if node.text
        end
        xml.at('Description') do |node|
          data.description = (node.text || '')
        end
        return data
      end
    end

    # Error Parser for ResourceNotFoundFault
    class ResourceNotFoundFault
      def self.parse(http_resp)
        data = Types::ResourceNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidDBClusterStateFault
    class InvalidDBClusterStateFault
      def self.parse(http_resp)
        data = Types::InvalidDBClusterStateFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidDBInstanceStateFault
    class InvalidDBInstanceStateFault
      def self.parse(http_resp)
        data = Types::InvalidDBInstanceStateFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CopyDBClusterParameterGroup
    class CopyDBClusterParameterGroup
      def self.parse(http_resp)
        data = Types::CopyDBClusterParameterGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CopyDBClusterParameterGroupResult')
        xml.at('DBClusterParameterGroup') do |node|
          data.db_cluster_parameter_group = DBClusterParameterGroup.parse(node)
        end
        data
      end
    end

    class DBClusterParameterGroup
      def self.parse(xml)
        data = Types::DBClusterParameterGroup.new
        xml.at('DBClusterParameterGroupName') do |node|
          data.db_cluster_parameter_group_name = (node.text || '')
        end
        xml.at('DBParameterGroupFamily') do |node|
          data.db_parameter_group_family = (node.text || '')
        end
        xml.at('Description') do |node|
          data.description = (node.text || '')
        end
        xml.at('DBClusterParameterGroupArn') do |node|
          data.db_cluster_parameter_group_arn = (node.text || '')
        end
        return data
      end
    end

    # Error Parser for DBParameterGroupQuotaExceededFault
    class DBParameterGroupQuotaExceededFault
      def self.parse(http_resp)
        data = Types::DBParameterGroupQuotaExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for DBParameterGroupAlreadyExistsFault
    class DBParameterGroupAlreadyExistsFault
      def self.parse(http_resp)
        data = Types::DBParameterGroupAlreadyExistsFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for DBParameterGroupNotFoundFault
    class DBParameterGroupNotFoundFault
      def self.parse(http_resp)
        data = Types::DBParameterGroupNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CopyDBClusterSnapshot
    class CopyDBClusterSnapshot
      def self.parse(http_resp)
        data = Types::CopyDBClusterSnapshotOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CopyDBClusterSnapshotResult')
        xml.at('DBClusterSnapshot') do |node|
          data.db_cluster_snapshot = DBClusterSnapshot.parse(node)
        end
        data
      end
    end

    class DBClusterSnapshot
      def self.parse(xml)
        data = Types::DBClusterSnapshot.new
        xml.at('AvailabilityZones') do |node|
          children = node.children('AvailabilityZone')
          data.availability_zones = AvailabilityZones.parse(children)
        end
        xml.at('DBClusterSnapshotIdentifier') do |node|
          data.db_cluster_snapshot_identifier = (node.text || '')
        end
        xml.at('DBClusterIdentifier') do |node|
          data.db_cluster_identifier = (node.text || '')
        end
        xml.at('SnapshotCreateTime') do |node|
          data.snapshot_create_time = Time.parse(node.text) if node.text
        end
        xml.at('Engine') do |node|
          data.engine = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('Port') do |node|
          data.port = node.text&.to_i
        end
        xml.at('VpcId') do |node|
          data.vpc_id = (node.text || '')
        end
        xml.at('ClusterCreateTime') do |node|
          data.cluster_create_time = Time.parse(node.text) if node.text
        end
        xml.at('MasterUsername') do |node|
          data.master_username = (node.text || '')
        end
        xml.at('EngineVersion') do |node|
          data.engine_version = (node.text || '')
        end
        xml.at('SnapshotType') do |node|
          data.snapshot_type = (node.text || '')
        end
        xml.at('PercentProgress') do |node|
          data.percent_progress = node.text&.to_i
        end
        xml.at('StorageEncrypted') do |node|
          data.storage_encrypted = (node.text == 'true')
        end
        xml.at('KmsKeyId') do |node|
          data.kms_key_id = (node.text || '')
        end
        xml.at('DBClusterSnapshotArn') do |node|
          data.db_cluster_snapshot_arn = (node.text || '')
        end
        xml.at('SourceDBClusterSnapshotArn') do |node|
          data.source_db_cluster_snapshot_arn = (node.text || '')
        end
        return data
      end
    end

    class AvailabilityZones
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Error Parser for DBClusterSnapshotNotFoundFault
    class DBClusterSnapshotNotFoundFault
      def self.parse(http_resp)
        data = Types::DBClusterSnapshotNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidDBClusterSnapshotStateFault
    class InvalidDBClusterSnapshotStateFault
      def self.parse(http_resp)
        data = Types::InvalidDBClusterSnapshotStateFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for DBClusterSnapshotAlreadyExistsFault
    class DBClusterSnapshotAlreadyExistsFault
      def self.parse(http_resp)
        data = Types::DBClusterSnapshotAlreadyExistsFault.new
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

    # Error Parser for KMSKeyNotAccessibleFault
    class KMSKeyNotAccessibleFault
      def self.parse(http_resp)
        data = Types::KMSKeyNotAccessibleFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateDBCluster
    class CreateDBCluster
      def self.parse(http_resp)
        data = Types::CreateDBClusterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateDBClusterResult')
        xml.at('DBCluster') do |node|
          data.db_cluster = DBCluster.parse(node)
        end
        data
      end
    end

    class DBCluster
      def self.parse(xml)
        data = Types::DBCluster.new
        xml.at('AvailabilityZones') do |node|
          children = node.children('AvailabilityZone')
          data.availability_zones = AvailabilityZones.parse(children)
        end
        xml.at('BackupRetentionPeriod') do |node|
          data.backup_retention_period = node.text&.to_i
        end
        xml.at('DBClusterIdentifier') do |node|
          data.db_cluster_identifier = (node.text || '')
        end
        xml.at('DBClusterParameterGroup') do |node|
          data.db_cluster_parameter_group = (node.text || '')
        end
        xml.at('DBSubnetGroup') do |node|
          data.db_subnet_group = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('PercentProgress') do |node|
          data.percent_progress = (node.text || '')
        end
        xml.at('EarliestRestorableTime') do |node|
          data.earliest_restorable_time = Time.parse(node.text) if node.text
        end
        xml.at('Endpoint') do |node|
          data.endpoint = (node.text || '')
        end
        xml.at('ReaderEndpoint') do |node|
          data.reader_endpoint = (node.text || '')
        end
        xml.at('MultiAZ') do |node|
          data.multi_az = (node.text == 'true')
        end
        xml.at('Engine') do |node|
          data.engine = (node.text || '')
        end
        xml.at('EngineVersion') do |node|
          data.engine_version = (node.text || '')
        end
        xml.at('LatestRestorableTime') do |node|
          data.latest_restorable_time = Time.parse(node.text) if node.text
        end
        xml.at('Port') do |node|
          data.port = node.text&.to_i
        end
        xml.at('MasterUsername') do |node|
          data.master_username = (node.text || '')
        end
        xml.at('PreferredBackupWindow') do |node|
          data.preferred_backup_window = (node.text || '')
        end
        xml.at('PreferredMaintenanceWindow') do |node|
          data.preferred_maintenance_window = (node.text || '')
        end
        xml.at('ReplicationSourceIdentifier') do |node|
          data.replication_source_identifier = (node.text || '')
        end
        xml.at('ReadReplicaIdentifiers') do |node|
          children = node.children('ReadReplicaIdentifier')
          data.read_replica_identifiers = ReadReplicaIdentifierList.parse(children)
        end
        xml.at('DBClusterMembers') do |node|
          children = node.children('DBClusterMember')
          data.db_cluster_members = DBClusterMemberList.parse(children)
        end
        xml.at('VpcSecurityGroups') do |node|
          children = node.children('VpcSecurityGroupMembership')
          data.vpc_security_groups = VpcSecurityGroupMembershipList.parse(children)
        end
        xml.at('HostedZoneId') do |node|
          data.hosted_zone_id = (node.text || '')
        end
        xml.at('StorageEncrypted') do |node|
          data.storage_encrypted = (node.text == 'true')
        end
        xml.at('KmsKeyId') do |node|
          data.kms_key_id = (node.text || '')
        end
        xml.at('DbClusterResourceId') do |node|
          data.db_cluster_resource_id = (node.text || '')
        end
        xml.at('DBClusterArn') do |node|
          data.db_cluster_arn = (node.text || '')
        end
        xml.at('AssociatedRoles') do |node|
          children = node.children('DBClusterRole')
          data.associated_roles = DBClusterRoles.parse(children)
        end
        xml.at('ClusterCreateTime') do |node|
          data.cluster_create_time = Time.parse(node.text) if node.text
        end
        xml.at('EnabledCloudwatchLogsExports') do |node|
          children = node.children('member')
          data.enabled_cloudwatch_logs_exports = LogTypeList.parse(children)
        end
        xml.at('DeletionProtection') do |node|
          data.deletion_protection = (node.text == 'true')
        end
        return data
      end
    end

    class LogTypeList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class DBClusterRoles
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << DBClusterRole.parse(node)
        end
        data
      end
    end

    class DBClusterRole
      def self.parse(xml)
        data = Types::DBClusterRole.new
        xml.at('RoleArn') do |node|
          data.role_arn = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        return data
      end
    end

    class VpcSecurityGroupMembershipList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << VpcSecurityGroupMembership.parse(node)
        end
        data
      end
    end

    class VpcSecurityGroupMembership
      def self.parse(xml)
        data = Types::VpcSecurityGroupMembership.new
        xml.at('VpcSecurityGroupId') do |node|
          data.vpc_security_group_id = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        return data
      end
    end

    class DBClusterMemberList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << DBClusterMember.parse(node)
        end
        data
      end
    end

    class DBClusterMember
      def self.parse(xml)
        data = Types::DBClusterMember.new
        xml.at('DBInstanceIdentifier') do |node|
          data.db_instance_identifier = (node.text || '')
        end
        xml.at('IsClusterWriter') do |node|
          data.is_cluster_writer = (node.text == 'true')
        end
        xml.at('DBClusterParameterGroupStatus') do |node|
          data.db_cluster_parameter_group_status = (node.text || '')
        end
        xml.at('PromotionTier') do |node|
          data.promotion_tier = node.text&.to_i
        end
        return data
      end
    end

    class ReadReplicaIdentifierList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidGlobalClusterStateFault
    class InvalidGlobalClusterStateFault
      def self.parse(http_resp)
        data = Types::InvalidGlobalClusterStateFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for DBClusterAlreadyExistsFault
    class DBClusterAlreadyExistsFault
      def self.parse(http_resp)
        data = Types::DBClusterAlreadyExistsFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for DBClusterQuotaExceededFault
    class DBClusterQuotaExceededFault
      def self.parse(http_resp)
        data = Types::DBClusterQuotaExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
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

    # Error Parser for DBSubnetGroupNotFoundFault
    class DBSubnetGroupNotFoundFault
      def self.parse(http_resp)
        data = Types::DBSubnetGroupNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for GlobalClusterNotFoundFault
    class GlobalClusterNotFoundFault
      def self.parse(http_resp)
        data = Types::GlobalClusterNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidDBSubnetGroupStateFault
    class InvalidDBSubnetGroupStateFault
      def self.parse(http_resp)
        data = Types::InvalidDBSubnetGroupStateFault.new
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

    # Error Parser for DBSubnetGroupDoesNotCoverEnoughAZs
    class DBSubnetGroupDoesNotCoverEnoughAZs
      def self.parse(http_resp)
        data = Types::DBSubnetGroupDoesNotCoverEnoughAZs.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for DBClusterParameterGroupNotFoundFault
    class DBClusterParameterGroupNotFoundFault
      def self.parse(http_resp)
        data = Types::DBClusterParameterGroupNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InsufficientStorageClusterCapacityFault
    class InsufficientStorageClusterCapacityFault
      def self.parse(http_resp)
        data = Types::InsufficientStorageClusterCapacityFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for StorageQuotaExceededFault
    class StorageQuotaExceededFault
      def self.parse(http_resp)
        data = Types::StorageQuotaExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateDBClusterParameterGroup
    class CreateDBClusterParameterGroup
      def self.parse(http_resp)
        data = Types::CreateDBClusterParameterGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateDBClusterParameterGroupResult')
        xml.at('DBClusterParameterGroup') do |node|
          data.db_cluster_parameter_group = DBClusterParameterGroup.parse(node)
        end
        data
      end
    end

    # Operation Parser for CreateDBClusterSnapshot
    class CreateDBClusterSnapshot
      def self.parse(http_resp)
        data = Types::CreateDBClusterSnapshotOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateDBClusterSnapshotResult')
        xml.at('DBClusterSnapshot') do |node|
          data.db_cluster_snapshot = DBClusterSnapshot.parse(node)
        end
        data
      end
    end

    # Operation Parser for CreateDBInstance
    class CreateDBInstance
      def self.parse(http_resp)
        data = Types::CreateDBInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateDBInstanceResult')
        xml.at('DBInstance') do |node|
          data.db_instance = DBInstance.parse(node)
        end
        data
      end
    end

    class DBInstance
      def self.parse(xml)
        data = Types::DBInstance.new
        xml.at('DBInstanceIdentifier') do |node|
          data.db_instance_identifier = (node.text || '')
        end
        xml.at('DBInstanceClass') do |node|
          data.db_instance_class = (node.text || '')
        end
        xml.at('Engine') do |node|
          data.engine = (node.text || '')
        end
        xml.at('DBInstanceStatus') do |node|
          data.db_instance_status = (node.text || '')
        end
        xml.at('Endpoint') do |node|
          data.endpoint = Endpoint.parse(node)
        end
        xml.at('InstanceCreateTime') do |node|
          data.instance_create_time = Time.parse(node.text) if node.text
        end
        xml.at('PreferredBackupWindow') do |node|
          data.preferred_backup_window = (node.text || '')
        end
        xml.at('BackupRetentionPeriod') do |node|
          data.backup_retention_period = node.text&.to_i
        end
        xml.at('VpcSecurityGroups') do |node|
          children = node.children('VpcSecurityGroupMembership')
          data.vpc_security_groups = VpcSecurityGroupMembershipList.parse(children)
        end
        xml.at('AvailabilityZone') do |node|
          data.availability_zone = (node.text || '')
        end
        xml.at('DBSubnetGroup') do |node|
          data.db_subnet_group = DBSubnetGroup.parse(node)
        end
        xml.at('PreferredMaintenanceWindow') do |node|
          data.preferred_maintenance_window = (node.text || '')
        end
        xml.at('PendingModifiedValues') do |node|
          data.pending_modified_values = PendingModifiedValues.parse(node)
        end
        xml.at('LatestRestorableTime') do |node|
          data.latest_restorable_time = Time.parse(node.text) if node.text
        end
        xml.at('EngineVersion') do |node|
          data.engine_version = (node.text || '')
        end
        xml.at('AutoMinorVersionUpgrade') do |node|
          data.auto_minor_version_upgrade = (node.text == 'true')
        end
        xml.at('PubliclyAccessible') do |node|
          data.publicly_accessible = (node.text == 'true')
        end
        xml.at('StatusInfos') do |node|
          children = node.children('DBInstanceStatusInfo')
          data.status_infos = DBInstanceStatusInfoList.parse(children)
        end
        xml.at('DBClusterIdentifier') do |node|
          data.db_cluster_identifier = (node.text || '')
        end
        xml.at('StorageEncrypted') do |node|
          data.storage_encrypted = (node.text == 'true')
        end
        xml.at('KmsKeyId') do |node|
          data.kms_key_id = (node.text || '')
        end
        xml.at('DbiResourceId') do |node|
          data.dbi_resource_id = (node.text || '')
        end
        xml.at('CACertificateIdentifier') do |node|
          data.ca_certificate_identifier = (node.text || '')
        end
        xml.at('PromotionTier') do |node|
          data.promotion_tier = node.text&.to_i
        end
        xml.at('DBInstanceArn') do |node|
          data.db_instance_arn = (node.text || '')
        end
        xml.at('EnabledCloudwatchLogsExports') do |node|
          children = node.children('member')
          data.enabled_cloudwatch_logs_exports = LogTypeList.parse(children)
        end
        return data
      end
    end

    class DBInstanceStatusInfoList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << DBInstanceStatusInfo.parse(node)
        end
        data
      end
    end

    class DBInstanceStatusInfo
      def self.parse(xml)
        data = Types::DBInstanceStatusInfo.new
        xml.at('StatusType') do |node|
          data.status_type = (node.text || '')
        end
        xml.at('Normal') do |node|
          data.normal = (node.text == 'true')
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

    class PendingModifiedValues
      def self.parse(xml)
        data = Types::PendingModifiedValues.new
        xml.at('DBInstanceClass') do |node|
          data.db_instance_class = (node.text || '')
        end
        xml.at('AllocatedStorage') do |node|
          data.allocated_storage = node.text&.to_i
        end
        xml.at('MasterUserPassword') do |node|
          data.master_user_password = (node.text || '')
        end
        xml.at('Port') do |node|
          data.port = node.text&.to_i
        end
        xml.at('BackupRetentionPeriod') do |node|
          data.backup_retention_period = node.text&.to_i
        end
        xml.at('MultiAZ') do |node|
          data.multi_az = (node.text == 'true')
        end
        xml.at('EngineVersion') do |node|
          data.engine_version = (node.text || '')
        end
        xml.at('LicenseModel') do |node|
          data.license_model = (node.text || '')
        end
        xml.at('Iops') do |node|
          data.iops = node.text&.to_i
        end
        xml.at('DBInstanceIdentifier') do |node|
          data.db_instance_identifier = (node.text || '')
        end
        xml.at('StorageType') do |node|
          data.storage_type = (node.text || '')
        end
        xml.at('CACertificateIdentifier') do |node|
          data.ca_certificate_identifier = (node.text || '')
        end
        xml.at('DBSubnetGroupName') do |node|
          data.db_subnet_group_name = (node.text || '')
        end
        xml.at('PendingCloudwatchLogsExports') do |node|
          data.pending_cloudwatch_logs_exports = PendingCloudwatchLogsExports.parse(node)
        end
        return data
      end
    end

    class PendingCloudwatchLogsExports
      def self.parse(xml)
        data = Types::PendingCloudwatchLogsExports.new
        xml.at('LogTypesToEnable') do |node|
          children = node.children('member')
          data.log_types_to_enable = LogTypeList.parse(children)
        end
        xml.at('LogTypesToDisable') do |node|
          children = node.children('member')
          data.log_types_to_disable = LogTypeList.parse(children)
        end
        return data
      end
    end

    class DBSubnetGroup
      def self.parse(xml)
        data = Types::DBSubnetGroup.new
        xml.at('DBSubnetGroupName') do |node|
          data.db_subnet_group_name = (node.text || '')
        end
        xml.at('DBSubnetGroupDescription') do |node|
          data.db_subnet_group_description = (node.text || '')
        end
        xml.at('VpcId') do |node|
          data.vpc_id = (node.text || '')
        end
        xml.at('SubnetGroupStatus') do |node|
          data.subnet_group_status = (node.text || '')
        end
        xml.at('Subnets') do |node|
          children = node.children('Subnet')
          data.subnets = SubnetList.parse(children)
        end
        xml.at('DBSubnetGroupArn') do |node|
          data.db_subnet_group_arn = (node.text || '')
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
        xml.at('SubnetStatus') do |node|
          data.subnet_status = (node.text || '')
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

    class Endpoint
      def self.parse(xml)
        data = Types::Endpoint.new
        xml.at('Address') do |node|
          data.address = (node.text || '')
        end
        xml.at('Port') do |node|
          data.port = node.text&.to_i
        end
        xml.at('HostedZoneId') do |node|
          data.hosted_zone_id = (node.text || '')
        end
        return data
      end
    end

    # Error Parser for DBSecurityGroupNotFoundFault
    class DBSecurityGroupNotFoundFault
      def self.parse(http_resp)
        data = Types::DBSecurityGroupNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InstanceQuotaExceededFault
    class InstanceQuotaExceededFault
      def self.parse(http_resp)
        data = Types::InstanceQuotaExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for StorageTypeNotSupportedFault
    class StorageTypeNotSupportedFault
      def self.parse(http_resp)
        data = Types::StorageTypeNotSupportedFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
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

    # Error Parser for InsufficientDBInstanceCapacityFault
    class InsufficientDBInstanceCapacityFault
      def self.parse(http_resp)
        data = Types::InsufficientDBInstanceCapacityFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for DBInstanceAlreadyExistsFault
    class DBInstanceAlreadyExistsFault
      def self.parse(http_resp)
        data = Types::DBInstanceAlreadyExistsFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateDBSubnetGroup
    class CreateDBSubnetGroup
      def self.parse(http_resp)
        data = Types::CreateDBSubnetGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateDBSubnetGroupResult')
        xml.at('DBSubnetGroup') do |node|
          data.db_subnet_group = DBSubnetGroup.parse(node)
        end
        data
      end
    end

    # Error Parser for DBSubnetQuotaExceededFault
    class DBSubnetQuotaExceededFault
      def self.parse(http_resp)
        data = Types::DBSubnetQuotaExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for DBSubnetGroupQuotaExceededFault
    class DBSubnetGroupQuotaExceededFault
      def self.parse(http_resp)
        data = Types::DBSubnetGroupQuotaExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for DBSubnetGroupAlreadyExistsFault
    class DBSubnetGroupAlreadyExistsFault
      def self.parse(http_resp)
        data = Types::DBSubnetGroupAlreadyExistsFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateEventSubscription
    class CreateEventSubscription
      def self.parse(http_resp)
        data = Types::CreateEventSubscriptionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateEventSubscriptionResult')
        xml.at('EventSubscription') do |node|
          data.event_subscription = EventSubscription.parse(node)
        end
        data
      end
    end

    # Error Parser for SNSInvalidTopicFault
    class SNSInvalidTopicFault
      def self.parse(http_resp)
        data = Types::SNSInvalidTopicFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for SNSTopicArnNotFoundFault
    class SNSTopicArnNotFoundFault
      def self.parse(http_resp)
        data = Types::SNSTopicArnNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for SubscriptionAlreadyExistFault
    class SubscriptionAlreadyExistFault
      def self.parse(http_resp)
        data = Types::SubscriptionAlreadyExistFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for SubscriptionCategoryNotFoundFault
    class SubscriptionCategoryNotFoundFault
      def self.parse(http_resp)
        data = Types::SubscriptionCategoryNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for EventSubscriptionQuotaExceededFault
    class EventSubscriptionQuotaExceededFault
      def self.parse(http_resp)
        data = Types::EventSubscriptionQuotaExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for SNSNoAuthorizationFault
    class SNSNoAuthorizationFault
      def self.parse(http_resp)
        data = Types::SNSNoAuthorizationFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateGlobalCluster
    class CreateGlobalCluster
      def self.parse(http_resp)
        data = Types::CreateGlobalClusterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateGlobalClusterResult')
        xml.at('GlobalCluster') do |node|
          data.global_cluster = GlobalCluster.parse(node)
        end
        data
      end
    end

    class GlobalCluster
      def self.parse(xml)
        data = Types::GlobalCluster.new
        xml.at('GlobalClusterIdentifier') do |node|
          data.global_cluster_identifier = (node.text || '')
        end
        xml.at('GlobalClusterResourceId') do |node|
          data.global_cluster_resource_id = (node.text || '')
        end
        xml.at('GlobalClusterArn') do |node|
          data.global_cluster_arn = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('Engine') do |node|
          data.engine = (node.text || '')
        end
        xml.at('EngineVersion') do |node|
          data.engine_version = (node.text || '')
        end
        xml.at('DatabaseName') do |node|
          data.database_name = (node.text || '')
        end
        xml.at('StorageEncrypted') do |node|
          data.storage_encrypted = (node.text == 'true')
        end
        xml.at('DeletionProtection') do |node|
          data.deletion_protection = (node.text == 'true')
        end
        xml.at('GlobalClusterMembers') do |node|
          children = node.children('GlobalClusterMember')
          data.global_cluster_members = GlobalClusterMemberList.parse(children)
        end
        return data
      end
    end

    class GlobalClusterMemberList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << GlobalClusterMember.parse(node)
        end
        data
      end
    end

    class GlobalClusterMember
      def self.parse(xml)
        data = Types::GlobalClusterMember.new
        xml.at('DBClusterArn') do |node|
          data.db_cluster_arn = (node.text || '')
        end
        xml.at('Readers') do |node|
          children = node.children('member')
          data.readers = ReadersArnList.parse(children)
        end
        xml.at('IsWriter') do |node|
          data.is_writer = (node.text == 'true')
        end
        return data
      end
    end

    class ReadersArnList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Error Parser for GlobalClusterAlreadyExistsFault
    class GlobalClusterAlreadyExistsFault
      def self.parse(http_resp)
        data = Types::GlobalClusterAlreadyExistsFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for GlobalClusterQuotaExceededFault
    class GlobalClusterQuotaExceededFault
      def self.parse(http_resp)
        data = Types::GlobalClusterQuotaExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteDBCluster
    class DeleteDBCluster
      def self.parse(http_resp)
        data = Types::DeleteDBClusterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteDBClusterResult')
        xml.at('DBCluster') do |node|
          data.db_cluster = DBCluster.parse(node)
        end
        data
      end
    end

    # Operation Parser for DeleteDBClusterParameterGroup
    class DeleteDBClusterParameterGroup
      def self.parse(http_resp)
        data = Types::DeleteDBClusterParameterGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteDBClusterParameterGroupResult')
        data
      end
    end

    # Error Parser for InvalidDBParameterGroupStateFault
    class InvalidDBParameterGroupStateFault
      def self.parse(http_resp)
        data = Types::InvalidDBParameterGroupStateFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteDBClusterSnapshot
    class DeleteDBClusterSnapshot
      def self.parse(http_resp)
        data = Types::DeleteDBClusterSnapshotOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteDBClusterSnapshotResult')
        xml.at('DBClusterSnapshot') do |node|
          data.db_cluster_snapshot = DBClusterSnapshot.parse(node)
        end
        data
      end
    end

    # Operation Parser for DeleteDBInstance
    class DeleteDBInstance
      def self.parse(http_resp)
        data = Types::DeleteDBInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteDBInstanceResult')
        xml.at('DBInstance') do |node|
          data.db_instance = DBInstance.parse(node)
        end
        data
      end
    end

    # Error Parser for DBSnapshotAlreadyExistsFault
    class DBSnapshotAlreadyExistsFault
      def self.parse(http_resp)
        data = Types::DBSnapshotAlreadyExistsFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteDBSubnetGroup
    class DeleteDBSubnetGroup
      def self.parse(http_resp)
        data = Types::DeleteDBSubnetGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteDBSubnetGroupResult')
        data
      end
    end

    # Error Parser for InvalidDBSubnetStateFault
    class InvalidDBSubnetStateFault
      def self.parse(http_resp)
        data = Types::InvalidDBSubnetStateFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteEventSubscription
    class DeleteEventSubscription
      def self.parse(http_resp)
        data = Types::DeleteEventSubscriptionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteEventSubscriptionResult')
        xml.at('EventSubscription') do |node|
          data.event_subscription = EventSubscription.parse(node)
        end
        data
      end
    end

    # Error Parser for InvalidEventSubscriptionStateFault
    class InvalidEventSubscriptionStateFault
      def self.parse(http_resp)
        data = Types::InvalidEventSubscriptionStateFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteGlobalCluster
    class DeleteGlobalCluster
      def self.parse(http_resp)
        data = Types::DeleteGlobalClusterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteGlobalClusterResult')
        xml.at('GlobalCluster') do |node|
          data.global_cluster = GlobalCluster.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeCertificates
    class DescribeCertificates
      def self.parse(http_resp)
        data = Types::DescribeCertificatesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeCertificatesResult')
        xml.at('Certificates') do |node|
          children = node.children('Certificate')
          data.certificates = CertificateList.parse(children)
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    class CertificateList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Certificate.parse(node)
        end
        data
      end
    end

    class Certificate
      def self.parse(xml)
        data = Types::Certificate.new
        xml.at('CertificateIdentifier') do |node|
          data.certificate_identifier = (node.text || '')
        end
        xml.at('CertificateType') do |node|
          data.certificate_type = (node.text || '')
        end
        xml.at('Thumbprint') do |node|
          data.thumbprint = (node.text || '')
        end
        xml.at('ValidFrom') do |node|
          data.valid_from = Time.parse(node.text) if node.text
        end
        xml.at('ValidTill') do |node|
          data.valid_till = Time.parse(node.text) if node.text
        end
        xml.at('CertificateArn') do |node|
          data.certificate_arn = (node.text || '')
        end
        return data
      end
    end

    # Error Parser for CertificateNotFoundFault
    class CertificateNotFoundFault
      def self.parse(http_resp)
        data = Types::CertificateNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DescribeDBClusterParameterGroups
    class DescribeDBClusterParameterGroups
      def self.parse(http_resp)
        data = Types::DescribeDBClusterParameterGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeDBClusterParameterGroupsResult')
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('DBClusterParameterGroups') do |node|
          children = node.children('DBClusterParameterGroup')
          data.db_cluster_parameter_groups = DBClusterParameterGroupList.parse(children)
        end
        data
      end
    end

    class DBClusterParameterGroupList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << DBClusterParameterGroup.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeDBClusterParameters
    class DescribeDBClusterParameters
      def self.parse(http_resp)
        data = Types::DescribeDBClusterParametersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeDBClusterParametersResult')
        xml.at('Parameters') do |node|
          children = node.children('Parameter')
          data.parameters = ParametersList.parse(children)
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
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
        xml.at('ApplyType') do |node|
          data.apply_type = (node.text || '')
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
        xml.at('ApplyMethod') do |node|
          data.apply_method = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeDBClusterSnapshotAttributes
    class DescribeDBClusterSnapshotAttributes
      def self.parse(http_resp)
        data = Types::DescribeDBClusterSnapshotAttributesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeDBClusterSnapshotAttributesResult')
        xml.at('DBClusterSnapshotAttributesResult') do |node|
          data.db_cluster_snapshot_attributes_result = DBClusterSnapshotAttributesResult.parse(node)
        end
        data
      end
    end

    class DBClusterSnapshotAttributesResult
      def self.parse(xml)
        data = Types::DBClusterSnapshotAttributesResult.new
        xml.at('DBClusterSnapshotIdentifier') do |node|
          data.db_cluster_snapshot_identifier = (node.text || '')
        end
        xml.at('DBClusterSnapshotAttributes') do |node|
          children = node.children('DBClusterSnapshotAttribute')
          data.db_cluster_snapshot_attributes = DBClusterSnapshotAttributeList.parse(children)
        end
        return data
      end
    end

    class DBClusterSnapshotAttributeList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << DBClusterSnapshotAttribute.parse(node)
        end
        data
      end
    end

    class DBClusterSnapshotAttribute
      def self.parse(xml)
        data = Types::DBClusterSnapshotAttribute.new
        xml.at('AttributeName') do |node|
          data.attribute_name = (node.text || '')
        end
        xml.at('AttributeValues') do |node|
          children = node.children('AttributeValue')
          data.attribute_values = AttributeValueList.parse(children)
        end
        return data
      end
    end

    class AttributeValueList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DescribeDBClusterSnapshots
    class DescribeDBClusterSnapshots
      def self.parse(http_resp)
        data = Types::DescribeDBClusterSnapshotsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeDBClusterSnapshotsResult')
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('DBClusterSnapshots') do |node|
          children = node.children('DBClusterSnapshot')
          data.db_cluster_snapshots = DBClusterSnapshotList.parse(children)
        end
        data
      end
    end

    class DBClusterSnapshotList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << DBClusterSnapshot.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeDBClusters
    class DescribeDBClusters
      def self.parse(http_resp)
        data = Types::DescribeDBClustersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeDBClustersResult')
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('DBClusters') do |node|
          children = node.children('DBCluster')
          data.db_clusters = DBClusterList.parse(children)
        end
        data
      end
    end

    class DBClusterList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << DBCluster.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeDBEngineVersions
    class DescribeDBEngineVersions
      def self.parse(http_resp)
        data = Types::DescribeDBEngineVersionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeDBEngineVersionsResult')
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('DBEngineVersions') do |node|
          children = node.children('DBEngineVersion')
          data.db_engine_versions = DBEngineVersionList.parse(children)
        end
        data
      end
    end

    class DBEngineVersionList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << DBEngineVersion.parse(node)
        end
        data
      end
    end

    class DBEngineVersion
      def self.parse(xml)
        data = Types::DBEngineVersion.new
        xml.at('Engine') do |node|
          data.engine = (node.text || '')
        end
        xml.at('EngineVersion') do |node|
          data.engine_version = (node.text || '')
        end
        xml.at('DBParameterGroupFamily') do |node|
          data.db_parameter_group_family = (node.text || '')
        end
        xml.at('DBEngineDescription') do |node|
          data.db_engine_description = (node.text || '')
        end
        xml.at('DBEngineVersionDescription') do |node|
          data.db_engine_version_description = (node.text || '')
        end
        xml.at('ValidUpgradeTarget') do |node|
          children = node.children('UpgradeTarget')
          data.valid_upgrade_target = ValidUpgradeTargetList.parse(children)
        end
        xml.at('ExportableLogTypes') do |node|
          children = node.children('member')
          data.exportable_log_types = LogTypeList.parse(children)
        end
        xml.at('SupportsLogExportsToCloudwatchLogs') do |node|
          data.supports_log_exports_to_cloudwatch_logs = (node.text == 'true')
        end
        return data
      end
    end

    class ValidUpgradeTargetList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << UpgradeTarget.parse(node)
        end
        data
      end
    end

    class UpgradeTarget
      def self.parse(xml)
        data = Types::UpgradeTarget.new
        xml.at('Engine') do |node|
          data.engine = (node.text || '')
        end
        xml.at('EngineVersion') do |node|
          data.engine_version = (node.text || '')
        end
        xml.at('Description') do |node|
          data.description = (node.text || '')
        end
        xml.at('AutoUpgrade') do |node|
          data.auto_upgrade = (node.text == 'true')
        end
        xml.at('IsMajorVersionUpgrade') do |node|
          data.is_major_version_upgrade = (node.text == 'true')
        end
        return data
      end
    end

    # Operation Parser for DescribeDBInstances
    class DescribeDBInstances
      def self.parse(http_resp)
        data = Types::DescribeDBInstancesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeDBInstancesResult')
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('DBInstances') do |node|
          children = node.children('DBInstance')
          data.db_instances = DBInstanceList.parse(children)
        end
        data
      end
    end

    class DBInstanceList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << DBInstance.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeDBSubnetGroups
    class DescribeDBSubnetGroups
      def self.parse(http_resp)
        data = Types::DescribeDBSubnetGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeDBSubnetGroupsResult')
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('DBSubnetGroups') do |node|
          children = node.children('DBSubnetGroup')
          data.db_subnet_groups = DBSubnetGroups.parse(children)
        end
        data
      end
    end

    class DBSubnetGroups
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << DBSubnetGroup.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeEngineDefaultClusterParameters
    class DescribeEngineDefaultClusterParameters
      def self.parse(http_resp)
        data = Types::DescribeEngineDefaultClusterParametersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeEngineDefaultClusterParametersResult')
        xml.at('EngineDefaults') do |node|
          data.engine_defaults = EngineDefaults.parse(node)
        end
        data
      end
    end

    class EngineDefaults
      def self.parse(xml)
        data = Types::EngineDefaults.new
        xml.at('DBParameterGroupFamily') do |node|
          data.db_parameter_group_family = (node.text || '')
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('Parameters') do |node|
          children = node.children('Parameter')
          data.parameters = ParametersList.parse(children)
        end
        return data
      end
    end

    # Operation Parser for DescribeEventCategories
    class DescribeEventCategories
      def self.parse(http_resp)
        data = Types::DescribeEventCategoriesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeEventCategoriesResult')
        xml.at('EventCategoriesMapList') do |node|
          children = node.children('EventCategoriesMap')
          data.event_categories_map_list = EventCategoriesMapList.parse(children)
        end
        data
      end
    end

    class EventCategoriesMapList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << EventCategoriesMap.parse(node)
        end
        data
      end
    end

    class EventCategoriesMap
      def self.parse(xml)
        data = Types::EventCategoriesMap.new
        xml.at('SourceType') do |node|
          data.source_type = (node.text || '')
        end
        xml.at('EventCategories') do |node|
          children = node.children('EventCategory')
          data.event_categories = EventCategoriesList.parse(children)
        end
        return data
      end
    end

    # Operation Parser for DescribeEventSubscriptions
    class DescribeEventSubscriptions
      def self.parse(http_resp)
        data = Types::DescribeEventSubscriptionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeEventSubscriptionsResult')
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('EventSubscriptionsList') do |node|
          children = node.children('EventSubscription')
          data.event_subscriptions_list = EventSubscriptionsList.parse(children)
        end
        data
      end
    end

    class EventSubscriptionsList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << EventSubscription.parse(node)
        end
        data
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
        xml.at('EventCategories') do |node|
          children = node.children('EventCategory')
          data.event_categories = EventCategoriesList.parse(children)
        end
        xml.at('Date') do |node|
          data.date = Time.parse(node.text) if node.text
        end
        xml.at('SourceArn') do |node|
          data.source_arn = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeGlobalClusters
    class DescribeGlobalClusters
      def self.parse(http_resp)
        data = Types::DescribeGlobalClustersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeGlobalClustersResult')
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('GlobalClusters') do |node|
          children = node.children('GlobalClusterMember')
          data.global_clusters = GlobalClusterList.parse(children)
        end
        data
      end
    end

    class GlobalClusterList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << GlobalCluster.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeOrderableDBInstanceOptions
    class DescribeOrderableDBInstanceOptions
      def self.parse(http_resp)
        data = Types::DescribeOrderableDBInstanceOptionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeOrderableDBInstanceOptionsResult')
        xml.at('OrderableDBInstanceOptions') do |node|
          children = node.children('OrderableDBInstanceOption')
          data.orderable_db_instance_options = OrderableDBInstanceOptionsList.parse(children)
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    class OrderableDBInstanceOptionsList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << OrderableDBInstanceOption.parse(node)
        end
        data
      end
    end

    class OrderableDBInstanceOption
      def self.parse(xml)
        data = Types::OrderableDBInstanceOption.new
        xml.at('Engine') do |node|
          data.engine = (node.text || '')
        end
        xml.at('EngineVersion') do |node|
          data.engine_version = (node.text || '')
        end
        xml.at('DBInstanceClass') do |node|
          data.db_instance_class = (node.text || '')
        end
        xml.at('LicenseModel') do |node|
          data.license_model = (node.text || '')
        end
        xml.at('AvailabilityZones') do |node|
          children = node.children('AvailabilityZone')
          data.availability_zones = AvailabilityZoneList.parse(children)
        end
        xml.at('Vpc') do |node|
          data.vpc = (node.text == 'true')
        end
        return data
      end
    end

    class AvailabilityZoneList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << AvailabilityZone.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribePendingMaintenanceActions
    class DescribePendingMaintenanceActions
      def self.parse(http_resp)
        data = Types::DescribePendingMaintenanceActionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribePendingMaintenanceActionsResult')
        xml.at('PendingMaintenanceActions') do |node|
          children = node.children('ResourcePendingMaintenanceActions')
          data.pending_maintenance_actions = PendingMaintenanceActions.parse(children)
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    class PendingMaintenanceActions
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << ResourcePendingMaintenanceActions.parse(node)
        end
        data
      end
    end

    # Operation Parser for FailoverDBCluster
    class FailoverDBCluster
      def self.parse(http_resp)
        data = Types::FailoverDBClusterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('FailoverDBClusterResult')
        xml.at('DBCluster') do |node|
          data.db_cluster = DBCluster.parse(node)
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

    # Operation Parser for ModifyDBCluster
    class ModifyDBCluster
      def self.parse(http_resp)
        data = Types::ModifyDBClusterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ModifyDBClusterResult')
        xml.at('DBCluster') do |node|
          data.db_cluster = DBCluster.parse(node)
        end
        data
      end
    end

    # Error Parser for InvalidDBSecurityGroupStateFault
    class InvalidDBSecurityGroupStateFault
      def self.parse(http_resp)
        data = Types::InvalidDBSecurityGroupStateFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ModifyDBClusterParameterGroup
    class ModifyDBClusterParameterGroup
      def self.parse(http_resp)
        data = Types::ModifyDBClusterParameterGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ModifyDBClusterParameterGroupResult')
        xml.at('DBClusterParameterGroupName') do |node|
          data.db_cluster_parameter_group_name = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ModifyDBClusterSnapshotAttribute
    class ModifyDBClusterSnapshotAttribute
      def self.parse(http_resp)
        data = Types::ModifyDBClusterSnapshotAttributeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ModifyDBClusterSnapshotAttributeResult')
        xml.at('DBClusterSnapshotAttributesResult') do |node|
          data.db_cluster_snapshot_attributes_result = DBClusterSnapshotAttributesResult.parse(node)
        end
        data
      end
    end

    # Error Parser for SharedSnapshotQuotaExceededFault
    class SharedSnapshotQuotaExceededFault
      def self.parse(http_resp)
        data = Types::SharedSnapshotQuotaExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ModifyDBInstance
    class ModifyDBInstance
      def self.parse(http_resp)
        data = Types::ModifyDBInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ModifyDBInstanceResult')
        xml.at('DBInstance') do |node|
          data.db_instance = DBInstance.parse(node)
        end
        data
      end
    end

    # Error Parser for DBUpgradeDependencyFailureFault
    class DBUpgradeDependencyFailureFault
      def self.parse(http_resp)
        data = Types::DBUpgradeDependencyFailureFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ModifyDBSubnetGroup
    class ModifyDBSubnetGroup
      def self.parse(http_resp)
        data = Types::ModifyDBSubnetGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ModifyDBSubnetGroupResult')
        xml.at('DBSubnetGroup') do |node|
          data.db_subnet_group = DBSubnetGroup.parse(node)
        end
        data
      end
    end

    # Error Parser for SubnetAlreadyInUse
    class SubnetAlreadyInUse
      def self.parse(http_resp)
        data = Types::SubnetAlreadyInUse.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ModifyEventSubscription
    class ModifyEventSubscription
      def self.parse(http_resp)
        data = Types::ModifyEventSubscriptionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ModifyEventSubscriptionResult')
        xml.at('EventSubscription') do |node|
          data.event_subscription = EventSubscription.parse(node)
        end
        data
      end
    end

    # Operation Parser for ModifyGlobalCluster
    class ModifyGlobalCluster
      def self.parse(http_resp)
        data = Types::ModifyGlobalClusterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ModifyGlobalClusterResult')
        xml.at('GlobalCluster') do |node|
          data.global_cluster = GlobalCluster.parse(node)
        end
        data
      end
    end

    # Operation Parser for RebootDBInstance
    class RebootDBInstance
      def self.parse(http_resp)
        data = Types::RebootDBInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('RebootDBInstanceResult')
        xml.at('DBInstance') do |node|
          data.db_instance = DBInstance.parse(node)
        end
        data
      end
    end

    # Operation Parser for RemoveFromGlobalCluster
    class RemoveFromGlobalCluster
      def self.parse(http_resp)
        data = Types::RemoveFromGlobalClusterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('RemoveFromGlobalClusterResult')
        xml.at('GlobalCluster') do |node|
          data.global_cluster = GlobalCluster.parse(node)
        end
        data
      end
    end

    # Operation Parser for RemoveSourceIdentifierFromSubscription
    class RemoveSourceIdentifierFromSubscription
      def self.parse(http_resp)
        data = Types::RemoveSourceIdentifierFromSubscriptionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('RemoveSourceIdentifierFromSubscriptionResult')
        xml.at('EventSubscription') do |node|
          data.event_subscription = EventSubscription.parse(node)
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
        data
      end
    end

    # Operation Parser for ResetDBClusterParameterGroup
    class ResetDBClusterParameterGroup
      def self.parse(http_resp)
        data = Types::ResetDBClusterParameterGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ResetDBClusterParameterGroupResult')
        xml.at('DBClusterParameterGroupName') do |node|
          data.db_cluster_parameter_group_name = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for RestoreDBClusterFromSnapshot
    class RestoreDBClusterFromSnapshot
      def self.parse(http_resp)
        data = Types::RestoreDBClusterFromSnapshotOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('RestoreDBClusterFromSnapshotResult')
        xml.at('DBCluster') do |node|
          data.db_cluster = DBCluster.parse(node)
        end
        data
      end
    end

    # Error Parser for InsufficientDBClusterCapacityFault
    class InsufficientDBClusterCapacityFault
      def self.parse(http_resp)
        data = Types::InsufficientDBClusterCapacityFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidDBSnapshotStateFault
    class InvalidDBSnapshotStateFault
      def self.parse(http_resp)
        data = Types::InvalidDBSnapshotStateFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidRestoreFault
    class InvalidRestoreFault
      def self.parse(http_resp)
        data = Types::InvalidRestoreFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for RestoreDBClusterToPointInTime
    class RestoreDBClusterToPointInTime
      def self.parse(http_resp)
        data = Types::RestoreDBClusterToPointInTimeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('RestoreDBClusterToPointInTimeResult')
        xml.at('DBCluster') do |node|
          data.db_cluster = DBCluster.parse(node)
        end
        data
      end
    end

    # Operation Parser for StartDBCluster
    class StartDBCluster
      def self.parse(http_resp)
        data = Types::StartDBClusterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('StartDBClusterResult')
        xml.at('DBCluster') do |node|
          data.db_cluster = DBCluster.parse(node)
        end
        data
      end
    end

    # Operation Parser for StopDBCluster
    class StopDBCluster
      def self.parse(http_resp)
        data = Types::StopDBClusterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('StopDBClusterResult')
        xml.at('DBCluster') do |node|
          data.db_cluster = DBCluster.parse(node)
        end
        data
      end
    end
  end
end
