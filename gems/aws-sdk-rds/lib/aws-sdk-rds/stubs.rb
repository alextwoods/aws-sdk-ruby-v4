# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::RDS
  module Stubs

    # Operation Stubber for AddRoleToDBCluster
    class AddRoleToDBCluster
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('AddRoleToDBClusterResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('AddRoleToDBClusterResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for AddRoleToDBInstance
    class AddRoleToDBInstance
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('AddRoleToDBInstanceResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('AddRoleToDBInstanceResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for AddSourceIdentifierToSubscription
    class AddSourceIdentifierToSubscription
      def self.default(visited=[])
        {
          event_subscription: EventSubscription.default(visited),
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
          source_ids_list: SourceIdsList.default(visited),
          event_categories_list: EventCategoriesList.default(visited),
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
          resource_pending_maintenance_actions: ResourcePendingMaintenanceActions.default(visited),
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
          pending_maintenance_action_details: PendingMaintenanceActionDetails.default(visited),
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
          PendingMaintenanceAction.default(visited)
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

    # Operation Stubber for AuthorizeDBSecurityGroupIngress
    class AuthorizeDBSecurityGroupIngress
      def self.default(visited=[])
        {
          db_security_group: DBSecurityGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('AuthorizeDBSecurityGroupIngressResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('AuthorizeDBSecurityGroupIngressResult')
        xml << Stubs::DBSecurityGroup.stub('DBSecurityGroup', stub[:db_security_group]) unless stub[:db_security_group].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for DBSecurityGroup
    class DBSecurityGroup
      def self.default(visited=[])
        return nil if visited.include?('DBSecurityGroup')
        visited = visited + ['DBSecurityGroup']
        {
          owner_id: 'owner_id',
          db_security_group_name: 'db_security_group_name',
          db_security_group_description: 'db_security_group_description',
          vpc_id: 'vpc_id',
          ec2_security_groups: EC2SecurityGroupList.default(visited),
          ip_ranges: IPRangeList.default(visited),
          db_security_group_arn: 'db_security_group_arn',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DBSecurityGroup.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('OwnerId', stub[:owner_id].to_s) unless stub[:owner_id].nil?
        xml << Hearth::XML::Node.new('DBSecurityGroupName', stub[:db_security_group_name].to_s) unless stub[:db_security_group_name].nil?
        xml << Hearth::XML::Node.new('DBSecurityGroupDescription', stub[:db_security_group_description].to_s) unless stub[:db_security_group_description].nil?
        xml << Hearth::XML::Node.new('VpcId', stub[:vpc_id].to_s) unless stub[:vpc_id].nil?
        xml << Hearth::XML::Node.new('EC2SecurityGroups', Stubs::EC2SecurityGroupList.stub('EC2SecurityGroup', stub[:ec2_security_groups])) unless stub[:ec2_security_groups].nil?
        xml << Hearth::XML::Node.new('IPRanges', Stubs::IPRangeList.stub('IPRange', stub[:ip_ranges])) unless stub[:ip_ranges].nil?
        xml << Hearth::XML::Node.new('DBSecurityGroupArn', stub[:db_security_group_arn].to_s) unless stub[:db_security_group_arn].nil?
        xml
      end
    end

    # List Stubber for IPRangeList
    class IPRangeList
      def self.default(visited=[])
        return nil if visited.include?('IPRangeList')
        visited = visited + ['IPRangeList']
        [
          IPRange.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::IPRange.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for IPRange
    class IPRange
      def self.default(visited=[])
        return nil if visited.include?('IPRange')
        visited = visited + ['IPRange']
        {
          status: 'status',
          cidrip: 'cidrip',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::IPRange.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('CIDRIP', stub[:cidrip].to_s) unless stub[:cidrip].nil?
        xml
      end
    end

    # List Stubber for EC2SecurityGroupList
    class EC2SecurityGroupList
      def self.default(visited=[])
        return nil if visited.include?('EC2SecurityGroupList')
        visited = visited + ['EC2SecurityGroupList']
        [
          EC2SecurityGroup.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::EC2SecurityGroup.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for EC2SecurityGroup
    class EC2SecurityGroup
      def self.default(visited=[])
        return nil if visited.include?('EC2SecurityGroup')
        visited = visited + ['EC2SecurityGroup']
        {
          status: 'status',
          ec2_security_group_name: 'ec2_security_group_name',
          ec2_security_group_id: 'ec2_security_group_id',
          ec2_security_group_owner_id: 'ec2_security_group_owner_id',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::EC2SecurityGroup.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('EC2SecurityGroupName', stub[:ec2_security_group_name].to_s) unless stub[:ec2_security_group_name].nil?
        xml << Hearth::XML::Node.new('EC2SecurityGroupId', stub[:ec2_security_group_id].to_s) unless stub[:ec2_security_group_id].nil?
        xml << Hearth::XML::Node.new('EC2SecurityGroupOwnerId', stub[:ec2_security_group_owner_id].to_s) unless stub[:ec2_security_group_owner_id].nil?
        xml
      end
    end

    # Operation Stubber for BacktrackDBCluster
    class BacktrackDBCluster
      def self.default(visited=[])
        {
          db_cluster_identifier: 'db_cluster_identifier',
          backtrack_identifier: 'backtrack_identifier',
          backtrack_to: Time.now,
          backtracked_from: Time.now,
          backtrack_request_creation_time: Time.now,
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('BacktrackDBClusterResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('BacktrackDBClusterResult')
        xml << Hearth::XML::Node.new('DBClusterIdentifier', stub[:db_cluster_identifier].to_s) unless stub[:db_cluster_identifier].nil?
        xml << Hearth::XML::Node.new('BacktrackIdentifier', stub[:backtrack_identifier].to_s) unless stub[:backtrack_identifier].nil?
        xml << Hearth::XML::Node.new('BacktrackTo', Hearth::TimeHelper.to_date_time(stub[:backtrack_to])) unless stub[:backtrack_to].nil?
        xml << Hearth::XML::Node.new('BacktrackedFrom', Hearth::TimeHelper.to_date_time(stub[:backtracked_from])) unless stub[:backtracked_from].nil?
        xml << Hearth::XML::Node.new('BacktrackRequestCreationTime', Hearth::TimeHelper.to_date_time(stub[:backtrack_request_creation_time])) unless stub[:backtrack_request_creation_time].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for CancelExportTask
    class CancelExportTask
      def self.default(visited=[])
        {
          export_task_identifier: 'export_task_identifier',
          source_arn: 'source_arn',
          export_only: StringList.default(visited),
          snapshot_time: Time.now,
          task_start_time: Time.now,
          task_end_time: Time.now,
          s3_bucket: 's3_bucket',
          s3_prefix: 's3_prefix',
          iam_role_arn: 'iam_role_arn',
          kms_key_id: 'kms_key_id',
          status: 'status',
          percent_progress: 1,
          total_extracted_data_in_gb: 1,
          failure_cause: 'failure_cause',
          warning_message: 'warning_message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CancelExportTaskResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('CancelExportTaskResult')
        xml << Hearth::XML::Node.new('ExportTaskIdentifier', stub[:export_task_identifier].to_s) unless stub[:export_task_identifier].nil?
        xml << Hearth::XML::Node.new('SourceArn', stub[:source_arn].to_s) unless stub[:source_arn].nil?
        xml << Hearth::XML::Node.new('ExportOnly', Stubs::StringList.stub('member', stub[:export_only])) unless stub[:export_only].nil?
        xml << Hearth::XML::Node.new('SnapshotTime', Hearth::TimeHelper.to_date_time(stub[:snapshot_time])) unless stub[:snapshot_time].nil?
        xml << Hearth::XML::Node.new('TaskStartTime', Hearth::TimeHelper.to_date_time(stub[:task_start_time])) unless stub[:task_start_time].nil?
        xml << Hearth::XML::Node.new('TaskEndTime', Hearth::TimeHelper.to_date_time(stub[:task_end_time])) unless stub[:task_end_time].nil?
        xml << Hearth::XML::Node.new('S3Bucket', stub[:s3_bucket].to_s) unless stub[:s3_bucket].nil?
        xml << Hearth::XML::Node.new('S3Prefix', stub[:s3_prefix].to_s) unless stub[:s3_prefix].nil?
        xml << Hearth::XML::Node.new('IamRoleArn', stub[:iam_role_arn].to_s) unless stub[:iam_role_arn].nil?
        xml << Hearth::XML::Node.new('KmsKeyId', stub[:kms_key_id].to_s) unless stub[:kms_key_id].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('PercentProgress', stub[:percent_progress].to_s) unless stub[:percent_progress].nil?
        xml << Hearth::XML::Node.new('TotalExtractedDataInGB', stub[:total_extracted_data_in_gb].to_s) unless stub[:total_extracted_data_in_gb].nil?
        xml << Hearth::XML::Node.new('FailureCause', stub[:failure_cause].to_s) unless stub[:failure_cause].nil?
        xml << Hearth::XML::Node.new('WarningMessage', stub[:warning_message].to_s) unless stub[:warning_message].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for StringList
    class StringList
      def self.default(visited=[])
        return nil if visited.include?('StringList')
        visited = visited + ['StringList']
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

    # Operation Stubber for CopyDBClusterParameterGroup
    class CopyDBClusterParameterGroup
      def self.default(visited=[])
        {
          db_cluster_parameter_group: DBClusterParameterGroup.default(visited),
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
          db_cluster_snapshot: DBClusterSnapshot.default(visited),
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
          availability_zones: AvailabilityZones.default(visited),
          db_cluster_snapshot_identifier: 'db_cluster_snapshot_identifier',
          db_cluster_identifier: 'db_cluster_identifier',
          snapshot_create_time: Time.now,
          engine: 'engine',
          engine_mode: 'engine_mode',
          allocated_storage: 1,
          status: 'status',
          port: 1,
          vpc_id: 'vpc_id',
          cluster_create_time: Time.now,
          master_username: 'master_username',
          engine_version: 'engine_version',
          license_model: 'license_model',
          snapshot_type: 'snapshot_type',
          percent_progress: 1,
          storage_encrypted: false,
          kms_key_id: 'kms_key_id',
          db_cluster_snapshot_arn: 'db_cluster_snapshot_arn',
          source_db_cluster_snapshot_arn: 'source_db_cluster_snapshot_arn',
          iam_database_authentication_enabled: false,
          tag_list: TagList.default(visited),
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
        xml << Hearth::XML::Node.new('EngineMode', stub[:engine_mode].to_s) unless stub[:engine_mode].nil?
        xml << Hearth::XML::Node.new('AllocatedStorage', stub[:allocated_storage].to_s) unless stub[:allocated_storage].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('Port', stub[:port].to_s) unless stub[:port].nil?
        xml << Hearth::XML::Node.new('VpcId', stub[:vpc_id].to_s) unless stub[:vpc_id].nil?
        xml << Hearth::XML::Node.new('ClusterCreateTime', Hearth::TimeHelper.to_date_time(stub[:cluster_create_time])) unless stub[:cluster_create_time].nil?
        xml << Hearth::XML::Node.new('MasterUsername', stub[:master_username].to_s) unless stub[:master_username].nil?
        xml << Hearth::XML::Node.new('EngineVersion', stub[:engine_version].to_s) unless stub[:engine_version].nil?
        xml << Hearth::XML::Node.new('LicenseModel', stub[:license_model].to_s) unless stub[:license_model].nil?
        xml << Hearth::XML::Node.new('SnapshotType', stub[:snapshot_type].to_s) unless stub[:snapshot_type].nil?
        xml << Hearth::XML::Node.new('PercentProgress', stub[:percent_progress].to_s) unless stub[:percent_progress].nil?
        xml << Hearth::XML::Node.new('StorageEncrypted', stub[:storage_encrypted].to_s) unless stub[:storage_encrypted].nil?
        xml << Hearth::XML::Node.new('KmsKeyId', stub[:kms_key_id].to_s) unless stub[:kms_key_id].nil?
        xml << Hearth::XML::Node.new('DBClusterSnapshotArn', stub[:db_cluster_snapshot_arn].to_s) unless stub[:db_cluster_snapshot_arn].nil?
        xml << Hearth::XML::Node.new('SourceDBClusterSnapshotArn', stub[:source_db_cluster_snapshot_arn].to_s) unless stub[:source_db_cluster_snapshot_arn].nil?
        xml << Hearth::XML::Node.new('IAMDatabaseAuthenticationEnabled', stub[:iam_database_authentication_enabled].to_s) unless stub[:iam_database_authentication_enabled].nil?
        xml << Hearth::XML::Node.new('TagList', Stubs::TagList.stub('Tag', stub[:tag_list])) unless stub[:tag_list].nil?
        xml
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Tag.default(visited)
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

    # Operation Stubber for CopyDBParameterGroup
    class CopyDBParameterGroup
      def self.default(visited=[])
        {
          db_parameter_group: DBParameterGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CopyDBParameterGroupResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('CopyDBParameterGroupResult')
        xml << Stubs::DBParameterGroup.stub('DBParameterGroup', stub[:db_parameter_group]) unless stub[:db_parameter_group].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for DBParameterGroup
    class DBParameterGroup
      def self.default(visited=[])
        return nil if visited.include?('DBParameterGroup')
        visited = visited + ['DBParameterGroup']
        {
          db_parameter_group_name: 'db_parameter_group_name',
          db_parameter_group_family: 'db_parameter_group_family',
          description: 'description',
          db_parameter_group_arn: 'db_parameter_group_arn',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DBParameterGroup.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('DBParameterGroupName', stub[:db_parameter_group_name].to_s) unless stub[:db_parameter_group_name].nil?
        xml << Hearth::XML::Node.new('DBParameterGroupFamily', stub[:db_parameter_group_family].to_s) unless stub[:db_parameter_group_family].nil?
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        xml << Hearth::XML::Node.new('DBParameterGroupArn', stub[:db_parameter_group_arn].to_s) unless stub[:db_parameter_group_arn].nil?
        xml
      end
    end

    # Operation Stubber for CopyDBSnapshot
    class CopyDBSnapshot
      def self.default(visited=[])
        {
          db_snapshot: DBSnapshot.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CopyDBSnapshotResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('CopyDBSnapshotResult')
        xml << Stubs::DBSnapshot.stub('DBSnapshot', stub[:db_snapshot]) unless stub[:db_snapshot].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for DBSnapshot
    class DBSnapshot
      def self.default(visited=[])
        return nil if visited.include?('DBSnapshot')
        visited = visited + ['DBSnapshot']
        {
          db_snapshot_identifier: 'db_snapshot_identifier',
          db_instance_identifier: 'db_instance_identifier',
          snapshot_create_time: Time.now,
          engine: 'engine',
          allocated_storage: 1,
          status: 'status',
          port: 1,
          availability_zone: 'availability_zone',
          vpc_id: 'vpc_id',
          instance_create_time: Time.now,
          master_username: 'master_username',
          engine_version: 'engine_version',
          license_model: 'license_model',
          snapshot_type: 'snapshot_type',
          iops: 1,
          option_group_name: 'option_group_name',
          percent_progress: 1,
          source_region: 'source_region',
          source_db_snapshot_identifier: 'source_db_snapshot_identifier',
          storage_type: 'storage_type',
          tde_credential_arn: 'tde_credential_arn',
          encrypted: false,
          kms_key_id: 'kms_key_id',
          db_snapshot_arn: 'db_snapshot_arn',
          timezone: 'timezone',
          iam_database_authentication_enabled: false,
          processor_features: ProcessorFeatureList.default(visited),
          dbi_resource_id: 'dbi_resource_id',
          tag_list: TagList.default(visited),
          original_snapshot_create_time: Time.now,
          snapshot_target: 'snapshot_target',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DBSnapshot.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('DBSnapshotIdentifier', stub[:db_snapshot_identifier].to_s) unless stub[:db_snapshot_identifier].nil?
        xml << Hearth::XML::Node.new('DBInstanceIdentifier', stub[:db_instance_identifier].to_s) unless stub[:db_instance_identifier].nil?
        xml << Hearth::XML::Node.new('SnapshotCreateTime', Hearth::TimeHelper.to_date_time(stub[:snapshot_create_time])) unless stub[:snapshot_create_time].nil?
        xml << Hearth::XML::Node.new('Engine', stub[:engine].to_s) unless stub[:engine].nil?
        xml << Hearth::XML::Node.new('AllocatedStorage', stub[:allocated_storage].to_s) unless stub[:allocated_storage].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('Port', stub[:port].to_s) unless stub[:port].nil?
        xml << Hearth::XML::Node.new('AvailabilityZone', stub[:availability_zone].to_s) unless stub[:availability_zone].nil?
        xml << Hearth::XML::Node.new('VpcId', stub[:vpc_id].to_s) unless stub[:vpc_id].nil?
        xml << Hearth::XML::Node.new('InstanceCreateTime', Hearth::TimeHelper.to_date_time(stub[:instance_create_time])) unless stub[:instance_create_time].nil?
        xml << Hearth::XML::Node.new('MasterUsername', stub[:master_username].to_s) unless stub[:master_username].nil?
        xml << Hearth::XML::Node.new('EngineVersion', stub[:engine_version].to_s) unless stub[:engine_version].nil?
        xml << Hearth::XML::Node.new('LicenseModel', stub[:license_model].to_s) unless stub[:license_model].nil?
        xml << Hearth::XML::Node.new('SnapshotType', stub[:snapshot_type].to_s) unless stub[:snapshot_type].nil?
        xml << Hearth::XML::Node.new('Iops', stub[:iops].to_s) unless stub[:iops].nil?
        xml << Hearth::XML::Node.new('OptionGroupName', stub[:option_group_name].to_s) unless stub[:option_group_name].nil?
        xml << Hearth::XML::Node.new('PercentProgress', stub[:percent_progress].to_s) unless stub[:percent_progress].nil?
        xml << Hearth::XML::Node.new('SourceRegion', stub[:source_region].to_s) unless stub[:source_region].nil?
        xml << Hearth::XML::Node.new('SourceDBSnapshotIdentifier', stub[:source_db_snapshot_identifier].to_s) unless stub[:source_db_snapshot_identifier].nil?
        xml << Hearth::XML::Node.new('StorageType', stub[:storage_type].to_s) unless stub[:storage_type].nil?
        xml << Hearth::XML::Node.new('TdeCredentialArn', stub[:tde_credential_arn].to_s) unless stub[:tde_credential_arn].nil?
        xml << Hearth::XML::Node.new('Encrypted', stub[:encrypted].to_s) unless stub[:encrypted].nil?
        xml << Hearth::XML::Node.new('KmsKeyId', stub[:kms_key_id].to_s) unless stub[:kms_key_id].nil?
        xml << Hearth::XML::Node.new('DBSnapshotArn', stub[:db_snapshot_arn].to_s) unless stub[:db_snapshot_arn].nil?
        xml << Hearth::XML::Node.new('Timezone', stub[:timezone].to_s) unless stub[:timezone].nil?
        xml << Hearth::XML::Node.new('IAMDatabaseAuthenticationEnabled', stub[:iam_database_authentication_enabled].to_s) unless stub[:iam_database_authentication_enabled].nil?
        xml << Hearth::XML::Node.new('ProcessorFeatures', Stubs::ProcessorFeatureList.stub('ProcessorFeature', stub[:processor_features])) unless stub[:processor_features].nil?
        xml << Hearth::XML::Node.new('DbiResourceId', stub[:dbi_resource_id].to_s) unless stub[:dbi_resource_id].nil?
        xml << Hearth::XML::Node.new('TagList', Stubs::TagList.stub('Tag', stub[:tag_list])) unless stub[:tag_list].nil?
        xml << Hearth::XML::Node.new('OriginalSnapshotCreateTime', Hearth::TimeHelper.to_date_time(stub[:original_snapshot_create_time])) unless stub[:original_snapshot_create_time].nil?
        xml << Hearth::XML::Node.new('SnapshotTarget', stub[:snapshot_target].to_s) unless stub[:snapshot_target].nil?
        xml
      end
    end

    # List Stubber for ProcessorFeatureList
    class ProcessorFeatureList
      def self.default(visited=[])
        return nil if visited.include?('ProcessorFeatureList')
        visited = visited + ['ProcessorFeatureList']
        [
          ProcessorFeature.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::ProcessorFeature.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ProcessorFeature
    class ProcessorFeature
      def self.default(visited=[])
        return nil if visited.include?('ProcessorFeature')
        visited = visited + ['ProcessorFeature']
        {
          name: 'name',
          value: 'value',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ProcessorFeature.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Hearth::XML::Node.new('Value', stub[:value].to_s) unless stub[:value].nil?
        xml
      end
    end

    # Operation Stubber for CopyOptionGroup
    class CopyOptionGroup
      def self.default(visited=[])
        {
          option_group: OptionGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CopyOptionGroupResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('CopyOptionGroupResult')
        xml << Stubs::OptionGroup.stub('OptionGroup', stub[:option_group]) unless stub[:option_group].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for OptionGroup
    class OptionGroup
      def self.default(visited=[])
        return nil if visited.include?('OptionGroup')
        visited = visited + ['OptionGroup']
        {
          option_group_name: 'option_group_name',
          option_group_description: 'option_group_description',
          engine_name: 'engine_name',
          major_engine_version: 'major_engine_version',
          options: OptionsList.default(visited),
          allows_vpc_and_non_vpc_instance_memberships: false,
          vpc_id: 'vpc_id',
          option_group_arn: 'option_group_arn',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::OptionGroup.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('OptionGroupName', stub[:option_group_name].to_s) unless stub[:option_group_name].nil?
        xml << Hearth::XML::Node.new('OptionGroupDescription', stub[:option_group_description].to_s) unless stub[:option_group_description].nil?
        xml << Hearth::XML::Node.new('EngineName', stub[:engine_name].to_s) unless stub[:engine_name].nil?
        xml << Hearth::XML::Node.new('MajorEngineVersion', stub[:major_engine_version].to_s) unless stub[:major_engine_version].nil?
        xml << Hearth::XML::Node.new('Options', Stubs::OptionsList.stub('Option', stub[:options])) unless stub[:options].nil?
        xml << Hearth::XML::Node.new('AllowsVpcAndNonVpcInstanceMemberships', stub[:allows_vpc_and_non_vpc_instance_memberships].to_s) unless stub[:allows_vpc_and_non_vpc_instance_memberships].nil?
        xml << Hearth::XML::Node.new('VpcId', stub[:vpc_id].to_s) unless stub[:vpc_id].nil?
        xml << Hearth::XML::Node.new('OptionGroupArn', stub[:option_group_arn].to_s) unless stub[:option_group_arn].nil?
        xml
      end
    end

    # List Stubber for OptionsList
    class OptionsList
      def self.default(visited=[])
        return nil if visited.include?('OptionsList')
        visited = visited + ['OptionsList']
        [
          Option.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::Option.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Option
    class Option
      def self.default(visited=[])
        return nil if visited.include?('Option')
        visited = visited + ['Option']
        {
          option_name: 'option_name',
          option_description: 'option_description',
          persistent: false,
          permanent: false,
          port: 1,
          option_version: 'option_version',
          option_settings: OptionSettingConfigurationList.default(visited),
          db_security_group_memberships: DBSecurityGroupMembershipList.default(visited),
          vpc_security_group_memberships: VpcSecurityGroupMembershipList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Option.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('OptionName', stub[:option_name].to_s) unless stub[:option_name].nil?
        xml << Hearth::XML::Node.new('OptionDescription', stub[:option_description].to_s) unless stub[:option_description].nil?
        xml << Hearth::XML::Node.new('Persistent', stub[:persistent].to_s) unless stub[:persistent].nil?
        xml << Hearth::XML::Node.new('Permanent', stub[:permanent].to_s) unless stub[:permanent].nil?
        xml << Hearth::XML::Node.new('Port', stub[:port].to_s) unless stub[:port].nil?
        xml << Hearth::XML::Node.new('OptionVersion', stub[:option_version].to_s) unless stub[:option_version].nil?
        xml << Hearth::XML::Node.new('OptionSettings', Stubs::OptionSettingConfigurationList.stub('OptionSetting', stub[:option_settings])) unless stub[:option_settings].nil?
        xml << Hearth::XML::Node.new('DBSecurityGroupMemberships', Stubs::DBSecurityGroupMembershipList.stub('DBSecurityGroup', stub[:db_security_group_memberships])) unless stub[:db_security_group_memberships].nil?
        xml << Hearth::XML::Node.new('VpcSecurityGroupMemberships', Stubs::VpcSecurityGroupMembershipList.stub('VpcSecurityGroupMembership', stub[:vpc_security_group_memberships])) unless stub[:vpc_security_group_memberships].nil?
        xml
      end
    end

    # List Stubber for VpcSecurityGroupMembershipList
    class VpcSecurityGroupMembershipList
      def self.default(visited=[])
        return nil if visited.include?('VpcSecurityGroupMembershipList')
        visited = visited + ['VpcSecurityGroupMembershipList']
        [
          VpcSecurityGroupMembership.default(visited)
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

    # List Stubber for DBSecurityGroupMembershipList
    class DBSecurityGroupMembershipList
      def self.default(visited=[])
        return nil if visited.include?('DBSecurityGroupMembershipList')
        visited = visited + ['DBSecurityGroupMembershipList']
        [
          DBSecurityGroupMembership.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::DBSecurityGroupMembership.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for DBSecurityGroupMembership
    class DBSecurityGroupMembership
      def self.default(visited=[])
        return nil if visited.include?('DBSecurityGroupMembership')
        visited = visited + ['DBSecurityGroupMembership']
        {
          db_security_group_name: 'db_security_group_name',
          status: 'status',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DBSecurityGroupMembership.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('DBSecurityGroupName', stub[:db_security_group_name].to_s) unless stub[:db_security_group_name].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml
      end
    end

    # List Stubber for OptionSettingConfigurationList
    class OptionSettingConfigurationList
      def self.default(visited=[])
        return nil if visited.include?('OptionSettingConfigurationList')
        visited = visited + ['OptionSettingConfigurationList']
        [
          OptionSetting.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::OptionSetting.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for OptionSetting
    class OptionSetting
      def self.default(visited=[])
        return nil if visited.include?('OptionSetting')
        visited = visited + ['OptionSetting']
        {
          name: 'name',
          value: 'value',
          default_value: 'default_value',
          description: 'description',
          apply_type: 'apply_type',
          data_type: 'data_type',
          allowed_values: 'allowed_values',
          is_modifiable: false,
          is_collection: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::OptionSetting.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Hearth::XML::Node.new('Value', stub[:value].to_s) unless stub[:value].nil?
        xml << Hearth::XML::Node.new('DefaultValue', stub[:default_value].to_s) unless stub[:default_value].nil?
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        xml << Hearth::XML::Node.new('ApplyType', stub[:apply_type].to_s) unless stub[:apply_type].nil?
        xml << Hearth::XML::Node.new('DataType', stub[:data_type].to_s) unless stub[:data_type].nil?
        xml << Hearth::XML::Node.new('AllowedValues', stub[:allowed_values].to_s) unless stub[:allowed_values].nil?
        xml << Hearth::XML::Node.new('IsModifiable', stub[:is_modifiable].to_s) unless stub[:is_modifiable].nil?
        xml << Hearth::XML::Node.new('IsCollection', stub[:is_collection].to_s) unless stub[:is_collection].nil?
        xml
      end
    end

    # Operation Stubber for CreateCustomDBEngineVersion
    class CreateCustomDBEngineVersion
      def self.default(visited=[])
        {
          engine: 'engine',
          engine_version: 'engine_version',
          db_parameter_group_family: 'db_parameter_group_family',
          db_engine_description: 'db_engine_description',
          db_engine_version_description: 'db_engine_version_description',
          default_character_set: CharacterSet.default(visited),
          supported_character_sets: SupportedCharacterSetsList.default(visited),
          supported_nchar_character_sets: SupportedCharacterSetsList.default(visited),
          valid_upgrade_target: ValidUpgradeTargetList.default(visited),
          supported_timezones: SupportedTimezonesList.default(visited),
          exportable_log_types: LogTypeList.default(visited),
          supports_log_exports_to_cloudwatch_logs: false,
          supports_read_replica: false,
          supported_engine_modes: EngineModeList.default(visited),
          supported_feature_names: FeatureNameList.default(visited),
          status: 'status',
          supports_parallel_query: false,
          supports_global_databases: false,
          major_engine_version: 'major_engine_version',
          database_installation_files_s3_bucket_name: 'database_installation_files_s3_bucket_name',
          database_installation_files_s3_prefix: 'database_installation_files_s3_prefix',
          db_engine_version_arn: 'db_engine_version_arn',
          kms_key_id: 'kms_key_id',
          create_time: Time.now,
          tag_list: TagList.default(visited),
          supports_babelfish: false,
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateCustomDBEngineVersionResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('CreateCustomDBEngineVersionResult')
        xml << Hearth::XML::Node.new('Engine', stub[:engine].to_s) unless stub[:engine].nil?
        xml << Hearth::XML::Node.new('EngineVersion', stub[:engine_version].to_s) unless stub[:engine_version].nil?
        xml << Hearth::XML::Node.new('DBParameterGroupFamily', stub[:db_parameter_group_family].to_s) unless stub[:db_parameter_group_family].nil?
        xml << Hearth::XML::Node.new('DBEngineDescription', stub[:db_engine_description].to_s) unless stub[:db_engine_description].nil?
        xml << Hearth::XML::Node.new('DBEngineVersionDescription', stub[:db_engine_version_description].to_s) unless stub[:db_engine_version_description].nil?
        xml << Stubs::CharacterSet.stub('DefaultCharacterSet', stub[:default_character_set]) unless stub[:default_character_set].nil?
        xml << Hearth::XML::Node.new('SupportedCharacterSets', Stubs::SupportedCharacterSetsList.stub('CharacterSet', stub[:supported_character_sets])) unless stub[:supported_character_sets].nil?
        xml << Hearth::XML::Node.new('SupportedNcharCharacterSets', Stubs::SupportedCharacterSetsList.stub('CharacterSet', stub[:supported_nchar_character_sets])) unless stub[:supported_nchar_character_sets].nil?
        xml << Hearth::XML::Node.new('ValidUpgradeTarget', Stubs::ValidUpgradeTargetList.stub('UpgradeTarget', stub[:valid_upgrade_target])) unless stub[:valid_upgrade_target].nil?
        xml << Hearth::XML::Node.new('SupportedTimezones', Stubs::SupportedTimezonesList.stub('Timezone', stub[:supported_timezones])) unless stub[:supported_timezones].nil?
        xml << Hearth::XML::Node.new('ExportableLogTypes', Stubs::LogTypeList.stub('member', stub[:exportable_log_types])) unless stub[:exportable_log_types].nil?
        xml << Hearth::XML::Node.new('SupportsLogExportsToCloudwatchLogs', stub[:supports_log_exports_to_cloudwatch_logs].to_s) unless stub[:supports_log_exports_to_cloudwatch_logs].nil?
        xml << Hearth::XML::Node.new('SupportsReadReplica', stub[:supports_read_replica].to_s) unless stub[:supports_read_replica].nil?
        xml << Hearth::XML::Node.new('SupportedEngineModes', Stubs::EngineModeList.stub('member', stub[:supported_engine_modes])) unless stub[:supported_engine_modes].nil?
        xml << Hearth::XML::Node.new('SupportedFeatureNames', Stubs::FeatureNameList.stub('member', stub[:supported_feature_names])) unless stub[:supported_feature_names].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('SupportsParallelQuery', stub[:supports_parallel_query].to_s) unless stub[:supports_parallel_query].nil?
        xml << Hearth::XML::Node.new('SupportsGlobalDatabases', stub[:supports_global_databases].to_s) unless stub[:supports_global_databases].nil?
        xml << Hearth::XML::Node.new('MajorEngineVersion', stub[:major_engine_version].to_s) unless stub[:major_engine_version].nil?
        xml << Hearth::XML::Node.new('DatabaseInstallationFilesS3BucketName', stub[:database_installation_files_s3_bucket_name].to_s) unless stub[:database_installation_files_s3_bucket_name].nil?
        xml << Hearth::XML::Node.new('DatabaseInstallationFilesS3Prefix', stub[:database_installation_files_s3_prefix].to_s) unless stub[:database_installation_files_s3_prefix].nil?
        xml << Hearth::XML::Node.new('DBEngineVersionArn', stub[:db_engine_version_arn].to_s) unless stub[:db_engine_version_arn].nil?
        xml << Hearth::XML::Node.new('KMSKeyId', stub[:kms_key_id].to_s) unless stub[:kms_key_id].nil?
        xml << Hearth::XML::Node.new('CreateTime', Hearth::TimeHelper.to_date_time(stub[:create_time])) unless stub[:create_time].nil?
        xml << Hearth::XML::Node.new('TagList', Stubs::TagList.stub('Tag', stub[:tag_list])) unless stub[:tag_list].nil?
        xml << Hearth::XML::Node.new('SupportsBabelfish', stub[:supports_babelfish].to_s) unless stub[:supports_babelfish].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for FeatureNameList
    class FeatureNameList
      def self.default(visited=[])
        return nil if visited.include?('FeatureNameList')
        visited = visited + ['FeatureNameList']
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

    # List Stubber for EngineModeList
    class EngineModeList
      def self.default(visited=[])
        return nil if visited.include?('EngineModeList')
        visited = visited + ['EngineModeList']
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

    # List Stubber for SupportedTimezonesList
    class SupportedTimezonesList
      def self.default(visited=[])
        return nil if visited.include?('SupportedTimezonesList')
        visited = visited + ['SupportedTimezonesList']
        [
          Timezone.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::Timezone.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Timezone
    class Timezone
      def self.default(visited=[])
        return nil if visited.include?('Timezone')
        visited = visited + ['Timezone']
        {
          timezone_name: 'timezone_name',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Timezone.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('TimezoneName', stub[:timezone_name].to_s) unless stub[:timezone_name].nil?
        xml
      end
    end

    # List Stubber for ValidUpgradeTargetList
    class ValidUpgradeTargetList
      def self.default(visited=[])
        return nil if visited.include?('ValidUpgradeTargetList')
        visited = visited + ['ValidUpgradeTargetList']
        [
          UpgradeTarget.default(visited)
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
          supported_engine_modes: EngineModeList.default(visited),
          supports_parallel_query: false,
          supports_global_databases: false,
          supports_babelfish: false,
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
        xml << Hearth::XML::Node.new('SupportedEngineModes', Stubs::EngineModeList.stub('member', stub[:supported_engine_modes])) unless stub[:supported_engine_modes].nil?
        xml << Hearth::XML::Node.new('SupportsParallelQuery', stub[:supports_parallel_query].to_s) unless stub[:supports_parallel_query].nil?
        xml << Hearth::XML::Node.new('SupportsGlobalDatabases', stub[:supports_global_databases].to_s) unless stub[:supports_global_databases].nil?
        xml << Hearth::XML::Node.new('SupportsBabelfish', stub[:supports_babelfish].to_s) unless stub[:supports_babelfish].nil?
        xml
      end
    end

    # List Stubber for SupportedCharacterSetsList
    class SupportedCharacterSetsList
      def self.default(visited=[])
        return nil if visited.include?('SupportedCharacterSetsList')
        visited = visited + ['SupportedCharacterSetsList']
        [
          CharacterSet.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::CharacterSet.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for CharacterSet
    class CharacterSet
      def self.default(visited=[])
        return nil if visited.include?('CharacterSet')
        visited = visited + ['CharacterSet']
        {
          character_set_name: 'character_set_name',
          character_set_description: 'character_set_description',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::CharacterSet.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('CharacterSetName', stub[:character_set_name].to_s) unless stub[:character_set_name].nil?
        xml << Hearth::XML::Node.new('CharacterSetDescription', stub[:character_set_description].to_s) unless stub[:character_set_description].nil?
        xml
      end
    end

    # Operation Stubber for CreateDBCluster
    class CreateDBCluster
      def self.default(visited=[])
        {
          db_cluster: DBCluster.default(visited),
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
          allocated_storage: 1,
          availability_zones: AvailabilityZones.default(visited),
          backup_retention_period: 1,
          character_set_name: 'character_set_name',
          database_name: 'database_name',
          db_cluster_identifier: 'db_cluster_identifier',
          db_cluster_parameter_group: 'db_cluster_parameter_group',
          db_subnet_group: 'db_subnet_group',
          status: 'status',
          automatic_restart_time: Time.now,
          percent_progress: 'percent_progress',
          earliest_restorable_time: Time.now,
          endpoint: 'endpoint',
          reader_endpoint: 'reader_endpoint',
          custom_endpoints: StringList.default(visited),
          multi_az: false,
          engine: 'engine',
          engine_version: 'engine_version',
          latest_restorable_time: Time.now,
          port: 1,
          master_username: 'master_username',
          db_cluster_option_group_memberships: DBClusterOptionGroupMemberships.default(visited),
          preferred_backup_window: 'preferred_backup_window',
          preferred_maintenance_window: 'preferred_maintenance_window',
          replication_source_identifier: 'replication_source_identifier',
          read_replica_identifiers: ReadReplicaIdentifierList.default(visited),
          db_cluster_members: DBClusterMemberList.default(visited),
          vpc_security_groups: VpcSecurityGroupMembershipList.default(visited),
          hosted_zone_id: 'hosted_zone_id',
          storage_encrypted: false,
          kms_key_id: 'kms_key_id',
          db_cluster_resource_id: 'db_cluster_resource_id',
          db_cluster_arn: 'db_cluster_arn',
          associated_roles: DBClusterRoles.default(visited),
          iam_database_authentication_enabled: false,
          clone_group_id: 'clone_group_id',
          cluster_create_time: Time.now,
          earliest_backtrack_time: Time.now,
          backtrack_window: 1,
          backtrack_consumed_change_records: 1,
          enabled_cloudwatch_logs_exports: LogTypeList.default(visited),
          capacity: 1,
          engine_mode: 'engine_mode',
          scaling_configuration_info: ScalingConfigurationInfo.default(visited),
          deletion_protection: false,
          http_endpoint_enabled: false,
          activity_stream_mode: 'activity_stream_mode',
          activity_stream_status: 'activity_stream_status',
          activity_stream_kms_key_id: 'activity_stream_kms_key_id',
          activity_stream_kinesis_stream_name: 'activity_stream_kinesis_stream_name',
          copy_tags_to_snapshot: false,
          cross_account_clone: false,
          domain_memberships: DomainMembershipList.default(visited),
          tag_list: TagList.default(visited),
          global_write_forwarding_status: 'global_write_forwarding_status',
          global_write_forwarding_requested: false,
          pending_modified_values: ClusterPendingModifiedValues.default(visited),
          db_cluster_instance_class: 'db_cluster_instance_class',
          storage_type: 'storage_type',
          iops: 1,
          publicly_accessible: false,
          auto_minor_version_upgrade: false,
          monitoring_interval: 1,
          monitoring_role_arn: 'monitoring_role_arn',
          performance_insights_enabled: false,
          performance_insights_kms_key_id: 'performance_insights_kms_key_id',
          performance_insights_retention_period: 1,
          serverless_v2_scaling_configuration: ServerlessV2ScalingConfigurationInfo.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DBCluster.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('AllocatedStorage', stub[:allocated_storage].to_s) unless stub[:allocated_storage].nil?
        xml << Hearth::XML::Node.new('AvailabilityZones', Stubs::AvailabilityZones.stub('AvailabilityZone', stub[:availability_zones])) unless stub[:availability_zones].nil?
        xml << Hearth::XML::Node.new('BackupRetentionPeriod', stub[:backup_retention_period].to_s) unless stub[:backup_retention_period].nil?
        xml << Hearth::XML::Node.new('CharacterSetName', stub[:character_set_name].to_s) unless stub[:character_set_name].nil?
        xml << Hearth::XML::Node.new('DatabaseName', stub[:database_name].to_s) unless stub[:database_name].nil?
        xml << Hearth::XML::Node.new('DBClusterIdentifier', stub[:db_cluster_identifier].to_s) unless stub[:db_cluster_identifier].nil?
        xml << Hearth::XML::Node.new('DBClusterParameterGroup', stub[:db_cluster_parameter_group].to_s) unless stub[:db_cluster_parameter_group].nil?
        xml << Hearth::XML::Node.new('DBSubnetGroup', stub[:db_subnet_group].to_s) unless stub[:db_subnet_group].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('AutomaticRestartTime', Hearth::TimeHelper.to_date_time(stub[:automatic_restart_time])) unless stub[:automatic_restart_time].nil?
        xml << Hearth::XML::Node.new('PercentProgress', stub[:percent_progress].to_s) unless stub[:percent_progress].nil?
        xml << Hearth::XML::Node.new('EarliestRestorableTime', Hearth::TimeHelper.to_date_time(stub[:earliest_restorable_time])) unless stub[:earliest_restorable_time].nil?
        xml << Hearth::XML::Node.new('Endpoint', stub[:endpoint].to_s) unless stub[:endpoint].nil?
        xml << Hearth::XML::Node.new('ReaderEndpoint', stub[:reader_endpoint].to_s) unless stub[:reader_endpoint].nil?
        xml << Hearth::XML::Node.new('CustomEndpoints', Stubs::StringList.stub('member', stub[:custom_endpoints])) unless stub[:custom_endpoints].nil?
        xml << Hearth::XML::Node.new('MultiAZ', stub[:multi_az].to_s) unless stub[:multi_az].nil?
        xml << Hearth::XML::Node.new('Engine', stub[:engine].to_s) unless stub[:engine].nil?
        xml << Hearth::XML::Node.new('EngineVersion', stub[:engine_version].to_s) unless stub[:engine_version].nil?
        xml << Hearth::XML::Node.new('LatestRestorableTime', Hearth::TimeHelper.to_date_time(stub[:latest_restorable_time])) unless stub[:latest_restorable_time].nil?
        xml << Hearth::XML::Node.new('Port', stub[:port].to_s) unless stub[:port].nil?
        xml << Hearth::XML::Node.new('MasterUsername', stub[:master_username].to_s) unless stub[:master_username].nil?
        xml << Hearth::XML::Node.new('DBClusterOptionGroupMemberships', Stubs::DBClusterOptionGroupMemberships.stub('DBClusterOptionGroup', stub[:db_cluster_option_group_memberships])) unless stub[:db_cluster_option_group_memberships].nil?
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
        xml << Hearth::XML::Node.new('IAMDatabaseAuthenticationEnabled', stub[:iam_database_authentication_enabled].to_s) unless stub[:iam_database_authentication_enabled].nil?
        xml << Hearth::XML::Node.new('CloneGroupId', stub[:clone_group_id].to_s) unless stub[:clone_group_id].nil?
        xml << Hearth::XML::Node.new('ClusterCreateTime', Hearth::TimeHelper.to_date_time(stub[:cluster_create_time])) unless stub[:cluster_create_time].nil?
        xml << Hearth::XML::Node.new('EarliestBacktrackTime', Hearth::TimeHelper.to_date_time(stub[:earliest_backtrack_time])) unless stub[:earliest_backtrack_time].nil?
        xml << Hearth::XML::Node.new('BacktrackWindow', stub[:backtrack_window].to_s) unless stub[:backtrack_window].nil?
        xml << Hearth::XML::Node.new('BacktrackConsumedChangeRecords', stub[:backtrack_consumed_change_records].to_s) unless stub[:backtrack_consumed_change_records].nil?
        xml << Hearth::XML::Node.new('EnabledCloudwatchLogsExports', Stubs::LogTypeList.stub('member', stub[:enabled_cloudwatch_logs_exports])) unless stub[:enabled_cloudwatch_logs_exports].nil?
        xml << Hearth::XML::Node.new('Capacity', stub[:capacity].to_s) unless stub[:capacity].nil?
        xml << Hearth::XML::Node.new('EngineMode', stub[:engine_mode].to_s) unless stub[:engine_mode].nil?
        xml << Stubs::ScalingConfigurationInfo.stub('ScalingConfigurationInfo', stub[:scaling_configuration_info]) unless stub[:scaling_configuration_info].nil?
        xml << Hearth::XML::Node.new('DeletionProtection', stub[:deletion_protection].to_s) unless stub[:deletion_protection].nil?
        xml << Hearth::XML::Node.new('HttpEndpointEnabled', stub[:http_endpoint_enabled].to_s) unless stub[:http_endpoint_enabled].nil?
        xml << Hearth::XML::Node.new('ActivityStreamMode', stub[:activity_stream_mode].to_s) unless stub[:activity_stream_mode].nil?
        xml << Hearth::XML::Node.new('ActivityStreamStatus', stub[:activity_stream_status].to_s) unless stub[:activity_stream_status].nil?
        xml << Hearth::XML::Node.new('ActivityStreamKmsKeyId', stub[:activity_stream_kms_key_id].to_s) unless stub[:activity_stream_kms_key_id].nil?
        xml << Hearth::XML::Node.new('ActivityStreamKinesisStreamName', stub[:activity_stream_kinesis_stream_name].to_s) unless stub[:activity_stream_kinesis_stream_name].nil?
        xml << Hearth::XML::Node.new('CopyTagsToSnapshot', stub[:copy_tags_to_snapshot].to_s) unless stub[:copy_tags_to_snapshot].nil?
        xml << Hearth::XML::Node.new('CrossAccountClone', stub[:cross_account_clone].to_s) unless stub[:cross_account_clone].nil?
        xml << Hearth::XML::Node.new('DomainMemberships', Stubs::DomainMembershipList.stub('DomainMembership', stub[:domain_memberships])) unless stub[:domain_memberships].nil?
        xml << Hearth::XML::Node.new('TagList', Stubs::TagList.stub('Tag', stub[:tag_list])) unless stub[:tag_list].nil?
        xml << Hearth::XML::Node.new('GlobalWriteForwardingStatus', stub[:global_write_forwarding_status].to_s) unless stub[:global_write_forwarding_status].nil?
        xml << Hearth::XML::Node.new('GlobalWriteForwardingRequested', stub[:global_write_forwarding_requested].to_s) unless stub[:global_write_forwarding_requested].nil?
        xml << Stubs::ClusterPendingModifiedValues.stub('PendingModifiedValues', stub[:pending_modified_values]) unless stub[:pending_modified_values].nil?
        xml << Hearth::XML::Node.new('DBClusterInstanceClass', stub[:db_cluster_instance_class].to_s) unless stub[:db_cluster_instance_class].nil?
        xml << Hearth::XML::Node.new('StorageType', stub[:storage_type].to_s) unless stub[:storage_type].nil?
        xml << Hearth::XML::Node.new('Iops', stub[:iops].to_s) unless stub[:iops].nil?
        xml << Hearth::XML::Node.new('PubliclyAccessible', stub[:publicly_accessible].to_s) unless stub[:publicly_accessible].nil?
        xml << Hearth::XML::Node.new('AutoMinorVersionUpgrade', stub[:auto_minor_version_upgrade].to_s) unless stub[:auto_minor_version_upgrade].nil?
        xml << Hearth::XML::Node.new('MonitoringInterval', stub[:monitoring_interval].to_s) unless stub[:monitoring_interval].nil?
        xml << Hearth::XML::Node.new('MonitoringRoleArn', stub[:monitoring_role_arn].to_s) unless stub[:monitoring_role_arn].nil?
        xml << Hearth::XML::Node.new('PerformanceInsightsEnabled', stub[:performance_insights_enabled].to_s) unless stub[:performance_insights_enabled].nil?
        xml << Hearth::XML::Node.new('PerformanceInsightsKMSKeyId', stub[:performance_insights_kms_key_id].to_s) unless stub[:performance_insights_kms_key_id].nil?
        xml << Hearth::XML::Node.new('PerformanceInsightsRetentionPeriod', stub[:performance_insights_retention_period].to_s) unless stub[:performance_insights_retention_period].nil?
        xml << Stubs::ServerlessV2ScalingConfigurationInfo.stub('ServerlessV2ScalingConfiguration', stub[:serverless_v2_scaling_configuration]) unless stub[:serverless_v2_scaling_configuration].nil?
        xml
      end
    end

    # Structure Stubber for ServerlessV2ScalingConfigurationInfo
    class ServerlessV2ScalingConfigurationInfo
      def self.default(visited=[])
        return nil if visited.include?('ServerlessV2ScalingConfigurationInfo')
        visited = visited + ['ServerlessV2ScalingConfigurationInfo']
        {
          min_capacity: 1.0,
          max_capacity: 1.0,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ServerlessV2ScalingConfigurationInfo.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('MinCapacity', Hearth::NumberHelper.serialize(stub[:min_capacity]).to_s) unless stub[:min_capacity].nil?
        xml << Hearth::XML::Node.new('MaxCapacity', Hearth::NumberHelper.serialize(stub[:max_capacity]).to_s) unless stub[:max_capacity].nil?
        xml
      end
    end

    # Structure Stubber for ClusterPendingModifiedValues
    class ClusterPendingModifiedValues
      def self.default(visited=[])
        return nil if visited.include?('ClusterPendingModifiedValues')
        visited = visited + ['ClusterPendingModifiedValues']
        {
          pending_cloudwatch_logs_exports: PendingCloudwatchLogsExports.default(visited),
          db_cluster_identifier: 'db_cluster_identifier',
          master_user_password: 'master_user_password',
          iam_database_authentication_enabled: false,
          engine_version: 'engine_version',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ClusterPendingModifiedValues.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Stubs::PendingCloudwatchLogsExports.stub('PendingCloudwatchLogsExports', stub[:pending_cloudwatch_logs_exports]) unless stub[:pending_cloudwatch_logs_exports].nil?
        xml << Hearth::XML::Node.new('DBClusterIdentifier', stub[:db_cluster_identifier].to_s) unless stub[:db_cluster_identifier].nil?
        xml << Hearth::XML::Node.new('MasterUserPassword', stub[:master_user_password].to_s) unless stub[:master_user_password].nil?
        xml << Hearth::XML::Node.new('IAMDatabaseAuthenticationEnabled', stub[:iam_database_authentication_enabled].to_s) unless stub[:iam_database_authentication_enabled].nil?
        xml << Hearth::XML::Node.new('EngineVersion', stub[:engine_version].to_s) unless stub[:engine_version].nil?
        xml
      end
    end

    # Structure Stubber for PendingCloudwatchLogsExports
    class PendingCloudwatchLogsExports
      def self.default(visited=[])
        return nil if visited.include?('PendingCloudwatchLogsExports')
        visited = visited + ['PendingCloudwatchLogsExports']
        {
          log_types_to_enable: LogTypeList.default(visited),
          log_types_to_disable: LogTypeList.default(visited),
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

    # List Stubber for DomainMembershipList
    class DomainMembershipList
      def self.default(visited=[])
        return nil if visited.include?('DomainMembershipList')
        visited = visited + ['DomainMembershipList']
        [
          DomainMembership.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::DomainMembership.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for DomainMembership
    class DomainMembership
      def self.default(visited=[])
        return nil if visited.include?('DomainMembership')
        visited = visited + ['DomainMembership']
        {
          domain: 'domain',
          status: 'status',
          fqdn: 'fqdn',
          iam_role_name: 'iam_role_name',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DomainMembership.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Domain', stub[:domain].to_s) unless stub[:domain].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('FQDN', stub[:fqdn].to_s) unless stub[:fqdn].nil?
        xml << Hearth::XML::Node.new('IAMRoleName', stub[:iam_role_name].to_s) unless stub[:iam_role_name].nil?
        xml
      end
    end

    # Structure Stubber for ScalingConfigurationInfo
    class ScalingConfigurationInfo
      def self.default(visited=[])
        return nil if visited.include?('ScalingConfigurationInfo')
        visited = visited + ['ScalingConfigurationInfo']
        {
          min_capacity: 1,
          max_capacity: 1,
          auto_pause: false,
          seconds_until_auto_pause: 1,
          timeout_action: 'timeout_action',
          seconds_before_timeout: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ScalingConfigurationInfo.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('MinCapacity', stub[:min_capacity].to_s) unless stub[:min_capacity].nil?
        xml << Hearth::XML::Node.new('MaxCapacity', stub[:max_capacity].to_s) unless stub[:max_capacity].nil?
        xml << Hearth::XML::Node.new('AutoPause', stub[:auto_pause].to_s) unless stub[:auto_pause].nil?
        xml << Hearth::XML::Node.new('SecondsUntilAutoPause', stub[:seconds_until_auto_pause].to_s) unless stub[:seconds_until_auto_pause].nil?
        xml << Hearth::XML::Node.new('TimeoutAction', stub[:timeout_action].to_s) unless stub[:timeout_action].nil?
        xml << Hearth::XML::Node.new('SecondsBeforeTimeout', stub[:seconds_before_timeout].to_s) unless stub[:seconds_before_timeout].nil?
        xml
      end
    end

    # List Stubber for DBClusterRoles
    class DBClusterRoles
      def self.default(visited=[])
        return nil if visited.include?('DBClusterRoles')
        visited = visited + ['DBClusterRoles']
        [
          DBClusterRole.default(visited)
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
          feature_name: 'feature_name',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DBClusterRole.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('RoleArn', stub[:role_arn].to_s) unless stub[:role_arn].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('FeatureName', stub[:feature_name].to_s) unless stub[:feature_name].nil?
        xml
      end
    end

    # List Stubber for DBClusterMemberList
    class DBClusterMemberList
      def self.default(visited=[])
        return nil if visited.include?('DBClusterMemberList')
        visited = visited + ['DBClusterMemberList']
        [
          DBClusterMember.default(visited)
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

    # List Stubber for DBClusterOptionGroupMemberships
    class DBClusterOptionGroupMemberships
      def self.default(visited=[])
        return nil if visited.include?('DBClusterOptionGroupMemberships')
        visited = visited + ['DBClusterOptionGroupMemberships']
        [
          DBClusterOptionGroupStatus.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::DBClusterOptionGroupStatus.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for DBClusterOptionGroupStatus
    class DBClusterOptionGroupStatus
      def self.default(visited=[])
        return nil if visited.include?('DBClusterOptionGroupStatus')
        visited = visited + ['DBClusterOptionGroupStatus']
        {
          db_cluster_option_group_name: 'db_cluster_option_group_name',
          status: 'status',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DBClusterOptionGroupStatus.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('DBClusterOptionGroupName', stub[:db_cluster_option_group_name].to_s) unless stub[:db_cluster_option_group_name].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml
      end
    end

    # Operation Stubber for CreateDBClusterEndpoint
    class CreateDBClusterEndpoint
      def self.default(visited=[])
        {
          db_cluster_endpoint_identifier: 'db_cluster_endpoint_identifier',
          db_cluster_identifier: 'db_cluster_identifier',
          db_cluster_endpoint_resource_identifier: 'db_cluster_endpoint_resource_identifier',
          endpoint: 'endpoint',
          status: 'status',
          endpoint_type: 'endpoint_type',
          custom_endpoint_type: 'custom_endpoint_type',
          static_members: StringList.default(visited),
          excluded_members: StringList.default(visited),
          db_cluster_endpoint_arn: 'db_cluster_endpoint_arn',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateDBClusterEndpointResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('CreateDBClusterEndpointResult')
        xml << Hearth::XML::Node.new('DBClusterEndpointIdentifier', stub[:db_cluster_endpoint_identifier].to_s) unless stub[:db_cluster_endpoint_identifier].nil?
        xml << Hearth::XML::Node.new('DBClusterIdentifier', stub[:db_cluster_identifier].to_s) unless stub[:db_cluster_identifier].nil?
        xml << Hearth::XML::Node.new('DBClusterEndpointResourceIdentifier', stub[:db_cluster_endpoint_resource_identifier].to_s) unless stub[:db_cluster_endpoint_resource_identifier].nil?
        xml << Hearth::XML::Node.new('Endpoint', stub[:endpoint].to_s) unless stub[:endpoint].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('EndpointType', stub[:endpoint_type].to_s) unless stub[:endpoint_type].nil?
        xml << Hearth::XML::Node.new('CustomEndpointType', stub[:custom_endpoint_type].to_s) unless stub[:custom_endpoint_type].nil?
        xml << Hearth::XML::Node.new('StaticMembers', Stubs::StringList.stub('member', stub[:static_members])) unless stub[:static_members].nil?
        xml << Hearth::XML::Node.new('ExcludedMembers', Stubs::StringList.stub('member', stub[:excluded_members])) unless stub[:excluded_members].nil?
        xml << Hearth::XML::Node.new('DBClusterEndpointArn', stub[:db_cluster_endpoint_arn].to_s) unless stub[:db_cluster_endpoint_arn].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateDBClusterParameterGroup
    class CreateDBClusterParameterGroup
      def self.default(visited=[])
        {
          db_cluster_parameter_group: DBClusterParameterGroup.default(visited),
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
          db_cluster_snapshot: DBClusterSnapshot.default(visited),
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
          db_instance: DBInstance.default(visited),
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
          automatic_restart_time: Time.now,
          master_username: 'master_username',
          db_name: 'db_name',
          endpoint: Endpoint.default(visited),
          allocated_storage: 1,
          instance_create_time: Time.now,
          preferred_backup_window: 'preferred_backup_window',
          backup_retention_period: 1,
          db_security_groups: DBSecurityGroupMembershipList.default(visited),
          vpc_security_groups: VpcSecurityGroupMembershipList.default(visited),
          db_parameter_groups: DBParameterGroupStatusList.default(visited),
          availability_zone: 'availability_zone',
          db_subnet_group: DBSubnetGroup.default(visited),
          preferred_maintenance_window: 'preferred_maintenance_window',
          pending_modified_values: PendingModifiedValues.default(visited),
          latest_restorable_time: Time.now,
          multi_az: false,
          engine_version: 'engine_version',
          auto_minor_version_upgrade: false,
          read_replica_source_db_instance_identifier: 'read_replica_source_db_instance_identifier',
          read_replica_db_instance_identifiers: ReadReplicaDBInstanceIdentifierList.default(visited),
          read_replica_db_cluster_identifiers: ReadReplicaDBClusterIdentifierList.default(visited),
          replica_mode: 'replica_mode',
          license_model: 'license_model',
          iops: 1,
          option_group_memberships: OptionGroupMembershipList.default(visited),
          character_set_name: 'character_set_name',
          nchar_character_set_name: 'nchar_character_set_name',
          secondary_availability_zone: 'secondary_availability_zone',
          publicly_accessible: false,
          status_infos: DBInstanceStatusInfoList.default(visited),
          storage_type: 'storage_type',
          tde_credential_arn: 'tde_credential_arn',
          db_instance_port: 1,
          db_cluster_identifier: 'db_cluster_identifier',
          storage_encrypted: false,
          kms_key_id: 'kms_key_id',
          dbi_resource_id: 'dbi_resource_id',
          ca_certificate_identifier: 'ca_certificate_identifier',
          domain_memberships: DomainMembershipList.default(visited),
          copy_tags_to_snapshot: false,
          monitoring_interval: 1,
          enhanced_monitoring_resource_arn: 'enhanced_monitoring_resource_arn',
          monitoring_role_arn: 'monitoring_role_arn',
          promotion_tier: 1,
          db_instance_arn: 'db_instance_arn',
          timezone: 'timezone',
          iam_database_authentication_enabled: false,
          performance_insights_enabled: false,
          performance_insights_kms_key_id: 'performance_insights_kms_key_id',
          performance_insights_retention_period: 1,
          enabled_cloudwatch_logs_exports: LogTypeList.default(visited),
          processor_features: ProcessorFeatureList.default(visited),
          deletion_protection: false,
          associated_roles: DBInstanceRoles.default(visited),
          listener_endpoint: Endpoint.default(visited),
          max_allocated_storage: 1,
          tag_list: TagList.default(visited),
          db_instance_automated_backups_replications: DBInstanceAutomatedBackupsReplicationList.default(visited),
          customer_owned_ip_enabled: false,
          aws_backup_recovery_point_arn: 'aws_backup_recovery_point_arn',
          activity_stream_status: 'activity_stream_status',
          activity_stream_kms_key_id: 'activity_stream_kms_key_id',
          activity_stream_kinesis_stream_name: 'activity_stream_kinesis_stream_name',
          activity_stream_mode: 'activity_stream_mode',
          activity_stream_engine_native_audit_fields_included: false,
          automation_mode: 'automation_mode',
          resume_full_automation_mode_time: Time.now,
          custom_iam_instance_profile: 'custom_iam_instance_profile',
          backup_target: 'backup_target',
          network_type: 'network_type',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DBInstance.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('DBInstanceIdentifier', stub[:db_instance_identifier].to_s) unless stub[:db_instance_identifier].nil?
        xml << Hearth::XML::Node.new('DBInstanceClass', stub[:db_instance_class].to_s) unless stub[:db_instance_class].nil?
        xml << Hearth::XML::Node.new('Engine', stub[:engine].to_s) unless stub[:engine].nil?
        xml << Hearth::XML::Node.new('DBInstanceStatus', stub[:db_instance_status].to_s) unless stub[:db_instance_status].nil?
        xml << Hearth::XML::Node.new('AutomaticRestartTime', Hearth::TimeHelper.to_date_time(stub[:automatic_restart_time])) unless stub[:automatic_restart_time].nil?
        xml << Hearth::XML::Node.new('MasterUsername', stub[:master_username].to_s) unless stub[:master_username].nil?
        xml << Hearth::XML::Node.new('DBName', stub[:db_name].to_s) unless stub[:db_name].nil?
        xml << Stubs::Endpoint.stub('Endpoint', stub[:endpoint]) unless stub[:endpoint].nil?
        xml << Hearth::XML::Node.new('AllocatedStorage', stub[:allocated_storage].to_s) unless stub[:allocated_storage].nil?
        xml << Hearth::XML::Node.new('InstanceCreateTime', Hearth::TimeHelper.to_date_time(stub[:instance_create_time])) unless stub[:instance_create_time].nil?
        xml << Hearth::XML::Node.new('PreferredBackupWindow', stub[:preferred_backup_window].to_s) unless stub[:preferred_backup_window].nil?
        xml << Hearth::XML::Node.new('BackupRetentionPeriod', stub[:backup_retention_period].to_s) unless stub[:backup_retention_period].nil?
        xml << Hearth::XML::Node.new('DBSecurityGroups', Stubs::DBSecurityGroupMembershipList.stub('DBSecurityGroup', stub[:db_security_groups])) unless stub[:db_security_groups].nil?
        xml << Hearth::XML::Node.new('VpcSecurityGroups', Stubs::VpcSecurityGroupMembershipList.stub('VpcSecurityGroupMembership', stub[:vpc_security_groups])) unless stub[:vpc_security_groups].nil?
        xml << Hearth::XML::Node.new('DBParameterGroups', Stubs::DBParameterGroupStatusList.stub('DBParameterGroup', stub[:db_parameter_groups])) unless stub[:db_parameter_groups].nil?
        xml << Hearth::XML::Node.new('AvailabilityZone', stub[:availability_zone].to_s) unless stub[:availability_zone].nil?
        xml << Stubs::DBSubnetGroup.stub('DBSubnetGroup', stub[:db_subnet_group]) unless stub[:db_subnet_group].nil?
        xml << Hearth::XML::Node.new('PreferredMaintenanceWindow', stub[:preferred_maintenance_window].to_s) unless stub[:preferred_maintenance_window].nil?
        xml << Stubs::PendingModifiedValues.stub('PendingModifiedValues', stub[:pending_modified_values]) unless stub[:pending_modified_values].nil?
        xml << Hearth::XML::Node.new('LatestRestorableTime', Hearth::TimeHelper.to_date_time(stub[:latest_restorable_time])) unless stub[:latest_restorable_time].nil?
        xml << Hearth::XML::Node.new('MultiAZ', stub[:multi_az].to_s) unless stub[:multi_az].nil?
        xml << Hearth::XML::Node.new('EngineVersion', stub[:engine_version].to_s) unless stub[:engine_version].nil?
        xml << Hearth::XML::Node.new('AutoMinorVersionUpgrade', stub[:auto_minor_version_upgrade].to_s) unless stub[:auto_minor_version_upgrade].nil?
        xml << Hearth::XML::Node.new('ReadReplicaSourceDBInstanceIdentifier', stub[:read_replica_source_db_instance_identifier].to_s) unless stub[:read_replica_source_db_instance_identifier].nil?
        xml << Hearth::XML::Node.new('ReadReplicaDBInstanceIdentifiers', Stubs::ReadReplicaDBInstanceIdentifierList.stub('ReadReplicaDBInstanceIdentifier', stub[:read_replica_db_instance_identifiers])) unless stub[:read_replica_db_instance_identifiers].nil?
        xml << Hearth::XML::Node.new('ReadReplicaDBClusterIdentifiers', Stubs::ReadReplicaDBClusterIdentifierList.stub('ReadReplicaDBClusterIdentifier', stub[:read_replica_db_cluster_identifiers])) unless stub[:read_replica_db_cluster_identifiers].nil?
        xml << Hearth::XML::Node.new('ReplicaMode', stub[:replica_mode].to_s) unless stub[:replica_mode].nil?
        xml << Hearth::XML::Node.new('LicenseModel', stub[:license_model].to_s) unless stub[:license_model].nil?
        xml << Hearth::XML::Node.new('Iops', stub[:iops].to_s) unless stub[:iops].nil?
        xml << Hearth::XML::Node.new('OptionGroupMemberships', Stubs::OptionGroupMembershipList.stub('OptionGroupMembership', stub[:option_group_memberships])) unless stub[:option_group_memberships].nil?
        xml << Hearth::XML::Node.new('CharacterSetName', stub[:character_set_name].to_s) unless stub[:character_set_name].nil?
        xml << Hearth::XML::Node.new('NcharCharacterSetName', stub[:nchar_character_set_name].to_s) unless stub[:nchar_character_set_name].nil?
        xml << Hearth::XML::Node.new('SecondaryAvailabilityZone', stub[:secondary_availability_zone].to_s) unless stub[:secondary_availability_zone].nil?
        xml << Hearth::XML::Node.new('PubliclyAccessible', stub[:publicly_accessible].to_s) unless stub[:publicly_accessible].nil?
        xml << Hearth::XML::Node.new('StatusInfos', Stubs::DBInstanceStatusInfoList.stub('DBInstanceStatusInfo', stub[:status_infos])) unless stub[:status_infos].nil?
        xml << Hearth::XML::Node.new('StorageType', stub[:storage_type].to_s) unless stub[:storage_type].nil?
        xml << Hearth::XML::Node.new('TdeCredentialArn', stub[:tde_credential_arn].to_s) unless stub[:tde_credential_arn].nil?
        xml << Hearth::XML::Node.new('DbInstancePort', stub[:db_instance_port].to_s) unless stub[:db_instance_port].nil?
        xml << Hearth::XML::Node.new('DBClusterIdentifier', stub[:db_cluster_identifier].to_s) unless stub[:db_cluster_identifier].nil?
        xml << Hearth::XML::Node.new('StorageEncrypted', stub[:storage_encrypted].to_s) unless stub[:storage_encrypted].nil?
        xml << Hearth::XML::Node.new('KmsKeyId', stub[:kms_key_id].to_s) unless stub[:kms_key_id].nil?
        xml << Hearth::XML::Node.new('DbiResourceId', stub[:dbi_resource_id].to_s) unless stub[:dbi_resource_id].nil?
        xml << Hearth::XML::Node.new('CACertificateIdentifier', stub[:ca_certificate_identifier].to_s) unless stub[:ca_certificate_identifier].nil?
        xml << Hearth::XML::Node.new('DomainMemberships', Stubs::DomainMembershipList.stub('DomainMembership', stub[:domain_memberships])) unless stub[:domain_memberships].nil?
        xml << Hearth::XML::Node.new('CopyTagsToSnapshot', stub[:copy_tags_to_snapshot].to_s) unless stub[:copy_tags_to_snapshot].nil?
        xml << Hearth::XML::Node.new('MonitoringInterval', stub[:monitoring_interval].to_s) unless stub[:monitoring_interval].nil?
        xml << Hearth::XML::Node.new('EnhancedMonitoringResourceArn', stub[:enhanced_monitoring_resource_arn].to_s) unless stub[:enhanced_monitoring_resource_arn].nil?
        xml << Hearth::XML::Node.new('MonitoringRoleArn', stub[:monitoring_role_arn].to_s) unless stub[:monitoring_role_arn].nil?
        xml << Hearth::XML::Node.new('PromotionTier', stub[:promotion_tier].to_s) unless stub[:promotion_tier].nil?
        xml << Hearth::XML::Node.new('DBInstanceArn', stub[:db_instance_arn].to_s) unless stub[:db_instance_arn].nil?
        xml << Hearth::XML::Node.new('Timezone', stub[:timezone].to_s) unless stub[:timezone].nil?
        xml << Hearth::XML::Node.new('IAMDatabaseAuthenticationEnabled', stub[:iam_database_authentication_enabled].to_s) unless stub[:iam_database_authentication_enabled].nil?
        xml << Hearth::XML::Node.new('PerformanceInsightsEnabled', stub[:performance_insights_enabled].to_s) unless stub[:performance_insights_enabled].nil?
        xml << Hearth::XML::Node.new('PerformanceInsightsKMSKeyId', stub[:performance_insights_kms_key_id].to_s) unless stub[:performance_insights_kms_key_id].nil?
        xml << Hearth::XML::Node.new('PerformanceInsightsRetentionPeriod', stub[:performance_insights_retention_period].to_s) unless stub[:performance_insights_retention_period].nil?
        xml << Hearth::XML::Node.new('EnabledCloudwatchLogsExports', Stubs::LogTypeList.stub('member', stub[:enabled_cloudwatch_logs_exports])) unless stub[:enabled_cloudwatch_logs_exports].nil?
        xml << Hearth::XML::Node.new('ProcessorFeatures', Stubs::ProcessorFeatureList.stub('ProcessorFeature', stub[:processor_features])) unless stub[:processor_features].nil?
        xml << Hearth::XML::Node.new('DeletionProtection', stub[:deletion_protection].to_s) unless stub[:deletion_protection].nil?
        xml << Hearth::XML::Node.new('AssociatedRoles', Stubs::DBInstanceRoles.stub('DBInstanceRole', stub[:associated_roles])) unless stub[:associated_roles].nil?
        xml << Stubs::Endpoint.stub('ListenerEndpoint', stub[:listener_endpoint]) unless stub[:listener_endpoint].nil?
        xml << Hearth::XML::Node.new('MaxAllocatedStorage', stub[:max_allocated_storage].to_s) unless stub[:max_allocated_storage].nil?
        xml << Hearth::XML::Node.new('TagList', Stubs::TagList.stub('Tag', stub[:tag_list])) unless stub[:tag_list].nil?
        xml << Hearth::XML::Node.new('DBInstanceAutomatedBackupsReplications', Stubs::DBInstanceAutomatedBackupsReplicationList.stub('DBInstanceAutomatedBackupsReplication', stub[:db_instance_automated_backups_replications])) unless stub[:db_instance_automated_backups_replications].nil?
        xml << Hearth::XML::Node.new('CustomerOwnedIpEnabled', stub[:customer_owned_ip_enabled].to_s) unless stub[:customer_owned_ip_enabled].nil?
        xml << Hearth::XML::Node.new('AwsBackupRecoveryPointArn', stub[:aws_backup_recovery_point_arn].to_s) unless stub[:aws_backup_recovery_point_arn].nil?
        xml << Hearth::XML::Node.new('ActivityStreamStatus', stub[:activity_stream_status].to_s) unless stub[:activity_stream_status].nil?
        xml << Hearth::XML::Node.new('ActivityStreamKmsKeyId', stub[:activity_stream_kms_key_id].to_s) unless stub[:activity_stream_kms_key_id].nil?
        xml << Hearth::XML::Node.new('ActivityStreamKinesisStreamName', stub[:activity_stream_kinesis_stream_name].to_s) unless stub[:activity_stream_kinesis_stream_name].nil?
        xml << Hearth::XML::Node.new('ActivityStreamMode', stub[:activity_stream_mode].to_s) unless stub[:activity_stream_mode].nil?
        xml << Hearth::XML::Node.new('ActivityStreamEngineNativeAuditFieldsIncluded', stub[:activity_stream_engine_native_audit_fields_included].to_s) unless stub[:activity_stream_engine_native_audit_fields_included].nil?
        xml << Hearth::XML::Node.new('AutomationMode', stub[:automation_mode].to_s) unless stub[:automation_mode].nil?
        xml << Hearth::XML::Node.new('ResumeFullAutomationModeTime', Hearth::TimeHelper.to_date_time(stub[:resume_full_automation_mode_time])) unless stub[:resume_full_automation_mode_time].nil?
        xml << Hearth::XML::Node.new('CustomIamInstanceProfile', stub[:custom_iam_instance_profile].to_s) unless stub[:custom_iam_instance_profile].nil?
        xml << Hearth::XML::Node.new('BackupTarget', stub[:backup_target].to_s) unless stub[:backup_target].nil?
        xml << Hearth::XML::Node.new('NetworkType', stub[:network_type].to_s) unless stub[:network_type].nil?
        xml
      end
    end

    # List Stubber for DBInstanceAutomatedBackupsReplicationList
    class DBInstanceAutomatedBackupsReplicationList
      def self.default(visited=[])
        return nil if visited.include?('DBInstanceAutomatedBackupsReplicationList')
        visited = visited + ['DBInstanceAutomatedBackupsReplicationList']
        [
          DBInstanceAutomatedBackupsReplication.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::DBInstanceAutomatedBackupsReplication.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for DBInstanceAutomatedBackupsReplication
    class DBInstanceAutomatedBackupsReplication
      def self.default(visited=[])
        return nil if visited.include?('DBInstanceAutomatedBackupsReplication')
        visited = visited + ['DBInstanceAutomatedBackupsReplication']
        {
          db_instance_automated_backups_arn: 'db_instance_automated_backups_arn',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DBInstanceAutomatedBackupsReplication.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('DBInstanceAutomatedBackupsArn', stub[:db_instance_automated_backups_arn].to_s) unless stub[:db_instance_automated_backups_arn].nil?
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

    # List Stubber for DBInstanceRoles
    class DBInstanceRoles
      def self.default(visited=[])
        return nil if visited.include?('DBInstanceRoles')
        visited = visited + ['DBInstanceRoles']
        [
          DBInstanceRole.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::DBInstanceRole.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for DBInstanceRole
    class DBInstanceRole
      def self.default(visited=[])
        return nil if visited.include?('DBInstanceRole')
        visited = visited + ['DBInstanceRole']
        {
          role_arn: 'role_arn',
          feature_name: 'feature_name',
          status: 'status',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DBInstanceRole.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('RoleArn', stub[:role_arn].to_s) unless stub[:role_arn].nil?
        xml << Hearth::XML::Node.new('FeatureName', stub[:feature_name].to_s) unless stub[:feature_name].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml
      end
    end

    # List Stubber for DBInstanceStatusInfoList
    class DBInstanceStatusInfoList
      def self.default(visited=[])
        return nil if visited.include?('DBInstanceStatusInfoList')
        visited = visited + ['DBInstanceStatusInfoList']
        [
          DBInstanceStatusInfo.default(visited)
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

    # List Stubber for OptionGroupMembershipList
    class OptionGroupMembershipList
      def self.default(visited=[])
        return nil if visited.include?('OptionGroupMembershipList')
        visited = visited + ['OptionGroupMembershipList']
        [
          OptionGroupMembership.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::OptionGroupMembership.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for OptionGroupMembership
    class OptionGroupMembership
      def self.default(visited=[])
        return nil if visited.include?('OptionGroupMembership')
        visited = visited + ['OptionGroupMembership']
        {
          option_group_name: 'option_group_name',
          status: 'status',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::OptionGroupMembership.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('OptionGroupName', stub[:option_group_name].to_s) unless stub[:option_group_name].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml
      end
    end

    # List Stubber for ReadReplicaDBClusterIdentifierList
    class ReadReplicaDBClusterIdentifierList
      def self.default(visited=[])
        return nil if visited.include?('ReadReplicaDBClusterIdentifierList')
        visited = visited + ['ReadReplicaDBClusterIdentifierList']
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

    # List Stubber for ReadReplicaDBInstanceIdentifierList
    class ReadReplicaDBInstanceIdentifierList
      def self.default(visited=[])
        return nil if visited.include?('ReadReplicaDBInstanceIdentifierList')
        visited = visited + ['ReadReplicaDBInstanceIdentifierList']
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
          pending_cloudwatch_logs_exports: PendingCloudwatchLogsExports.default(visited),
          processor_features: ProcessorFeatureList.default(visited),
          iam_database_authentication_enabled: false,
          automation_mode: 'automation_mode',
          resume_full_automation_mode_time: Time.now,
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
        xml << Hearth::XML::Node.new('ProcessorFeatures', Stubs::ProcessorFeatureList.stub('ProcessorFeature', stub[:processor_features])) unless stub[:processor_features].nil?
        xml << Hearth::XML::Node.new('IAMDatabaseAuthenticationEnabled', stub[:iam_database_authentication_enabled].to_s) unless stub[:iam_database_authentication_enabled].nil?
        xml << Hearth::XML::Node.new('AutomationMode', stub[:automation_mode].to_s) unless stub[:automation_mode].nil?
        xml << Hearth::XML::Node.new('ResumeFullAutomationModeTime', Hearth::TimeHelper.to_date_time(stub[:resume_full_automation_mode_time])) unless stub[:resume_full_automation_mode_time].nil?
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
          subnets: SubnetList.default(visited),
          db_subnet_group_arn: 'db_subnet_group_arn',
          supported_network_types: StringList.default(visited),
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
        xml << Hearth::XML::Node.new('SupportedNetworkTypes', Stubs::StringList.stub('member', stub[:supported_network_types])) unless stub[:supported_network_types].nil?
        xml
      end
    end

    # List Stubber for SubnetList
    class SubnetList
      def self.default(visited=[])
        return nil if visited.include?('SubnetList')
        visited = visited + ['SubnetList']
        [
          Subnet.default(visited)
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
          subnet_availability_zone: AvailabilityZone.default(visited),
          subnet_outpost: Outpost.default(visited),
          subnet_status: 'subnet_status',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Subnet.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('SubnetIdentifier', stub[:subnet_identifier].to_s) unless stub[:subnet_identifier].nil?
        xml << Stubs::AvailabilityZone.stub('SubnetAvailabilityZone', stub[:subnet_availability_zone]) unless stub[:subnet_availability_zone].nil?
        xml << Stubs::Outpost.stub('SubnetOutpost', stub[:subnet_outpost]) unless stub[:subnet_outpost].nil?
        xml << Hearth::XML::Node.new('SubnetStatus', stub[:subnet_status].to_s) unless stub[:subnet_status].nil?
        xml
      end
    end

    # Structure Stubber for Outpost
    class Outpost
      def self.default(visited=[])
        return nil if visited.include?('Outpost')
        visited = visited + ['Outpost']
        {
          arn: 'arn',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Outpost.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Arn', stub[:arn].to_s) unless stub[:arn].nil?
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

    # List Stubber for DBParameterGroupStatusList
    class DBParameterGroupStatusList
      def self.default(visited=[])
        return nil if visited.include?('DBParameterGroupStatusList')
        visited = visited + ['DBParameterGroupStatusList']
        [
          DBParameterGroupStatus.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::DBParameterGroupStatus.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for DBParameterGroupStatus
    class DBParameterGroupStatus
      def self.default(visited=[])
        return nil if visited.include?('DBParameterGroupStatus')
        visited = visited + ['DBParameterGroupStatus']
        {
          db_parameter_group_name: 'db_parameter_group_name',
          parameter_apply_status: 'parameter_apply_status',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DBParameterGroupStatus.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('DBParameterGroupName', stub[:db_parameter_group_name].to_s) unless stub[:db_parameter_group_name].nil?
        xml << Hearth::XML::Node.new('ParameterApplyStatus', stub[:parameter_apply_status].to_s) unless stub[:parameter_apply_status].nil?
        xml
      end
    end

    # Operation Stubber for CreateDBInstanceReadReplica
    class CreateDBInstanceReadReplica
      def self.default(visited=[])
        {
          db_instance: DBInstance.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateDBInstanceReadReplicaResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('CreateDBInstanceReadReplicaResult')
        xml << Stubs::DBInstance.stub('DBInstance', stub[:db_instance]) unless stub[:db_instance].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateDBParameterGroup
    class CreateDBParameterGroup
      def self.default(visited=[])
        {
          db_parameter_group: DBParameterGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateDBParameterGroupResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('CreateDBParameterGroupResult')
        xml << Stubs::DBParameterGroup.stub('DBParameterGroup', stub[:db_parameter_group]) unless stub[:db_parameter_group].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateDBProxy
    class CreateDBProxy
      def self.default(visited=[])
        {
          db_proxy: DBProxy.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateDBProxyResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('CreateDBProxyResult')
        xml << Stubs::DBProxy.stub('DBProxy', stub[:db_proxy]) unless stub[:db_proxy].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for DBProxy
    class DBProxy
      def self.default(visited=[])
        return nil if visited.include?('DBProxy')
        visited = visited + ['DBProxy']
        {
          db_proxy_name: 'db_proxy_name',
          db_proxy_arn: 'db_proxy_arn',
          status: 'status',
          engine_family: 'engine_family',
          vpc_id: 'vpc_id',
          vpc_security_group_ids: StringList.default(visited),
          vpc_subnet_ids: StringList.default(visited),
          auth: UserAuthConfigInfoList.default(visited),
          role_arn: 'role_arn',
          endpoint: 'endpoint',
          require_tls: false,
          idle_client_timeout: 1,
          debug_logging: false,
          created_date: Time.now,
          updated_date: Time.now,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DBProxy.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('DBProxyName', stub[:db_proxy_name].to_s) unless stub[:db_proxy_name].nil?
        xml << Hearth::XML::Node.new('DBProxyArn', stub[:db_proxy_arn].to_s) unless stub[:db_proxy_arn].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('EngineFamily', stub[:engine_family].to_s) unless stub[:engine_family].nil?
        xml << Hearth::XML::Node.new('VpcId', stub[:vpc_id].to_s) unless stub[:vpc_id].nil?
        xml << Hearth::XML::Node.new('VpcSecurityGroupIds', Stubs::StringList.stub('member', stub[:vpc_security_group_ids])) unless stub[:vpc_security_group_ids].nil?
        xml << Hearth::XML::Node.new('VpcSubnetIds', Stubs::StringList.stub('member', stub[:vpc_subnet_ids])) unless stub[:vpc_subnet_ids].nil?
        xml << Hearth::XML::Node.new('Auth', Stubs::UserAuthConfigInfoList.stub('member', stub[:auth])) unless stub[:auth].nil?
        xml << Hearth::XML::Node.new('RoleArn', stub[:role_arn].to_s) unless stub[:role_arn].nil?
        xml << Hearth::XML::Node.new('Endpoint', stub[:endpoint].to_s) unless stub[:endpoint].nil?
        xml << Hearth::XML::Node.new('RequireTLS', stub[:require_tls].to_s) unless stub[:require_tls].nil?
        xml << Hearth::XML::Node.new('IdleClientTimeout', stub[:idle_client_timeout].to_s) unless stub[:idle_client_timeout].nil?
        xml << Hearth::XML::Node.new('DebugLogging', stub[:debug_logging].to_s) unless stub[:debug_logging].nil?
        xml << Hearth::XML::Node.new('CreatedDate', Hearth::TimeHelper.to_date_time(stub[:created_date])) unless stub[:created_date].nil?
        xml << Hearth::XML::Node.new('UpdatedDate', Hearth::TimeHelper.to_date_time(stub[:updated_date])) unless stub[:updated_date].nil?
        xml
      end
    end

    # List Stubber for UserAuthConfigInfoList
    class UserAuthConfigInfoList
      def self.default(visited=[])
        return nil if visited.include?('UserAuthConfigInfoList')
        visited = visited + ['UserAuthConfigInfoList']
        [
          UserAuthConfigInfo.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::UserAuthConfigInfo.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for UserAuthConfigInfo
    class UserAuthConfigInfo
      def self.default(visited=[])
        return nil if visited.include?('UserAuthConfigInfo')
        visited = visited + ['UserAuthConfigInfo']
        {
          description: 'description',
          user_name: 'user_name',
          auth_scheme: 'auth_scheme',
          secret_arn: 'secret_arn',
          iam_auth: 'iam_auth',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::UserAuthConfigInfo.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        xml << Hearth::XML::Node.new('UserName', stub[:user_name].to_s) unless stub[:user_name].nil?
        xml << Hearth::XML::Node.new('AuthScheme', stub[:auth_scheme].to_s) unless stub[:auth_scheme].nil?
        xml << Hearth::XML::Node.new('SecretArn', stub[:secret_arn].to_s) unless stub[:secret_arn].nil?
        xml << Hearth::XML::Node.new('IAMAuth', stub[:iam_auth].to_s) unless stub[:iam_auth].nil?
        xml
      end
    end

    # Operation Stubber for CreateDBProxyEndpoint
    class CreateDBProxyEndpoint
      def self.default(visited=[])
        {
          db_proxy_endpoint: DBProxyEndpoint.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateDBProxyEndpointResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('CreateDBProxyEndpointResult')
        xml << Stubs::DBProxyEndpoint.stub('DBProxyEndpoint', stub[:db_proxy_endpoint]) unless stub[:db_proxy_endpoint].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for DBProxyEndpoint
    class DBProxyEndpoint
      def self.default(visited=[])
        return nil if visited.include?('DBProxyEndpoint')
        visited = visited + ['DBProxyEndpoint']
        {
          db_proxy_endpoint_name: 'db_proxy_endpoint_name',
          db_proxy_endpoint_arn: 'db_proxy_endpoint_arn',
          db_proxy_name: 'db_proxy_name',
          status: 'status',
          vpc_id: 'vpc_id',
          vpc_security_group_ids: StringList.default(visited),
          vpc_subnet_ids: StringList.default(visited),
          endpoint: 'endpoint',
          created_date: Time.now,
          target_role: 'target_role',
          is_default: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DBProxyEndpoint.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('DBProxyEndpointName', stub[:db_proxy_endpoint_name].to_s) unless stub[:db_proxy_endpoint_name].nil?
        xml << Hearth::XML::Node.new('DBProxyEndpointArn', stub[:db_proxy_endpoint_arn].to_s) unless stub[:db_proxy_endpoint_arn].nil?
        xml << Hearth::XML::Node.new('DBProxyName', stub[:db_proxy_name].to_s) unless stub[:db_proxy_name].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('VpcId', stub[:vpc_id].to_s) unless stub[:vpc_id].nil?
        xml << Hearth::XML::Node.new('VpcSecurityGroupIds', Stubs::StringList.stub('member', stub[:vpc_security_group_ids])) unless stub[:vpc_security_group_ids].nil?
        xml << Hearth::XML::Node.new('VpcSubnetIds', Stubs::StringList.stub('member', stub[:vpc_subnet_ids])) unless stub[:vpc_subnet_ids].nil?
        xml << Hearth::XML::Node.new('Endpoint', stub[:endpoint].to_s) unless stub[:endpoint].nil?
        xml << Hearth::XML::Node.new('CreatedDate', Hearth::TimeHelper.to_date_time(stub[:created_date])) unless stub[:created_date].nil?
        xml << Hearth::XML::Node.new('TargetRole', stub[:target_role].to_s) unless stub[:target_role].nil?
        xml << Hearth::XML::Node.new('IsDefault', stub[:is_default].to_s) unless stub[:is_default].nil?
        xml
      end
    end

    # Operation Stubber for CreateDBSecurityGroup
    class CreateDBSecurityGroup
      def self.default(visited=[])
        {
          db_security_group: DBSecurityGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateDBSecurityGroupResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('CreateDBSecurityGroupResult')
        xml << Stubs::DBSecurityGroup.stub('DBSecurityGroup', stub[:db_security_group]) unless stub[:db_security_group].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateDBSnapshot
    class CreateDBSnapshot
      def self.default(visited=[])
        {
          db_snapshot: DBSnapshot.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateDBSnapshotResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('CreateDBSnapshotResult')
        xml << Stubs::DBSnapshot.stub('DBSnapshot', stub[:db_snapshot]) unless stub[:db_snapshot].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateDBSubnetGroup
    class CreateDBSubnetGroup
      def self.default(visited=[])
        {
          db_subnet_group: DBSubnetGroup.default(visited),
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
          event_subscription: EventSubscription.default(visited),
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
          global_cluster: GlobalCluster.default(visited),
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
          global_cluster_members: GlobalClusterMemberList.default(visited),
          failover_state: FailoverState.default(visited),
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
        xml << Stubs::FailoverState.stub('FailoverState', stub[:failover_state]) unless stub[:failover_state].nil?
        xml
      end
    end

    # Structure Stubber for FailoverState
    class FailoverState
      def self.default(visited=[])
        return nil if visited.include?('FailoverState')
        visited = visited + ['FailoverState']
        {
          status: 'status',
          from_db_cluster_arn: 'from_db_cluster_arn',
          to_db_cluster_arn: 'to_db_cluster_arn',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::FailoverState.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('FromDbClusterArn', stub[:from_db_cluster_arn].to_s) unless stub[:from_db_cluster_arn].nil?
        xml << Hearth::XML::Node.new('ToDbClusterArn', stub[:to_db_cluster_arn].to_s) unless stub[:to_db_cluster_arn].nil?
        xml
      end
    end

    # List Stubber for GlobalClusterMemberList
    class GlobalClusterMemberList
      def self.default(visited=[])
        return nil if visited.include?('GlobalClusterMemberList')
        visited = visited + ['GlobalClusterMemberList']
        [
          GlobalClusterMember.default(visited)
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
          readers: ReadersArnList.default(visited),
          is_writer: false,
          global_write_forwarding_status: 'global_write_forwarding_status',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::GlobalClusterMember.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('DBClusterArn', stub[:db_cluster_arn].to_s) unless stub[:db_cluster_arn].nil?
        xml << Hearth::XML::Node.new('Readers', Stubs::ReadersArnList.stub('member', stub[:readers])) unless stub[:readers].nil?
        xml << Hearth::XML::Node.new('IsWriter', stub[:is_writer].to_s) unless stub[:is_writer].nil?
        xml << Hearth::XML::Node.new('GlobalWriteForwardingStatus', stub[:global_write_forwarding_status].to_s) unless stub[:global_write_forwarding_status].nil?
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

    # Operation Stubber for CreateOptionGroup
    class CreateOptionGroup
      def self.default(visited=[])
        {
          option_group: OptionGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateOptionGroupResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('CreateOptionGroupResult')
        xml << Stubs::OptionGroup.stub('OptionGroup', stub[:option_group]) unless stub[:option_group].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteCustomDBEngineVersion
    class DeleteCustomDBEngineVersion
      def self.default(visited=[])
        {
          engine: 'engine',
          engine_version: 'engine_version',
          db_parameter_group_family: 'db_parameter_group_family',
          db_engine_description: 'db_engine_description',
          db_engine_version_description: 'db_engine_version_description',
          default_character_set: CharacterSet.default(visited),
          supported_character_sets: SupportedCharacterSetsList.default(visited),
          supported_nchar_character_sets: SupportedCharacterSetsList.default(visited),
          valid_upgrade_target: ValidUpgradeTargetList.default(visited),
          supported_timezones: SupportedTimezonesList.default(visited),
          exportable_log_types: LogTypeList.default(visited),
          supports_log_exports_to_cloudwatch_logs: false,
          supports_read_replica: false,
          supported_engine_modes: EngineModeList.default(visited),
          supported_feature_names: FeatureNameList.default(visited),
          status: 'status',
          supports_parallel_query: false,
          supports_global_databases: false,
          major_engine_version: 'major_engine_version',
          database_installation_files_s3_bucket_name: 'database_installation_files_s3_bucket_name',
          database_installation_files_s3_prefix: 'database_installation_files_s3_prefix',
          db_engine_version_arn: 'db_engine_version_arn',
          kms_key_id: 'kms_key_id',
          create_time: Time.now,
          tag_list: TagList.default(visited),
          supports_babelfish: false,
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteCustomDBEngineVersionResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('DeleteCustomDBEngineVersionResult')
        xml << Hearth::XML::Node.new('Engine', stub[:engine].to_s) unless stub[:engine].nil?
        xml << Hearth::XML::Node.new('EngineVersion', stub[:engine_version].to_s) unless stub[:engine_version].nil?
        xml << Hearth::XML::Node.new('DBParameterGroupFamily', stub[:db_parameter_group_family].to_s) unless stub[:db_parameter_group_family].nil?
        xml << Hearth::XML::Node.new('DBEngineDescription', stub[:db_engine_description].to_s) unless stub[:db_engine_description].nil?
        xml << Hearth::XML::Node.new('DBEngineVersionDescription', stub[:db_engine_version_description].to_s) unless stub[:db_engine_version_description].nil?
        xml << Stubs::CharacterSet.stub('DefaultCharacterSet', stub[:default_character_set]) unless stub[:default_character_set].nil?
        xml << Hearth::XML::Node.new('SupportedCharacterSets', Stubs::SupportedCharacterSetsList.stub('CharacterSet', stub[:supported_character_sets])) unless stub[:supported_character_sets].nil?
        xml << Hearth::XML::Node.new('SupportedNcharCharacterSets', Stubs::SupportedCharacterSetsList.stub('CharacterSet', stub[:supported_nchar_character_sets])) unless stub[:supported_nchar_character_sets].nil?
        xml << Hearth::XML::Node.new('ValidUpgradeTarget', Stubs::ValidUpgradeTargetList.stub('UpgradeTarget', stub[:valid_upgrade_target])) unless stub[:valid_upgrade_target].nil?
        xml << Hearth::XML::Node.new('SupportedTimezones', Stubs::SupportedTimezonesList.stub('Timezone', stub[:supported_timezones])) unless stub[:supported_timezones].nil?
        xml << Hearth::XML::Node.new('ExportableLogTypes', Stubs::LogTypeList.stub('member', stub[:exportable_log_types])) unless stub[:exportable_log_types].nil?
        xml << Hearth::XML::Node.new('SupportsLogExportsToCloudwatchLogs', stub[:supports_log_exports_to_cloudwatch_logs].to_s) unless stub[:supports_log_exports_to_cloudwatch_logs].nil?
        xml << Hearth::XML::Node.new('SupportsReadReplica', stub[:supports_read_replica].to_s) unless stub[:supports_read_replica].nil?
        xml << Hearth::XML::Node.new('SupportedEngineModes', Stubs::EngineModeList.stub('member', stub[:supported_engine_modes])) unless stub[:supported_engine_modes].nil?
        xml << Hearth::XML::Node.new('SupportedFeatureNames', Stubs::FeatureNameList.stub('member', stub[:supported_feature_names])) unless stub[:supported_feature_names].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('SupportsParallelQuery', stub[:supports_parallel_query].to_s) unless stub[:supports_parallel_query].nil?
        xml << Hearth::XML::Node.new('SupportsGlobalDatabases', stub[:supports_global_databases].to_s) unless stub[:supports_global_databases].nil?
        xml << Hearth::XML::Node.new('MajorEngineVersion', stub[:major_engine_version].to_s) unless stub[:major_engine_version].nil?
        xml << Hearth::XML::Node.new('DatabaseInstallationFilesS3BucketName', stub[:database_installation_files_s3_bucket_name].to_s) unless stub[:database_installation_files_s3_bucket_name].nil?
        xml << Hearth::XML::Node.new('DatabaseInstallationFilesS3Prefix', stub[:database_installation_files_s3_prefix].to_s) unless stub[:database_installation_files_s3_prefix].nil?
        xml << Hearth::XML::Node.new('DBEngineVersionArn', stub[:db_engine_version_arn].to_s) unless stub[:db_engine_version_arn].nil?
        xml << Hearth::XML::Node.new('KMSKeyId', stub[:kms_key_id].to_s) unless stub[:kms_key_id].nil?
        xml << Hearth::XML::Node.new('CreateTime', Hearth::TimeHelper.to_date_time(stub[:create_time])) unless stub[:create_time].nil?
        xml << Hearth::XML::Node.new('TagList', Stubs::TagList.stub('Tag', stub[:tag_list])) unless stub[:tag_list].nil?
        xml << Hearth::XML::Node.new('SupportsBabelfish', stub[:supports_babelfish].to_s) unless stub[:supports_babelfish].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteDBCluster
    class DeleteDBCluster
      def self.default(visited=[])
        {
          db_cluster: DBCluster.default(visited),
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

    # Operation Stubber for DeleteDBClusterEndpoint
    class DeleteDBClusterEndpoint
      def self.default(visited=[])
        {
          db_cluster_endpoint_identifier: 'db_cluster_endpoint_identifier',
          db_cluster_identifier: 'db_cluster_identifier',
          db_cluster_endpoint_resource_identifier: 'db_cluster_endpoint_resource_identifier',
          endpoint: 'endpoint',
          status: 'status',
          endpoint_type: 'endpoint_type',
          custom_endpoint_type: 'custom_endpoint_type',
          static_members: StringList.default(visited),
          excluded_members: StringList.default(visited),
          db_cluster_endpoint_arn: 'db_cluster_endpoint_arn',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteDBClusterEndpointResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('DeleteDBClusterEndpointResult')
        xml << Hearth::XML::Node.new('DBClusterEndpointIdentifier', stub[:db_cluster_endpoint_identifier].to_s) unless stub[:db_cluster_endpoint_identifier].nil?
        xml << Hearth::XML::Node.new('DBClusterIdentifier', stub[:db_cluster_identifier].to_s) unless stub[:db_cluster_identifier].nil?
        xml << Hearth::XML::Node.new('DBClusterEndpointResourceIdentifier', stub[:db_cluster_endpoint_resource_identifier].to_s) unless stub[:db_cluster_endpoint_resource_identifier].nil?
        xml << Hearth::XML::Node.new('Endpoint', stub[:endpoint].to_s) unless stub[:endpoint].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('EndpointType', stub[:endpoint_type].to_s) unless stub[:endpoint_type].nil?
        xml << Hearth::XML::Node.new('CustomEndpointType', stub[:custom_endpoint_type].to_s) unless stub[:custom_endpoint_type].nil?
        xml << Hearth::XML::Node.new('StaticMembers', Stubs::StringList.stub('member', stub[:static_members])) unless stub[:static_members].nil?
        xml << Hearth::XML::Node.new('ExcludedMembers', Stubs::StringList.stub('member', stub[:excluded_members])) unless stub[:excluded_members].nil?
        xml << Hearth::XML::Node.new('DBClusterEndpointArn', stub[:db_cluster_endpoint_arn].to_s) unless stub[:db_cluster_endpoint_arn].nil?
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
          db_cluster_snapshot: DBClusterSnapshot.default(visited),
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
          db_instance: DBInstance.default(visited),
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

    # Operation Stubber for DeleteDBInstanceAutomatedBackup
    class DeleteDBInstanceAutomatedBackup
      def self.default(visited=[])
        {
          db_instance_automated_backup: DBInstanceAutomatedBackup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteDBInstanceAutomatedBackupResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('DeleteDBInstanceAutomatedBackupResult')
        xml << Stubs::DBInstanceAutomatedBackup.stub('DBInstanceAutomatedBackup', stub[:db_instance_automated_backup]) unless stub[:db_instance_automated_backup].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for DBInstanceAutomatedBackup
    class DBInstanceAutomatedBackup
      def self.default(visited=[])
        return nil if visited.include?('DBInstanceAutomatedBackup')
        visited = visited + ['DBInstanceAutomatedBackup']
        {
          db_instance_arn: 'db_instance_arn',
          dbi_resource_id: 'dbi_resource_id',
          region: 'region',
          db_instance_identifier: 'db_instance_identifier',
          restore_window: RestoreWindow.default(visited),
          allocated_storage: 1,
          status: 'status',
          port: 1,
          availability_zone: 'availability_zone',
          vpc_id: 'vpc_id',
          instance_create_time: Time.now,
          master_username: 'master_username',
          engine: 'engine',
          engine_version: 'engine_version',
          license_model: 'license_model',
          iops: 1,
          option_group_name: 'option_group_name',
          tde_credential_arn: 'tde_credential_arn',
          encrypted: false,
          storage_type: 'storage_type',
          kms_key_id: 'kms_key_id',
          timezone: 'timezone',
          iam_database_authentication_enabled: false,
          backup_retention_period: 1,
          db_instance_automated_backups_arn: 'db_instance_automated_backups_arn',
          db_instance_automated_backups_replications: DBInstanceAutomatedBackupsReplicationList.default(visited),
          backup_target: 'backup_target',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DBInstanceAutomatedBackup.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('DBInstanceArn', stub[:db_instance_arn].to_s) unless stub[:db_instance_arn].nil?
        xml << Hearth::XML::Node.new('DbiResourceId', stub[:dbi_resource_id].to_s) unless stub[:dbi_resource_id].nil?
        xml << Hearth::XML::Node.new('Region', stub[:region].to_s) unless stub[:region].nil?
        xml << Hearth::XML::Node.new('DBInstanceIdentifier', stub[:db_instance_identifier].to_s) unless stub[:db_instance_identifier].nil?
        xml << Stubs::RestoreWindow.stub('RestoreWindow', stub[:restore_window]) unless stub[:restore_window].nil?
        xml << Hearth::XML::Node.new('AllocatedStorage', stub[:allocated_storage].to_s) unless stub[:allocated_storage].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('Port', stub[:port].to_s) unless stub[:port].nil?
        xml << Hearth::XML::Node.new('AvailabilityZone', stub[:availability_zone].to_s) unless stub[:availability_zone].nil?
        xml << Hearth::XML::Node.new('VpcId', stub[:vpc_id].to_s) unless stub[:vpc_id].nil?
        xml << Hearth::XML::Node.new('InstanceCreateTime', Hearth::TimeHelper.to_date_time(stub[:instance_create_time])) unless stub[:instance_create_time].nil?
        xml << Hearth::XML::Node.new('MasterUsername', stub[:master_username].to_s) unless stub[:master_username].nil?
        xml << Hearth::XML::Node.new('Engine', stub[:engine].to_s) unless stub[:engine].nil?
        xml << Hearth::XML::Node.new('EngineVersion', stub[:engine_version].to_s) unless stub[:engine_version].nil?
        xml << Hearth::XML::Node.new('LicenseModel', stub[:license_model].to_s) unless stub[:license_model].nil?
        xml << Hearth::XML::Node.new('Iops', stub[:iops].to_s) unless stub[:iops].nil?
        xml << Hearth::XML::Node.new('OptionGroupName', stub[:option_group_name].to_s) unless stub[:option_group_name].nil?
        xml << Hearth::XML::Node.new('TdeCredentialArn', stub[:tde_credential_arn].to_s) unless stub[:tde_credential_arn].nil?
        xml << Hearth::XML::Node.new('Encrypted', stub[:encrypted].to_s) unless stub[:encrypted].nil?
        xml << Hearth::XML::Node.new('StorageType', stub[:storage_type].to_s) unless stub[:storage_type].nil?
        xml << Hearth::XML::Node.new('KmsKeyId', stub[:kms_key_id].to_s) unless stub[:kms_key_id].nil?
        xml << Hearth::XML::Node.new('Timezone', stub[:timezone].to_s) unless stub[:timezone].nil?
        xml << Hearth::XML::Node.new('IAMDatabaseAuthenticationEnabled', stub[:iam_database_authentication_enabled].to_s) unless stub[:iam_database_authentication_enabled].nil?
        xml << Hearth::XML::Node.new('BackupRetentionPeriod', stub[:backup_retention_period].to_s) unless stub[:backup_retention_period].nil?
        xml << Hearth::XML::Node.new('DBInstanceAutomatedBackupsArn', stub[:db_instance_automated_backups_arn].to_s) unless stub[:db_instance_automated_backups_arn].nil?
        xml << Hearth::XML::Node.new('DBInstanceAutomatedBackupsReplications', Stubs::DBInstanceAutomatedBackupsReplicationList.stub('DBInstanceAutomatedBackupsReplication', stub[:db_instance_automated_backups_replications])) unless stub[:db_instance_automated_backups_replications].nil?
        xml << Hearth::XML::Node.new('BackupTarget', stub[:backup_target].to_s) unless stub[:backup_target].nil?
        xml
      end
    end

    # Structure Stubber for RestoreWindow
    class RestoreWindow
      def self.default(visited=[])
        return nil if visited.include?('RestoreWindow')
        visited = visited + ['RestoreWindow']
        {
          earliest_time: Time.now,
          latest_time: Time.now,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::RestoreWindow.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('EarliestTime', Hearth::TimeHelper.to_date_time(stub[:earliest_time])) unless stub[:earliest_time].nil?
        xml << Hearth::XML::Node.new('LatestTime', Hearth::TimeHelper.to_date_time(stub[:latest_time])) unless stub[:latest_time].nil?
        xml
      end
    end

    # Operation Stubber for DeleteDBParameterGroup
    class DeleteDBParameterGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteDBParameterGroupResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('DeleteDBParameterGroupResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteDBProxy
    class DeleteDBProxy
      def self.default(visited=[])
        {
          db_proxy: DBProxy.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteDBProxyResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('DeleteDBProxyResult')
        xml << Stubs::DBProxy.stub('DBProxy', stub[:db_proxy]) unless stub[:db_proxy].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteDBProxyEndpoint
    class DeleteDBProxyEndpoint
      def self.default(visited=[])
        {
          db_proxy_endpoint: DBProxyEndpoint.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteDBProxyEndpointResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('DeleteDBProxyEndpointResult')
        xml << Stubs::DBProxyEndpoint.stub('DBProxyEndpoint', stub[:db_proxy_endpoint]) unless stub[:db_proxy_endpoint].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteDBSecurityGroup
    class DeleteDBSecurityGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteDBSecurityGroupResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('DeleteDBSecurityGroupResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteDBSnapshot
    class DeleteDBSnapshot
      def self.default(visited=[])
        {
          db_snapshot: DBSnapshot.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteDBSnapshotResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('DeleteDBSnapshotResult')
        xml << Stubs::DBSnapshot.stub('DBSnapshot', stub[:db_snapshot]) unless stub[:db_snapshot].nil?
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
          event_subscription: EventSubscription.default(visited),
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
          global_cluster: GlobalCluster.default(visited),
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

    # Operation Stubber for DeleteOptionGroup
    class DeleteOptionGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteOptionGroupResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('DeleteOptionGroupResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeregisterDBProxyTargets
    class DeregisterDBProxyTargets
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeregisterDBProxyTargetsResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('DeregisterDBProxyTargetsResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeAccountAttributes
    class DescribeAccountAttributes
      def self.default(visited=[])
        {
          account_quotas: AccountQuotaList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeAccountAttributesResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('DescribeAccountAttributesResult')
        xml << Hearth::XML::Node.new('AccountQuotas', Stubs::AccountQuotaList.stub('AccountQuota', stub[:account_quotas])) unless stub[:account_quotas].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for AccountQuotaList
    class AccountQuotaList
      def self.default(visited=[])
        return nil if visited.include?('AccountQuotaList')
        visited = visited + ['AccountQuotaList']
        [
          AccountQuota.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::AccountQuota.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for AccountQuota
    class AccountQuota
      def self.default(visited=[])
        return nil if visited.include?('AccountQuota')
        visited = visited + ['AccountQuota']
        {
          account_quota_name: 'account_quota_name',
          used: 1,
          max: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::AccountQuota.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('AccountQuotaName', stub[:account_quota_name].to_s) unless stub[:account_quota_name].nil?
        xml << Hearth::XML::Node.new('Used', stub[:used].to_s) unless stub[:used].nil?
        xml << Hearth::XML::Node.new('Max', stub[:max].to_s) unless stub[:max].nil?
        xml
      end
    end

    # Operation Stubber for DescribeCertificates
    class DescribeCertificates
      def self.default(visited=[])
        {
          certificates: CertificateList.default(visited),
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
          Certificate.default(visited)
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
          customer_override: false,
          customer_override_valid_till: Time.now,
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
        xml << Hearth::XML::Node.new('CustomerOverride', stub[:customer_override].to_s) unless stub[:customer_override].nil?
        xml << Hearth::XML::Node.new('CustomerOverrideValidTill', Hearth::TimeHelper.to_date_time(stub[:customer_override_valid_till])) unless stub[:customer_override_valid_till].nil?
        xml
      end
    end

    # Operation Stubber for DescribeDBClusterBacktracks
    class DescribeDBClusterBacktracks
      def self.default(visited=[])
        {
          marker: 'marker',
          db_cluster_backtracks: DBClusterBacktrackList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeDBClusterBacktracksResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('DescribeDBClusterBacktracksResult')
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('DBClusterBacktracks', Stubs::DBClusterBacktrackList.stub('DBClusterBacktrack', stub[:db_cluster_backtracks])) unless stub[:db_cluster_backtracks].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for DBClusterBacktrackList
    class DBClusterBacktrackList
      def self.default(visited=[])
        return nil if visited.include?('DBClusterBacktrackList')
        visited = visited + ['DBClusterBacktrackList']
        [
          DBClusterBacktrack.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::DBClusterBacktrack.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for DBClusterBacktrack
    class DBClusterBacktrack
      def self.default(visited=[])
        return nil if visited.include?('DBClusterBacktrack')
        visited = visited + ['DBClusterBacktrack']
        {
          db_cluster_identifier: 'db_cluster_identifier',
          backtrack_identifier: 'backtrack_identifier',
          backtrack_to: Time.now,
          backtracked_from: Time.now,
          backtrack_request_creation_time: Time.now,
          status: 'status',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DBClusterBacktrack.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('DBClusterIdentifier', stub[:db_cluster_identifier].to_s) unless stub[:db_cluster_identifier].nil?
        xml << Hearth::XML::Node.new('BacktrackIdentifier', stub[:backtrack_identifier].to_s) unless stub[:backtrack_identifier].nil?
        xml << Hearth::XML::Node.new('BacktrackTo', Hearth::TimeHelper.to_date_time(stub[:backtrack_to])) unless stub[:backtrack_to].nil?
        xml << Hearth::XML::Node.new('BacktrackedFrom', Hearth::TimeHelper.to_date_time(stub[:backtracked_from])) unless stub[:backtracked_from].nil?
        xml << Hearth::XML::Node.new('BacktrackRequestCreationTime', Hearth::TimeHelper.to_date_time(stub[:backtrack_request_creation_time])) unless stub[:backtrack_request_creation_time].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml
      end
    end

    # Operation Stubber for DescribeDBClusterEndpoints
    class DescribeDBClusterEndpoints
      def self.default(visited=[])
        {
          marker: 'marker',
          db_cluster_endpoints: DBClusterEndpointList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeDBClusterEndpointsResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('DescribeDBClusterEndpointsResult')
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('DBClusterEndpoints', Stubs::DBClusterEndpointList.stub('DBClusterEndpointList', stub[:db_cluster_endpoints])) unless stub[:db_cluster_endpoints].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for DBClusterEndpointList
    class DBClusterEndpointList
      def self.default(visited=[])
        return nil if visited.include?('DBClusterEndpointList')
        visited = visited + ['DBClusterEndpointList']
        [
          DBClusterEndpoint.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::DBClusterEndpoint.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for DBClusterEndpoint
    class DBClusterEndpoint
      def self.default(visited=[])
        return nil if visited.include?('DBClusterEndpoint')
        visited = visited + ['DBClusterEndpoint']
        {
          db_cluster_endpoint_identifier: 'db_cluster_endpoint_identifier',
          db_cluster_identifier: 'db_cluster_identifier',
          db_cluster_endpoint_resource_identifier: 'db_cluster_endpoint_resource_identifier',
          endpoint: 'endpoint',
          status: 'status',
          endpoint_type: 'endpoint_type',
          custom_endpoint_type: 'custom_endpoint_type',
          static_members: StringList.default(visited),
          excluded_members: StringList.default(visited),
          db_cluster_endpoint_arn: 'db_cluster_endpoint_arn',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DBClusterEndpoint.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('DBClusterEndpointIdentifier', stub[:db_cluster_endpoint_identifier].to_s) unless stub[:db_cluster_endpoint_identifier].nil?
        xml << Hearth::XML::Node.new('DBClusterIdentifier', stub[:db_cluster_identifier].to_s) unless stub[:db_cluster_identifier].nil?
        xml << Hearth::XML::Node.new('DBClusterEndpointResourceIdentifier', stub[:db_cluster_endpoint_resource_identifier].to_s) unless stub[:db_cluster_endpoint_resource_identifier].nil?
        xml << Hearth::XML::Node.new('Endpoint', stub[:endpoint].to_s) unless stub[:endpoint].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('EndpointType', stub[:endpoint_type].to_s) unless stub[:endpoint_type].nil?
        xml << Hearth::XML::Node.new('CustomEndpointType', stub[:custom_endpoint_type].to_s) unless stub[:custom_endpoint_type].nil?
        xml << Hearth::XML::Node.new('StaticMembers', Stubs::StringList.stub('member', stub[:static_members])) unless stub[:static_members].nil?
        xml << Hearth::XML::Node.new('ExcludedMembers', Stubs::StringList.stub('member', stub[:excluded_members])) unless stub[:excluded_members].nil?
        xml << Hearth::XML::Node.new('DBClusterEndpointArn', stub[:db_cluster_endpoint_arn].to_s) unless stub[:db_cluster_endpoint_arn].nil?
        xml
      end
    end

    # Operation Stubber for DescribeDBClusterParameterGroups
    class DescribeDBClusterParameterGroups
      def self.default(visited=[])
        {
          marker: 'marker',
          db_cluster_parameter_groups: DBClusterParameterGroupList.default(visited),
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
          DBClusterParameterGroup.default(visited)
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
          parameters: ParametersList.default(visited),
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
          Parameter.default(visited)
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
          supported_engine_modes: EngineModeList.default(visited),
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
        xml << Hearth::XML::Node.new('SupportedEngineModes', Stubs::EngineModeList.stub('member', stub[:supported_engine_modes])) unless stub[:supported_engine_modes].nil?
        xml
      end
    end

    # Operation Stubber for DescribeDBClusterSnapshotAttributes
    class DescribeDBClusterSnapshotAttributes
      def self.default(visited=[])
        {
          db_cluster_snapshot_attributes_result: DBClusterSnapshotAttributesResult.default(visited),
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
          db_cluster_snapshot_attributes: DBClusterSnapshotAttributeList.default(visited),
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
          DBClusterSnapshotAttribute.default(visited)
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
          attribute_values: AttributeValueList.default(visited),
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
          db_cluster_snapshots: DBClusterSnapshotList.default(visited),
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
          DBClusterSnapshot.default(visited)
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
          db_clusters: DBClusterList.default(visited),
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
          DBCluster.default(visited)
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
          db_engine_versions: DBEngineVersionList.default(visited),
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
          DBEngineVersion.default(visited)
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
          default_character_set: CharacterSet.default(visited),
          supported_character_sets: SupportedCharacterSetsList.default(visited),
          supported_nchar_character_sets: SupportedCharacterSetsList.default(visited),
          valid_upgrade_target: ValidUpgradeTargetList.default(visited),
          supported_timezones: SupportedTimezonesList.default(visited),
          exportable_log_types: LogTypeList.default(visited),
          supports_log_exports_to_cloudwatch_logs: false,
          supports_read_replica: false,
          supported_engine_modes: EngineModeList.default(visited),
          supported_feature_names: FeatureNameList.default(visited),
          status: 'status',
          supports_parallel_query: false,
          supports_global_databases: false,
          major_engine_version: 'major_engine_version',
          database_installation_files_s3_bucket_name: 'database_installation_files_s3_bucket_name',
          database_installation_files_s3_prefix: 'database_installation_files_s3_prefix',
          db_engine_version_arn: 'db_engine_version_arn',
          kms_key_id: 'kms_key_id',
          create_time: Time.now,
          tag_list: TagList.default(visited),
          supports_babelfish: false,
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
        xml << Stubs::CharacterSet.stub('DefaultCharacterSet', stub[:default_character_set]) unless stub[:default_character_set].nil?
        xml << Hearth::XML::Node.new('SupportedCharacterSets', Stubs::SupportedCharacterSetsList.stub('CharacterSet', stub[:supported_character_sets])) unless stub[:supported_character_sets].nil?
        xml << Hearth::XML::Node.new('SupportedNcharCharacterSets', Stubs::SupportedCharacterSetsList.stub('CharacterSet', stub[:supported_nchar_character_sets])) unless stub[:supported_nchar_character_sets].nil?
        xml << Hearth::XML::Node.new('ValidUpgradeTarget', Stubs::ValidUpgradeTargetList.stub('UpgradeTarget', stub[:valid_upgrade_target])) unless stub[:valid_upgrade_target].nil?
        xml << Hearth::XML::Node.new('SupportedTimezones', Stubs::SupportedTimezonesList.stub('Timezone', stub[:supported_timezones])) unless stub[:supported_timezones].nil?
        xml << Hearth::XML::Node.new('ExportableLogTypes', Stubs::LogTypeList.stub('member', stub[:exportable_log_types])) unless stub[:exportable_log_types].nil?
        xml << Hearth::XML::Node.new('SupportsLogExportsToCloudwatchLogs', stub[:supports_log_exports_to_cloudwatch_logs].to_s) unless stub[:supports_log_exports_to_cloudwatch_logs].nil?
        xml << Hearth::XML::Node.new('SupportsReadReplica', stub[:supports_read_replica].to_s) unless stub[:supports_read_replica].nil?
        xml << Hearth::XML::Node.new('SupportedEngineModes', Stubs::EngineModeList.stub('member', stub[:supported_engine_modes])) unless stub[:supported_engine_modes].nil?
        xml << Hearth::XML::Node.new('SupportedFeatureNames', Stubs::FeatureNameList.stub('member', stub[:supported_feature_names])) unless stub[:supported_feature_names].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('SupportsParallelQuery', stub[:supports_parallel_query].to_s) unless stub[:supports_parallel_query].nil?
        xml << Hearth::XML::Node.new('SupportsGlobalDatabases', stub[:supports_global_databases].to_s) unless stub[:supports_global_databases].nil?
        xml << Hearth::XML::Node.new('MajorEngineVersion', stub[:major_engine_version].to_s) unless stub[:major_engine_version].nil?
        xml << Hearth::XML::Node.new('DatabaseInstallationFilesS3BucketName', stub[:database_installation_files_s3_bucket_name].to_s) unless stub[:database_installation_files_s3_bucket_name].nil?
        xml << Hearth::XML::Node.new('DatabaseInstallationFilesS3Prefix', stub[:database_installation_files_s3_prefix].to_s) unless stub[:database_installation_files_s3_prefix].nil?
        xml << Hearth::XML::Node.new('DBEngineVersionArn', stub[:db_engine_version_arn].to_s) unless stub[:db_engine_version_arn].nil?
        xml << Hearth::XML::Node.new('KMSKeyId', stub[:kms_key_id].to_s) unless stub[:kms_key_id].nil?
        xml << Hearth::XML::Node.new('CreateTime', Hearth::TimeHelper.to_date_time(stub[:create_time])) unless stub[:create_time].nil?
        xml << Hearth::XML::Node.new('TagList', Stubs::TagList.stub('Tag', stub[:tag_list])) unless stub[:tag_list].nil?
        xml << Hearth::XML::Node.new('SupportsBabelfish', stub[:supports_babelfish].to_s) unless stub[:supports_babelfish].nil?
        xml
      end
    end

    # Operation Stubber for DescribeDBInstanceAutomatedBackups
    class DescribeDBInstanceAutomatedBackups
      def self.default(visited=[])
        {
          marker: 'marker',
          db_instance_automated_backups: DBInstanceAutomatedBackupList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeDBInstanceAutomatedBackupsResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('DescribeDBInstanceAutomatedBackupsResult')
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('DBInstanceAutomatedBackups', Stubs::DBInstanceAutomatedBackupList.stub('DBInstanceAutomatedBackup', stub[:db_instance_automated_backups])) unless stub[:db_instance_automated_backups].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for DBInstanceAutomatedBackupList
    class DBInstanceAutomatedBackupList
      def self.default(visited=[])
        return nil if visited.include?('DBInstanceAutomatedBackupList')
        visited = visited + ['DBInstanceAutomatedBackupList']
        [
          DBInstanceAutomatedBackup.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::DBInstanceAutomatedBackup.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for DescribeDBInstances
    class DescribeDBInstances
      def self.default(visited=[])
        {
          marker: 'marker',
          db_instances: DBInstanceList.default(visited),
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
          DBInstance.default(visited)
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

    # Operation Stubber for DescribeDBLogFiles
    class DescribeDBLogFiles
      def self.default(visited=[])
        {
          describe_db_log_files: DescribeDBLogFilesList.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeDBLogFilesResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('DescribeDBLogFilesResult')
        xml << Hearth::XML::Node.new('DescribeDBLogFiles', Stubs::DescribeDBLogFilesList.stub('DescribeDBLogFilesDetails', stub[:describe_db_log_files])) unless stub[:describe_db_log_files].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for DescribeDBLogFilesList
    class DescribeDBLogFilesList
      def self.default(visited=[])
        return nil if visited.include?('DescribeDBLogFilesList')
        visited = visited + ['DescribeDBLogFilesList']
        [
          DescribeDBLogFilesDetails.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::DescribeDBLogFilesDetails.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for DescribeDBLogFilesDetails
    class DescribeDBLogFilesDetails
      def self.default(visited=[])
        return nil if visited.include?('DescribeDBLogFilesDetails')
        visited = visited + ['DescribeDBLogFilesDetails']
        {
          log_file_name: 'log_file_name',
          last_written: 1,
          size: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DescribeDBLogFilesDetails.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('LogFileName', stub[:log_file_name].to_s) unless stub[:log_file_name].nil?
        xml << Hearth::XML::Node.new('LastWritten', stub[:last_written].to_s) unless stub[:last_written].nil?
        xml << Hearth::XML::Node.new('Size', stub[:size].to_s) unless stub[:size].nil?
        xml
      end
    end

    # Operation Stubber for DescribeDBParameterGroups
    class DescribeDBParameterGroups
      def self.default(visited=[])
        {
          marker: 'marker',
          db_parameter_groups: DBParameterGroupList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeDBParameterGroupsResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('DescribeDBParameterGroupsResult')
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('DBParameterGroups', Stubs::DBParameterGroupList.stub('DBParameterGroup', stub[:db_parameter_groups])) unless stub[:db_parameter_groups].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for DBParameterGroupList
    class DBParameterGroupList
      def self.default(visited=[])
        return nil if visited.include?('DBParameterGroupList')
        visited = visited + ['DBParameterGroupList']
        [
          DBParameterGroup.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::DBParameterGroup.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for DescribeDBParameters
    class DescribeDBParameters
      def self.default(visited=[])
        {
          parameters: ParametersList.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeDBParametersResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('DescribeDBParametersResult')
        xml << Hearth::XML::Node.new('Parameters', Stubs::ParametersList.stub('Parameter', stub[:parameters])) unless stub[:parameters].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeDBProxies
    class DescribeDBProxies
      def self.default(visited=[])
        {
          db_proxies: DBProxyList.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeDBProxiesResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('DescribeDBProxiesResult')
        xml << Hearth::XML::Node.new('DBProxies', Stubs::DBProxyList.stub('member', stub[:db_proxies])) unless stub[:db_proxies].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for DBProxyList
    class DBProxyList
      def self.default(visited=[])
        return nil if visited.include?('DBProxyList')
        visited = visited + ['DBProxyList']
        [
          DBProxy.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::DBProxy.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for DescribeDBProxyEndpoints
    class DescribeDBProxyEndpoints
      def self.default(visited=[])
        {
          db_proxy_endpoints: DBProxyEndpointList.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeDBProxyEndpointsResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('DescribeDBProxyEndpointsResult')
        xml << Hearth::XML::Node.new('DBProxyEndpoints', Stubs::DBProxyEndpointList.stub('member', stub[:db_proxy_endpoints])) unless stub[:db_proxy_endpoints].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for DBProxyEndpointList
    class DBProxyEndpointList
      def self.default(visited=[])
        return nil if visited.include?('DBProxyEndpointList')
        visited = visited + ['DBProxyEndpointList']
        [
          DBProxyEndpoint.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::DBProxyEndpoint.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for DescribeDBProxyTargetGroups
    class DescribeDBProxyTargetGroups
      def self.default(visited=[])
        {
          target_groups: TargetGroupList.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeDBProxyTargetGroupsResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('DescribeDBProxyTargetGroupsResult')
        xml << Hearth::XML::Node.new('TargetGroups', Stubs::TargetGroupList.stub('member', stub[:target_groups])) unless stub[:target_groups].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for TargetGroupList
    class TargetGroupList
      def self.default(visited=[])
        return nil if visited.include?('TargetGroupList')
        visited = visited + ['TargetGroupList']
        [
          DBProxyTargetGroup.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::DBProxyTargetGroup.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for DBProxyTargetGroup
    class DBProxyTargetGroup
      def self.default(visited=[])
        return nil if visited.include?('DBProxyTargetGroup')
        visited = visited + ['DBProxyTargetGroup']
        {
          db_proxy_name: 'db_proxy_name',
          target_group_name: 'target_group_name',
          target_group_arn: 'target_group_arn',
          is_default: false,
          status: 'status',
          connection_pool_config: ConnectionPoolConfigurationInfo.default(visited),
          created_date: Time.now,
          updated_date: Time.now,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DBProxyTargetGroup.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('DBProxyName', stub[:db_proxy_name].to_s) unless stub[:db_proxy_name].nil?
        xml << Hearth::XML::Node.new('TargetGroupName', stub[:target_group_name].to_s) unless stub[:target_group_name].nil?
        xml << Hearth::XML::Node.new('TargetGroupArn', stub[:target_group_arn].to_s) unless stub[:target_group_arn].nil?
        xml << Hearth::XML::Node.new('IsDefault', stub[:is_default].to_s) unless stub[:is_default].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Stubs::ConnectionPoolConfigurationInfo.stub('ConnectionPoolConfig', stub[:connection_pool_config]) unless stub[:connection_pool_config].nil?
        xml << Hearth::XML::Node.new('CreatedDate', Hearth::TimeHelper.to_date_time(stub[:created_date])) unless stub[:created_date].nil?
        xml << Hearth::XML::Node.new('UpdatedDate', Hearth::TimeHelper.to_date_time(stub[:updated_date])) unless stub[:updated_date].nil?
        xml
      end
    end

    # Structure Stubber for ConnectionPoolConfigurationInfo
    class ConnectionPoolConfigurationInfo
      def self.default(visited=[])
        return nil if visited.include?('ConnectionPoolConfigurationInfo')
        visited = visited + ['ConnectionPoolConfigurationInfo']
        {
          max_connections_percent: 1,
          max_idle_connections_percent: 1,
          connection_borrow_timeout: 1,
          session_pinning_filters: StringList.default(visited),
          init_query: 'init_query',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ConnectionPoolConfigurationInfo.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('MaxConnectionsPercent', stub[:max_connections_percent].to_s) unless stub[:max_connections_percent].nil?
        xml << Hearth::XML::Node.new('MaxIdleConnectionsPercent', stub[:max_idle_connections_percent].to_s) unless stub[:max_idle_connections_percent].nil?
        xml << Hearth::XML::Node.new('ConnectionBorrowTimeout', stub[:connection_borrow_timeout].to_s) unless stub[:connection_borrow_timeout].nil?
        xml << Hearth::XML::Node.new('SessionPinningFilters', Stubs::StringList.stub('member', stub[:session_pinning_filters])) unless stub[:session_pinning_filters].nil?
        xml << Hearth::XML::Node.new('InitQuery', stub[:init_query].to_s) unless stub[:init_query].nil?
        xml
      end
    end

    # Operation Stubber for DescribeDBProxyTargets
    class DescribeDBProxyTargets
      def self.default(visited=[])
        {
          targets: TargetList.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeDBProxyTargetsResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('DescribeDBProxyTargetsResult')
        xml << Hearth::XML::Node.new('Targets', Stubs::TargetList.stub('member', stub[:targets])) unless stub[:targets].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for TargetList
    class TargetList
      def self.default(visited=[])
        return nil if visited.include?('TargetList')
        visited = visited + ['TargetList']
        [
          DBProxyTarget.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::DBProxyTarget.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for DBProxyTarget
    class DBProxyTarget
      def self.default(visited=[])
        return nil if visited.include?('DBProxyTarget')
        visited = visited + ['DBProxyTarget']
        {
          target_arn: 'target_arn',
          endpoint: 'endpoint',
          tracked_cluster_id: 'tracked_cluster_id',
          rds_resource_id: 'rds_resource_id',
          port: 1,
          type: 'type',
          role: 'role',
          target_health: TargetHealth.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DBProxyTarget.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('TargetArn', stub[:target_arn].to_s) unless stub[:target_arn].nil?
        xml << Hearth::XML::Node.new('Endpoint', stub[:endpoint].to_s) unless stub[:endpoint].nil?
        xml << Hearth::XML::Node.new('TrackedClusterId', stub[:tracked_cluster_id].to_s) unless stub[:tracked_cluster_id].nil?
        xml << Hearth::XML::Node.new('RdsResourceId', stub[:rds_resource_id].to_s) unless stub[:rds_resource_id].nil?
        xml << Hearth::XML::Node.new('Port', stub[:port].to_s) unless stub[:port].nil?
        xml << Hearth::XML::Node.new('Type', stub[:type].to_s) unless stub[:type].nil?
        xml << Hearth::XML::Node.new('Role', stub[:role].to_s) unless stub[:role].nil?
        xml << Stubs::TargetHealth.stub('TargetHealth', stub[:target_health]) unless stub[:target_health].nil?
        xml
      end
    end

    # Structure Stubber for TargetHealth
    class TargetHealth
      def self.default(visited=[])
        return nil if visited.include?('TargetHealth')
        visited = visited + ['TargetHealth']
        {
          state: 'state',
          reason: 'reason',
          description: 'description',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::TargetHealth.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('State', stub[:state].to_s) unless stub[:state].nil?
        xml << Hearth::XML::Node.new('Reason', stub[:reason].to_s) unless stub[:reason].nil?
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        xml
      end
    end

    # Operation Stubber for DescribeDBSecurityGroups
    class DescribeDBSecurityGroups
      def self.default(visited=[])
        {
          marker: 'marker',
          db_security_groups: DBSecurityGroups.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeDBSecurityGroupsResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('DescribeDBSecurityGroupsResult')
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('DBSecurityGroups', Stubs::DBSecurityGroups.stub('DBSecurityGroup', stub[:db_security_groups])) unless stub[:db_security_groups].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for DBSecurityGroups
    class DBSecurityGroups
      def self.default(visited=[])
        return nil if visited.include?('DBSecurityGroups')
        visited = visited + ['DBSecurityGroups']
        [
          DBSecurityGroup.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::DBSecurityGroup.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for DescribeDBSnapshotAttributes
    class DescribeDBSnapshotAttributes
      def self.default(visited=[])
        {
          db_snapshot_attributes_result: DBSnapshotAttributesResult.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeDBSnapshotAttributesResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('DescribeDBSnapshotAttributesResult')
        xml << Stubs::DBSnapshotAttributesResult.stub('DBSnapshotAttributesResult', stub[:db_snapshot_attributes_result]) unless stub[:db_snapshot_attributes_result].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for DBSnapshotAttributesResult
    class DBSnapshotAttributesResult
      def self.default(visited=[])
        return nil if visited.include?('DBSnapshotAttributesResult')
        visited = visited + ['DBSnapshotAttributesResult']
        {
          db_snapshot_identifier: 'db_snapshot_identifier',
          db_snapshot_attributes: DBSnapshotAttributeList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DBSnapshotAttributesResult.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('DBSnapshotIdentifier', stub[:db_snapshot_identifier].to_s) unless stub[:db_snapshot_identifier].nil?
        xml << Hearth::XML::Node.new('DBSnapshotAttributes', Stubs::DBSnapshotAttributeList.stub('DBSnapshotAttribute', stub[:db_snapshot_attributes])) unless stub[:db_snapshot_attributes].nil?
        xml
      end
    end

    # List Stubber for DBSnapshotAttributeList
    class DBSnapshotAttributeList
      def self.default(visited=[])
        return nil if visited.include?('DBSnapshotAttributeList')
        visited = visited + ['DBSnapshotAttributeList']
        [
          DBSnapshotAttribute.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::DBSnapshotAttribute.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for DBSnapshotAttribute
    class DBSnapshotAttribute
      def self.default(visited=[])
        return nil if visited.include?('DBSnapshotAttribute')
        visited = visited + ['DBSnapshotAttribute']
        {
          attribute_name: 'attribute_name',
          attribute_values: AttributeValueList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DBSnapshotAttribute.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('AttributeName', stub[:attribute_name].to_s) unless stub[:attribute_name].nil?
        xml << Hearth::XML::Node.new('AttributeValues', Stubs::AttributeValueList.stub('AttributeValue', stub[:attribute_values])) unless stub[:attribute_values].nil?
        xml
      end
    end

    # Operation Stubber for DescribeDBSnapshots
    class DescribeDBSnapshots
      def self.default(visited=[])
        {
          marker: 'marker',
          db_snapshots: DBSnapshotList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeDBSnapshotsResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('DescribeDBSnapshotsResult')
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('DBSnapshots', Stubs::DBSnapshotList.stub('DBSnapshot', stub[:db_snapshots])) unless stub[:db_snapshots].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for DBSnapshotList
    class DBSnapshotList
      def self.default(visited=[])
        return nil if visited.include?('DBSnapshotList')
        visited = visited + ['DBSnapshotList']
        [
          DBSnapshot.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::DBSnapshot.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for DescribeDBSubnetGroups
    class DescribeDBSubnetGroups
      def self.default(visited=[])
        {
          marker: 'marker',
          db_subnet_groups: DBSubnetGroups.default(visited),
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
          DBSubnetGroup.default(visited)
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
          engine_defaults: EngineDefaults.default(visited),
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
          parameters: ParametersList.default(visited),
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

    # Operation Stubber for DescribeEngineDefaultParameters
    class DescribeEngineDefaultParameters
      def self.default(visited=[])
        {
          engine_defaults: EngineDefaults.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeEngineDefaultParametersResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('DescribeEngineDefaultParametersResult')
        xml << Stubs::EngineDefaults.stub('EngineDefaults', stub[:engine_defaults]) unless stub[:engine_defaults].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeEventCategories
    class DescribeEventCategories
      def self.default(visited=[])
        {
          event_categories_map_list: EventCategoriesMapList.default(visited),
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
          EventCategoriesMap.default(visited)
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
          event_categories: EventCategoriesList.default(visited),
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
          event_subscriptions_list: EventSubscriptionsList.default(visited),
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
          EventSubscription.default(visited)
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
          events: EventList.default(visited),
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
          Event.default(visited)
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
          event_categories: EventCategoriesList.default(visited),
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

    # Operation Stubber for DescribeExportTasks
    class DescribeExportTasks
      def self.default(visited=[])
        {
          marker: 'marker',
          export_tasks: ExportTasksList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeExportTasksResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('DescribeExportTasksResult')
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('ExportTasks', Stubs::ExportTasksList.stub('ExportTask', stub[:export_tasks])) unless stub[:export_tasks].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for ExportTasksList
    class ExportTasksList
      def self.default(visited=[])
        return nil if visited.include?('ExportTasksList')
        visited = visited + ['ExportTasksList']
        [
          ExportTask.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::ExportTask.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ExportTask
    class ExportTask
      def self.default(visited=[])
        return nil if visited.include?('ExportTask')
        visited = visited + ['ExportTask']
        {
          export_task_identifier: 'export_task_identifier',
          source_arn: 'source_arn',
          export_only: StringList.default(visited),
          snapshot_time: Time.now,
          task_start_time: Time.now,
          task_end_time: Time.now,
          s3_bucket: 's3_bucket',
          s3_prefix: 's3_prefix',
          iam_role_arn: 'iam_role_arn',
          kms_key_id: 'kms_key_id',
          status: 'status',
          percent_progress: 1,
          total_extracted_data_in_gb: 1,
          failure_cause: 'failure_cause',
          warning_message: 'warning_message',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ExportTask.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ExportTaskIdentifier', stub[:export_task_identifier].to_s) unless stub[:export_task_identifier].nil?
        xml << Hearth::XML::Node.new('SourceArn', stub[:source_arn].to_s) unless stub[:source_arn].nil?
        xml << Hearth::XML::Node.new('ExportOnly', Stubs::StringList.stub('member', stub[:export_only])) unless stub[:export_only].nil?
        xml << Hearth::XML::Node.new('SnapshotTime', Hearth::TimeHelper.to_date_time(stub[:snapshot_time])) unless stub[:snapshot_time].nil?
        xml << Hearth::XML::Node.new('TaskStartTime', Hearth::TimeHelper.to_date_time(stub[:task_start_time])) unless stub[:task_start_time].nil?
        xml << Hearth::XML::Node.new('TaskEndTime', Hearth::TimeHelper.to_date_time(stub[:task_end_time])) unless stub[:task_end_time].nil?
        xml << Hearth::XML::Node.new('S3Bucket', stub[:s3_bucket].to_s) unless stub[:s3_bucket].nil?
        xml << Hearth::XML::Node.new('S3Prefix', stub[:s3_prefix].to_s) unless stub[:s3_prefix].nil?
        xml << Hearth::XML::Node.new('IamRoleArn', stub[:iam_role_arn].to_s) unless stub[:iam_role_arn].nil?
        xml << Hearth::XML::Node.new('KmsKeyId', stub[:kms_key_id].to_s) unless stub[:kms_key_id].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('PercentProgress', stub[:percent_progress].to_s) unless stub[:percent_progress].nil?
        xml << Hearth::XML::Node.new('TotalExtractedDataInGB', stub[:total_extracted_data_in_gb].to_s) unless stub[:total_extracted_data_in_gb].nil?
        xml << Hearth::XML::Node.new('FailureCause', stub[:failure_cause].to_s) unless stub[:failure_cause].nil?
        xml << Hearth::XML::Node.new('WarningMessage', stub[:warning_message].to_s) unless stub[:warning_message].nil?
        xml
      end
    end

    # Operation Stubber for DescribeGlobalClusters
    class DescribeGlobalClusters
      def self.default(visited=[])
        {
          marker: 'marker',
          global_clusters: GlobalClusterList.default(visited),
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
          GlobalCluster.default(visited)
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

    # Operation Stubber for DescribeOptionGroupOptions
    class DescribeOptionGroupOptions
      def self.default(visited=[])
        {
          option_group_options: OptionGroupOptionsList.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeOptionGroupOptionsResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('DescribeOptionGroupOptionsResult')
        xml << Hearth::XML::Node.new('OptionGroupOptions', Stubs::OptionGroupOptionsList.stub('OptionGroupOption', stub[:option_group_options])) unless stub[:option_group_options].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for OptionGroupOptionsList
    class OptionGroupOptionsList
      def self.default(visited=[])
        return nil if visited.include?('OptionGroupOptionsList')
        visited = visited + ['OptionGroupOptionsList']
        [
          OptionGroupOption.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::OptionGroupOption.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for OptionGroupOption
    class OptionGroupOption
      def self.default(visited=[])
        return nil if visited.include?('OptionGroupOption')
        visited = visited + ['OptionGroupOption']
        {
          name: 'name',
          description: 'description',
          engine_name: 'engine_name',
          major_engine_version: 'major_engine_version',
          minimum_required_minor_engine_version: 'minimum_required_minor_engine_version',
          port_required: false,
          default_port: 1,
          options_depended_on: OptionsDependedOn.default(visited),
          options_conflicts_with: OptionsConflictsWith.default(visited),
          persistent: false,
          permanent: false,
          requires_auto_minor_engine_version_upgrade: false,
          vpc_only: false,
          supports_option_version_downgrade: false,
          option_group_option_settings: OptionGroupOptionSettingsList.default(visited),
          option_group_option_versions: OptionGroupOptionVersionsList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::OptionGroupOption.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        xml << Hearth::XML::Node.new('EngineName', stub[:engine_name].to_s) unless stub[:engine_name].nil?
        xml << Hearth::XML::Node.new('MajorEngineVersion', stub[:major_engine_version].to_s) unless stub[:major_engine_version].nil?
        xml << Hearth::XML::Node.new('MinimumRequiredMinorEngineVersion', stub[:minimum_required_minor_engine_version].to_s) unless stub[:minimum_required_minor_engine_version].nil?
        xml << Hearth::XML::Node.new('PortRequired', stub[:port_required].to_s) unless stub[:port_required].nil?
        xml << Hearth::XML::Node.new('DefaultPort', stub[:default_port].to_s) unless stub[:default_port].nil?
        xml << Hearth::XML::Node.new('OptionsDependedOn', Stubs::OptionsDependedOn.stub('OptionName', stub[:options_depended_on])) unless stub[:options_depended_on].nil?
        xml << Hearth::XML::Node.new('OptionsConflictsWith', Stubs::OptionsConflictsWith.stub('OptionConflictName', stub[:options_conflicts_with])) unless stub[:options_conflicts_with].nil?
        xml << Hearth::XML::Node.new('Persistent', stub[:persistent].to_s) unless stub[:persistent].nil?
        xml << Hearth::XML::Node.new('Permanent', stub[:permanent].to_s) unless stub[:permanent].nil?
        xml << Hearth::XML::Node.new('RequiresAutoMinorEngineVersionUpgrade', stub[:requires_auto_minor_engine_version_upgrade].to_s) unless stub[:requires_auto_minor_engine_version_upgrade].nil?
        xml << Hearth::XML::Node.new('VpcOnly', stub[:vpc_only].to_s) unless stub[:vpc_only].nil?
        xml << Hearth::XML::Node.new('SupportsOptionVersionDowngrade', stub[:supports_option_version_downgrade].to_s) unless stub[:supports_option_version_downgrade].nil?
        xml << Hearth::XML::Node.new('OptionGroupOptionSettings', Stubs::OptionGroupOptionSettingsList.stub('OptionGroupOptionSetting', stub[:option_group_option_settings])) unless stub[:option_group_option_settings].nil?
        xml << Hearth::XML::Node.new('OptionGroupOptionVersions', Stubs::OptionGroupOptionVersionsList.stub('OptionVersion', stub[:option_group_option_versions])) unless stub[:option_group_option_versions].nil?
        xml
      end
    end

    # List Stubber for OptionGroupOptionVersionsList
    class OptionGroupOptionVersionsList
      def self.default(visited=[])
        return nil if visited.include?('OptionGroupOptionVersionsList')
        visited = visited + ['OptionGroupOptionVersionsList']
        [
          OptionVersion.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::OptionVersion.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for OptionVersion
    class OptionVersion
      def self.default(visited=[])
        return nil if visited.include?('OptionVersion')
        visited = visited + ['OptionVersion']
        {
          version: 'version',
          is_default: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::OptionVersion.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Version', stub[:version].to_s) unless stub[:version].nil?
        xml << Hearth::XML::Node.new('IsDefault', stub[:is_default].to_s) unless stub[:is_default].nil?
        xml
      end
    end

    # List Stubber for OptionGroupOptionSettingsList
    class OptionGroupOptionSettingsList
      def self.default(visited=[])
        return nil if visited.include?('OptionGroupOptionSettingsList')
        visited = visited + ['OptionGroupOptionSettingsList']
        [
          OptionGroupOptionSetting.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::OptionGroupOptionSetting.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for OptionGroupOptionSetting
    class OptionGroupOptionSetting
      def self.default(visited=[])
        return nil if visited.include?('OptionGroupOptionSetting')
        visited = visited + ['OptionGroupOptionSetting']
        {
          setting_name: 'setting_name',
          setting_description: 'setting_description',
          default_value: 'default_value',
          apply_type: 'apply_type',
          allowed_values: 'allowed_values',
          is_modifiable: false,
          is_required: false,
          minimum_engine_version_per_allowed_value: MinimumEngineVersionPerAllowedValueList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::OptionGroupOptionSetting.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('SettingName', stub[:setting_name].to_s) unless stub[:setting_name].nil?
        xml << Hearth::XML::Node.new('SettingDescription', stub[:setting_description].to_s) unless stub[:setting_description].nil?
        xml << Hearth::XML::Node.new('DefaultValue', stub[:default_value].to_s) unless stub[:default_value].nil?
        xml << Hearth::XML::Node.new('ApplyType', stub[:apply_type].to_s) unless stub[:apply_type].nil?
        xml << Hearth::XML::Node.new('AllowedValues', stub[:allowed_values].to_s) unless stub[:allowed_values].nil?
        xml << Hearth::XML::Node.new('IsModifiable', stub[:is_modifiable].to_s) unless stub[:is_modifiable].nil?
        xml << Hearth::XML::Node.new('IsRequired', stub[:is_required].to_s) unless stub[:is_required].nil?
        xml << Hearth::XML::Node.new('MinimumEngineVersionPerAllowedValue', Stubs::MinimumEngineVersionPerAllowedValueList.stub('MinimumEngineVersionPerAllowedValue', stub[:minimum_engine_version_per_allowed_value])) unless stub[:minimum_engine_version_per_allowed_value].nil?
        xml
      end
    end

    # List Stubber for MinimumEngineVersionPerAllowedValueList
    class MinimumEngineVersionPerAllowedValueList
      def self.default(visited=[])
        return nil if visited.include?('MinimumEngineVersionPerAllowedValueList')
        visited = visited + ['MinimumEngineVersionPerAllowedValueList']
        [
          MinimumEngineVersionPerAllowedValue.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::MinimumEngineVersionPerAllowedValue.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for MinimumEngineVersionPerAllowedValue
    class MinimumEngineVersionPerAllowedValue
      def self.default(visited=[])
        return nil if visited.include?('MinimumEngineVersionPerAllowedValue')
        visited = visited + ['MinimumEngineVersionPerAllowedValue']
        {
          allowed_value: 'allowed_value',
          minimum_engine_version: 'minimum_engine_version',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::MinimumEngineVersionPerAllowedValue.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('AllowedValue', stub[:allowed_value].to_s) unless stub[:allowed_value].nil?
        xml << Hearth::XML::Node.new('MinimumEngineVersion', stub[:minimum_engine_version].to_s) unless stub[:minimum_engine_version].nil?
        xml
      end
    end

    # List Stubber for OptionsConflictsWith
    class OptionsConflictsWith
      def self.default(visited=[])
        return nil if visited.include?('OptionsConflictsWith')
        visited = visited + ['OptionsConflictsWith']
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

    # List Stubber for OptionsDependedOn
    class OptionsDependedOn
      def self.default(visited=[])
        return nil if visited.include?('OptionsDependedOn')
        visited = visited + ['OptionsDependedOn']
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

    # Operation Stubber for DescribeOptionGroups
    class DescribeOptionGroups
      def self.default(visited=[])
        {
          option_groups_list: OptionGroupsList.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeOptionGroupsResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('DescribeOptionGroupsResult')
        xml << Hearth::XML::Node.new('OptionGroupsList', Stubs::OptionGroupsList.stub('OptionGroup', stub[:option_groups_list])) unless stub[:option_groups_list].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for OptionGroupsList
    class OptionGroupsList
      def self.default(visited=[])
        return nil if visited.include?('OptionGroupsList')
        visited = visited + ['OptionGroupsList']
        [
          OptionGroup.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::OptionGroup.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for DescribeOrderableDBInstanceOptions
    class DescribeOrderableDBInstanceOptions
      def self.default(visited=[])
        {
          orderable_db_instance_options: OrderableDBInstanceOptionsList.default(visited),
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
          OrderableDBInstanceOption.default(visited)
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
          availability_zone_group: 'availability_zone_group',
          availability_zones: AvailabilityZoneList.default(visited),
          multi_az_capable: false,
          read_replica_capable: false,
          vpc: false,
          supports_storage_encryption: false,
          storage_type: 'storage_type',
          supports_iops: false,
          supports_enhanced_monitoring: false,
          supports_iam_database_authentication: false,
          supports_performance_insights: false,
          min_storage_size: 1,
          max_storage_size: 1,
          min_iops_per_db_instance: 1,
          max_iops_per_db_instance: 1,
          min_iops_per_gib: 1.0,
          max_iops_per_gib: 1.0,
          available_processor_features: AvailableProcessorFeatureList.default(visited),
          supported_engine_modes: EngineModeList.default(visited),
          supports_storage_autoscaling: false,
          supports_kerberos_authentication: false,
          outpost_capable: false,
          supported_activity_stream_modes: ActivityStreamModeList.default(visited),
          supports_global_databases: false,
          supports_clusters: false,
          supported_network_types: StringList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::OrderableDBInstanceOption.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Engine', stub[:engine].to_s) unless stub[:engine].nil?
        xml << Hearth::XML::Node.new('EngineVersion', stub[:engine_version].to_s) unless stub[:engine_version].nil?
        xml << Hearth::XML::Node.new('DBInstanceClass', stub[:db_instance_class].to_s) unless stub[:db_instance_class].nil?
        xml << Hearth::XML::Node.new('LicenseModel', stub[:license_model].to_s) unless stub[:license_model].nil?
        xml << Hearth::XML::Node.new('AvailabilityZoneGroup', stub[:availability_zone_group].to_s) unless stub[:availability_zone_group].nil?
        xml << Hearth::XML::Node.new('AvailabilityZones', Stubs::AvailabilityZoneList.stub('AvailabilityZone', stub[:availability_zones])) unless stub[:availability_zones].nil?
        xml << Hearth::XML::Node.new('MultiAZCapable', stub[:multi_az_capable].to_s) unless stub[:multi_az_capable].nil?
        xml << Hearth::XML::Node.new('ReadReplicaCapable', stub[:read_replica_capable].to_s) unless stub[:read_replica_capable].nil?
        xml << Hearth::XML::Node.new('Vpc', stub[:vpc].to_s) unless stub[:vpc].nil?
        xml << Hearth::XML::Node.new('SupportsStorageEncryption', stub[:supports_storage_encryption].to_s) unless stub[:supports_storage_encryption].nil?
        xml << Hearth::XML::Node.new('StorageType', stub[:storage_type].to_s) unless stub[:storage_type].nil?
        xml << Hearth::XML::Node.new('SupportsIops', stub[:supports_iops].to_s) unless stub[:supports_iops].nil?
        xml << Hearth::XML::Node.new('SupportsEnhancedMonitoring', stub[:supports_enhanced_monitoring].to_s) unless stub[:supports_enhanced_monitoring].nil?
        xml << Hearth::XML::Node.new('SupportsIAMDatabaseAuthentication', stub[:supports_iam_database_authentication].to_s) unless stub[:supports_iam_database_authentication].nil?
        xml << Hearth::XML::Node.new('SupportsPerformanceInsights', stub[:supports_performance_insights].to_s) unless stub[:supports_performance_insights].nil?
        xml << Hearth::XML::Node.new('MinStorageSize', stub[:min_storage_size].to_s) unless stub[:min_storage_size].nil?
        xml << Hearth::XML::Node.new('MaxStorageSize', stub[:max_storage_size].to_s) unless stub[:max_storage_size].nil?
        xml << Hearth::XML::Node.new('MinIopsPerDbInstance', stub[:min_iops_per_db_instance].to_s) unless stub[:min_iops_per_db_instance].nil?
        xml << Hearth::XML::Node.new('MaxIopsPerDbInstance', stub[:max_iops_per_db_instance].to_s) unless stub[:max_iops_per_db_instance].nil?
        xml << Hearth::XML::Node.new('MinIopsPerGib', Hearth::NumberHelper.serialize(stub[:min_iops_per_gib]).to_s) unless stub[:min_iops_per_gib].nil?
        xml << Hearth::XML::Node.new('MaxIopsPerGib', Hearth::NumberHelper.serialize(stub[:max_iops_per_gib]).to_s) unless stub[:max_iops_per_gib].nil?
        xml << Hearth::XML::Node.new('AvailableProcessorFeatures', Stubs::AvailableProcessorFeatureList.stub('AvailableProcessorFeature', stub[:available_processor_features])) unless stub[:available_processor_features].nil?
        xml << Hearth::XML::Node.new('SupportedEngineModes', Stubs::EngineModeList.stub('member', stub[:supported_engine_modes])) unless stub[:supported_engine_modes].nil?
        xml << Hearth::XML::Node.new('SupportsStorageAutoscaling', stub[:supports_storage_autoscaling].to_s) unless stub[:supports_storage_autoscaling].nil?
        xml << Hearth::XML::Node.new('SupportsKerberosAuthentication', stub[:supports_kerberos_authentication].to_s) unless stub[:supports_kerberos_authentication].nil?
        xml << Hearth::XML::Node.new('OutpostCapable', stub[:outpost_capable].to_s) unless stub[:outpost_capable].nil?
        xml << Hearth::XML::Node.new('SupportedActivityStreamModes', Stubs::ActivityStreamModeList.stub('member', stub[:supported_activity_stream_modes])) unless stub[:supported_activity_stream_modes].nil?
        xml << Hearth::XML::Node.new('SupportsGlobalDatabases', stub[:supports_global_databases].to_s) unless stub[:supports_global_databases].nil?
        xml << Hearth::XML::Node.new('SupportsClusters', stub[:supports_clusters].to_s) unless stub[:supports_clusters].nil?
        xml << Hearth::XML::Node.new('SupportedNetworkTypes', Stubs::StringList.stub('member', stub[:supported_network_types])) unless stub[:supported_network_types].nil?
        xml
      end
    end

    # List Stubber for ActivityStreamModeList
    class ActivityStreamModeList
      def self.default(visited=[])
        return nil if visited.include?('ActivityStreamModeList')
        visited = visited + ['ActivityStreamModeList']
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

    # List Stubber for AvailableProcessorFeatureList
    class AvailableProcessorFeatureList
      def self.default(visited=[])
        return nil if visited.include?('AvailableProcessorFeatureList')
        visited = visited + ['AvailableProcessorFeatureList']
        [
          AvailableProcessorFeature.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::AvailableProcessorFeature.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for AvailableProcessorFeature
    class AvailableProcessorFeature
      def self.default(visited=[])
        return nil if visited.include?('AvailableProcessorFeature')
        visited = visited + ['AvailableProcessorFeature']
        {
          name: 'name',
          default_value: 'default_value',
          allowed_values: 'allowed_values',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::AvailableProcessorFeature.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Hearth::XML::Node.new('DefaultValue', stub[:default_value].to_s) unless stub[:default_value].nil?
        xml << Hearth::XML::Node.new('AllowedValues', stub[:allowed_values].to_s) unless stub[:allowed_values].nil?
        xml
      end
    end

    # List Stubber for AvailabilityZoneList
    class AvailabilityZoneList
      def self.default(visited=[])
        return nil if visited.include?('AvailabilityZoneList')
        visited = visited + ['AvailabilityZoneList']
        [
          AvailabilityZone.default(visited)
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
          pending_maintenance_actions: PendingMaintenanceActions.default(visited),
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
          ResourcePendingMaintenanceActions.default(visited)
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

    # Operation Stubber for DescribeReservedDBInstances
    class DescribeReservedDBInstances
      def self.default(visited=[])
        {
          marker: 'marker',
          reserved_db_instances: ReservedDBInstanceList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeReservedDBInstancesResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('DescribeReservedDBInstancesResult')
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('ReservedDBInstances', Stubs::ReservedDBInstanceList.stub('ReservedDBInstance', stub[:reserved_db_instances])) unless stub[:reserved_db_instances].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for ReservedDBInstanceList
    class ReservedDBInstanceList
      def self.default(visited=[])
        return nil if visited.include?('ReservedDBInstanceList')
        visited = visited + ['ReservedDBInstanceList']
        [
          ReservedDBInstance.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::ReservedDBInstance.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ReservedDBInstance
    class ReservedDBInstance
      def self.default(visited=[])
        return nil if visited.include?('ReservedDBInstance')
        visited = visited + ['ReservedDBInstance']
        {
          reserved_db_instance_id: 'reserved_db_instance_id',
          reserved_db_instances_offering_id: 'reserved_db_instances_offering_id',
          db_instance_class: 'db_instance_class',
          start_time: Time.now,
          duration: 1,
          fixed_price: 1.0,
          usage_price: 1.0,
          currency_code: 'currency_code',
          db_instance_count: 1,
          product_description: 'product_description',
          offering_type: 'offering_type',
          multi_az: false,
          state: 'state',
          recurring_charges: RecurringChargeList.default(visited),
          reserved_db_instance_arn: 'reserved_db_instance_arn',
          lease_id: 'lease_id',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ReservedDBInstance.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ReservedDBInstanceId', stub[:reserved_db_instance_id].to_s) unless stub[:reserved_db_instance_id].nil?
        xml << Hearth::XML::Node.new('ReservedDBInstancesOfferingId', stub[:reserved_db_instances_offering_id].to_s) unless stub[:reserved_db_instances_offering_id].nil?
        xml << Hearth::XML::Node.new('DBInstanceClass', stub[:db_instance_class].to_s) unless stub[:db_instance_class].nil?
        xml << Hearth::XML::Node.new('StartTime', Hearth::TimeHelper.to_date_time(stub[:start_time])) unless stub[:start_time].nil?
        xml << Hearth::XML::Node.new('Duration', stub[:duration].to_s) unless stub[:duration].nil?
        xml << Hearth::XML::Node.new('FixedPrice', Hearth::NumberHelper.serialize(stub[:fixed_price]).to_s) unless stub[:fixed_price].nil?
        xml << Hearth::XML::Node.new('UsagePrice', Hearth::NumberHelper.serialize(stub[:usage_price]).to_s) unless stub[:usage_price].nil?
        xml << Hearth::XML::Node.new('CurrencyCode', stub[:currency_code].to_s) unless stub[:currency_code].nil?
        xml << Hearth::XML::Node.new('DBInstanceCount', stub[:db_instance_count].to_s) unless stub[:db_instance_count].nil?
        xml << Hearth::XML::Node.new('ProductDescription', stub[:product_description].to_s) unless stub[:product_description].nil?
        xml << Hearth::XML::Node.new('OfferingType', stub[:offering_type].to_s) unless stub[:offering_type].nil?
        xml << Hearth::XML::Node.new('MultiAZ', stub[:multi_az].to_s) unless stub[:multi_az].nil?
        xml << Hearth::XML::Node.new('State', stub[:state].to_s) unless stub[:state].nil?
        xml << Hearth::XML::Node.new('RecurringCharges', Stubs::RecurringChargeList.stub('RecurringCharge', stub[:recurring_charges])) unless stub[:recurring_charges].nil?
        xml << Hearth::XML::Node.new('ReservedDBInstanceArn', stub[:reserved_db_instance_arn].to_s) unless stub[:reserved_db_instance_arn].nil?
        xml << Hearth::XML::Node.new('LeaseId', stub[:lease_id].to_s) unless stub[:lease_id].nil?
        xml
      end
    end

    # List Stubber for RecurringChargeList
    class RecurringChargeList
      def self.default(visited=[])
        return nil if visited.include?('RecurringChargeList')
        visited = visited + ['RecurringChargeList']
        [
          RecurringCharge.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::RecurringCharge.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for RecurringCharge
    class RecurringCharge
      def self.default(visited=[])
        return nil if visited.include?('RecurringCharge')
        visited = visited + ['RecurringCharge']
        {
          recurring_charge_amount: 1.0,
          recurring_charge_frequency: 'recurring_charge_frequency',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::RecurringCharge.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('RecurringChargeAmount', Hearth::NumberHelper.serialize(stub[:recurring_charge_amount]).to_s) unless stub[:recurring_charge_amount].nil?
        xml << Hearth::XML::Node.new('RecurringChargeFrequency', stub[:recurring_charge_frequency].to_s) unless stub[:recurring_charge_frequency].nil?
        xml
      end
    end

    # Operation Stubber for DescribeReservedDBInstancesOfferings
    class DescribeReservedDBInstancesOfferings
      def self.default(visited=[])
        {
          marker: 'marker',
          reserved_db_instances_offerings: ReservedDBInstancesOfferingList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeReservedDBInstancesOfferingsResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('DescribeReservedDBInstancesOfferingsResult')
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('ReservedDBInstancesOfferings', Stubs::ReservedDBInstancesOfferingList.stub('ReservedDBInstancesOffering', stub[:reserved_db_instances_offerings])) unless stub[:reserved_db_instances_offerings].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for ReservedDBInstancesOfferingList
    class ReservedDBInstancesOfferingList
      def self.default(visited=[])
        return nil if visited.include?('ReservedDBInstancesOfferingList')
        visited = visited + ['ReservedDBInstancesOfferingList']
        [
          ReservedDBInstancesOffering.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::ReservedDBInstancesOffering.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ReservedDBInstancesOffering
    class ReservedDBInstancesOffering
      def self.default(visited=[])
        return nil if visited.include?('ReservedDBInstancesOffering')
        visited = visited + ['ReservedDBInstancesOffering']
        {
          reserved_db_instances_offering_id: 'reserved_db_instances_offering_id',
          db_instance_class: 'db_instance_class',
          duration: 1,
          fixed_price: 1.0,
          usage_price: 1.0,
          currency_code: 'currency_code',
          product_description: 'product_description',
          offering_type: 'offering_type',
          multi_az: false,
          recurring_charges: RecurringChargeList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ReservedDBInstancesOffering.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ReservedDBInstancesOfferingId', stub[:reserved_db_instances_offering_id].to_s) unless stub[:reserved_db_instances_offering_id].nil?
        xml << Hearth::XML::Node.new('DBInstanceClass', stub[:db_instance_class].to_s) unless stub[:db_instance_class].nil?
        xml << Hearth::XML::Node.new('Duration', stub[:duration].to_s) unless stub[:duration].nil?
        xml << Hearth::XML::Node.new('FixedPrice', Hearth::NumberHelper.serialize(stub[:fixed_price]).to_s) unless stub[:fixed_price].nil?
        xml << Hearth::XML::Node.new('UsagePrice', Hearth::NumberHelper.serialize(stub[:usage_price]).to_s) unless stub[:usage_price].nil?
        xml << Hearth::XML::Node.new('CurrencyCode', stub[:currency_code].to_s) unless stub[:currency_code].nil?
        xml << Hearth::XML::Node.new('ProductDescription', stub[:product_description].to_s) unless stub[:product_description].nil?
        xml << Hearth::XML::Node.new('OfferingType', stub[:offering_type].to_s) unless stub[:offering_type].nil?
        xml << Hearth::XML::Node.new('MultiAZ', stub[:multi_az].to_s) unless stub[:multi_az].nil?
        xml << Hearth::XML::Node.new('RecurringCharges', Stubs::RecurringChargeList.stub('RecurringCharge', stub[:recurring_charges])) unless stub[:recurring_charges].nil?
        xml
      end
    end

    # Operation Stubber for DescribeSourceRegions
    class DescribeSourceRegions
      def self.default(visited=[])
        {
          marker: 'marker',
          source_regions: SourceRegionList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeSourceRegionsResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('DescribeSourceRegionsResult')
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('SourceRegions', Stubs::SourceRegionList.stub('SourceRegion', stub[:source_regions])) unless stub[:source_regions].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for SourceRegionList
    class SourceRegionList
      def self.default(visited=[])
        return nil if visited.include?('SourceRegionList')
        visited = visited + ['SourceRegionList']
        [
          SourceRegion.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::SourceRegion.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for SourceRegion
    class SourceRegion
      def self.default(visited=[])
        return nil if visited.include?('SourceRegion')
        visited = visited + ['SourceRegion']
        {
          region_name: 'region_name',
          endpoint: 'endpoint',
          status: 'status',
          supports_db_instance_automated_backups_replication: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::SourceRegion.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('RegionName', stub[:region_name].to_s) unless stub[:region_name].nil?
        xml << Hearth::XML::Node.new('Endpoint', stub[:endpoint].to_s) unless stub[:endpoint].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('SupportsDBInstanceAutomatedBackupsReplication', stub[:supports_db_instance_automated_backups_replication].to_s) unless stub[:supports_db_instance_automated_backups_replication].nil?
        xml
      end
    end

    # Operation Stubber for DescribeValidDBInstanceModifications
    class DescribeValidDBInstanceModifications
      def self.default(visited=[])
        {
          valid_db_instance_modifications_message: ValidDBInstanceModificationsMessage.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeValidDBInstanceModificationsResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('DescribeValidDBInstanceModificationsResult')
        xml << Stubs::ValidDBInstanceModificationsMessage.stub('ValidDBInstanceModificationsMessage', stub[:valid_db_instance_modifications_message]) unless stub[:valid_db_instance_modifications_message].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for ValidDBInstanceModificationsMessage
    class ValidDBInstanceModificationsMessage
      def self.default(visited=[])
        return nil if visited.include?('ValidDBInstanceModificationsMessage')
        visited = visited + ['ValidDBInstanceModificationsMessage']
        {
          storage: ValidStorageOptionsList.default(visited),
          valid_processor_features: AvailableProcessorFeatureList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ValidDBInstanceModificationsMessage.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Storage', Stubs::ValidStorageOptionsList.stub('ValidStorageOptions', stub[:storage])) unless stub[:storage].nil?
        xml << Hearth::XML::Node.new('ValidProcessorFeatures', Stubs::AvailableProcessorFeatureList.stub('AvailableProcessorFeature', stub[:valid_processor_features])) unless stub[:valid_processor_features].nil?
        xml
      end
    end

    # List Stubber for ValidStorageOptionsList
    class ValidStorageOptionsList
      def self.default(visited=[])
        return nil if visited.include?('ValidStorageOptionsList')
        visited = visited + ['ValidStorageOptionsList']
        [
          ValidStorageOptions.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::ValidStorageOptions.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ValidStorageOptions
    class ValidStorageOptions
      def self.default(visited=[])
        return nil if visited.include?('ValidStorageOptions')
        visited = visited + ['ValidStorageOptions']
        {
          storage_type: 'storage_type',
          storage_size: RangeList.default(visited),
          provisioned_iops: RangeList.default(visited),
          iops_to_storage_ratio: DoubleRangeList.default(visited),
          supports_storage_autoscaling: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ValidStorageOptions.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('StorageType', stub[:storage_type].to_s) unless stub[:storage_type].nil?
        xml << Hearth::XML::Node.new('StorageSize', Stubs::RangeList.stub('Range', stub[:storage_size])) unless stub[:storage_size].nil?
        xml << Hearth::XML::Node.new('ProvisionedIops', Stubs::RangeList.stub('Range', stub[:provisioned_iops])) unless stub[:provisioned_iops].nil?
        xml << Hearth::XML::Node.new('IopsToStorageRatio', Stubs::DoubleRangeList.stub('DoubleRange', stub[:iops_to_storage_ratio])) unless stub[:iops_to_storage_ratio].nil?
        xml << Hearth::XML::Node.new('SupportsStorageAutoscaling', stub[:supports_storage_autoscaling].to_s) unless stub[:supports_storage_autoscaling].nil?
        xml
      end
    end

    # List Stubber for DoubleRangeList
    class DoubleRangeList
      def self.default(visited=[])
        return nil if visited.include?('DoubleRangeList')
        visited = visited + ['DoubleRangeList']
        [
          DoubleRange.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::DoubleRange.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for DoubleRange
    class DoubleRange
      def self.default(visited=[])
        return nil if visited.include?('DoubleRange')
        visited = visited + ['DoubleRange']
        {
          from: 1.0,
          to: 1.0,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DoubleRange.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('From', Hearth::NumberHelper.serialize(stub[:from]).to_s) unless stub[:from].nil?
        xml << Hearth::XML::Node.new('To', Hearth::NumberHelper.serialize(stub[:to]).to_s) unless stub[:to].nil?
        xml
      end
    end

    # List Stubber for RangeList
    class RangeList
      def self.default(visited=[])
        return nil if visited.include?('RangeList')
        visited = visited + ['RangeList']
        [
          Range.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::Range.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Range
    class Range
      def self.default(visited=[])
        return nil if visited.include?('Range')
        visited = visited + ['Range']
        {
          from: 1,
          to: 1,
          step: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Range.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('From', stub[:from].to_s) unless stub[:from].nil?
        xml << Hearth::XML::Node.new('To', stub[:to].to_s) unless stub[:to].nil?
        xml << Hearth::XML::Node.new('Step', stub[:step].to_s) unless stub[:step].nil?
        xml
      end
    end

    # Operation Stubber for DownloadDBLogFilePortion
    class DownloadDBLogFilePortion
      def self.default(visited=[])
        {
          log_file_data: 'log_file_data',
          marker: 'marker',
          additional_data_pending: false,
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DownloadDBLogFilePortionResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('DownloadDBLogFilePortionResult')
        xml << Hearth::XML::Node.new('LogFileData', stub[:log_file_data].to_s) unless stub[:log_file_data].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('AdditionalDataPending', stub[:additional_data_pending].to_s) unless stub[:additional_data_pending].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for FailoverDBCluster
    class FailoverDBCluster
      def self.default(visited=[])
        {
          db_cluster: DBCluster.default(visited),
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

    # Operation Stubber for FailoverGlobalCluster
    class FailoverGlobalCluster
      def self.default(visited=[])
        {
          global_cluster: GlobalCluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('FailoverGlobalClusterResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('FailoverGlobalClusterResult')
        xml << Stubs::GlobalCluster.stub('GlobalCluster', stub[:global_cluster]) unless stub[:global_cluster].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tag_list: TagList.default(visited),
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

    # Operation Stubber for ModifyCertificates
    class ModifyCertificates
      def self.default(visited=[])
        {
          certificate: Certificate.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ModifyCertificatesResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('ModifyCertificatesResult')
        xml << Stubs::Certificate.stub('Certificate', stub[:certificate]) unless stub[:certificate].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ModifyCurrentDBClusterCapacity
    class ModifyCurrentDBClusterCapacity
      def self.default(visited=[])
        {
          db_cluster_identifier: 'db_cluster_identifier',
          pending_capacity: 1,
          current_capacity: 1,
          seconds_before_timeout: 1,
          timeout_action: 'timeout_action',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ModifyCurrentDBClusterCapacityResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('ModifyCurrentDBClusterCapacityResult')
        xml << Hearth::XML::Node.new('DBClusterIdentifier', stub[:db_cluster_identifier].to_s) unless stub[:db_cluster_identifier].nil?
        xml << Hearth::XML::Node.new('PendingCapacity', stub[:pending_capacity].to_s) unless stub[:pending_capacity].nil?
        xml << Hearth::XML::Node.new('CurrentCapacity', stub[:current_capacity].to_s) unless stub[:current_capacity].nil?
        xml << Hearth::XML::Node.new('SecondsBeforeTimeout', stub[:seconds_before_timeout].to_s) unless stub[:seconds_before_timeout].nil?
        xml << Hearth::XML::Node.new('TimeoutAction', stub[:timeout_action].to_s) unless stub[:timeout_action].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ModifyCustomDBEngineVersion
    class ModifyCustomDBEngineVersion
      def self.default(visited=[])
        {
          engine: 'engine',
          engine_version: 'engine_version',
          db_parameter_group_family: 'db_parameter_group_family',
          db_engine_description: 'db_engine_description',
          db_engine_version_description: 'db_engine_version_description',
          default_character_set: CharacterSet.default(visited),
          supported_character_sets: SupportedCharacterSetsList.default(visited),
          supported_nchar_character_sets: SupportedCharacterSetsList.default(visited),
          valid_upgrade_target: ValidUpgradeTargetList.default(visited),
          supported_timezones: SupportedTimezonesList.default(visited),
          exportable_log_types: LogTypeList.default(visited),
          supports_log_exports_to_cloudwatch_logs: false,
          supports_read_replica: false,
          supported_engine_modes: EngineModeList.default(visited),
          supported_feature_names: FeatureNameList.default(visited),
          status: 'status',
          supports_parallel_query: false,
          supports_global_databases: false,
          major_engine_version: 'major_engine_version',
          database_installation_files_s3_bucket_name: 'database_installation_files_s3_bucket_name',
          database_installation_files_s3_prefix: 'database_installation_files_s3_prefix',
          db_engine_version_arn: 'db_engine_version_arn',
          kms_key_id: 'kms_key_id',
          create_time: Time.now,
          tag_list: TagList.default(visited),
          supports_babelfish: false,
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ModifyCustomDBEngineVersionResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('ModifyCustomDBEngineVersionResult')
        xml << Hearth::XML::Node.new('Engine', stub[:engine].to_s) unless stub[:engine].nil?
        xml << Hearth::XML::Node.new('EngineVersion', stub[:engine_version].to_s) unless stub[:engine_version].nil?
        xml << Hearth::XML::Node.new('DBParameterGroupFamily', stub[:db_parameter_group_family].to_s) unless stub[:db_parameter_group_family].nil?
        xml << Hearth::XML::Node.new('DBEngineDescription', stub[:db_engine_description].to_s) unless stub[:db_engine_description].nil?
        xml << Hearth::XML::Node.new('DBEngineVersionDescription', stub[:db_engine_version_description].to_s) unless stub[:db_engine_version_description].nil?
        xml << Stubs::CharacterSet.stub('DefaultCharacterSet', stub[:default_character_set]) unless stub[:default_character_set].nil?
        xml << Hearth::XML::Node.new('SupportedCharacterSets', Stubs::SupportedCharacterSetsList.stub('CharacterSet', stub[:supported_character_sets])) unless stub[:supported_character_sets].nil?
        xml << Hearth::XML::Node.new('SupportedNcharCharacterSets', Stubs::SupportedCharacterSetsList.stub('CharacterSet', stub[:supported_nchar_character_sets])) unless stub[:supported_nchar_character_sets].nil?
        xml << Hearth::XML::Node.new('ValidUpgradeTarget', Stubs::ValidUpgradeTargetList.stub('UpgradeTarget', stub[:valid_upgrade_target])) unless stub[:valid_upgrade_target].nil?
        xml << Hearth::XML::Node.new('SupportedTimezones', Stubs::SupportedTimezonesList.stub('Timezone', stub[:supported_timezones])) unless stub[:supported_timezones].nil?
        xml << Hearth::XML::Node.new('ExportableLogTypes', Stubs::LogTypeList.stub('member', stub[:exportable_log_types])) unless stub[:exportable_log_types].nil?
        xml << Hearth::XML::Node.new('SupportsLogExportsToCloudwatchLogs', stub[:supports_log_exports_to_cloudwatch_logs].to_s) unless stub[:supports_log_exports_to_cloudwatch_logs].nil?
        xml << Hearth::XML::Node.new('SupportsReadReplica', stub[:supports_read_replica].to_s) unless stub[:supports_read_replica].nil?
        xml << Hearth::XML::Node.new('SupportedEngineModes', Stubs::EngineModeList.stub('member', stub[:supported_engine_modes])) unless stub[:supported_engine_modes].nil?
        xml << Hearth::XML::Node.new('SupportedFeatureNames', Stubs::FeatureNameList.stub('member', stub[:supported_feature_names])) unless stub[:supported_feature_names].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('SupportsParallelQuery', stub[:supports_parallel_query].to_s) unless stub[:supports_parallel_query].nil?
        xml << Hearth::XML::Node.new('SupportsGlobalDatabases', stub[:supports_global_databases].to_s) unless stub[:supports_global_databases].nil?
        xml << Hearth::XML::Node.new('MajorEngineVersion', stub[:major_engine_version].to_s) unless stub[:major_engine_version].nil?
        xml << Hearth::XML::Node.new('DatabaseInstallationFilesS3BucketName', stub[:database_installation_files_s3_bucket_name].to_s) unless stub[:database_installation_files_s3_bucket_name].nil?
        xml << Hearth::XML::Node.new('DatabaseInstallationFilesS3Prefix', stub[:database_installation_files_s3_prefix].to_s) unless stub[:database_installation_files_s3_prefix].nil?
        xml << Hearth::XML::Node.new('DBEngineVersionArn', stub[:db_engine_version_arn].to_s) unless stub[:db_engine_version_arn].nil?
        xml << Hearth::XML::Node.new('KMSKeyId', stub[:kms_key_id].to_s) unless stub[:kms_key_id].nil?
        xml << Hearth::XML::Node.new('CreateTime', Hearth::TimeHelper.to_date_time(stub[:create_time])) unless stub[:create_time].nil?
        xml << Hearth::XML::Node.new('TagList', Stubs::TagList.stub('Tag', stub[:tag_list])) unless stub[:tag_list].nil?
        xml << Hearth::XML::Node.new('SupportsBabelfish', stub[:supports_babelfish].to_s) unless stub[:supports_babelfish].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ModifyDBCluster
    class ModifyDBCluster
      def self.default(visited=[])
        {
          db_cluster: DBCluster.default(visited),
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

    # Operation Stubber for ModifyDBClusterEndpoint
    class ModifyDBClusterEndpoint
      def self.default(visited=[])
        {
          db_cluster_endpoint_identifier: 'db_cluster_endpoint_identifier',
          db_cluster_identifier: 'db_cluster_identifier',
          db_cluster_endpoint_resource_identifier: 'db_cluster_endpoint_resource_identifier',
          endpoint: 'endpoint',
          status: 'status',
          endpoint_type: 'endpoint_type',
          custom_endpoint_type: 'custom_endpoint_type',
          static_members: StringList.default(visited),
          excluded_members: StringList.default(visited),
          db_cluster_endpoint_arn: 'db_cluster_endpoint_arn',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ModifyDBClusterEndpointResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('ModifyDBClusterEndpointResult')
        xml << Hearth::XML::Node.new('DBClusterEndpointIdentifier', stub[:db_cluster_endpoint_identifier].to_s) unless stub[:db_cluster_endpoint_identifier].nil?
        xml << Hearth::XML::Node.new('DBClusterIdentifier', stub[:db_cluster_identifier].to_s) unless stub[:db_cluster_identifier].nil?
        xml << Hearth::XML::Node.new('DBClusterEndpointResourceIdentifier', stub[:db_cluster_endpoint_resource_identifier].to_s) unless stub[:db_cluster_endpoint_resource_identifier].nil?
        xml << Hearth::XML::Node.new('Endpoint', stub[:endpoint].to_s) unless stub[:endpoint].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('EndpointType', stub[:endpoint_type].to_s) unless stub[:endpoint_type].nil?
        xml << Hearth::XML::Node.new('CustomEndpointType', stub[:custom_endpoint_type].to_s) unless stub[:custom_endpoint_type].nil?
        xml << Hearth::XML::Node.new('StaticMembers', Stubs::StringList.stub('member', stub[:static_members])) unless stub[:static_members].nil?
        xml << Hearth::XML::Node.new('ExcludedMembers', Stubs::StringList.stub('member', stub[:excluded_members])) unless stub[:excluded_members].nil?
        xml << Hearth::XML::Node.new('DBClusterEndpointArn', stub[:db_cluster_endpoint_arn].to_s) unless stub[:db_cluster_endpoint_arn].nil?
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
          db_cluster_snapshot_attributes_result: DBClusterSnapshotAttributesResult.default(visited),
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
          db_instance: DBInstance.default(visited),
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

    # Operation Stubber for ModifyDBParameterGroup
    class ModifyDBParameterGroup
      def self.default(visited=[])
        {
          db_parameter_group_name: 'db_parameter_group_name',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ModifyDBParameterGroupResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('ModifyDBParameterGroupResult')
        xml << Hearth::XML::Node.new('DBParameterGroupName', stub[:db_parameter_group_name].to_s) unless stub[:db_parameter_group_name].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ModifyDBProxy
    class ModifyDBProxy
      def self.default(visited=[])
        {
          db_proxy: DBProxy.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ModifyDBProxyResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('ModifyDBProxyResult')
        xml << Stubs::DBProxy.stub('DBProxy', stub[:db_proxy]) unless stub[:db_proxy].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ModifyDBProxyEndpoint
    class ModifyDBProxyEndpoint
      def self.default(visited=[])
        {
          db_proxy_endpoint: DBProxyEndpoint.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ModifyDBProxyEndpointResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('ModifyDBProxyEndpointResult')
        xml << Stubs::DBProxyEndpoint.stub('DBProxyEndpoint', stub[:db_proxy_endpoint]) unless stub[:db_proxy_endpoint].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ModifyDBProxyTargetGroup
    class ModifyDBProxyTargetGroup
      def self.default(visited=[])
        {
          db_proxy_target_group: DBProxyTargetGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ModifyDBProxyTargetGroupResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('ModifyDBProxyTargetGroupResult')
        xml << Stubs::DBProxyTargetGroup.stub('DBProxyTargetGroup', stub[:db_proxy_target_group]) unless stub[:db_proxy_target_group].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ModifyDBSnapshot
    class ModifyDBSnapshot
      def self.default(visited=[])
        {
          db_snapshot: DBSnapshot.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ModifyDBSnapshotResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('ModifyDBSnapshotResult')
        xml << Stubs::DBSnapshot.stub('DBSnapshot', stub[:db_snapshot]) unless stub[:db_snapshot].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ModifyDBSnapshotAttribute
    class ModifyDBSnapshotAttribute
      def self.default(visited=[])
        {
          db_snapshot_attributes_result: DBSnapshotAttributesResult.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ModifyDBSnapshotAttributeResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('ModifyDBSnapshotAttributeResult')
        xml << Stubs::DBSnapshotAttributesResult.stub('DBSnapshotAttributesResult', stub[:db_snapshot_attributes_result]) unless stub[:db_snapshot_attributes_result].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ModifyDBSubnetGroup
    class ModifyDBSubnetGroup
      def self.default(visited=[])
        {
          db_subnet_group: DBSubnetGroup.default(visited),
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
          event_subscription: EventSubscription.default(visited),
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
          global_cluster: GlobalCluster.default(visited),
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

    # Operation Stubber for ModifyOptionGroup
    class ModifyOptionGroup
      def self.default(visited=[])
        {
          option_group: OptionGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ModifyOptionGroupResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('ModifyOptionGroupResult')
        xml << Stubs::OptionGroup.stub('OptionGroup', stub[:option_group]) unless stub[:option_group].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for PromoteReadReplica
    class PromoteReadReplica
      def self.default(visited=[])
        {
          db_instance: DBInstance.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('PromoteReadReplicaResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('PromoteReadReplicaResult')
        xml << Stubs::DBInstance.stub('DBInstance', stub[:db_instance]) unless stub[:db_instance].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for PromoteReadReplicaDBCluster
    class PromoteReadReplicaDBCluster
      def self.default(visited=[])
        {
          db_cluster: DBCluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('PromoteReadReplicaDBClusterResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('PromoteReadReplicaDBClusterResult')
        xml << Stubs::DBCluster.stub('DBCluster', stub[:db_cluster]) unless stub[:db_cluster].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for PurchaseReservedDBInstancesOffering
    class PurchaseReservedDBInstancesOffering
      def self.default(visited=[])
        {
          reserved_db_instance: ReservedDBInstance.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('PurchaseReservedDBInstancesOfferingResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('PurchaseReservedDBInstancesOfferingResult')
        xml << Stubs::ReservedDBInstance.stub('ReservedDBInstance', stub[:reserved_db_instance]) unless stub[:reserved_db_instance].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for RebootDBCluster
    class RebootDBCluster
      def self.default(visited=[])
        {
          db_cluster: DBCluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('RebootDBClusterResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('RebootDBClusterResult')
        xml << Stubs::DBCluster.stub('DBCluster', stub[:db_cluster]) unless stub[:db_cluster].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for RebootDBInstance
    class RebootDBInstance
      def self.default(visited=[])
        {
          db_instance: DBInstance.default(visited),
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

    # Operation Stubber for RegisterDBProxyTargets
    class RegisterDBProxyTargets
      def self.default(visited=[])
        {
          db_proxy_targets: TargetList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('RegisterDBProxyTargetsResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('RegisterDBProxyTargetsResult')
        xml << Hearth::XML::Node.new('DBProxyTargets', Stubs::TargetList.stub('member', stub[:db_proxy_targets])) unless stub[:db_proxy_targets].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for RemoveFromGlobalCluster
    class RemoveFromGlobalCluster
      def self.default(visited=[])
        {
          global_cluster: GlobalCluster.default(visited),
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

    # Operation Stubber for RemoveRoleFromDBCluster
    class RemoveRoleFromDBCluster
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('RemoveRoleFromDBClusterResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('RemoveRoleFromDBClusterResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for RemoveRoleFromDBInstance
    class RemoveRoleFromDBInstance
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('RemoveRoleFromDBInstanceResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('RemoveRoleFromDBInstanceResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for RemoveSourceIdentifierFromSubscription
    class RemoveSourceIdentifierFromSubscription
      def self.default(visited=[])
        {
          event_subscription: EventSubscription.default(visited),
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

    # Operation Stubber for ResetDBParameterGroup
    class ResetDBParameterGroup
      def self.default(visited=[])
        {
          db_parameter_group_name: 'db_parameter_group_name',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ResetDBParameterGroupResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('ResetDBParameterGroupResult')
        xml << Hearth::XML::Node.new('DBParameterGroupName', stub[:db_parameter_group_name].to_s) unless stub[:db_parameter_group_name].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for RestoreDBClusterFromS3
    class RestoreDBClusterFromS3
      def self.default(visited=[])
        {
          db_cluster: DBCluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('RestoreDBClusterFromS3Response')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('RestoreDBClusterFromS3Result')
        xml << Stubs::DBCluster.stub('DBCluster', stub[:db_cluster]) unless stub[:db_cluster].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for RestoreDBClusterFromSnapshot
    class RestoreDBClusterFromSnapshot
      def self.default(visited=[])
        {
          db_cluster: DBCluster.default(visited),
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
          db_cluster: DBCluster.default(visited),
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

    # Operation Stubber for RestoreDBInstanceFromDBSnapshot
    class RestoreDBInstanceFromDBSnapshot
      def self.default(visited=[])
        {
          db_instance: DBInstance.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('RestoreDBInstanceFromDBSnapshotResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('RestoreDBInstanceFromDBSnapshotResult')
        xml << Stubs::DBInstance.stub('DBInstance', stub[:db_instance]) unless stub[:db_instance].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for RestoreDBInstanceFromS3
    class RestoreDBInstanceFromS3
      def self.default(visited=[])
        {
          db_instance: DBInstance.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('RestoreDBInstanceFromS3Response')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('RestoreDBInstanceFromS3Result')
        xml << Stubs::DBInstance.stub('DBInstance', stub[:db_instance]) unless stub[:db_instance].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for RestoreDBInstanceToPointInTime
    class RestoreDBInstanceToPointInTime
      def self.default(visited=[])
        {
          db_instance: DBInstance.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('RestoreDBInstanceToPointInTimeResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('RestoreDBInstanceToPointInTimeResult')
        xml << Stubs::DBInstance.stub('DBInstance', stub[:db_instance]) unless stub[:db_instance].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for RevokeDBSecurityGroupIngress
    class RevokeDBSecurityGroupIngress
      def self.default(visited=[])
        {
          db_security_group: DBSecurityGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('RevokeDBSecurityGroupIngressResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('RevokeDBSecurityGroupIngressResult')
        xml << Stubs::DBSecurityGroup.stub('DBSecurityGroup', stub[:db_security_group]) unless stub[:db_security_group].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartActivityStream
    class StartActivityStream
      def self.default(visited=[])
        {
          kms_key_id: 'kms_key_id',
          kinesis_stream_name: 'kinesis_stream_name',
          status: 'status',
          mode: 'mode',
          apply_immediately: false,
          engine_native_audit_fields_included: false,
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('StartActivityStreamResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('StartActivityStreamResult')
        xml << Hearth::XML::Node.new('KmsKeyId', stub[:kms_key_id].to_s) unless stub[:kms_key_id].nil?
        xml << Hearth::XML::Node.new('KinesisStreamName', stub[:kinesis_stream_name].to_s) unless stub[:kinesis_stream_name].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('Mode', stub[:mode].to_s) unless stub[:mode].nil?
        xml << Hearth::XML::Node.new('ApplyImmediately', stub[:apply_immediately].to_s) unless stub[:apply_immediately].nil?
        xml << Hearth::XML::Node.new('EngineNativeAuditFieldsIncluded', stub[:engine_native_audit_fields_included].to_s) unless stub[:engine_native_audit_fields_included].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartDBCluster
    class StartDBCluster
      def self.default(visited=[])
        {
          db_cluster: DBCluster.default(visited),
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

    # Operation Stubber for StartDBInstance
    class StartDBInstance
      def self.default(visited=[])
        {
          db_instance: DBInstance.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('StartDBInstanceResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('StartDBInstanceResult')
        xml << Stubs::DBInstance.stub('DBInstance', stub[:db_instance]) unless stub[:db_instance].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartDBInstanceAutomatedBackupsReplication
    class StartDBInstanceAutomatedBackupsReplication
      def self.default(visited=[])
        {
          db_instance_automated_backup: DBInstanceAutomatedBackup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('StartDBInstanceAutomatedBackupsReplicationResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('StartDBInstanceAutomatedBackupsReplicationResult')
        xml << Stubs::DBInstanceAutomatedBackup.stub('DBInstanceAutomatedBackup', stub[:db_instance_automated_backup]) unless stub[:db_instance_automated_backup].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartExportTask
    class StartExportTask
      def self.default(visited=[])
        {
          export_task_identifier: 'export_task_identifier',
          source_arn: 'source_arn',
          export_only: StringList.default(visited),
          snapshot_time: Time.now,
          task_start_time: Time.now,
          task_end_time: Time.now,
          s3_bucket: 's3_bucket',
          s3_prefix: 's3_prefix',
          iam_role_arn: 'iam_role_arn',
          kms_key_id: 'kms_key_id',
          status: 'status',
          percent_progress: 1,
          total_extracted_data_in_gb: 1,
          failure_cause: 'failure_cause',
          warning_message: 'warning_message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('StartExportTaskResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('StartExportTaskResult')
        xml << Hearth::XML::Node.new('ExportTaskIdentifier', stub[:export_task_identifier].to_s) unless stub[:export_task_identifier].nil?
        xml << Hearth::XML::Node.new('SourceArn', stub[:source_arn].to_s) unless stub[:source_arn].nil?
        xml << Hearth::XML::Node.new('ExportOnly', Stubs::StringList.stub('member', stub[:export_only])) unless stub[:export_only].nil?
        xml << Hearth::XML::Node.new('SnapshotTime', Hearth::TimeHelper.to_date_time(stub[:snapshot_time])) unless stub[:snapshot_time].nil?
        xml << Hearth::XML::Node.new('TaskStartTime', Hearth::TimeHelper.to_date_time(stub[:task_start_time])) unless stub[:task_start_time].nil?
        xml << Hearth::XML::Node.new('TaskEndTime', Hearth::TimeHelper.to_date_time(stub[:task_end_time])) unless stub[:task_end_time].nil?
        xml << Hearth::XML::Node.new('S3Bucket', stub[:s3_bucket].to_s) unless stub[:s3_bucket].nil?
        xml << Hearth::XML::Node.new('S3Prefix', stub[:s3_prefix].to_s) unless stub[:s3_prefix].nil?
        xml << Hearth::XML::Node.new('IamRoleArn', stub[:iam_role_arn].to_s) unless stub[:iam_role_arn].nil?
        xml << Hearth::XML::Node.new('KmsKeyId', stub[:kms_key_id].to_s) unless stub[:kms_key_id].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('PercentProgress', stub[:percent_progress].to_s) unless stub[:percent_progress].nil?
        xml << Hearth::XML::Node.new('TotalExtractedDataInGB', stub[:total_extracted_data_in_gb].to_s) unless stub[:total_extracted_data_in_gb].nil?
        xml << Hearth::XML::Node.new('FailureCause', stub[:failure_cause].to_s) unless stub[:failure_cause].nil?
        xml << Hearth::XML::Node.new('WarningMessage', stub[:warning_message].to_s) unless stub[:warning_message].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopActivityStream
    class StopActivityStream
      def self.default(visited=[])
        {
          kms_key_id: 'kms_key_id',
          kinesis_stream_name: 'kinesis_stream_name',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('StopActivityStreamResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('StopActivityStreamResult')
        xml << Hearth::XML::Node.new('KmsKeyId', stub[:kms_key_id].to_s) unless stub[:kms_key_id].nil?
        xml << Hearth::XML::Node.new('KinesisStreamName', stub[:kinesis_stream_name].to_s) unless stub[:kinesis_stream_name].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopDBCluster
    class StopDBCluster
      def self.default(visited=[])
        {
          db_cluster: DBCluster.default(visited),
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

    # Operation Stubber for StopDBInstance
    class StopDBInstance
      def self.default(visited=[])
        {
          db_instance: DBInstance.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('StopDBInstanceResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('StopDBInstanceResult')
        xml << Stubs::DBInstance.stub('DBInstance', stub[:db_instance]) unless stub[:db_instance].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopDBInstanceAutomatedBackupsReplication
    class StopDBInstanceAutomatedBackupsReplication
      def self.default(visited=[])
        {
          db_instance_automated_backup: DBInstanceAutomatedBackup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('StopDBInstanceAutomatedBackupsReplicationResponse')
        response.attributes['xmlns'] = 'http://rds.amazonaws.com/doc/2014-10-31/'
        xml = Hearth::XML::Node.new('StopDBInstanceAutomatedBackupsReplicationResult')
        xml << Stubs::DBInstanceAutomatedBackup.stub('DBInstanceAutomatedBackup', stub[:db_instance_automated_backup]) unless stub[:db_instance_automated_backup].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end
  end
end
