# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ElastiCache
  module Stubs

    # Operation Stubber for AddTagsToResource
    class AddTagsToResource
      def self.default(visited=[])
        {
          tag_list: Stubs::TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('AddTagsToResourceResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('AddTagsToResourceResult')
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

    # Operation Stubber for AuthorizeCacheSecurityGroupIngress
    class AuthorizeCacheSecurityGroupIngress
      def self.default(visited=[])
        {
          cache_security_group: Stubs::CacheSecurityGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('AuthorizeCacheSecurityGroupIngressResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('AuthorizeCacheSecurityGroupIngressResult')
        xml << Stubs::CacheSecurityGroup.stub('CacheSecurityGroup', stub[:cache_security_group]) unless stub[:cache_security_group].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for CacheSecurityGroup
    class CacheSecurityGroup
      def self.default(visited=[])
        return nil if visited.include?('CacheSecurityGroup')
        visited = visited + ['CacheSecurityGroup']
        {
          owner_id: 'owner_id',
          cache_security_group_name: 'cache_security_group_name',
          description: 'description',
          ec2_security_groups: Stubs::EC2SecurityGroupList.default(visited),
          arn: 'arn',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::CacheSecurityGroup.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('OwnerId', stub[:owner_id].to_s) unless stub[:owner_id].nil?
        xml << Hearth::XML::Node.new('CacheSecurityGroupName', stub[:cache_security_group_name].to_s) unless stub[:cache_security_group_name].nil?
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        xml << Hearth::XML::Node.new('EC2SecurityGroups', Stubs::EC2SecurityGroupList.stub('EC2SecurityGroup', stub[:ec2_security_groups])) unless stub[:ec2_security_groups].nil?
        xml << Hearth::XML::Node.new('ARN', stub[:arn].to_s) unless stub[:arn].nil?
        xml
      end
    end

    # List Stubber for EC2SecurityGroupList
    class EC2SecurityGroupList
      def self.default(visited=[])
        return nil if visited.include?('EC2SecurityGroupList')
        visited = visited + ['EC2SecurityGroupList']
        [
          Stubs::EC2SecurityGroup.default(visited)
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
          ec2_security_group_owner_id: 'ec2_security_group_owner_id',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::EC2SecurityGroup.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('EC2SecurityGroupName', stub[:ec2_security_group_name].to_s) unless stub[:ec2_security_group_name].nil?
        xml << Hearth::XML::Node.new('EC2SecurityGroupOwnerId', stub[:ec2_security_group_owner_id].to_s) unless stub[:ec2_security_group_owner_id].nil?
        xml
      end
    end

    # Operation Stubber for BatchApplyUpdateAction
    class BatchApplyUpdateAction
      def self.default(visited=[])
        {
          processed_update_actions: Stubs::ProcessedUpdateActionList.default(visited),
          unprocessed_update_actions: Stubs::UnprocessedUpdateActionList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('BatchApplyUpdateActionResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('BatchApplyUpdateActionResult')
        xml << Hearth::XML::Node.new('ProcessedUpdateActions', Stubs::ProcessedUpdateActionList.stub('ProcessedUpdateAction', stub[:processed_update_actions])) unless stub[:processed_update_actions].nil?
        xml << Hearth::XML::Node.new('UnprocessedUpdateActions', Stubs::UnprocessedUpdateActionList.stub('UnprocessedUpdateAction', stub[:unprocessed_update_actions])) unless stub[:unprocessed_update_actions].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for UnprocessedUpdateActionList
    class UnprocessedUpdateActionList
      def self.default(visited=[])
        return nil if visited.include?('UnprocessedUpdateActionList')
        visited = visited + ['UnprocessedUpdateActionList']
        [
          Stubs::UnprocessedUpdateAction.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::UnprocessedUpdateAction.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for UnprocessedUpdateAction
    class UnprocessedUpdateAction
      def self.default(visited=[])
        return nil if visited.include?('UnprocessedUpdateAction')
        visited = visited + ['UnprocessedUpdateAction']
        {
          replication_group_id: 'replication_group_id',
          cache_cluster_id: 'cache_cluster_id',
          service_update_name: 'service_update_name',
          error_type: 'error_type',
          error_message: 'error_message',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::UnprocessedUpdateAction.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ReplicationGroupId', stub[:replication_group_id].to_s) unless stub[:replication_group_id].nil?
        xml << Hearth::XML::Node.new('CacheClusterId', stub[:cache_cluster_id].to_s) unless stub[:cache_cluster_id].nil?
        xml << Hearth::XML::Node.new('ServiceUpdateName', stub[:service_update_name].to_s) unless stub[:service_update_name].nil?
        xml << Hearth::XML::Node.new('ErrorType', stub[:error_type].to_s) unless stub[:error_type].nil?
        xml << Hearth::XML::Node.new('ErrorMessage', stub[:error_message].to_s) unless stub[:error_message].nil?
        xml
      end
    end

    # List Stubber for ProcessedUpdateActionList
    class ProcessedUpdateActionList
      def self.default(visited=[])
        return nil if visited.include?('ProcessedUpdateActionList')
        visited = visited + ['ProcessedUpdateActionList']
        [
          Stubs::ProcessedUpdateAction.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::ProcessedUpdateAction.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ProcessedUpdateAction
    class ProcessedUpdateAction
      def self.default(visited=[])
        return nil if visited.include?('ProcessedUpdateAction')
        visited = visited + ['ProcessedUpdateAction']
        {
          replication_group_id: 'replication_group_id',
          cache_cluster_id: 'cache_cluster_id',
          service_update_name: 'service_update_name',
          update_action_status: 'update_action_status',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ProcessedUpdateAction.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ReplicationGroupId', stub[:replication_group_id].to_s) unless stub[:replication_group_id].nil?
        xml << Hearth::XML::Node.new('CacheClusterId', stub[:cache_cluster_id].to_s) unless stub[:cache_cluster_id].nil?
        xml << Hearth::XML::Node.new('ServiceUpdateName', stub[:service_update_name].to_s) unless stub[:service_update_name].nil?
        xml << Hearth::XML::Node.new('UpdateActionStatus', stub[:update_action_status].to_s) unless stub[:update_action_status].nil?
        xml
      end
    end

    # Operation Stubber for BatchStopUpdateAction
    class BatchStopUpdateAction
      def self.default(visited=[])
        {
          processed_update_actions: Stubs::ProcessedUpdateActionList.default(visited),
          unprocessed_update_actions: Stubs::UnprocessedUpdateActionList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('BatchStopUpdateActionResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('BatchStopUpdateActionResult')
        xml << Hearth::XML::Node.new('ProcessedUpdateActions', Stubs::ProcessedUpdateActionList.stub('ProcessedUpdateAction', stub[:processed_update_actions])) unless stub[:processed_update_actions].nil?
        xml << Hearth::XML::Node.new('UnprocessedUpdateActions', Stubs::UnprocessedUpdateActionList.stub('UnprocessedUpdateAction', stub[:unprocessed_update_actions])) unless stub[:unprocessed_update_actions].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for CompleteMigration
    class CompleteMigration
      def self.default(visited=[])
        {
          replication_group: Stubs::ReplicationGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CompleteMigrationResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('CompleteMigrationResult')
        xml << Stubs::ReplicationGroup.stub('ReplicationGroup', stub[:replication_group]) unless stub[:replication_group].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for ReplicationGroup
    class ReplicationGroup
      def self.default(visited=[])
        return nil if visited.include?('ReplicationGroup')
        visited = visited + ['ReplicationGroup']
        {
          replication_group_id: 'replication_group_id',
          description: 'description',
          global_replication_group_info: Stubs::GlobalReplicationGroupInfo.default(visited),
          status: 'status',
          pending_modified_values: Stubs::ReplicationGroupPendingModifiedValues.default(visited),
          member_clusters: Stubs::ClusterIdList.default(visited),
          node_groups: Stubs::NodeGroupList.default(visited),
          snapshotting_cluster_id: 'snapshotting_cluster_id',
          automatic_failover: 'automatic_failover',
          multi_az: 'multi_az',
          configuration_endpoint: Stubs::Endpoint.default(visited),
          snapshot_retention_limit: 1,
          snapshot_window: 'snapshot_window',
          cluster_enabled: false,
          cache_node_type: 'cache_node_type',
          auth_token_enabled: false,
          auth_token_last_modified_date: Time.now,
          transit_encryption_enabled: false,
          at_rest_encryption_enabled: false,
          member_clusters_outpost_arns: Stubs::ReplicationGroupOutpostArnList.default(visited),
          kms_key_id: 'kms_key_id',
          arn: 'arn',
          user_group_ids: Stubs::UserGroupIdList.default(visited),
          log_delivery_configurations: Stubs::LogDeliveryConfigurationList.default(visited),
          replication_group_create_time: Time.now,
          data_tiering: 'data_tiering',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ReplicationGroup.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ReplicationGroupId', stub[:replication_group_id].to_s) unless stub[:replication_group_id].nil?
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        xml << Stubs::GlobalReplicationGroupInfo.stub('GlobalReplicationGroupInfo', stub[:global_replication_group_info]) unless stub[:global_replication_group_info].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Stubs::ReplicationGroupPendingModifiedValues.stub('PendingModifiedValues', stub[:pending_modified_values]) unless stub[:pending_modified_values].nil?
        xml << Hearth::XML::Node.new('MemberClusters', Stubs::ClusterIdList.stub('ClusterId', stub[:member_clusters])) unless stub[:member_clusters].nil?
        xml << Hearth::XML::Node.new('NodeGroups', Stubs::NodeGroupList.stub('NodeGroup', stub[:node_groups])) unless stub[:node_groups].nil?
        xml << Hearth::XML::Node.new('SnapshottingClusterId', stub[:snapshotting_cluster_id].to_s) unless stub[:snapshotting_cluster_id].nil?
        xml << Hearth::XML::Node.new('AutomaticFailover', stub[:automatic_failover].to_s) unless stub[:automatic_failover].nil?
        xml << Hearth::XML::Node.new('MultiAZ', stub[:multi_az].to_s) unless stub[:multi_az].nil?
        xml << Stubs::Endpoint.stub('ConfigurationEndpoint', stub[:configuration_endpoint]) unless stub[:configuration_endpoint].nil?
        xml << Hearth::XML::Node.new('SnapshotRetentionLimit', stub[:snapshot_retention_limit].to_s) unless stub[:snapshot_retention_limit].nil?
        xml << Hearth::XML::Node.new('SnapshotWindow', stub[:snapshot_window].to_s) unless stub[:snapshot_window].nil?
        xml << Hearth::XML::Node.new('ClusterEnabled', stub[:cluster_enabled].to_s) unless stub[:cluster_enabled].nil?
        xml << Hearth::XML::Node.new('CacheNodeType', stub[:cache_node_type].to_s) unless stub[:cache_node_type].nil?
        xml << Hearth::XML::Node.new('AuthTokenEnabled', stub[:auth_token_enabled].to_s) unless stub[:auth_token_enabled].nil?
        xml << Hearth::XML::Node.new('AuthTokenLastModifiedDate', Hearth::TimeHelper.to_date_time(stub[:auth_token_last_modified_date])) unless stub[:auth_token_last_modified_date].nil?
        xml << Hearth::XML::Node.new('TransitEncryptionEnabled', stub[:transit_encryption_enabled].to_s) unless stub[:transit_encryption_enabled].nil?
        xml << Hearth::XML::Node.new('AtRestEncryptionEnabled', stub[:at_rest_encryption_enabled].to_s) unless stub[:at_rest_encryption_enabled].nil?
        xml << Hearth::XML::Node.new('MemberClustersOutpostArns', Stubs::ReplicationGroupOutpostArnList.stub('ReplicationGroupOutpostArn', stub[:member_clusters_outpost_arns])) unless stub[:member_clusters_outpost_arns].nil?
        xml << Hearth::XML::Node.new('KmsKeyId', stub[:kms_key_id].to_s) unless stub[:kms_key_id].nil?
        xml << Hearth::XML::Node.new('ARN', stub[:arn].to_s) unless stub[:arn].nil?
        xml << Hearth::XML::Node.new('UserGroupIds', Stubs::UserGroupIdList.stub('member', stub[:user_group_ids])) unless stub[:user_group_ids].nil?
        xml << Hearth::XML::Node.new('LogDeliveryConfigurations', Stubs::LogDeliveryConfigurationList.stub('LogDeliveryConfiguration', stub[:log_delivery_configurations])) unless stub[:log_delivery_configurations].nil?
        xml << Hearth::XML::Node.new('ReplicationGroupCreateTime', Hearth::TimeHelper.to_date_time(stub[:replication_group_create_time])) unless stub[:replication_group_create_time].nil?
        xml << Hearth::XML::Node.new('DataTiering', stub[:data_tiering].to_s) unless stub[:data_tiering].nil?
        xml
      end
    end

    # List Stubber for LogDeliveryConfigurationList
    class LogDeliveryConfigurationList
      def self.default(visited=[])
        return nil if visited.include?('LogDeliveryConfigurationList')
        visited = visited + ['LogDeliveryConfigurationList']
        [
          Stubs::LogDeliveryConfiguration.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::LogDeliveryConfiguration.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for LogDeliveryConfiguration
    class LogDeliveryConfiguration
      def self.default(visited=[])
        return nil if visited.include?('LogDeliveryConfiguration')
        visited = visited + ['LogDeliveryConfiguration']
        {
          log_type: 'log_type',
          destination_type: 'destination_type',
          destination_details: Stubs::DestinationDetails.default(visited),
          log_format: 'log_format',
          status: 'status',
          message: 'message',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::LogDeliveryConfiguration.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('LogType', stub[:log_type].to_s) unless stub[:log_type].nil?
        xml << Hearth::XML::Node.new('DestinationType', stub[:destination_type].to_s) unless stub[:destination_type].nil?
        xml << Stubs::DestinationDetails.stub('DestinationDetails', stub[:destination_details]) unless stub[:destination_details].nil?
        xml << Hearth::XML::Node.new('LogFormat', stub[:log_format].to_s) unless stub[:log_format].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('Message', stub[:message].to_s) unless stub[:message].nil?
        xml
      end
    end

    # Structure Stubber for DestinationDetails
    class DestinationDetails
      def self.default(visited=[])
        return nil if visited.include?('DestinationDetails')
        visited = visited + ['DestinationDetails']
        {
          cloud_watch_logs_details: Stubs::CloudWatchLogsDestinationDetails.default(visited),
          kinesis_firehose_details: Stubs::KinesisFirehoseDestinationDetails.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DestinationDetails.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Stubs::CloudWatchLogsDestinationDetails.stub('CloudWatchLogsDetails', stub[:cloud_watch_logs_details]) unless stub[:cloud_watch_logs_details].nil?
        xml << Stubs::KinesisFirehoseDestinationDetails.stub('KinesisFirehoseDetails', stub[:kinesis_firehose_details]) unless stub[:kinesis_firehose_details].nil?
        xml
      end
    end

    # Structure Stubber for KinesisFirehoseDestinationDetails
    class KinesisFirehoseDestinationDetails
      def self.default(visited=[])
        return nil if visited.include?('KinesisFirehoseDestinationDetails')
        visited = visited + ['KinesisFirehoseDestinationDetails']
        {
          delivery_stream: 'delivery_stream',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::KinesisFirehoseDestinationDetails.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('DeliveryStream', stub[:delivery_stream].to_s) unless stub[:delivery_stream].nil?
        xml
      end
    end

    # Structure Stubber for CloudWatchLogsDestinationDetails
    class CloudWatchLogsDestinationDetails
      def self.default(visited=[])
        return nil if visited.include?('CloudWatchLogsDestinationDetails')
        visited = visited + ['CloudWatchLogsDestinationDetails']
        {
          log_group: 'log_group',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::CloudWatchLogsDestinationDetails.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('LogGroup', stub[:log_group].to_s) unless stub[:log_group].nil?
        xml
      end
    end

    # List Stubber for UserGroupIdList
    class UserGroupIdList
      def self.default(visited=[])
        return nil if visited.include?('UserGroupIdList')
        visited = visited + ['UserGroupIdList']
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

    # List Stubber for ReplicationGroupOutpostArnList
    class ReplicationGroupOutpostArnList
      def self.default(visited=[])
        return nil if visited.include?('ReplicationGroupOutpostArnList')
        visited = visited + ['ReplicationGroupOutpostArnList']
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

    # Structure Stubber for Endpoint
    class Endpoint
      def self.default(visited=[])
        return nil if visited.include?('Endpoint')
        visited = visited + ['Endpoint']
        {
          address: 'address',
          port: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Endpoint.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Address', stub[:address].to_s) unless stub[:address].nil?
        xml << Hearth::XML::Node.new('Port', stub[:port].to_s) unless stub[:port].nil?
        xml
      end
    end

    # List Stubber for NodeGroupList
    class NodeGroupList
      def self.default(visited=[])
        return nil if visited.include?('NodeGroupList')
        visited = visited + ['NodeGroupList']
        [
          Stubs::NodeGroup.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::NodeGroup.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for NodeGroup
    class NodeGroup
      def self.default(visited=[])
        return nil if visited.include?('NodeGroup')
        visited = visited + ['NodeGroup']
        {
          node_group_id: 'node_group_id',
          status: 'status',
          primary_endpoint: Stubs::Endpoint.default(visited),
          reader_endpoint: Stubs::Endpoint.default(visited),
          slots: 'slots',
          node_group_members: Stubs::NodeGroupMemberList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::NodeGroup.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('NodeGroupId', stub[:node_group_id].to_s) unless stub[:node_group_id].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Stubs::Endpoint.stub('PrimaryEndpoint', stub[:primary_endpoint]) unless stub[:primary_endpoint].nil?
        xml << Stubs::Endpoint.stub('ReaderEndpoint', stub[:reader_endpoint]) unless stub[:reader_endpoint].nil?
        xml << Hearth::XML::Node.new('Slots', stub[:slots].to_s) unless stub[:slots].nil?
        xml << Hearth::XML::Node.new('NodeGroupMembers', Stubs::NodeGroupMemberList.stub('NodeGroupMember', stub[:node_group_members])) unless stub[:node_group_members].nil?
        xml
      end
    end

    # List Stubber for NodeGroupMemberList
    class NodeGroupMemberList
      def self.default(visited=[])
        return nil if visited.include?('NodeGroupMemberList')
        visited = visited + ['NodeGroupMemberList']
        [
          Stubs::NodeGroupMember.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::NodeGroupMember.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for NodeGroupMember
    class NodeGroupMember
      def self.default(visited=[])
        return nil if visited.include?('NodeGroupMember')
        visited = visited + ['NodeGroupMember']
        {
          cache_cluster_id: 'cache_cluster_id',
          cache_node_id: 'cache_node_id',
          read_endpoint: Stubs::Endpoint.default(visited),
          preferred_availability_zone: 'preferred_availability_zone',
          preferred_outpost_arn: 'preferred_outpost_arn',
          current_role: 'current_role',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::NodeGroupMember.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('CacheClusterId', stub[:cache_cluster_id].to_s) unless stub[:cache_cluster_id].nil?
        xml << Hearth::XML::Node.new('CacheNodeId', stub[:cache_node_id].to_s) unless stub[:cache_node_id].nil?
        xml << Stubs::Endpoint.stub('ReadEndpoint', stub[:read_endpoint]) unless stub[:read_endpoint].nil?
        xml << Hearth::XML::Node.new('PreferredAvailabilityZone', stub[:preferred_availability_zone].to_s) unless stub[:preferred_availability_zone].nil?
        xml << Hearth::XML::Node.new('PreferredOutpostArn', stub[:preferred_outpost_arn].to_s) unless stub[:preferred_outpost_arn].nil?
        xml << Hearth::XML::Node.new('CurrentRole', stub[:current_role].to_s) unless stub[:current_role].nil?
        xml
      end
    end

    # List Stubber for ClusterIdList
    class ClusterIdList
      def self.default(visited=[])
        return nil if visited.include?('ClusterIdList')
        visited = visited + ['ClusterIdList']
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

    # Structure Stubber for ReplicationGroupPendingModifiedValues
    class ReplicationGroupPendingModifiedValues
      def self.default(visited=[])
        return nil if visited.include?('ReplicationGroupPendingModifiedValues')
        visited = visited + ['ReplicationGroupPendingModifiedValues']
        {
          primary_cluster_id: 'primary_cluster_id',
          automatic_failover_status: 'automatic_failover_status',
          resharding: Stubs::ReshardingStatus.default(visited),
          auth_token_status: 'auth_token_status',
          user_groups: Stubs::UserGroupsUpdateStatus.default(visited),
          log_delivery_configurations: Stubs::PendingLogDeliveryConfigurationList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ReplicationGroupPendingModifiedValues.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('PrimaryClusterId', stub[:primary_cluster_id].to_s) unless stub[:primary_cluster_id].nil?
        xml << Hearth::XML::Node.new('AutomaticFailoverStatus', stub[:automatic_failover_status].to_s) unless stub[:automatic_failover_status].nil?
        xml << Stubs::ReshardingStatus.stub('Resharding', stub[:resharding]) unless stub[:resharding].nil?
        xml << Hearth::XML::Node.new('AuthTokenStatus', stub[:auth_token_status].to_s) unless stub[:auth_token_status].nil?
        xml << Stubs::UserGroupsUpdateStatus.stub('UserGroups', stub[:user_groups]) unless stub[:user_groups].nil?
        xml << Hearth::XML::Node.new('LogDeliveryConfigurations', Stubs::PendingLogDeliveryConfigurationList.stub('member', stub[:log_delivery_configurations])) unless stub[:log_delivery_configurations].nil?
        xml
      end
    end

    # List Stubber for PendingLogDeliveryConfigurationList
    class PendingLogDeliveryConfigurationList
      def self.default(visited=[])
        return nil if visited.include?('PendingLogDeliveryConfigurationList')
        visited = visited + ['PendingLogDeliveryConfigurationList']
        [
          Stubs::PendingLogDeliveryConfiguration.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::PendingLogDeliveryConfiguration.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for PendingLogDeliveryConfiguration
    class PendingLogDeliveryConfiguration
      def self.default(visited=[])
        return nil if visited.include?('PendingLogDeliveryConfiguration')
        visited = visited + ['PendingLogDeliveryConfiguration']
        {
          log_type: 'log_type',
          destination_type: 'destination_type',
          destination_details: Stubs::DestinationDetails.default(visited),
          log_format: 'log_format',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::PendingLogDeliveryConfiguration.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('LogType', stub[:log_type].to_s) unless stub[:log_type].nil?
        xml << Hearth::XML::Node.new('DestinationType', stub[:destination_type].to_s) unless stub[:destination_type].nil?
        xml << Stubs::DestinationDetails.stub('DestinationDetails', stub[:destination_details]) unless stub[:destination_details].nil?
        xml << Hearth::XML::Node.new('LogFormat', stub[:log_format].to_s) unless stub[:log_format].nil?
        xml
      end
    end

    # Structure Stubber for UserGroupsUpdateStatus
    class UserGroupsUpdateStatus
      def self.default(visited=[])
        return nil if visited.include?('UserGroupsUpdateStatus')
        visited = visited + ['UserGroupsUpdateStatus']
        {
          user_group_ids_to_add: Stubs::UserGroupIdList.default(visited),
          user_group_ids_to_remove: Stubs::UserGroupIdList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::UserGroupsUpdateStatus.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('UserGroupIdsToAdd', Stubs::UserGroupIdList.stub('member', stub[:user_group_ids_to_add])) unless stub[:user_group_ids_to_add].nil?
        xml << Hearth::XML::Node.new('UserGroupIdsToRemove', Stubs::UserGroupIdList.stub('member', stub[:user_group_ids_to_remove])) unless stub[:user_group_ids_to_remove].nil?
        xml
      end
    end

    # Structure Stubber for ReshardingStatus
    class ReshardingStatus
      def self.default(visited=[])
        return nil if visited.include?('ReshardingStatus')
        visited = visited + ['ReshardingStatus']
        {
          slot_migration: Stubs::SlotMigration.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ReshardingStatus.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Stubs::SlotMigration.stub('SlotMigration', stub[:slot_migration]) unless stub[:slot_migration].nil?
        xml
      end
    end

    # Structure Stubber for SlotMigration
    class SlotMigration
      def self.default(visited=[])
        return nil if visited.include?('SlotMigration')
        visited = visited + ['SlotMigration']
        {
          progress_percentage: 1.0,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::SlotMigration.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ProgressPercentage', Hearth::NumberHelper.serialize(stub[:progress_percentage]).to_s) unless stub[:progress_percentage].nil?
        xml
      end
    end

    # Structure Stubber for GlobalReplicationGroupInfo
    class GlobalReplicationGroupInfo
      def self.default(visited=[])
        return nil if visited.include?('GlobalReplicationGroupInfo')
        visited = visited + ['GlobalReplicationGroupInfo']
        {
          global_replication_group_id: 'global_replication_group_id',
          global_replication_group_member_role: 'global_replication_group_member_role',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::GlobalReplicationGroupInfo.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('GlobalReplicationGroupId', stub[:global_replication_group_id].to_s) unless stub[:global_replication_group_id].nil?
        xml << Hearth::XML::Node.new('GlobalReplicationGroupMemberRole', stub[:global_replication_group_member_role].to_s) unless stub[:global_replication_group_member_role].nil?
        xml
      end
    end

    # Operation Stubber for CopySnapshot
    class CopySnapshot
      def self.default(visited=[])
        {
          snapshot: Stubs::Snapshot.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CopySnapshotResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('CopySnapshotResult')
        xml << Stubs::Snapshot.stub('Snapshot', stub[:snapshot]) unless stub[:snapshot].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for Snapshot
    class Snapshot
      def self.default(visited=[])
        return nil if visited.include?('Snapshot')
        visited = visited + ['Snapshot']
        {
          snapshot_name: 'snapshot_name',
          replication_group_id: 'replication_group_id',
          replication_group_description: 'replication_group_description',
          cache_cluster_id: 'cache_cluster_id',
          snapshot_status: 'snapshot_status',
          snapshot_source: 'snapshot_source',
          cache_node_type: 'cache_node_type',
          engine: 'engine',
          engine_version: 'engine_version',
          num_cache_nodes: 1,
          preferred_availability_zone: 'preferred_availability_zone',
          preferred_outpost_arn: 'preferred_outpost_arn',
          cache_cluster_create_time: Time.now,
          preferred_maintenance_window: 'preferred_maintenance_window',
          topic_arn: 'topic_arn',
          port: 1,
          cache_parameter_group_name: 'cache_parameter_group_name',
          cache_subnet_group_name: 'cache_subnet_group_name',
          vpc_id: 'vpc_id',
          auto_minor_version_upgrade: false,
          snapshot_retention_limit: 1,
          snapshot_window: 'snapshot_window',
          num_node_groups: 1,
          automatic_failover: 'automatic_failover',
          node_snapshots: Stubs::NodeSnapshotList.default(visited),
          kms_key_id: 'kms_key_id',
          arn: 'arn',
          data_tiering: 'data_tiering',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Snapshot.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('SnapshotName', stub[:snapshot_name].to_s) unless stub[:snapshot_name].nil?
        xml << Hearth::XML::Node.new('ReplicationGroupId', stub[:replication_group_id].to_s) unless stub[:replication_group_id].nil?
        xml << Hearth::XML::Node.new('ReplicationGroupDescription', stub[:replication_group_description].to_s) unless stub[:replication_group_description].nil?
        xml << Hearth::XML::Node.new('CacheClusterId', stub[:cache_cluster_id].to_s) unless stub[:cache_cluster_id].nil?
        xml << Hearth::XML::Node.new('SnapshotStatus', stub[:snapshot_status].to_s) unless stub[:snapshot_status].nil?
        xml << Hearth::XML::Node.new('SnapshotSource', stub[:snapshot_source].to_s) unless stub[:snapshot_source].nil?
        xml << Hearth::XML::Node.new('CacheNodeType', stub[:cache_node_type].to_s) unless stub[:cache_node_type].nil?
        xml << Hearth::XML::Node.new('Engine', stub[:engine].to_s) unless stub[:engine].nil?
        xml << Hearth::XML::Node.new('EngineVersion', stub[:engine_version].to_s) unless stub[:engine_version].nil?
        xml << Hearth::XML::Node.new('NumCacheNodes', stub[:num_cache_nodes].to_s) unless stub[:num_cache_nodes].nil?
        xml << Hearth::XML::Node.new('PreferredAvailabilityZone', stub[:preferred_availability_zone].to_s) unless stub[:preferred_availability_zone].nil?
        xml << Hearth::XML::Node.new('PreferredOutpostArn', stub[:preferred_outpost_arn].to_s) unless stub[:preferred_outpost_arn].nil?
        xml << Hearth::XML::Node.new('CacheClusterCreateTime', Hearth::TimeHelper.to_date_time(stub[:cache_cluster_create_time])) unless stub[:cache_cluster_create_time].nil?
        xml << Hearth::XML::Node.new('PreferredMaintenanceWindow', stub[:preferred_maintenance_window].to_s) unless stub[:preferred_maintenance_window].nil?
        xml << Hearth::XML::Node.new('TopicArn', stub[:topic_arn].to_s) unless stub[:topic_arn].nil?
        xml << Hearth::XML::Node.new('Port', stub[:port].to_s) unless stub[:port].nil?
        xml << Hearth::XML::Node.new('CacheParameterGroupName', stub[:cache_parameter_group_name].to_s) unless stub[:cache_parameter_group_name].nil?
        xml << Hearth::XML::Node.new('CacheSubnetGroupName', stub[:cache_subnet_group_name].to_s) unless stub[:cache_subnet_group_name].nil?
        xml << Hearth::XML::Node.new('VpcId', stub[:vpc_id].to_s) unless stub[:vpc_id].nil?
        xml << Hearth::XML::Node.new('AutoMinorVersionUpgrade', stub[:auto_minor_version_upgrade].to_s) unless stub[:auto_minor_version_upgrade].nil?
        xml << Hearth::XML::Node.new('SnapshotRetentionLimit', stub[:snapshot_retention_limit].to_s) unless stub[:snapshot_retention_limit].nil?
        xml << Hearth::XML::Node.new('SnapshotWindow', stub[:snapshot_window].to_s) unless stub[:snapshot_window].nil?
        xml << Hearth::XML::Node.new('NumNodeGroups', stub[:num_node_groups].to_s) unless stub[:num_node_groups].nil?
        xml << Hearth::XML::Node.new('AutomaticFailover', stub[:automatic_failover].to_s) unless stub[:automatic_failover].nil?
        xml << Hearth::XML::Node.new('NodeSnapshots', Stubs::NodeSnapshotList.stub('NodeSnapshot', stub[:node_snapshots])) unless stub[:node_snapshots].nil?
        xml << Hearth::XML::Node.new('KmsKeyId', stub[:kms_key_id].to_s) unless stub[:kms_key_id].nil?
        xml << Hearth::XML::Node.new('ARN', stub[:arn].to_s) unless stub[:arn].nil?
        xml << Hearth::XML::Node.new('DataTiering', stub[:data_tiering].to_s) unless stub[:data_tiering].nil?
        xml
      end
    end

    # List Stubber for NodeSnapshotList
    class NodeSnapshotList
      def self.default(visited=[])
        return nil if visited.include?('NodeSnapshotList')
        visited = visited + ['NodeSnapshotList']
        [
          Stubs::NodeSnapshot.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::NodeSnapshot.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for NodeSnapshot
    class NodeSnapshot
      def self.default(visited=[])
        return nil if visited.include?('NodeSnapshot')
        visited = visited + ['NodeSnapshot']
        {
          cache_cluster_id: 'cache_cluster_id',
          node_group_id: 'node_group_id',
          cache_node_id: 'cache_node_id',
          node_group_configuration: Stubs::NodeGroupConfiguration.default(visited),
          cache_size: 'cache_size',
          cache_node_create_time: Time.now,
          snapshot_create_time: Time.now,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::NodeSnapshot.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('CacheClusterId', stub[:cache_cluster_id].to_s) unless stub[:cache_cluster_id].nil?
        xml << Hearth::XML::Node.new('NodeGroupId', stub[:node_group_id].to_s) unless stub[:node_group_id].nil?
        xml << Hearth::XML::Node.new('CacheNodeId', stub[:cache_node_id].to_s) unless stub[:cache_node_id].nil?
        xml << Stubs::NodeGroupConfiguration.stub('NodeGroupConfiguration', stub[:node_group_configuration]) unless stub[:node_group_configuration].nil?
        xml << Hearth::XML::Node.new('CacheSize', stub[:cache_size].to_s) unless stub[:cache_size].nil?
        xml << Hearth::XML::Node.new('CacheNodeCreateTime', Hearth::TimeHelper.to_date_time(stub[:cache_node_create_time])) unless stub[:cache_node_create_time].nil?
        xml << Hearth::XML::Node.new('SnapshotCreateTime', Hearth::TimeHelper.to_date_time(stub[:snapshot_create_time])) unless stub[:snapshot_create_time].nil?
        xml
      end
    end

    # Structure Stubber for NodeGroupConfiguration
    class NodeGroupConfiguration
      def self.default(visited=[])
        return nil if visited.include?('NodeGroupConfiguration')
        visited = visited + ['NodeGroupConfiguration']
        {
          node_group_id: 'node_group_id',
          slots: 'slots',
          replica_count: 1,
          primary_availability_zone: 'primary_availability_zone',
          replica_availability_zones: Stubs::AvailabilityZonesList.default(visited),
          primary_outpost_arn: 'primary_outpost_arn',
          replica_outpost_arns: Stubs::OutpostArnsList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::NodeGroupConfiguration.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('NodeGroupId', stub[:node_group_id].to_s) unless stub[:node_group_id].nil?
        xml << Hearth::XML::Node.new('Slots', stub[:slots].to_s) unless stub[:slots].nil?
        xml << Hearth::XML::Node.new('ReplicaCount', stub[:replica_count].to_s) unless stub[:replica_count].nil?
        xml << Hearth::XML::Node.new('PrimaryAvailabilityZone', stub[:primary_availability_zone].to_s) unless stub[:primary_availability_zone].nil?
        xml << Hearth::XML::Node.new('ReplicaAvailabilityZones', Stubs::AvailabilityZonesList.stub('AvailabilityZone', stub[:replica_availability_zones])) unless stub[:replica_availability_zones].nil?
        xml << Hearth::XML::Node.new('PrimaryOutpostArn', stub[:primary_outpost_arn].to_s) unless stub[:primary_outpost_arn].nil?
        xml << Hearth::XML::Node.new('ReplicaOutpostArns', Stubs::OutpostArnsList.stub('OutpostArn', stub[:replica_outpost_arns])) unless stub[:replica_outpost_arns].nil?
        xml
      end
    end

    # List Stubber for OutpostArnsList
    class OutpostArnsList
      def self.default(visited=[])
        return nil if visited.include?('OutpostArnsList')
        visited = visited + ['OutpostArnsList']
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

    # List Stubber for AvailabilityZonesList
    class AvailabilityZonesList
      def self.default(visited=[])
        return nil if visited.include?('AvailabilityZonesList')
        visited = visited + ['AvailabilityZonesList']
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

    # Operation Stubber for CreateCacheCluster
    class CreateCacheCluster
      def self.default(visited=[])
        {
          cache_cluster: Stubs::CacheCluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateCacheClusterResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('CreateCacheClusterResult')
        xml << Stubs::CacheCluster.stub('CacheCluster', stub[:cache_cluster]) unless stub[:cache_cluster].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for CacheCluster
    class CacheCluster
      def self.default(visited=[])
        return nil if visited.include?('CacheCluster')
        visited = visited + ['CacheCluster']
        {
          cache_cluster_id: 'cache_cluster_id',
          configuration_endpoint: Stubs::Endpoint.default(visited),
          client_download_landing_page: 'client_download_landing_page',
          cache_node_type: 'cache_node_type',
          engine: 'engine',
          engine_version: 'engine_version',
          cache_cluster_status: 'cache_cluster_status',
          num_cache_nodes: 1,
          preferred_availability_zone: 'preferred_availability_zone',
          preferred_outpost_arn: 'preferred_outpost_arn',
          cache_cluster_create_time: Time.now,
          preferred_maintenance_window: 'preferred_maintenance_window',
          pending_modified_values: Stubs::PendingModifiedValues.default(visited),
          notification_configuration: Stubs::NotificationConfiguration.default(visited),
          cache_security_groups: Stubs::CacheSecurityGroupMembershipList.default(visited),
          cache_parameter_group: Stubs::CacheParameterGroupStatus.default(visited),
          cache_subnet_group_name: 'cache_subnet_group_name',
          cache_nodes: Stubs::CacheNodeList.default(visited),
          auto_minor_version_upgrade: false,
          security_groups: Stubs::SecurityGroupMembershipList.default(visited),
          replication_group_id: 'replication_group_id',
          snapshot_retention_limit: 1,
          snapshot_window: 'snapshot_window',
          auth_token_enabled: false,
          auth_token_last_modified_date: Time.now,
          transit_encryption_enabled: false,
          at_rest_encryption_enabled: false,
          arn: 'arn',
          replication_group_log_delivery_enabled: false,
          log_delivery_configurations: Stubs::LogDeliveryConfigurationList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::CacheCluster.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('CacheClusterId', stub[:cache_cluster_id].to_s) unless stub[:cache_cluster_id].nil?
        xml << Stubs::Endpoint.stub('ConfigurationEndpoint', stub[:configuration_endpoint]) unless stub[:configuration_endpoint].nil?
        xml << Hearth::XML::Node.new('ClientDownloadLandingPage', stub[:client_download_landing_page].to_s) unless stub[:client_download_landing_page].nil?
        xml << Hearth::XML::Node.new('CacheNodeType', stub[:cache_node_type].to_s) unless stub[:cache_node_type].nil?
        xml << Hearth::XML::Node.new('Engine', stub[:engine].to_s) unless stub[:engine].nil?
        xml << Hearth::XML::Node.new('EngineVersion', stub[:engine_version].to_s) unless stub[:engine_version].nil?
        xml << Hearth::XML::Node.new('CacheClusterStatus', stub[:cache_cluster_status].to_s) unless stub[:cache_cluster_status].nil?
        xml << Hearth::XML::Node.new('NumCacheNodes', stub[:num_cache_nodes].to_s) unless stub[:num_cache_nodes].nil?
        xml << Hearth::XML::Node.new('PreferredAvailabilityZone', stub[:preferred_availability_zone].to_s) unless stub[:preferred_availability_zone].nil?
        xml << Hearth::XML::Node.new('PreferredOutpostArn', stub[:preferred_outpost_arn].to_s) unless stub[:preferred_outpost_arn].nil?
        xml << Hearth::XML::Node.new('CacheClusterCreateTime', Hearth::TimeHelper.to_date_time(stub[:cache_cluster_create_time])) unless stub[:cache_cluster_create_time].nil?
        xml << Hearth::XML::Node.new('PreferredMaintenanceWindow', stub[:preferred_maintenance_window].to_s) unless stub[:preferred_maintenance_window].nil?
        xml << Stubs::PendingModifiedValues.stub('PendingModifiedValues', stub[:pending_modified_values]) unless stub[:pending_modified_values].nil?
        xml << Stubs::NotificationConfiguration.stub('NotificationConfiguration', stub[:notification_configuration]) unless stub[:notification_configuration].nil?
        xml << Hearth::XML::Node.new('CacheSecurityGroups', Stubs::CacheSecurityGroupMembershipList.stub('CacheSecurityGroup', stub[:cache_security_groups])) unless stub[:cache_security_groups].nil?
        xml << Stubs::CacheParameterGroupStatus.stub('CacheParameterGroup', stub[:cache_parameter_group]) unless stub[:cache_parameter_group].nil?
        xml << Hearth::XML::Node.new('CacheSubnetGroupName', stub[:cache_subnet_group_name].to_s) unless stub[:cache_subnet_group_name].nil?
        xml << Hearth::XML::Node.new('CacheNodes', Stubs::CacheNodeList.stub('CacheNode', stub[:cache_nodes])) unless stub[:cache_nodes].nil?
        xml << Hearth::XML::Node.new('AutoMinorVersionUpgrade', stub[:auto_minor_version_upgrade].to_s) unless stub[:auto_minor_version_upgrade].nil?
        xml << Hearth::XML::Node.new('SecurityGroups', Stubs::SecurityGroupMembershipList.stub('member', stub[:security_groups])) unless stub[:security_groups].nil?
        xml << Hearth::XML::Node.new('ReplicationGroupId', stub[:replication_group_id].to_s) unless stub[:replication_group_id].nil?
        xml << Hearth::XML::Node.new('SnapshotRetentionLimit', stub[:snapshot_retention_limit].to_s) unless stub[:snapshot_retention_limit].nil?
        xml << Hearth::XML::Node.new('SnapshotWindow', stub[:snapshot_window].to_s) unless stub[:snapshot_window].nil?
        xml << Hearth::XML::Node.new('AuthTokenEnabled', stub[:auth_token_enabled].to_s) unless stub[:auth_token_enabled].nil?
        xml << Hearth::XML::Node.new('AuthTokenLastModifiedDate', Hearth::TimeHelper.to_date_time(stub[:auth_token_last_modified_date])) unless stub[:auth_token_last_modified_date].nil?
        xml << Hearth::XML::Node.new('TransitEncryptionEnabled', stub[:transit_encryption_enabled].to_s) unless stub[:transit_encryption_enabled].nil?
        xml << Hearth::XML::Node.new('AtRestEncryptionEnabled', stub[:at_rest_encryption_enabled].to_s) unless stub[:at_rest_encryption_enabled].nil?
        xml << Hearth::XML::Node.new('ARN', stub[:arn].to_s) unless stub[:arn].nil?
        xml << Hearth::XML::Node.new('ReplicationGroupLogDeliveryEnabled', stub[:replication_group_log_delivery_enabled].to_s) unless stub[:replication_group_log_delivery_enabled].nil?
        xml << Hearth::XML::Node.new('LogDeliveryConfigurations', Stubs::LogDeliveryConfigurationList.stub('LogDeliveryConfiguration', stub[:log_delivery_configurations])) unless stub[:log_delivery_configurations].nil?
        xml
      end
    end

    # List Stubber for SecurityGroupMembershipList
    class SecurityGroupMembershipList
      def self.default(visited=[])
        return nil if visited.include?('SecurityGroupMembershipList')
        visited = visited + ['SecurityGroupMembershipList']
        [
          Stubs::SecurityGroupMembership.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::SecurityGroupMembership.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for SecurityGroupMembership
    class SecurityGroupMembership
      def self.default(visited=[])
        return nil if visited.include?('SecurityGroupMembership')
        visited = visited + ['SecurityGroupMembership']
        {
          security_group_id: 'security_group_id',
          status: 'status',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::SecurityGroupMembership.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('SecurityGroupId', stub[:security_group_id].to_s) unless stub[:security_group_id].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml
      end
    end

    # List Stubber for CacheNodeList
    class CacheNodeList
      def self.default(visited=[])
        return nil if visited.include?('CacheNodeList')
        visited = visited + ['CacheNodeList']
        [
          Stubs::CacheNode.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::CacheNode.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for CacheNode
    class CacheNode
      def self.default(visited=[])
        return nil if visited.include?('CacheNode')
        visited = visited + ['CacheNode']
        {
          cache_node_id: 'cache_node_id',
          cache_node_status: 'cache_node_status',
          cache_node_create_time: Time.now,
          endpoint: Stubs::Endpoint.default(visited),
          parameter_group_status: 'parameter_group_status',
          source_cache_node_id: 'source_cache_node_id',
          customer_availability_zone: 'customer_availability_zone',
          customer_outpost_arn: 'customer_outpost_arn',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::CacheNode.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('CacheNodeId', stub[:cache_node_id].to_s) unless stub[:cache_node_id].nil?
        xml << Hearth::XML::Node.new('CacheNodeStatus', stub[:cache_node_status].to_s) unless stub[:cache_node_status].nil?
        xml << Hearth::XML::Node.new('CacheNodeCreateTime', Hearth::TimeHelper.to_date_time(stub[:cache_node_create_time])) unless stub[:cache_node_create_time].nil?
        xml << Stubs::Endpoint.stub('Endpoint', stub[:endpoint]) unless stub[:endpoint].nil?
        xml << Hearth::XML::Node.new('ParameterGroupStatus', stub[:parameter_group_status].to_s) unless stub[:parameter_group_status].nil?
        xml << Hearth::XML::Node.new('SourceCacheNodeId', stub[:source_cache_node_id].to_s) unless stub[:source_cache_node_id].nil?
        xml << Hearth::XML::Node.new('CustomerAvailabilityZone', stub[:customer_availability_zone].to_s) unless stub[:customer_availability_zone].nil?
        xml << Hearth::XML::Node.new('CustomerOutpostArn', stub[:customer_outpost_arn].to_s) unless stub[:customer_outpost_arn].nil?
        xml
      end
    end

    # Structure Stubber for CacheParameterGroupStatus
    class CacheParameterGroupStatus
      def self.default(visited=[])
        return nil if visited.include?('CacheParameterGroupStatus')
        visited = visited + ['CacheParameterGroupStatus']
        {
          cache_parameter_group_name: 'cache_parameter_group_name',
          parameter_apply_status: 'parameter_apply_status',
          cache_node_ids_to_reboot: Stubs::CacheNodeIdsList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::CacheParameterGroupStatus.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('CacheParameterGroupName', stub[:cache_parameter_group_name].to_s) unless stub[:cache_parameter_group_name].nil?
        xml << Hearth::XML::Node.new('ParameterApplyStatus', stub[:parameter_apply_status].to_s) unless stub[:parameter_apply_status].nil?
        xml << Hearth::XML::Node.new('CacheNodeIdsToReboot', Stubs::CacheNodeIdsList.stub('CacheNodeId', stub[:cache_node_ids_to_reboot])) unless stub[:cache_node_ids_to_reboot].nil?
        xml
      end
    end

    # List Stubber for CacheNodeIdsList
    class CacheNodeIdsList
      def self.default(visited=[])
        return nil if visited.include?('CacheNodeIdsList')
        visited = visited + ['CacheNodeIdsList']
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

    # List Stubber for CacheSecurityGroupMembershipList
    class CacheSecurityGroupMembershipList
      def self.default(visited=[])
        return nil if visited.include?('CacheSecurityGroupMembershipList')
        visited = visited + ['CacheSecurityGroupMembershipList']
        [
          Stubs::CacheSecurityGroupMembership.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::CacheSecurityGroupMembership.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for CacheSecurityGroupMembership
    class CacheSecurityGroupMembership
      def self.default(visited=[])
        return nil if visited.include?('CacheSecurityGroupMembership')
        visited = visited + ['CacheSecurityGroupMembership']
        {
          cache_security_group_name: 'cache_security_group_name',
          status: 'status',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::CacheSecurityGroupMembership.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('CacheSecurityGroupName', stub[:cache_security_group_name].to_s) unless stub[:cache_security_group_name].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml
      end
    end

    # Structure Stubber for NotificationConfiguration
    class NotificationConfiguration
      def self.default(visited=[])
        return nil if visited.include?('NotificationConfiguration')
        visited = visited + ['NotificationConfiguration']
        {
          topic_arn: 'topic_arn',
          topic_status: 'topic_status',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::NotificationConfiguration.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('TopicArn', stub[:topic_arn].to_s) unless stub[:topic_arn].nil?
        xml << Hearth::XML::Node.new('TopicStatus', stub[:topic_status].to_s) unless stub[:topic_status].nil?
        xml
      end
    end

    # Structure Stubber for PendingModifiedValues
    class PendingModifiedValues
      def self.default(visited=[])
        return nil if visited.include?('PendingModifiedValues')
        visited = visited + ['PendingModifiedValues']
        {
          num_cache_nodes: 1,
          cache_node_ids_to_remove: Stubs::CacheNodeIdsList.default(visited),
          engine_version: 'engine_version',
          cache_node_type: 'cache_node_type',
          auth_token_status: 'auth_token_status',
          log_delivery_configurations: Stubs::PendingLogDeliveryConfigurationList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::PendingModifiedValues.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('NumCacheNodes', stub[:num_cache_nodes].to_s) unless stub[:num_cache_nodes].nil?
        xml << Hearth::XML::Node.new('CacheNodeIdsToRemove', Stubs::CacheNodeIdsList.stub('CacheNodeId', stub[:cache_node_ids_to_remove])) unless stub[:cache_node_ids_to_remove].nil?
        xml << Hearth::XML::Node.new('EngineVersion', stub[:engine_version].to_s) unless stub[:engine_version].nil?
        xml << Hearth::XML::Node.new('CacheNodeType', stub[:cache_node_type].to_s) unless stub[:cache_node_type].nil?
        xml << Hearth::XML::Node.new('AuthTokenStatus', stub[:auth_token_status].to_s) unless stub[:auth_token_status].nil?
        xml << Hearth::XML::Node.new('LogDeliveryConfigurations', Stubs::PendingLogDeliveryConfigurationList.stub('member', stub[:log_delivery_configurations])) unless stub[:log_delivery_configurations].nil?
        xml
      end
    end

    # Operation Stubber for CreateCacheParameterGroup
    class CreateCacheParameterGroup
      def self.default(visited=[])
        {
          cache_parameter_group: Stubs::CacheParameterGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateCacheParameterGroupResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('CreateCacheParameterGroupResult')
        xml << Stubs::CacheParameterGroup.stub('CacheParameterGroup', stub[:cache_parameter_group]) unless stub[:cache_parameter_group].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for CacheParameterGroup
    class CacheParameterGroup
      def self.default(visited=[])
        return nil if visited.include?('CacheParameterGroup')
        visited = visited + ['CacheParameterGroup']
        {
          cache_parameter_group_name: 'cache_parameter_group_name',
          cache_parameter_group_family: 'cache_parameter_group_family',
          description: 'description',
          is_global: false,
          arn: 'arn',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::CacheParameterGroup.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('CacheParameterGroupName', stub[:cache_parameter_group_name].to_s) unless stub[:cache_parameter_group_name].nil?
        xml << Hearth::XML::Node.new('CacheParameterGroupFamily', stub[:cache_parameter_group_family].to_s) unless stub[:cache_parameter_group_family].nil?
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        xml << Hearth::XML::Node.new('IsGlobal', stub[:is_global].to_s) unless stub[:is_global].nil?
        xml << Hearth::XML::Node.new('ARN', stub[:arn].to_s) unless stub[:arn].nil?
        xml
      end
    end

    # Operation Stubber for CreateCacheSecurityGroup
    class CreateCacheSecurityGroup
      def self.default(visited=[])
        {
          cache_security_group: Stubs::CacheSecurityGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateCacheSecurityGroupResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('CreateCacheSecurityGroupResult')
        xml << Stubs::CacheSecurityGroup.stub('CacheSecurityGroup', stub[:cache_security_group]) unless stub[:cache_security_group].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateCacheSubnetGroup
    class CreateCacheSubnetGroup
      def self.default(visited=[])
        {
          cache_subnet_group: Stubs::CacheSubnetGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateCacheSubnetGroupResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('CreateCacheSubnetGroupResult')
        xml << Stubs::CacheSubnetGroup.stub('CacheSubnetGroup', stub[:cache_subnet_group]) unless stub[:cache_subnet_group].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for CacheSubnetGroup
    class CacheSubnetGroup
      def self.default(visited=[])
        return nil if visited.include?('CacheSubnetGroup')
        visited = visited + ['CacheSubnetGroup']
        {
          cache_subnet_group_name: 'cache_subnet_group_name',
          cache_subnet_group_description: 'cache_subnet_group_description',
          vpc_id: 'vpc_id',
          subnets: Stubs::SubnetList.default(visited),
          arn: 'arn',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::CacheSubnetGroup.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('CacheSubnetGroupName', stub[:cache_subnet_group_name].to_s) unless stub[:cache_subnet_group_name].nil?
        xml << Hearth::XML::Node.new('CacheSubnetGroupDescription', stub[:cache_subnet_group_description].to_s) unless stub[:cache_subnet_group_description].nil?
        xml << Hearth::XML::Node.new('VpcId', stub[:vpc_id].to_s) unless stub[:vpc_id].nil?
        xml << Hearth::XML::Node.new('Subnets', Stubs::SubnetList.stub('Subnet', stub[:subnets])) unless stub[:subnets].nil?
        xml << Hearth::XML::Node.new('ARN', stub[:arn].to_s) unless stub[:arn].nil?
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
          subnet_outpost: Stubs::SubnetOutpost.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Subnet.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('SubnetIdentifier', stub[:subnet_identifier].to_s) unless stub[:subnet_identifier].nil?
        xml << Stubs::AvailabilityZone.stub('SubnetAvailabilityZone', stub[:subnet_availability_zone]) unless stub[:subnet_availability_zone].nil?
        xml << Stubs::SubnetOutpost.stub('SubnetOutpost', stub[:subnet_outpost]) unless stub[:subnet_outpost].nil?
        xml
      end
    end

    # Structure Stubber for SubnetOutpost
    class SubnetOutpost
      def self.default(visited=[])
        return nil if visited.include?('SubnetOutpost')
        visited = visited + ['SubnetOutpost']
        {
          subnet_outpost_arn: 'subnet_outpost_arn',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::SubnetOutpost.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('SubnetOutpostArn', stub[:subnet_outpost_arn].to_s) unless stub[:subnet_outpost_arn].nil?
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

    # Operation Stubber for CreateGlobalReplicationGroup
    class CreateGlobalReplicationGroup
      def self.default(visited=[])
        {
          global_replication_group: Stubs::GlobalReplicationGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateGlobalReplicationGroupResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('CreateGlobalReplicationGroupResult')
        xml << Stubs::GlobalReplicationGroup.stub('GlobalReplicationGroup', stub[:global_replication_group]) unless stub[:global_replication_group].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for GlobalReplicationGroup
    class GlobalReplicationGroup
      def self.default(visited=[])
        return nil if visited.include?('GlobalReplicationGroup')
        visited = visited + ['GlobalReplicationGroup']
        {
          global_replication_group_id: 'global_replication_group_id',
          global_replication_group_description: 'global_replication_group_description',
          status: 'status',
          cache_node_type: 'cache_node_type',
          engine: 'engine',
          engine_version: 'engine_version',
          members: Stubs::GlobalReplicationGroupMemberList.default(visited),
          cluster_enabled: false,
          global_node_groups: Stubs::GlobalNodeGroupList.default(visited),
          auth_token_enabled: false,
          transit_encryption_enabled: false,
          at_rest_encryption_enabled: false,
          arn: 'arn',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::GlobalReplicationGroup.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('GlobalReplicationGroupId', stub[:global_replication_group_id].to_s) unless stub[:global_replication_group_id].nil?
        xml << Hearth::XML::Node.new('GlobalReplicationGroupDescription', stub[:global_replication_group_description].to_s) unless stub[:global_replication_group_description].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('CacheNodeType', stub[:cache_node_type].to_s) unless stub[:cache_node_type].nil?
        xml << Hearth::XML::Node.new('Engine', stub[:engine].to_s) unless stub[:engine].nil?
        xml << Hearth::XML::Node.new('EngineVersion', stub[:engine_version].to_s) unless stub[:engine_version].nil?
        xml << Hearth::XML::Node.new('Members', Stubs::GlobalReplicationGroupMemberList.stub('GlobalReplicationGroupMember', stub[:members])) unless stub[:members].nil?
        xml << Hearth::XML::Node.new('ClusterEnabled', stub[:cluster_enabled].to_s) unless stub[:cluster_enabled].nil?
        xml << Hearth::XML::Node.new('GlobalNodeGroups', Stubs::GlobalNodeGroupList.stub('GlobalNodeGroup', stub[:global_node_groups])) unless stub[:global_node_groups].nil?
        xml << Hearth::XML::Node.new('AuthTokenEnabled', stub[:auth_token_enabled].to_s) unless stub[:auth_token_enabled].nil?
        xml << Hearth::XML::Node.new('TransitEncryptionEnabled', stub[:transit_encryption_enabled].to_s) unless stub[:transit_encryption_enabled].nil?
        xml << Hearth::XML::Node.new('AtRestEncryptionEnabled', stub[:at_rest_encryption_enabled].to_s) unless stub[:at_rest_encryption_enabled].nil?
        xml << Hearth::XML::Node.new('ARN', stub[:arn].to_s) unless stub[:arn].nil?
        xml
      end
    end

    # List Stubber for GlobalNodeGroupList
    class GlobalNodeGroupList
      def self.default(visited=[])
        return nil if visited.include?('GlobalNodeGroupList')
        visited = visited + ['GlobalNodeGroupList']
        [
          Stubs::GlobalNodeGroup.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::GlobalNodeGroup.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for GlobalNodeGroup
    class GlobalNodeGroup
      def self.default(visited=[])
        return nil if visited.include?('GlobalNodeGroup')
        visited = visited + ['GlobalNodeGroup']
        {
          global_node_group_id: 'global_node_group_id',
          slots: 'slots',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::GlobalNodeGroup.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('GlobalNodeGroupId', stub[:global_node_group_id].to_s) unless stub[:global_node_group_id].nil?
        xml << Hearth::XML::Node.new('Slots', stub[:slots].to_s) unless stub[:slots].nil?
        xml
      end
    end

    # List Stubber for GlobalReplicationGroupMemberList
    class GlobalReplicationGroupMemberList
      def self.default(visited=[])
        return nil if visited.include?('GlobalReplicationGroupMemberList')
        visited = visited + ['GlobalReplicationGroupMemberList']
        [
          Stubs::GlobalReplicationGroupMember.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::GlobalReplicationGroupMember.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for GlobalReplicationGroupMember
    class GlobalReplicationGroupMember
      def self.default(visited=[])
        return nil if visited.include?('GlobalReplicationGroupMember')
        visited = visited + ['GlobalReplicationGroupMember']
        {
          replication_group_id: 'replication_group_id',
          replication_group_region: 'replication_group_region',
          role: 'role',
          automatic_failover: 'automatic_failover',
          status: 'status',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::GlobalReplicationGroupMember.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ReplicationGroupId', stub[:replication_group_id].to_s) unless stub[:replication_group_id].nil?
        xml << Hearth::XML::Node.new('ReplicationGroupRegion', stub[:replication_group_region].to_s) unless stub[:replication_group_region].nil?
        xml << Hearth::XML::Node.new('Role', stub[:role].to_s) unless stub[:role].nil?
        xml << Hearth::XML::Node.new('AutomaticFailover', stub[:automatic_failover].to_s) unless stub[:automatic_failover].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml
      end
    end

    # Operation Stubber for CreateReplicationGroup
    class CreateReplicationGroup
      def self.default(visited=[])
        {
          replication_group: Stubs::ReplicationGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateReplicationGroupResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('CreateReplicationGroupResult')
        xml << Stubs::ReplicationGroup.stub('ReplicationGroup', stub[:replication_group]) unless stub[:replication_group].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateSnapshot
    class CreateSnapshot
      def self.default(visited=[])
        {
          snapshot: Stubs::Snapshot.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateSnapshotResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('CreateSnapshotResult')
        xml << Stubs::Snapshot.stub('Snapshot', stub[:snapshot]) unless stub[:snapshot].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateUser
    class CreateUser
      def self.default(visited=[])
        {
          user_id: 'user_id',
          user_name: 'user_name',
          status: 'status',
          engine: 'engine',
          minimum_engine_version: 'minimum_engine_version',
          access_string: 'access_string',
          user_group_ids: Stubs::UserGroupIdList.default(visited),
          authentication: Stubs::Authentication.default(visited),
          arn: 'arn',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateUserResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('CreateUserResult')
        xml << Hearth::XML::Node.new('UserId', stub[:user_id].to_s) unless stub[:user_id].nil?
        xml << Hearth::XML::Node.new('UserName', stub[:user_name].to_s) unless stub[:user_name].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('Engine', stub[:engine].to_s) unless stub[:engine].nil?
        xml << Hearth::XML::Node.new('MinimumEngineVersion', stub[:minimum_engine_version].to_s) unless stub[:minimum_engine_version].nil?
        xml << Hearth::XML::Node.new('AccessString', stub[:access_string].to_s) unless stub[:access_string].nil?
        xml << Hearth::XML::Node.new('UserGroupIds', Stubs::UserGroupIdList.stub('member', stub[:user_group_ids])) unless stub[:user_group_ids].nil?
        xml << Stubs::Authentication.stub('Authentication', stub[:authentication]) unless stub[:authentication].nil?
        xml << Hearth::XML::Node.new('ARN', stub[:arn].to_s) unless stub[:arn].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for Authentication
    class Authentication
      def self.default(visited=[])
        return nil if visited.include?('Authentication')
        visited = visited + ['Authentication']
        {
          type: 'type',
          password_count: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Authentication.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Type', stub[:type].to_s) unless stub[:type].nil?
        xml << Hearth::XML::Node.new('PasswordCount', stub[:password_count].to_s) unless stub[:password_count].nil?
        xml
      end
    end

    # Operation Stubber for CreateUserGroup
    class CreateUserGroup
      def self.default(visited=[])
        {
          user_group_id: 'user_group_id',
          status: 'status',
          engine: 'engine',
          user_ids: Stubs::UserIdList.default(visited),
          minimum_engine_version: 'minimum_engine_version',
          pending_changes: Stubs::UserGroupPendingChanges.default(visited),
          replication_groups: Stubs::UGReplicationGroupIdList.default(visited),
          arn: 'arn',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateUserGroupResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('CreateUserGroupResult')
        xml << Hearth::XML::Node.new('UserGroupId', stub[:user_group_id].to_s) unless stub[:user_group_id].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('Engine', stub[:engine].to_s) unless stub[:engine].nil?
        xml << Hearth::XML::Node.new('UserIds', Stubs::UserIdList.stub('member', stub[:user_ids])) unless stub[:user_ids].nil?
        xml << Hearth::XML::Node.new('MinimumEngineVersion', stub[:minimum_engine_version].to_s) unless stub[:minimum_engine_version].nil?
        xml << Stubs::UserGroupPendingChanges.stub('PendingChanges', stub[:pending_changes]) unless stub[:pending_changes].nil?
        xml << Hearth::XML::Node.new('ReplicationGroups', Stubs::UGReplicationGroupIdList.stub('member', stub[:replication_groups])) unless stub[:replication_groups].nil?
        xml << Hearth::XML::Node.new('ARN', stub[:arn].to_s) unless stub[:arn].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for UGReplicationGroupIdList
    class UGReplicationGroupIdList
      def self.default(visited=[])
        return nil if visited.include?('UGReplicationGroupIdList')
        visited = visited + ['UGReplicationGroupIdList']
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

    # Structure Stubber for UserGroupPendingChanges
    class UserGroupPendingChanges
      def self.default(visited=[])
        return nil if visited.include?('UserGroupPendingChanges')
        visited = visited + ['UserGroupPendingChanges']
        {
          user_ids_to_remove: Stubs::UserIdList.default(visited),
          user_ids_to_add: Stubs::UserIdList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::UserGroupPendingChanges.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('UserIdsToRemove', Stubs::UserIdList.stub('member', stub[:user_ids_to_remove])) unless stub[:user_ids_to_remove].nil?
        xml << Hearth::XML::Node.new('UserIdsToAdd', Stubs::UserIdList.stub('member', stub[:user_ids_to_add])) unless stub[:user_ids_to_add].nil?
        xml
      end
    end

    # List Stubber for UserIdList
    class UserIdList
      def self.default(visited=[])
        return nil if visited.include?('UserIdList')
        visited = visited + ['UserIdList']
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

    # Operation Stubber for DecreaseNodeGroupsInGlobalReplicationGroup
    class DecreaseNodeGroupsInGlobalReplicationGroup
      def self.default(visited=[])
        {
          global_replication_group: Stubs::GlobalReplicationGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DecreaseNodeGroupsInGlobalReplicationGroupResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('DecreaseNodeGroupsInGlobalReplicationGroupResult')
        xml << Stubs::GlobalReplicationGroup.stub('GlobalReplicationGroup', stub[:global_replication_group]) unless stub[:global_replication_group].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DecreaseReplicaCount
    class DecreaseReplicaCount
      def self.default(visited=[])
        {
          replication_group: Stubs::ReplicationGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DecreaseReplicaCountResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('DecreaseReplicaCountResult')
        xml << Stubs::ReplicationGroup.stub('ReplicationGroup', stub[:replication_group]) unless stub[:replication_group].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteCacheCluster
    class DeleteCacheCluster
      def self.default(visited=[])
        {
          cache_cluster: Stubs::CacheCluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteCacheClusterResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('DeleteCacheClusterResult')
        xml << Stubs::CacheCluster.stub('CacheCluster', stub[:cache_cluster]) unless stub[:cache_cluster].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteCacheParameterGroup
    class DeleteCacheParameterGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteCacheParameterGroupResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('DeleteCacheParameterGroupResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteCacheSecurityGroup
    class DeleteCacheSecurityGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteCacheSecurityGroupResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('DeleteCacheSecurityGroupResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteCacheSubnetGroup
    class DeleteCacheSubnetGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteCacheSubnetGroupResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('DeleteCacheSubnetGroupResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteGlobalReplicationGroup
    class DeleteGlobalReplicationGroup
      def self.default(visited=[])
        {
          global_replication_group: Stubs::GlobalReplicationGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteGlobalReplicationGroupResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('DeleteGlobalReplicationGroupResult')
        xml << Stubs::GlobalReplicationGroup.stub('GlobalReplicationGroup', stub[:global_replication_group]) unless stub[:global_replication_group].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteReplicationGroup
    class DeleteReplicationGroup
      def self.default(visited=[])
        {
          replication_group: Stubs::ReplicationGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteReplicationGroupResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('DeleteReplicationGroupResult')
        xml << Stubs::ReplicationGroup.stub('ReplicationGroup', stub[:replication_group]) unless stub[:replication_group].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteSnapshot
    class DeleteSnapshot
      def self.default(visited=[])
        {
          snapshot: Stubs::Snapshot.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteSnapshotResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('DeleteSnapshotResult')
        xml << Stubs::Snapshot.stub('Snapshot', stub[:snapshot]) unless stub[:snapshot].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteUser
    class DeleteUser
      def self.default(visited=[])
        {
          user_id: 'user_id',
          user_name: 'user_name',
          status: 'status',
          engine: 'engine',
          minimum_engine_version: 'minimum_engine_version',
          access_string: 'access_string',
          user_group_ids: Stubs::UserGroupIdList.default(visited),
          authentication: Stubs::Authentication.default(visited),
          arn: 'arn',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteUserResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('DeleteUserResult')
        xml << Hearth::XML::Node.new('UserId', stub[:user_id].to_s) unless stub[:user_id].nil?
        xml << Hearth::XML::Node.new('UserName', stub[:user_name].to_s) unless stub[:user_name].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('Engine', stub[:engine].to_s) unless stub[:engine].nil?
        xml << Hearth::XML::Node.new('MinimumEngineVersion', stub[:minimum_engine_version].to_s) unless stub[:minimum_engine_version].nil?
        xml << Hearth::XML::Node.new('AccessString', stub[:access_string].to_s) unless stub[:access_string].nil?
        xml << Hearth::XML::Node.new('UserGroupIds', Stubs::UserGroupIdList.stub('member', stub[:user_group_ids])) unless stub[:user_group_ids].nil?
        xml << Stubs::Authentication.stub('Authentication', stub[:authentication]) unless stub[:authentication].nil?
        xml << Hearth::XML::Node.new('ARN', stub[:arn].to_s) unless stub[:arn].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteUserGroup
    class DeleteUserGroup
      def self.default(visited=[])
        {
          user_group_id: 'user_group_id',
          status: 'status',
          engine: 'engine',
          user_ids: Stubs::UserIdList.default(visited),
          minimum_engine_version: 'minimum_engine_version',
          pending_changes: Stubs::UserGroupPendingChanges.default(visited),
          replication_groups: Stubs::UGReplicationGroupIdList.default(visited),
          arn: 'arn',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteUserGroupResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('DeleteUserGroupResult')
        xml << Hearth::XML::Node.new('UserGroupId', stub[:user_group_id].to_s) unless stub[:user_group_id].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('Engine', stub[:engine].to_s) unless stub[:engine].nil?
        xml << Hearth::XML::Node.new('UserIds', Stubs::UserIdList.stub('member', stub[:user_ids])) unless stub[:user_ids].nil?
        xml << Hearth::XML::Node.new('MinimumEngineVersion', stub[:minimum_engine_version].to_s) unless stub[:minimum_engine_version].nil?
        xml << Stubs::UserGroupPendingChanges.stub('PendingChanges', stub[:pending_changes]) unless stub[:pending_changes].nil?
        xml << Hearth::XML::Node.new('ReplicationGroups', Stubs::UGReplicationGroupIdList.stub('member', stub[:replication_groups])) unless stub[:replication_groups].nil?
        xml << Hearth::XML::Node.new('ARN', stub[:arn].to_s) unless stub[:arn].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeCacheClusters
    class DescribeCacheClusters
      def self.default(visited=[])
        {
          marker: 'marker',
          cache_clusters: Stubs::CacheClusterList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeCacheClustersResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('DescribeCacheClustersResult')
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('CacheClusters', Stubs::CacheClusterList.stub('CacheCluster', stub[:cache_clusters])) unless stub[:cache_clusters].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for CacheClusterList
    class CacheClusterList
      def self.default(visited=[])
        return nil if visited.include?('CacheClusterList')
        visited = visited + ['CacheClusterList']
        [
          Stubs::CacheCluster.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::CacheCluster.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for DescribeCacheEngineVersions
    class DescribeCacheEngineVersions
      def self.default(visited=[])
        {
          marker: 'marker',
          cache_engine_versions: Stubs::CacheEngineVersionList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeCacheEngineVersionsResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('DescribeCacheEngineVersionsResult')
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('CacheEngineVersions', Stubs::CacheEngineVersionList.stub('CacheEngineVersion', stub[:cache_engine_versions])) unless stub[:cache_engine_versions].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for CacheEngineVersionList
    class CacheEngineVersionList
      def self.default(visited=[])
        return nil if visited.include?('CacheEngineVersionList')
        visited = visited + ['CacheEngineVersionList']
        [
          Stubs::CacheEngineVersion.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::CacheEngineVersion.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for CacheEngineVersion
    class CacheEngineVersion
      def self.default(visited=[])
        return nil if visited.include?('CacheEngineVersion')
        visited = visited + ['CacheEngineVersion']
        {
          engine: 'engine',
          engine_version: 'engine_version',
          cache_parameter_group_family: 'cache_parameter_group_family',
          cache_engine_description: 'cache_engine_description',
          cache_engine_version_description: 'cache_engine_version_description',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::CacheEngineVersion.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Engine', stub[:engine].to_s) unless stub[:engine].nil?
        xml << Hearth::XML::Node.new('EngineVersion', stub[:engine_version].to_s) unless stub[:engine_version].nil?
        xml << Hearth::XML::Node.new('CacheParameterGroupFamily', stub[:cache_parameter_group_family].to_s) unless stub[:cache_parameter_group_family].nil?
        xml << Hearth::XML::Node.new('CacheEngineDescription', stub[:cache_engine_description].to_s) unless stub[:cache_engine_description].nil?
        xml << Hearth::XML::Node.new('CacheEngineVersionDescription', stub[:cache_engine_version_description].to_s) unless stub[:cache_engine_version_description].nil?
        xml
      end
    end

    # Operation Stubber for DescribeCacheParameterGroups
    class DescribeCacheParameterGroups
      def self.default(visited=[])
        {
          marker: 'marker',
          cache_parameter_groups: Stubs::CacheParameterGroupList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeCacheParameterGroupsResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('DescribeCacheParameterGroupsResult')
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('CacheParameterGroups', Stubs::CacheParameterGroupList.stub('CacheParameterGroup', stub[:cache_parameter_groups])) unless stub[:cache_parameter_groups].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for CacheParameterGroupList
    class CacheParameterGroupList
      def self.default(visited=[])
        return nil if visited.include?('CacheParameterGroupList')
        visited = visited + ['CacheParameterGroupList']
        [
          Stubs::CacheParameterGroup.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::CacheParameterGroup.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for DescribeCacheParameters
    class DescribeCacheParameters
      def self.default(visited=[])
        {
          marker: 'marker',
          parameters: Stubs::ParametersList.default(visited),
          cache_node_type_specific_parameters: Stubs::CacheNodeTypeSpecificParametersList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeCacheParametersResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('DescribeCacheParametersResult')
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('Parameters', Stubs::ParametersList.stub('Parameter', stub[:parameters])) unless stub[:parameters].nil?
        xml << Hearth::XML::Node.new('CacheNodeTypeSpecificParameters', Stubs::CacheNodeTypeSpecificParametersList.stub('CacheNodeTypeSpecificParameter', stub[:cache_node_type_specific_parameters])) unless stub[:cache_node_type_specific_parameters].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for CacheNodeTypeSpecificParametersList
    class CacheNodeTypeSpecificParametersList
      def self.default(visited=[])
        return nil if visited.include?('CacheNodeTypeSpecificParametersList')
        visited = visited + ['CacheNodeTypeSpecificParametersList']
        [
          Stubs::CacheNodeTypeSpecificParameter.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::CacheNodeTypeSpecificParameter.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for CacheNodeTypeSpecificParameter
    class CacheNodeTypeSpecificParameter
      def self.default(visited=[])
        return nil if visited.include?('CacheNodeTypeSpecificParameter')
        visited = visited + ['CacheNodeTypeSpecificParameter']
        {
          parameter_name: 'parameter_name',
          description: 'description',
          source: 'source',
          data_type: 'data_type',
          allowed_values: 'allowed_values',
          is_modifiable: false,
          minimum_engine_version: 'minimum_engine_version',
          cache_node_type_specific_values: Stubs::CacheNodeTypeSpecificValueList.default(visited),
          change_type: 'change_type',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::CacheNodeTypeSpecificParameter.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ParameterName', stub[:parameter_name].to_s) unless stub[:parameter_name].nil?
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        xml << Hearth::XML::Node.new('Source', stub[:source].to_s) unless stub[:source].nil?
        xml << Hearth::XML::Node.new('DataType', stub[:data_type].to_s) unless stub[:data_type].nil?
        xml << Hearth::XML::Node.new('AllowedValues', stub[:allowed_values].to_s) unless stub[:allowed_values].nil?
        xml << Hearth::XML::Node.new('IsModifiable', stub[:is_modifiable].to_s) unless stub[:is_modifiable].nil?
        xml << Hearth::XML::Node.new('MinimumEngineVersion', stub[:minimum_engine_version].to_s) unless stub[:minimum_engine_version].nil?
        xml << Hearth::XML::Node.new('CacheNodeTypeSpecificValues', Stubs::CacheNodeTypeSpecificValueList.stub('CacheNodeTypeSpecificValue', stub[:cache_node_type_specific_values])) unless stub[:cache_node_type_specific_values].nil?
        xml << Hearth::XML::Node.new('ChangeType', stub[:change_type].to_s) unless stub[:change_type].nil?
        xml
      end
    end

    # List Stubber for CacheNodeTypeSpecificValueList
    class CacheNodeTypeSpecificValueList
      def self.default(visited=[])
        return nil if visited.include?('CacheNodeTypeSpecificValueList')
        visited = visited + ['CacheNodeTypeSpecificValueList']
        [
          Stubs::CacheNodeTypeSpecificValue.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::CacheNodeTypeSpecificValue.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for CacheNodeTypeSpecificValue
    class CacheNodeTypeSpecificValue
      def self.default(visited=[])
        return nil if visited.include?('CacheNodeTypeSpecificValue')
        visited = visited + ['CacheNodeTypeSpecificValue']
        {
          cache_node_type: 'cache_node_type',
          value: 'value',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::CacheNodeTypeSpecificValue.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('CacheNodeType', stub[:cache_node_type].to_s) unless stub[:cache_node_type].nil?
        xml << Hearth::XML::Node.new('Value', stub[:value].to_s) unless stub[:value].nil?
        xml
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
          data_type: 'data_type',
          allowed_values: 'allowed_values',
          is_modifiable: false,
          minimum_engine_version: 'minimum_engine_version',
          change_type: 'change_type',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Parameter.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ParameterName', stub[:parameter_name].to_s) unless stub[:parameter_name].nil?
        xml << Hearth::XML::Node.new('ParameterValue', stub[:parameter_value].to_s) unless stub[:parameter_value].nil?
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        xml << Hearth::XML::Node.new('Source', stub[:source].to_s) unless stub[:source].nil?
        xml << Hearth::XML::Node.new('DataType', stub[:data_type].to_s) unless stub[:data_type].nil?
        xml << Hearth::XML::Node.new('AllowedValues', stub[:allowed_values].to_s) unless stub[:allowed_values].nil?
        xml << Hearth::XML::Node.new('IsModifiable', stub[:is_modifiable].to_s) unless stub[:is_modifiable].nil?
        xml << Hearth::XML::Node.new('MinimumEngineVersion', stub[:minimum_engine_version].to_s) unless stub[:minimum_engine_version].nil?
        xml << Hearth::XML::Node.new('ChangeType', stub[:change_type].to_s) unless stub[:change_type].nil?
        xml
      end
    end

    # Operation Stubber for DescribeCacheSecurityGroups
    class DescribeCacheSecurityGroups
      def self.default(visited=[])
        {
          marker: 'marker',
          cache_security_groups: Stubs::CacheSecurityGroups.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeCacheSecurityGroupsResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('DescribeCacheSecurityGroupsResult')
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('CacheSecurityGroups', Stubs::CacheSecurityGroups.stub('CacheSecurityGroup', stub[:cache_security_groups])) unless stub[:cache_security_groups].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for CacheSecurityGroups
    class CacheSecurityGroups
      def self.default(visited=[])
        return nil if visited.include?('CacheSecurityGroups')
        visited = visited + ['CacheSecurityGroups']
        [
          Stubs::CacheSecurityGroup.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::CacheSecurityGroup.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for DescribeCacheSubnetGroups
    class DescribeCacheSubnetGroups
      def self.default(visited=[])
        {
          marker: 'marker',
          cache_subnet_groups: Stubs::CacheSubnetGroups.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeCacheSubnetGroupsResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('DescribeCacheSubnetGroupsResult')
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('CacheSubnetGroups', Stubs::CacheSubnetGroups.stub('CacheSubnetGroup', stub[:cache_subnet_groups])) unless stub[:cache_subnet_groups].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for CacheSubnetGroups
    class CacheSubnetGroups
      def self.default(visited=[])
        return nil if visited.include?('CacheSubnetGroups')
        visited = visited + ['CacheSubnetGroups']
        [
          Stubs::CacheSubnetGroup.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::CacheSubnetGroup.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for DescribeEngineDefaultParameters
    class DescribeEngineDefaultParameters
      def self.default(visited=[])
        {
          engine_defaults: Stubs::EngineDefaults.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeEngineDefaultParametersResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('DescribeEngineDefaultParametersResult')
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
          cache_parameter_group_family: 'cache_parameter_group_family',
          marker: 'marker',
          parameters: Stubs::ParametersList.default(visited),
          cache_node_type_specific_parameters: Stubs::CacheNodeTypeSpecificParametersList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::EngineDefaults.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('CacheParameterGroupFamily', stub[:cache_parameter_group_family].to_s) unless stub[:cache_parameter_group_family].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('Parameters', Stubs::ParametersList.stub('Parameter', stub[:parameters])) unless stub[:parameters].nil?
        xml << Hearth::XML::Node.new('CacheNodeTypeSpecificParameters', Stubs::CacheNodeTypeSpecificParametersList.stub('CacheNodeTypeSpecificParameter', stub[:cache_node_type_specific_parameters])) unless stub[:cache_node_type_specific_parameters].nil?
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
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
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
          date: Time.now,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Event.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('SourceIdentifier', stub[:source_identifier].to_s) unless stub[:source_identifier].nil?
        xml << Hearth::XML::Node.new('SourceType', stub[:source_type].to_s) unless stub[:source_type].nil?
        xml << Hearth::XML::Node.new('Message', stub[:message].to_s) unless stub[:message].nil?
        xml << Hearth::XML::Node.new('Date', Hearth::TimeHelper.to_date_time(stub[:date])) unless stub[:date].nil?
        xml
      end
    end

    # Operation Stubber for DescribeGlobalReplicationGroups
    class DescribeGlobalReplicationGroups
      def self.default(visited=[])
        {
          marker: 'marker',
          global_replication_groups: Stubs::GlobalReplicationGroupList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeGlobalReplicationGroupsResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('DescribeGlobalReplicationGroupsResult')
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('GlobalReplicationGroups', Stubs::GlobalReplicationGroupList.stub('GlobalReplicationGroup', stub[:global_replication_groups])) unless stub[:global_replication_groups].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for GlobalReplicationGroupList
    class GlobalReplicationGroupList
      def self.default(visited=[])
        return nil if visited.include?('GlobalReplicationGroupList')
        visited = visited + ['GlobalReplicationGroupList']
        [
          Stubs::GlobalReplicationGroup.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::GlobalReplicationGroup.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for DescribeReplicationGroups
    class DescribeReplicationGroups
      def self.default(visited=[])
        {
          marker: 'marker',
          replication_groups: Stubs::ReplicationGroupList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeReplicationGroupsResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('DescribeReplicationGroupsResult')
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('ReplicationGroups', Stubs::ReplicationGroupList.stub('ReplicationGroup', stub[:replication_groups])) unless stub[:replication_groups].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for ReplicationGroupList
    class ReplicationGroupList
      def self.default(visited=[])
        return nil if visited.include?('ReplicationGroupList')
        visited = visited + ['ReplicationGroupList']
        [
          Stubs::ReplicationGroup.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::ReplicationGroup.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for DescribeReservedCacheNodes
    class DescribeReservedCacheNodes
      def self.default(visited=[])
        {
          marker: 'marker',
          reserved_cache_nodes: Stubs::ReservedCacheNodeList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeReservedCacheNodesResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('DescribeReservedCacheNodesResult')
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('ReservedCacheNodes', Stubs::ReservedCacheNodeList.stub('ReservedCacheNode', stub[:reserved_cache_nodes])) unless stub[:reserved_cache_nodes].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for ReservedCacheNodeList
    class ReservedCacheNodeList
      def self.default(visited=[])
        return nil if visited.include?('ReservedCacheNodeList')
        visited = visited + ['ReservedCacheNodeList']
        [
          Stubs::ReservedCacheNode.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::ReservedCacheNode.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ReservedCacheNode
    class ReservedCacheNode
      def self.default(visited=[])
        return nil if visited.include?('ReservedCacheNode')
        visited = visited + ['ReservedCacheNode']
        {
          reserved_cache_node_id: 'reserved_cache_node_id',
          reserved_cache_nodes_offering_id: 'reserved_cache_nodes_offering_id',
          cache_node_type: 'cache_node_type',
          start_time: Time.now,
          duration: 1,
          fixed_price: 1.0,
          usage_price: 1.0,
          cache_node_count: 1,
          product_description: 'product_description',
          offering_type: 'offering_type',
          state: 'state',
          recurring_charges: Stubs::RecurringChargeList.default(visited),
          reservation_arn: 'reservation_arn',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ReservedCacheNode.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ReservedCacheNodeId', stub[:reserved_cache_node_id].to_s) unless stub[:reserved_cache_node_id].nil?
        xml << Hearth::XML::Node.new('ReservedCacheNodesOfferingId', stub[:reserved_cache_nodes_offering_id].to_s) unless stub[:reserved_cache_nodes_offering_id].nil?
        xml << Hearth::XML::Node.new('CacheNodeType', stub[:cache_node_type].to_s) unless stub[:cache_node_type].nil?
        xml << Hearth::XML::Node.new('StartTime', Hearth::TimeHelper.to_date_time(stub[:start_time])) unless stub[:start_time].nil?
        xml << Hearth::XML::Node.new('Duration', stub[:duration].to_s) unless stub[:duration].nil?
        xml << Hearth::XML::Node.new('FixedPrice', Hearth::NumberHelper.serialize(stub[:fixed_price]).to_s) unless stub[:fixed_price].nil?
        xml << Hearth::XML::Node.new('UsagePrice', Hearth::NumberHelper.serialize(stub[:usage_price]).to_s) unless stub[:usage_price].nil?
        xml << Hearth::XML::Node.new('CacheNodeCount', stub[:cache_node_count].to_s) unless stub[:cache_node_count].nil?
        xml << Hearth::XML::Node.new('ProductDescription', stub[:product_description].to_s) unless stub[:product_description].nil?
        xml << Hearth::XML::Node.new('OfferingType', stub[:offering_type].to_s) unless stub[:offering_type].nil?
        xml << Hearth::XML::Node.new('State', stub[:state].to_s) unless stub[:state].nil?
        xml << Hearth::XML::Node.new('RecurringCharges', Stubs::RecurringChargeList.stub('RecurringCharge', stub[:recurring_charges])) unless stub[:recurring_charges].nil?
        xml << Hearth::XML::Node.new('ReservationARN', stub[:reservation_arn].to_s) unless stub[:reservation_arn].nil?
        xml
      end
    end

    # List Stubber for RecurringChargeList
    class RecurringChargeList
      def self.default(visited=[])
        return nil if visited.include?('RecurringChargeList')
        visited = visited + ['RecurringChargeList']
        [
          Stubs::RecurringCharge.default(visited)
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

    # Operation Stubber for DescribeReservedCacheNodesOfferings
    class DescribeReservedCacheNodesOfferings
      def self.default(visited=[])
        {
          marker: 'marker',
          reserved_cache_nodes_offerings: Stubs::ReservedCacheNodesOfferingList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeReservedCacheNodesOfferingsResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('DescribeReservedCacheNodesOfferingsResult')
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('ReservedCacheNodesOfferings', Stubs::ReservedCacheNodesOfferingList.stub('ReservedCacheNodesOffering', stub[:reserved_cache_nodes_offerings])) unless stub[:reserved_cache_nodes_offerings].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for ReservedCacheNodesOfferingList
    class ReservedCacheNodesOfferingList
      def self.default(visited=[])
        return nil if visited.include?('ReservedCacheNodesOfferingList')
        visited = visited + ['ReservedCacheNodesOfferingList']
        [
          Stubs::ReservedCacheNodesOffering.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::ReservedCacheNodesOffering.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ReservedCacheNodesOffering
    class ReservedCacheNodesOffering
      def self.default(visited=[])
        return nil if visited.include?('ReservedCacheNodesOffering')
        visited = visited + ['ReservedCacheNodesOffering']
        {
          reserved_cache_nodes_offering_id: 'reserved_cache_nodes_offering_id',
          cache_node_type: 'cache_node_type',
          duration: 1,
          fixed_price: 1.0,
          usage_price: 1.0,
          product_description: 'product_description',
          offering_type: 'offering_type',
          recurring_charges: Stubs::RecurringChargeList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ReservedCacheNodesOffering.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ReservedCacheNodesOfferingId', stub[:reserved_cache_nodes_offering_id].to_s) unless stub[:reserved_cache_nodes_offering_id].nil?
        xml << Hearth::XML::Node.new('CacheNodeType', stub[:cache_node_type].to_s) unless stub[:cache_node_type].nil?
        xml << Hearth::XML::Node.new('Duration', stub[:duration].to_s) unless stub[:duration].nil?
        xml << Hearth::XML::Node.new('FixedPrice', Hearth::NumberHelper.serialize(stub[:fixed_price]).to_s) unless stub[:fixed_price].nil?
        xml << Hearth::XML::Node.new('UsagePrice', Hearth::NumberHelper.serialize(stub[:usage_price]).to_s) unless stub[:usage_price].nil?
        xml << Hearth::XML::Node.new('ProductDescription', stub[:product_description].to_s) unless stub[:product_description].nil?
        xml << Hearth::XML::Node.new('OfferingType', stub[:offering_type].to_s) unless stub[:offering_type].nil?
        xml << Hearth::XML::Node.new('RecurringCharges', Stubs::RecurringChargeList.stub('RecurringCharge', stub[:recurring_charges])) unless stub[:recurring_charges].nil?
        xml
      end
    end

    # Operation Stubber for DescribeServiceUpdates
    class DescribeServiceUpdates
      def self.default(visited=[])
        {
          marker: 'marker',
          service_updates: Stubs::ServiceUpdateList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeServiceUpdatesResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('DescribeServiceUpdatesResult')
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('ServiceUpdates', Stubs::ServiceUpdateList.stub('ServiceUpdate', stub[:service_updates])) unless stub[:service_updates].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for ServiceUpdateList
    class ServiceUpdateList
      def self.default(visited=[])
        return nil if visited.include?('ServiceUpdateList')
        visited = visited + ['ServiceUpdateList']
        [
          Stubs::ServiceUpdate.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::ServiceUpdate.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ServiceUpdate
    class ServiceUpdate
      def self.default(visited=[])
        return nil if visited.include?('ServiceUpdate')
        visited = visited + ['ServiceUpdate']
        {
          service_update_name: 'service_update_name',
          service_update_release_date: Time.now,
          service_update_end_date: Time.now,
          service_update_severity: 'service_update_severity',
          service_update_recommended_apply_by_date: Time.now,
          service_update_status: 'service_update_status',
          service_update_description: 'service_update_description',
          service_update_type: 'service_update_type',
          engine: 'engine',
          engine_version: 'engine_version',
          auto_update_after_recommended_apply_by_date: false,
          estimated_update_time: 'estimated_update_time',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ServiceUpdate.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ServiceUpdateName', stub[:service_update_name].to_s) unless stub[:service_update_name].nil?
        xml << Hearth::XML::Node.new('ServiceUpdateReleaseDate', Hearth::TimeHelper.to_date_time(stub[:service_update_release_date])) unless stub[:service_update_release_date].nil?
        xml << Hearth::XML::Node.new('ServiceUpdateEndDate', Hearth::TimeHelper.to_date_time(stub[:service_update_end_date])) unless stub[:service_update_end_date].nil?
        xml << Hearth::XML::Node.new('ServiceUpdateSeverity', stub[:service_update_severity].to_s) unless stub[:service_update_severity].nil?
        xml << Hearth::XML::Node.new('ServiceUpdateRecommendedApplyByDate', Hearth::TimeHelper.to_date_time(stub[:service_update_recommended_apply_by_date])) unless stub[:service_update_recommended_apply_by_date].nil?
        xml << Hearth::XML::Node.new('ServiceUpdateStatus', stub[:service_update_status].to_s) unless stub[:service_update_status].nil?
        xml << Hearth::XML::Node.new('ServiceUpdateDescription', stub[:service_update_description].to_s) unless stub[:service_update_description].nil?
        xml << Hearth::XML::Node.new('ServiceUpdateType', stub[:service_update_type].to_s) unless stub[:service_update_type].nil?
        xml << Hearth::XML::Node.new('Engine', stub[:engine].to_s) unless stub[:engine].nil?
        xml << Hearth::XML::Node.new('EngineVersion', stub[:engine_version].to_s) unless stub[:engine_version].nil?
        xml << Hearth::XML::Node.new('AutoUpdateAfterRecommendedApplyByDate', stub[:auto_update_after_recommended_apply_by_date].to_s) unless stub[:auto_update_after_recommended_apply_by_date].nil?
        xml << Hearth::XML::Node.new('EstimatedUpdateTime', stub[:estimated_update_time].to_s) unless stub[:estimated_update_time].nil?
        xml
      end
    end

    # Operation Stubber for DescribeSnapshots
    class DescribeSnapshots
      def self.default(visited=[])
        {
          marker: 'marker',
          snapshots: Stubs::SnapshotList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeSnapshotsResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('DescribeSnapshotsResult')
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('Snapshots', Stubs::SnapshotList.stub('Snapshot', stub[:snapshots])) unless stub[:snapshots].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for SnapshotList
    class SnapshotList
      def self.default(visited=[])
        return nil if visited.include?('SnapshotList')
        visited = visited + ['SnapshotList']
        [
          Stubs::Snapshot.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::Snapshot.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for DescribeUpdateActions
    class DescribeUpdateActions
      def self.default(visited=[])
        {
          marker: 'marker',
          update_actions: Stubs::UpdateActionList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeUpdateActionsResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('DescribeUpdateActionsResult')
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('UpdateActions', Stubs::UpdateActionList.stub('UpdateAction', stub[:update_actions])) unless stub[:update_actions].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for UpdateActionList
    class UpdateActionList
      def self.default(visited=[])
        return nil if visited.include?('UpdateActionList')
        visited = visited + ['UpdateActionList']
        [
          Stubs::UpdateAction.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::UpdateAction.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for UpdateAction
    class UpdateAction
      def self.default(visited=[])
        return nil if visited.include?('UpdateAction')
        visited = visited + ['UpdateAction']
        {
          replication_group_id: 'replication_group_id',
          cache_cluster_id: 'cache_cluster_id',
          service_update_name: 'service_update_name',
          service_update_release_date: Time.now,
          service_update_severity: 'service_update_severity',
          service_update_status: 'service_update_status',
          service_update_recommended_apply_by_date: Time.now,
          service_update_type: 'service_update_type',
          update_action_available_date: Time.now,
          update_action_status: 'update_action_status',
          nodes_updated: 'nodes_updated',
          update_action_status_modified_date: Time.now,
          sla_met: 'sla_met',
          node_group_update_status: Stubs::NodeGroupUpdateStatusList.default(visited),
          cache_node_update_status: Stubs::CacheNodeUpdateStatusList.default(visited),
          estimated_update_time: 'estimated_update_time',
          engine: 'engine',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::UpdateAction.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ReplicationGroupId', stub[:replication_group_id].to_s) unless stub[:replication_group_id].nil?
        xml << Hearth::XML::Node.new('CacheClusterId', stub[:cache_cluster_id].to_s) unless stub[:cache_cluster_id].nil?
        xml << Hearth::XML::Node.new('ServiceUpdateName', stub[:service_update_name].to_s) unless stub[:service_update_name].nil?
        xml << Hearth::XML::Node.new('ServiceUpdateReleaseDate', Hearth::TimeHelper.to_date_time(stub[:service_update_release_date])) unless stub[:service_update_release_date].nil?
        xml << Hearth::XML::Node.new('ServiceUpdateSeverity', stub[:service_update_severity].to_s) unless stub[:service_update_severity].nil?
        xml << Hearth::XML::Node.new('ServiceUpdateStatus', stub[:service_update_status].to_s) unless stub[:service_update_status].nil?
        xml << Hearth::XML::Node.new('ServiceUpdateRecommendedApplyByDate', Hearth::TimeHelper.to_date_time(stub[:service_update_recommended_apply_by_date])) unless stub[:service_update_recommended_apply_by_date].nil?
        xml << Hearth::XML::Node.new('ServiceUpdateType', stub[:service_update_type].to_s) unless stub[:service_update_type].nil?
        xml << Hearth::XML::Node.new('UpdateActionAvailableDate', Hearth::TimeHelper.to_date_time(stub[:update_action_available_date])) unless stub[:update_action_available_date].nil?
        xml << Hearth::XML::Node.new('UpdateActionStatus', stub[:update_action_status].to_s) unless stub[:update_action_status].nil?
        xml << Hearth::XML::Node.new('NodesUpdated', stub[:nodes_updated].to_s) unless stub[:nodes_updated].nil?
        xml << Hearth::XML::Node.new('UpdateActionStatusModifiedDate', Hearth::TimeHelper.to_date_time(stub[:update_action_status_modified_date])) unless stub[:update_action_status_modified_date].nil?
        xml << Hearth::XML::Node.new('SlaMet', stub[:sla_met].to_s) unless stub[:sla_met].nil?
        xml << Hearth::XML::Node.new('NodeGroupUpdateStatus', Stubs::NodeGroupUpdateStatusList.stub('NodeGroupUpdateStatus', stub[:node_group_update_status])) unless stub[:node_group_update_status].nil?
        xml << Hearth::XML::Node.new('CacheNodeUpdateStatus', Stubs::CacheNodeUpdateStatusList.stub('CacheNodeUpdateStatus', stub[:cache_node_update_status])) unless stub[:cache_node_update_status].nil?
        xml << Hearth::XML::Node.new('EstimatedUpdateTime', stub[:estimated_update_time].to_s) unless stub[:estimated_update_time].nil?
        xml << Hearth::XML::Node.new('Engine', stub[:engine].to_s) unless stub[:engine].nil?
        xml
      end
    end

    # List Stubber for CacheNodeUpdateStatusList
    class CacheNodeUpdateStatusList
      def self.default(visited=[])
        return nil if visited.include?('CacheNodeUpdateStatusList')
        visited = visited + ['CacheNodeUpdateStatusList']
        [
          Stubs::CacheNodeUpdateStatus.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::CacheNodeUpdateStatus.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for CacheNodeUpdateStatus
    class CacheNodeUpdateStatus
      def self.default(visited=[])
        return nil if visited.include?('CacheNodeUpdateStatus')
        visited = visited + ['CacheNodeUpdateStatus']
        {
          cache_node_id: 'cache_node_id',
          node_update_status: 'node_update_status',
          node_deletion_date: Time.now,
          node_update_start_date: Time.now,
          node_update_end_date: Time.now,
          node_update_initiated_by: 'node_update_initiated_by',
          node_update_initiated_date: Time.now,
          node_update_status_modified_date: Time.now,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::CacheNodeUpdateStatus.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('CacheNodeId', stub[:cache_node_id].to_s) unless stub[:cache_node_id].nil?
        xml << Hearth::XML::Node.new('NodeUpdateStatus', stub[:node_update_status].to_s) unless stub[:node_update_status].nil?
        xml << Hearth::XML::Node.new('NodeDeletionDate', Hearth::TimeHelper.to_date_time(stub[:node_deletion_date])) unless stub[:node_deletion_date].nil?
        xml << Hearth::XML::Node.new('NodeUpdateStartDate', Hearth::TimeHelper.to_date_time(stub[:node_update_start_date])) unless stub[:node_update_start_date].nil?
        xml << Hearth::XML::Node.new('NodeUpdateEndDate', Hearth::TimeHelper.to_date_time(stub[:node_update_end_date])) unless stub[:node_update_end_date].nil?
        xml << Hearth::XML::Node.new('NodeUpdateInitiatedBy', stub[:node_update_initiated_by].to_s) unless stub[:node_update_initiated_by].nil?
        xml << Hearth::XML::Node.new('NodeUpdateInitiatedDate', Hearth::TimeHelper.to_date_time(stub[:node_update_initiated_date])) unless stub[:node_update_initiated_date].nil?
        xml << Hearth::XML::Node.new('NodeUpdateStatusModifiedDate', Hearth::TimeHelper.to_date_time(stub[:node_update_status_modified_date])) unless stub[:node_update_status_modified_date].nil?
        xml
      end
    end

    # List Stubber for NodeGroupUpdateStatusList
    class NodeGroupUpdateStatusList
      def self.default(visited=[])
        return nil if visited.include?('NodeGroupUpdateStatusList')
        visited = visited + ['NodeGroupUpdateStatusList']
        [
          Stubs::NodeGroupUpdateStatus.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::NodeGroupUpdateStatus.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for NodeGroupUpdateStatus
    class NodeGroupUpdateStatus
      def self.default(visited=[])
        return nil if visited.include?('NodeGroupUpdateStatus')
        visited = visited + ['NodeGroupUpdateStatus']
        {
          node_group_id: 'node_group_id',
          node_group_member_update_status: Stubs::NodeGroupMemberUpdateStatusList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::NodeGroupUpdateStatus.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('NodeGroupId', stub[:node_group_id].to_s) unless stub[:node_group_id].nil?
        xml << Hearth::XML::Node.new('NodeGroupMemberUpdateStatus', Stubs::NodeGroupMemberUpdateStatusList.stub('NodeGroupMemberUpdateStatus', stub[:node_group_member_update_status])) unless stub[:node_group_member_update_status].nil?
        xml
      end
    end

    # List Stubber for NodeGroupMemberUpdateStatusList
    class NodeGroupMemberUpdateStatusList
      def self.default(visited=[])
        return nil if visited.include?('NodeGroupMemberUpdateStatusList')
        visited = visited + ['NodeGroupMemberUpdateStatusList']
        [
          Stubs::NodeGroupMemberUpdateStatus.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::NodeGroupMemberUpdateStatus.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for NodeGroupMemberUpdateStatus
    class NodeGroupMemberUpdateStatus
      def self.default(visited=[])
        return nil if visited.include?('NodeGroupMemberUpdateStatus')
        visited = visited + ['NodeGroupMemberUpdateStatus']
        {
          cache_cluster_id: 'cache_cluster_id',
          cache_node_id: 'cache_node_id',
          node_update_status: 'node_update_status',
          node_deletion_date: Time.now,
          node_update_start_date: Time.now,
          node_update_end_date: Time.now,
          node_update_initiated_by: 'node_update_initiated_by',
          node_update_initiated_date: Time.now,
          node_update_status_modified_date: Time.now,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::NodeGroupMemberUpdateStatus.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('CacheClusterId', stub[:cache_cluster_id].to_s) unless stub[:cache_cluster_id].nil?
        xml << Hearth::XML::Node.new('CacheNodeId', stub[:cache_node_id].to_s) unless stub[:cache_node_id].nil?
        xml << Hearth::XML::Node.new('NodeUpdateStatus', stub[:node_update_status].to_s) unless stub[:node_update_status].nil?
        xml << Hearth::XML::Node.new('NodeDeletionDate', Hearth::TimeHelper.to_date_time(stub[:node_deletion_date])) unless stub[:node_deletion_date].nil?
        xml << Hearth::XML::Node.new('NodeUpdateStartDate', Hearth::TimeHelper.to_date_time(stub[:node_update_start_date])) unless stub[:node_update_start_date].nil?
        xml << Hearth::XML::Node.new('NodeUpdateEndDate', Hearth::TimeHelper.to_date_time(stub[:node_update_end_date])) unless stub[:node_update_end_date].nil?
        xml << Hearth::XML::Node.new('NodeUpdateInitiatedBy', stub[:node_update_initiated_by].to_s) unless stub[:node_update_initiated_by].nil?
        xml << Hearth::XML::Node.new('NodeUpdateInitiatedDate', Hearth::TimeHelper.to_date_time(stub[:node_update_initiated_date])) unless stub[:node_update_initiated_date].nil?
        xml << Hearth::XML::Node.new('NodeUpdateStatusModifiedDate', Hearth::TimeHelper.to_date_time(stub[:node_update_status_modified_date])) unless stub[:node_update_status_modified_date].nil?
        xml
      end
    end

    # Operation Stubber for DescribeUserGroups
    class DescribeUserGroups
      def self.default(visited=[])
        {
          user_groups: Stubs::UserGroupList.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeUserGroupsResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('DescribeUserGroupsResult')
        xml << Hearth::XML::Node.new('UserGroups', Stubs::UserGroupList.stub('member', stub[:user_groups])) unless stub[:user_groups].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for UserGroupList
    class UserGroupList
      def self.default(visited=[])
        return nil if visited.include?('UserGroupList')
        visited = visited + ['UserGroupList']
        [
          Stubs::UserGroup.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::UserGroup.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for UserGroup
    class UserGroup
      def self.default(visited=[])
        return nil if visited.include?('UserGroup')
        visited = visited + ['UserGroup']
        {
          user_group_id: 'user_group_id',
          status: 'status',
          engine: 'engine',
          user_ids: Stubs::UserIdList.default(visited),
          minimum_engine_version: 'minimum_engine_version',
          pending_changes: Stubs::UserGroupPendingChanges.default(visited),
          replication_groups: Stubs::UGReplicationGroupIdList.default(visited),
          arn: 'arn',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::UserGroup.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('UserGroupId', stub[:user_group_id].to_s) unless stub[:user_group_id].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('Engine', stub[:engine].to_s) unless stub[:engine].nil?
        xml << Hearth::XML::Node.new('UserIds', Stubs::UserIdList.stub('member', stub[:user_ids])) unless stub[:user_ids].nil?
        xml << Hearth::XML::Node.new('MinimumEngineVersion', stub[:minimum_engine_version].to_s) unless stub[:minimum_engine_version].nil?
        xml << Stubs::UserGroupPendingChanges.stub('PendingChanges', stub[:pending_changes]) unless stub[:pending_changes].nil?
        xml << Hearth::XML::Node.new('ReplicationGroups', Stubs::UGReplicationGroupIdList.stub('member', stub[:replication_groups])) unless stub[:replication_groups].nil?
        xml << Hearth::XML::Node.new('ARN', stub[:arn].to_s) unless stub[:arn].nil?
        xml
      end
    end

    # Operation Stubber for DescribeUsers
    class DescribeUsers
      def self.default(visited=[])
        {
          users: Stubs::UserList.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeUsersResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('DescribeUsersResult')
        xml << Hearth::XML::Node.new('Users', Stubs::UserList.stub('member', stub[:users])) unless stub[:users].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for UserList
    class UserList
      def self.default(visited=[])
        return nil if visited.include?('UserList')
        visited = visited + ['UserList']
        [
          Stubs::User.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::User.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for User
    class User
      def self.default(visited=[])
        return nil if visited.include?('User')
        visited = visited + ['User']
        {
          user_id: 'user_id',
          user_name: 'user_name',
          status: 'status',
          engine: 'engine',
          minimum_engine_version: 'minimum_engine_version',
          access_string: 'access_string',
          user_group_ids: Stubs::UserGroupIdList.default(visited),
          authentication: Stubs::Authentication.default(visited),
          arn: 'arn',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::User.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('UserId', stub[:user_id].to_s) unless stub[:user_id].nil?
        xml << Hearth::XML::Node.new('UserName', stub[:user_name].to_s) unless stub[:user_name].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('Engine', stub[:engine].to_s) unless stub[:engine].nil?
        xml << Hearth::XML::Node.new('MinimumEngineVersion', stub[:minimum_engine_version].to_s) unless stub[:minimum_engine_version].nil?
        xml << Hearth::XML::Node.new('AccessString', stub[:access_string].to_s) unless stub[:access_string].nil?
        xml << Hearth::XML::Node.new('UserGroupIds', Stubs::UserGroupIdList.stub('member', stub[:user_group_ids])) unless stub[:user_group_ids].nil?
        xml << Stubs::Authentication.stub('Authentication', stub[:authentication]) unless stub[:authentication].nil?
        xml << Hearth::XML::Node.new('ARN', stub[:arn].to_s) unless stub[:arn].nil?
        xml
      end
    end

    # Operation Stubber for DisassociateGlobalReplicationGroup
    class DisassociateGlobalReplicationGroup
      def self.default(visited=[])
        {
          global_replication_group: Stubs::GlobalReplicationGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DisassociateGlobalReplicationGroupResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('DisassociateGlobalReplicationGroupResult')
        xml << Stubs::GlobalReplicationGroup.stub('GlobalReplicationGroup', stub[:global_replication_group]) unless stub[:global_replication_group].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for FailoverGlobalReplicationGroup
    class FailoverGlobalReplicationGroup
      def self.default(visited=[])
        {
          global_replication_group: Stubs::GlobalReplicationGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('FailoverGlobalReplicationGroupResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('FailoverGlobalReplicationGroupResult')
        xml << Stubs::GlobalReplicationGroup.stub('GlobalReplicationGroup', stub[:global_replication_group]) unless stub[:global_replication_group].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for IncreaseNodeGroupsInGlobalReplicationGroup
    class IncreaseNodeGroupsInGlobalReplicationGroup
      def self.default(visited=[])
        {
          global_replication_group: Stubs::GlobalReplicationGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('IncreaseNodeGroupsInGlobalReplicationGroupResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('IncreaseNodeGroupsInGlobalReplicationGroupResult')
        xml << Stubs::GlobalReplicationGroup.stub('GlobalReplicationGroup', stub[:global_replication_group]) unless stub[:global_replication_group].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for IncreaseReplicaCount
    class IncreaseReplicaCount
      def self.default(visited=[])
        {
          replication_group: Stubs::ReplicationGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('IncreaseReplicaCountResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('IncreaseReplicaCountResult')
        xml << Stubs::ReplicationGroup.stub('ReplicationGroup', stub[:replication_group]) unless stub[:replication_group].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListAllowedNodeTypeModifications
    class ListAllowedNodeTypeModifications
      def self.default(visited=[])
        {
          scale_up_modifications: Stubs::NodeTypeList.default(visited),
          scale_down_modifications: Stubs::NodeTypeList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListAllowedNodeTypeModificationsResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('ListAllowedNodeTypeModificationsResult')
        xml << Hearth::XML::Node.new('ScaleUpModifications', Stubs::NodeTypeList.stub('member', stub[:scale_up_modifications])) unless stub[:scale_up_modifications].nil?
        xml << Hearth::XML::Node.new('ScaleDownModifications', Stubs::NodeTypeList.stub('member', stub[:scale_down_modifications])) unless stub[:scale_down_modifications].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for NodeTypeList
    class NodeTypeList
      def self.default(visited=[])
        return nil if visited.include?('NodeTypeList')
        visited = visited + ['NodeTypeList']
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
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('ListTagsForResourceResult')
        xml << Hearth::XML::Node.new('TagList', Stubs::TagList.stub('Tag', stub[:tag_list])) unless stub[:tag_list].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ModifyCacheCluster
    class ModifyCacheCluster
      def self.default(visited=[])
        {
          cache_cluster: Stubs::CacheCluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ModifyCacheClusterResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('ModifyCacheClusterResult')
        xml << Stubs::CacheCluster.stub('CacheCluster', stub[:cache_cluster]) unless stub[:cache_cluster].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ModifyCacheParameterGroup
    class ModifyCacheParameterGroup
      def self.default(visited=[])
        {
          cache_parameter_group_name: 'cache_parameter_group_name',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ModifyCacheParameterGroupResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('ModifyCacheParameterGroupResult')
        xml << Hearth::XML::Node.new('CacheParameterGroupName', stub[:cache_parameter_group_name].to_s) unless stub[:cache_parameter_group_name].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ModifyCacheSubnetGroup
    class ModifyCacheSubnetGroup
      def self.default(visited=[])
        {
          cache_subnet_group: Stubs::CacheSubnetGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ModifyCacheSubnetGroupResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('ModifyCacheSubnetGroupResult')
        xml << Stubs::CacheSubnetGroup.stub('CacheSubnetGroup', stub[:cache_subnet_group]) unless stub[:cache_subnet_group].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ModifyGlobalReplicationGroup
    class ModifyGlobalReplicationGroup
      def self.default(visited=[])
        {
          global_replication_group: Stubs::GlobalReplicationGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ModifyGlobalReplicationGroupResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('ModifyGlobalReplicationGroupResult')
        xml << Stubs::GlobalReplicationGroup.stub('GlobalReplicationGroup', stub[:global_replication_group]) unless stub[:global_replication_group].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ModifyReplicationGroup
    class ModifyReplicationGroup
      def self.default(visited=[])
        {
          replication_group: Stubs::ReplicationGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ModifyReplicationGroupResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('ModifyReplicationGroupResult')
        xml << Stubs::ReplicationGroup.stub('ReplicationGroup', stub[:replication_group]) unless stub[:replication_group].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ModifyReplicationGroupShardConfiguration
    class ModifyReplicationGroupShardConfiguration
      def self.default(visited=[])
        {
          replication_group: Stubs::ReplicationGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ModifyReplicationGroupShardConfigurationResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('ModifyReplicationGroupShardConfigurationResult')
        xml << Stubs::ReplicationGroup.stub('ReplicationGroup', stub[:replication_group]) unless stub[:replication_group].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ModifyUser
    class ModifyUser
      def self.default(visited=[])
        {
          user_id: 'user_id',
          user_name: 'user_name',
          status: 'status',
          engine: 'engine',
          minimum_engine_version: 'minimum_engine_version',
          access_string: 'access_string',
          user_group_ids: Stubs::UserGroupIdList.default(visited),
          authentication: Stubs::Authentication.default(visited),
          arn: 'arn',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ModifyUserResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('ModifyUserResult')
        xml << Hearth::XML::Node.new('UserId', stub[:user_id].to_s) unless stub[:user_id].nil?
        xml << Hearth::XML::Node.new('UserName', stub[:user_name].to_s) unless stub[:user_name].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('Engine', stub[:engine].to_s) unless stub[:engine].nil?
        xml << Hearth::XML::Node.new('MinimumEngineVersion', stub[:minimum_engine_version].to_s) unless stub[:minimum_engine_version].nil?
        xml << Hearth::XML::Node.new('AccessString', stub[:access_string].to_s) unless stub[:access_string].nil?
        xml << Hearth::XML::Node.new('UserGroupIds', Stubs::UserGroupIdList.stub('member', stub[:user_group_ids])) unless stub[:user_group_ids].nil?
        xml << Stubs::Authentication.stub('Authentication', stub[:authentication]) unless stub[:authentication].nil?
        xml << Hearth::XML::Node.new('ARN', stub[:arn].to_s) unless stub[:arn].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ModifyUserGroup
    class ModifyUserGroup
      def self.default(visited=[])
        {
          user_group_id: 'user_group_id',
          status: 'status',
          engine: 'engine',
          user_ids: Stubs::UserIdList.default(visited),
          minimum_engine_version: 'minimum_engine_version',
          pending_changes: Stubs::UserGroupPendingChanges.default(visited),
          replication_groups: Stubs::UGReplicationGroupIdList.default(visited),
          arn: 'arn',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ModifyUserGroupResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('ModifyUserGroupResult')
        xml << Hearth::XML::Node.new('UserGroupId', stub[:user_group_id].to_s) unless stub[:user_group_id].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('Engine', stub[:engine].to_s) unless stub[:engine].nil?
        xml << Hearth::XML::Node.new('UserIds', Stubs::UserIdList.stub('member', stub[:user_ids])) unless stub[:user_ids].nil?
        xml << Hearth::XML::Node.new('MinimumEngineVersion', stub[:minimum_engine_version].to_s) unless stub[:minimum_engine_version].nil?
        xml << Stubs::UserGroupPendingChanges.stub('PendingChanges', stub[:pending_changes]) unless stub[:pending_changes].nil?
        xml << Hearth::XML::Node.new('ReplicationGroups', Stubs::UGReplicationGroupIdList.stub('member', stub[:replication_groups])) unless stub[:replication_groups].nil?
        xml << Hearth::XML::Node.new('ARN', stub[:arn].to_s) unless stub[:arn].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for PurchaseReservedCacheNodesOffering
    class PurchaseReservedCacheNodesOffering
      def self.default(visited=[])
        {
          reserved_cache_node: Stubs::ReservedCacheNode.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('PurchaseReservedCacheNodesOfferingResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('PurchaseReservedCacheNodesOfferingResult')
        xml << Stubs::ReservedCacheNode.stub('ReservedCacheNode', stub[:reserved_cache_node]) unless stub[:reserved_cache_node].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for RebalanceSlotsInGlobalReplicationGroup
    class RebalanceSlotsInGlobalReplicationGroup
      def self.default(visited=[])
        {
          global_replication_group: Stubs::GlobalReplicationGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('RebalanceSlotsInGlobalReplicationGroupResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('RebalanceSlotsInGlobalReplicationGroupResult')
        xml << Stubs::GlobalReplicationGroup.stub('GlobalReplicationGroup', stub[:global_replication_group]) unless stub[:global_replication_group].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for RebootCacheCluster
    class RebootCacheCluster
      def self.default(visited=[])
        {
          cache_cluster: Stubs::CacheCluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('RebootCacheClusterResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('RebootCacheClusterResult')
        xml << Stubs::CacheCluster.stub('CacheCluster', stub[:cache_cluster]) unless stub[:cache_cluster].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for RemoveTagsFromResource
    class RemoveTagsFromResource
      def self.default(visited=[])
        {
          tag_list: Stubs::TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('RemoveTagsFromResourceResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('RemoveTagsFromResourceResult')
        xml << Hearth::XML::Node.new('TagList', Stubs::TagList.stub('Tag', stub[:tag_list])) unless stub[:tag_list].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ResetCacheParameterGroup
    class ResetCacheParameterGroup
      def self.default(visited=[])
        {
          cache_parameter_group_name: 'cache_parameter_group_name',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ResetCacheParameterGroupResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('ResetCacheParameterGroupResult')
        xml << Hearth::XML::Node.new('CacheParameterGroupName', stub[:cache_parameter_group_name].to_s) unless stub[:cache_parameter_group_name].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for RevokeCacheSecurityGroupIngress
    class RevokeCacheSecurityGroupIngress
      def self.default(visited=[])
        {
          cache_security_group: Stubs::CacheSecurityGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('RevokeCacheSecurityGroupIngressResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('RevokeCacheSecurityGroupIngressResult')
        xml << Stubs::CacheSecurityGroup.stub('CacheSecurityGroup', stub[:cache_security_group]) unless stub[:cache_security_group].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartMigration
    class StartMigration
      def self.default(visited=[])
        {
          replication_group: Stubs::ReplicationGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('StartMigrationResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('StartMigrationResult')
        xml << Stubs::ReplicationGroup.stub('ReplicationGroup', stub[:replication_group]) unless stub[:replication_group].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for TestFailover
    class TestFailover
      def self.default(visited=[])
        {
          replication_group: Stubs::ReplicationGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('TestFailoverResponse')
        response.attributes['xmlns'] = 'http://elasticache.amazonaws.com/doc/2015-02-02/'
        xml = Hearth::XML::Node.new('TestFailoverResult')
        xml << Stubs::ReplicationGroup.stub('ReplicationGroup', stub[:replication_group]) unless stub[:replication_group].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end
  end
end
