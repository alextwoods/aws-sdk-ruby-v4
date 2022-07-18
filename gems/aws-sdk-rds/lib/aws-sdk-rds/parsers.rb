# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::RDS
  module Parsers

    # Operation Parser for AddRoleToDBCluster
    class AddRoleToDBCluster
      def self.parse(http_resp)
        data = Types::AddRoleToDBClusterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('AddRoleToDBClusterResult')
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

    # Error Parser for DBClusterRoleQuotaExceededFault
    class DBClusterRoleQuotaExceededFault
      def self.parse(http_resp)
        data = Types::DBClusterRoleQuotaExceededFault.new
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

    # Error Parser for DBClusterRoleAlreadyExistsFault
    class DBClusterRoleAlreadyExistsFault
      def self.parse(http_resp)
        data = Types::DBClusterRoleAlreadyExistsFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for AddRoleToDBInstance
    class AddRoleToDBInstance
      def self.parse(http_resp)
        data = Types::AddRoleToDBInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('AddRoleToDBInstanceResult')
        data
      end
    end

    # Error Parser for DBInstanceRoleAlreadyExistsFault
    class DBInstanceRoleAlreadyExistsFault
      def self.parse(http_resp)
        data = Types::DBInstanceRoleAlreadyExistsFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
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

    # Error Parser for DBInstanceRoleQuotaExceededFault
    class DBInstanceRoleQuotaExceededFault
      def self.parse(http_resp)
        data = Types::DBInstanceRoleQuotaExceededFault.new
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

    # Operation Parser for AddSourceIdentifierToSubscription
    class AddSourceIdentifierToSubscription
      def self.parse(http_resp)
        data = Types::AddSourceIdentifierToSubscriptionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('AddSourceIdentifierToSubscriptionResult')
        xml.at('EventSubscription') do |node|
          data.event_subscription = Parsers::EventSubscription.parse(node)
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
          data.source_ids_list = Parsers::SourceIdsList.parse(children)
        end
        xml.at('EventCategoriesList') do |node|
          children = node.children('EventCategory')
          data.event_categories_list = Parsers::EventCategoriesList.parse(children)
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

    # Error Parser for DBProxyTargetGroupNotFoundFault
    class DBProxyTargetGroupNotFoundFault
      def self.parse(http_resp)
        data = Types::DBProxyTargetGroupNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for DBProxyNotFoundFault
    class DBProxyNotFoundFault
      def self.parse(http_resp)
        data = Types::DBProxyNotFoundFault.new
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

    # Operation Parser for ApplyPendingMaintenanceAction
    class ApplyPendingMaintenanceAction
      def self.parse(http_resp)
        data = Types::ApplyPendingMaintenanceActionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ApplyPendingMaintenanceActionResult')
        xml.at('ResourcePendingMaintenanceActions') do |node|
          data.resource_pending_maintenance_actions = Parsers::ResourcePendingMaintenanceActions.parse(node)
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
          data.pending_maintenance_action_details = Parsers::PendingMaintenanceActionDetails.parse(children)
        end
        return data
      end
    end

    class PendingMaintenanceActionDetails
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::PendingMaintenanceAction.parse(node)
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

    # Operation Parser for AuthorizeDBSecurityGroupIngress
    class AuthorizeDBSecurityGroupIngress
      def self.parse(http_resp)
        data = Types::AuthorizeDBSecurityGroupIngressOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('AuthorizeDBSecurityGroupIngressResult')
        xml.at('DBSecurityGroup') do |node|
          data.db_security_group = Parsers::DBSecurityGroup.parse(node)
        end
        data
      end
    end

    class DBSecurityGroup
      def self.parse(xml)
        data = Types::DBSecurityGroup.new
        xml.at('OwnerId') do |node|
          data.owner_id = (node.text || '')
        end
        xml.at('DBSecurityGroupName') do |node|
          data.db_security_group_name = (node.text || '')
        end
        xml.at('DBSecurityGroupDescription') do |node|
          data.db_security_group_description = (node.text || '')
        end
        xml.at('VpcId') do |node|
          data.vpc_id = (node.text || '')
        end
        xml.at('EC2SecurityGroups') do |node|
          children = node.children('EC2SecurityGroup')
          data.ec2_security_groups = Parsers::EC2SecurityGroupList.parse(children)
        end
        xml.at('IPRanges') do |node|
          children = node.children('IPRange')
          data.ip_ranges = Parsers::IPRangeList.parse(children)
        end
        xml.at('DBSecurityGroupArn') do |node|
          data.db_security_group_arn = (node.text || '')
        end
        return data
      end
    end

    class IPRangeList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::IPRange.parse(node)
        end
        data
      end
    end

    class IPRange
      def self.parse(xml)
        data = Types::IPRange.new
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('CIDRIP') do |node|
          data.cidrip = (node.text || '')
        end
        return data
      end
    end

    class EC2SecurityGroupList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::EC2SecurityGroup.parse(node)
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
        xml.at('EC2SecurityGroupId') do |node|
          data.ec2_security_group_id = (node.text || '')
        end
        xml.at('EC2SecurityGroupOwnerId') do |node|
          data.ec2_security_group_owner_id = (node.text || '')
        end
        return data
      end
    end

    # Error Parser for AuthorizationQuotaExceededFault
    class AuthorizationQuotaExceededFault
      def self.parse(http_resp)
        data = Types::AuthorizationQuotaExceededFault.new
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

    # Operation Parser for BacktrackDBCluster
    class BacktrackDBCluster
      def self.parse(http_resp)
        data = Types::BacktrackDBClusterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('BacktrackDBClusterResult')
        xml.at('DBClusterIdentifier') do |node|
          data.db_cluster_identifier = (node.text || '')
        end
        xml.at('BacktrackIdentifier') do |node|
          data.backtrack_identifier = (node.text || '')
        end
        xml.at('BacktrackTo') do |node|
          data.backtrack_to = Time.parse(node.text) if node.text
        end
        xml.at('BacktrackedFrom') do |node|
          data.backtracked_from = Time.parse(node.text) if node.text
        end
        xml.at('BacktrackRequestCreationTime') do |node|
          data.backtrack_request_creation_time = Time.parse(node.text) if node.text
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CancelExportTask
    class CancelExportTask
      def self.parse(http_resp)
        data = Types::CancelExportTaskOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CancelExportTaskResult')
        xml.at('ExportTaskIdentifier') do |node|
          data.export_task_identifier = (node.text || '')
        end
        xml.at('SourceArn') do |node|
          data.source_arn = (node.text || '')
        end
        xml.at('ExportOnly') do |node|
          children = node.children('member')
          data.export_only = Parsers::StringList.parse(children)
        end
        xml.at('SnapshotTime') do |node|
          data.snapshot_time = Time.parse(node.text) if node.text
        end
        xml.at('TaskStartTime') do |node|
          data.task_start_time = Time.parse(node.text) if node.text
        end
        xml.at('TaskEndTime') do |node|
          data.task_end_time = Time.parse(node.text) if node.text
        end
        xml.at('S3Bucket') do |node|
          data.s3_bucket = (node.text || '')
        end
        xml.at('S3Prefix') do |node|
          data.s3_prefix = (node.text || '')
        end
        xml.at('IamRoleArn') do |node|
          data.iam_role_arn = (node.text || '')
        end
        xml.at('KmsKeyId') do |node|
          data.kms_key_id = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('PercentProgress') do |node|
          data.percent_progress = node.text&.to_i
        end
        xml.at('TotalExtractedDataInGB') do |node|
          data.total_extracted_data_in_gb = node.text&.to_i
        end
        xml.at('FailureCause') do |node|
          data.failure_cause = (node.text || '')
        end
        xml.at('WarningMessage') do |node|
          data.warning_message = (node.text || '')
        end
        data
      end
    end

    class StringList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Error Parser for ExportTaskNotFoundFault
    class ExportTaskNotFoundFault
      def self.parse(http_resp)
        data = Types::ExportTaskNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidExportTaskStateFault
    class InvalidExportTaskStateFault
      def self.parse(http_resp)
        data = Types::InvalidExportTaskStateFault.new
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
          data.db_cluster_parameter_group = Parsers::DBClusterParameterGroup.parse(node)
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
          data.db_cluster_snapshot = Parsers::DBClusterSnapshot.parse(node)
        end
        data
      end
    end

    class DBClusterSnapshot
      def self.parse(xml)
        data = Types::DBClusterSnapshot.new
        xml.at('AvailabilityZones') do |node|
          children = node.children('AvailabilityZone')
          data.availability_zones = Parsers::AvailabilityZones.parse(children)
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
        xml.at('EngineMode') do |node|
          data.engine_mode = (node.text || '')
        end
        xml.at('AllocatedStorage') do |node|
          data.allocated_storage = node.text&.to_i
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
        xml.at('LicenseModel') do |node|
          data.license_model = (node.text || '')
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
        xml.at('IAMDatabaseAuthenticationEnabled') do |node|
          data.iam_database_authentication_enabled = (node.text == 'true')
        end
        xml.at('TagList') do |node|
          children = node.children('Tag')
          data.tag_list = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    class TagList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Tag.parse(node)
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

    class AvailabilityZones
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
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

    # Operation Parser for CopyDBParameterGroup
    class CopyDBParameterGroup
      def self.parse(http_resp)
        data = Types::CopyDBParameterGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CopyDBParameterGroupResult')
        xml.at('DBParameterGroup') do |node|
          data.db_parameter_group = Parsers::DBParameterGroup.parse(node)
        end
        data
      end
    end

    class DBParameterGroup
      def self.parse(xml)
        data = Types::DBParameterGroup.new
        xml.at('DBParameterGroupName') do |node|
          data.db_parameter_group_name = (node.text || '')
        end
        xml.at('DBParameterGroupFamily') do |node|
          data.db_parameter_group_family = (node.text || '')
        end
        xml.at('Description') do |node|
          data.description = (node.text || '')
        end
        xml.at('DBParameterGroupArn') do |node|
          data.db_parameter_group_arn = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for CopyDBSnapshot
    class CopyDBSnapshot
      def self.parse(http_resp)
        data = Types::CopyDBSnapshotOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CopyDBSnapshotResult')
        xml.at('DBSnapshot') do |node|
          data.db_snapshot = Parsers::DBSnapshot.parse(node)
        end
        data
      end
    end

    class DBSnapshot
      def self.parse(xml)
        data = Types::DBSnapshot.new
        xml.at('DBSnapshotIdentifier') do |node|
          data.db_snapshot_identifier = (node.text || '')
        end
        xml.at('DBInstanceIdentifier') do |node|
          data.db_instance_identifier = (node.text || '')
        end
        xml.at('SnapshotCreateTime') do |node|
          data.snapshot_create_time = Time.parse(node.text) if node.text
        end
        xml.at('Engine') do |node|
          data.engine = (node.text || '')
        end
        xml.at('AllocatedStorage') do |node|
          data.allocated_storage = node.text&.to_i
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('Port') do |node|
          data.port = node.text&.to_i
        end
        xml.at('AvailabilityZone') do |node|
          data.availability_zone = (node.text || '')
        end
        xml.at('VpcId') do |node|
          data.vpc_id = (node.text || '')
        end
        xml.at('InstanceCreateTime') do |node|
          data.instance_create_time = Time.parse(node.text) if node.text
        end
        xml.at('MasterUsername') do |node|
          data.master_username = (node.text || '')
        end
        xml.at('EngineVersion') do |node|
          data.engine_version = (node.text || '')
        end
        xml.at('LicenseModel') do |node|
          data.license_model = (node.text || '')
        end
        xml.at('SnapshotType') do |node|
          data.snapshot_type = (node.text || '')
        end
        xml.at('Iops') do |node|
          data.iops = node.text&.to_i
        end
        xml.at('OptionGroupName') do |node|
          data.option_group_name = (node.text || '')
        end
        xml.at('PercentProgress') do |node|
          data.percent_progress = node.text&.to_i
        end
        xml.at('SourceRegion') do |node|
          data.source_region = (node.text || '')
        end
        xml.at('SourceDBSnapshotIdentifier') do |node|
          data.source_db_snapshot_identifier = (node.text || '')
        end
        xml.at('StorageType') do |node|
          data.storage_type = (node.text || '')
        end
        xml.at('TdeCredentialArn') do |node|
          data.tde_credential_arn = (node.text || '')
        end
        xml.at('Encrypted') do |node|
          data.encrypted = (node.text == 'true')
        end
        xml.at('KmsKeyId') do |node|
          data.kms_key_id = (node.text || '')
        end
        xml.at('DBSnapshotArn') do |node|
          data.db_snapshot_arn = (node.text || '')
        end
        xml.at('Timezone') do |node|
          data.timezone = (node.text || '')
        end
        xml.at('IAMDatabaseAuthenticationEnabled') do |node|
          data.iam_database_authentication_enabled = (node.text == 'true')
        end
        xml.at('ProcessorFeatures') do |node|
          children = node.children('ProcessorFeature')
          data.processor_features = Parsers::ProcessorFeatureList.parse(children)
        end
        xml.at('DbiResourceId') do |node|
          data.dbi_resource_id = (node.text || '')
        end
        xml.at('TagList') do |node|
          children = node.children('Tag')
          data.tag_list = Parsers::TagList.parse(children)
        end
        xml.at('OriginalSnapshotCreateTime') do |node|
          data.original_snapshot_create_time = Time.parse(node.text) if node.text
        end
        xml.at('SnapshotTarget') do |node|
          data.snapshot_target = (node.text || '')
        end
        return data
      end
    end

    class ProcessorFeatureList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ProcessorFeature.parse(node)
        end
        data
      end
    end

    class ProcessorFeature
      def self.parse(xml)
        data = Types::ProcessorFeature.new
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('Value') do |node|
          data.value = (node.text || '')
        end
        return data
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

    # Error Parser for CustomAvailabilityZoneNotFoundFault
    class CustomAvailabilityZoneNotFoundFault
      def self.parse(http_resp)
        data = Types::CustomAvailabilityZoneNotFoundFault.new
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

    # Operation Parser for CopyOptionGroup
    class CopyOptionGroup
      def self.parse(http_resp)
        data = Types::CopyOptionGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CopyOptionGroupResult')
        xml.at('OptionGroup') do |node|
          data.option_group = Parsers::OptionGroup.parse(node)
        end
        data
      end
    end

    class OptionGroup
      def self.parse(xml)
        data = Types::OptionGroup.new
        xml.at('OptionGroupName') do |node|
          data.option_group_name = (node.text || '')
        end
        xml.at('OptionGroupDescription') do |node|
          data.option_group_description = (node.text || '')
        end
        xml.at('EngineName') do |node|
          data.engine_name = (node.text || '')
        end
        xml.at('MajorEngineVersion') do |node|
          data.major_engine_version = (node.text || '')
        end
        xml.at('Options') do |node|
          children = node.children('Option')
          data.options = Parsers::OptionsList.parse(children)
        end
        xml.at('AllowsVpcAndNonVpcInstanceMemberships') do |node|
          data.allows_vpc_and_non_vpc_instance_memberships = (node.text == 'true')
        end
        xml.at('VpcId') do |node|
          data.vpc_id = (node.text || '')
        end
        xml.at('OptionGroupArn') do |node|
          data.option_group_arn = (node.text || '')
        end
        return data
      end
    end

    class OptionsList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Option.parse(node)
        end
        data
      end
    end

    class Option
      def self.parse(xml)
        data = Types::Option.new
        xml.at('OptionName') do |node|
          data.option_name = (node.text || '')
        end
        xml.at('OptionDescription') do |node|
          data.option_description = (node.text || '')
        end
        xml.at('Persistent') do |node|
          data.persistent = (node.text == 'true')
        end
        xml.at('Permanent') do |node|
          data.permanent = (node.text == 'true')
        end
        xml.at('Port') do |node|
          data.port = node.text&.to_i
        end
        xml.at('OptionVersion') do |node|
          data.option_version = (node.text || '')
        end
        xml.at('OptionSettings') do |node|
          children = node.children('OptionSetting')
          data.option_settings = Parsers::OptionSettingConfigurationList.parse(children)
        end
        xml.at('DBSecurityGroupMemberships') do |node|
          children = node.children('DBSecurityGroup')
          data.db_security_group_memberships = Parsers::DBSecurityGroupMembershipList.parse(children)
        end
        xml.at('VpcSecurityGroupMemberships') do |node|
          children = node.children('VpcSecurityGroupMembership')
          data.vpc_security_group_memberships = Parsers::VpcSecurityGroupMembershipList.parse(children)
        end
        return data
      end
    end

    class VpcSecurityGroupMembershipList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::VpcSecurityGroupMembership.parse(node)
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

    class DBSecurityGroupMembershipList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::DBSecurityGroupMembership.parse(node)
        end
        data
      end
    end

    class DBSecurityGroupMembership
      def self.parse(xml)
        data = Types::DBSecurityGroupMembership.new
        xml.at('DBSecurityGroupName') do |node|
          data.db_security_group_name = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        return data
      end
    end

    class OptionSettingConfigurationList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::OptionSetting.parse(node)
        end
        data
      end
    end

    class OptionSetting
      def self.parse(xml)
        data = Types::OptionSetting.new
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('Value') do |node|
          data.value = (node.text || '')
        end
        xml.at('DefaultValue') do |node|
          data.default_value = (node.text || '')
        end
        xml.at('Description') do |node|
          data.description = (node.text || '')
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
        xml.at('IsCollection') do |node|
          data.is_collection = (node.text == 'true')
        end
        return data
      end
    end

    # Error Parser for OptionGroupAlreadyExistsFault
    class OptionGroupAlreadyExistsFault
      def self.parse(http_resp)
        data = Types::OptionGroupAlreadyExistsFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for OptionGroupNotFoundFault
    class OptionGroupNotFoundFault
      def self.parse(http_resp)
        data = Types::OptionGroupNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for OptionGroupQuotaExceededFault
    class OptionGroupQuotaExceededFault
      def self.parse(http_resp)
        data = Types::OptionGroupQuotaExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateCustomDBEngineVersion
    class CreateCustomDBEngineVersion
      def self.parse(http_resp)
        data = Types::CreateCustomDBEngineVersionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateCustomDBEngineVersionResult')
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
        xml.at('DefaultCharacterSet') do |node|
          data.default_character_set = Parsers::CharacterSet.parse(node)
        end
        xml.at('SupportedCharacterSets') do |node|
          children = node.children('CharacterSet')
          data.supported_character_sets = Parsers::SupportedCharacterSetsList.parse(children)
        end
        xml.at('SupportedNcharCharacterSets') do |node|
          children = node.children('CharacterSet')
          data.supported_nchar_character_sets = Parsers::SupportedCharacterSetsList.parse(children)
        end
        xml.at('ValidUpgradeTarget') do |node|
          children = node.children('UpgradeTarget')
          data.valid_upgrade_target = Parsers::ValidUpgradeTargetList.parse(children)
        end
        xml.at('SupportedTimezones') do |node|
          children = node.children('Timezone')
          data.supported_timezones = Parsers::SupportedTimezonesList.parse(children)
        end
        xml.at('ExportableLogTypes') do |node|
          children = node.children('member')
          data.exportable_log_types = Parsers::LogTypeList.parse(children)
        end
        xml.at('SupportsLogExportsToCloudwatchLogs') do |node|
          data.supports_log_exports_to_cloudwatch_logs = (node.text == 'true')
        end
        xml.at('SupportsReadReplica') do |node|
          data.supports_read_replica = (node.text == 'true')
        end
        xml.at('SupportedEngineModes') do |node|
          children = node.children('member')
          data.supported_engine_modes = Parsers::EngineModeList.parse(children)
        end
        xml.at('SupportedFeatureNames') do |node|
          children = node.children('member')
          data.supported_feature_names = Parsers::FeatureNameList.parse(children)
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('SupportsParallelQuery') do |node|
          data.supports_parallel_query = (node.text == 'true')
        end
        xml.at('SupportsGlobalDatabases') do |node|
          data.supports_global_databases = (node.text == 'true')
        end
        xml.at('MajorEngineVersion') do |node|
          data.major_engine_version = (node.text || '')
        end
        xml.at('DatabaseInstallationFilesS3BucketName') do |node|
          data.database_installation_files_s3_bucket_name = (node.text || '')
        end
        xml.at('DatabaseInstallationFilesS3Prefix') do |node|
          data.database_installation_files_s3_prefix = (node.text || '')
        end
        xml.at('DBEngineVersionArn') do |node|
          data.db_engine_version_arn = (node.text || '')
        end
        xml.at('KMSKeyId') do |node|
          data.kms_key_id = (node.text || '')
        end
        xml.at('CreateTime') do |node|
          data.create_time = Time.parse(node.text) if node.text
        end
        xml.at('TagList') do |node|
          children = node.children('Tag')
          data.tag_list = Parsers::TagList.parse(children)
        end
        xml.at('SupportsBabelfish') do |node|
          data.supports_babelfish = (node.text == 'true')
        end
        data
      end
    end

    class FeatureNameList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class EngineModeList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
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

    class SupportedTimezonesList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Timezone.parse(node)
        end
        data
      end
    end

    class Timezone
      def self.parse(xml)
        data = Types::Timezone.new
        xml.at('TimezoneName') do |node|
          data.timezone_name = (node.text || '')
        end
        return data
      end
    end

    class ValidUpgradeTargetList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::UpgradeTarget.parse(node)
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
        xml.at('SupportedEngineModes') do |node|
          children = node.children('member')
          data.supported_engine_modes = Parsers::EngineModeList.parse(children)
        end
        xml.at('SupportsParallelQuery') do |node|
          data.supports_parallel_query = (node.text == 'true')
        end
        xml.at('SupportsGlobalDatabases') do |node|
          data.supports_global_databases = (node.text == 'true')
        end
        xml.at('SupportsBabelfish') do |node|
          data.supports_babelfish = (node.text == 'true')
        end
        return data
      end
    end

    class SupportedCharacterSetsList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::CharacterSet.parse(node)
        end
        data
      end
    end

    class CharacterSet
      def self.parse(xml)
        data = Types::CharacterSet.new
        xml.at('CharacterSetName') do |node|
          data.character_set_name = (node.text || '')
        end
        xml.at('CharacterSetDescription') do |node|
          data.character_set_description = (node.text || '')
        end
        return data
      end
    end

    # Error Parser for CustomDBEngineVersionAlreadyExistsFault
    class CustomDBEngineVersionAlreadyExistsFault
      def self.parse(http_resp)
        data = Types::CustomDBEngineVersionAlreadyExistsFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for CustomDBEngineVersionQuotaExceededFault
    class CustomDBEngineVersionQuotaExceededFault
      def self.parse(http_resp)
        data = Types::CustomDBEngineVersionQuotaExceededFault.new
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
          data.db_cluster = Parsers::DBCluster.parse(node)
        end
        data
      end
    end

    class DBCluster
      def self.parse(xml)
        data = Types::DBCluster.new
        xml.at('AllocatedStorage') do |node|
          data.allocated_storage = node.text&.to_i
        end
        xml.at('AvailabilityZones') do |node|
          children = node.children('AvailabilityZone')
          data.availability_zones = Parsers::AvailabilityZones.parse(children)
        end
        xml.at('BackupRetentionPeriod') do |node|
          data.backup_retention_period = node.text&.to_i
        end
        xml.at('CharacterSetName') do |node|
          data.character_set_name = (node.text || '')
        end
        xml.at('DatabaseName') do |node|
          data.database_name = (node.text || '')
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
        xml.at('AutomaticRestartTime') do |node|
          data.automatic_restart_time = Time.parse(node.text) if node.text
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
        xml.at('CustomEndpoints') do |node|
          children = node.children('member')
          data.custom_endpoints = Parsers::StringList.parse(children)
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
        xml.at('DBClusterOptionGroupMemberships') do |node|
          children = node.children('DBClusterOptionGroup')
          data.db_cluster_option_group_memberships = Parsers::DBClusterOptionGroupMemberships.parse(children)
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
          data.read_replica_identifiers = Parsers::ReadReplicaIdentifierList.parse(children)
        end
        xml.at('DBClusterMembers') do |node|
          children = node.children('DBClusterMember')
          data.db_cluster_members = Parsers::DBClusterMemberList.parse(children)
        end
        xml.at('VpcSecurityGroups') do |node|
          children = node.children('VpcSecurityGroupMembership')
          data.vpc_security_groups = Parsers::VpcSecurityGroupMembershipList.parse(children)
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
          data.associated_roles = Parsers::DBClusterRoles.parse(children)
        end
        xml.at('IAMDatabaseAuthenticationEnabled') do |node|
          data.iam_database_authentication_enabled = (node.text == 'true')
        end
        xml.at('CloneGroupId') do |node|
          data.clone_group_id = (node.text || '')
        end
        xml.at('ClusterCreateTime') do |node|
          data.cluster_create_time = Time.parse(node.text) if node.text
        end
        xml.at('EarliestBacktrackTime') do |node|
          data.earliest_backtrack_time = Time.parse(node.text) if node.text
        end
        xml.at('BacktrackWindow') do |node|
          data.backtrack_window = node.text&.to_i
        end
        xml.at('BacktrackConsumedChangeRecords') do |node|
          data.backtrack_consumed_change_records = node.text&.to_i
        end
        xml.at('EnabledCloudwatchLogsExports') do |node|
          children = node.children('member')
          data.enabled_cloudwatch_logs_exports = Parsers::LogTypeList.parse(children)
        end
        xml.at('Capacity') do |node|
          data.capacity = node.text&.to_i
        end
        xml.at('EngineMode') do |node|
          data.engine_mode = (node.text || '')
        end
        xml.at('ScalingConfigurationInfo') do |node|
          data.scaling_configuration_info = Parsers::ScalingConfigurationInfo.parse(node)
        end
        xml.at('DeletionProtection') do |node|
          data.deletion_protection = (node.text == 'true')
        end
        xml.at('HttpEndpointEnabled') do |node|
          data.http_endpoint_enabled = (node.text == 'true')
        end
        xml.at('ActivityStreamMode') do |node|
          data.activity_stream_mode = (node.text || '')
        end
        xml.at('ActivityStreamStatus') do |node|
          data.activity_stream_status = (node.text || '')
        end
        xml.at('ActivityStreamKmsKeyId') do |node|
          data.activity_stream_kms_key_id = (node.text || '')
        end
        xml.at('ActivityStreamKinesisStreamName') do |node|
          data.activity_stream_kinesis_stream_name = (node.text || '')
        end
        xml.at('CopyTagsToSnapshot') do |node|
          data.copy_tags_to_snapshot = (node.text == 'true')
        end
        xml.at('CrossAccountClone') do |node|
          data.cross_account_clone = (node.text == 'true')
        end
        xml.at('DomainMemberships') do |node|
          children = node.children('DomainMembership')
          data.domain_memberships = Parsers::DomainMembershipList.parse(children)
        end
        xml.at('TagList') do |node|
          children = node.children('Tag')
          data.tag_list = Parsers::TagList.parse(children)
        end
        xml.at('GlobalWriteForwardingStatus') do |node|
          data.global_write_forwarding_status = (node.text || '')
        end
        xml.at('GlobalWriteForwardingRequested') do |node|
          data.global_write_forwarding_requested = (node.text == 'true')
        end
        xml.at('PendingModifiedValues') do |node|
          data.pending_modified_values = Parsers::ClusterPendingModifiedValues.parse(node)
        end
        xml.at('DBClusterInstanceClass') do |node|
          data.db_cluster_instance_class = (node.text || '')
        end
        xml.at('StorageType') do |node|
          data.storage_type = (node.text || '')
        end
        xml.at('Iops') do |node|
          data.iops = node.text&.to_i
        end
        xml.at('PubliclyAccessible') do |node|
          data.publicly_accessible = (node.text == 'true')
        end
        xml.at('AutoMinorVersionUpgrade') do |node|
          data.auto_minor_version_upgrade = (node.text == 'true')
        end
        xml.at('MonitoringInterval') do |node|
          data.monitoring_interval = node.text&.to_i
        end
        xml.at('MonitoringRoleArn') do |node|
          data.monitoring_role_arn = (node.text || '')
        end
        xml.at('PerformanceInsightsEnabled') do |node|
          data.performance_insights_enabled = (node.text == 'true')
        end
        xml.at('PerformanceInsightsKMSKeyId') do |node|
          data.performance_insights_kms_key_id = (node.text || '')
        end
        xml.at('PerformanceInsightsRetentionPeriod') do |node|
          data.performance_insights_retention_period = node.text&.to_i
        end
        xml.at('ServerlessV2ScalingConfiguration') do |node|
          data.serverless_v2_scaling_configuration = Parsers::ServerlessV2ScalingConfigurationInfo.parse(node)
        end
        return data
      end
    end

    class ServerlessV2ScalingConfigurationInfo
      def self.parse(xml)
        data = Types::ServerlessV2ScalingConfigurationInfo.new
        xml.at('MinCapacity') do |node|
          data.min_capacity = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('MaxCapacity') do |node|
          data.max_capacity = Hearth::NumberHelper.deserialize(node.text)
        end
        return data
      end
    end

    class ClusterPendingModifiedValues
      def self.parse(xml)
        data = Types::ClusterPendingModifiedValues.new
        xml.at('PendingCloudwatchLogsExports') do |node|
          data.pending_cloudwatch_logs_exports = Parsers::PendingCloudwatchLogsExports.parse(node)
        end
        xml.at('DBClusterIdentifier') do |node|
          data.db_cluster_identifier = (node.text || '')
        end
        xml.at('MasterUserPassword') do |node|
          data.master_user_password = (node.text || '')
        end
        xml.at('IAMDatabaseAuthenticationEnabled') do |node|
          data.iam_database_authentication_enabled = (node.text == 'true')
        end
        xml.at('EngineVersion') do |node|
          data.engine_version = (node.text || '')
        end
        return data
      end
    end

    class PendingCloudwatchLogsExports
      def self.parse(xml)
        data = Types::PendingCloudwatchLogsExports.new
        xml.at('LogTypesToEnable') do |node|
          children = node.children('member')
          data.log_types_to_enable = Parsers::LogTypeList.parse(children)
        end
        xml.at('LogTypesToDisable') do |node|
          children = node.children('member')
          data.log_types_to_disable = Parsers::LogTypeList.parse(children)
        end
        return data
      end
    end

    class DomainMembershipList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::DomainMembership.parse(node)
        end
        data
      end
    end

    class DomainMembership
      def self.parse(xml)
        data = Types::DomainMembership.new
        xml.at('Domain') do |node|
          data.domain = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('FQDN') do |node|
          data.fqdn = (node.text || '')
        end
        xml.at('IAMRoleName') do |node|
          data.iam_role_name = (node.text || '')
        end
        return data
      end
    end

    class ScalingConfigurationInfo
      def self.parse(xml)
        data = Types::ScalingConfigurationInfo.new
        xml.at('MinCapacity') do |node|
          data.min_capacity = node.text&.to_i
        end
        xml.at('MaxCapacity') do |node|
          data.max_capacity = node.text&.to_i
        end
        xml.at('AutoPause') do |node|
          data.auto_pause = (node.text == 'true')
        end
        xml.at('SecondsUntilAutoPause') do |node|
          data.seconds_until_auto_pause = node.text&.to_i
        end
        xml.at('TimeoutAction') do |node|
          data.timeout_action = (node.text || '')
        end
        xml.at('SecondsBeforeTimeout') do |node|
          data.seconds_before_timeout = node.text&.to_i
        end
        return data
      end
    end

    class DBClusterRoles
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::DBClusterRole.parse(node)
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
        xml.at('FeatureName') do |node|
          data.feature_name = (node.text || '')
        end
        return data
      end
    end

    class DBClusterMemberList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::DBClusterMember.parse(node)
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

    class DBClusterOptionGroupMemberships
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::DBClusterOptionGroupStatus.parse(node)
        end
        data
      end
    end

    class DBClusterOptionGroupStatus
      def self.parse(xml)
        data = Types::DBClusterOptionGroupStatus.new
        xml.at('DBClusterOptionGroupName') do |node|
          data.db_cluster_option_group_name = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        return data
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

    # Error Parser for DomainNotFoundFault
    class DomainNotFoundFault
      def self.parse(http_resp)
        data = Types::DomainNotFoundFault.new
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

    # Operation Parser for CreateDBClusterEndpoint
    class CreateDBClusterEndpoint
      def self.parse(http_resp)
        data = Types::CreateDBClusterEndpointOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateDBClusterEndpointResult')
        xml.at('DBClusterEndpointIdentifier') do |node|
          data.db_cluster_endpoint_identifier = (node.text || '')
        end
        xml.at('DBClusterIdentifier') do |node|
          data.db_cluster_identifier = (node.text || '')
        end
        xml.at('DBClusterEndpointResourceIdentifier') do |node|
          data.db_cluster_endpoint_resource_identifier = (node.text || '')
        end
        xml.at('Endpoint') do |node|
          data.endpoint = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('EndpointType') do |node|
          data.endpoint_type = (node.text || '')
        end
        xml.at('CustomEndpointType') do |node|
          data.custom_endpoint_type = (node.text || '')
        end
        xml.at('StaticMembers') do |node|
          children = node.children('member')
          data.static_members = Parsers::StringList.parse(children)
        end
        xml.at('ExcludedMembers') do |node|
          children = node.children('member')
          data.excluded_members = Parsers::StringList.parse(children)
        end
        xml.at('DBClusterEndpointArn') do |node|
          data.db_cluster_endpoint_arn = (node.text || '')
        end
        data
      end
    end

    # Error Parser for DBClusterEndpointQuotaExceededFault
    class DBClusterEndpointQuotaExceededFault
      def self.parse(http_resp)
        data = Types::DBClusterEndpointQuotaExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for DBClusterEndpointAlreadyExistsFault
    class DBClusterEndpointAlreadyExistsFault
      def self.parse(http_resp)
        data = Types::DBClusterEndpointAlreadyExistsFault.new
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
          data.db_cluster_parameter_group = Parsers::DBClusterParameterGroup.parse(node)
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
          data.db_cluster_snapshot = Parsers::DBClusterSnapshot.parse(node)
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
          data.db_instance = Parsers::DBInstance.parse(node)
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
        xml.at('AutomaticRestartTime') do |node|
          data.automatic_restart_time = Time.parse(node.text) if node.text
        end
        xml.at('MasterUsername') do |node|
          data.master_username = (node.text || '')
        end
        xml.at('DBName') do |node|
          data.db_name = (node.text || '')
        end
        xml.at('Endpoint') do |node|
          data.endpoint = Parsers::Endpoint.parse(node)
        end
        xml.at('AllocatedStorage') do |node|
          data.allocated_storage = node.text&.to_i
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
        xml.at('DBSecurityGroups') do |node|
          children = node.children('DBSecurityGroup')
          data.db_security_groups = Parsers::DBSecurityGroupMembershipList.parse(children)
        end
        xml.at('VpcSecurityGroups') do |node|
          children = node.children('VpcSecurityGroupMembership')
          data.vpc_security_groups = Parsers::VpcSecurityGroupMembershipList.parse(children)
        end
        xml.at('DBParameterGroups') do |node|
          children = node.children('DBParameterGroup')
          data.db_parameter_groups = Parsers::DBParameterGroupStatusList.parse(children)
        end
        xml.at('AvailabilityZone') do |node|
          data.availability_zone = (node.text || '')
        end
        xml.at('DBSubnetGroup') do |node|
          data.db_subnet_group = Parsers::DBSubnetGroup.parse(node)
        end
        xml.at('PreferredMaintenanceWindow') do |node|
          data.preferred_maintenance_window = (node.text || '')
        end
        xml.at('PendingModifiedValues') do |node|
          data.pending_modified_values = Parsers::PendingModifiedValues.parse(node)
        end
        xml.at('LatestRestorableTime') do |node|
          data.latest_restorable_time = Time.parse(node.text) if node.text
        end
        xml.at('MultiAZ') do |node|
          data.multi_az = (node.text == 'true')
        end
        xml.at('EngineVersion') do |node|
          data.engine_version = (node.text || '')
        end
        xml.at('AutoMinorVersionUpgrade') do |node|
          data.auto_minor_version_upgrade = (node.text == 'true')
        end
        xml.at('ReadReplicaSourceDBInstanceIdentifier') do |node|
          data.read_replica_source_db_instance_identifier = (node.text || '')
        end
        xml.at('ReadReplicaDBInstanceIdentifiers') do |node|
          children = node.children('ReadReplicaDBInstanceIdentifier')
          data.read_replica_db_instance_identifiers = Parsers::ReadReplicaDBInstanceIdentifierList.parse(children)
        end
        xml.at('ReadReplicaDBClusterIdentifiers') do |node|
          children = node.children('ReadReplicaDBClusterIdentifier')
          data.read_replica_db_cluster_identifiers = Parsers::ReadReplicaDBClusterIdentifierList.parse(children)
        end
        xml.at('ReplicaMode') do |node|
          data.replica_mode = (node.text || '')
        end
        xml.at('LicenseModel') do |node|
          data.license_model = (node.text || '')
        end
        xml.at('Iops') do |node|
          data.iops = node.text&.to_i
        end
        xml.at('OptionGroupMemberships') do |node|
          children = node.children('OptionGroupMembership')
          data.option_group_memberships = Parsers::OptionGroupMembershipList.parse(children)
        end
        xml.at('CharacterSetName') do |node|
          data.character_set_name = (node.text || '')
        end
        xml.at('NcharCharacterSetName') do |node|
          data.nchar_character_set_name = (node.text || '')
        end
        xml.at('SecondaryAvailabilityZone') do |node|
          data.secondary_availability_zone = (node.text || '')
        end
        xml.at('PubliclyAccessible') do |node|
          data.publicly_accessible = (node.text == 'true')
        end
        xml.at('StatusInfos') do |node|
          children = node.children('DBInstanceStatusInfo')
          data.status_infos = Parsers::DBInstanceStatusInfoList.parse(children)
        end
        xml.at('StorageType') do |node|
          data.storage_type = (node.text || '')
        end
        xml.at('TdeCredentialArn') do |node|
          data.tde_credential_arn = (node.text || '')
        end
        xml.at('DbInstancePort') do |node|
          data.db_instance_port = node.text&.to_i
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
        xml.at('DomainMemberships') do |node|
          children = node.children('DomainMembership')
          data.domain_memberships = Parsers::DomainMembershipList.parse(children)
        end
        xml.at('CopyTagsToSnapshot') do |node|
          data.copy_tags_to_snapshot = (node.text == 'true')
        end
        xml.at('MonitoringInterval') do |node|
          data.monitoring_interval = node.text&.to_i
        end
        xml.at('EnhancedMonitoringResourceArn') do |node|
          data.enhanced_monitoring_resource_arn = (node.text || '')
        end
        xml.at('MonitoringRoleArn') do |node|
          data.monitoring_role_arn = (node.text || '')
        end
        xml.at('PromotionTier') do |node|
          data.promotion_tier = node.text&.to_i
        end
        xml.at('DBInstanceArn') do |node|
          data.db_instance_arn = (node.text || '')
        end
        xml.at('Timezone') do |node|
          data.timezone = (node.text || '')
        end
        xml.at('IAMDatabaseAuthenticationEnabled') do |node|
          data.iam_database_authentication_enabled = (node.text == 'true')
        end
        xml.at('PerformanceInsightsEnabled') do |node|
          data.performance_insights_enabled = (node.text == 'true')
        end
        xml.at('PerformanceInsightsKMSKeyId') do |node|
          data.performance_insights_kms_key_id = (node.text || '')
        end
        xml.at('PerformanceInsightsRetentionPeriod') do |node|
          data.performance_insights_retention_period = node.text&.to_i
        end
        xml.at('EnabledCloudwatchLogsExports') do |node|
          children = node.children('member')
          data.enabled_cloudwatch_logs_exports = Parsers::LogTypeList.parse(children)
        end
        xml.at('ProcessorFeatures') do |node|
          children = node.children('ProcessorFeature')
          data.processor_features = Parsers::ProcessorFeatureList.parse(children)
        end
        xml.at('DeletionProtection') do |node|
          data.deletion_protection = (node.text == 'true')
        end
        xml.at('AssociatedRoles') do |node|
          children = node.children('DBInstanceRole')
          data.associated_roles = Parsers::DBInstanceRoles.parse(children)
        end
        xml.at('ListenerEndpoint') do |node|
          data.listener_endpoint = Parsers::Endpoint.parse(node)
        end
        xml.at('MaxAllocatedStorage') do |node|
          data.max_allocated_storage = node.text&.to_i
        end
        xml.at('TagList') do |node|
          children = node.children('Tag')
          data.tag_list = Parsers::TagList.parse(children)
        end
        xml.at('DBInstanceAutomatedBackupsReplications') do |node|
          children = node.children('DBInstanceAutomatedBackupsReplication')
          data.db_instance_automated_backups_replications = Parsers::DBInstanceAutomatedBackupsReplicationList.parse(children)
        end
        xml.at('CustomerOwnedIpEnabled') do |node|
          data.customer_owned_ip_enabled = (node.text == 'true')
        end
        xml.at('AwsBackupRecoveryPointArn') do |node|
          data.aws_backup_recovery_point_arn = (node.text || '')
        end
        xml.at('ActivityStreamStatus') do |node|
          data.activity_stream_status = (node.text || '')
        end
        xml.at('ActivityStreamKmsKeyId') do |node|
          data.activity_stream_kms_key_id = (node.text || '')
        end
        xml.at('ActivityStreamKinesisStreamName') do |node|
          data.activity_stream_kinesis_stream_name = (node.text || '')
        end
        xml.at('ActivityStreamMode') do |node|
          data.activity_stream_mode = (node.text || '')
        end
        xml.at('ActivityStreamEngineNativeAuditFieldsIncluded') do |node|
          data.activity_stream_engine_native_audit_fields_included = (node.text == 'true')
        end
        xml.at('AutomationMode') do |node|
          data.automation_mode = (node.text || '')
        end
        xml.at('ResumeFullAutomationModeTime') do |node|
          data.resume_full_automation_mode_time = Time.parse(node.text) if node.text
        end
        xml.at('CustomIamInstanceProfile') do |node|
          data.custom_iam_instance_profile = (node.text || '')
        end
        xml.at('BackupTarget') do |node|
          data.backup_target = (node.text || '')
        end
        xml.at('NetworkType') do |node|
          data.network_type = (node.text || '')
        end
        return data
      end
    end

    class DBInstanceAutomatedBackupsReplicationList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::DBInstanceAutomatedBackupsReplication.parse(node)
        end
        data
      end
    end

    class DBInstanceAutomatedBackupsReplication
      def self.parse(xml)
        data = Types::DBInstanceAutomatedBackupsReplication.new
        xml.at('DBInstanceAutomatedBackupsArn') do |node|
          data.db_instance_automated_backups_arn = (node.text || '')
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

    class DBInstanceRoles
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::DBInstanceRole.parse(node)
        end
        data
      end
    end

    class DBInstanceRole
      def self.parse(xml)
        data = Types::DBInstanceRole.new
        xml.at('RoleArn') do |node|
          data.role_arn = (node.text || '')
        end
        xml.at('FeatureName') do |node|
          data.feature_name = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        return data
      end
    end

    class DBInstanceStatusInfoList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::DBInstanceStatusInfo.parse(node)
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

    class OptionGroupMembershipList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::OptionGroupMembership.parse(node)
        end
        data
      end
    end

    class OptionGroupMembership
      def self.parse(xml)
        data = Types::OptionGroupMembership.new
        xml.at('OptionGroupName') do |node|
          data.option_group_name = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        return data
      end
    end

    class ReadReplicaDBClusterIdentifierList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class ReadReplicaDBInstanceIdentifierList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
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
          data.pending_cloudwatch_logs_exports = Parsers::PendingCloudwatchLogsExports.parse(node)
        end
        xml.at('ProcessorFeatures') do |node|
          children = node.children('ProcessorFeature')
          data.processor_features = Parsers::ProcessorFeatureList.parse(children)
        end
        xml.at('IAMDatabaseAuthenticationEnabled') do |node|
          data.iam_database_authentication_enabled = (node.text == 'true')
        end
        xml.at('AutomationMode') do |node|
          data.automation_mode = (node.text || '')
        end
        xml.at('ResumeFullAutomationModeTime') do |node|
          data.resume_full_automation_mode_time = Time.parse(node.text) if node.text
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
          data.subnets = Parsers::SubnetList.parse(children)
        end
        xml.at('DBSubnetGroupArn') do |node|
          data.db_subnet_group_arn = (node.text || '')
        end
        xml.at('SupportedNetworkTypes') do |node|
          children = node.children('member')
          data.supported_network_types = Parsers::StringList.parse(children)
        end
        return data
      end
    end

    class SubnetList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Subnet.parse(node)
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
          data.subnet_availability_zone = Parsers::AvailabilityZone.parse(node)
        end
        xml.at('SubnetOutpost') do |node|
          data.subnet_outpost = Parsers::Outpost.parse(node)
        end
        xml.at('SubnetStatus') do |node|
          data.subnet_status = (node.text || '')
        end
        return data
      end
    end

    class Outpost
      def self.parse(xml)
        data = Types::Outpost.new
        xml.at('Arn') do |node|
          data.arn = (node.text || '')
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

    class DBParameterGroupStatusList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::DBParameterGroupStatus.parse(node)
        end
        data
      end
    end

    class DBParameterGroupStatus
      def self.parse(xml)
        data = Types::DBParameterGroupStatus.new
        xml.at('DBParameterGroupName') do |node|
          data.db_parameter_group_name = (node.text || '')
        end
        xml.at('ParameterApplyStatus') do |node|
          data.parameter_apply_status = (node.text || '')
        end
        return data
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

    # Error Parser for NetworkTypeNotSupported
    class NetworkTypeNotSupported
      def self.parse(http_resp)
        data = Types::NetworkTypeNotSupported.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for ProvisionedIopsNotAvailableInAZFault
    class ProvisionedIopsNotAvailableInAZFault
      def self.parse(http_resp)
        data = Types::ProvisionedIopsNotAvailableInAZFault.new
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

    # Error Parser for BackupPolicyNotFoundFault
    class BackupPolicyNotFoundFault
      def self.parse(http_resp)
        data = Types::BackupPolicyNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateDBInstanceReadReplica
    class CreateDBInstanceReadReplica
      def self.parse(http_resp)
        data = Types::CreateDBInstanceReadReplicaOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateDBInstanceReadReplicaResult')
        xml.at('DBInstance') do |node|
          data.db_instance = Parsers::DBInstance.parse(node)
        end
        data
      end
    end

    # Error Parser for InvalidDBSubnetGroupFault
    class InvalidDBSubnetGroupFault
      def self.parse(http_resp)
        data = Types::InvalidDBSubnetGroupFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for DBSubnetGroupNotAllowedFault
    class DBSubnetGroupNotAllowedFault
      def self.parse(http_resp)
        data = Types::DBSubnetGroupNotAllowedFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateDBParameterGroup
    class CreateDBParameterGroup
      def self.parse(http_resp)
        data = Types::CreateDBParameterGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateDBParameterGroupResult')
        xml.at('DBParameterGroup') do |node|
          data.db_parameter_group = Parsers::DBParameterGroup.parse(node)
        end
        data
      end
    end

    # Operation Parser for CreateDBProxy
    class CreateDBProxy
      def self.parse(http_resp)
        data = Types::CreateDBProxyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateDBProxyResult')
        xml.at('DBProxy') do |node|
          data.db_proxy = Parsers::DBProxy.parse(node)
        end
        data
      end
    end

    class DBProxy
      def self.parse(xml)
        data = Types::DBProxy.new
        xml.at('DBProxyName') do |node|
          data.db_proxy_name = (node.text || '')
        end
        xml.at('DBProxyArn') do |node|
          data.db_proxy_arn = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('EngineFamily') do |node|
          data.engine_family = (node.text || '')
        end
        xml.at('VpcId') do |node|
          data.vpc_id = (node.text || '')
        end
        xml.at('VpcSecurityGroupIds') do |node|
          children = node.children('member')
          data.vpc_security_group_ids = Parsers::StringList.parse(children)
        end
        xml.at('VpcSubnetIds') do |node|
          children = node.children('member')
          data.vpc_subnet_ids = Parsers::StringList.parse(children)
        end
        xml.at('Auth') do |node|
          children = node.children('member')
          data.auth = Parsers::UserAuthConfigInfoList.parse(children)
        end
        xml.at('RoleArn') do |node|
          data.role_arn = (node.text || '')
        end
        xml.at('Endpoint') do |node|
          data.endpoint = (node.text || '')
        end
        xml.at('RequireTLS') do |node|
          data.require_tls = (node.text == 'true')
        end
        xml.at('IdleClientTimeout') do |node|
          data.idle_client_timeout = node.text&.to_i
        end
        xml.at('DebugLogging') do |node|
          data.debug_logging = (node.text == 'true')
        end
        xml.at('CreatedDate') do |node|
          data.created_date = Time.parse(node.text) if node.text
        end
        xml.at('UpdatedDate') do |node|
          data.updated_date = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    class UserAuthConfigInfoList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::UserAuthConfigInfo.parse(node)
        end
        data
      end
    end

    class UserAuthConfigInfo
      def self.parse(xml)
        data = Types::UserAuthConfigInfo.new
        xml.at('Description') do |node|
          data.description = (node.text || '')
        end
        xml.at('UserName') do |node|
          data.user_name = (node.text || '')
        end
        xml.at('AuthScheme') do |node|
          data.auth_scheme = (node.text || '')
        end
        xml.at('SecretArn') do |node|
          data.secret_arn = (node.text || '')
        end
        xml.at('IAMAuth') do |node|
          data.iam_auth = (node.text || '')
        end
        return data
      end
    end

    # Error Parser for DBProxyQuotaExceededFault
    class DBProxyQuotaExceededFault
      def self.parse(http_resp)
        data = Types::DBProxyQuotaExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for DBProxyAlreadyExistsFault
    class DBProxyAlreadyExistsFault
      def self.parse(http_resp)
        data = Types::DBProxyAlreadyExistsFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateDBProxyEndpoint
    class CreateDBProxyEndpoint
      def self.parse(http_resp)
        data = Types::CreateDBProxyEndpointOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateDBProxyEndpointResult')
        xml.at('DBProxyEndpoint') do |node|
          data.db_proxy_endpoint = Parsers::DBProxyEndpoint.parse(node)
        end
        data
      end
    end

    class DBProxyEndpoint
      def self.parse(xml)
        data = Types::DBProxyEndpoint.new
        xml.at('DBProxyEndpointName') do |node|
          data.db_proxy_endpoint_name = (node.text || '')
        end
        xml.at('DBProxyEndpointArn') do |node|
          data.db_proxy_endpoint_arn = (node.text || '')
        end
        xml.at('DBProxyName') do |node|
          data.db_proxy_name = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('VpcId') do |node|
          data.vpc_id = (node.text || '')
        end
        xml.at('VpcSecurityGroupIds') do |node|
          children = node.children('member')
          data.vpc_security_group_ids = Parsers::StringList.parse(children)
        end
        xml.at('VpcSubnetIds') do |node|
          children = node.children('member')
          data.vpc_subnet_ids = Parsers::StringList.parse(children)
        end
        xml.at('Endpoint') do |node|
          data.endpoint = (node.text || '')
        end
        xml.at('CreatedDate') do |node|
          data.created_date = Time.parse(node.text) if node.text
        end
        xml.at('TargetRole') do |node|
          data.target_role = (node.text || '')
        end
        xml.at('IsDefault') do |node|
          data.is_default = (node.text == 'true')
        end
        return data
      end
    end

    # Error Parser for DBProxyEndpointAlreadyExistsFault
    class DBProxyEndpointAlreadyExistsFault
      def self.parse(http_resp)
        data = Types::DBProxyEndpointAlreadyExistsFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for DBProxyEndpointQuotaExceededFault
    class DBProxyEndpointQuotaExceededFault
      def self.parse(http_resp)
        data = Types::DBProxyEndpointQuotaExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidDBProxyStateFault
    class InvalidDBProxyStateFault
      def self.parse(http_resp)
        data = Types::InvalidDBProxyStateFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateDBSecurityGroup
    class CreateDBSecurityGroup
      def self.parse(http_resp)
        data = Types::CreateDBSecurityGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateDBSecurityGroupResult')
        xml.at('DBSecurityGroup') do |node|
          data.db_security_group = Parsers::DBSecurityGroup.parse(node)
        end
        data
      end
    end

    # Error Parser for DBSecurityGroupNotSupportedFault
    class DBSecurityGroupNotSupportedFault
      def self.parse(http_resp)
        data = Types::DBSecurityGroupNotSupportedFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for DBSecurityGroupAlreadyExistsFault
    class DBSecurityGroupAlreadyExistsFault
      def self.parse(http_resp)
        data = Types::DBSecurityGroupAlreadyExistsFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for DBSecurityGroupQuotaExceededFault
    class DBSecurityGroupQuotaExceededFault
      def self.parse(http_resp)
        data = Types::DBSecurityGroupQuotaExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateDBSnapshot
    class CreateDBSnapshot
      def self.parse(http_resp)
        data = Types::CreateDBSnapshotOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateDBSnapshotResult')
        xml.at('DBSnapshot') do |node|
          data.db_snapshot = Parsers::DBSnapshot.parse(node)
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
          data.db_subnet_group = Parsers::DBSubnetGroup.parse(node)
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
          data.event_subscription = Parsers::EventSubscription.parse(node)
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

    # Operation Parser for CreateGlobalCluster
    class CreateGlobalCluster
      def self.parse(http_resp)
        data = Types::CreateGlobalClusterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateGlobalClusterResult')
        xml.at('GlobalCluster') do |node|
          data.global_cluster = Parsers::GlobalCluster.parse(node)
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
          data.global_cluster_members = Parsers::GlobalClusterMemberList.parse(children)
        end
        xml.at('FailoverState') do |node|
          data.failover_state = Parsers::FailoverState.parse(node)
        end
        return data
      end
    end

    class FailoverState
      def self.parse(xml)
        data = Types::FailoverState.new
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('FromDbClusterArn') do |node|
          data.from_db_cluster_arn = (node.text || '')
        end
        xml.at('ToDbClusterArn') do |node|
          data.to_db_cluster_arn = (node.text || '')
        end
        return data
      end
    end

    class GlobalClusterMemberList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::GlobalClusterMember.parse(node)
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
          data.readers = Parsers::ReadersArnList.parse(children)
        end
        xml.at('IsWriter') do |node|
          data.is_writer = (node.text == 'true')
        end
        xml.at('GlobalWriteForwardingStatus') do |node|
          data.global_write_forwarding_status = (node.text || '')
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

    # Operation Parser for CreateOptionGroup
    class CreateOptionGroup
      def self.parse(http_resp)
        data = Types::CreateOptionGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateOptionGroupResult')
        xml.at('OptionGroup') do |node|
          data.option_group = Parsers::OptionGroup.parse(node)
        end
        data
      end
    end

    # Operation Parser for DeleteCustomDBEngineVersion
    class DeleteCustomDBEngineVersion
      def self.parse(http_resp)
        data = Types::DeleteCustomDBEngineVersionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteCustomDBEngineVersionResult')
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
        xml.at('DefaultCharacterSet') do |node|
          data.default_character_set = Parsers::CharacterSet.parse(node)
        end
        xml.at('SupportedCharacterSets') do |node|
          children = node.children('CharacterSet')
          data.supported_character_sets = Parsers::SupportedCharacterSetsList.parse(children)
        end
        xml.at('SupportedNcharCharacterSets') do |node|
          children = node.children('CharacterSet')
          data.supported_nchar_character_sets = Parsers::SupportedCharacterSetsList.parse(children)
        end
        xml.at('ValidUpgradeTarget') do |node|
          children = node.children('UpgradeTarget')
          data.valid_upgrade_target = Parsers::ValidUpgradeTargetList.parse(children)
        end
        xml.at('SupportedTimezones') do |node|
          children = node.children('Timezone')
          data.supported_timezones = Parsers::SupportedTimezonesList.parse(children)
        end
        xml.at('ExportableLogTypes') do |node|
          children = node.children('member')
          data.exportable_log_types = Parsers::LogTypeList.parse(children)
        end
        xml.at('SupportsLogExportsToCloudwatchLogs') do |node|
          data.supports_log_exports_to_cloudwatch_logs = (node.text == 'true')
        end
        xml.at('SupportsReadReplica') do |node|
          data.supports_read_replica = (node.text == 'true')
        end
        xml.at('SupportedEngineModes') do |node|
          children = node.children('member')
          data.supported_engine_modes = Parsers::EngineModeList.parse(children)
        end
        xml.at('SupportedFeatureNames') do |node|
          children = node.children('member')
          data.supported_feature_names = Parsers::FeatureNameList.parse(children)
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('SupportsParallelQuery') do |node|
          data.supports_parallel_query = (node.text == 'true')
        end
        xml.at('SupportsGlobalDatabases') do |node|
          data.supports_global_databases = (node.text == 'true')
        end
        xml.at('MajorEngineVersion') do |node|
          data.major_engine_version = (node.text || '')
        end
        xml.at('DatabaseInstallationFilesS3BucketName') do |node|
          data.database_installation_files_s3_bucket_name = (node.text || '')
        end
        xml.at('DatabaseInstallationFilesS3Prefix') do |node|
          data.database_installation_files_s3_prefix = (node.text || '')
        end
        xml.at('DBEngineVersionArn') do |node|
          data.db_engine_version_arn = (node.text || '')
        end
        xml.at('KMSKeyId') do |node|
          data.kms_key_id = (node.text || '')
        end
        xml.at('CreateTime') do |node|
          data.create_time = Time.parse(node.text) if node.text
        end
        xml.at('TagList') do |node|
          children = node.children('Tag')
          data.tag_list = Parsers::TagList.parse(children)
        end
        xml.at('SupportsBabelfish') do |node|
          data.supports_babelfish = (node.text == 'true')
        end
        data
      end
    end

    # Error Parser for InvalidCustomDBEngineVersionStateFault
    class InvalidCustomDBEngineVersionStateFault
      def self.parse(http_resp)
        data = Types::InvalidCustomDBEngineVersionStateFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for CustomDBEngineVersionNotFoundFault
    class CustomDBEngineVersionNotFoundFault
      def self.parse(http_resp)
        data = Types::CustomDBEngineVersionNotFoundFault.new
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
          data.db_cluster = Parsers::DBCluster.parse(node)
        end
        data
      end
    end

    # Operation Parser for DeleteDBClusterEndpoint
    class DeleteDBClusterEndpoint
      def self.parse(http_resp)
        data = Types::DeleteDBClusterEndpointOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteDBClusterEndpointResult')
        xml.at('DBClusterEndpointIdentifier') do |node|
          data.db_cluster_endpoint_identifier = (node.text || '')
        end
        xml.at('DBClusterIdentifier') do |node|
          data.db_cluster_identifier = (node.text || '')
        end
        xml.at('DBClusterEndpointResourceIdentifier') do |node|
          data.db_cluster_endpoint_resource_identifier = (node.text || '')
        end
        xml.at('Endpoint') do |node|
          data.endpoint = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('EndpointType') do |node|
          data.endpoint_type = (node.text || '')
        end
        xml.at('CustomEndpointType') do |node|
          data.custom_endpoint_type = (node.text || '')
        end
        xml.at('StaticMembers') do |node|
          children = node.children('member')
          data.static_members = Parsers::StringList.parse(children)
        end
        xml.at('ExcludedMembers') do |node|
          children = node.children('member')
          data.excluded_members = Parsers::StringList.parse(children)
        end
        xml.at('DBClusterEndpointArn') do |node|
          data.db_cluster_endpoint_arn = (node.text || '')
        end
        data
      end
    end

    # Error Parser for DBClusterEndpointNotFoundFault
    class DBClusterEndpointNotFoundFault
      def self.parse(http_resp)
        data = Types::DBClusterEndpointNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidDBClusterEndpointStateFault
    class InvalidDBClusterEndpointStateFault
      def self.parse(http_resp)
        data = Types::InvalidDBClusterEndpointStateFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
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
          data.db_cluster_snapshot = Parsers::DBClusterSnapshot.parse(node)
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
          data.db_instance = Parsers::DBInstance.parse(node)
        end
        data
      end
    end

    # Error Parser for DBInstanceAutomatedBackupQuotaExceededFault
    class DBInstanceAutomatedBackupQuotaExceededFault
      def self.parse(http_resp)
        data = Types::DBInstanceAutomatedBackupQuotaExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteDBInstanceAutomatedBackup
    class DeleteDBInstanceAutomatedBackup
      def self.parse(http_resp)
        data = Types::DeleteDBInstanceAutomatedBackupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteDBInstanceAutomatedBackupResult')
        xml.at('DBInstanceAutomatedBackup') do |node|
          data.db_instance_automated_backup = Parsers::DBInstanceAutomatedBackup.parse(node)
        end
        data
      end
    end

    class DBInstanceAutomatedBackup
      def self.parse(xml)
        data = Types::DBInstanceAutomatedBackup.new
        xml.at('DBInstanceArn') do |node|
          data.db_instance_arn = (node.text || '')
        end
        xml.at('DbiResourceId') do |node|
          data.dbi_resource_id = (node.text || '')
        end
        xml.at('Region') do |node|
          data.region = (node.text || '')
        end
        xml.at('DBInstanceIdentifier') do |node|
          data.db_instance_identifier = (node.text || '')
        end
        xml.at('RestoreWindow') do |node|
          data.restore_window = Parsers::RestoreWindow.parse(node)
        end
        xml.at('AllocatedStorage') do |node|
          data.allocated_storage = node.text&.to_i
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('Port') do |node|
          data.port = node.text&.to_i
        end
        xml.at('AvailabilityZone') do |node|
          data.availability_zone = (node.text || '')
        end
        xml.at('VpcId') do |node|
          data.vpc_id = (node.text || '')
        end
        xml.at('InstanceCreateTime') do |node|
          data.instance_create_time = Time.parse(node.text) if node.text
        end
        xml.at('MasterUsername') do |node|
          data.master_username = (node.text || '')
        end
        xml.at('Engine') do |node|
          data.engine = (node.text || '')
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
        xml.at('OptionGroupName') do |node|
          data.option_group_name = (node.text || '')
        end
        xml.at('TdeCredentialArn') do |node|
          data.tde_credential_arn = (node.text || '')
        end
        xml.at('Encrypted') do |node|
          data.encrypted = (node.text == 'true')
        end
        xml.at('StorageType') do |node|
          data.storage_type = (node.text || '')
        end
        xml.at('KmsKeyId') do |node|
          data.kms_key_id = (node.text || '')
        end
        xml.at('Timezone') do |node|
          data.timezone = (node.text || '')
        end
        xml.at('IAMDatabaseAuthenticationEnabled') do |node|
          data.iam_database_authentication_enabled = (node.text == 'true')
        end
        xml.at('BackupRetentionPeriod') do |node|
          data.backup_retention_period = node.text&.to_i
        end
        xml.at('DBInstanceAutomatedBackupsArn') do |node|
          data.db_instance_automated_backups_arn = (node.text || '')
        end
        xml.at('DBInstanceAutomatedBackupsReplications') do |node|
          children = node.children('DBInstanceAutomatedBackupsReplication')
          data.db_instance_automated_backups_replications = Parsers::DBInstanceAutomatedBackupsReplicationList.parse(children)
        end
        xml.at('BackupTarget') do |node|
          data.backup_target = (node.text || '')
        end
        return data
      end
    end

    class RestoreWindow
      def self.parse(xml)
        data = Types::RestoreWindow.new
        xml.at('EarliestTime') do |node|
          data.earliest_time = Time.parse(node.text) if node.text
        end
        xml.at('LatestTime') do |node|
          data.latest_time = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    # Error Parser for DBInstanceAutomatedBackupNotFoundFault
    class DBInstanceAutomatedBackupNotFoundFault
      def self.parse(http_resp)
        data = Types::DBInstanceAutomatedBackupNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidDBInstanceAutomatedBackupStateFault
    class InvalidDBInstanceAutomatedBackupStateFault
      def self.parse(http_resp)
        data = Types::InvalidDBInstanceAutomatedBackupStateFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteDBParameterGroup
    class DeleteDBParameterGroup
      def self.parse(http_resp)
        data = Types::DeleteDBParameterGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteDBParameterGroupResult')
        data
      end
    end

    # Operation Parser for DeleteDBProxy
    class DeleteDBProxy
      def self.parse(http_resp)
        data = Types::DeleteDBProxyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteDBProxyResult')
        xml.at('DBProxy') do |node|
          data.db_proxy = Parsers::DBProxy.parse(node)
        end
        data
      end
    end

    # Operation Parser for DeleteDBProxyEndpoint
    class DeleteDBProxyEndpoint
      def self.parse(http_resp)
        data = Types::DeleteDBProxyEndpointOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteDBProxyEndpointResult')
        xml.at('DBProxyEndpoint') do |node|
          data.db_proxy_endpoint = Parsers::DBProxyEndpoint.parse(node)
        end
        data
      end
    end

    # Error Parser for InvalidDBProxyEndpointStateFault
    class InvalidDBProxyEndpointStateFault
      def self.parse(http_resp)
        data = Types::InvalidDBProxyEndpointStateFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for DBProxyEndpointNotFoundFault
    class DBProxyEndpointNotFoundFault
      def self.parse(http_resp)
        data = Types::DBProxyEndpointNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteDBSecurityGroup
    class DeleteDBSecurityGroup
      def self.parse(http_resp)
        data = Types::DeleteDBSecurityGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteDBSecurityGroupResult')
        data
      end
    end

    # Operation Parser for DeleteDBSnapshot
    class DeleteDBSnapshot
      def self.parse(http_resp)
        data = Types::DeleteDBSnapshotOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteDBSnapshotResult')
        xml.at('DBSnapshot') do |node|
          data.db_snapshot = Parsers::DBSnapshot.parse(node)
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
          data.event_subscription = Parsers::EventSubscription.parse(node)
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
          data.global_cluster = Parsers::GlobalCluster.parse(node)
        end
        data
      end
    end

    # Operation Parser for DeleteOptionGroup
    class DeleteOptionGroup
      def self.parse(http_resp)
        data = Types::DeleteOptionGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteOptionGroupResult')
        data
      end
    end

    # Error Parser for InvalidOptionGroupStateFault
    class InvalidOptionGroupStateFault
      def self.parse(http_resp)
        data = Types::InvalidOptionGroupStateFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeregisterDBProxyTargets
    class DeregisterDBProxyTargets
      def self.parse(http_resp)
        data = Types::DeregisterDBProxyTargetsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeregisterDBProxyTargetsResult')
        data
      end
    end

    # Error Parser for DBProxyTargetNotFoundFault
    class DBProxyTargetNotFoundFault
      def self.parse(http_resp)
        data = Types::DBProxyTargetNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DescribeAccountAttributes
    class DescribeAccountAttributes
      def self.parse(http_resp)
        data = Types::DescribeAccountAttributesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeAccountAttributesResult')
        xml.at('AccountQuotas') do |node|
          children = node.children('AccountQuota')
          data.account_quotas = Parsers::AccountQuotaList.parse(children)
        end
        data
      end
    end

    class AccountQuotaList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::AccountQuota.parse(node)
        end
        data
      end
    end

    class AccountQuota
      def self.parse(xml)
        data = Types::AccountQuota.new
        xml.at('AccountQuotaName') do |node|
          data.account_quota_name = (node.text || '')
        end
        xml.at('Used') do |node|
          data.used = node.text&.to_i
        end
        xml.at('Max') do |node|
          data.max = node.text&.to_i
        end
        return data
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
          data.certificates = Parsers::CertificateList.parse(children)
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
          data << Parsers::Certificate.parse(node)
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
        xml.at('CustomerOverride') do |node|
          data.customer_override = (node.text == 'true')
        end
        xml.at('CustomerOverrideValidTill') do |node|
          data.customer_override_valid_till = Time.parse(node.text) if node.text
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

    # Operation Parser for DescribeDBClusterBacktracks
    class DescribeDBClusterBacktracks
      def self.parse(http_resp)
        data = Types::DescribeDBClusterBacktracksOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeDBClusterBacktracksResult')
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('DBClusterBacktracks') do |node|
          children = node.children('DBClusterBacktrack')
          data.db_cluster_backtracks = Parsers::DBClusterBacktrackList.parse(children)
        end
        data
      end
    end

    class DBClusterBacktrackList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::DBClusterBacktrack.parse(node)
        end
        data
      end
    end

    class DBClusterBacktrack
      def self.parse(xml)
        data = Types::DBClusterBacktrack.new
        xml.at('DBClusterIdentifier') do |node|
          data.db_cluster_identifier = (node.text || '')
        end
        xml.at('BacktrackIdentifier') do |node|
          data.backtrack_identifier = (node.text || '')
        end
        xml.at('BacktrackTo') do |node|
          data.backtrack_to = Time.parse(node.text) if node.text
        end
        xml.at('BacktrackedFrom') do |node|
          data.backtracked_from = Time.parse(node.text) if node.text
        end
        xml.at('BacktrackRequestCreationTime') do |node|
          data.backtrack_request_creation_time = Time.parse(node.text) if node.text
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        return data
      end
    end

    # Error Parser for DBClusterBacktrackNotFoundFault
    class DBClusterBacktrackNotFoundFault
      def self.parse(http_resp)
        data = Types::DBClusterBacktrackNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DescribeDBClusterEndpoints
    class DescribeDBClusterEndpoints
      def self.parse(http_resp)
        data = Types::DescribeDBClusterEndpointsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeDBClusterEndpointsResult')
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('DBClusterEndpoints') do |node|
          children = node.children('DBClusterEndpointList')
          data.db_cluster_endpoints = Parsers::DBClusterEndpointList.parse(children)
        end
        data
      end
    end

    class DBClusterEndpointList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::DBClusterEndpoint.parse(node)
        end
        data
      end
    end

    class DBClusterEndpoint
      def self.parse(xml)
        data = Types::DBClusterEndpoint.new
        xml.at('DBClusterEndpointIdentifier') do |node|
          data.db_cluster_endpoint_identifier = (node.text || '')
        end
        xml.at('DBClusterIdentifier') do |node|
          data.db_cluster_identifier = (node.text || '')
        end
        xml.at('DBClusterEndpointResourceIdentifier') do |node|
          data.db_cluster_endpoint_resource_identifier = (node.text || '')
        end
        xml.at('Endpoint') do |node|
          data.endpoint = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('EndpointType') do |node|
          data.endpoint_type = (node.text || '')
        end
        xml.at('CustomEndpointType') do |node|
          data.custom_endpoint_type = (node.text || '')
        end
        xml.at('StaticMembers') do |node|
          children = node.children('member')
          data.static_members = Parsers::StringList.parse(children)
        end
        xml.at('ExcludedMembers') do |node|
          children = node.children('member')
          data.excluded_members = Parsers::StringList.parse(children)
        end
        xml.at('DBClusterEndpointArn') do |node|
          data.db_cluster_endpoint_arn = (node.text || '')
        end
        return data
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
          data.db_cluster_parameter_groups = Parsers::DBClusterParameterGroupList.parse(children)
        end
        data
      end
    end

    class DBClusterParameterGroupList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::DBClusterParameterGroup.parse(node)
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
          data.parameters = Parsers::ParametersList.parse(children)
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
          data << Parsers::Parameter.parse(node)
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
        xml.at('SupportedEngineModes') do |node|
          children = node.children('member')
          data.supported_engine_modes = Parsers::EngineModeList.parse(children)
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
          data.db_cluster_snapshot_attributes_result = Parsers::DBClusterSnapshotAttributesResult.parse(node)
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
          data.db_cluster_snapshot_attributes = Parsers::DBClusterSnapshotAttributeList.parse(children)
        end
        return data
      end
    end

    class DBClusterSnapshotAttributeList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::DBClusterSnapshotAttribute.parse(node)
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
          data.attribute_values = Parsers::AttributeValueList.parse(children)
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
          data.db_cluster_snapshots = Parsers::DBClusterSnapshotList.parse(children)
        end
        data
      end
    end

    class DBClusterSnapshotList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::DBClusterSnapshot.parse(node)
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
          data.db_clusters = Parsers::DBClusterList.parse(children)
        end
        data
      end
    end

    class DBClusterList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::DBCluster.parse(node)
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
          data.db_engine_versions = Parsers::DBEngineVersionList.parse(children)
        end
        data
      end
    end

    class DBEngineVersionList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::DBEngineVersion.parse(node)
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
        xml.at('DefaultCharacterSet') do |node|
          data.default_character_set = Parsers::CharacterSet.parse(node)
        end
        xml.at('SupportedCharacterSets') do |node|
          children = node.children('CharacterSet')
          data.supported_character_sets = Parsers::SupportedCharacterSetsList.parse(children)
        end
        xml.at('SupportedNcharCharacterSets') do |node|
          children = node.children('CharacterSet')
          data.supported_nchar_character_sets = Parsers::SupportedCharacterSetsList.parse(children)
        end
        xml.at('ValidUpgradeTarget') do |node|
          children = node.children('UpgradeTarget')
          data.valid_upgrade_target = Parsers::ValidUpgradeTargetList.parse(children)
        end
        xml.at('SupportedTimezones') do |node|
          children = node.children('Timezone')
          data.supported_timezones = Parsers::SupportedTimezonesList.parse(children)
        end
        xml.at('ExportableLogTypes') do |node|
          children = node.children('member')
          data.exportable_log_types = Parsers::LogTypeList.parse(children)
        end
        xml.at('SupportsLogExportsToCloudwatchLogs') do |node|
          data.supports_log_exports_to_cloudwatch_logs = (node.text == 'true')
        end
        xml.at('SupportsReadReplica') do |node|
          data.supports_read_replica = (node.text == 'true')
        end
        xml.at('SupportedEngineModes') do |node|
          children = node.children('member')
          data.supported_engine_modes = Parsers::EngineModeList.parse(children)
        end
        xml.at('SupportedFeatureNames') do |node|
          children = node.children('member')
          data.supported_feature_names = Parsers::FeatureNameList.parse(children)
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('SupportsParallelQuery') do |node|
          data.supports_parallel_query = (node.text == 'true')
        end
        xml.at('SupportsGlobalDatabases') do |node|
          data.supports_global_databases = (node.text == 'true')
        end
        xml.at('MajorEngineVersion') do |node|
          data.major_engine_version = (node.text || '')
        end
        xml.at('DatabaseInstallationFilesS3BucketName') do |node|
          data.database_installation_files_s3_bucket_name = (node.text || '')
        end
        xml.at('DatabaseInstallationFilesS3Prefix') do |node|
          data.database_installation_files_s3_prefix = (node.text || '')
        end
        xml.at('DBEngineVersionArn') do |node|
          data.db_engine_version_arn = (node.text || '')
        end
        xml.at('KMSKeyId') do |node|
          data.kms_key_id = (node.text || '')
        end
        xml.at('CreateTime') do |node|
          data.create_time = Time.parse(node.text) if node.text
        end
        xml.at('TagList') do |node|
          children = node.children('Tag')
          data.tag_list = Parsers::TagList.parse(children)
        end
        xml.at('SupportsBabelfish') do |node|
          data.supports_babelfish = (node.text == 'true')
        end
        return data
      end
    end

    # Operation Parser for DescribeDBInstanceAutomatedBackups
    class DescribeDBInstanceAutomatedBackups
      def self.parse(http_resp)
        data = Types::DescribeDBInstanceAutomatedBackupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeDBInstanceAutomatedBackupsResult')
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('DBInstanceAutomatedBackups') do |node|
          children = node.children('DBInstanceAutomatedBackup')
          data.db_instance_automated_backups = Parsers::DBInstanceAutomatedBackupList.parse(children)
        end
        data
      end
    end

    class DBInstanceAutomatedBackupList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::DBInstanceAutomatedBackup.parse(node)
        end
        data
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
          data.db_instances = Parsers::DBInstanceList.parse(children)
        end
        data
      end
    end

    class DBInstanceList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::DBInstance.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeDBLogFiles
    class DescribeDBLogFiles
      def self.parse(http_resp)
        data = Types::DescribeDBLogFilesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeDBLogFilesResult')
        xml.at('DescribeDBLogFiles') do |node|
          children = node.children('DescribeDBLogFilesDetails')
          data.describe_db_log_files = Parsers::DescribeDBLogFilesList.parse(children)
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    class DescribeDBLogFilesList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::DescribeDBLogFilesDetails.parse(node)
        end
        data
      end
    end

    class DescribeDBLogFilesDetails
      def self.parse(xml)
        data = Types::DescribeDBLogFilesDetails.new
        xml.at('LogFileName') do |node|
          data.log_file_name = (node.text || '')
        end
        xml.at('LastWritten') do |node|
          data.last_written = node.text&.to_i
        end
        xml.at('Size') do |node|
          data.size = node.text&.to_i
        end
        return data
      end
    end

    # Operation Parser for DescribeDBParameterGroups
    class DescribeDBParameterGroups
      def self.parse(http_resp)
        data = Types::DescribeDBParameterGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeDBParameterGroupsResult')
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('DBParameterGroups') do |node|
          children = node.children('DBParameterGroup')
          data.db_parameter_groups = Parsers::DBParameterGroupList.parse(children)
        end
        data
      end
    end

    class DBParameterGroupList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::DBParameterGroup.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeDBParameters
    class DescribeDBParameters
      def self.parse(http_resp)
        data = Types::DescribeDBParametersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeDBParametersResult')
        xml.at('Parameters') do |node|
          children = node.children('Parameter')
          data.parameters = Parsers::ParametersList.parse(children)
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DescribeDBProxies
    class DescribeDBProxies
      def self.parse(http_resp)
        data = Types::DescribeDBProxiesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeDBProxiesResult')
        xml.at('DBProxies') do |node|
          children = node.children('member')
          data.db_proxies = Parsers::DBProxyList.parse(children)
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    class DBProxyList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::DBProxy.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeDBProxyEndpoints
    class DescribeDBProxyEndpoints
      def self.parse(http_resp)
        data = Types::DescribeDBProxyEndpointsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeDBProxyEndpointsResult')
        xml.at('DBProxyEndpoints') do |node|
          children = node.children('member')
          data.db_proxy_endpoints = Parsers::DBProxyEndpointList.parse(children)
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    class DBProxyEndpointList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::DBProxyEndpoint.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeDBProxyTargetGroups
    class DescribeDBProxyTargetGroups
      def self.parse(http_resp)
        data = Types::DescribeDBProxyTargetGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeDBProxyTargetGroupsResult')
        xml.at('TargetGroups') do |node|
          children = node.children('member')
          data.target_groups = Parsers::TargetGroupList.parse(children)
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    class TargetGroupList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::DBProxyTargetGroup.parse(node)
        end
        data
      end
    end

    class DBProxyTargetGroup
      def self.parse(xml)
        data = Types::DBProxyTargetGroup.new
        xml.at('DBProxyName') do |node|
          data.db_proxy_name = (node.text || '')
        end
        xml.at('TargetGroupName') do |node|
          data.target_group_name = (node.text || '')
        end
        xml.at('TargetGroupArn') do |node|
          data.target_group_arn = (node.text || '')
        end
        xml.at('IsDefault') do |node|
          data.is_default = (node.text == 'true')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('ConnectionPoolConfig') do |node|
          data.connection_pool_config = Parsers::ConnectionPoolConfigurationInfo.parse(node)
        end
        xml.at('CreatedDate') do |node|
          data.created_date = Time.parse(node.text) if node.text
        end
        xml.at('UpdatedDate') do |node|
          data.updated_date = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    class ConnectionPoolConfigurationInfo
      def self.parse(xml)
        data = Types::ConnectionPoolConfigurationInfo.new
        xml.at('MaxConnectionsPercent') do |node|
          data.max_connections_percent = node.text&.to_i
        end
        xml.at('MaxIdleConnectionsPercent') do |node|
          data.max_idle_connections_percent = node.text&.to_i
        end
        xml.at('ConnectionBorrowTimeout') do |node|
          data.connection_borrow_timeout = node.text&.to_i
        end
        xml.at('SessionPinningFilters') do |node|
          children = node.children('member')
          data.session_pinning_filters = Parsers::StringList.parse(children)
        end
        xml.at('InitQuery') do |node|
          data.init_query = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeDBProxyTargets
    class DescribeDBProxyTargets
      def self.parse(http_resp)
        data = Types::DescribeDBProxyTargetsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeDBProxyTargetsResult')
        xml.at('Targets') do |node|
          children = node.children('member')
          data.targets = Parsers::TargetList.parse(children)
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    class TargetList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::DBProxyTarget.parse(node)
        end
        data
      end
    end

    class DBProxyTarget
      def self.parse(xml)
        data = Types::DBProxyTarget.new
        xml.at('TargetArn') do |node|
          data.target_arn = (node.text || '')
        end
        xml.at('Endpoint') do |node|
          data.endpoint = (node.text || '')
        end
        xml.at('TrackedClusterId') do |node|
          data.tracked_cluster_id = (node.text || '')
        end
        xml.at('RdsResourceId') do |node|
          data.rds_resource_id = (node.text || '')
        end
        xml.at('Port') do |node|
          data.port = node.text&.to_i
        end
        xml.at('Type') do |node|
          data.type = (node.text || '')
        end
        xml.at('Role') do |node|
          data.role = (node.text || '')
        end
        xml.at('TargetHealth') do |node|
          data.target_health = Parsers::TargetHealth.parse(node)
        end
        return data
      end
    end

    class TargetHealth
      def self.parse(xml)
        data = Types::TargetHealth.new
        xml.at('State') do |node|
          data.state = (node.text || '')
        end
        xml.at('Reason') do |node|
          data.reason = (node.text || '')
        end
        xml.at('Description') do |node|
          data.description = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeDBSecurityGroups
    class DescribeDBSecurityGroups
      def self.parse(http_resp)
        data = Types::DescribeDBSecurityGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeDBSecurityGroupsResult')
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('DBSecurityGroups') do |node|
          children = node.children('DBSecurityGroup')
          data.db_security_groups = Parsers::DBSecurityGroups.parse(children)
        end
        data
      end
    end

    class DBSecurityGroups
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::DBSecurityGroup.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeDBSnapshotAttributes
    class DescribeDBSnapshotAttributes
      def self.parse(http_resp)
        data = Types::DescribeDBSnapshotAttributesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeDBSnapshotAttributesResult')
        xml.at('DBSnapshotAttributesResult') do |node|
          data.db_snapshot_attributes_result = Parsers::DBSnapshotAttributesResult.parse(node)
        end
        data
      end
    end

    class DBSnapshotAttributesResult
      def self.parse(xml)
        data = Types::DBSnapshotAttributesResult.new
        xml.at('DBSnapshotIdentifier') do |node|
          data.db_snapshot_identifier = (node.text || '')
        end
        xml.at('DBSnapshotAttributes') do |node|
          children = node.children('DBSnapshotAttribute')
          data.db_snapshot_attributes = Parsers::DBSnapshotAttributeList.parse(children)
        end
        return data
      end
    end

    class DBSnapshotAttributeList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::DBSnapshotAttribute.parse(node)
        end
        data
      end
    end

    class DBSnapshotAttribute
      def self.parse(xml)
        data = Types::DBSnapshotAttribute.new
        xml.at('AttributeName') do |node|
          data.attribute_name = (node.text || '')
        end
        xml.at('AttributeValues') do |node|
          children = node.children('AttributeValue')
          data.attribute_values = Parsers::AttributeValueList.parse(children)
        end
        return data
      end
    end

    # Operation Parser for DescribeDBSnapshots
    class DescribeDBSnapshots
      def self.parse(http_resp)
        data = Types::DescribeDBSnapshotsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeDBSnapshotsResult')
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('DBSnapshots') do |node|
          children = node.children('DBSnapshot')
          data.db_snapshots = Parsers::DBSnapshotList.parse(children)
        end
        data
      end
    end

    class DBSnapshotList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::DBSnapshot.parse(node)
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
          data.db_subnet_groups = Parsers::DBSubnetGroups.parse(children)
        end
        data
      end
    end

    class DBSubnetGroups
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::DBSubnetGroup.parse(node)
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
          data.engine_defaults = Parsers::EngineDefaults.parse(node)
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
          data.parameters = Parsers::ParametersList.parse(children)
        end
        return data
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
          data.engine_defaults = Parsers::EngineDefaults.parse(node)
        end
        data
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
          data.event_categories_map_list = Parsers::EventCategoriesMapList.parse(children)
        end
        data
      end
    end

    class EventCategoriesMapList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::EventCategoriesMap.parse(node)
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
          data.event_categories = Parsers::EventCategoriesList.parse(children)
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
          data.event_subscriptions_list = Parsers::EventSubscriptionsList.parse(children)
        end
        data
      end
    end

    class EventSubscriptionsList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::EventSubscription.parse(node)
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
          data.events = Parsers::EventList.parse(children)
        end
        data
      end
    end

    class EventList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Event.parse(node)
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
          data.event_categories = Parsers::EventCategoriesList.parse(children)
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

    # Operation Parser for DescribeExportTasks
    class DescribeExportTasks
      def self.parse(http_resp)
        data = Types::DescribeExportTasksOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeExportTasksResult')
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('ExportTasks') do |node|
          children = node.children('ExportTask')
          data.export_tasks = Parsers::ExportTasksList.parse(children)
        end
        data
      end
    end

    class ExportTasksList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ExportTask.parse(node)
        end
        data
      end
    end

    class ExportTask
      def self.parse(xml)
        data = Types::ExportTask.new
        xml.at('ExportTaskIdentifier') do |node|
          data.export_task_identifier = (node.text || '')
        end
        xml.at('SourceArn') do |node|
          data.source_arn = (node.text || '')
        end
        xml.at('ExportOnly') do |node|
          children = node.children('member')
          data.export_only = Parsers::StringList.parse(children)
        end
        xml.at('SnapshotTime') do |node|
          data.snapshot_time = Time.parse(node.text) if node.text
        end
        xml.at('TaskStartTime') do |node|
          data.task_start_time = Time.parse(node.text) if node.text
        end
        xml.at('TaskEndTime') do |node|
          data.task_end_time = Time.parse(node.text) if node.text
        end
        xml.at('S3Bucket') do |node|
          data.s3_bucket = (node.text || '')
        end
        xml.at('S3Prefix') do |node|
          data.s3_prefix = (node.text || '')
        end
        xml.at('IamRoleArn') do |node|
          data.iam_role_arn = (node.text || '')
        end
        xml.at('KmsKeyId') do |node|
          data.kms_key_id = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('PercentProgress') do |node|
          data.percent_progress = node.text&.to_i
        end
        xml.at('TotalExtractedDataInGB') do |node|
          data.total_extracted_data_in_gb = node.text&.to_i
        end
        xml.at('FailureCause') do |node|
          data.failure_cause = (node.text || '')
        end
        xml.at('WarningMessage') do |node|
          data.warning_message = (node.text || '')
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
          data.global_clusters = Parsers::GlobalClusterList.parse(children)
        end
        data
      end
    end

    class GlobalClusterList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::GlobalCluster.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeOptionGroupOptions
    class DescribeOptionGroupOptions
      def self.parse(http_resp)
        data = Types::DescribeOptionGroupOptionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeOptionGroupOptionsResult')
        xml.at('OptionGroupOptions') do |node|
          children = node.children('OptionGroupOption')
          data.option_group_options = Parsers::OptionGroupOptionsList.parse(children)
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    class OptionGroupOptionsList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::OptionGroupOption.parse(node)
        end
        data
      end
    end

    class OptionGroupOption
      def self.parse(xml)
        data = Types::OptionGroupOption.new
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('Description') do |node|
          data.description = (node.text || '')
        end
        xml.at('EngineName') do |node|
          data.engine_name = (node.text || '')
        end
        xml.at('MajorEngineVersion') do |node|
          data.major_engine_version = (node.text || '')
        end
        xml.at('MinimumRequiredMinorEngineVersion') do |node|
          data.minimum_required_minor_engine_version = (node.text || '')
        end
        xml.at('PortRequired') do |node|
          data.port_required = (node.text == 'true')
        end
        xml.at('DefaultPort') do |node|
          data.default_port = node.text&.to_i
        end
        xml.at('OptionsDependedOn') do |node|
          children = node.children('OptionName')
          data.options_depended_on = Parsers::OptionsDependedOn.parse(children)
        end
        xml.at('OptionsConflictsWith') do |node|
          children = node.children('OptionConflictName')
          data.options_conflicts_with = Parsers::OptionsConflictsWith.parse(children)
        end
        xml.at('Persistent') do |node|
          data.persistent = (node.text == 'true')
        end
        xml.at('Permanent') do |node|
          data.permanent = (node.text == 'true')
        end
        xml.at('RequiresAutoMinorEngineVersionUpgrade') do |node|
          data.requires_auto_minor_engine_version_upgrade = (node.text == 'true')
        end
        xml.at('VpcOnly') do |node|
          data.vpc_only = (node.text == 'true')
        end
        xml.at('SupportsOptionVersionDowngrade') do |node|
          data.supports_option_version_downgrade = (node.text == 'true')
        end
        xml.at('OptionGroupOptionSettings') do |node|
          children = node.children('OptionGroupOptionSetting')
          data.option_group_option_settings = Parsers::OptionGroupOptionSettingsList.parse(children)
        end
        xml.at('OptionGroupOptionVersions') do |node|
          children = node.children('OptionVersion')
          data.option_group_option_versions = Parsers::OptionGroupOptionVersionsList.parse(children)
        end
        return data
      end
    end

    class OptionGroupOptionVersionsList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::OptionVersion.parse(node)
        end
        data
      end
    end

    class OptionVersion
      def self.parse(xml)
        data = Types::OptionVersion.new
        xml.at('Version') do |node|
          data.version = (node.text || '')
        end
        xml.at('IsDefault') do |node|
          data.is_default = (node.text == 'true')
        end
        return data
      end
    end

    class OptionGroupOptionSettingsList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::OptionGroupOptionSetting.parse(node)
        end
        data
      end
    end

    class OptionGroupOptionSetting
      def self.parse(xml)
        data = Types::OptionGroupOptionSetting.new
        xml.at('SettingName') do |node|
          data.setting_name = (node.text || '')
        end
        xml.at('SettingDescription') do |node|
          data.setting_description = (node.text || '')
        end
        xml.at('DefaultValue') do |node|
          data.default_value = (node.text || '')
        end
        xml.at('ApplyType') do |node|
          data.apply_type = (node.text || '')
        end
        xml.at('AllowedValues') do |node|
          data.allowed_values = (node.text || '')
        end
        xml.at('IsModifiable') do |node|
          data.is_modifiable = (node.text == 'true')
        end
        xml.at('IsRequired') do |node|
          data.is_required = (node.text == 'true')
        end
        xml.at('MinimumEngineVersionPerAllowedValue') do |node|
          children = node.children('MinimumEngineVersionPerAllowedValue')
          data.minimum_engine_version_per_allowed_value = Parsers::MinimumEngineVersionPerAllowedValueList.parse(children)
        end
        return data
      end
    end

    class MinimumEngineVersionPerAllowedValueList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::MinimumEngineVersionPerAllowedValue.parse(node)
        end
        data
      end
    end

    class MinimumEngineVersionPerAllowedValue
      def self.parse(xml)
        data = Types::MinimumEngineVersionPerAllowedValue.new
        xml.at('AllowedValue') do |node|
          data.allowed_value = (node.text || '')
        end
        xml.at('MinimumEngineVersion') do |node|
          data.minimum_engine_version = (node.text || '')
        end
        return data
      end
    end

    class OptionsConflictsWith
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class OptionsDependedOn
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DescribeOptionGroups
    class DescribeOptionGroups
      def self.parse(http_resp)
        data = Types::DescribeOptionGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeOptionGroupsResult')
        xml.at('OptionGroupsList') do |node|
          children = node.children('OptionGroup')
          data.option_groups_list = Parsers::OptionGroupsList.parse(children)
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    class OptionGroupsList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::OptionGroup.parse(node)
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
          data.orderable_db_instance_options = Parsers::OrderableDBInstanceOptionsList.parse(children)
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
          data << Parsers::OrderableDBInstanceOption.parse(node)
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
        xml.at('AvailabilityZoneGroup') do |node|
          data.availability_zone_group = (node.text || '')
        end
        xml.at('AvailabilityZones') do |node|
          children = node.children('AvailabilityZone')
          data.availability_zones = Parsers::AvailabilityZoneList.parse(children)
        end
        xml.at('MultiAZCapable') do |node|
          data.multi_az_capable = (node.text == 'true')
        end
        xml.at('ReadReplicaCapable') do |node|
          data.read_replica_capable = (node.text == 'true')
        end
        xml.at('Vpc') do |node|
          data.vpc = (node.text == 'true')
        end
        xml.at('SupportsStorageEncryption') do |node|
          data.supports_storage_encryption = (node.text == 'true')
        end
        xml.at('StorageType') do |node|
          data.storage_type = (node.text || '')
        end
        xml.at('SupportsIops') do |node|
          data.supports_iops = (node.text == 'true')
        end
        xml.at('SupportsEnhancedMonitoring') do |node|
          data.supports_enhanced_monitoring = (node.text == 'true')
        end
        xml.at('SupportsIAMDatabaseAuthentication') do |node|
          data.supports_iam_database_authentication = (node.text == 'true')
        end
        xml.at('SupportsPerformanceInsights') do |node|
          data.supports_performance_insights = (node.text == 'true')
        end
        xml.at('MinStorageSize') do |node|
          data.min_storage_size = node.text&.to_i
        end
        xml.at('MaxStorageSize') do |node|
          data.max_storage_size = node.text&.to_i
        end
        xml.at('MinIopsPerDbInstance') do |node|
          data.min_iops_per_db_instance = node.text&.to_i
        end
        xml.at('MaxIopsPerDbInstance') do |node|
          data.max_iops_per_db_instance = node.text&.to_i
        end
        xml.at('MinIopsPerGib') do |node|
          data.min_iops_per_gib = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('MaxIopsPerGib') do |node|
          data.max_iops_per_gib = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('AvailableProcessorFeatures') do |node|
          children = node.children('AvailableProcessorFeature')
          data.available_processor_features = Parsers::AvailableProcessorFeatureList.parse(children)
        end
        xml.at('SupportedEngineModes') do |node|
          children = node.children('member')
          data.supported_engine_modes = Parsers::EngineModeList.parse(children)
        end
        xml.at('SupportsStorageAutoscaling') do |node|
          data.supports_storage_autoscaling = (node.text == 'true')
        end
        xml.at('SupportsKerberosAuthentication') do |node|
          data.supports_kerberos_authentication = (node.text == 'true')
        end
        xml.at('OutpostCapable') do |node|
          data.outpost_capable = (node.text == 'true')
        end
        xml.at('SupportedActivityStreamModes') do |node|
          children = node.children('member')
          data.supported_activity_stream_modes = Parsers::ActivityStreamModeList.parse(children)
        end
        xml.at('SupportsGlobalDatabases') do |node|
          data.supports_global_databases = (node.text == 'true')
        end
        xml.at('SupportsClusters') do |node|
          data.supports_clusters = (node.text == 'true')
        end
        xml.at('SupportedNetworkTypes') do |node|
          children = node.children('member')
          data.supported_network_types = Parsers::StringList.parse(children)
        end
        return data
      end
    end

    class ActivityStreamModeList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class AvailableProcessorFeatureList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::AvailableProcessorFeature.parse(node)
        end
        data
      end
    end

    class AvailableProcessorFeature
      def self.parse(xml)
        data = Types::AvailableProcessorFeature.new
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('DefaultValue') do |node|
          data.default_value = (node.text || '')
        end
        xml.at('AllowedValues') do |node|
          data.allowed_values = (node.text || '')
        end
        return data
      end
    end

    class AvailabilityZoneList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::AvailabilityZone.parse(node)
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
          data.pending_maintenance_actions = Parsers::PendingMaintenanceActions.parse(children)
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
          data << Parsers::ResourcePendingMaintenanceActions.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeReservedDBInstances
    class DescribeReservedDBInstances
      def self.parse(http_resp)
        data = Types::DescribeReservedDBInstancesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeReservedDBInstancesResult')
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('ReservedDBInstances') do |node|
          children = node.children('ReservedDBInstance')
          data.reserved_db_instances = Parsers::ReservedDBInstanceList.parse(children)
        end
        data
      end
    end

    class ReservedDBInstanceList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ReservedDBInstance.parse(node)
        end
        data
      end
    end

    class ReservedDBInstance
      def self.parse(xml)
        data = Types::ReservedDBInstance.new
        xml.at('ReservedDBInstanceId') do |node|
          data.reserved_db_instance_id = (node.text || '')
        end
        xml.at('ReservedDBInstancesOfferingId') do |node|
          data.reserved_db_instances_offering_id = (node.text || '')
        end
        xml.at('DBInstanceClass') do |node|
          data.db_instance_class = (node.text || '')
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
        xml.at('CurrencyCode') do |node|
          data.currency_code = (node.text || '')
        end
        xml.at('DBInstanceCount') do |node|
          data.db_instance_count = node.text&.to_i
        end
        xml.at('ProductDescription') do |node|
          data.product_description = (node.text || '')
        end
        xml.at('OfferingType') do |node|
          data.offering_type = (node.text || '')
        end
        xml.at('MultiAZ') do |node|
          data.multi_az = (node.text == 'true')
        end
        xml.at('State') do |node|
          data.state = (node.text || '')
        end
        xml.at('RecurringCharges') do |node|
          children = node.children('RecurringCharge')
          data.recurring_charges = Parsers::RecurringChargeList.parse(children)
        end
        xml.at('ReservedDBInstanceArn') do |node|
          data.reserved_db_instance_arn = (node.text || '')
        end
        xml.at('LeaseId') do |node|
          data.lease_id = (node.text || '')
        end
        return data
      end
    end

    class RecurringChargeList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::RecurringCharge.parse(node)
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

    # Error Parser for ReservedDBInstanceNotFoundFault
    class ReservedDBInstanceNotFoundFault
      def self.parse(http_resp)
        data = Types::ReservedDBInstanceNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DescribeReservedDBInstancesOfferings
    class DescribeReservedDBInstancesOfferings
      def self.parse(http_resp)
        data = Types::DescribeReservedDBInstancesOfferingsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeReservedDBInstancesOfferingsResult')
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('ReservedDBInstancesOfferings') do |node|
          children = node.children('ReservedDBInstancesOffering')
          data.reserved_db_instances_offerings = Parsers::ReservedDBInstancesOfferingList.parse(children)
        end
        data
      end
    end

    class ReservedDBInstancesOfferingList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ReservedDBInstancesOffering.parse(node)
        end
        data
      end
    end

    class ReservedDBInstancesOffering
      def self.parse(xml)
        data = Types::ReservedDBInstancesOffering.new
        xml.at('ReservedDBInstancesOfferingId') do |node|
          data.reserved_db_instances_offering_id = (node.text || '')
        end
        xml.at('DBInstanceClass') do |node|
          data.db_instance_class = (node.text || '')
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
        xml.at('CurrencyCode') do |node|
          data.currency_code = (node.text || '')
        end
        xml.at('ProductDescription') do |node|
          data.product_description = (node.text || '')
        end
        xml.at('OfferingType') do |node|
          data.offering_type = (node.text || '')
        end
        xml.at('MultiAZ') do |node|
          data.multi_az = (node.text == 'true')
        end
        xml.at('RecurringCharges') do |node|
          children = node.children('RecurringCharge')
          data.recurring_charges = Parsers::RecurringChargeList.parse(children)
        end
        return data
      end
    end

    # Error Parser for ReservedDBInstancesOfferingNotFoundFault
    class ReservedDBInstancesOfferingNotFoundFault
      def self.parse(http_resp)
        data = Types::ReservedDBInstancesOfferingNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DescribeSourceRegions
    class DescribeSourceRegions
      def self.parse(http_resp)
        data = Types::DescribeSourceRegionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeSourceRegionsResult')
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('SourceRegions') do |node|
          children = node.children('SourceRegion')
          data.source_regions = Parsers::SourceRegionList.parse(children)
        end
        data
      end
    end

    class SourceRegionList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::SourceRegion.parse(node)
        end
        data
      end
    end

    class SourceRegion
      def self.parse(xml)
        data = Types::SourceRegion.new
        xml.at('RegionName') do |node|
          data.region_name = (node.text || '')
        end
        xml.at('Endpoint') do |node|
          data.endpoint = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('SupportsDBInstanceAutomatedBackupsReplication') do |node|
          data.supports_db_instance_automated_backups_replication = (node.text == 'true')
        end
        return data
      end
    end

    # Operation Parser for DescribeValidDBInstanceModifications
    class DescribeValidDBInstanceModifications
      def self.parse(http_resp)
        data = Types::DescribeValidDBInstanceModificationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeValidDBInstanceModificationsResult')
        xml.at('ValidDBInstanceModificationsMessage') do |node|
          data.valid_db_instance_modifications_message = Parsers::ValidDBInstanceModificationsMessage.parse(node)
        end
        data
      end
    end

    class ValidDBInstanceModificationsMessage
      def self.parse(xml)
        data = Types::ValidDBInstanceModificationsMessage.new
        xml.at('Storage') do |node|
          children = node.children('ValidStorageOptions')
          data.storage = Parsers::ValidStorageOptionsList.parse(children)
        end
        xml.at('ValidProcessorFeatures') do |node|
          children = node.children('AvailableProcessorFeature')
          data.valid_processor_features = Parsers::AvailableProcessorFeatureList.parse(children)
        end
        return data
      end
    end

    class ValidStorageOptionsList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ValidStorageOptions.parse(node)
        end
        data
      end
    end

    class ValidStorageOptions
      def self.parse(xml)
        data = Types::ValidStorageOptions.new
        xml.at('StorageType') do |node|
          data.storage_type = (node.text || '')
        end
        xml.at('StorageSize') do |node|
          children = node.children('Range')
          data.storage_size = Parsers::RangeList.parse(children)
        end
        xml.at('ProvisionedIops') do |node|
          children = node.children('Range')
          data.provisioned_iops = Parsers::RangeList.parse(children)
        end
        xml.at('IopsToStorageRatio') do |node|
          children = node.children('DoubleRange')
          data.iops_to_storage_ratio = Parsers::DoubleRangeList.parse(children)
        end
        xml.at('SupportsStorageAutoscaling') do |node|
          data.supports_storage_autoscaling = (node.text == 'true')
        end
        return data
      end
    end

    class DoubleRangeList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::DoubleRange.parse(node)
        end
        data
      end
    end

    class DoubleRange
      def self.parse(xml)
        data = Types::DoubleRange.new
        xml.at('From') do |node|
          data.from = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('To') do |node|
          data.to = Hearth::NumberHelper.deserialize(node.text)
        end
        return data
      end
    end

    class RangeList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Range.parse(node)
        end
        data
      end
    end

    class Range
      def self.parse(xml)
        data = Types::Range.new
        xml.at('From') do |node|
          data.from = node.text&.to_i
        end
        xml.at('To') do |node|
          data.to = node.text&.to_i
        end
        xml.at('Step') do |node|
          data.step = node.text&.to_i
        end
        return data
      end
    end

    # Operation Parser for DownloadDBLogFilePortion
    class DownloadDBLogFilePortion
      def self.parse(http_resp)
        data = Types::DownloadDBLogFilePortionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DownloadDBLogFilePortionResult')
        xml.at('LogFileData') do |node|
          data.log_file_data = (node.text || '')
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('AdditionalDataPending') do |node|
          data.additional_data_pending = (node.text == 'true')
        end
        data
      end
    end

    # Error Parser for DBLogFileNotFoundFault
    class DBLogFileNotFoundFault
      def self.parse(http_resp)
        data = Types::DBLogFileNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
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
          data.db_cluster = Parsers::DBCluster.parse(node)
        end
        data
      end
    end

    # Operation Parser for FailoverGlobalCluster
    class FailoverGlobalCluster
      def self.parse(http_resp)
        data = Types::FailoverGlobalClusterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('FailoverGlobalClusterResult')
        xml.at('GlobalCluster') do |node|
          data.global_cluster = Parsers::GlobalCluster.parse(node)
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
          data.tag_list = Parsers::TagList.parse(children)
        end
        data
      end
    end

    # Operation Parser for ModifyCertificates
    class ModifyCertificates
      def self.parse(http_resp)
        data = Types::ModifyCertificatesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ModifyCertificatesResult')
        xml.at('Certificate') do |node|
          data.certificate = Parsers::Certificate.parse(node)
        end
        data
      end
    end

    # Operation Parser for ModifyCurrentDBClusterCapacity
    class ModifyCurrentDBClusterCapacity
      def self.parse(http_resp)
        data = Types::ModifyCurrentDBClusterCapacityOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ModifyCurrentDBClusterCapacityResult')
        xml.at('DBClusterIdentifier') do |node|
          data.db_cluster_identifier = (node.text || '')
        end
        xml.at('PendingCapacity') do |node|
          data.pending_capacity = node.text&.to_i
        end
        xml.at('CurrentCapacity') do |node|
          data.current_capacity = node.text&.to_i
        end
        xml.at('SecondsBeforeTimeout') do |node|
          data.seconds_before_timeout = node.text&.to_i
        end
        xml.at('TimeoutAction') do |node|
          data.timeout_action = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidDBClusterCapacityFault
    class InvalidDBClusterCapacityFault
      def self.parse(http_resp)
        data = Types::InvalidDBClusterCapacityFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ModifyCustomDBEngineVersion
    class ModifyCustomDBEngineVersion
      def self.parse(http_resp)
        data = Types::ModifyCustomDBEngineVersionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ModifyCustomDBEngineVersionResult')
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
        xml.at('DefaultCharacterSet') do |node|
          data.default_character_set = Parsers::CharacterSet.parse(node)
        end
        xml.at('SupportedCharacterSets') do |node|
          children = node.children('CharacterSet')
          data.supported_character_sets = Parsers::SupportedCharacterSetsList.parse(children)
        end
        xml.at('SupportedNcharCharacterSets') do |node|
          children = node.children('CharacterSet')
          data.supported_nchar_character_sets = Parsers::SupportedCharacterSetsList.parse(children)
        end
        xml.at('ValidUpgradeTarget') do |node|
          children = node.children('UpgradeTarget')
          data.valid_upgrade_target = Parsers::ValidUpgradeTargetList.parse(children)
        end
        xml.at('SupportedTimezones') do |node|
          children = node.children('Timezone')
          data.supported_timezones = Parsers::SupportedTimezonesList.parse(children)
        end
        xml.at('ExportableLogTypes') do |node|
          children = node.children('member')
          data.exportable_log_types = Parsers::LogTypeList.parse(children)
        end
        xml.at('SupportsLogExportsToCloudwatchLogs') do |node|
          data.supports_log_exports_to_cloudwatch_logs = (node.text == 'true')
        end
        xml.at('SupportsReadReplica') do |node|
          data.supports_read_replica = (node.text == 'true')
        end
        xml.at('SupportedEngineModes') do |node|
          children = node.children('member')
          data.supported_engine_modes = Parsers::EngineModeList.parse(children)
        end
        xml.at('SupportedFeatureNames') do |node|
          children = node.children('member')
          data.supported_feature_names = Parsers::FeatureNameList.parse(children)
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('SupportsParallelQuery') do |node|
          data.supports_parallel_query = (node.text == 'true')
        end
        xml.at('SupportsGlobalDatabases') do |node|
          data.supports_global_databases = (node.text == 'true')
        end
        xml.at('MajorEngineVersion') do |node|
          data.major_engine_version = (node.text || '')
        end
        xml.at('DatabaseInstallationFilesS3BucketName') do |node|
          data.database_installation_files_s3_bucket_name = (node.text || '')
        end
        xml.at('DatabaseInstallationFilesS3Prefix') do |node|
          data.database_installation_files_s3_prefix = (node.text || '')
        end
        xml.at('DBEngineVersionArn') do |node|
          data.db_engine_version_arn = (node.text || '')
        end
        xml.at('KMSKeyId') do |node|
          data.kms_key_id = (node.text || '')
        end
        xml.at('CreateTime') do |node|
          data.create_time = Time.parse(node.text) if node.text
        end
        xml.at('TagList') do |node|
          children = node.children('Tag')
          data.tag_list = Parsers::TagList.parse(children)
        end
        xml.at('SupportsBabelfish') do |node|
          data.supports_babelfish = (node.text == 'true')
        end
        data
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
          data.db_cluster = Parsers::DBCluster.parse(node)
        end
        data
      end
    end

    # Operation Parser for ModifyDBClusterEndpoint
    class ModifyDBClusterEndpoint
      def self.parse(http_resp)
        data = Types::ModifyDBClusterEndpointOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ModifyDBClusterEndpointResult')
        xml.at('DBClusterEndpointIdentifier') do |node|
          data.db_cluster_endpoint_identifier = (node.text || '')
        end
        xml.at('DBClusterIdentifier') do |node|
          data.db_cluster_identifier = (node.text || '')
        end
        xml.at('DBClusterEndpointResourceIdentifier') do |node|
          data.db_cluster_endpoint_resource_identifier = (node.text || '')
        end
        xml.at('Endpoint') do |node|
          data.endpoint = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('EndpointType') do |node|
          data.endpoint_type = (node.text || '')
        end
        xml.at('CustomEndpointType') do |node|
          data.custom_endpoint_type = (node.text || '')
        end
        xml.at('StaticMembers') do |node|
          children = node.children('member')
          data.static_members = Parsers::StringList.parse(children)
        end
        xml.at('ExcludedMembers') do |node|
          children = node.children('member')
          data.excluded_members = Parsers::StringList.parse(children)
        end
        xml.at('DBClusterEndpointArn') do |node|
          data.db_cluster_endpoint_arn = (node.text || '')
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
          data.db_cluster_snapshot_attributes_result = Parsers::DBClusterSnapshotAttributesResult.parse(node)
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
          data.db_instance = Parsers::DBInstance.parse(node)
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

    # Operation Parser for ModifyDBParameterGroup
    class ModifyDBParameterGroup
      def self.parse(http_resp)
        data = Types::ModifyDBParameterGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ModifyDBParameterGroupResult')
        xml.at('DBParameterGroupName') do |node|
          data.db_parameter_group_name = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ModifyDBProxy
    class ModifyDBProxy
      def self.parse(http_resp)
        data = Types::ModifyDBProxyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ModifyDBProxyResult')
        xml.at('DBProxy') do |node|
          data.db_proxy = Parsers::DBProxy.parse(node)
        end
        data
      end
    end

    # Operation Parser for ModifyDBProxyEndpoint
    class ModifyDBProxyEndpoint
      def self.parse(http_resp)
        data = Types::ModifyDBProxyEndpointOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ModifyDBProxyEndpointResult')
        xml.at('DBProxyEndpoint') do |node|
          data.db_proxy_endpoint = Parsers::DBProxyEndpoint.parse(node)
        end
        data
      end
    end

    # Operation Parser for ModifyDBProxyTargetGroup
    class ModifyDBProxyTargetGroup
      def self.parse(http_resp)
        data = Types::ModifyDBProxyTargetGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ModifyDBProxyTargetGroupResult')
        xml.at('DBProxyTargetGroup') do |node|
          data.db_proxy_target_group = Parsers::DBProxyTargetGroup.parse(node)
        end
        data
      end
    end

    # Operation Parser for ModifyDBSnapshot
    class ModifyDBSnapshot
      def self.parse(http_resp)
        data = Types::ModifyDBSnapshotOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ModifyDBSnapshotResult')
        xml.at('DBSnapshot') do |node|
          data.db_snapshot = Parsers::DBSnapshot.parse(node)
        end
        data
      end
    end

    # Operation Parser for ModifyDBSnapshotAttribute
    class ModifyDBSnapshotAttribute
      def self.parse(http_resp)
        data = Types::ModifyDBSnapshotAttributeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ModifyDBSnapshotAttributeResult')
        xml.at('DBSnapshotAttributesResult') do |node|
          data.db_snapshot_attributes_result = Parsers::DBSnapshotAttributesResult.parse(node)
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
          data.db_subnet_group = Parsers::DBSubnetGroup.parse(node)
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
          data.event_subscription = Parsers::EventSubscription.parse(node)
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
          data.global_cluster = Parsers::GlobalCluster.parse(node)
        end
        data
      end
    end

    # Operation Parser for ModifyOptionGroup
    class ModifyOptionGroup
      def self.parse(http_resp)
        data = Types::ModifyOptionGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ModifyOptionGroupResult')
        xml.at('OptionGroup') do |node|
          data.option_group = Parsers::OptionGroup.parse(node)
        end
        data
      end
    end

    # Operation Parser for PromoteReadReplica
    class PromoteReadReplica
      def self.parse(http_resp)
        data = Types::PromoteReadReplicaOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('PromoteReadReplicaResult')
        xml.at('DBInstance') do |node|
          data.db_instance = Parsers::DBInstance.parse(node)
        end
        data
      end
    end

    # Operation Parser for PromoteReadReplicaDBCluster
    class PromoteReadReplicaDBCluster
      def self.parse(http_resp)
        data = Types::PromoteReadReplicaDBClusterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('PromoteReadReplicaDBClusterResult')
        xml.at('DBCluster') do |node|
          data.db_cluster = Parsers::DBCluster.parse(node)
        end
        data
      end
    end

    # Operation Parser for PurchaseReservedDBInstancesOffering
    class PurchaseReservedDBInstancesOffering
      def self.parse(http_resp)
        data = Types::PurchaseReservedDBInstancesOfferingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('PurchaseReservedDBInstancesOfferingResult')
        xml.at('ReservedDBInstance') do |node|
          data.reserved_db_instance = Parsers::ReservedDBInstance.parse(node)
        end
        data
      end
    end

    # Error Parser for ReservedDBInstanceAlreadyExistsFault
    class ReservedDBInstanceAlreadyExistsFault
      def self.parse(http_resp)
        data = Types::ReservedDBInstanceAlreadyExistsFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for ReservedDBInstanceQuotaExceededFault
    class ReservedDBInstanceQuotaExceededFault
      def self.parse(http_resp)
        data = Types::ReservedDBInstanceQuotaExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for RebootDBCluster
    class RebootDBCluster
      def self.parse(http_resp)
        data = Types::RebootDBClusterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('RebootDBClusterResult')
        xml.at('DBCluster') do |node|
          data.db_cluster = Parsers::DBCluster.parse(node)
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
          data.db_instance = Parsers::DBInstance.parse(node)
        end
        data
      end
    end

    # Operation Parser for RegisterDBProxyTargets
    class RegisterDBProxyTargets
      def self.parse(http_resp)
        data = Types::RegisterDBProxyTargetsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('RegisterDBProxyTargetsResult')
        xml.at('DBProxyTargets') do |node|
          children = node.children('member')
          data.db_proxy_targets = Parsers::TargetList.parse(children)
        end
        data
      end
    end

    # Error Parser for InsufficientAvailableIPsInSubnetFault
    class InsufficientAvailableIPsInSubnetFault
      def self.parse(http_resp)
        data = Types::InsufficientAvailableIPsInSubnetFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for DBProxyTargetAlreadyRegisteredFault
    class DBProxyTargetAlreadyRegisteredFault
      def self.parse(http_resp)
        data = Types::DBProxyTargetAlreadyRegisteredFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
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
          data.global_cluster = Parsers::GlobalCluster.parse(node)
        end
        data
      end
    end

    # Operation Parser for RemoveRoleFromDBCluster
    class RemoveRoleFromDBCluster
      def self.parse(http_resp)
        data = Types::RemoveRoleFromDBClusterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('RemoveRoleFromDBClusterResult')
        data
      end
    end

    # Error Parser for DBClusterRoleNotFoundFault
    class DBClusterRoleNotFoundFault
      def self.parse(http_resp)
        data = Types::DBClusterRoleNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for RemoveRoleFromDBInstance
    class RemoveRoleFromDBInstance
      def self.parse(http_resp)
        data = Types::RemoveRoleFromDBInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('RemoveRoleFromDBInstanceResult')
        data
      end
    end

    # Error Parser for DBInstanceRoleNotFoundFault
    class DBInstanceRoleNotFoundFault
      def self.parse(http_resp)
        data = Types::DBInstanceRoleNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
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
          data.event_subscription = Parsers::EventSubscription.parse(node)
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

    # Operation Parser for ResetDBParameterGroup
    class ResetDBParameterGroup
      def self.parse(http_resp)
        data = Types::ResetDBParameterGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ResetDBParameterGroupResult')
        xml.at('DBParameterGroupName') do |node|
          data.db_parameter_group_name = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for RestoreDBClusterFromS3
    class RestoreDBClusterFromS3
      def self.parse(http_resp)
        data = Types::RestoreDBClusterFromS3Output.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('RestoreDBClusterFromS3Result')
        xml.at('DBCluster') do |node|
          data.db_cluster = Parsers::DBCluster.parse(node)
        end
        data
      end
    end

    # Error Parser for InvalidS3BucketFault
    class InvalidS3BucketFault
      def self.parse(http_resp)
        data = Types::InvalidS3BucketFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
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
          data.db_cluster = Parsers::DBCluster.parse(node)
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
          data.db_cluster = Parsers::DBCluster.parse(node)
        end
        data
      end
    end

    # Operation Parser for RestoreDBInstanceFromDBSnapshot
    class RestoreDBInstanceFromDBSnapshot
      def self.parse(http_resp)
        data = Types::RestoreDBInstanceFromDBSnapshotOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('RestoreDBInstanceFromDBSnapshotResult')
        xml.at('DBInstance') do |node|
          data.db_instance = Parsers::DBInstance.parse(node)
        end
        data
      end
    end

    # Operation Parser for RestoreDBInstanceFromS3
    class RestoreDBInstanceFromS3
      def self.parse(http_resp)
        data = Types::RestoreDBInstanceFromS3Output.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('RestoreDBInstanceFromS3Result')
        xml.at('DBInstance') do |node|
          data.db_instance = Parsers::DBInstance.parse(node)
        end
        data
      end
    end

    # Operation Parser for RestoreDBInstanceToPointInTime
    class RestoreDBInstanceToPointInTime
      def self.parse(http_resp)
        data = Types::RestoreDBInstanceToPointInTimeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('RestoreDBInstanceToPointInTimeResult')
        xml.at('DBInstance') do |node|
          data.db_instance = Parsers::DBInstance.parse(node)
        end
        data
      end
    end

    # Error Parser for PointInTimeRestoreNotEnabledFault
    class PointInTimeRestoreNotEnabledFault
      def self.parse(http_resp)
        data = Types::PointInTimeRestoreNotEnabledFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for RevokeDBSecurityGroupIngress
    class RevokeDBSecurityGroupIngress
      def self.parse(http_resp)
        data = Types::RevokeDBSecurityGroupIngressOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('RevokeDBSecurityGroupIngressResult')
        xml.at('DBSecurityGroup') do |node|
          data.db_security_group = Parsers::DBSecurityGroup.parse(node)
        end
        data
      end
    end

    # Operation Parser for StartActivityStream
    class StartActivityStream
      def self.parse(http_resp)
        data = Types::StartActivityStreamOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('StartActivityStreamResult')
        xml.at('KmsKeyId') do |node|
          data.kms_key_id = (node.text || '')
        end
        xml.at('KinesisStreamName') do |node|
          data.kinesis_stream_name = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('Mode') do |node|
          data.mode = (node.text || '')
        end
        xml.at('ApplyImmediately') do |node|
          data.apply_immediately = (node.text == 'true')
        end
        xml.at('EngineNativeAuditFieldsIncluded') do |node|
          data.engine_native_audit_fields_included = (node.text == 'true')
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
          data.db_cluster = Parsers::DBCluster.parse(node)
        end
        data
      end
    end

    # Operation Parser for StartDBInstance
    class StartDBInstance
      def self.parse(http_resp)
        data = Types::StartDBInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('StartDBInstanceResult')
        xml.at('DBInstance') do |node|
          data.db_instance = Parsers::DBInstance.parse(node)
        end
        data
      end
    end

    # Operation Parser for StartDBInstanceAutomatedBackupsReplication
    class StartDBInstanceAutomatedBackupsReplication
      def self.parse(http_resp)
        data = Types::StartDBInstanceAutomatedBackupsReplicationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('StartDBInstanceAutomatedBackupsReplicationResult')
        xml.at('DBInstanceAutomatedBackup') do |node|
          data.db_instance_automated_backup = Parsers::DBInstanceAutomatedBackup.parse(node)
        end
        data
      end
    end

    # Operation Parser for StartExportTask
    class StartExportTask
      def self.parse(http_resp)
        data = Types::StartExportTaskOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('StartExportTaskResult')
        xml.at('ExportTaskIdentifier') do |node|
          data.export_task_identifier = (node.text || '')
        end
        xml.at('SourceArn') do |node|
          data.source_arn = (node.text || '')
        end
        xml.at('ExportOnly') do |node|
          children = node.children('member')
          data.export_only = Parsers::StringList.parse(children)
        end
        xml.at('SnapshotTime') do |node|
          data.snapshot_time = Time.parse(node.text) if node.text
        end
        xml.at('TaskStartTime') do |node|
          data.task_start_time = Time.parse(node.text) if node.text
        end
        xml.at('TaskEndTime') do |node|
          data.task_end_time = Time.parse(node.text) if node.text
        end
        xml.at('S3Bucket') do |node|
          data.s3_bucket = (node.text || '')
        end
        xml.at('S3Prefix') do |node|
          data.s3_prefix = (node.text || '')
        end
        xml.at('IamRoleArn') do |node|
          data.iam_role_arn = (node.text || '')
        end
        xml.at('KmsKeyId') do |node|
          data.kms_key_id = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('PercentProgress') do |node|
          data.percent_progress = node.text&.to_i
        end
        xml.at('TotalExtractedDataInGB') do |node|
          data.total_extracted_data_in_gb = node.text&.to_i
        end
        xml.at('FailureCause') do |node|
          data.failure_cause = (node.text || '')
        end
        xml.at('WarningMessage') do |node|
          data.warning_message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidExportSourceStateFault
    class InvalidExportSourceStateFault
      def self.parse(http_resp)
        data = Types::InvalidExportSourceStateFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for IamRoleNotFoundFault
    class IamRoleNotFoundFault
      def self.parse(http_resp)
        data = Types::IamRoleNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for ExportTaskAlreadyExistsFault
    class ExportTaskAlreadyExistsFault
      def self.parse(http_resp)
        data = Types::ExportTaskAlreadyExistsFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for IamRoleMissingPermissionsFault
    class IamRoleMissingPermissionsFault
      def self.parse(http_resp)
        data = Types::IamRoleMissingPermissionsFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidExportOnlyFault
    class InvalidExportOnlyFault
      def self.parse(http_resp)
        data = Types::InvalidExportOnlyFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for StopActivityStream
    class StopActivityStream
      def self.parse(http_resp)
        data = Types::StopActivityStreamOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('StopActivityStreamResult')
        xml.at('KmsKeyId') do |node|
          data.kms_key_id = (node.text || '')
        end
        xml.at('KinesisStreamName') do |node|
          data.kinesis_stream_name = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
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
          data.db_cluster = Parsers::DBCluster.parse(node)
        end
        data
      end
    end

    # Operation Parser for StopDBInstance
    class StopDBInstance
      def self.parse(http_resp)
        data = Types::StopDBInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('StopDBInstanceResult')
        xml.at('DBInstance') do |node|
          data.db_instance = Parsers::DBInstance.parse(node)
        end
        data
      end
    end

    # Operation Parser for StopDBInstanceAutomatedBackupsReplication
    class StopDBInstanceAutomatedBackupsReplication
      def self.parse(http_resp)
        data = Types::StopDBInstanceAutomatedBackupsReplicationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('StopDBInstanceAutomatedBackupsReplicationResult')
        xml.at('DBInstanceAutomatedBackup') do |node|
          data.db_instance_automated_backup = Parsers::DBInstanceAutomatedBackup.parse(node)
        end
        data
      end
    end
  end
end
