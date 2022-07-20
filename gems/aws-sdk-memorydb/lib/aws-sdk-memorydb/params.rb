# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MemoryDB
  module Params

    module ACL
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ACL, context: context)
        type = Types::ACL.new
        type.name = params[:name]
        type.status = params[:status]
        type.user_names = UserNameList.build(params[:user_names], context: "#{context}[:user_names]") unless params[:user_names].nil?
        type.minimum_engine_version = params[:minimum_engine_version]
        type.pending_changes = ACLPendingChanges.build(params[:pending_changes], context: "#{context}[:pending_changes]") unless params[:pending_changes].nil?
        type.clusters = ACLClusterNameList.build(params[:clusters], context: "#{context}[:clusters]") unless params[:clusters].nil?
        type.arn = params[:arn]
        type
      end
    end

    module ACLAlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ACLAlreadyExistsFault, context: context)
        type = Types::ACLAlreadyExistsFault.new
        type.message = params[:message]
        type
      end
    end

    module ACLClusterNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ACLList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ACL.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ACLNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ACLNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ACLNotFoundFault, context: context)
        type = Types::ACLNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module ACLPendingChanges
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ACLPendingChanges, context: context)
        type = Types::ACLPendingChanges.new
        type.user_names_to_remove = UserNameList.build(params[:user_names_to_remove], context: "#{context}[:user_names_to_remove]") unless params[:user_names_to_remove].nil?
        type.user_names_to_add = UserNameList.build(params[:user_names_to_add], context: "#{context}[:user_names_to_add]") unless params[:user_names_to_add].nil?
        type
      end
    end

    module ACLQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ACLQuotaExceededFault, context: context)
        type = Types::ACLQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module ACLsUpdateStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ACLsUpdateStatus, context: context)
        type = Types::ACLsUpdateStatus.new
        type.acl_to_apply = params[:acl_to_apply]
        type
      end
    end

    module APICallRateForCustomerExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::APICallRateForCustomerExceededFault, context: context)
        type = Types::APICallRateForCustomerExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module Authentication
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Authentication, context: context)
        type = Types::Authentication.new
        type.type = params[:type]
        type.password_count = params[:password_count]
        type
      end
    end

    module AuthenticationMode
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuthenticationMode, context: context)
        type = Types::AuthenticationMode.new
        type.type = params[:type]
        type.passwords = PasswordListInput.build(params[:passwords], context: "#{context}[:passwords]") unless params[:passwords].nil?
        type
      end
    end

    module AvailabilityZone
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AvailabilityZone, context: context)
        type = Types::AvailabilityZone.new
        type.name = params[:name]
        type
      end
    end

    module BatchUpdateClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchUpdateClusterInput, context: context)
        type = Types::BatchUpdateClusterInput.new
        type.cluster_names = ClusterNameList.build(params[:cluster_names], context: "#{context}[:cluster_names]") unless params[:cluster_names].nil?
        type.service_update = ServiceUpdateRequest.build(params[:service_update], context: "#{context}[:service_update]") unless params[:service_update].nil?
        type
      end
    end

    module BatchUpdateClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchUpdateClusterOutput, context: context)
        type = Types::BatchUpdateClusterOutput.new
        type.processed_clusters = ClusterList.build(params[:processed_clusters], context: "#{context}[:processed_clusters]") unless params[:processed_clusters].nil?
        type.unprocessed_clusters = UnprocessedClusterList.build(params[:unprocessed_clusters], context: "#{context}[:unprocessed_clusters]") unless params[:unprocessed_clusters].nil?
        type
      end
    end

    module Cluster
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Cluster, context: context)
        type = Types::Cluster.new
        type.name = params[:name]
        type.description = params[:description]
        type.status = params[:status]
        type.pending_updates = ClusterPendingUpdates.build(params[:pending_updates], context: "#{context}[:pending_updates]") unless params[:pending_updates].nil?
        type.number_of_shards = params[:number_of_shards]
        type.shards = ShardList.build(params[:shards], context: "#{context}[:shards]") unless params[:shards].nil?
        type.availability_mode = params[:availability_mode]
        type.cluster_endpoint = Endpoint.build(params[:cluster_endpoint], context: "#{context}[:cluster_endpoint]") unless params[:cluster_endpoint].nil?
        type.node_type = params[:node_type]
        type.engine_version = params[:engine_version]
        type.engine_patch_version = params[:engine_patch_version]
        type.parameter_group_name = params[:parameter_group_name]
        type.parameter_group_status = params[:parameter_group_status]
        type.security_groups = SecurityGroupMembershipList.build(params[:security_groups], context: "#{context}[:security_groups]") unless params[:security_groups].nil?
        type.subnet_group_name = params[:subnet_group_name]
        type.tls_enabled = params[:tls_enabled]
        type.kms_key_id = params[:kms_key_id]
        type.arn = params[:arn]
        type.sns_topic_arn = params[:sns_topic_arn]
        type.sns_topic_status = params[:sns_topic_status]
        type.snapshot_retention_limit = params[:snapshot_retention_limit]
        type.maintenance_window = params[:maintenance_window]
        type.snapshot_window = params[:snapshot_window]
        type.acl_name = params[:acl_name]
        type.auto_minor_version_upgrade = params[:auto_minor_version_upgrade]
        type
      end
    end

    module ClusterAlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClusterAlreadyExistsFault, context: context)
        type = Types::ClusterAlreadyExistsFault.new
        type.message = params[:message]
        type
      end
    end

    module ClusterConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClusterConfiguration, context: context)
        type = Types::ClusterConfiguration.new
        type.name = params[:name]
        type.description = params[:description]
        type.node_type = params[:node_type]
        type.engine_version = params[:engine_version]
        type.maintenance_window = params[:maintenance_window]
        type.topic_arn = params[:topic_arn]
        type.port = params[:port]
        type.parameter_group_name = params[:parameter_group_name]
        type.subnet_group_name = params[:subnet_group_name]
        type.vpc_id = params[:vpc_id]
        type.snapshot_retention_limit = params[:snapshot_retention_limit]
        type.snapshot_window = params[:snapshot_window]
        type.num_shards = params[:num_shards]
        type.shards = ShardDetails.build(params[:shards], context: "#{context}[:shards]") unless params[:shards].nil?
        type
      end
    end

    module ClusterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Cluster.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ClusterNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ClusterNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClusterNotFoundFault, context: context)
        type = Types::ClusterNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module ClusterPendingUpdates
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClusterPendingUpdates, context: context)
        type = Types::ClusterPendingUpdates.new
        type.resharding = ReshardingStatus.build(params[:resharding], context: "#{context}[:resharding]") unless params[:resharding].nil?
        type.ac_ls = ACLsUpdateStatus.build(params[:ac_ls], context: "#{context}[:ac_ls]") unless params[:ac_ls].nil?
        type.service_updates = PendingModifiedServiceUpdateList.build(params[:service_updates], context: "#{context}[:service_updates]") unless params[:service_updates].nil?
        type
      end
    end

    module ClusterQuotaForCustomerExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClusterQuotaForCustomerExceededFault, context: context)
        type = Types::ClusterQuotaForCustomerExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module CopySnapshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CopySnapshotInput, context: context)
        type = Types::CopySnapshotInput.new
        type.source_snapshot_name = params[:source_snapshot_name]
        type.target_snapshot_name = params[:target_snapshot_name]
        type.target_bucket = params[:target_bucket]
        type.kms_key_id = params[:kms_key_id]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CopySnapshotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CopySnapshotOutput, context: context)
        type = Types::CopySnapshotOutput.new
        type.snapshot = Snapshot.build(params[:snapshot], context: "#{context}[:snapshot]") unless params[:snapshot].nil?
        type
      end
    end

    module CreateACLInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateACLInput, context: context)
        type = Types::CreateACLInput.new
        type.acl_name = params[:acl_name]
        type.user_names = UserNameListInput.build(params[:user_names], context: "#{context}[:user_names]") unless params[:user_names].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateACLOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateACLOutput, context: context)
        type = Types::CreateACLOutput.new
        type.acl = ACL.build(params[:acl], context: "#{context}[:acl]") unless params[:acl].nil?
        type
      end
    end

    module CreateClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateClusterInput, context: context)
        type = Types::CreateClusterInput.new
        type.cluster_name = params[:cluster_name]
        type.node_type = params[:node_type]
        type.parameter_group_name = params[:parameter_group_name]
        type.description = params[:description]
        type.num_shards = params[:num_shards]
        type.num_replicas_per_shard = params[:num_replicas_per_shard]
        type.subnet_group_name = params[:subnet_group_name]
        type.security_group_ids = SecurityGroupIdsList.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.maintenance_window = params[:maintenance_window]
        type.port = params[:port]
        type.sns_topic_arn = params[:sns_topic_arn]
        type.tls_enabled = params[:tls_enabled]
        type.kms_key_id = params[:kms_key_id]
        type.snapshot_arns = SnapshotArnsList.build(params[:snapshot_arns], context: "#{context}[:snapshot_arns]") unless params[:snapshot_arns].nil?
        type.snapshot_name = params[:snapshot_name]
        type.snapshot_retention_limit = params[:snapshot_retention_limit]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.snapshot_window = params[:snapshot_window]
        type.acl_name = params[:acl_name]
        type.engine_version = params[:engine_version]
        type.auto_minor_version_upgrade = params[:auto_minor_version_upgrade]
        type
      end
    end

    module CreateClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateClusterOutput, context: context)
        type = Types::CreateClusterOutput.new
        type.cluster = Cluster.build(params[:cluster], context: "#{context}[:cluster]") unless params[:cluster].nil?
        type
      end
    end

    module CreateParameterGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateParameterGroupInput, context: context)
        type = Types::CreateParameterGroupInput.new
        type.parameter_group_name = params[:parameter_group_name]
        type.family = params[:family]
        type.description = params[:description]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateParameterGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateParameterGroupOutput, context: context)
        type = Types::CreateParameterGroupOutput.new
        type.parameter_group = ParameterGroup.build(params[:parameter_group], context: "#{context}[:parameter_group]") unless params[:parameter_group].nil?
        type
      end
    end

    module CreateSnapshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSnapshotInput, context: context)
        type = Types::CreateSnapshotInput.new
        type.cluster_name = params[:cluster_name]
        type.snapshot_name = params[:snapshot_name]
        type.kms_key_id = params[:kms_key_id]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateSnapshotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSnapshotOutput, context: context)
        type = Types::CreateSnapshotOutput.new
        type.snapshot = Snapshot.build(params[:snapshot], context: "#{context}[:snapshot]") unless params[:snapshot].nil?
        type
      end
    end

    module CreateSubnetGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSubnetGroupInput, context: context)
        type = Types::CreateSubnetGroupInput.new
        type.subnet_group_name = params[:subnet_group_name]
        type.description = params[:description]
        type.subnet_ids = SubnetIdentifierList.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateSubnetGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSubnetGroupOutput, context: context)
        type = Types::CreateSubnetGroupOutput.new
        type.subnet_group = SubnetGroup.build(params[:subnet_group], context: "#{context}[:subnet_group]") unless params[:subnet_group].nil?
        type
      end
    end

    module CreateUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUserInput, context: context)
        type = Types::CreateUserInput.new
        type.user_name = params[:user_name]
        type.authentication_mode = AuthenticationMode.build(params[:authentication_mode], context: "#{context}[:authentication_mode]") unless params[:authentication_mode].nil?
        type.access_string = params[:access_string]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUserOutput, context: context)
        type = Types::CreateUserOutput.new
        type.user = User.build(params[:user], context: "#{context}[:user]") unless params[:user].nil?
        type
      end
    end

    module DefaultUserRequired
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DefaultUserRequired, context: context)
        type = Types::DefaultUserRequired.new
        type.message = params[:message]
        type
      end
    end

    module DeleteACLInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteACLInput, context: context)
        type = Types::DeleteACLInput.new
        type.acl_name = params[:acl_name]
        type
      end
    end

    module DeleteACLOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteACLOutput, context: context)
        type = Types::DeleteACLOutput.new
        type.acl = ACL.build(params[:acl], context: "#{context}[:acl]") unless params[:acl].nil?
        type
      end
    end

    module DeleteClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteClusterInput, context: context)
        type = Types::DeleteClusterInput.new
        type.cluster_name = params[:cluster_name]
        type.final_snapshot_name = params[:final_snapshot_name]
        type
      end
    end

    module DeleteClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteClusterOutput, context: context)
        type = Types::DeleteClusterOutput.new
        type.cluster = Cluster.build(params[:cluster], context: "#{context}[:cluster]") unless params[:cluster].nil?
        type
      end
    end

    module DeleteParameterGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteParameterGroupInput, context: context)
        type = Types::DeleteParameterGroupInput.new
        type.parameter_group_name = params[:parameter_group_name]
        type
      end
    end

    module DeleteParameterGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteParameterGroupOutput, context: context)
        type = Types::DeleteParameterGroupOutput.new
        type.parameter_group = ParameterGroup.build(params[:parameter_group], context: "#{context}[:parameter_group]") unless params[:parameter_group].nil?
        type
      end
    end

    module DeleteSnapshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSnapshotInput, context: context)
        type = Types::DeleteSnapshotInput.new
        type.snapshot_name = params[:snapshot_name]
        type
      end
    end

    module DeleteSnapshotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSnapshotOutput, context: context)
        type = Types::DeleteSnapshotOutput.new
        type.snapshot = Snapshot.build(params[:snapshot], context: "#{context}[:snapshot]") unless params[:snapshot].nil?
        type
      end
    end

    module DeleteSubnetGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSubnetGroupInput, context: context)
        type = Types::DeleteSubnetGroupInput.new
        type.subnet_group_name = params[:subnet_group_name]
        type
      end
    end

    module DeleteSubnetGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSubnetGroupOutput, context: context)
        type = Types::DeleteSubnetGroupOutput.new
        type.subnet_group = SubnetGroup.build(params[:subnet_group], context: "#{context}[:subnet_group]") unless params[:subnet_group].nil?
        type
      end
    end

    module DeleteUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUserInput, context: context)
        type = Types::DeleteUserInput.new
        type.user_name = params[:user_name]
        type
      end
    end

    module DeleteUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUserOutput, context: context)
        type = Types::DeleteUserOutput.new
        type.user = User.build(params[:user], context: "#{context}[:user]") unless params[:user].nil?
        type
      end
    end

    module DescribeACLsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeACLsInput, context: context)
        type = Types::DescribeACLsInput.new
        type.acl_name = params[:acl_name]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeACLsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeACLsOutput, context: context)
        type = Types::DescribeACLsOutput.new
        type.ac_ls = ACLList.build(params[:ac_ls], context: "#{context}[:ac_ls]") unless params[:ac_ls].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeClustersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeClustersInput, context: context)
        type = Types::DescribeClustersInput.new
        type.cluster_name = params[:cluster_name]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.show_shard_details = params[:show_shard_details]
        type
      end
    end

    module DescribeClustersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeClustersOutput, context: context)
        type = Types::DescribeClustersOutput.new
        type.next_token = params[:next_token]
        type.clusters = ClusterList.build(params[:clusters], context: "#{context}[:clusters]") unless params[:clusters].nil?
        type
      end
    end

    module DescribeEngineVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEngineVersionsInput, context: context)
        type = Types::DescribeEngineVersionsInput.new
        type.engine_version = params[:engine_version]
        type.parameter_group_family = params[:parameter_group_family]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.default_only = params[:default_only]
        type
      end
    end

    module DescribeEngineVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEngineVersionsOutput, context: context)
        type = Types::DescribeEngineVersionsOutput.new
        type.next_token = params[:next_token]
        type.engine_versions = EngineVersionInfoList.build(params[:engine_versions], context: "#{context}[:engine_versions]") unless params[:engine_versions].nil?
        type
      end
    end

    module DescribeEventsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEventsInput, context: context)
        type = Types::DescribeEventsInput.new
        type.source_name = params[:source_name]
        type.source_type = params[:source_type]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.duration = params[:duration]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeEventsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEventsOutput, context: context)
        type = Types::DescribeEventsOutput.new
        type.next_token = params[:next_token]
        type.events = EventList.build(params[:events], context: "#{context}[:events]") unless params[:events].nil?
        type
      end
    end

    module DescribeParameterGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeParameterGroupsInput, context: context)
        type = Types::DescribeParameterGroupsInput.new
        type.parameter_group_name = params[:parameter_group_name]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeParameterGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeParameterGroupsOutput, context: context)
        type = Types::DescribeParameterGroupsOutput.new
        type.next_token = params[:next_token]
        type.parameter_groups = ParameterGroupList.build(params[:parameter_groups], context: "#{context}[:parameter_groups]") unless params[:parameter_groups].nil?
        type
      end
    end

    module DescribeParametersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeParametersInput, context: context)
        type = Types::DescribeParametersInput.new
        type.parameter_group_name = params[:parameter_group_name]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeParametersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeParametersOutput, context: context)
        type = Types::DescribeParametersOutput.new
        type.next_token = params[:next_token]
        type.parameters = ParametersList.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type
      end
    end

    module DescribeServiceUpdatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeServiceUpdatesInput, context: context)
        type = Types::DescribeServiceUpdatesInput.new
        type.service_update_name = params[:service_update_name]
        type.cluster_names = ClusterNameList.build(params[:cluster_names], context: "#{context}[:cluster_names]") unless params[:cluster_names].nil?
        type.status = ServiceUpdateStatusList.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeServiceUpdatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeServiceUpdatesOutput, context: context)
        type = Types::DescribeServiceUpdatesOutput.new
        type.next_token = params[:next_token]
        type.service_updates = ServiceUpdateList.build(params[:service_updates], context: "#{context}[:service_updates]") unless params[:service_updates].nil?
        type
      end
    end

    module DescribeSnapshotsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSnapshotsInput, context: context)
        type = Types::DescribeSnapshotsInput.new
        type.cluster_name = params[:cluster_name]
        type.snapshot_name = params[:snapshot_name]
        type.source = params[:source]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.show_detail = params[:show_detail]
        type
      end
    end

    module DescribeSnapshotsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSnapshotsOutput, context: context)
        type = Types::DescribeSnapshotsOutput.new
        type.next_token = params[:next_token]
        type.snapshots = SnapshotList.build(params[:snapshots], context: "#{context}[:snapshots]") unless params[:snapshots].nil?
        type
      end
    end

    module DescribeSubnetGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSubnetGroupsInput, context: context)
        type = Types::DescribeSubnetGroupsInput.new
        type.subnet_group_name = params[:subnet_group_name]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeSubnetGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSubnetGroupsOutput, context: context)
        type = Types::DescribeSubnetGroupsOutput.new
        type.next_token = params[:next_token]
        type.subnet_groups = SubnetGroupList.build(params[:subnet_groups], context: "#{context}[:subnet_groups]") unless params[:subnet_groups].nil?
        type
      end
    end

    module DescribeUsersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeUsersInput, context: context)
        type = Types::DescribeUsersInput.new
        type.user_name = params[:user_name]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeUsersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeUsersOutput, context: context)
        type = Types::DescribeUsersOutput.new
        type.users = UserList.build(params[:users], context: "#{context}[:users]") unless params[:users].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DuplicateUserNameFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DuplicateUserNameFault, context: context)
        type = Types::DuplicateUserNameFault.new
        type.message = params[:message]
        type
      end
    end

    module Endpoint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Endpoint, context: context)
        type = Types::Endpoint.new
        type.address = params[:address]
        type.port = params[:port]
        type
      end
    end

    module EngineVersionInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EngineVersionInfo, context: context)
        type = Types::EngineVersionInfo.new
        type.engine_version = params[:engine_version]
        type.engine_patch_version = params[:engine_patch_version]
        type.parameter_group_family = params[:parameter_group_family]
        type
      end
    end

    module EngineVersionInfoList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EngineVersionInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Event
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Event, context: context)
        type = Types::Event.new
        type.source_name = params[:source_name]
        type.source_type = params[:source_type]
        type.message = params[:message]
        type.date = params[:date]
        type
      end
    end

    module EventList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Event.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FailoverShardInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FailoverShardInput, context: context)
        type = Types::FailoverShardInput.new
        type.cluster_name = params[:cluster_name]
        type.shard_name = params[:shard_name]
        type
      end
    end

    module FailoverShardOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FailoverShardOutput, context: context)
        type = Types::FailoverShardOutput.new
        type.cluster = Cluster.build(params[:cluster], context: "#{context}[:cluster]") unless params[:cluster].nil?
        type
      end
    end

    module Filter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Filter, context: context)
        type = Types::Filter.new
        type.name = params[:name]
        type.values = FilterValueList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module FilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Filter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FilterValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InsufficientClusterCapacityFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InsufficientClusterCapacityFault, context: context)
        type = Types::InsufficientClusterCapacityFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidACLStateFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidACLStateFault, context: context)
        type = Types::InvalidACLStateFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidARNFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidARNFault, context: context)
        type = Types::InvalidARNFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidClusterStateFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidClusterStateFault, context: context)
        type = Types::InvalidClusterStateFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidCredentialsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidCredentialsException, context: context)
        type = Types::InvalidCredentialsException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidKMSKeyFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidKMSKeyFault, context: context)
        type = Types::InvalidKMSKeyFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidNodeStateFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidNodeStateFault, context: context)
        type = Types::InvalidNodeStateFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidParameterCombinationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidParameterCombinationException, context: context)
        type = Types::InvalidParameterCombinationException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidParameterGroupStateFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidParameterGroupStateFault, context: context)
        type = Types::InvalidParameterGroupStateFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidParameterValueException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidParameterValueException, context: context)
        type = Types::InvalidParameterValueException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidSnapshotStateFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidSnapshotStateFault, context: context)
        type = Types::InvalidSnapshotStateFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidSubnet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidSubnet, context: context)
        type = Types::InvalidSubnet.new
        type.message = params[:message]
        type
      end
    end

    module InvalidUserStateFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidUserStateFault, context: context)
        type = Types::InvalidUserStateFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidVPCNetworkStateFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidVPCNetworkStateFault, context: context)
        type = Types::InvalidVPCNetworkStateFault.new
        type.message = params[:message]
        type
      end
    end

    module KeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ListAllowedNodeTypeUpdatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAllowedNodeTypeUpdatesInput, context: context)
        type = Types::ListAllowedNodeTypeUpdatesInput.new
        type.cluster_name = params[:cluster_name]
        type
      end
    end

    module ListAllowedNodeTypeUpdatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAllowedNodeTypeUpdatesOutput, context: context)
        type = Types::ListAllowedNodeTypeUpdatesOutput.new
        type.scale_up_node_types = NodeTypeList.build(params[:scale_up_node_types], context: "#{context}[:scale_up_node_types]") unless params[:scale_up_node_types].nil?
        type.scale_down_node_types = NodeTypeList.build(params[:scale_down_node_types], context: "#{context}[:scale_down_node_types]") unless params[:scale_down_node_types].nil?
        type
      end
    end

    module ListTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsInput, context: context)
        type = Types::ListTagsInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsOutput, context: context)
        type = Types::ListTagsOutput.new
        type.tag_list = TagList.build(params[:tag_list], context: "#{context}[:tag_list]") unless params[:tag_list].nil?
        type
      end
    end

    module NoOperationFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NoOperationFault, context: context)
        type = Types::NoOperationFault.new
        type.message = params[:message]
        type
      end
    end

    module Node
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Node, context: context)
        type = Types::Node.new
        type.name = params[:name]
        type.status = params[:status]
        type.availability_zone = params[:availability_zone]
        type.create_time = params[:create_time]
        type.endpoint = Endpoint.build(params[:endpoint], context: "#{context}[:endpoint]") unless params[:endpoint].nil?
        type
      end
    end

    module NodeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Node.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NodeQuotaForClusterExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NodeQuotaForClusterExceededFault, context: context)
        type = Types::NodeQuotaForClusterExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module NodeQuotaForCustomerExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NodeQuotaForCustomerExceededFault, context: context)
        type = Types::NodeQuotaForCustomerExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module NodeTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Parameter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Parameter, context: context)
        type = Types::Parameter.new
        type.name = params[:name]
        type.value = params[:value]
        type.description = params[:description]
        type.data_type = params[:data_type]
        type.allowed_values = params[:allowed_values]
        type.minimum_engine_version = params[:minimum_engine_version]
        type
      end
    end

    module ParameterGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ParameterGroup, context: context)
        type = Types::ParameterGroup.new
        type.name = params[:name]
        type.family = params[:family]
        type.description = params[:description]
        type.arn = params[:arn]
        type
      end
    end

    module ParameterGroupAlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ParameterGroupAlreadyExistsFault, context: context)
        type = Types::ParameterGroupAlreadyExistsFault.new
        type.message = params[:message]
        type
      end
    end

    module ParameterGroupList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ParameterGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ParameterGroupNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ParameterGroupNotFoundFault, context: context)
        type = Types::ParameterGroupNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module ParameterGroupQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ParameterGroupQuotaExceededFault, context: context)
        type = Types::ParameterGroupQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module ParameterNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ParameterNameValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ParameterNameValue, context: context)
        type = Types::ParameterNameValue.new
        type.parameter_name = params[:parameter_name]
        type.parameter_value = params[:parameter_value]
        type
      end
    end

    module ParameterNameValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ParameterNameValue.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ParametersList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Parameter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PasswordListInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PendingModifiedServiceUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PendingModifiedServiceUpdate, context: context)
        type = Types::PendingModifiedServiceUpdate.new
        type.service_update_name = params[:service_update_name]
        type.status = params[:status]
        type
      end
    end

    module PendingModifiedServiceUpdateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PendingModifiedServiceUpdate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReplicaConfigurationRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplicaConfigurationRequest, context: context)
        type = Types::ReplicaConfigurationRequest.new
        type.replica_count = params[:replica_count]
        type
      end
    end

    module ResetParameterGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResetParameterGroupInput, context: context)
        type = Types::ResetParameterGroupInput.new
        type.parameter_group_name = params[:parameter_group_name]
        type.all_parameters = params[:all_parameters]
        type.parameter_names = ParameterNameList.build(params[:parameter_names], context: "#{context}[:parameter_names]") unless params[:parameter_names].nil?
        type
      end
    end

    module ResetParameterGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResetParameterGroupOutput, context: context)
        type = Types::ResetParameterGroupOutput.new
        type.parameter_group = ParameterGroup.build(params[:parameter_group], context: "#{context}[:parameter_group]") unless params[:parameter_group].nil?
        type
      end
    end

    module ReshardingStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReshardingStatus, context: context)
        type = Types::ReshardingStatus.new
        type.slot_migration = SlotMigration.build(params[:slot_migration], context: "#{context}[:slot_migration]") unless params[:slot_migration].nil?
        type
      end
    end

    module SecurityGroupIdsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SecurityGroupMembership
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SecurityGroupMembership, context: context)
        type = Types::SecurityGroupMembership.new
        type.security_group_id = params[:security_group_id]
        type.status = params[:status]
        type
      end
    end

    module SecurityGroupMembershipList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SecurityGroupMembership.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ServiceLinkedRoleNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceLinkedRoleNotFoundFault, context: context)
        type = Types::ServiceLinkedRoleNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module ServiceUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceUpdate, context: context)
        type = Types::ServiceUpdate.new
        type.cluster_name = params[:cluster_name]
        type.service_update_name = params[:service_update_name]
        type.release_date = params[:release_date]
        type.description = params[:description]
        type.status = params[:status]
        type.type = params[:type]
        type.nodes_updated = params[:nodes_updated]
        type.auto_update_start_date = params[:auto_update_start_date]
        type
      end
    end

    module ServiceUpdateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ServiceUpdate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ServiceUpdateNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceUpdateNotFoundFault, context: context)
        type = Types::ServiceUpdateNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module ServiceUpdateRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceUpdateRequest, context: context)
        type = Types::ServiceUpdateRequest.new
        type.service_update_name_to_apply = params[:service_update_name_to_apply]
        type
      end
    end

    module ServiceUpdateStatusList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Shard
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Shard, context: context)
        type = Types::Shard.new
        type.name = params[:name]
        type.status = params[:status]
        type.slots = params[:slots]
        type.nodes = NodeList.build(params[:nodes], context: "#{context}[:nodes]") unless params[:nodes].nil?
        type.number_of_nodes = params[:number_of_nodes]
        type
      end
    end

    module ShardConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ShardConfiguration, context: context)
        type = Types::ShardConfiguration.new
        type.slots = params[:slots]
        type.replica_count = params[:replica_count]
        type
      end
    end

    module ShardConfigurationRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ShardConfigurationRequest, context: context)
        type = Types::ShardConfigurationRequest.new
        type.shard_count = params[:shard_count]
        type
      end
    end

    module ShardDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ShardDetail, context: context)
        type = Types::ShardDetail.new
        type.name = params[:name]
        type.configuration = ShardConfiguration.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type.size = params[:size]
        type.snapshot_creation_time = params[:snapshot_creation_time]
        type
      end
    end

    module ShardDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ShardDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ShardList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Shard.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ShardNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ShardNotFoundFault, context: context)
        type = Types::ShardNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module ShardsPerClusterQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ShardsPerClusterQuotaExceededFault, context: context)
        type = Types::ShardsPerClusterQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module SlotMigration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SlotMigration, context: context)
        type = Types::SlotMigration.new
        type.progress_percentage = params[:progress_percentage]
        type
      end
    end

    module Snapshot
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Snapshot, context: context)
        type = Types::Snapshot.new
        type.name = params[:name]
        type.status = params[:status]
        type.source = params[:source]
        type.kms_key_id = params[:kms_key_id]
        type.arn = params[:arn]
        type.cluster_configuration = ClusterConfiguration.build(params[:cluster_configuration], context: "#{context}[:cluster_configuration]") unless params[:cluster_configuration].nil?
        type
      end
    end

    module SnapshotAlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SnapshotAlreadyExistsFault, context: context)
        type = Types::SnapshotAlreadyExistsFault.new
        type.message = params[:message]
        type
      end
    end

    module SnapshotArnsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SnapshotList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Snapshot.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SnapshotNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SnapshotNotFoundFault, context: context)
        type = Types::SnapshotNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module SnapshotQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SnapshotQuotaExceededFault, context: context)
        type = Types::SnapshotQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module Subnet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Subnet, context: context)
        type = Types::Subnet.new
        type.identifier = params[:identifier]
        type.availability_zone = AvailabilityZone.build(params[:availability_zone], context: "#{context}[:availability_zone]") unless params[:availability_zone].nil?
        type
      end
    end

    module SubnetGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubnetGroup, context: context)
        type = Types::SubnetGroup.new
        type.name = params[:name]
        type.description = params[:description]
        type.vpc_id = params[:vpc_id]
        type.subnets = SubnetList.build(params[:subnets], context: "#{context}[:subnets]") unless params[:subnets].nil?
        type.arn = params[:arn]
        type
      end
    end

    module SubnetGroupAlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubnetGroupAlreadyExistsFault, context: context)
        type = Types::SubnetGroupAlreadyExistsFault.new
        type.message = params[:message]
        type
      end
    end

    module SubnetGroupInUseFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubnetGroupInUseFault, context: context)
        type = Types::SubnetGroupInUseFault.new
        type.message = params[:message]
        type
      end
    end

    module SubnetGroupList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SubnetGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SubnetGroupNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubnetGroupNotFoundFault, context: context)
        type = Types::SubnetGroupNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module SubnetGroupQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubnetGroupQuotaExceededFault, context: context)
        type = Types::SubnetGroupQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module SubnetIdentifierList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SubnetInUse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubnetInUse, context: context)
        type = Types::SubnetInUse.new
        type.message = params[:message]
        type
      end
    end

    module SubnetList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Subnet.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SubnetNotAllowedFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubnetNotAllowedFault, context: context)
        type = Types::SubnetNotAllowedFault.new
        type.message = params[:message]
        type
      end
    end

    module SubnetQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubnetQuotaExceededFault, context: context)
        type = Types::SubnetQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module TagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagNotFoundFault, context: context)
        type = Types::TagNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module TagQuotaPerResourceExceeded
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagQuotaPerResourceExceeded, context: context)
        type = Types::TagQuotaPerResourceExceeded.new
        type.message = params[:message]
        type
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type.tag_list = TagList.build(params[:tag_list], context: "#{context}[:tag_list]") unless params[:tag_list].nil?
        type
      end
    end

    module TestFailoverNotAvailableFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TestFailoverNotAvailableFault, context: context)
        type = Types::TestFailoverNotAvailableFault.new
        type.message = params[:message]
        type
      end
    end

    module UnprocessedCluster
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnprocessedCluster, context: context)
        type = Types::UnprocessedCluster.new
        type.cluster_name = params[:cluster_name]
        type.error_type = params[:error_type]
        type.error_message = params[:error_message]
        type
      end
    end

    module UnprocessedClusterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UnprocessedCluster.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = KeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type.tag_list = TagList.build(params[:tag_list], context: "#{context}[:tag_list]") unless params[:tag_list].nil?
        type
      end
    end

    module UpdateACLInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateACLInput, context: context)
        type = Types::UpdateACLInput.new
        type.acl_name = params[:acl_name]
        type.user_names_to_add = UserNameListInput.build(params[:user_names_to_add], context: "#{context}[:user_names_to_add]") unless params[:user_names_to_add].nil?
        type.user_names_to_remove = UserNameListInput.build(params[:user_names_to_remove], context: "#{context}[:user_names_to_remove]") unless params[:user_names_to_remove].nil?
        type
      end
    end

    module UpdateACLOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateACLOutput, context: context)
        type = Types::UpdateACLOutput.new
        type.acl = ACL.build(params[:acl], context: "#{context}[:acl]") unless params[:acl].nil?
        type
      end
    end

    module UpdateClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateClusterInput, context: context)
        type = Types::UpdateClusterInput.new
        type.cluster_name = params[:cluster_name]
        type.description = params[:description]
        type.security_group_ids = SecurityGroupIdsList.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.maintenance_window = params[:maintenance_window]
        type.sns_topic_arn = params[:sns_topic_arn]
        type.sns_topic_status = params[:sns_topic_status]
        type.parameter_group_name = params[:parameter_group_name]
        type.snapshot_window = params[:snapshot_window]
        type.snapshot_retention_limit = params[:snapshot_retention_limit]
        type.node_type = params[:node_type]
        type.engine_version = params[:engine_version]
        type.replica_configuration = ReplicaConfigurationRequest.build(params[:replica_configuration], context: "#{context}[:replica_configuration]") unless params[:replica_configuration].nil?
        type.shard_configuration = ShardConfigurationRequest.build(params[:shard_configuration], context: "#{context}[:shard_configuration]") unless params[:shard_configuration].nil?
        type.acl_name = params[:acl_name]
        type
      end
    end

    module UpdateClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateClusterOutput, context: context)
        type = Types::UpdateClusterOutput.new
        type.cluster = Cluster.build(params[:cluster], context: "#{context}[:cluster]") unless params[:cluster].nil?
        type
      end
    end

    module UpdateParameterGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateParameterGroupInput, context: context)
        type = Types::UpdateParameterGroupInput.new
        type.parameter_group_name = params[:parameter_group_name]
        type.parameter_name_values = ParameterNameValueList.build(params[:parameter_name_values], context: "#{context}[:parameter_name_values]") unless params[:parameter_name_values].nil?
        type
      end
    end

    module UpdateParameterGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateParameterGroupOutput, context: context)
        type = Types::UpdateParameterGroupOutput.new
        type.parameter_group = ParameterGroup.build(params[:parameter_group], context: "#{context}[:parameter_group]") unless params[:parameter_group].nil?
        type
      end
    end

    module UpdateSubnetGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSubnetGroupInput, context: context)
        type = Types::UpdateSubnetGroupInput.new
        type.subnet_group_name = params[:subnet_group_name]
        type.description = params[:description]
        type.subnet_ids = SubnetIdentifierList.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type
      end
    end

    module UpdateSubnetGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSubnetGroupOutput, context: context)
        type = Types::UpdateSubnetGroupOutput.new
        type.subnet_group = SubnetGroup.build(params[:subnet_group], context: "#{context}[:subnet_group]") unless params[:subnet_group].nil?
        type
      end
    end

    module UpdateUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateUserInput, context: context)
        type = Types::UpdateUserInput.new
        type.user_name = params[:user_name]
        type.authentication_mode = AuthenticationMode.build(params[:authentication_mode], context: "#{context}[:authentication_mode]") unless params[:authentication_mode].nil?
        type.access_string = params[:access_string]
        type
      end
    end

    module UpdateUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateUserOutput, context: context)
        type = Types::UpdateUserOutput.new
        type.user = User.build(params[:user], context: "#{context}[:user]") unless params[:user].nil?
        type
      end
    end

    module User
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::User, context: context)
        type = Types::User.new
        type.name = params[:name]
        type.status = params[:status]
        type.access_string = params[:access_string]
        type.acl_names = ACLNameList.build(params[:acl_names], context: "#{context}[:acl_names]") unless params[:acl_names].nil?
        type.minimum_engine_version = params[:minimum_engine_version]
        type.authentication = Authentication.build(params[:authentication], context: "#{context}[:authentication]") unless params[:authentication].nil?
        type.arn = params[:arn]
        type
      end
    end

    module UserAlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserAlreadyExistsFault, context: context)
        type = Types::UserAlreadyExistsFault.new
        type.message = params[:message]
        type
      end
    end

    module UserList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << User.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UserNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module UserNameListInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module UserNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserNotFoundFault, context: context)
        type = Types::UserNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module UserQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserQuotaExceededFault, context: context)
        type = Types::UserQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

  end
end
