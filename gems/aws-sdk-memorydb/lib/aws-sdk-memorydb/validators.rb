# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::MemoryDB
  module Validators

    class ACL
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ACL, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        UserNameList.validate!(input[:user_names], context: "#{context}[:user_names]") unless input[:user_names].nil?
        Hearth::Validator.validate!(input[:minimum_engine_version], ::String, context: "#{context}[:minimum_engine_version]")
        ACLPendingChanges.validate!(input[:pending_changes], context: "#{context}[:pending_changes]") unless input[:pending_changes].nil?
        ACLClusterNameList.validate!(input[:clusters], context: "#{context}[:clusters]") unless input[:clusters].nil?
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class ACLAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ACLAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ACLClusterNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ACLList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ACL.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ACLNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ACLNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ACLNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ACLPendingChanges
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ACLPendingChanges, context: context)
        UserNameList.validate!(input[:user_names_to_remove], context: "#{context}[:user_names_to_remove]") unless input[:user_names_to_remove].nil?
        UserNameList.validate!(input[:user_names_to_add], context: "#{context}[:user_names_to_add]") unless input[:user_names_to_add].nil?
      end
    end

    class ACLQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ACLQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ACLsUpdateStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ACLsUpdateStatus, context: context)
        Hearth::Validator.validate!(input[:acl_to_apply], ::String, context: "#{context}[:acl_to_apply]")
      end
    end

    class APICallRateForCustomerExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::APICallRateForCustomerExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Authentication
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Authentication, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:password_count], ::Integer, context: "#{context}[:password_count]")
      end
    end

    class AuthenticationMode
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuthenticationMode, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        PasswordListInput.validate!(input[:passwords], context: "#{context}[:passwords]") unless input[:passwords].nil?
      end
    end

    class AvailabilityZone
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AvailabilityZone, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class BatchUpdateClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchUpdateClusterInput, context: context)
        ClusterNameList.validate!(input[:cluster_names], context: "#{context}[:cluster_names]") unless input[:cluster_names].nil?
        ServiceUpdateRequest.validate!(input[:service_update], context: "#{context}[:service_update]") unless input[:service_update].nil?
      end
    end

    class BatchUpdateClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchUpdateClusterOutput, context: context)
        ClusterList.validate!(input[:processed_clusters], context: "#{context}[:processed_clusters]") unless input[:processed_clusters].nil?
        UnprocessedClusterList.validate!(input[:unprocessed_clusters], context: "#{context}[:unprocessed_clusters]") unless input[:unprocessed_clusters].nil?
      end
    end

    class Cluster
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Cluster, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        ClusterPendingUpdates.validate!(input[:pending_updates], context: "#{context}[:pending_updates]") unless input[:pending_updates].nil?
        Hearth::Validator.validate!(input[:number_of_shards], ::Integer, context: "#{context}[:number_of_shards]")
        ShardList.validate!(input[:shards], context: "#{context}[:shards]") unless input[:shards].nil?
        Hearth::Validator.validate!(input[:availability_mode], ::String, context: "#{context}[:availability_mode]")
        Endpoint.validate!(input[:cluster_endpoint], context: "#{context}[:cluster_endpoint]") unless input[:cluster_endpoint].nil?
        Hearth::Validator.validate!(input[:node_type], ::String, context: "#{context}[:node_type]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:engine_patch_version], ::String, context: "#{context}[:engine_patch_version]")
        Hearth::Validator.validate!(input[:parameter_group_name], ::String, context: "#{context}[:parameter_group_name]")
        Hearth::Validator.validate!(input[:parameter_group_status], ::String, context: "#{context}[:parameter_group_status]")
        SecurityGroupMembershipList.validate!(input[:security_groups], context: "#{context}[:security_groups]") unless input[:security_groups].nil?
        Hearth::Validator.validate!(input[:subnet_group_name], ::String, context: "#{context}[:subnet_group_name]")
        Hearth::Validator.validate!(input[:tls_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:tls_enabled]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:sns_topic_arn], ::String, context: "#{context}[:sns_topic_arn]")
        Hearth::Validator.validate!(input[:sns_topic_status], ::String, context: "#{context}[:sns_topic_status]")
        Hearth::Validator.validate!(input[:snapshot_retention_limit], ::Integer, context: "#{context}[:snapshot_retention_limit]")
        Hearth::Validator.validate!(input[:maintenance_window], ::String, context: "#{context}[:maintenance_window]")
        Hearth::Validator.validate!(input[:snapshot_window], ::String, context: "#{context}[:snapshot_window]")
        Hearth::Validator.validate!(input[:acl_name], ::String, context: "#{context}[:acl_name]")
        Hearth::Validator.validate!(input[:auto_minor_version_upgrade], ::TrueClass, ::FalseClass, context: "#{context}[:auto_minor_version_upgrade]")
      end
    end

    class ClusterAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClusterAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ClusterConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClusterConfiguration, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:node_type], ::String, context: "#{context}[:node_type]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:maintenance_window], ::String, context: "#{context}[:maintenance_window]")
        Hearth::Validator.validate!(input[:topic_arn], ::String, context: "#{context}[:topic_arn]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:parameter_group_name], ::String, context: "#{context}[:parameter_group_name]")
        Hearth::Validator.validate!(input[:subnet_group_name], ::String, context: "#{context}[:subnet_group_name]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:snapshot_retention_limit], ::Integer, context: "#{context}[:snapshot_retention_limit]")
        Hearth::Validator.validate!(input[:snapshot_window], ::String, context: "#{context}[:snapshot_window]")
        Hearth::Validator.validate!(input[:num_shards], ::Integer, context: "#{context}[:num_shards]")
        ShardDetails.validate!(input[:shards], context: "#{context}[:shards]") unless input[:shards].nil?
      end
    end

    class ClusterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Cluster.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ClusterNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ClusterNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClusterNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ClusterPendingUpdates
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClusterPendingUpdates, context: context)
        ReshardingStatus.validate!(input[:resharding], context: "#{context}[:resharding]") unless input[:resharding].nil?
        ACLsUpdateStatus.validate!(input[:ac_ls], context: "#{context}[:ac_ls]") unless input[:ac_ls].nil?
        PendingModifiedServiceUpdateList.validate!(input[:service_updates], context: "#{context}[:service_updates]") unless input[:service_updates].nil?
      end
    end

    class ClusterQuotaForCustomerExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClusterQuotaForCustomerExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CopySnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CopySnapshotInput, context: context)
        Hearth::Validator.validate!(input[:source_snapshot_name], ::String, context: "#{context}[:source_snapshot_name]")
        Hearth::Validator.validate!(input[:target_snapshot_name], ::String, context: "#{context}[:target_snapshot_name]")
        Hearth::Validator.validate!(input[:target_bucket], ::String, context: "#{context}[:target_bucket]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CopySnapshotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CopySnapshotOutput, context: context)
        Snapshot.validate!(input[:snapshot], context: "#{context}[:snapshot]") unless input[:snapshot].nil?
      end
    end

    class CreateACLInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateACLInput, context: context)
        Hearth::Validator.validate!(input[:acl_name], ::String, context: "#{context}[:acl_name]")
        UserNameListInput.validate!(input[:user_names], context: "#{context}[:user_names]") unless input[:user_names].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateACLOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateACLOutput, context: context)
        ACL.validate!(input[:acl], context: "#{context}[:acl]") unless input[:acl].nil?
      end
    end

    class CreateClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateClusterInput, context: context)
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
        Hearth::Validator.validate!(input[:node_type], ::String, context: "#{context}[:node_type]")
        Hearth::Validator.validate!(input[:parameter_group_name], ::String, context: "#{context}[:parameter_group_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:num_shards], ::Integer, context: "#{context}[:num_shards]")
        Hearth::Validator.validate!(input[:num_replicas_per_shard], ::Integer, context: "#{context}[:num_replicas_per_shard]")
        Hearth::Validator.validate!(input[:subnet_group_name], ::String, context: "#{context}[:subnet_group_name]")
        SecurityGroupIdsList.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        Hearth::Validator.validate!(input[:maintenance_window], ::String, context: "#{context}[:maintenance_window]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:sns_topic_arn], ::String, context: "#{context}[:sns_topic_arn]")
        Hearth::Validator.validate!(input[:tls_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:tls_enabled]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        SnapshotArnsList.validate!(input[:snapshot_arns], context: "#{context}[:snapshot_arns]") unless input[:snapshot_arns].nil?
        Hearth::Validator.validate!(input[:snapshot_name], ::String, context: "#{context}[:snapshot_name]")
        Hearth::Validator.validate!(input[:snapshot_retention_limit], ::Integer, context: "#{context}[:snapshot_retention_limit]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:snapshot_window], ::String, context: "#{context}[:snapshot_window]")
        Hearth::Validator.validate!(input[:acl_name], ::String, context: "#{context}[:acl_name]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:auto_minor_version_upgrade], ::TrueClass, ::FalseClass, context: "#{context}[:auto_minor_version_upgrade]")
      end
    end

    class CreateClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateClusterOutput, context: context)
        Cluster.validate!(input[:cluster], context: "#{context}[:cluster]") unless input[:cluster].nil?
      end
    end

    class CreateParameterGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateParameterGroupInput, context: context)
        Hearth::Validator.validate!(input[:parameter_group_name], ::String, context: "#{context}[:parameter_group_name]")
        Hearth::Validator.validate!(input[:family], ::String, context: "#{context}[:family]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateParameterGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateParameterGroupOutput, context: context)
        ParameterGroup.validate!(input[:parameter_group], context: "#{context}[:parameter_group]") unless input[:parameter_group].nil?
      end
    end

    class CreateSnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSnapshotInput, context: context)
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
        Hearth::Validator.validate!(input[:snapshot_name], ::String, context: "#{context}[:snapshot_name]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateSnapshotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSnapshotOutput, context: context)
        Snapshot.validate!(input[:snapshot], context: "#{context}[:snapshot]") unless input[:snapshot].nil?
      end
    end

    class CreateSubnetGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSubnetGroupInput, context: context)
        Hearth::Validator.validate!(input[:subnet_group_name], ::String, context: "#{context}[:subnet_group_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        SubnetIdentifierList.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateSubnetGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSubnetGroupOutput, context: context)
        SubnetGroup.validate!(input[:subnet_group], context: "#{context}[:subnet_group]") unless input[:subnet_group].nil?
      end
    end

    class CreateUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUserInput, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        AuthenticationMode.validate!(input[:authentication_mode], context: "#{context}[:authentication_mode]") unless input[:authentication_mode].nil?
        Hearth::Validator.validate!(input[:access_string], ::String, context: "#{context}[:access_string]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUserOutput, context: context)
        User.validate!(input[:user], context: "#{context}[:user]") unless input[:user].nil?
      end
    end

    class DefaultUserRequired
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DefaultUserRequired, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DeleteACLInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteACLInput, context: context)
        Hearth::Validator.validate!(input[:acl_name], ::String, context: "#{context}[:acl_name]")
      end
    end

    class DeleteACLOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteACLOutput, context: context)
        ACL.validate!(input[:acl], context: "#{context}[:acl]") unless input[:acl].nil?
      end
    end

    class DeleteClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteClusterInput, context: context)
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
        Hearth::Validator.validate!(input[:final_snapshot_name], ::String, context: "#{context}[:final_snapshot_name]")
      end
    end

    class DeleteClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteClusterOutput, context: context)
        Cluster.validate!(input[:cluster], context: "#{context}[:cluster]") unless input[:cluster].nil?
      end
    end

    class DeleteParameterGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteParameterGroupInput, context: context)
        Hearth::Validator.validate!(input[:parameter_group_name], ::String, context: "#{context}[:parameter_group_name]")
      end
    end

    class DeleteParameterGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteParameterGroupOutput, context: context)
        ParameterGroup.validate!(input[:parameter_group], context: "#{context}[:parameter_group]") unless input[:parameter_group].nil?
      end
    end

    class DeleteSnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSnapshotInput, context: context)
        Hearth::Validator.validate!(input[:snapshot_name], ::String, context: "#{context}[:snapshot_name]")
      end
    end

    class DeleteSnapshotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSnapshotOutput, context: context)
        Snapshot.validate!(input[:snapshot], context: "#{context}[:snapshot]") unless input[:snapshot].nil?
      end
    end

    class DeleteSubnetGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSubnetGroupInput, context: context)
        Hearth::Validator.validate!(input[:subnet_group_name], ::String, context: "#{context}[:subnet_group_name]")
      end
    end

    class DeleteSubnetGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSubnetGroupOutput, context: context)
        SubnetGroup.validate!(input[:subnet_group], context: "#{context}[:subnet_group]") unless input[:subnet_group].nil?
      end
    end

    class DeleteUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUserInput, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
      end
    end

    class DeleteUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUserOutput, context: context)
        User.validate!(input[:user], context: "#{context}[:user]") unless input[:user].nil?
      end
    end

    class DescribeACLsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeACLsInput, context: context)
        Hearth::Validator.validate!(input[:acl_name], ::String, context: "#{context}[:acl_name]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeACLsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeACLsOutput, context: context)
        ACLList.validate!(input[:ac_ls], context: "#{context}[:ac_ls]") unless input[:ac_ls].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeClustersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeClustersInput, context: context)
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:show_shard_details], ::TrueClass, ::FalseClass, context: "#{context}[:show_shard_details]")
      end
    end

    class DescribeClustersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeClustersOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        ClusterList.validate!(input[:clusters], context: "#{context}[:clusters]") unless input[:clusters].nil?
      end
    end

    class DescribeEngineVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEngineVersionsInput, context: context)
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:parameter_group_family], ::String, context: "#{context}[:parameter_group_family]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:default_only], ::TrueClass, ::FalseClass, context: "#{context}[:default_only]")
      end
    end

    class DescribeEngineVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEngineVersionsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        EngineVersionInfoList.validate!(input[:engine_versions], context: "#{context}[:engine_versions]") unless input[:engine_versions].nil?
      end
    end

    class DescribeEventsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventsInput, context: context)
        Hearth::Validator.validate!(input[:source_name], ::String, context: "#{context}[:source_name]")
        Hearth::Validator.validate!(input[:source_type], ::String, context: "#{context}[:source_type]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:duration], ::Integer, context: "#{context}[:duration]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeEventsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        EventList.validate!(input[:events], context: "#{context}[:events]") unless input[:events].nil?
      end
    end

    class DescribeParameterGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeParameterGroupsInput, context: context)
        Hearth::Validator.validate!(input[:parameter_group_name], ::String, context: "#{context}[:parameter_group_name]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeParameterGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeParameterGroupsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        ParameterGroupList.validate!(input[:parameter_groups], context: "#{context}[:parameter_groups]") unless input[:parameter_groups].nil?
      end
    end

    class DescribeParametersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeParametersInput, context: context)
        Hearth::Validator.validate!(input[:parameter_group_name], ::String, context: "#{context}[:parameter_group_name]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeParametersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeParametersOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        ParametersList.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
      end
    end

    class DescribeServiceUpdatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeServiceUpdatesInput, context: context)
        Hearth::Validator.validate!(input[:service_update_name], ::String, context: "#{context}[:service_update_name]")
        ClusterNameList.validate!(input[:cluster_names], context: "#{context}[:cluster_names]") unless input[:cluster_names].nil?
        ServiceUpdateStatusList.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeServiceUpdatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeServiceUpdatesOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        ServiceUpdateList.validate!(input[:service_updates], context: "#{context}[:service_updates]") unless input[:service_updates].nil?
      end
    end

    class DescribeSnapshotsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSnapshotsInput, context: context)
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
        Hearth::Validator.validate!(input[:snapshot_name], ::String, context: "#{context}[:snapshot_name]")
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:show_detail], ::TrueClass, ::FalseClass, context: "#{context}[:show_detail]")
      end
    end

    class DescribeSnapshotsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSnapshotsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        SnapshotList.validate!(input[:snapshots], context: "#{context}[:snapshots]") unless input[:snapshots].nil?
      end
    end

    class DescribeSubnetGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSubnetGroupsInput, context: context)
        Hearth::Validator.validate!(input[:subnet_group_name], ::String, context: "#{context}[:subnet_group_name]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeSubnetGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSubnetGroupsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        SubnetGroupList.validate!(input[:subnet_groups], context: "#{context}[:subnet_groups]") unless input[:subnet_groups].nil?
      end
    end

    class DescribeUsersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeUsersInput, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeUsersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeUsersOutput, context: context)
        UserList.validate!(input[:users], context: "#{context}[:users]") unless input[:users].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DuplicateUserNameFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DuplicateUserNameFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Endpoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Endpoint, context: context)
        Hearth::Validator.validate!(input[:address], ::String, context: "#{context}[:address]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
      end
    end

    class EngineVersionInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EngineVersionInfo, context: context)
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:engine_patch_version], ::String, context: "#{context}[:engine_patch_version]")
        Hearth::Validator.validate!(input[:parameter_group_family], ::String, context: "#{context}[:parameter_group_family]")
      end
    end

    class EngineVersionInfoList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EngineVersionInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Event
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Event, context: context)
        Hearth::Validator.validate!(input[:source_name], ::String, context: "#{context}[:source_name]")
        Hearth::Validator.validate!(input[:source_type], ::String, context: "#{context}[:source_type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:date], ::Time, context: "#{context}[:date]")
      end
    end

    class EventList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Event.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FailoverShardInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FailoverShardInput, context: context)
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
        Hearth::Validator.validate!(input[:shard_name], ::String, context: "#{context}[:shard_name]")
      end
    end

    class FailoverShardOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FailoverShardOutput, context: context)
        Cluster.validate!(input[:cluster], context: "#{context}[:cluster]") unless input[:cluster].nil?
      end
    end

    class Filter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Filter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        FilterValueList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class FilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Filter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FilterValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InsufficientClusterCapacityFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InsufficientClusterCapacityFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidACLStateFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidACLStateFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidARNFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidARNFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidClusterStateFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidClusterStateFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidCredentialsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidCredentialsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidKMSKeyFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidKMSKeyFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidNodeStateFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidNodeStateFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidParameterCombinationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParameterCombinationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidParameterGroupStateFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParameterGroupStateFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidParameterValueException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParameterValueException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidSnapshotStateFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidSnapshotStateFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidSubnet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidSubnet, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidUserStateFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidUserStateFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidVPCNetworkStateFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidVPCNetworkStateFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ListAllowedNodeTypeUpdatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAllowedNodeTypeUpdatesInput, context: context)
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
      end
    end

    class ListAllowedNodeTypeUpdatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAllowedNodeTypeUpdatesOutput, context: context)
        NodeTypeList.validate!(input[:scale_up_node_types], context: "#{context}[:scale_up_node_types]") unless input[:scale_up_node_types].nil?
        NodeTypeList.validate!(input[:scale_down_node_types], context: "#{context}[:scale_down_node_types]") unless input[:scale_down_node_types].nil?
      end
    end

    class ListTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsOutput, context: context)
        TagList.validate!(input[:tag_list], context: "#{context}[:tag_list]") unless input[:tag_list].nil?
      end
    end

    class NoOperationFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoOperationFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Node
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Node, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:create_time], ::Time, context: "#{context}[:create_time]")
        Endpoint.validate!(input[:endpoint], context: "#{context}[:endpoint]") unless input[:endpoint].nil?
      end
    end

    class NodeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Node.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NodeQuotaForClusterExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NodeQuotaForClusterExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NodeQuotaForCustomerExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NodeQuotaForCustomerExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NodeTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Parameter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Parameter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:data_type], ::String, context: "#{context}[:data_type]")
        Hearth::Validator.validate!(input[:allowed_values], ::String, context: "#{context}[:allowed_values]")
        Hearth::Validator.validate!(input[:minimum_engine_version], ::String, context: "#{context}[:minimum_engine_version]")
      end
    end

    class ParameterGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParameterGroup, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:family], ::String, context: "#{context}[:family]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class ParameterGroupAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParameterGroupAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ParameterGroupList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ParameterGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ParameterGroupNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParameterGroupNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ParameterGroupQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParameterGroupQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ParameterNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ParameterNameValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParameterNameValue, context: context)
        Hearth::Validator.validate!(input[:parameter_name], ::String, context: "#{context}[:parameter_name]")
        Hearth::Validator.validate!(input[:parameter_value], ::String, context: "#{context}[:parameter_value]")
      end
    end

    class ParameterNameValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ParameterNameValue.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ParametersList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Parameter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PasswordListInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PendingModifiedServiceUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PendingModifiedServiceUpdate, context: context)
        Hearth::Validator.validate!(input[:service_update_name], ::String, context: "#{context}[:service_update_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class PendingModifiedServiceUpdateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PendingModifiedServiceUpdate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReplicaConfigurationRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicaConfigurationRequest, context: context)
        Hearth::Validator.validate!(input[:replica_count], ::Integer, context: "#{context}[:replica_count]")
      end
    end

    class ResetParameterGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResetParameterGroupInput, context: context)
        Hearth::Validator.validate!(input[:parameter_group_name], ::String, context: "#{context}[:parameter_group_name]")
        Hearth::Validator.validate!(input[:all_parameters], ::TrueClass, ::FalseClass, context: "#{context}[:all_parameters]")
        ParameterNameList.validate!(input[:parameter_names], context: "#{context}[:parameter_names]") unless input[:parameter_names].nil?
      end
    end

    class ResetParameterGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResetParameterGroupOutput, context: context)
        ParameterGroup.validate!(input[:parameter_group], context: "#{context}[:parameter_group]") unless input[:parameter_group].nil?
      end
    end

    class ReshardingStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReshardingStatus, context: context)
        SlotMigration.validate!(input[:slot_migration], context: "#{context}[:slot_migration]") unless input[:slot_migration].nil?
      end
    end

    class SecurityGroupIdsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SecurityGroupMembership
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SecurityGroupMembership, context: context)
        Hearth::Validator.validate!(input[:security_group_id], ::String, context: "#{context}[:security_group_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class SecurityGroupMembershipList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SecurityGroupMembership.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServiceLinkedRoleNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceLinkedRoleNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ServiceUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceUpdate, context: context)
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
        Hearth::Validator.validate!(input[:service_update_name], ::String, context: "#{context}[:service_update_name]")
        Hearth::Validator.validate!(input[:release_date], ::Time, context: "#{context}[:release_date]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:nodes_updated], ::String, context: "#{context}[:nodes_updated]")
        Hearth::Validator.validate!(input[:auto_update_start_date], ::Time, context: "#{context}[:auto_update_start_date]")
      end
    end

    class ServiceUpdateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ServiceUpdate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServiceUpdateNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceUpdateNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ServiceUpdateRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceUpdateRequest, context: context)
        Hearth::Validator.validate!(input[:service_update_name_to_apply], ::String, context: "#{context}[:service_update_name_to_apply]")
      end
    end

    class ServiceUpdateStatusList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Shard
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Shard, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:slots], ::String, context: "#{context}[:slots]")
        NodeList.validate!(input[:nodes], context: "#{context}[:nodes]") unless input[:nodes].nil?
        Hearth::Validator.validate!(input[:number_of_nodes], ::Integer, context: "#{context}[:number_of_nodes]")
      end
    end

    class ShardConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ShardConfiguration, context: context)
        Hearth::Validator.validate!(input[:slots], ::String, context: "#{context}[:slots]")
        Hearth::Validator.validate!(input[:replica_count], ::Integer, context: "#{context}[:replica_count]")
      end
    end

    class ShardConfigurationRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ShardConfigurationRequest, context: context)
        Hearth::Validator.validate!(input[:shard_count], ::Integer, context: "#{context}[:shard_count]")
      end
    end

    class ShardDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ShardDetail, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        ShardConfiguration.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
        Hearth::Validator.validate!(input[:size], ::String, context: "#{context}[:size]")
        Hearth::Validator.validate!(input[:snapshot_creation_time], ::Time, context: "#{context}[:snapshot_creation_time]")
      end
    end

    class ShardDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ShardDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ShardList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Shard.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ShardNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ShardNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ShardsPerClusterQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ShardsPerClusterQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SlotMigration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SlotMigration, context: context)
        Hearth::Validator.validate!(input[:progress_percentage], ::Float, context: "#{context}[:progress_percentage]")
      end
    end

    class Snapshot
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Snapshot, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        ClusterConfiguration.validate!(input[:cluster_configuration], context: "#{context}[:cluster_configuration]") unless input[:cluster_configuration].nil?
      end
    end

    class SnapshotAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SnapshotAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SnapshotArnsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SnapshotList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Snapshot.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SnapshotNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SnapshotNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SnapshotQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SnapshotQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Subnet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Subnet, context: context)
        Hearth::Validator.validate!(input[:identifier], ::String, context: "#{context}[:identifier]")
        AvailabilityZone.validate!(input[:availability_zone], context: "#{context}[:availability_zone]") unless input[:availability_zone].nil?
      end
    end

    class SubnetGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubnetGroup, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        SubnetList.validate!(input[:subnets], context: "#{context}[:subnets]") unless input[:subnets].nil?
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class SubnetGroupAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubnetGroupAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SubnetGroupInUseFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubnetGroupInUseFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SubnetGroupList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SubnetGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SubnetGroupNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubnetGroupNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SubnetGroupQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubnetGroupQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SubnetIdentifierList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SubnetInUse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubnetInUse, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SubnetList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Subnet.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SubnetNotAllowedFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubnetNotAllowedFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SubnetQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubnetQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TagQuotaPerResourceExceeded
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagQuotaPerResourceExceeded, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
        TagList.validate!(input[:tag_list], context: "#{context}[:tag_list]") unless input[:tag_list].nil?
      end
    end

    class TestFailoverNotAvailableFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestFailoverNotAvailableFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnprocessedCluster
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnprocessedCluster, context: context)
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
        Hearth::Validator.validate!(input[:error_type], ::String, context: "#{context}[:error_type]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class UnprocessedClusterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UnprocessedCluster.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        KeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
        TagList.validate!(input[:tag_list], context: "#{context}[:tag_list]") unless input[:tag_list].nil?
      end
    end

    class UpdateACLInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateACLInput, context: context)
        Hearth::Validator.validate!(input[:acl_name], ::String, context: "#{context}[:acl_name]")
        UserNameListInput.validate!(input[:user_names_to_add], context: "#{context}[:user_names_to_add]") unless input[:user_names_to_add].nil?
        UserNameListInput.validate!(input[:user_names_to_remove], context: "#{context}[:user_names_to_remove]") unless input[:user_names_to_remove].nil?
      end
    end

    class UpdateACLOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateACLOutput, context: context)
        ACL.validate!(input[:acl], context: "#{context}[:acl]") unless input[:acl].nil?
      end
    end

    class UpdateClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateClusterInput, context: context)
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        SecurityGroupIdsList.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        Hearth::Validator.validate!(input[:maintenance_window], ::String, context: "#{context}[:maintenance_window]")
        Hearth::Validator.validate!(input[:sns_topic_arn], ::String, context: "#{context}[:sns_topic_arn]")
        Hearth::Validator.validate!(input[:sns_topic_status], ::String, context: "#{context}[:sns_topic_status]")
        Hearth::Validator.validate!(input[:parameter_group_name], ::String, context: "#{context}[:parameter_group_name]")
        Hearth::Validator.validate!(input[:snapshot_window], ::String, context: "#{context}[:snapshot_window]")
        Hearth::Validator.validate!(input[:snapshot_retention_limit], ::Integer, context: "#{context}[:snapshot_retention_limit]")
        Hearth::Validator.validate!(input[:node_type], ::String, context: "#{context}[:node_type]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        ReplicaConfigurationRequest.validate!(input[:replica_configuration], context: "#{context}[:replica_configuration]") unless input[:replica_configuration].nil?
        ShardConfigurationRequest.validate!(input[:shard_configuration], context: "#{context}[:shard_configuration]") unless input[:shard_configuration].nil?
        Hearth::Validator.validate!(input[:acl_name], ::String, context: "#{context}[:acl_name]")
      end
    end

    class UpdateClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateClusterOutput, context: context)
        Cluster.validate!(input[:cluster], context: "#{context}[:cluster]") unless input[:cluster].nil?
      end
    end

    class UpdateParameterGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateParameterGroupInput, context: context)
        Hearth::Validator.validate!(input[:parameter_group_name], ::String, context: "#{context}[:parameter_group_name]")
        ParameterNameValueList.validate!(input[:parameter_name_values], context: "#{context}[:parameter_name_values]") unless input[:parameter_name_values].nil?
      end
    end

    class UpdateParameterGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateParameterGroupOutput, context: context)
        ParameterGroup.validate!(input[:parameter_group], context: "#{context}[:parameter_group]") unless input[:parameter_group].nil?
      end
    end

    class UpdateSubnetGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSubnetGroupInput, context: context)
        Hearth::Validator.validate!(input[:subnet_group_name], ::String, context: "#{context}[:subnet_group_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        SubnetIdentifierList.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
      end
    end

    class UpdateSubnetGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSubnetGroupOutput, context: context)
        SubnetGroup.validate!(input[:subnet_group], context: "#{context}[:subnet_group]") unless input[:subnet_group].nil?
      end
    end

    class UpdateUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateUserInput, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        AuthenticationMode.validate!(input[:authentication_mode], context: "#{context}[:authentication_mode]") unless input[:authentication_mode].nil?
        Hearth::Validator.validate!(input[:access_string], ::String, context: "#{context}[:access_string]")
      end
    end

    class UpdateUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateUserOutput, context: context)
        User.validate!(input[:user], context: "#{context}[:user]") unless input[:user].nil?
      end
    end

    class User
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::User, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:access_string], ::String, context: "#{context}[:access_string]")
        ACLNameList.validate!(input[:acl_names], context: "#{context}[:acl_names]") unless input[:acl_names].nil?
        Hearth::Validator.validate!(input[:minimum_engine_version], ::String, context: "#{context}[:minimum_engine_version]")
        Authentication.validate!(input[:authentication], context: "#{context}[:authentication]") unless input[:authentication].nil?
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class UserAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UserList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          User.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UserNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class UserNameListInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class UserNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UserQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

  end
end
