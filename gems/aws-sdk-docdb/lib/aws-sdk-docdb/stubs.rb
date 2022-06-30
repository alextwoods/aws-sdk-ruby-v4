# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::DocDB
  module Stubs

    # Operation Stubber for AddSourceIdentifierToSubscription
    class AddSourceIdentifierToSubscription
      def self.default(visited=[])
        {
          event_subscription: Stubs::EventSubscription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('AddSourceIdentifierToSubscriptionResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('AddSourceIdentifierToSubscriptionResult')
        xml << Stubs::EventSubscription.stub('EventSubscription', stub[:event_subscription]) unless stub[:event_subscription].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for EventSubscription
    class EventSubscription
      def self.default(visited=[])
        return nil if visited.include?('EventSubscription')
        visited = visited + ['EventSubscription']
        {
          customer_aws_id: 'customer_aws_id',
          cust_subscription_id: 'cust_subscription_id',
          sns_topic_arn: 'sns_topic_arn',
          status: 'status',
          subscription_creation_time: 'subscription_creation_time',
          source_type: 'source_type',
          source_ids_list: Stubs::SourceIdsList.default(visited),
          event_categories_list: Stubs::EventCategoriesList.default(visited),
          enabled: false,
          event_subscription_arn: 'event_subscription_arn',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::EventSubscription.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('CustomerAwsId', stub[:customer_aws_id].to_s) unless stub[:customer_aws_id].nil?
        xml << Hearth::XML::Node.new('CustSubscriptionId', stub[:cust_subscription_id].to_s) unless stub[:cust_subscription_id].nil?
        xml << Hearth::XML::Node.new('SnsTopicArn', stub[:sns_topic_arn].to_s) unless stub[:sns_topic_arn].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('SubscriptionCreationTime', stub[:subscription_creation_time].to_s) unless stub[:subscription_creation_time].nil?
        xml << Hearth::XML::Node.new('SourceType', stub[:source_type].to_s) unless stub[:source_type].nil?
        xml << Hearth::XML::Node.new('SourceIdsList', Stubs::SourceIdsList.stub('SourceId', stub[:source_ids_list])) unless stub[:source_ids_list].nil?
        xml << Hearth::XML::Node.new('EventCategoriesList', Stubs::EventCategoriesList.stub('EventCategory', stub[:event_categories_list])) unless stub[:event_categories_list].nil?
        xml << Hearth::XML::Node.new('Enabled', stub[:enabled].to_s) unless stub[:enabled].nil?
        xml << Hearth::XML::Node.new('EventSubscriptionArn', stub[:event_subscription_arn].to_s) unless stub[:event_subscription_arn].nil?
        xml
      end
    end

    # List Stubber for EventCategoriesList
    class EventCategoriesList
      def self.default(visited=[])
        return nil if visited.include?('EventCategoriesList')
        visited = visited + ['EventCategoriesList']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # List Stubber for SourceIdsList
    class SourceIdsList
      def self.default(visited=[])
        return nil if visited.include?('SourceIdsList')
        visited = visited + ['SourceIdsList']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for AddTagsToResource
    class AddTagsToResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('AddTagsToResourceResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('AddTagsToResourceResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ApplyPendingMaintenanceAction
    class ApplyPendingMaintenanceAction
      def self.default(visited=[])
        {
          resource_pending_maintenance_actions: Stubs::ResourcePendingMaintenanceActions.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ApplyPendingMaintenanceActionResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('ApplyPendingMaintenanceActionResult')
        xml << Stubs::ResourcePendingMaintenanceActions.stub('ResourcePendingMaintenanceActions', stub[:resource_pending_maintenance_actions]) unless stub[:resource_pending_maintenance_actions].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for ResourcePendingMaintenanceActions
    class ResourcePendingMaintenanceActions
      def self.default(visited=[])
        return nil if visited.include?('ResourcePendingMaintenanceActions')
        visited = visited + ['ResourcePendingMaintenanceActions']
        {
          resource_identifier: 'resource_identifier',
          pending_maintenance_action_details: Stubs::PendingMaintenanceActionDetails.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ResourcePendingMaintenanceActions.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ResourceIdentifier', stub[:resource_identifier].to_s) unless stub[:resource_identifier].nil?
        xml << Hearth::XML::Node.new('PendingMaintenanceActionDetails', Stubs::PendingMaintenanceActionDetails.stub('PendingMaintenanceAction', stub[:pending_maintenance_action_details])) unless stub[:pending_maintenance_action_details].nil?
        xml
      end
    end

    # List Stubber for PendingMaintenanceActionDetails
    class PendingMaintenanceActionDetails
      def self.default(visited=[])
        return nil if visited.include?('PendingMaintenanceActionDetails')
        visited = visited + ['PendingMaintenanceActionDetails']
        [
          Stubs::PendingMaintenanceAction.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::PendingMaintenanceAction.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for PendingMaintenanceAction
    class PendingMaintenanceAction
      def self.default(visited=[])
        return nil if visited.include?('PendingMaintenanceAction')
        visited = visited + ['PendingMaintenanceAction']
        {
          action: 'action',
          auto_applied_after_date: Time.now,
          forced_apply_date: Time.now,
          opt_in_status: 'opt_in_status',
          current_apply_date: Time.now,
          description: 'description',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::PendingMaintenanceAction.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Action', stub[:action].to_s) unless stub[:action].nil?
        xml << Hearth::XML::Node.new('AutoAppliedAfterDate', Hearth::TimeHelper.to_date_time(stub[:auto_applied_after_date])) unless stub[:auto_applied_after_date].nil?
        xml << Hearth::XML::Node.new('ForcedApplyDate', Hearth::TimeHelper.to_date_time(stub[:forced_apply_date])) unless stub[:forced_apply_date].nil?
        xml << Hearth::XML::Node.new('OptInStatus', stub[:opt_in_status].to_s) unless stub[:opt_in_status].nil?
        xml << Hearth::XML::Node.new('CurrentApplyDate', Hearth::TimeHelper.to_date_time(stub[:current_apply_date])) unless stub[:current_apply_date].nil?
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        xml
      end
    end

    # Operation Stubber for CopyDBClusterParameterGroup
    class CopyDBClusterParameterGroup
      def self.default(visited=[])
        {
          db_cluster_parameter_group: Stubs::DBClusterParameterGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CopyDBClusterParameterGroupResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('CopyDBClusterParameterGroupResult')
        xml << Stubs::DBClusterParameterGroup.stub('DBClusterParameterGroup', stub[:db_cluster_parameter_group]) unless stub[:db_cluster_parameter_group].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for DBClusterParameterGroup
    class DBClusterParameterGroup
      def self.default(visited=[])
        return nil if visited.include?('DBClusterParameterGroup')
        visited = visited + ['DBClusterParameterGroup']
        {
          db_cluster_parameter_group_name: 'db_cluster_parameter_group_name',
          db_parameter_group_family: 'db_parameter_group_family',
          description: 'description',
          db_cluster_parameter_group_arn: 'db_cluster_parameter_group_arn',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DBClusterParameterGroup.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('DBClusterParameterGroupName', stub[:db_cluster_parameter_group_name].to_s) unless stub[:db_cluster_parameter_group_name].nil?
        xml << Hearth::XML::Node.new('DBParameterGroupFamily', stub[:db_parameter_group_family].to_s) unless stub[:db_parameter_group_family].nil?
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        xml << Hearth::XML::Node.new('DBClusterParameterGroupArn', stub[:db_cluster_parameter_group_arn].to_s) unless stub[:db_cluster_parameter_group_arn].nil?
        xml
      end
    end

    # Operation Stubber for CopyDBClusterSnapshot
    class CopyDBClusterSnapshot
      def self.default(visited=[])
        {
          db_cluster_snapshot: Stubs::DBClusterSnapshot.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CopyDBClusterSnapshotResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('CopyDBClusterSnapshotResult')
        xml << Stubs::DBClusterSnapshot.stub('DBClusterSnapshot', stub[:db_cluster_snapshot]) unless stub[:db_cluster_snapshot].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for DBClusterSnapshot
    class DBClusterSnapshot
      def self.default(visited=[])
        return nil if visited.include?('DBClusterSnapshot')
        visited = visited + ['DBClusterSnapshot']
        {
          availability_zones: Stubs::AvailabilityZones.default(visited),
          db_cluster_snapshot_identifier: 'db_cluster_snapshot_identifier',
          db_cluster_identifier: 'db_cluster_identifier',
          snapshot_create_time: Time.now,
          engine: 'engine',
          status: 'status',
          port: 1,
          vpc_id: 'vpc_id',
          cluster_create_time: Time.now,
          master_username: 'master_username',
          engine_version: 'engine_version',
          snapshot_type: 'snapshot_type',
          percent_progress: 1,
          storage_encrypted: false,
          kms_key_id: 'kms_key_id',
          db_cluster_snapshot_arn: 'db_cluster_snapshot_arn',
          source_db_cluster_snapshot_arn: 'source_db_cluster_snapshot_arn',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DBClusterSnapshot.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('AvailabilityZones', Stubs::AvailabilityZones.stub('AvailabilityZone', stub[:availability_zones])) unless stub[:availability_zones].nil?
        xml << Hearth::XML::Node.new('DBClusterSnapshotIdentifier', stub[:db_cluster_snapshot_identifier].to_s) unless stub[:db_cluster_snapshot_identifier].nil?
        xml << Hearth::XML::Node.new('DBClusterIdentifier', stub[:db_cluster_identifier].to_s) unless stub[:db_cluster_identifier].nil?
        xml << Hearth::XML::Node.new('SnapshotCreateTime', Hearth::TimeHelper.to_date_time(stub[:snapshot_create_time])) unless stub[:snapshot_create_time].nil?
        xml << Hearth::XML::Node.new('Engine', stub[:engine].to_s) unless stub[:engine].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('Port', stub[:port].to_s) unless stub[:port].nil?
        xml << Hearth::XML::Node.new('VpcId', stub[:vpc_id].to_s) unless stub[:vpc_id].nil?
        xml << Hearth::XML::Node.new('ClusterCreateTime', Hearth::TimeHelper.to_date_time(stub[:cluster_create_time])) unless stub[:cluster_create_time].nil?
        xml << Hearth::XML::Node.new('MasterUsername', stub[:master_username].to_s) unless stub[:master_username].nil?
        xml << Hearth::XML::Node.new('EngineVersion', stub[:engine_version].to_s) unless stub[:engine_version].nil?
        xml << Hearth::XML::Node.new('SnapshotType', stub[:snapshot_type].to_s) unless stub[:snapshot_type].nil?
        xml << Hearth::XML::Node.new('PercentProgress', stub[:percent_progress].to_s) unless stub[:percent_progress].nil?
        xml << Hearth::XML::Node.new('StorageEncrypted', stub[:storage_encrypted].to_s) unless stub[:storage_encrypted].nil?
        xml << Hearth::XML::Node.new('KmsKeyId', stub[:kms_key_id].to_s) unless stub[:kms_key_id].nil?
        xml << Hearth::XML::Node.new('DBClusterSnapshotArn', stub[:db_cluster_snapshot_arn].to_s) unless stub[:db_cluster_snapshot_arn].nil?
        xml << Hearth::XML::Node.new('SourceDBClusterSnapshotArn', stub[:source_db_cluster_snapshot_arn].to_s) unless stub[:source_db_cluster_snapshot_arn].nil?
        xml
      end
    end

    # List Stubber for AvailabilityZones
    class AvailabilityZones
      def self.default(visited=[])
        return nil if visited.include?('AvailabilityZones')
        visited = visited + ['AvailabilityZones']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for CreateDBCluster
    class CreateDBCluster
      def self.default(visited=[])
        {
          db_cluster: Stubs::DBCluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateDBClusterResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('CreateDBClusterResult')
        xml << Stubs::DBCluster.stub('DBCluster', stub[:db_cluster]) unless stub[:db_cluster].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for DBCluster
    class DBCluster
      def self.default(visited=[])
        return nil if visited.include?('DBCluster')
        visited = visited + ['DBCluster']
        {
          availability_zones: Stubs::AvailabilityZones.default(visited),
          backup_retention_period: 1,
          db_cluster_identifier: 'db_cluster_identifier',
          db_cluster_parameter_group: 'db_cluster_parameter_group',
          db_subnet_group: 'db_subnet_group',
          status: 'status',
          percent_progress: 'percent_progress',
          earliest_restorable_time: Time.now,
          endpoint: 'endpoint',
          reader_endpoint: 'reader_endpoint',
          multi_az: false,
          engine: 'engine',
          engine_version: 'engine_version',
          latest_restorable_time: Time.now,
          port: 1,
          master_username: 'master_username',
          preferred_backup_window: 'preferred_backup_window',
          preferred_maintenance_window: 'preferred_maintenance_window',
          replication_source_identifier: 'replication_source_identifier',
          read_replica_identifiers: Stubs::ReadReplicaIdentifierList.default(visited),
          db_cluster_members: Stubs::DBClusterMemberList.default(visited),
          vpc_security_groups: Stubs::VpcSecurityGroupMembershipList.default(visited),
          hosted_zone_id: 'hosted_zone_id',
          storage_encrypted: false,
          kms_key_id: 'kms_key_id',
          db_cluster_resource_id: 'db_cluster_resource_id',
          db_cluster_arn: 'db_cluster_arn',
          associated_roles: Stubs::DBClusterRoles.default(visited),
          cluster_create_time: Time.now,
          enabled_cloudwatch_logs_exports: Stubs::LogTypeList.default(visited),
          deletion_protection: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DBCluster.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('AvailabilityZones', Stubs::AvailabilityZones.stub('AvailabilityZone', stub[:availability_zones])) unless stub[:availability_zones].nil?
        xml << Hearth::XML::Node.new('BackupRetentionPeriod', stub[:backup_retention_period].to_s) unless stub[:backup_retention_period].nil?
        xml << Hearth::XML::Node.new('DBClusterIdentifier', stub[:db_cluster_identifier].to_s) unless stub[:db_cluster_identifier].nil?
        xml << Hearth::XML::Node.new('DBClusterParameterGroup', stub[:db_cluster_parameter_group].to_s) unless stub[:db_cluster_parameter_group].nil?
        xml << Hearth::XML::Node.new('DBSubnetGroup', stub[:db_subnet_group].to_s) unless stub[:db_subnet_group].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('PercentProgress', stub[:percent_progress].to_s) unless stub[:percent_progress].nil?
        xml << Hearth::XML::Node.new('EarliestRestorableTime', Hearth::TimeHelper.to_date_time(stub[:earliest_restorable_time])) unless stub[:earliest_restorable_time].nil?
        xml << Hearth::XML::Node.new('Endpoint', stub[:endpoint].to_s) unless stub[:endpoint].nil?
        xml << Hearth::XML::Node.new('ReaderEndpoint', stub[:reader_endpoint].to_s) unless stub[:reader_endpoint].nil?
        xml << Hearth::XML::Node.new('MultiAZ', stub[:multi_az].to_s) unless stub[:multi_az].nil?
        xml << Hearth::XML::Node.new('Engine', stub[:engine].to_s) unless stub[:engine].nil?
        xml << Hearth::XML::Node.new('EngineVersion', stub[:engine_version].to_s) unless stub[:engine_version].nil?
        xml << Hearth::XML::Node.new('LatestRestorableTime', Hearth::TimeHelper.to_date_time(stub[:latest_restorable_time])) unless stub[:latest_restorable_time].nil?
        xml << Hearth::XML::Node.new('Port', stub[:port].to_s) unless stub[:port].nil?
        xml << Hearth::XML::Node.new('MasterUsername', stub[:master_username].to_s) unless stub[:master_username].nil?
        xml << Hearth::XML::Node.new('PreferredBackupWindow', stub[:preferred_backup_window].to_s) unless stub[:preferred_backup_window].nil?
        xml << Hearth::XML::Node.new('PreferredMaintenanceWindow', stub[:preferred_maintenance_window].to_s) unless stub[:preferred_maintenance_window].nil?
        xml << Hearth::XML::Node.new('ReplicationSourceIdentifier', stub[:replication_source_identifier].to_s) unless stub[:replication_source_identifier].nil?
        xml << Hearth::XML::Node.new('ReadReplicaIdentifiers', Stubs::ReadReplicaIdentifierList.stub('ReadReplicaIdentifier', stub[:read_replica_identifiers])) unless stub[:read_replica_identifiers].nil?
        xml << Hearth::XML::Node.new('DBClusterMembers', Stubs::DBClusterMemberList.stub('DBClusterMember', stub[:db_cluster_members])) unless stub[:db_cluster_members].nil?
        xml << Hearth::XML::Node.new('VpcSecurityGroups', Stubs::VpcSecurityGroupMembershipList.stub('VpcSecurityGroupMembership', stub[:vpc_security_groups])) unless stub[:vpc_security_groups].nil?
        xml << Hearth::XML::Node.new('HostedZoneId', stub[:hosted_zone_id].to_s) unless stub[:hosted_zone_id].nil?
        xml << Hearth::XML::Node.new('StorageEncrypted', stub[:storage_encrypted].to_s) unless stub[:storage_encrypted].nil?
        xml << Hearth::XML::Node.new('KmsKeyId', stub[:kms_key_id].to_s) unless stub[:kms_key_id].nil?
        xml << Hearth::XML::Node.new('DbClusterResourceId', stub[:db_cluster_resource_id].to_s) unless stub[:db_cluster_resource_id].nil?
        xml << Hearth::XML::Node.new('DBClusterArn', stub[:db_cluster_arn].to_s) unless stub[:db_cluster_arn].nil?
        xml << Hearth::XML::Node.new('AssociatedRoles', Stubs::DBClusterRoles.stub('DBClusterRole', stub[:associated_roles])) unless stub[:associated_roles].nil?
        xml << Hearth::XML::Node.new('ClusterCreateTime', Hearth::TimeHelper.to_date_time(stub[:cluster_create_time])) unless stub[:cluster_create_time].nil?
        xml << Hearth::XML::Node.new('EnabledCloudwatchLogsExports', Stubs::LogTypeList.stub('member', stub[:enabled_cloudwatch_logs_exports])) unless stub[:enabled_cloudwatch_logs_exports].nil?
        xml << Hearth::XML::Node.new('DeletionProtection', stub[:deletion_protection].to_s) unless stub[:deletion_protection].nil?
        xml
      end
    end

    # List Stubber for LogTypeList
    class LogTypeList
      def self.default(visited=[])
        return nil if visited.include?('LogTypeList')
        visited = visited + ['LogTypeList']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # List Stubber for DBClusterRoles
    class DBClusterRoles
      def self.default(visited=[])
        return nil if visited.include?('DBClusterRoles')
        visited = visited + ['DBClusterRoles']
        [
          Stubs::DBClusterRole.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::DBClusterRole.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for DBClusterRole
    class DBClusterRole
      def self.default(visited=[])
        return nil if visited.include?('DBClusterRole')
        visited = visited + ['DBClusterRole']
        {
          role_arn: 'role_arn',
          status: 'status',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DBClusterRole.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('RoleArn', stub[:role_arn].to_s) unless stub[:role_arn].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml
      end
    end

    # List Stubber for VpcSecurityGroupMembershipList
    class VpcSecurityGroupMembershipList
      def self.default(visited=[])
        return nil if visited.include?('VpcSecurityGroupMembershipList')
        visited = visited + ['VpcSecurityGroupMembershipList']
        [
          Stubs::VpcSecurityGroupMembership.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::VpcSecurityGroupMembership.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for VpcSecurityGroupMembership
    class VpcSecurityGroupMembership
      def self.default(visited=[])
        return nil if visited.include?('VpcSecurityGroupMembership')
        visited = visited + ['VpcSecurityGroupMembership']
        {
          vpc_security_group_id: 'vpc_security_group_id',
          status: 'status',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::VpcSecurityGroupMembership.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('VpcSecurityGroupId', stub[:vpc_security_group_id].to_s) unless stub[:vpc_security_group_id].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml
      end
    end

    # List Stubber for DBClusterMemberList
    class DBClusterMemberList
      def self.default(visited=[])
        return nil if visited.include?('DBClusterMemberList')
        visited = visited + ['DBClusterMemberList']
        [
          Stubs::DBClusterMember.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::DBClusterMember.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for DBClusterMember
    class DBClusterMember
      def self.default(visited=[])
        return nil if visited.include?('DBClusterMember')
        visited = visited + ['DBClusterMember']
        {
          db_instance_identifier: 'db_instance_identifier',
          is_cluster_writer: false,
          db_cluster_parameter_group_status: 'db_cluster_parameter_group_status',
          promotion_tier: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DBClusterMember.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('DBInstanceIdentifier', stub[:db_instance_identifier].to_s) unless stub[:db_instance_identifier].nil?
        xml << Hearth::XML::Node.new('IsClusterWriter', stub[:is_cluster_writer].to_s) unless stub[:is_cluster_writer].nil?
        xml << Hearth::XML::Node.new('DBClusterParameterGroupStatus', stub[:db_cluster_parameter_group_status].to_s) unless stub[:db_cluster_parameter_group_status].nil?
        xml << Hearth::XML::Node.new('PromotionTier', stub[:promotion_tier].to_s) unless stub[:promotion_tier].nil?
        xml
      end
    end

    # List Stubber for ReadReplicaIdentifierList
    class ReadReplicaIdentifierList
      def self.default(visited=[])
        return nil if visited.include?('ReadReplicaIdentifierList')
        visited = visited + ['ReadReplicaIdentifierList']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for CreateDBClusterParameterGroup
    class CreateDBClusterParameterGroup
      def self.default(visited=[])
        {
          db_cluster_parameter_group: Stubs::DBClusterParameterGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateDBClusterParameterGroupResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('CreateDBClusterParameterGroupResult')
        xml << Stubs::DBClusterParameterGroup.stub('DBClusterParameterGroup', stub[:db_cluster_parameter_group]) unless stub[:db_cluster_parameter_group].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateDBClusterSnapshot
    class CreateDBClusterSnapshot
      def self.default(visited=[])
        {
          db_cluster_snapshot: Stubs::DBClusterSnapshot.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateDBClusterSnapshotResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('CreateDBClusterSnapshotResult')
        xml << Stubs::DBClusterSnapshot.stub('DBClusterSnapshot', stub[:db_cluster_snapshot]) unless stub[:db_cluster_snapshot].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateDBInstance
    class CreateDBInstance
      def self.default(visited=[])
        {
          db_instance: Stubs::DBInstance.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateDBInstanceResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('CreateDBInstanceResult')
        xml << Stubs::DBInstance.stub('DBInstance', stub[:db_instance]) unless stub[:db_instance].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for DBInstance
    class DBInstance
      def self.default(visited=[])
        return nil if visited.include?('DBInstance')
        visited = visited + ['DBInstance']
        {
          db_instance_identifier: 'db_instance_identifier',
          db_instance_class: 'db_instance_class',
          engine: 'engine',
          db_instance_status: 'db_instance_status',
          endpoint: Stubs::Endpoint.default(visited),
          instance_create_time: Time.now,
          preferred_backup_window: 'preferred_backup_window',
          backup_retention_period: 1,
          vpc_security_groups: Stubs::VpcSecurityGroupMembershipList.default(visited),
          availability_zone: 'availability_zone',
          db_subnet_group: Stubs::DBSubnetGroup.default(visited),
          preferred_maintenance_window: 'preferred_maintenance_window',
          pending_modified_values: Stubs::PendingModifiedValues.default(visited),
          latest_restorable_time: Time.now,
          engine_version: 'engine_version',
          auto_minor_version_upgrade: false,
          publicly_accessible: false,
          status_infos: Stubs::DBInstanceStatusInfoList.default(visited),
          db_cluster_identifier: 'db_cluster_identifier',
          storage_encrypted: false,
          kms_key_id: 'kms_key_id',
          dbi_resource_id: 'dbi_resource_id',
          ca_certificate_identifier: 'ca_certificate_identifier',
          promotion_tier: 1,
          db_instance_arn: 'db_instance_arn',
          enabled_cloudwatch_logs_exports: Stubs::LogTypeList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DBInstance.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('DBInstanceIdentifier', stub[:db_instance_identifier].to_s) unless stub[:db_instance_identifier].nil?
        xml << Hearth::XML::Node.new('DBInstanceClass', stub[:db_instance_class].to_s) unless stub[:db_instance_class].nil?
        xml << Hearth::XML::Node.new('Engine', stub[:engine].to_s) unless stub[:engine].nil?
        xml << Hearth::XML::Node.new('DBInstanceStatus', stub[:db_instance_status].to_s) unless stub[:db_instance_status].nil?
        xml << Stubs::Endpoint.stub('Endpoint', stub[:endpoint]) unless stub[:endpoint].nil?
        xml << Hearth::XML::Node.new('InstanceCreateTime', Hearth::TimeHelper.to_date_time(stub[:instance_create_time])) unless stub[:instance_create_time].nil?
        xml << Hearth::XML::Node.new('PreferredBackupWindow', stub[:preferred_backup_window].to_s) unless stub[:preferred_backup_window].nil?
        xml << Hearth::XML::Node.new('BackupRetentionPeriod', stub[:backup_retention_period].to_s) unless stub[:backup_retention_period].nil?
        xml << Hearth::XML::Node.new('VpcSecurityGroups', Stubs::VpcSecurityGroupMembershipList.stub('VpcSecurityGroupMembership', stub[:vpc_security_groups])) unless stub[:vpc_security_groups].nil?
        xml << Hearth::XML::Node.new('AvailabilityZone', stub[:availability_zone].to_s) unless stub[:availability_zone].nil?
        xml << Stubs::DBSubnetGroup.stub('DBSubnetGroup', stub[:db_subnet_group]) unless stub[:db_subnet_group].nil?
        xml << Hearth::XML::Node.new('PreferredMaintenanceWindow', stub[:preferred_maintenance_window].to_s) unless stub[:preferred_maintenance_window].nil?
        xml << Stubs::PendingModifiedValues.stub('PendingModifiedValues', stub[:pending_modified_values]) unless stub[:pending_modified_values].nil?
        xml << Hearth::XML::Node.new('LatestRestorableTime', Hearth::TimeHelper.to_date_time(stub[:latest_restorable_time])) unless stub[:latest_restorable_time].nil?
        xml << Hearth::XML::Node.new('EngineVersion', stub[:engine_version].to_s) unless stub[:engine_version].nil?
        xml << Hearth::XML::Node.new('AutoMinorVersionUpgrade', stub[:auto_minor_version_upgrade].to_s) unless stub[:auto_minor_version_upgrade].nil?
        xml << Hearth::XML::Node.new('PubliclyAccessible', stub[:publicly_accessible].to_s) unless stub[:publicly_accessible].nil?
        xml << Hearth::XML::Node.new('StatusInfos', Stubs::DBInstanceStatusInfoList.stub('DBInstanceStatusInfo', stub[:status_infos])) unless stub[:status_infos].nil?
        xml << Hearth::XML::Node.new('DBClusterIdentifier', stub[:db_cluster_identifier].to_s) unless stub[:db_cluster_identifier].nil?
        xml << Hearth::XML::Node.new('StorageEncrypted', stub[:storage_encrypted].to_s) unless stub[:storage_encrypted].nil?
        xml << Hearth::XML::Node.new('KmsKeyId', stub[:kms_key_id].to_s) unless stub[:kms_key_id].nil?
        xml << Hearth::XML::Node.new('DbiResourceId', stub[:dbi_resource_id].to_s) unless stub[:dbi_resource_id].nil?
        xml << Hearth::XML::Node.new('CACertificateIdentifier', stub[:ca_certificate_identifier].to_s) unless stub[:ca_certificate_identifier].nil?
        xml << Hearth::XML::Node.new('PromotionTier', stub[:promotion_tier].to_s) unless stub[:promotion_tier].nil?
        xml << Hearth::XML::Node.new('DBInstanceArn', stub[:db_instance_arn].to_s) unless stub[:db_instance_arn].nil?
        xml << Hearth::XML::Node.new('EnabledCloudwatchLogsExports', Stubs::LogTypeList.stub('member', stub[:enabled_cloudwatch_logs_exports])) unless stub[:enabled_cloudwatch_logs_exports].nil?
        xml
      end
    end

    # List Stubber for DBInstanceStatusInfoList
    class DBInstanceStatusInfoList
      def self.default(visited=[])
        return nil if visited.include?('DBInstanceStatusInfoList')
        visited = visited + ['DBInstanceStatusInfoList']
        [
          Stubs::DBInstanceStatusInfo.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::DBInstanceStatusInfo.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for DBInstanceStatusInfo
    class DBInstanceStatusInfo
      def self.default(visited=[])
        return nil if visited.include?('DBInstanceStatusInfo')
        visited = visited + ['DBInstanceStatusInfo']
        {
          status_type: 'status_type',
          normal: false,
          status: 'status',
          message: 'message',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DBInstanceStatusInfo.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('StatusType', stub[:status_type].to_s) unless stub[:status_type].nil?
        xml << Hearth::XML::Node.new('Normal', stub[:normal].to_s) unless stub[:normal].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('Message', stub[:message].to_s) unless stub[:message].nil?
        xml
      end
    end

    # Structure Stubber for PendingModifiedValues
    class PendingModifiedValues
      def self.default(visited=[])
        return nil if visited.include?('PendingModifiedValues')
        visited = visited + ['PendingModifiedValues']
        {
          db_instance_class: 'db_instance_class',
          allocated_storage: 1,
          master_user_password: 'master_user_password',
          port: 1,
          backup_retention_period: 1,
          multi_az: false,
          engine_version: 'engine_version',
          license_model: 'license_model',
          iops: 1,
          db_instance_identifier: 'db_instance_identifier',
          storage_type: 'storage_type',
          ca_certificate_identifier: 'ca_certificate_identifier',
          db_subnet_group_name: 'db_subnet_group_name',
          pending_cloudwatch_logs_exports: Stubs::PendingCloudwatchLogsExports.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::PendingModifiedValues.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('DBInstanceClass', stub[:db_instance_class].to_s) unless stub[:db_instance_class].nil?
        xml << Hearth::XML::Node.new('AllocatedStorage', stub[:allocated_storage].to_s) unless stub[:allocated_storage].nil?
        xml << Hearth::XML::Node.new('MasterUserPassword', stub[:master_user_password].to_s) unless stub[:master_user_password].nil?
        xml << Hearth::XML::Node.new('Port', stub[:port].to_s) unless stub[:port].nil?
        xml << Hearth::XML::Node.new('BackupRetentionPeriod', stub[:backup_retention_period].to_s) unless stub[:backup_retention_period].nil?
        xml << Hearth::XML::Node.new('MultiAZ', stub[:multi_az].to_s) unless stub[:multi_az].nil?
        xml << Hearth::XML::Node.new('EngineVersion', stub[:engine_version].to_s) unless stub[:engine_version].nil?
        xml << Hearth::XML::Node.new('LicenseModel', stub[:license_model].to_s) unless stub[:license_model].nil?
        xml << Hearth::XML::Node.new('Iops', stub[:iops].to_s) unless stub[:iops].nil?
        xml << Hearth::XML::Node.new('DBInstanceIdentifier', stub[:db_instance_identifier].to_s) unless stub[:db_instance_identifier].nil?
        xml << Hearth::XML::Node.new('StorageType', stub[:storage_type].to_s) unless stub[:storage_type].nil?
        xml << Hearth::XML::Node.new('CACertificateIdentifier', stub[:ca_certificate_identifier].to_s) unless stub[:ca_certificate_identifier].nil?
        xml << Hearth::XML::Node.new('DBSubnetGroupName', stub[:db_subnet_group_name].to_s) unless stub[:db_subnet_group_name].nil?
        xml << Stubs::PendingCloudwatchLogsExports.stub('PendingCloudwatchLogsExports', stub[:pending_cloudwatch_logs_exports]) unless stub[:pending_cloudwatch_logs_exports].nil?
        xml
      end
    end

    # Structure Stubber for PendingCloudwatchLogsExports
    class PendingCloudwatchLogsExports
      def self.default(visited=[])
        return nil if visited.include?('PendingCloudwatchLogsExports')
        visited = visited + ['PendingCloudwatchLogsExports']
        {
          log_types_to_enable: Stubs::LogTypeList.default(visited),
          log_types_to_disable: Stubs::LogTypeList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::PendingCloudwatchLogsExports.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('LogTypesToEnable', Stubs::LogTypeList.stub('member', stub[:log_types_to_enable])) unless stub[:log_types_to_enable].nil?
        xml << Hearth::XML::Node.new('LogTypesToDisable', Stubs::LogTypeList.stub('member', stub[:log_types_to_disable])) unless stub[:log_types_to_disable].nil?
        xml
      end
    end

    # Structure Stubber for DBSubnetGroup
    class DBSubnetGroup
      def self.default(visited=[])
        return nil if visited.include?('DBSubnetGroup')
        visited = visited + ['DBSubnetGroup']
        {
          db_subnet_group_name: 'db_subnet_group_name',
          db_subnet_group_description: 'db_subnet_group_description',
          vpc_id: 'vpc_id',
          subnet_group_status: 'subnet_group_status',
          subnets: Stubs::SubnetList.default(visited),
          db_subnet_group_arn: 'db_subnet_group_arn',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DBSubnetGroup.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('DBSubnetGroupName', stub[:db_subnet_group_name].to_s) unless stub[:db_subnet_group_name].nil?
        xml << Hearth::XML::Node.new('DBSubnetGroupDescription', stub[:db_subnet_group_description].to_s) unless stub[:db_subnet_group_description].nil?
        xml << Hearth::XML::Node.new('VpcId', stub[:vpc_id].to_s) unless stub[:vpc_id].nil?
        xml << Hearth::XML::Node.new('SubnetGroupStatus', stub[:subnet_group_status].to_s) unless stub[:subnet_group_status].nil?
        xml << Hearth::XML::Node.new('Subnets', Stubs::SubnetList.stub('Subnet', stub[:subnets])) unless stub[:subnets].nil?
        xml << Hearth::XML::Node.new('DBSubnetGroupArn', stub[:db_subnet_group_arn].to_s) unless stub[:db_subnet_group_arn].nil?
        xml
      end
    end

    # List Stubber for SubnetList
    class SubnetList
      def self.default(visited=[])
        return nil if visited.include?('SubnetList')
        visited = visited + ['SubnetList']
        [
          Stubs::Subnet.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::Subnet.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Subnet
    class Subnet
      def self.default(visited=[])
        return nil if visited.include?('Subnet')
        visited = visited + ['Subnet']
        {
          subnet_identifier: 'subnet_identifier',
          subnet_availability_zone: Stubs::AvailabilityZone.default(visited),
          subnet_status: 'subnet_status',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Subnet.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('SubnetIdentifier', stub[:subnet_identifier].to_s) unless stub[:subnet_identifier].nil?
        xml << Stubs::AvailabilityZone.stub('SubnetAvailabilityZone', stub[:subnet_availability_zone]) unless stub[:subnet_availability_zone].nil?
        xml << Hearth::XML::Node.new('SubnetStatus', stub[:subnet_status].to_s) unless stub[:subnet_status].nil?
        xml
      end
    end

    # Structure Stubber for AvailabilityZone
    class AvailabilityZone
      def self.default(visited=[])
        return nil if visited.include?('AvailabilityZone')
        visited = visited + ['AvailabilityZone']
        {
          name: 'name',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::AvailabilityZone.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml
      end
    end

    # Structure Stubber for Endpoint
    class Endpoint
      def self.default(visited=[])
        return nil if visited.include?('Endpoint')
        visited = visited + ['Endpoint']
        {
          address: 'address',
          port: 1,
          hosted_zone_id: 'hosted_zone_id',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Endpoint.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Address', stub[:address].to_s) unless stub[:address].nil?
        xml << Hearth::XML::Node.new('Port', stub[:port].to_s) unless stub[:port].nil?
        xml << Hearth::XML::Node.new('HostedZoneId', stub[:hosted_zone_id].to_s) unless stub[:hosted_zone_id].nil?
        xml
      end
    end

    # Operation Stubber for CreateDBSubnetGroup
    class CreateDBSubnetGroup
      def self.default(visited=[])
        {
          db_subnet_group: Stubs::DBSubnetGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateDBSubnetGroupResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('CreateDBSubnetGroupResult')
        xml << Stubs::DBSubnetGroup.stub('DBSubnetGroup', stub[:db_subnet_group]) unless stub[:db_subnet_group].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateEventSubscription
    class CreateEventSubscription
      def self.default(visited=[])
        {
          event_subscription: Stubs::EventSubscription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateEventSubscriptionResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('CreateEventSubscriptionResult')
        xml << Stubs::EventSubscription.stub('EventSubscription', stub[:event_subscription]) unless stub[:event_subscription].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateGlobalCluster
    class CreateGlobalCluster
      def self.default(visited=[])
        {
          global_cluster: Stubs::GlobalCluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateGlobalClusterResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('CreateGlobalClusterResult')
        xml << Stubs::GlobalCluster.stub('GlobalCluster', stub[:global_cluster]) unless stub[:global_cluster].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for GlobalCluster
    class GlobalCluster
      def self.default(visited=[])
        return nil if visited.include?('GlobalCluster')
        visited = visited + ['GlobalCluster']
        {
          global_cluster_identifier: 'global_cluster_identifier',
          global_cluster_resource_id: 'global_cluster_resource_id',
          global_cluster_arn: 'global_cluster_arn',
          status: 'status',
          engine: 'engine',
          engine_version: 'engine_version',
          database_name: 'database_name',
          storage_encrypted: false,
          deletion_protection: false,
          global_cluster_members: Stubs::GlobalClusterMemberList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::GlobalCluster.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('GlobalClusterIdentifier', stub[:global_cluster_identifier].to_s) unless stub[:global_cluster_identifier].nil?
        xml << Hearth::XML::Node.new('GlobalClusterResourceId', stub[:global_cluster_resource_id].to_s) unless stub[:global_cluster_resource_id].nil?
        xml << Hearth::XML::Node.new('GlobalClusterArn', stub[:global_cluster_arn].to_s) unless stub[:global_cluster_arn].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('Engine', stub[:engine].to_s) unless stub[:engine].nil?
        xml << Hearth::XML::Node.new('EngineVersion', stub[:engine_version].to_s) unless stub[:engine_version].nil?
        xml << Hearth::XML::Node.new('DatabaseName', stub[:database_name].to_s) unless stub[:database_name].nil?
        xml << Hearth::XML::Node.new('StorageEncrypted', stub[:storage_encrypted].to_s) unless stub[:storage_encrypted].nil?
        xml << Hearth::XML::Node.new('DeletionProtection', stub[:deletion_protection].to_s) unless stub[:deletion_protection].nil?
        xml << Hearth::XML::Node.new('GlobalClusterMembers', Stubs::GlobalClusterMemberList.stub('GlobalClusterMember', stub[:global_cluster_members])) unless stub[:global_cluster_members].nil?
        xml
      end
    end

    # List Stubber for GlobalClusterMemberList
    class GlobalClusterMemberList
      def self.default(visited=[])
        return nil if visited.include?('GlobalClusterMemberList')
        visited = visited + ['GlobalClusterMemberList']
        [
          Stubs::GlobalClusterMember.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::GlobalClusterMember.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for GlobalClusterMember
    class GlobalClusterMember
      def self.default(visited=[])
        return nil if visited.include?('GlobalClusterMember')
        visited = visited + ['GlobalClusterMember']
        {
          db_cluster_arn: 'db_cluster_arn',
          readers: Stubs::ReadersArnList.default(visited),
          is_writer: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::GlobalClusterMember.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('DBClusterArn', stub[:db_cluster_arn].to_s) unless stub[:db_cluster_arn].nil?
        xml << Hearth::XML::Node.new('Readers', Stubs::ReadersArnList.stub('member', stub[:readers])) unless stub[:readers].nil?
        xml << Hearth::XML::Node.new('IsWriter', stub[:is_writer].to_s) unless stub[:is_writer].nil?
        xml
      end
    end

    # List Stubber for ReadersArnList
    class ReadersArnList
      def self.default(visited=[])
        return nil if visited.include?('ReadersArnList')
        visited = visited + ['ReadersArnList']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for DeleteDBCluster
    class DeleteDBCluster
      def self.default(visited=[])
        {
          db_cluster: Stubs::DBCluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteDBClusterResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('DeleteDBClusterResult')
        xml << Stubs::DBCluster.stub('DBCluster', stub[:db_cluster]) unless stub[:db_cluster].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteDBClusterParameterGroup
    class DeleteDBClusterParameterGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteDBClusterParameterGroupResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('DeleteDBClusterParameterGroupResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteDBClusterSnapshot
    class DeleteDBClusterSnapshot
      def self.default(visited=[])
        {
          db_cluster_snapshot: Stubs::DBClusterSnapshot.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteDBClusterSnapshotResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('DeleteDBClusterSnapshotResult')
        xml << Stubs::DBClusterSnapshot.stub('DBClusterSnapshot', stub[:db_cluster_snapshot]) unless stub[:db_cluster_snapshot].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteDBInstance
    class DeleteDBInstance
      def self.default(visited=[])
        {
          db_instance: Stubs::DBInstance.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteDBInstanceResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('DeleteDBInstanceResult')
        xml << Stubs::DBInstance.stub('DBInstance', stub[:db_instance]) unless stub[:db_instance].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteDBSubnetGroup
    class DeleteDBSubnetGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteDBSubnetGroupResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('DeleteDBSubnetGroupResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteEventSubscription
    class DeleteEventSubscription
      def self.default(visited=[])
        {
          event_subscription: Stubs::EventSubscription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteEventSubscriptionResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('DeleteEventSubscriptionResult')
        xml << Stubs::EventSubscription.stub('EventSubscription', stub[:event_subscription]) unless stub[:event_subscription].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteGlobalCluster
    class DeleteGlobalCluster
      def self.default(visited=[])
        {
          global_cluster: Stubs::GlobalCluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteGlobalClusterResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('DeleteGlobalClusterResult')
        xml << Stubs::GlobalCluster.stub('GlobalCluster', stub[:global_cluster]) unless stub[:global_cluster].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeCertificates
    class DescribeCertificates
      def self.default(visited=[])
        {
          certificates: Stubs::CertificateList.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeCertificatesResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('DescribeCertificatesResult')
        xml << Hearth::XML::Node.new('Certificates', Stubs::CertificateList.stub('Certificate', stub[:certificates])) unless stub[:certificates].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for CertificateList
    class CertificateList
      def self.default(visited=[])
        return nil if visited.include?('CertificateList')
        visited = visited + ['CertificateList']
        [
          Stubs::Certificate.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::Certificate.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Certificate
    class Certificate
      def self.default(visited=[])
        return nil if visited.include?('Certificate')
        visited = visited + ['Certificate']
        {
          certificate_identifier: 'certificate_identifier',
          certificate_type: 'certificate_type',
          thumbprint: 'thumbprint',
          valid_from: Time.now,
          valid_till: Time.now,
          certificate_arn: 'certificate_arn',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Certificate.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('CertificateIdentifier', stub[:certificate_identifier].to_s) unless stub[:certificate_identifier].nil?
        xml << Hearth::XML::Node.new('CertificateType', stub[:certificate_type].to_s) unless stub[:certificate_type].nil?
        xml << Hearth::XML::Node.new('Thumbprint', stub[:thumbprint].to_s) unless stub[:thumbprint].nil?
        xml << Hearth::XML::Node.new('ValidFrom', Hearth::TimeHelper.to_date_time(stub[:valid_from])) unless stub[:valid_from].nil?
        xml << Hearth::XML::Node.new('ValidTill', Hearth::TimeHelper.to_date_time(stub[:valid_till])) unless stub[:valid_till].nil?
        xml << Hearth::XML::Node.new('CertificateArn', stub[:certificate_arn].to_s) unless stub[:certificate_arn].nil?
        xml
      end
    end

    # Operation Stubber for DescribeDBClusterParameterGroups
    class DescribeDBClusterParameterGroups
      def self.default(visited=[])
        {
          marker: 'marker',
          db_cluster_parameter_groups: Stubs::DBClusterParameterGroupList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeDBClusterParameterGroupsResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('DescribeDBClusterParameterGroupsResult')
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('DBClusterParameterGroups', Stubs::DBClusterParameterGroupList.stub('DBClusterParameterGroup', stub[:db_cluster_parameter_groups])) unless stub[:db_cluster_parameter_groups].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for DBClusterParameterGroupList
    class DBClusterParameterGroupList
      def self.default(visited=[])
        return nil if visited.include?('DBClusterParameterGroupList')
        visited = visited + ['DBClusterParameterGroupList']
        [
          Stubs::DBClusterParameterGroup.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::DBClusterParameterGroup.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for DescribeDBClusterParameters
    class DescribeDBClusterParameters
      def self.default(visited=[])
        {
          parameters: Stubs::ParametersList.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeDBClusterParametersResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('DescribeDBClusterParametersResult')
        xml << Hearth::XML::Node.new('Parameters', Stubs::ParametersList.stub('Parameter', stub[:parameters])) unless stub[:parameters].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for ParametersList
    class ParametersList
      def self.default(visited=[])
        return nil if visited.include?('ParametersList')
        visited = visited + ['ParametersList']
        [
          Stubs::Parameter.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::Parameter.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Parameter
    class Parameter
      def self.default(visited=[])
        return nil if visited.include?('Parameter')
        visited = visited + ['Parameter']
        {
          parameter_name: 'parameter_name',
          parameter_value: 'parameter_value',
          description: 'description',
          source: 'source',
          apply_type: 'apply_type',
          data_type: 'data_type',
          allowed_values: 'allowed_values',
          is_modifiable: false,
          minimum_engine_version: 'minimum_engine_version',
          apply_method: 'apply_method',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Parameter.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ParameterName', stub[:parameter_name].to_s) unless stub[:parameter_name].nil?
        xml << Hearth::XML::Node.new('ParameterValue', stub[:parameter_value].to_s) unless stub[:parameter_value].nil?
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        xml << Hearth::XML::Node.new('Source', stub[:source].to_s) unless stub[:source].nil?
        xml << Hearth::XML::Node.new('ApplyType', stub[:apply_type].to_s) unless stub[:apply_type].nil?
        xml << Hearth::XML::Node.new('DataType', stub[:data_type].to_s) unless stub[:data_type].nil?
        xml << Hearth::XML::Node.new('AllowedValues', stub[:allowed_values].to_s) unless stub[:allowed_values].nil?
        xml << Hearth::XML::Node.new('IsModifiable', stub[:is_modifiable].to_s) unless stub[:is_modifiable].nil?
        xml << Hearth::XML::Node.new('MinimumEngineVersion', stub[:minimum_engine_version].to_s) unless stub[:minimum_engine_version].nil?
        xml << Hearth::XML::Node.new('ApplyMethod', stub[:apply_method].to_s) unless stub[:apply_method].nil?
        xml
      end
    end

    # Operation Stubber for DescribeDBClusterSnapshotAttributes
    class DescribeDBClusterSnapshotAttributes
      def self.default(visited=[])
        {
          db_cluster_snapshot_attributes_result: Stubs::DBClusterSnapshotAttributesResult.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeDBClusterSnapshotAttributesResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('DescribeDBClusterSnapshotAttributesResult')
        xml << Stubs::DBClusterSnapshotAttributesResult.stub('DBClusterSnapshotAttributesResult', stub[:db_cluster_snapshot_attributes_result]) unless stub[:db_cluster_snapshot_attributes_result].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for DBClusterSnapshotAttributesResult
    class DBClusterSnapshotAttributesResult
      def self.default(visited=[])
        return nil if visited.include?('DBClusterSnapshotAttributesResult')
        visited = visited + ['DBClusterSnapshotAttributesResult']
        {
          db_cluster_snapshot_identifier: 'db_cluster_snapshot_identifier',
          db_cluster_snapshot_attributes: Stubs::DBClusterSnapshotAttributeList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DBClusterSnapshotAttributesResult.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('DBClusterSnapshotIdentifier', stub[:db_cluster_snapshot_identifier].to_s) unless stub[:db_cluster_snapshot_identifier].nil?
        xml << Hearth::XML::Node.new('DBClusterSnapshotAttributes', Stubs::DBClusterSnapshotAttributeList.stub('DBClusterSnapshotAttribute', stub[:db_cluster_snapshot_attributes])) unless stub[:db_cluster_snapshot_attributes].nil?
        xml
      end
    end

    # List Stubber for DBClusterSnapshotAttributeList
    class DBClusterSnapshotAttributeList
      def self.default(visited=[])
        return nil if visited.include?('DBClusterSnapshotAttributeList')
        visited = visited + ['DBClusterSnapshotAttributeList']
        [
          Stubs::DBClusterSnapshotAttribute.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::DBClusterSnapshotAttribute.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for DBClusterSnapshotAttribute
    class DBClusterSnapshotAttribute
      def self.default(visited=[])
        return nil if visited.include?('DBClusterSnapshotAttribute')
        visited = visited + ['DBClusterSnapshotAttribute']
        {
          attribute_name: 'attribute_name',
          attribute_values: Stubs::AttributeValueList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DBClusterSnapshotAttribute.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('AttributeName', stub[:attribute_name].to_s) unless stub[:attribute_name].nil?
        xml << Hearth::XML::Node.new('AttributeValues', Stubs::AttributeValueList.stub('AttributeValue', stub[:attribute_values])) unless stub[:attribute_values].nil?
        xml
      end
    end

    # List Stubber for AttributeValueList
    class AttributeValueList
      def self.default(visited=[])
        return nil if visited.include?('AttributeValueList')
        visited = visited + ['AttributeValueList']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for DescribeDBClusterSnapshots
    class DescribeDBClusterSnapshots
      def self.default(visited=[])
        {
          marker: 'marker',
          db_cluster_snapshots: Stubs::DBClusterSnapshotList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeDBClusterSnapshotsResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('DescribeDBClusterSnapshotsResult')
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('DBClusterSnapshots', Stubs::DBClusterSnapshotList.stub('DBClusterSnapshot', stub[:db_cluster_snapshots])) unless stub[:db_cluster_snapshots].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for DBClusterSnapshotList
    class DBClusterSnapshotList
      def self.default(visited=[])
        return nil if visited.include?('DBClusterSnapshotList')
        visited = visited + ['DBClusterSnapshotList']
        [
          Stubs::DBClusterSnapshot.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::DBClusterSnapshot.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for DescribeDBClusters
    class DescribeDBClusters
      def self.default(visited=[])
        {
          marker: 'marker',
          db_clusters: Stubs::DBClusterList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeDBClustersResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('DescribeDBClustersResult')
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('DBClusters', Stubs::DBClusterList.stub('DBCluster', stub[:db_clusters])) unless stub[:db_clusters].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for DBClusterList
    class DBClusterList
      def self.default(visited=[])
        return nil if visited.include?('DBClusterList')
        visited = visited + ['DBClusterList']
        [
          Stubs::DBCluster.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::DBCluster.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for DescribeDBEngineVersions
    class DescribeDBEngineVersions
      def self.default(visited=[])
        {
          marker: 'marker',
          db_engine_versions: Stubs::DBEngineVersionList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeDBEngineVersionsResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('DescribeDBEngineVersionsResult')
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('DBEngineVersions', Stubs::DBEngineVersionList.stub('DBEngineVersion', stub[:db_engine_versions])) unless stub[:db_engine_versions].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for DBEngineVersionList
    class DBEngineVersionList
      def self.default(visited=[])
        return nil if visited.include?('DBEngineVersionList')
        visited = visited + ['DBEngineVersionList']
        [
          Stubs::DBEngineVersion.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::DBEngineVersion.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for DBEngineVersion
    class DBEngineVersion
      def self.default(visited=[])
        return nil if visited.include?('DBEngineVersion')
        visited = visited + ['DBEngineVersion']
        {
          engine: 'engine',
          engine_version: 'engine_version',
          db_parameter_group_family: 'db_parameter_group_family',
          db_engine_description: 'db_engine_description',
          db_engine_version_description: 'db_engine_version_description',
          valid_upgrade_target: Stubs::ValidUpgradeTargetList.default(visited),
          exportable_log_types: Stubs::LogTypeList.default(visited),
          supports_log_exports_to_cloudwatch_logs: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DBEngineVersion.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Engine', stub[:engine].to_s) unless stub[:engine].nil?
        xml << Hearth::XML::Node.new('EngineVersion', stub[:engine_version].to_s) unless stub[:engine_version].nil?
        xml << Hearth::XML::Node.new('DBParameterGroupFamily', stub[:db_parameter_group_family].to_s) unless stub[:db_parameter_group_family].nil?
        xml << Hearth::XML::Node.new('DBEngineDescription', stub[:db_engine_description].to_s) unless stub[:db_engine_description].nil?
        xml << Hearth::XML::Node.new('DBEngineVersionDescription', stub[:db_engine_version_description].to_s) unless stub[:db_engine_version_description].nil?
        xml << Hearth::XML::Node.new('ValidUpgradeTarget', Stubs::ValidUpgradeTargetList.stub('UpgradeTarget', stub[:valid_upgrade_target])) unless stub[:valid_upgrade_target].nil?
        xml << Hearth::XML::Node.new('ExportableLogTypes', Stubs::LogTypeList.stub('member', stub[:exportable_log_types])) unless stub[:exportable_log_types].nil?
        xml << Hearth::XML::Node.new('SupportsLogExportsToCloudwatchLogs', stub[:supports_log_exports_to_cloudwatch_logs].to_s) unless stub[:supports_log_exports_to_cloudwatch_logs].nil?
        xml
      end
    end

    # List Stubber for ValidUpgradeTargetList
    class ValidUpgradeTargetList
      def self.default(visited=[])
        return nil if visited.include?('ValidUpgradeTargetList')
        visited = visited + ['ValidUpgradeTargetList']
        [
          Stubs::UpgradeTarget.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::UpgradeTarget.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for UpgradeTarget
    class UpgradeTarget
      def self.default(visited=[])
        return nil if visited.include?('UpgradeTarget')
        visited = visited + ['UpgradeTarget']
        {
          engine: 'engine',
          engine_version: 'engine_version',
          description: 'description',
          auto_upgrade: false,
          is_major_version_upgrade: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::UpgradeTarget.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Engine', stub[:engine].to_s) unless stub[:engine].nil?
        xml << Hearth::XML::Node.new('EngineVersion', stub[:engine_version].to_s) unless stub[:engine_version].nil?
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        xml << Hearth::XML::Node.new('AutoUpgrade', stub[:auto_upgrade].to_s) unless stub[:auto_upgrade].nil?
        xml << Hearth::XML::Node.new('IsMajorVersionUpgrade', stub[:is_major_version_upgrade].to_s) unless stub[:is_major_version_upgrade].nil?
        xml
      end
    end

    # Operation Stubber for DescribeDBInstances
    class DescribeDBInstances
      def self.default(visited=[])
        {
          marker: 'marker',
          db_instances: Stubs::DBInstanceList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeDBInstancesResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('DescribeDBInstancesResult')
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('DBInstances', Stubs::DBInstanceList.stub('DBInstance', stub[:db_instances])) unless stub[:db_instances].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for DBInstanceList
    class DBInstanceList
      def self.default(visited=[])
        return nil if visited.include?('DBInstanceList')
        visited = visited + ['DBInstanceList']
        [
          Stubs::DBInstance.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::DBInstance.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for DescribeDBSubnetGroups
    class DescribeDBSubnetGroups
      def self.default(visited=[])
        {
          marker: 'marker',
          db_subnet_groups: Stubs::DBSubnetGroups.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeDBSubnetGroupsResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('DescribeDBSubnetGroupsResult')
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('DBSubnetGroups', Stubs::DBSubnetGroups.stub('DBSubnetGroup', stub[:db_subnet_groups])) unless stub[:db_subnet_groups].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for DBSubnetGroups
    class DBSubnetGroups
      def self.default(visited=[])
        return nil if visited.include?('DBSubnetGroups')
        visited = visited + ['DBSubnetGroups']
        [
          Stubs::DBSubnetGroup.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::DBSubnetGroup.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for DescribeEngineDefaultClusterParameters
    class DescribeEngineDefaultClusterParameters
      def self.default(visited=[])
        {
          engine_defaults: Stubs::EngineDefaults.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeEngineDefaultClusterParametersResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('DescribeEngineDefaultClusterParametersResult')
        xml << Stubs::EngineDefaults.stub('EngineDefaults', stub[:engine_defaults]) unless stub[:engine_defaults].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for EngineDefaults
    class EngineDefaults
      def self.default(visited=[])
        return nil if visited.include?('EngineDefaults')
        visited = visited + ['EngineDefaults']
        {
          db_parameter_group_family: 'db_parameter_group_family',
          marker: 'marker',
          parameters: Stubs::ParametersList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::EngineDefaults.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('DBParameterGroupFamily', stub[:db_parameter_group_family].to_s) unless stub[:db_parameter_group_family].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('Parameters', Stubs::ParametersList.stub('Parameter', stub[:parameters])) unless stub[:parameters].nil?
        xml
      end
    end

    # Operation Stubber for DescribeEventCategories
    class DescribeEventCategories
      def self.default(visited=[])
        {
          event_categories_map_list: Stubs::EventCategoriesMapList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeEventCategoriesResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('DescribeEventCategoriesResult')
        xml << Hearth::XML::Node.new('EventCategoriesMapList', Stubs::EventCategoriesMapList.stub('EventCategoriesMap', stub[:event_categories_map_list])) unless stub[:event_categories_map_list].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for EventCategoriesMapList
    class EventCategoriesMapList
      def self.default(visited=[])
        return nil if visited.include?('EventCategoriesMapList')
        visited = visited + ['EventCategoriesMapList']
        [
          Stubs::EventCategoriesMap.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::EventCategoriesMap.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for EventCategoriesMap
    class EventCategoriesMap
      def self.default(visited=[])
        return nil if visited.include?('EventCategoriesMap')
        visited = visited + ['EventCategoriesMap']
        {
          source_type: 'source_type',
          event_categories: Stubs::EventCategoriesList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::EventCategoriesMap.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('SourceType', stub[:source_type].to_s) unless stub[:source_type].nil?
        xml << Hearth::XML::Node.new('EventCategories', Stubs::EventCategoriesList.stub('EventCategory', stub[:event_categories])) unless stub[:event_categories].nil?
        xml
      end
    end

    # Operation Stubber for DescribeEventSubscriptions
    class DescribeEventSubscriptions
      def self.default(visited=[])
        {
          marker: 'marker',
          event_subscriptions_list: Stubs::EventSubscriptionsList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeEventSubscriptionsResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('DescribeEventSubscriptionsResult')
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('EventSubscriptionsList', Stubs::EventSubscriptionsList.stub('EventSubscription', stub[:event_subscriptions_list])) unless stub[:event_subscriptions_list].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for EventSubscriptionsList
    class EventSubscriptionsList
      def self.default(visited=[])
        return nil if visited.include?('EventSubscriptionsList')
        visited = visited + ['EventSubscriptionsList']
        [
          Stubs::EventSubscription.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::EventSubscription.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for DescribeEvents
    class DescribeEvents
      def self.default(visited=[])
        {
          marker: 'marker',
          events: Stubs::EventList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeEventsResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('DescribeEventsResult')
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('Events', Stubs::EventList.stub('Event', stub[:events])) unless stub[:events].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for EventList
    class EventList
      def self.default(visited=[])
        return nil if visited.include?('EventList')
        visited = visited + ['EventList']
        [
          Stubs::Event.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::Event.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Event
    class Event
      def self.default(visited=[])
        return nil if visited.include?('Event')
        visited = visited + ['Event']
        {
          source_identifier: 'source_identifier',
          source_type: 'source_type',
          message: 'message',
          event_categories: Stubs::EventCategoriesList.default(visited),
          date: Time.now,
          source_arn: 'source_arn',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Event.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('SourceIdentifier', stub[:source_identifier].to_s) unless stub[:source_identifier].nil?
        xml << Hearth::XML::Node.new('SourceType', stub[:source_type].to_s) unless stub[:source_type].nil?
        xml << Hearth::XML::Node.new('Message', stub[:message].to_s) unless stub[:message].nil?
        xml << Hearth::XML::Node.new('EventCategories', Stubs::EventCategoriesList.stub('EventCategory', stub[:event_categories])) unless stub[:event_categories].nil?
        xml << Hearth::XML::Node.new('Date', Hearth::TimeHelper.to_date_time(stub[:date])) unless stub[:date].nil?
        xml << Hearth::XML::Node.new('SourceArn', stub[:source_arn].to_s) unless stub[:source_arn].nil?
        xml
      end
    end

    # Operation Stubber for DescribeGlobalClusters
    class DescribeGlobalClusters
      def self.default(visited=[])
        {
          marker: 'marker',
          global_clusters: Stubs::GlobalClusterList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeGlobalClustersResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('DescribeGlobalClustersResult')
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('GlobalClusters', Stubs::GlobalClusterList.stub('GlobalClusterMember', stub[:global_clusters])) unless stub[:global_clusters].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for GlobalClusterList
    class GlobalClusterList
      def self.default(visited=[])
        return nil if visited.include?('GlobalClusterList')
        visited = visited + ['GlobalClusterList']
        [
          Stubs::GlobalCluster.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::GlobalCluster.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for DescribeOrderableDBInstanceOptions
    class DescribeOrderableDBInstanceOptions
      def self.default(visited=[])
        {
          orderable_db_instance_options: Stubs::OrderableDBInstanceOptionsList.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeOrderableDBInstanceOptionsResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('DescribeOrderableDBInstanceOptionsResult')
        xml << Hearth::XML::Node.new('OrderableDBInstanceOptions', Stubs::OrderableDBInstanceOptionsList.stub('OrderableDBInstanceOption', stub[:orderable_db_instance_options])) unless stub[:orderable_db_instance_options].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for OrderableDBInstanceOptionsList
    class OrderableDBInstanceOptionsList
      def self.default(visited=[])
        return nil if visited.include?('OrderableDBInstanceOptionsList')
        visited = visited + ['OrderableDBInstanceOptionsList']
        [
          Stubs::OrderableDBInstanceOption.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::OrderableDBInstanceOption.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for OrderableDBInstanceOption
    class OrderableDBInstanceOption
      def self.default(visited=[])
        return nil if visited.include?('OrderableDBInstanceOption')
        visited = visited + ['OrderableDBInstanceOption']
        {
          engine: 'engine',
          engine_version: 'engine_version',
          db_instance_class: 'db_instance_class',
          license_model: 'license_model',
          availability_zones: Stubs::AvailabilityZoneList.default(visited),
          vpc: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::OrderableDBInstanceOption.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Engine', stub[:engine].to_s) unless stub[:engine].nil?
        xml << Hearth::XML::Node.new('EngineVersion', stub[:engine_version].to_s) unless stub[:engine_version].nil?
        xml << Hearth::XML::Node.new('DBInstanceClass', stub[:db_instance_class].to_s) unless stub[:db_instance_class].nil?
        xml << Hearth::XML::Node.new('LicenseModel', stub[:license_model].to_s) unless stub[:license_model].nil?
        xml << Hearth::XML::Node.new('AvailabilityZones', Stubs::AvailabilityZoneList.stub('AvailabilityZone', stub[:availability_zones])) unless stub[:availability_zones].nil?
        xml << Hearth::XML::Node.new('Vpc', stub[:vpc].to_s) unless stub[:vpc].nil?
        xml
      end
    end

    # List Stubber for AvailabilityZoneList
    class AvailabilityZoneList
      def self.default(visited=[])
        return nil if visited.include?('AvailabilityZoneList')
        visited = visited + ['AvailabilityZoneList']
        [
          Stubs::AvailabilityZone.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::AvailabilityZone.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for DescribePendingMaintenanceActions
    class DescribePendingMaintenanceActions
      def self.default(visited=[])
        {
          pending_maintenance_actions: Stubs::PendingMaintenanceActions.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribePendingMaintenanceActionsResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('DescribePendingMaintenanceActionsResult')
        xml << Hearth::XML::Node.new('PendingMaintenanceActions', Stubs::PendingMaintenanceActions.stub('ResourcePendingMaintenanceActions', stub[:pending_maintenance_actions])) unless stub[:pending_maintenance_actions].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for PendingMaintenanceActions
    class PendingMaintenanceActions
      def self.default(visited=[])
        return nil if visited.include?('PendingMaintenanceActions')
        visited = visited + ['PendingMaintenanceActions']
        [
          Stubs::ResourcePendingMaintenanceActions.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::ResourcePendingMaintenanceActions.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for FailoverDBCluster
    class FailoverDBCluster
      def self.default(visited=[])
        {
          db_cluster: Stubs::DBCluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('FailoverDBClusterResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('FailoverDBClusterResult')
        xml << Stubs::DBCluster.stub('DBCluster', stub[:db_cluster]) unless stub[:db_cluster].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tag_list: Stubs::TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListTagsForResourceResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('ListTagsForResourceResult')
        xml << Hearth::XML::Node.new('TagList', Stubs::TagList.stub('Tag', stub[:tag_list])) unless stub[:tag_list].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Stubs::Tag.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::Tag.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Tag
    class Tag
      def self.default(visited=[])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Tag.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Key', stub[:key].to_s) unless stub[:key].nil?
        xml << Hearth::XML::Node.new('Value', stub[:value].to_s) unless stub[:value].nil?
        xml
      end
    end

    # Operation Stubber for ModifyDBCluster
    class ModifyDBCluster
      def self.default(visited=[])
        {
          db_cluster: Stubs::DBCluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ModifyDBClusterResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('ModifyDBClusterResult')
        xml << Stubs::DBCluster.stub('DBCluster', stub[:db_cluster]) unless stub[:db_cluster].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ModifyDBClusterParameterGroup
    class ModifyDBClusterParameterGroup
      def self.default(visited=[])
        {
          db_cluster_parameter_group_name: 'db_cluster_parameter_group_name',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ModifyDBClusterParameterGroupResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('ModifyDBClusterParameterGroupResult')
        xml << Hearth::XML::Node.new('DBClusterParameterGroupName', stub[:db_cluster_parameter_group_name].to_s) unless stub[:db_cluster_parameter_group_name].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ModifyDBClusterSnapshotAttribute
    class ModifyDBClusterSnapshotAttribute
      def self.default(visited=[])
        {
          db_cluster_snapshot_attributes_result: Stubs::DBClusterSnapshotAttributesResult.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ModifyDBClusterSnapshotAttributeResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('ModifyDBClusterSnapshotAttributeResult')
        xml << Stubs::DBClusterSnapshotAttributesResult.stub('DBClusterSnapshotAttributesResult', stub[:db_cluster_snapshot_attributes_result]) unless stub[:db_cluster_snapshot_attributes_result].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ModifyDBInstance
    class ModifyDBInstance
      def self.default(visited=[])
        {
          db_instance: Stubs::DBInstance.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ModifyDBInstanceResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('ModifyDBInstanceResult')
        xml << Stubs::DBInstance.stub('DBInstance', stub[:db_instance]) unless stub[:db_instance].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ModifyDBSubnetGroup
    class ModifyDBSubnetGroup
      def self.default(visited=[])
        {
          db_subnet_group: Stubs::DBSubnetGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ModifyDBSubnetGroupResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('ModifyDBSubnetGroupResult')
        xml << Stubs::DBSubnetGroup.stub('DBSubnetGroup', stub[:db_subnet_group]) unless stub[:db_subnet_group].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ModifyEventSubscription
    class ModifyEventSubscription
      def self.default(visited=[])
        {
          event_subscription: Stubs::EventSubscription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ModifyEventSubscriptionResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('ModifyEventSubscriptionResult')
        xml << Stubs::EventSubscription.stub('EventSubscription', stub[:event_subscription]) unless stub[:event_subscription].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ModifyGlobalCluster
    class ModifyGlobalCluster
      def self.default(visited=[])
        {
          global_cluster: Stubs::GlobalCluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ModifyGlobalClusterResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('ModifyGlobalClusterResult')
        xml << Stubs::GlobalCluster.stub('GlobalCluster', stub[:global_cluster]) unless stub[:global_cluster].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for RebootDBInstance
    class RebootDBInstance
      def self.default(visited=[])
        {
          db_instance: Stubs::DBInstance.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('RebootDBInstanceResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('RebootDBInstanceResult')
        xml << Stubs::DBInstance.stub('DBInstance', stub[:db_instance]) unless stub[:db_instance].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for RemoveFromGlobalCluster
    class RemoveFromGlobalCluster
      def self.default(visited=[])
        {
          global_cluster: Stubs::GlobalCluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('RemoveFromGlobalClusterResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('RemoveFromGlobalClusterResult')
        xml << Stubs::GlobalCluster.stub('GlobalCluster', stub[:global_cluster]) unless stub[:global_cluster].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for RemoveSourceIdentifierFromSubscription
    class RemoveSourceIdentifierFromSubscription
      def self.default(visited=[])
        {
          event_subscription: Stubs::EventSubscription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('RemoveSourceIdentifierFromSubscriptionResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('RemoveSourceIdentifierFromSubscriptionResult')
        xml << Stubs::EventSubscription.stub('EventSubscription', stub[:event_subscription]) unless stub[:event_subscription].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for RemoveTagsFromResource
    class RemoveTagsFromResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('RemoveTagsFromResourceResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('RemoveTagsFromResourceResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ResetDBClusterParameterGroup
    class ResetDBClusterParameterGroup
      def self.default(visited=[])
        {
          db_cluster_parameter_group_name: 'db_cluster_parameter_group_name',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ResetDBClusterParameterGroupResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('ResetDBClusterParameterGroupResult')
        xml << Hearth::XML::Node.new('DBClusterParameterGroupName', stub[:db_cluster_parameter_group_name].to_s) unless stub[:db_cluster_parameter_group_name].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for RestoreDBClusterFromSnapshot
    class RestoreDBClusterFromSnapshot
      def self.default(visited=[])
        {
          db_cluster: Stubs::DBCluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('RestoreDBClusterFromSnapshotResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('RestoreDBClusterFromSnapshotResult')
        xml << Stubs::DBCluster.stub('DBCluster', stub[:db_cluster]) unless stub[:db_cluster].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for RestoreDBClusterToPointInTime
    class RestoreDBClusterToPointInTime
      def self.default(visited=[])
        {
          db_cluster: Stubs::DBCluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('RestoreDBClusterToPointInTimeResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('RestoreDBClusterToPointInTimeResult')
        xml << Stubs::DBCluster.stub('DBCluster', stub[:db_cluster]) unless stub[:db_cluster].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartDBCluster
    class StartDBCluster
      def self.default(visited=[])
        {
          db_cluster: Stubs::DBCluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('StartDBClusterResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('StartDBClusterResult')
        xml << Stubs::DBCluster.stub('DBCluster', stub[:db_cluster]) unless stub[:db_cluster].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopDBCluster
    class StopDBCluster
      def self.default(visited=[])
        {
          db_cluster: Stubs::DBCluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('StopDBClusterResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('StopDBClusterResult')
        xml << Stubs::DBCluster.stub('DBCluster', stub[:db_cluster]) unless stub[:db_cluster].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end
  end
end
