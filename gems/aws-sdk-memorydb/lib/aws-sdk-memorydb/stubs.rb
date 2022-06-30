# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MemoryDB
  module Stubs

    # Operation Stubber for BatchUpdateCluster
    class BatchUpdateCluster
      def self.default(visited=[])
        {
          processed_clusters: Stubs::ClusterList.default(visited),
          unprocessed_clusters: Stubs::UnprocessedClusterList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ProcessedClusters'] = Stubs::ClusterList.stub(stub[:processed_clusters]) unless stub[:processed_clusters].nil?
        data['UnprocessedClusters'] = Stubs::UnprocessedClusterList.stub(stub[:unprocessed_clusters]) unless stub[:unprocessed_clusters].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for UnprocessedClusterList
    class UnprocessedClusterList
      def self.default(visited=[])
        return nil if visited.include?('UnprocessedClusterList')
        visited = visited + ['UnprocessedClusterList']
        [
          Stubs::UnprocessedCluster.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::UnprocessedCluster.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UnprocessedCluster
    class UnprocessedCluster
      def self.default(visited=[])
        return nil if visited.include?('UnprocessedCluster')
        visited = visited + ['UnprocessedCluster']
        {
          cluster_name: 'cluster_name',
          error_type: 'error_type',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::UnprocessedCluster.new
        data = {}
        data['ClusterName'] = stub[:cluster_name] unless stub[:cluster_name].nil?
        data['ErrorType'] = stub[:error_type] unless stub[:error_type].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # List Stubber for ClusterList
    class ClusterList
      def self.default(visited=[])
        return nil if visited.include?('ClusterList')
        visited = visited + ['ClusterList']
        [
          Stubs::Cluster.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Cluster.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Cluster
    class Cluster
      def self.default(visited=[])
        return nil if visited.include?('Cluster')
        visited = visited + ['Cluster']
        {
          name: 'name',
          description: 'description',
          status: 'status',
          pending_updates: Stubs::ClusterPendingUpdates.default(visited),
          number_of_shards: 1,
          shards: Stubs::ShardList.default(visited),
          availability_mode: 'availability_mode',
          cluster_endpoint: Stubs::Endpoint.default(visited),
          node_type: 'node_type',
          engine_version: 'engine_version',
          engine_patch_version: 'engine_patch_version',
          parameter_group_name: 'parameter_group_name',
          parameter_group_status: 'parameter_group_status',
          security_groups: Stubs::SecurityGroupMembershipList.default(visited),
          subnet_group_name: 'subnet_group_name',
          tls_enabled: false,
          kms_key_id: 'kms_key_id',
          arn: 'arn',
          sns_topic_arn: 'sns_topic_arn',
          sns_topic_status: 'sns_topic_status',
          snapshot_retention_limit: 1,
          maintenance_window: 'maintenance_window',
          snapshot_window: 'snapshot_window',
          acl_name: 'acl_name',
          auto_minor_version_upgrade: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::Cluster.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['PendingUpdates'] = Stubs::ClusterPendingUpdates.stub(stub[:pending_updates]) unless stub[:pending_updates].nil?
        data['NumberOfShards'] = stub[:number_of_shards] unless stub[:number_of_shards].nil?
        data['Shards'] = Stubs::ShardList.stub(stub[:shards]) unless stub[:shards].nil?
        data['AvailabilityMode'] = stub[:availability_mode] unless stub[:availability_mode].nil?
        data['ClusterEndpoint'] = Stubs::Endpoint.stub(stub[:cluster_endpoint]) unless stub[:cluster_endpoint].nil?
        data['NodeType'] = stub[:node_type] unless stub[:node_type].nil?
        data['EngineVersion'] = stub[:engine_version] unless stub[:engine_version].nil?
        data['EnginePatchVersion'] = stub[:engine_patch_version] unless stub[:engine_patch_version].nil?
        data['ParameterGroupName'] = stub[:parameter_group_name] unless stub[:parameter_group_name].nil?
        data['ParameterGroupStatus'] = stub[:parameter_group_status] unless stub[:parameter_group_status].nil?
        data['SecurityGroups'] = Stubs::SecurityGroupMembershipList.stub(stub[:security_groups]) unless stub[:security_groups].nil?
        data['SubnetGroupName'] = stub[:subnet_group_name] unless stub[:subnet_group_name].nil?
        data['TLSEnabled'] = stub[:tls_enabled] unless stub[:tls_enabled].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data['ARN'] = stub[:arn] unless stub[:arn].nil?
        data['SnsTopicArn'] = stub[:sns_topic_arn] unless stub[:sns_topic_arn].nil?
        data['SnsTopicStatus'] = stub[:sns_topic_status] unless stub[:sns_topic_status].nil?
        data['SnapshotRetentionLimit'] = stub[:snapshot_retention_limit] unless stub[:snapshot_retention_limit].nil?
        data['MaintenanceWindow'] = stub[:maintenance_window] unless stub[:maintenance_window].nil?
        data['SnapshotWindow'] = stub[:snapshot_window] unless stub[:snapshot_window].nil?
        data['ACLName'] = stub[:acl_name] unless stub[:acl_name].nil?
        data['AutoMinorVersionUpgrade'] = stub[:auto_minor_version_upgrade] unless stub[:auto_minor_version_upgrade].nil?
        data
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

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SecurityGroupMembership.stub(element) unless element.nil?
        end
        data
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

      def self.stub(stub)
        stub ||= Types::SecurityGroupMembership.new
        data = {}
        data['SecurityGroupId'] = stub[:security_group_id] unless stub[:security_group_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
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

      def self.stub(stub)
        stub ||= Types::Endpoint.new
        data = {}
        data['Address'] = stub[:address] unless stub[:address].nil?
        data['Port'] = stub[:port] unless stub[:port].nil?
        data
      end
    end

    # List Stubber for ShardList
    class ShardList
      def self.default(visited=[])
        return nil if visited.include?('ShardList')
        visited = visited + ['ShardList']
        [
          Stubs::Shard.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Shard.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Shard
    class Shard
      def self.default(visited=[])
        return nil if visited.include?('Shard')
        visited = visited + ['Shard']
        {
          name: 'name',
          status: 'status',
          slots: 'slots',
          nodes: Stubs::NodeList.default(visited),
          number_of_nodes: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Shard.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Slots'] = stub[:slots] unless stub[:slots].nil?
        data['Nodes'] = Stubs::NodeList.stub(stub[:nodes]) unless stub[:nodes].nil?
        data['NumberOfNodes'] = stub[:number_of_nodes] unless stub[:number_of_nodes].nil?
        data
      end
    end

    # List Stubber for NodeList
    class NodeList
      def self.default(visited=[])
        return nil if visited.include?('NodeList')
        visited = visited + ['NodeList']
        [
          Stubs::Node.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Node.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Node
    class Node
      def self.default(visited=[])
        return nil if visited.include?('Node')
        visited = visited + ['Node']
        {
          name: 'name',
          status: 'status',
          availability_zone: 'availability_zone',
          create_time: Time.now,
          endpoint: Stubs::Endpoint.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Node.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['AvailabilityZone'] = stub[:availability_zone] unless stub[:availability_zone].nil?
        data['CreateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:create_time]).to_i unless stub[:create_time].nil?
        data['Endpoint'] = Stubs::Endpoint.stub(stub[:endpoint]) unless stub[:endpoint].nil?
        data
      end
    end

    # Structure Stubber for ClusterPendingUpdates
    class ClusterPendingUpdates
      def self.default(visited=[])
        return nil if visited.include?('ClusterPendingUpdates')
        visited = visited + ['ClusterPendingUpdates']
        {
          resharding: Stubs::ReshardingStatus.default(visited),
          ac_ls: Stubs::ACLsUpdateStatus.default(visited),
          service_updates: Stubs::PendingModifiedServiceUpdateList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ClusterPendingUpdates.new
        data = {}
        data['Resharding'] = Stubs::ReshardingStatus.stub(stub[:resharding]) unless stub[:resharding].nil?
        data['ACLs'] = Stubs::ACLsUpdateStatus.stub(stub[:ac_ls]) unless stub[:ac_ls].nil?
        data['ServiceUpdates'] = Stubs::PendingModifiedServiceUpdateList.stub(stub[:service_updates]) unless stub[:service_updates].nil?
        data
      end
    end

    # List Stubber for PendingModifiedServiceUpdateList
    class PendingModifiedServiceUpdateList
      def self.default(visited=[])
        return nil if visited.include?('PendingModifiedServiceUpdateList')
        visited = visited + ['PendingModifiedServiceUpdateList']
        [
          Stubs::PendingModifiedServiceUpdate.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PendingModifiedServiceUpdate.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PendingModifiedServiceUpdate
    class PendingModifiedServiceUpdate
      def self.default(visited=[])
        return nil if visited.include?('PendingModifiedServiceUpdate')
        visited = visited + ['PendingModifiedServiceUpdate']
        {
          service_update_name: 'service_update_name',
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::PendingModifiedServiceUpdate.new
        data = {}
        data['ServiceUpdateName'] = stub[:service_update_name] unless stub[:service_update_name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for ACLsUpdateStatus
    class ACLsUpdateStatus
      def self.default(visited=[])
        return nil if visited.include?('ACLsUpdateStatus')
        visited = visited + ['ACLsUpdateStatus']
        {
          acl_to_apply: 'acl_to_apply',
        }
      end

      def self.stub(stub)
        stub ||= Types::ACLsUpdateStatus.new
        data = {}
        data['ACLToApply'] = stub[:acl_to_apply] unless stub[:acl_to_apply].nil?
        data
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

      def self.stub(stub)
        stub ||= Types::ReshardingStatus.new
        data = {}
        data['SlotMigration'] = Stubs::SlotMigration.stub(stub[:slot_migration]) unless stub[:slot_migration].nil?
        data
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

      def self.stub(stub)
        stub ||= Types::SlotMigration.new
        data = {}
        data['ProgressPercentage'] = Hearth::NumberHelper.serialize(stub[:progress_percentage])
        data
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
        data = {}
        data['Snapshot'] = Stubs::Snapshot.stub(stub[:snapshot]) unless stub[:snapshot].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Snapshot
    class Snapshot
      def self.default(visited=[])
        return nil if visited.include?('Snapshot')
        visited = visited + ['Snapshot']
        {
          name: 'name',
          status: 'status',
          source: 'source',
          kms_key_id: 'kms_key_id',
          arn: 'arn',
          cluster_configuration: Stubs::ClusterConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Snapshot.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Source'] = stub[:source] unless stub[:source].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data['ARN'] = stub[:arn] unless stub[:arn].nil?
        data['ClusterConfiguration'] = Stubs::ClusterConfiguration.stub(stub[:cluster_configuration]) unless stub[:cluster_configuration].nil?
        data
      end
    end

    # Structure Stubber for ClusterConfiguration
    class ClusterConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ClusterConfiguration')
        visited = visited + ['ClusterConfiguration']
        {
          name: 'name',
          description: 'description',
          node_type: 'node_type',
          engine_version: 'engine_version',
          maintenance_window: 'maintenance_window',
          topic_arn: 'topic_arn',
          port: 1,
          parameter_group_name: 'parameter_group_name',
          subnet_group_name: 'subnet_group_name',
          vpc_id: 'vpc_id',
          snapshot_retention_limit: 1,
          snapshot_window: 'snapshot_window',
          num_shards: 1,
          shards: Stubs::ShardDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ClusterConfiguration.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['NodeType'] = stub[:node_type] unless stub[:node_type].nil?
        data['EngineVersion'] = stub[:engine_version] unless stub[:engine_version].nil?
        data['MaintenanceWindow'] = stub[:maintenance_window] unless stub[:maintenance_window].nil?
        data['TopicArn'] = stub[:topic_arn] unless stub[:topic_arn].nil?
        data['Port'] = stub[:port] unless stub[:port].nil?
        data['ParameterGroupName'] = stub[:parameter_group_name] unless stub[:parameter_group_name].nil?
        data['SubnetGroupName'] = stub[:subnet_group_name] unless stub[:subnet_group_name].nil?
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['SnapshotRetentionLimit'] = stub[:snapshot_retention_limit] unless stub[:snapshot_retention_limit].nil?
        data['SnapshotWindow'] = stub[:snapshot_window] unless stub[:snapshot_window].nil?
        data['NumShards'] = stub[:num_shards] unless stub[:num_shards].nil?
        data['Shards'] = Stubs::ShardDetails.stub(stub[:shards]) unless stub[:shards].nil?
        data
      end
    end

    # List Stubber for ShardDetails
    class ShardDetails
      def self.default(visited=[])
        return nil if visited.include?('ShardDetails')
        visited = visited + ['ShardDetails']
        [
          Stubs::ShardDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ShardDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ShardDetail
    class ShardDetail
      def self.default(visited=[])
        return nil if visited.include?('ShardDetail')
        visited = visited + ['ShardDetail']
        {
          name: 'name',
          configuration: Stubs::ShardConfiguration.default(visited),
          size: 'size',
          snapshot_creation_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ShardDetail.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Configuration'] = Stubs::ShardConfiguration.stub(stub[:configuration]) unless stub[:configuration].nil?
        data['Size'] = stub[:size] unless stub[:size].nil?
        data['SnapshotCreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:snapshot_creation_time]).to_i unless stub[:snapshot_creation_time].nil?
        data
      end
    end

    # Structure Stubber for ShardConfiguration
    class ShardConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ShardConfiguration')
        visited = visited + ['ShardConfiguration']
        {
          slots: 'slots',
          replica_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ShardConfiguration.new
        data = {}
        data['Slots'] = stub[:slots] unless stub[:slots].nil?
        data['ReplicaCount'] = stub[:replica_count] unless stub[:replica_count].nil?
        data
      end
    end

    # Operation Stubber for CreateACL
    class CreateACL
      def self.default(visited=[])
        {
          acl: Stubs::ACL.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ACL'] = Stubs::ACL.stub(stub[:acl]) unless stub[:acl].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ACL
    class ACL
      def self.default(visited=[])
        return nil if visited.include?('ACL')
        visited = visited + ['ACL']
        {
          name: 'name',
          status: 'status',
          user_names: Stubs::UserNameList.default(visited),
          minimum_engine_version: 'minimum_engine_version',
          pending_changes: Stubs::ACLPendingChanges.default(visited),
          clusters: Stubs::ACLClusterNameList.default(visited),
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::ACL.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['UserNames'] = Stubs::UserNameList.stub(stub[:user_names]) unless stub[:user_names].nil?
        data['MinimumEngineVersion'] = stub[:minimum_engine_version] unless stub[:minimum_engine_version].nil?
        data['PendingChanges'] = Stubs::ACLPendingChanges.stub(stub[:pending_changes]) unless stub[:pending_changes].nil?
        data['Clusters'] = Stubs::ACLClusterNameList.stub(stub[:clusters]) unless stub[:clusters].nil?
        data['ARN'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # List Stubber for ACLClusterNameList
    class ACLClusterNameList
      def self.default(visited=[])
        return nil if visited.include?('ACLClusterNameList')
        visited = visited + ['ACLClusterNameList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ACLPendingChanges
    class ACLPendingChanges
      def self.default(visited=[])
        return nil if visited.include?('ACLPendingChanges')
        visited = visited + ['ACLPendingChanges']
        {
          user_names_to_remove: Stubs::UserNameList.default(visited),
          user_names_to_add: Stubs::UserNameList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ACLPendingChanges.new
        data = {}
        data['UserNamesToRemove'] = Stubs::UserNameList.stub(stub[:user_names_to_remove]) unless stub[:user_names_to_remove].nil?
        data['UserNamesToAdd'] = Stubs::UserNameList.stub(stub[:user_names_to_add]) unless stub[:user_names_to_add].nil?
        data
      end
    end

    # List Stubber for UserNameList
    class UserNameList
      def self.default(visited=[])
        return nil if visited.include?('UserNameList')
        visited = visited + ['UserNameList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for CreateCluster
    class CreateCluster
      def self.default(visited=[])
        {
          cluster: Stubs::Cluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Cluster'] = Stubs::Cluster.stub(stub[:cluster]) unless stub[:cluster].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateParameterGroup
    class CreateParameterGroup
      def self.default(visited=[])
        {
          parameter_group: Stubs::ParameterGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ParameterGroup'] = Stubs::ParameterGroup.stub(stub[:parameter_group]) unless stub[:parameter_group].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ParameterGroup
    class ParameterGroup
      def self.default(visited=[])
        return nil if visited.include?('ParameterGroup')
        visited = visited + ['ParameterGroup']
        {
          name: 'name',
          family: 'family',
          description: 'description',
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::ParameterGroup.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Family'] = stub[:family] unless stub[:family].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['ARN'] = stub[:arn] unless stub[:arn].nil?
        data
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
        data = {}
        data['Snapshot'] = Stubs::Snapshot.stub(stub[:snapshot]) unless stub[:snapshot].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateSubnetGroup
    class CreateSubnetGroup
      def self.default(visited=[])
        {
          subnet_group: Stubs::SubnetGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SubnetGroup'] = Stubs::SubnetGroup.stub(stub[:subnet_group]) unless stub[:subnet_group].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for SubnetGroup
    class SubnetGroup
      def self.default(visited=[])
        return nil if visited.include?('SubnetGroup')
        visited = visited + ['SubnetGroup']
        {
          name: 'name',
          description: 'description',
          vpc_id: 'vpc_id',
          subnets: Stubs::SubnetList.default(visited),
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::SubnetGroup.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['Subnets'] = Stubs::SubnetList.stub(stub[:subnets]) unless stub[:subnets].nil?
        data['ARN'] = stub[:arn] unless stub[:arn].nil?
        data
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

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Subnet.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Subnet
    class Subnet
      def self.default(visited=[])
        return nil if visited.include?('Subnet')
        visited = visited + ['Subnet']
        {
          identifier: 'identifier',
          availability_zone: Stubs::AvailabilityZone.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Subnet.new
        data = {}
        data['Identifier'] = stub[:identifier] unless stub[:identifier].nil?
        data['AvailabilityZone'] = Stubs::AvailabilityZone.stub(stub[:availability_zone]) unless stub[:availability_zone].nil?
        data
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

      def self.stub(stub)
        stub ||= Types::AvailabilityZone.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Operation Stubber for CreateUser
    class CreateUser
      def self.default(visited=[])
        {
          user: Stubs::User.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['User'] = Stubs::User.stub(stub[:user]) unless stub[:user].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for User
    class User
      def self.default(visited=[])
        return nil if visited.include?('User')
        visited = visited + ['User']
        {
          name: 'name',
          status: 'status',
          access_string: 'access_string',
          acl_names: Stubs::ACLNameList.default(visited),
          minimum_engine_version: 'minimum_engine_version',
          authentication: Stubs::Authentication.default(visited),
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::User.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['AccessString'] = stub[:access_string] unless stub[:access_string].nil?
        data['ACLNames'] = Stubs::ACLNameList.stub(stub[:acl_names]) unless stub[:acl_names].nil?
        data['MinimumEngineVersion'] = stub[:minimum_engine_version] unless stub[:minimum_engine_version].nil?
        data['Authentication'] = Stubs::Authentication.stub(stub[:authentication]) unless stub[:authentication].nil?
        data['ARN'] = stub[:arn] unless stub[:arn].nil?
        data
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

      def self.stub(stub)
        stub ||= Types::Authentication.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['PasswordCount'] = stub[:password_count] unless stub[:password_count].nil?
        data
      end
    end

    # List Stubber for ACLNameList
    class ACLNameList
      def self.default(visited=[])
        return nil if visited.include?('ACLNameList')
        visited = visited + ['ACLNameList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DeleteACL
    class DeleteACL
      def self.default(visited=[])
        {
          acl: Stubs::ACL.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ACL'] = Stubs::ACL.stub(stub[:acl]) unless stub[:acl].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteCluster
    class DeleteCluster
      def self.default(visited=[])
        {
          cluster: Stubs::Cluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Cluster'] = Stubs::Cluster.stub(stub[:cluster]) unless stub[:cluster].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteParameterGroup
    class DeleteParameterGroup
      def self.default(visited=[])
        {
          parameter_group: Stubs::ParameterGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ParameterGroup'] = Stubs::ParameterGroup.stub(stub[:parameter_group]) unless stub[:parameter_group].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        data = {}
        data['Snapshot'] = Stubs::Snapshot.stub(stub[:snapshot]) unless stub[:snapshot].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteSubnetGroup
    class DeleteSubnetGroup
      def self.default(visited=[])
        {
          subnet_group: Stubs::SubnetGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SubnetGroup'] = Stubs::SubnetGroup.stub(stub[:subnet_group]) unless stub[:subnet_group].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteUser
    class DeleteUser
      def self.default(visited=[])
        {
          user: Stubs::User.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['User'] = Stubs::User.stub(stub[:user]) unless stub[:user].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeACLs
    class DescribeACLs
      def self.default(visited=[])
        {
          ac_ls: Stubs::ACLList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ACLs'] = Stubs::ACLList.stub(stub[:ac_ls]) unless stub[:ac_ls].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ACLList
    class ACLList
      def self.default(visited=[])
        return nil if visited.include?('ACLList')
        visited = visited + ['ACLList']
        [
          Stubs::ACL.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ACL.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeClusters
    class DescribeClusters
      def self.default(visited=[])
        {
          next_token: 'next_token',
          clusters: Stubs::ClusterList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Clusters'] = Stubs::ClusterList.stub(stub[:clusters]) unless stub[:clusters].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeEngineVersions
    class DescribeEngineVersions
      def self.default(visited=[])
        {
          next_token: 'next_token',
          engine_versions: Stubs::EngineVersionInfoList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['EngineVersions'] = Stubs::EngineVersionInfoList.stub(stub[:engine_versions]) unless stub[:engine_versions].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for EngineVersionInfoList
    class EngineVersionInfoList
      def self.default(visited=[])
        return nil if visited.include?('EngineVersionInfoList')
        visited = visited + ['EngineVersionInfoList']
        [
          Stubs::EngineVersionInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::EngineVersionInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EngineVersionInfo
    class EngineVersionInfo
      def self.default(visited=[])
        return nil if visited.include?('EngineVersionInfo')
        visited = visited + ['EngineVersionInfo']
        {
          engine_version: 'engine_version',
          engine_patch_version: 'engine_patch_version',
          parameter_group_family: 'parameter_group_family',
        }
      end

      def self.stub(stub)
        stub ||= Types::EngineVersionInfo.new
        data = {}
        data['EngineVersion'] = stub[:engine_version] unless stub[:engine_version].nil?
        data['EnginePatchVersion'] = stub[:engine_patch_version] unless stub[:engine_patch_version].nil?
        data['ParameterGroupFamily'] = stub[:parameter_group_family] unless stub[:parameter_group_family].nil?
        data
      end
    end

    # Operation Stubber for DescribeEvents
    class DescribeEvents
      def self.default(visited=[])
        {
          next_token: 'next_token',
          events: Stubs::EventList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Events'] = Stubs::EventList.stub(stub[:events]) unless stub[:events].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Event.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Event
    class Event
      def self.default(visited=[])
        return nil if visited.include?('Event')
        visited = visited + ['Event']
        {
          source_name: 'source_name',
          source_type: 'source_type',
          message: 'message',
          date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Event.new
        data = {}
        data['SourceName'] = stub[:source_name] unless stub[:source_name].nil?
        data['SourceType'] = stub[:source_type] unless stub[:source_type].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['Date'] = Hearth::TimeHelper.to_epoch_seconds(stub[:date]).to_i unless stub[:date].nil?
        data
      end
    end

    # Operation Stubber for DescribeParameterGroups
    class DescribeParameterGroups
      def self.default(visited=[])
        {
          next_token: 'next_token',
          parameter_groups: Stubs::ParameterGroupList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['ParameterGroups'] = Stubs::ParameterGroupList.stub(stub[:parameter_groups]) unless stub[:parameter_groups].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ParameterGroupList
    class ParameterGroupList
      def self.default(visited=[])
        return nil if visited.include?('ParameterGroupList')
        visited = visited + ['ParameterGroupList']
        [
          Stubs::ParameterGroup.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ParameterGroup.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeParameters
    class DescribeParameters
      def self.default(visited=[])
        {
          next_token: 'next_token',
          parameters: Stubs::ParametersList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Parameters'] = Stubs::ParametersList.stub(stub[:parameters]) unless stub[:parameters].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Parameter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Parameter
    class Parameter
      def self.default(visited=[])
        return nil if visited.include?('Parameter')
        visited = visited + ['Parameter']
        {
          name: 'name',
          value: 'value',
          description: 'description',
          data_type: 'data_type',
          allowed_values: 'allowed_values',
          minimum_engine_version: 'minimum_engine_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::Parameter.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['DataType'] = stub[:data_type] unless stub[:data_type].nil?
        data['AllowedValues'] = stub[:allowed_values] unless stub[:allowed_values].nil?
        data['MinimumEngineVersion'] = stub[:minimum_engine_version] unless stub[:minimum_engine_version].nil?
        data
      end
    end

    # Operation Stubber for DescribeServiceUpdates
    class DescribeServiceUpdates
      def self.default(visited=[])
        {
          next_token: 'next_token',
          service_updates: Stubs::ServiceUpdateList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['ServiceUpdates'] = Stubs::ServiceUpdateList.stub(stub[:service_updates]) unless stub[:service_updates].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ServiceUpdate.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ServiceUpdate
    class ServiceUpdate
      def self.default(visited=[])
        return nil if visited.include?('ServiceUpdate')
        visited = visited + ['ServiceUpdate']
        {
          cluster_name: 'cluster_name',
          service_update_name: 'service_update_name',
          release_date: Time.now,
          description: 'description',
          status: 'status',
          type: 'type',
          nodes_updated: 'nodes_updated',
          auto_update_start_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ServiceUpdate.new
        data = {}
        data['ClusterName'] = stub[:cluster_name] unless stub[:cluster_name].nil?
        data['ServiceUpdateName'] = stub[:service_update_name] unless stub[:service_update_name].nil?
        data['ReleaseDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:release_date]).to_i unless stub[:release_date].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['NodesUpdated'] = stub[:nodes_updated] unless stub[:nodes_updated].nil?
        data['AutoUpdateStartDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:auto_update_start_date]).to_i unless stub[:auto_update_start_date].nil?
        data
      end
    end

    # Operation Stubber for DescribeSnapshots
    class DescribeSnapshots
      def self.default(visited=[])
        {
          next_token: 'next_token',
          snapshots: Stubs::SnapshotList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Snapshots'] = Stubs::SnapshotList.stub(stub[:snapshots]) unless stub[:snapshots].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Snapshot.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeSubnetGroups
    class DescribeSubnetGroups
      def self.default(visited=[])
        {
          next_token: 'next_token',
          subnet_groups: Stubs::SubnetGroupList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['SubnetGroups'] = Stubs::SubnetGroupList.stub(stub[:subnet_groups]) unless stub[:subnet_groups].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SubnetGroupList
    class SubnetGroupList
      def self.default(visited=[])
        return nil if visited.include?('SubnetGroupList')
        visited = visited + ['SubnetGroupList']
        [
          Stubs::SubnetGroup.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SubnetGroup.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeUsers
    class DescribeUsers
      def self.default(visited=[])
        {
          users: Stubs::UserList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Users'] = Stubs::UserList.stub(stub[:users]) unless stub[:users].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::User.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for FailoverShard
    class FailoverShard
      def self.default(visited=[])
        {
          cluster: Stubs::Cluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Cluster'] = Stubs::Cluster.stub(stub[:cluster]) unless stub[:cluster].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListAllowedNodeTypeUpdates
    class ListAllowedNodeTypeUpdates
      def self.default(visited=[])
        {
          scale_up_node_types: Stubs::NodeTypeList.default(visited),
          scale_down_node_types: Stubs::NodeTypeList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ScaleUpNodeTypes'] = Stubs::NodeTypeList.stub(stub[:scale_up_node_types]) unless stub[:scale_up_node_types].nil?
        data['ScaleDownNodeTypes'] = Stubs::NodeTypeList.stub(stub[:scale_down_node_types]) unless stub[:scale_down_node_types].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListTags
    class ListTags
      def self.default(visited=[])
        {
          tag_list: Stubs::TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TagList'] = Stubs::TagList.stub(stub[:tag_list]) unless stub[:tag_list].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Tag.stub(element) unless element.nil?
        end
        data
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

      def self.stub(stub)
        stub ||= Types::Tag.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for ResetParameterGroup
    class ResetParameterGroup
      def self.default(visited=[])
        {
          parameter_group: Stubs::ParameterGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ParameterGroup'] = Stubs::ParameterGroup.stub(stub[:parameter_group]) unless stub[:parameter_group].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
          tag_list: Stubs::TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TagList'] = Stubs::TagList.stub(stub[:tag_list]) unless stub[:tag_list].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
          tag_list: Stubs::TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TagList'] = Stubs::TagList.stub(stub[:tag_list]) unless stub[:tag_list].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateACL
    class UpdateACL
      def self.default(visited=[])
        {
          acl: Stubs::ACL.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ACL'] = Stubs::ACL.stub(stub[:acl]) unless stub[:acl].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateCluster
    class UpdateCluster
      def self.default(visited=[])
        {
          cluster: Stubs::Cluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Cluster'] = Stubs::Cluster.stub(stub[:cluster]) unless stub[:cluster].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateParameterGroup
    class UpdateParameterGroup
      def self.default(visited=[])
        {
          parameter_group: Stubs::ParameterGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ParameterGroup'] = Stubs::ParameterGroup.stub(stub[:parameter_group]) unless stub[:parameter_group].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateSubnetGroup
    class UpdateSubnetGroup
      def self.default(visited=[])
        {
          subnet_group: Stubs::SubnetGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SubnetGroup'] = Stubs::SubnetGroup.stub(stub[:subnet_group]) unless stub[:subnet_group].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateUser
    class UpdateUser
      def self.default(visited=[])
        {
          user: Stubs::User.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['User'] = Stubs::User.stub(stub[:user]) unless stub[:user].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
