# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::MemoryDB
  module Parsers

    # Operation Parser for BatchUpdateCluster
    class BatchUpdateCluster
      def self.parse(http_resp)
        data = Types::BatchUpdateClusterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.processed_clusters = (Parsers::ClusterList.parse(map['ProcessedClusters']) unless map['ProcessedClusters'].nil?)
        data.unprocessed_clusters = (Parsers::UnprocessedClusterList.parse(map['UnprocessedClusters']) unless map['UnprocessedClusters'].nil?)
        data
      end
    end

    class UnprocessedClusterList
      def self.parse(list)
        list.map do |value|
          Parsers::UnprocessedCluster.parse(value) unless value.nil?
        end
      end
    end

    class UnprocessedCluster
      def self.parse(map)
        data = Types::UnprocessedCluster.new
        data.cluster_name = map['ClusterName']
        data.error_type = map['ErrorType']
        data.error_message = map['ErrorMessage']
        return data
      end
    end

    class ClusterList
      def self.parse(list)
        list.map do |value|
          Parsers::Cluster.parse(value) unless value.nil?
        end
      end
    end

    class Cluster
      def self.parse(map)
        data = Types::Cluster.new
        data.name = map['Name']
        data.description = map['Description']
        data.status = map['Status']
        data.pending_updates = (Parsers::ClusterPendingUpdates.parse(map['PendingUpdates']) unless map['PendingUpdates'].nil?)
        data.number_of_shards = map['NumberOfShards']
        data.shards = (Parsers::ShardList.parse(map['Shards']) unless map['Shards'].nil?)
        data.availability_mode = map['AvailabilityMode']
        data.cluster_endpoint = (Parsers::Endpoint.parse(map['ClusterEndpoint']) unless map['ClusterEndpoint'].nil?)
        data.node_type = map['NodeType']
        data.engine_version = map['EngineVersion']
        data.engine_patch_version = map['EnginePatchVersion']
        data.parameter_group_name = map['ParameterGroupName']
        data.parameter_group_status = map['ParameterGroupStatus']
        data.security_groups = (Parsers::SecurityGroupMembershipList.parse(map['SecurityGroups']) unless map['SecurityGroups'].nil?)
        data.subnet_group_name = map['SubnetGroupName']
        data.tls_enabled = map['TLSEnabled']
        data.kms_key_id = map['KmsKeyId']
        data.arn = map['ARN']
        data.sns_topic_arn = map['SnsTopicArn']
        data.sns_topic_status = map['SnsTopicStatus']
        data.snapshot_retention_limit = map['SnapshotRetentionLimit']
        data.maintenance_window = map['MaintenanceWindow']
        data.snapshot_window = map['SnapshotWindow']
        data.acl_name = map['ACLName']
        data.auto_minor_version_upgrade = map['AutoMinorVersionUpgrade']
        return data
      end
    end

    class SecurityGroupMembershipList
      def self.parse(list)
        list.map do |value|
          Parsers::SecurityGroupMembership.parse(value) unless value.nil?
        end
      end
    end

    class SecurityGroupMembership
      def self.parse(map)
        data = Types::SecurityGroupMembership.new
        data.security_group_id = map['SecurityGroupId']
        data.status = map['Status']
        return data
      end
    end

    class Endpoint
      def self.parse(map)
        data = Types::Endpoint.new
        data.address = map['Address']
        data.port = map['Port']
        return data
      end
    end

    class ShardList
      def self.parse(list)
        list.map do |value|
          Parsers::Shard.parse(value) unless value.nil?
        end
      end
    end

    class Shard
      def self.parse(map)
        data = Types::Shard.new
        data.name = map['Name']
        data.status = map['Status']
        data.slots = map['Slots']
        data.nodes = (Parsers::NodeList.parse(map['Nodes']) unless map['Nodes'].nil?)
        data.number_of_nodes = map['NumberOfNodes']
        return data
      end
    end

    class NodeList
      def self.parse(list)
        list.map do |value|
          Parsers::Node.parse(value) unless value.nil?
        end
      end
    end

    class Node
      def self.parse(map)
        data = Types::Node.new
        data.name = map['Name']
        data.status = map['Status']
        data.availability_zone = map['AvailabilityZone']
        data.create_time = Time.at(map['CreateTime'].to_i) if map['CreateTime']
        data.endpoint = (Parsers::Endpoint.parse(map['Endpoint']) unless map['Endpoint'].nil?)
        return data
      end
    end

    class ClusterPendingUpdates
      def self.parse(map)
        data = Types::ClusterPendingUpdates.new
        data.resharding = (Parsers::ReshardingStatus.parse(map['Resharding']) unless map['Resharding'].nil?)
        data.ac_ls = (Parsers::ACLsUpdateStatus.parse(map['ACLs']) unless map['ACLs'].nil?)
        data.service_updates = (Parsers::PendingModifiedServiceUpdateList.parse(map['ServiceUpdates']) unless map['ServiceUpdates'].nil?)
        return data
      end
    end

    class PendingModifiedServiceUpdateList
      def self.parse(list)
        list.map do |value|
          Parsers::PendingModifiedServiceUpdate.parse(value) unless value.nil?
        end
      end
    end

    class PendingModifiedServiceUpdate
      def self.parse(map)
        data = Types::PendingModifiedServiceUpdate.new
        data.service_update_name = map['ServiceUpdateName']
        data.status = map['Status']
        return data
      end
    end

    class ACLsUpdateStatus
      def self.parse(map)
        data = Types::ACLsUpdateStatus.new
        data.acl_to_apply = map['ACLToApply']
        return data
      end
    end

    class ReshardingStatus
      def self.parse(map)
        data = Types::ReshardingStatus.new
        data.slot_migration = (Parsers::SlotMigration.parse(map['SlotMigration']) unless map['SlotMigration'].nil?)
        return data
      end
    end

    class SlotMigration
      def self.parse(map)
        data = Types::SlotMigration.new
        data.progress_percentage = Hearth::NumberHelper.deserialize(map['ProgressPercentage'])
        return data
      end
    end

    # Error Parser for ServiceUpdateNotFoundFault
    class ServiceUpdateNotFoundFault
      def self.parse(http_resp)
        data = Types::ServiceUpdateNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidParameterValueException
    class InvalidParameterValueException
      def self.parse(http_resp)
        data = Types::InvalidParameterValueException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CopySnapshot
    class CopySnapshot
      def self.parse(http_resp)
        data = Types::CopySnapshotOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.snapshot = (Parsers::Snapshot.parse(map['Snapshot']) unless map['Snapshot'].nil?)
        data
      end
    end

    class Snapshot
      def self.parse(map)
        data = Types::Snapshot.new
        data.name = map['Name']
        data.status = map['Status']
        data.source = map['Source']
        data.kms_key_id = map['KmsKeyId']
        data.arn = map['ARN']
        data.cluster_configuration = (Parsers::ClusterConfiguration.parse(map['ClusterConfiguration']) unless map['ClusterConfiguration'].nil?)
        return data
      end
    end

    class ClusterConfiguration
      def self.parse(map)
        data = Types::ClusterConfiguration.new
        data.name = map['Name']
        data.description = map['Description']
        data.node_type = map['NodeType']
        data.engine_version = map['EngineVersion']
        data.maintenance_window = map['MaintenanceWindow']
        data.topic_arn = map['TopicArn']
        data.port = map['Port']
        data.parameter_group_name = map['ParameterGroupName']
        data.subnet_group_name = map['SubnetGroupName']
        data.vpc_id = map['VpcId']
        data.snapshot_retention_limit = map['SnapshotRetentionLimit']
        data.snapshot_window = map['SnapshotWindow']
        data.num_shards = map['NumShards']
        data.shards = (Parsers::ShardDetails.parse(map['Shards']) unless map['Shards'].nil?)
        return data
      end
    end

    class ShardDetails
      def self.parse(list)
        list.map do |value|
          Parsers::ShardDetail.parse(value) unless value.nil?
        end
      end
    end

    class ShardDetail
      def self.parse(map)
        data = Types::ShardDetail.new
        data.name = map['Name']
        data.configuration = (Parsers::ShardConfiguration.parse(map['Configuration']) unless map['Configuration'].nil?)
        data.size = map['Size']
        data.snapshot_creation_time = Time.at(map['SnapshotCreationTime'].to_i) if map['SnapshotCreationTime']
        return data
      end
    end

    class ShardConfiguration
      def self.parse(map)
        data = Types::ShardConfiguration.new
        data.slots = map['Slots']
        data.replica_count = map['ReplicaCount']
        return data
      end
    end

    # Error Parser for InvalidParameterCombinationException
    class InvalidParameterCombinationException
      def self.parse(http_resp)
        data = Types::InvalidParameterCombinationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for SnapshotNotFoundFault
    class SnapshotNotFoundFault
      def self.parse(http_resp)
        data = Types::SnapshotNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for TagQuotaPerResourceExceeded
    class TagQuotaPerResourceExceeded
      def self.parse(http_resp)
        data = Types::TagQuotaPerResourceExceeded.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for SnapshotQuotaExceededFault
    class SnapshotQuotaExceededFault
      def self.parse(http_resp)
        data = Types::SnapshotQuotaExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ServiceLinkedRoleNotFoundFault
    class ServiceLinkedRoleNotFoundFault
      def self.parse(http_resp)
        data = Types::ServiceLinkedRoleNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for SnapshotAlreadyExistsFault
    class SnapshotAlreadyExistsFault
      def self.parse(http_resp)
        data = Types::SnapshotAlreadyExistsFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidSnapshotStateFault
    class InvalidSnapshotStateFault
      def self.parse(http_resp)
        data = Types::InvalidSnapshotStateFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreateACL
    class CreateACL
      def self.parse(http_resp)
        data = Types::CreateACLOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.acl = (Parsers::ACL.parse(map['ACL']) unless map['ACL'].nil?)
        data
      end
    end

    class ACL
      def self.parse(map)
        data = Types::ACL.new
        data.name = map['Name']
        data.status = map['Status']
        data.user_names = (Parsers::UserNameList.parse(map['UserNames']) unless map['UserNames'].nil?)
        data.minimum_engine_version = map['MinimumEngineVersion']
        data.pending_changes = (Parsers::ACLPendingChanges.parse(map['PendingChanges']) unless map['PendingChanges'].nil?)
        data.clusters = (Parsers::ACLClusterNameList.parse(map['Clusters']) unless map['Clusters'].nil?)
        data.arn = map['ARN']
        return data
      end
    end

    class ACLClusterNameList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ACLPendingChanges
      def self.parse(map)
        data = Types::ACLPendingChanges.new
        data.user_names_to_remove = (Parsers::UserNameList.parse(map['UserNamesToRemove']) unless map['UserNamesToRemove'].nil?)
        data.user_names_to_add = (Parsers::UserNameList.parse(map['UserNamesToAdd']) unless map['UserNamesToAdd'].nil?)
        return data
      end
    end

    class UserNameList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Error Parser for ACLQuotaExceededFault
    class ACLQuotaExceededFault
      def self.parse(http_resp)
        data = Types::ACLQuotaExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for DuplicateUserNameFault
    class DuplicateUserNameFault
      def self.parse(http_resp)
        data = Types::DuplicateUserNameFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for DefaultUserRequired
    class DefaultUserRequired
      def self.parse(http_resp)
        data = Types::DefaultUserRequired.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for UserNotFoundFault
    class UserNotFoundFault
      def self.parse(http_resp)
        data = Types::UserNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ACLAlreadyExistsFault
    class ACLAlreadyExistsFault
      def self.parse(http_resp)
        data = Types::ACLAlreadyExistsFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreateCluster
    class CreateCluster
      def self.parse(http_resp)
        data = Types::CreateClusterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.cluster = (Parsers::Cluster.parse(map['Cluster']) unless map['Cluster'].nil?)
        data
      end
    end

    # Error Parser for ClusterQuotaForCustomerExceededFault
    class ClusterQuotaForCustomerExceededFault
      def self.parse(http_resp)
        data = Types::ClusterQuotaForCustomerExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ACLNotFoundFault
    class ACLNotFoundFault
      def self.parse(http_resp)
        data = Types::ACLNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for NodeQuotaForClusterExceededFault
    class NodeQuotaForClusterExceededFault
      def self.parse(http_resp)
        data = Types::NodeQuotaForClusterExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for SubnetGroupNotFoundFault
    class SubnetGroupNotFoundFault
      def self.parse(http_resp)
        data = Types::SubnetGroupNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidCredentialsException
    class InvalidCredentialsException
      def self.parse(http_resp)
        data = Types::InvalidCredentialsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ClusterAlreadyExistsFault
    class ClusterAlreadyExistsFault
      def self.parse(http_resp)
        data = Types::ClusterAlreadyExistsFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ShardsPerClusterQuotaExceededFault
    class ShardsPerClusterQuotaExceededFault
      def self.parse(http_resp)
        data = Types::ShardsPerClusterQuotaExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ParameterGroupNotFoundFault
    class ParameterGroupNotFoundFault
      def self.parse(http_resp)
        data = Types::ParameterGroupNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidVPCNetworkStateFault
    class InvalidVPCNetworkStateFault
      def self.parse(http_resp)
        data = Types::InvalidVPCNetworkStateFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for NodeQuotaForCustomerExceededFault
    class NodeQuotaForCustomerExceededFault
      def self.parse(http_resp)
        data = Types::NodeQuotaForCustomerExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InsufficientClusterCapacityFault
    class InsufficientClusterCapacityFault
      def self.parse(http_resp)
        data = Types::InsufficientClusterCapacityFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidACLStateFault
    class InvalidACLStateFault
      def self.parse(http_resp)
        data = Types::InvalidACLStateFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreateParameterGroup
    class CreateParameterGroup
      def self.parse(http_resp)
        data = Types::CreateParameterGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.parameter_group = (Parsers::ParameterGroup.parse(map['ParameterGroup']) unless map['ParameterGroup'].nil?)
        data
      end
    end

    class ParameterGroup
      def self.parse(map)
        data = Types::ParameterGroup.new
        data.name = map['Name']
        data.family = map['Family']
        data.description = map['Description']
        data.arn = map['ARN']
        return data
      end
    end

    # Error Parser for ParameterGroupAlreadyExistsFault
    class ParameterGroupAlreadyExistsFault
      def self.parse(http_resp)
        data = Types::ParameterGroupAlreadyExistsFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidParameterGroupStateFault
    class InvalidParameterGroupStateFault
      def self.parse(http_resp)
        data = Types::InvalidParameterGroupStateFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ParameterGroupQuotaExceededFault
    class ParameterGroupQuotaExceededFault
      def self.parse(http_resp)
        data = Types::ParameterGroupQuotaExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreateSnapshot
    class CreateSnapshot
      def self.parse(http_resp)
        data = Types::CreateSnapshotOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.snapshot = (Parsers::Snapshot.parse(map['Snapshot']) unless map['Snapshot'].nil?)
        data
      end
    end

    # Error Parser for ClusterNotFoundFault
    class ClusterNotFoundFault
      def self.parse(http_resp)
        data = Types::ClusterNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidClusterStateFault
    class InvalidClusterStateFault
      def self.parse(http_resp)
        data = Types::InvalidClusterStateFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreateSubnetGroup
    class CreateSubnetGroup
      def self.parse(http_resp)
        data = Types::CreateSubnetGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.subnet_group = (Parsers::SubnetGroup.parse(map['SubnetGroup']) unless map['SubnetGroup'].nil?)
        data
      end
    end

    class SubnetGroup
      def self.parse(map)
        data = Types::SubnetGroup.new
        data.name = map['Name']
        data.description = map['Description']
        data.vpc_id = map['VpcId']
        data.subnets = (Parsers::SubnetList.parse(map['Subnets']) unless map['Subnets'].nil?)
        data.arn = map['ARN']
        return data
      end
    end

    class SubnetList
      def self.parse(list)
        list.map do |value|
          Parsers::Subnet.parse(value) unless value.nil?
        end
      end
    end

    class Subnet
      def self.parse(map)
        data = Types::Subnet.new
        data.identifier = map['Identifier']
        data.availability_zone = (Parsers::AvailabilityZone.parse(map['AvailabilityZone']) unless map['AvailabilityZone'].nil?)
        return data
      end
    end

    class AvailabilityZone
      def self.parse(map)
        data = Types::AvailabilityZone.new
        data.name = map['Name']
        return data
      end
    end

    # Error Parser for SubnetNotAllowedFault
    class SubnetNotAllowedFault
      def self.parse(http_resp)
        data = Types::SubnetNotAllowedFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for SubnetGroupQuotaExceededFault
    class SubnetGroupQuotaExceededFault
      def self.parse(http_resp)
        data = Types::SubnetGroupQuotaExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidSubnet
    class InvalidSubnet
      def self.parse(http_resp)
        data = Types::InvalidSubnet.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for SubnetQuotaExceededFault
    class SubnetQuotaExceededFault
      def self.parse(http_resp)
        data = Types::SubnetQuotaExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for SubnetGroupAlreadyExistsFault
    class SubnetGroupAlreadyExistsFault
      def self.parse(http_resp)
        data = Types::SubnetGroupAlreadyExistsFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreateUser
    class CreateUser
      def self.parse(http_resp)
        data = Types::CreateUserOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.user = (Parsers::User.parse(map['User']) unless map['User'].nil?)
        data
      end
    end

    class User
      def self.parse(map)
        data = Types::User.new
        data.name = map['Name']
        data.status = map['Status']
        data.access_string = map['AccessString']
        data.acl_names = (Parsers::ACLNameList.parse(map['ACLNames']) unless map['ACLNames'].nil?)
        data.minimum_engine_version = map['MinimumEngineVersion']
        data.authentication = (Parsers::Authentication.parse(map['Authentication']) unless map['Authentication'].nil?)
        data.arn = map['ARN']
        return data
      end
    end

    class Authentication
      def self.parse(map)
        data = Types::Authentication.new
        data.type = map['Type']
        data.password_count = map['PasswordCount']
        return data
      end
    end

    class ACLNameList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Error Parser for UserQuotaExceededFault
    class UserQuotaExceededFault
      def self.parse(http_resp)
        data = Types::UserQuotaExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for UserAlreadyExistsFault
    class UserAlreadyExistsFault
      def self.parse(http_resp)
        data = Types::UserAlreadyExistsFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DeleteACL
    class DeleteACL
      def self.parse(http_resp)
        data = Types::DeleteACLOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.acl = (Parsers::ACL.parse(map['ACL']) unless map['ACL'].nil?)
        data
      end
    end

    # Operation Parser for DeleteCluster
    class DeleteCluster
      def self.parse(http_resp)
        data = Types::DeleteClusterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.cluster = (Parsers::Cluster.parse(map['Cluster']) unless map['Cluster'].nil?)
        data
      end
    end

    # Operation Parser for DeleteParameterGroup
    class DeleteParameterGroup
      def self.parse(http_resp)
        data = Types::DeleteParameterGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.parameter_group = (Parsers::ParameterGroup.parse(map['ParameterGroup']) unless map['ParameterGroup'].nil?)
        data
      end
    end

    # Operation Parser for DeleteSnapshot
    class DeleteSnapshot
      def self.parse(http_resp)
        data = Types::DeleteSnapshotOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.snapshot = (Parsers::Snapshot.parse(map['Snapshot']) unless map['Snapshot'].nil?)
        data
      end
    end

    # Operation Parser for DeleteSubnetGroup
    class DeleteSubnetGroup
      def self.parse(http_resp)
        data = Types::DeleteSubnetGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.subnet_group = (Parsers::SubnetGroup.parse(map['SubnetGroup']) unless map['SubnetGroup'].nil?)
        data
      end
    end

    # Error Parser for SubnetGroupInUseFault
    class SubnetGroupInUseFault
      def self.parse(http_resp)
        data = Types::SubnetGroupInUseFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DeleteUser
    class DeleteUser
      def self.parse(http_resp)
        data = Types::DeleteUserOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.user = (Parsers::User.parse(map['User']) unless map['User'].nil?)
        data
      end
    end

    # Error Parser for InvalidUserStateFault
    class InvalidUserStateFault
      def self.parse(http_resp)
        data = Types::InvalidUserStateFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DescribeACLs
    class DescribeACLs
      def self.parse(http_resp)
        data = Types::DescribeACLsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.ac_ls = (Parsers::ACLList.parse(map['ACLs']) unless map['ACLs'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ACLList
      def self.parse(list)
        list.map do |value|
          Parsers::ACL.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeClusters
    class DescribeClusters
      def self.parse(http_resp)
        data = Types::DescribeClustersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.clusters = (Parsers::ClusterList.parse(map['Clusters']) unless map['Clusters'].nil?)
        data
      end
    end

    # Operation Parser for DescribeEngineVersions
    class DescribeEngineVersions
      def self.parse(http_resp)
        data = Types::DescribeEngineVersionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.engine_versions = (Parsers::EngineVersionInfoList.parse(map['EngineVersions']) unless map['EngineVersions'].nil?)
        data
      end
    end

    class EngineVersionInfoList
      def self.parse(list)
        list.map do |value|
          Parsers::EngineVersionInfo.parse(value) unless value.nil?
        end
      end
    end

    class EngineVersionInfo
      def self.parse(map)
        data = Types::EngineVersionInfo.new
        data.engine_version = map['EngineVersion']
        data.engine_patch_version = map['EnginePatchVersion']
        data.parameter_group_family = map['ParameterGroupFamily']
        return data
      end
    end

    # Operation Parser for DescribeEvents
    class DescribeEvents
      def self.parse(http_resp)
        data = Types::DescribeEventsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.events = (Parsers::EventList.parse(map['Events']) unless map['Events'].nil?)
        data
      end
    end

    class EventList
      def self.parse(list)
        list.map do |value|
          Parsers::Event.parse(value) unless value.nil?
        end
      end
    end

    class Event
      def self.parse(map)
        data = Types::Event.new
        data.source_name = map['SourceName']
        data.source_type = map['SourceType']
        data.message = map['Message']
        data.date = Time.at(map['Date'].to_i) if map['Date']
        return data
      end
    end

    # Operation Parser for DescribeParameterGroups
    class DescribeParameterGroups
      def self.parse(http_resp)
        data = Types::DescribeParameterGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.parameter_groups = (Parsers::ParameterGroupList.parse(map['ParameterGroups']) unless map['ParameterGroups'].nil?)
        data
      end
    end

    class ParameterGroupList
      def self.parse(list)
        list.map do |value|
          Parsers::ParameterGroup.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeParameters
    class DescribeParameters
      def self.parse(http_resp)
        data = Types::DescribeParametersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.parameters = (Parsers::ParametersList.parse(map['Parameters']) unless map['Parameters'].nil?)
        data
      end
    end

    class ParametersList
      def self.parse(list)
        list.map do |value|
          Parsers::Parameter.parse(value) unless value.nil?
        end
      end
    end

    class Parameter
      def self.parse(map)
        data = Types::Parameter.new
        data.name = map['Name']
        data.value = map['Value']
        data.description = map['Description']
        data.data_type = map['DataType']
        data.allowed_values = map['AllowedValues']
        data.minimum_engine_version = map['MinimumEngineVersion']
        return data
      end
    end

    # Operation Parser for DescribeServiceUpdates
    class DescribeServiceUpdates
      def self.parse(http_resp)
        data = Types::DescribeServiceUpdatesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.service_updates = (Parsers::ServiceUpdateList.parse(map['ServiceUpdates']) unless map['ServiceUpdates'].nil?)
        data
      end
    end

    class ServiceUpdateList
      def self.parse(list)
        list.map do |value|
          Parsers::ServiceUpdate.parse(value) unless value.nil?
        end
      end
    end

    class ServiceUpdate
      def self.parse(map)
        data = Types::ServiceUpdate.new
        data.cluster_name = map['ClusterName']
        data.service_update_name = map['ServiceUpdateName']
        data.release_date = Time.at(map['ReleaseDate'].to_i) if map['ReleaseDate']
        data.description = map['Description']
        data.status = map['Status']
        data.type = map['Type']
        data.nodes_updated = map['NodesUpdated']
        data.auto_update_start_date = Time.at(map['AutoUpdateStartDate'].to_i) if map['AutoUpdateStartDate']
        return data
      end
    end

    # Operation Parser for DescribeSnapshots
    class DescribeSnapshots
      def self.parse(http_resp)
        data = Types::DescribeSnapshotsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.snapshots = (Parsers::SnapshotList.parse(map['Snapshots']) unless map['Snapshots'].nil?)
        data
      end
    end

    class SnapshotList
      def self.parse(list)
        list.map do |value|
          Parsers::Snapshot.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeSubnetGroups
    class DescribeSubnetGroups
      def self.parse(http_resp)
        data = Types::DescribeSubnetGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.subnet_groups = (Parsers::SubnetGroupList.parse(map['SubnetGroups']) unless map['SubnetGroups'].nil?)
        data
      end
    end

    class SubnetGroupList
      def self.parse(list)
        list.map do |value|
          Parsers::SubnetGroup.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeUsers
    class DescribeUsers
      def self.parse(http_resp)
        data = Types::DescribeUsersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.users = (Parsers::UserList.parse(map['Users']) unless map['Users'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class UserList
      def self.parse(list)
        list.map do |value|
          Parsers::User.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for FailoverShard
    class FailoverShard
      def self.parse(http_resp)
        data = Types::FailoverShardOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.cluster = (Parsers::Cluster.parse(map['Cluster']) unless map['Cluster'].nil?)
        data
      end
    end

    # Error Parser for InvalidKMSKeyFault
    class InvalidKMSKeyFault
      def self.parse(http_resp)
        data = Types::InvalidKMSKeyFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for APICallRateForCustomerExceededFault
    class APICallRateForCustomerExceededFault
      def self.parse(http_resp)
        data = Types::APICallRateForCustomerExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ShardNotFoundFault
    class ShardNotFoundFault
      def self.parse(http_resp)
        data = Types::ShardNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for TestFailoverNotAvailableFault
    class TestFailoverNotAvailableFault
      def self.parse(http_resp)
        data = Types::TestFailoverNotAvailableFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for ListAllowedNodeTypeUpdates
    class ListAllowedNodeTypeUpdates
      def self.parse(http_resp)
        data = Types::ListAllowedNodeTypeUpdatesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.scale_up_node_types = (Parsers::NodeTypeList.parse(map['ScaleUpNodeTypes']) unless map['ScaleUpNodeTypes'].nil?)
        data.scale_down_node_types = (Parsers::NodeTypeList.parse(map['ScaleDownNodeTypes']) unless map['ScaleDownNodeTypes'].nil?)
        data
      end
    end

    class NodeTypeList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for ListTags
    class ListTags
      def self.parse(http_resp)
        data = Types::ListTagsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tag_list = (Parsers::TagList.parse(map['TagList']) unless map['TagList'].nil?)
        data
      end
    end

    class TagList
      def self.parse(list)
        list.map do |value|
          Parsers::Tag.parse(value) unless value.nil?
        end
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['Key']
        data.value = map['Value']
        return data
      end
    end

    # Error Parser for InvalidARNFault
    class InvalidARNFault
      def self.parse(http_resp)
        data = Types::InvalidARNFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for ResetParameterGroup
    class ResetParameterGroup
      def self.parse(http_resp)
        data = Types::ResetParameterGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.parameter_group = (Parsers::ParameterGroup.parse(map['ParameterGroup']) unless map['ParameterGroup'].nil?)
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tag_list = (Parsers::TagList.parse(map['TagList']) unless map['TagList'].nil?)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tag_list = (Parsers::TagList.parse(map['TagList']) unless map['TagList'].nil?)
        data
      end
    end

    # Error Parser for TagNotFoundFault
    class TagNotFoundFault
      def self.parse(http_resp)
        data = Types::TagNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for UpdateACL
    class UpdateACL
      def self.parse(http_resp)
        data = Types::UpdateACLOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.acl = (Parsers::ACL.parse(map['ACL']) unless map['ACL'].nil?)
        data
      end
    end

    # Operation Parser for UpdateCluster
    class UpdateCluster
      def self.parse(http_resp)
        data = Types::UpdateClusterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.cluster = (Parsers::Cluster.parse(map['Cluster']) unless map['Cluster'].nil?)
        data
      end
    end

    # Error Parser for InvalidNodeStateFault
    class InvalidNodeStateFault
      def self.parse(http_resp)
        data = Types::InvalidNodeStateFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for NoOperationFault
    class NoOperationFault
      def self.parse(http_resp)
        data = Types::NoOperationFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for UpdateParameterGroup
    class UpdateParameterGroup
      def self.parse(http_resp)
        data = Types::UpdateParameterGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.parameter_group = (Parsers::ParameterGroup.parse(map['ParameterGroup']) unless map['ParameterGroup'].nil?)
        data
      end
    end

    # Operation Parser for UpdateSubnetGroup
    class UpdateSubnetGroup
      def self.parse(http_resp)
        data = Types::UpdateSubnetGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.subnet_group = (Parsers::SubnetGroup.parse(map['SubnetGroup']) unless map['SubnetGroup'].nil?)
        data
      end
    end

    # Error Parser for SubnetInUse
    class SubnetInUse
      def self.parse(http_resp)
        data = Types::SubnetInUse.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for UpdateUser
    class UpdateUser
      def self.parse(http_resp)
        data = Types::UpdateUserOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.user = (Parsers::User.parse(map['User']) unless map['User'].nil?)
        data
      end
    end
  end
end
