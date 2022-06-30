# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MemoryDB
  module Types

    # <p>An Access Control List. You can authenticate users with Access Contol Lists.
    #
    #          ACLs enable you to control cluster access by grouping users. These Access control lists are designed as a way to organize access to clusters.</p>
    #
    # @!attribute name
    #   <p>The name of the Access Control List</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Indicates ACL status. Can be "creating", "active", "modifying", "deleting".</p>
    #
    #   @return [String]
    #
    # @!attribute user_names
    #   <p>The list of user names that belong to the ACL.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute minimum_engine_version
    #   <p>The minimum engine version supported for the ACL</p>
    #
    #   @return [String]
    #
    # @!attribute pending_changes
    #   <p>A list of updates being applied to the ACL.</p>
    #
    #   @return [ACLPendingChanges]
    #
    # @!attribute clusters
    #   <p>A list of clusters associated with the ACL.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the ACL</p>
    #
    #   @return [String]
    #
    ACL = ::Struct.new(
      :name,
      :status,
      :user_names,
      :minimum_engine_version,
      :pending_changes,
      :clusters,
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ACLAlreadyExistsFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ACLNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns the updates being applied to the ACL.</p>
    #
    # @!attribute user_names_to_remove
    #   <p>A list of user names being removed from the ACL</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute user_names_to_add
    #   <p>A list of users being added to the ACL</p>
    #
    #   @return [Array<String>]
    #
    ACLPendingChanges = ::Struct.new(
      :user_names_to_remove,
      :user_names_to_add,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ACLQuotaExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The status of the ACL update</p>
    #
    # @!attribute acl_to_apply
    #   <p>A list of ACLs pending to be applied.</p>
    #
    #   @return [String]
    #
    ACLsUpdateStatus = ::Struct.new(
      :acl_to_apply,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    APICallRateForCustomerExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AZStatus
    #
    module AZStatus
      # No documentation available.
      #
      SingleAZ = "singleaz"

      # No documentation available.
      #
      MultiAZ = "multiaz"
    end

    # <p>Denotes the user's authentication properties, such as whether it requires a password to authenticate. Used in output responses.</p>
    #
    # @!attribute type
    #   <p>Indicates whether the user requires a password to authenticate.</p>
    #
    #   Enum, one of: ["password", "no-password"]
    #
    #   @return [String]
    #
    # @!attribute password_count
    #   <p>The number of passwords belonging to the user. The maximum is two.</p>
    #
    #   @return [Integer]
    #
    Authentication = ::Struct.new(
      :type,
      :password_count,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Denotes the user's authentication properties, such as whether it requires a password to authenticate. Used in output responses.</p>
    #
    # @!attribute type
    #   <p>Indicates whether the user requires a password to authenticate. All newly-created users require a password.</p>
    #
    #   Enum, one of: ["password"]
    #
    #   @return [String]
    #
    # @!attribute passwords
    #   <p>The password(s) used for authentication</p>
    #
    #   @return [Array<String>]
    #
    AuthenticationMode = ::Struct.new(
      :type,
      :passwords,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AuthenticationType
    #
    module AuthenticationType
      # No documentation available.
      #
      PASSWORD = "password"

      # No documentation available.
      #
      NO_PASSWORD = "no-password"
    end

    # <p>Indicates if the cluster has a Multi-AZ configuration (multiaz) or not (singleaz).</p>
    #
    # @!attribute name
    #   <p>The name of the Availability Zone.</p>
    #
    #   @return [String]
    #
    AvailabilityZone = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_names
    #   <p>The cluster names to apply the updates.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute service_update
    #   <p>The unique ID of the service update</p>
    #
    #   @return [ServiceUpdateRequest]
    #
    BatchUpdateClusterInput = ::Struct.new(
      :cluster_names,
      :service_update,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute processed_clusters
    #   <p>The list of clusters that have been updated.</p>
    #
    #   @return [Array<Cluster>]
    #
    # @!attribute unprocessed_clusters
    #   <p>The list of clusters where updates have not been applied.</p>
    #
    #   @return [Array<UnprocessedCluster>]
    #
    BatchUpdateClusterOutput = ::Struct.new(
      :processed_clusters,
      :unprocessed_clusters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains all of the attributes of a specific cluster.</p>
    #
    # @!attribute name
    #   <p>The user-supplied name of the cluster. This identifier is a unique key that identifies a cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the cluster</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the cluster. For example, Available, Updating, Creating.</p>
    #
    #   @return [String]
    #
    # @!attribute pending_updates
    #   <p>A group of settings that are currently being applied.</p>
    #
    #   @return [ClusterPendingUpdates]
    #
    # @!attribute number_of_shards
    #   <p>The number of shards in the cluster</p>
    #
    #   @return [Integer]
    #
    # @!attribute shards
    #   <p>A list of shards that are members of the cluster.</p>
    #
    #   @return [Array<Shard>]
    #
    # @!attribute availability_mode
    #   <p>Indicates if the cluster has a Multi-AZ configuration (multiaz) or not (singleaz).</p>
    #
    #   Enum, one of: ["singleaz", "multiaz"]
    #
    #   @return [String]
    #
    # @!attribute cluster_endpoint
    #   <p>The cluster's configuration endpoint</p>
    #
    #   @return [Endpoint]
    #
    # @!attribute node_type
    #   <p>The cluster's node type</p>
    #
    #   @return [String]
    #
    # @!attribute engine_version
    #   <p>The Redis engine version used by the cluster</p>
    #
    #   @return [String]
    #
    # @!attribute engine_patch_version
    #   <p>The Redis engine patch version used by the cluster</p>
    #
    #   @return [String]
    #
    # @!attribute parameter_group_name
    #   <p>The name of the parameter group used by the cluster</p>
    #
    #   @return [String]
    #
    # @!attribute parameter_group_status
    #   <p>The status of the parameter group used by the cluster, for example 'active' or 'applying'.</p>
    #
    #   @return [String]
    #
    # @!attribute security_groups
    #   <p>A list of security groups used by the cluster</p>
    #
    #   @return [Array<SecurityGroupMembership>]
    #
    # @!attribute subnet_group_name
    #   <p>The name of the subnet group used by the cluster</p>
    #
    #   @return [String]
    #
    # @!attribute tls_enabled
    #   <p>A flag to indicate if In-transit encryption is enabled</p>
    #
    #   @return [Boolean]
    #
    # @!attribute kms_key_id
    #   <p>The ID of the KMS key used to encrypt the cluster</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute sns_topic_arn
    #   <p>The Amazon Resource Name (ARN) of the SNS notification topic</p>
    #
    #   @return [String]
    #
    # @!attribute sns_topic_status
    #   <p>The SNS topic must be in Active status to receive notifications</p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_retention_limit
    #   <p>The number of days for which MemoryDB retains automatic snapshots before deleting them. For example, if you set SnapshotRetentionLimit to 5, a snapshot that was taken today is retained for 5 days before being deleted.</p>
    #
    #   @return [Integer]
    #
    # @!attribute maintenance_window
    #   <p>Specifies the weekly time range during which maintenance on the cluster is performed. It is specified as a range in the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window is a 60 minute period. </p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_window
    #   <p>The daily time range (in UTC) during which MemoryDB begins taking a daily snapshot of your shard.
    #
    #            Example: 05:00-09:00
    #
    #            If you do not specify this parameter, MemoryDB automatically chooses an appropriate time range.</p>
    #
    #   @return [String]
    #
    # @!attribute acl_name
    #   <p>The name of the Access Control List associated with this cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute auto_minor_version_upgrade
    #   <p>When set to true, the cluster will automatically receive minor engine version upgrades after launch.</p>
    #
    #   @return [Boolean]
    #
    Cluster = ::Struct.new(
      :name,
      :description,
      :status,
      :pending_updates,
      :number_of_shards,
      :shards,
      :availability_mode,
      :cluster_endpoint,
      :node_type,
      :engine_version,
      :engine_patch_version,
      :parameter_group_name,
      :parameter_group_status,
      :security_groups,
      :subnet_group_name,
      :tls_enabled,
      :kms_key_id,
      :arn,
      :sns_topic_arn,
      :sns_topic_status,
      :snapshot_retention_limit,
      :maintenance_window,
      :snapshot_window,
      :acl_name,
      :auto_minor_version_upgrade,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ClusterAlreadyExistsFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of cluster configuration options. </p>
    #
    # @!attribute name
    #   <p>The name of the cluster</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the cluster configuration</p>
    #
    #   @return [String]
    #
    # @!attribute node_type
    #   <p>The node type used for the cluster</p>
    #
    #   @return [String]
    #
    # @!attribute engine_version
    #   <p>The Redis engine version used by the cluster</p>
    #
    #   @return [String]
    #
    # @!attribute maintenance_window
    #   <p>The specified maintenance window for the cluster</p>
    #
    #   @return [String]
    #
    # @!attribute topic_arn
    #   <p>The Amazon Resource Name (ARN) of the SNS notification topic for the cluster</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>The port used by the cluster</p>
    #
    #   @return [Integer]
    #
    # @!attribute parameter_group_name
    #   <p>The name of parameter group used by the cluster</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_group_name
    #   <p>The name of the subnet group used by the cluster</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>The ID of the VPC the cluster belongs to</p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_retention_limit
    #   <p>The snapshot retention limit set by the cluster</p>
    #
    #   @return [Integer]
    #
    # @!attribute snapshot_window
    #   <p>The snapshot window set by the cluster</p>
    #
    #   @return [String]
    #
    # @!attribute num_shards
    #   <p>The number of shards in the cluster</p>
    #
    #   @return [Integer]
    #
    # @!attribute shards
    #   <p>The list of shards in the cluster</p>
    #
    #   @return [Array<ShardDetail>]
    #
    ClusterConfiguration = ::Struct.new(
      :name,
      :description,
      :node_type,
      :engine_version,
      :maintenance_window,
      :topic_arn,
      :port,
      :parameter_group_name,
      :subnet_group_name,
      :vpc_id,
      :snapshot_retention_limit,
      :snapshot_window,
      :num_shards,
      :shards,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ClusterNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of updates being applied to the cluster</p>
    #
    # @!attribute resharding
    #   <p>The status of an online resharding operation.</p>
    #
    #   @return [ReshardingStatus]
    #
    # @!attribute ac_ls
    #   <p>A list of ACLs associated with the cluster that are being updated</p>
    #
    #   @return [ACLsUpdateStatus]
    #
    # @!attribute service_updates
    #   <p>A list of service updates being applied to the cluster</p>
    #
    #   @return [Array<PendingModifiedServiceUpdate>]
    #
    ClusterPendingUpdates = ::Struct.new(
      :resharding,
      :ac_ls,
      :service_updates,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ClusterQuotaForCustomerExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute source_snapshot_name
    #   <p>The name of an existing snapshot from which to make a copy.</p>
    #
    #   @return [String]
    #
    # @!attribute target_snapshot_name
    #   <p>A name for the snapshot copy. MemoryDB does not permit overwriting a snapshot, therefore this name must be unique within its context - MemoryDB or an Amazon S3 bucket if exporting.</p>
    #
    #   @return [String]
    #
    # @!attribute target_bucket
    #   <p>The Amazon S3 bucket to which the snapshot is exported. This parameter is used only when exporting a snapshot for external access.
    #
    #          When using this parameter to export a snapshot, be sure MemoryDB has the needed permissions to this S3 bucket. For more information, see
    #
    #          <a href="https://docs.aws.amazon.com/MemoryDB/latest/devguide/snapshots-exporting.html">Step 2: Grant MemoryDB Access to Your Amazon S3 Bucket</a>.
    #
    #        </p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_id
    #   <p>The ID of the KMS key used to encrypt the target snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value, although null is accepted.</p>
    #
    #   @return [Array<Tag>]
    #
    CopySnapshotInput = ::Struct.new(
      :source_snapshot_name,
      :target_snapshot_name,
      :target_bucket,
      :kms_key_id,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute snapshot
    #   <p>Represents a copy of an entire cluster as of the time when the snapshot was taken.</p>
    #
    #   @return [Snapshot]
    #
    CopySnapshotOutput = ::Struct.new(
      :snapshot,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute acl_name
    #   <p>The name of the Access Control List.</p>
    #
    #   @return [String]
    #
    # @!attribute user_names
    #   <p>The list of users that belong to the Access Control List.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tags
    #   <p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value, although null is accepted.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateACLInput = ::Struct.new(
      :acl_name,
      :user_names,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute acl
    #   <p>The newly-created Access Control List.</p>
    #
    #   @return [ACL]
    #
    CreateACLOutput = ::Struct.new(
      :acl,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of the cluster. This value must be unique as it also serves as the cluster identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute node_type
    #   <p>The compute and memory capacity of the nodes in the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute parameter_group_name
    #   <p>The name of the parameter group associated with the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>An optional description of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute num_shards
    #   <p>The number of shards the cluster will contain. The default value is 1. </p>
    #
    #   @return [Integer]
    #
    # @!attribute num_replicas_per_shard
    #   <p>The number of replicas to apply to each shard. The default value is 1. The maximum is 5. </p>
    #
    #   @return [Integer]
    #
    # @!attribute subnet_group_name
    #   <p>The name of the subnet group to be used for the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute security_group_ids
    #   <p>A list of security group names to associate with this cluster.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute maintenance_window
    #   <p>Specifies the weekly time range during which maintenance on the cluster is performed. It is specified as a range in the format <code>ddd:hh24:mi-ddd:hh24:mi</code> (24H Clock UTC). The minimum maintenance window is a 60 minute period.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>The port number on which each of the nodes accepts connections.</p>
    #
    #   @return [Integer]
    #
    # @!attribute sns_topic_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Simple Notification Service (SNS) topic to which notifications are sent.</p>
    #
    #   @return [String]
    #
    # @!attribute tls_enabled
    #   <p>A flag to enable in-transit encryption on the cluster.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute kms_key_id
    #   <p>The ID of the KMS key used to encrypt the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_arns
    #   <p>A list of Amazon Resource Names (ARN) that uniquely identify the RDB snapshot files stored in Amazon S3. The snapshot files are used to populate the new cluster. The Amazon S3 object name in the ARN cannot contain any commas.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute snapshot_name
    #   <p>The name of a snapshot from which to restore data into the new cluster. The snapshot status changes to restoring while the new cluster is being created.</p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_retention_limit
    #   <p>The number of days for which MemoryDB retains automatic snapshots before deleting them. For example, if you set SnapshotRetentionLimit to 5, a snapshot that was taken today is retained for 5 days before being deleted.</p>
    #
    #   @return [Integer]
    #
    # @!attribute tags
    #   <p>A list of tags to be added to this resource. Tags are comma-separated key,value pairs (e.g. Key=myKey, Value=myKeyValue. You can include multiple tags as shown following: Key=myKey, Value=myKeyValue Key=mySecondKey, Value=mySecondKeyValue.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute snapshot_window
    #   <p>The daily time range (in UTC) during which MemoryDB begins taking a daily snapshot of your shard.</p>
    #
    #            <p>    Example: 05:00-09:00</p>
    #
    #            <p>    If you do not specify this parameter, MemoryDB automatically chooses an appropriate time range.</p>
    #
    #   @return [String]
    #
    # @!attribute acl_name
    #   <p>The name of the Access Control List to associate with the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute engine_version
    #   <p>The version number of the Redis engine to be used for the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute auto_minor_version_upgrade
    #   <p>When set to true, the cluster will automatically receive minor engine version upgrades after launch.</p>
    #
    #   @return [Boolean]
    #
    CreateClusterInput = ::Struct.new(
      :cluster_name,
      :node_type,
      :parameter_group_name,
      :description,
      :num_shards,
      :num_replicas_per_shard,
      :subnet_group_name,
      :security_group_ids,
      :maintenance_window,
      :port,
      :sns_topic_arn,
      :tls_enabled,
      :kms_key_id,
      :snapshot_arns,
      :snapshot_name,
      :snapshot_retention_limit,
      :tags,
      :snapshot_window,
      :acl_name,
      :engine_version,
      :auto_minor_version_upgrade,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster
    #   <p>The newly-created cluster.</p>
    #
    #   @return [Cluster]
    #
    CreateClusterOutput = ::Struct.new(
      :cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute parameter_group_name
    #   <p>The name of the parameter group.</p>
    #
    #   @return [String]
    #
    # @!attribute family
    #   <p>The name of the parameter group family that the parameter group can be used with.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>An optional description of the parameter group.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value, although null is accepted.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateParameterGroupInput = ::Struct.new(
      :parameter_group_name,
      :family,
      :description,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute parameter_group
    #   <p>The newly-created parameter group.</p>
    #
    #   @return [ParameterGroup]
    #
    CreateParameterGroupOutput = ::Struct.new(
      :parameter_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_name
    #   <p>The snapshot is created from this cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_name
    #   <p>A name for the snapshot being created.</p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_id
    #   <p>The ID of the KMS key used to encrypt the snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value, although null is accepted.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateSnapshotInput = ::Struct.new(
      :cluster_name,
      :snapshot_name,
      :kms_key_id,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute snapshot
    #   <p>The newly-created snapshot.</p>
    #
    #   @return [Snapshot]
    #
    CreateSnapshotOutput = ::Struct.new(
      :snapshot,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute subnet_group_name
    #   <p>The name of the subnet group.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description for the subnet group.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_ids
    #   <p>A list of VPC subnet IDs for the subnet group.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tags
    #   <p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value, although null is accepted.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateSubnetGroupInput = ::Struct.new(
      :subnet_group_name,
      :description,
      :subnet_ids,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute subnet_group
    #   <p>The newly-created subnet group</p>
    #
    #   @return [SubnetGroup]
    #
    CreateSubnetGroupOutput = ::Struct.new(
      :subnet_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_name
    #   <p>The name of the user. This value must be unique as it also serves as the user identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute authentication_mode
    #   <p>Denotes the user's authentication properties, such as whether it requires a password to authenticate.</p>
    #
    #   @return [AuthenticationMode]
    #
    # @!attribute access_string
    #   <p>Access permissions string used for this user.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value, although null is accepted.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateUserInput = ::Struct.new(
      :user_name,
      :authentication_mode,
      :access_string,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user
    #   <p>The newly-created user.</p>
    #
    #   @return [User]
    #
    CreateUserOutput = ::Struct.new(
      :user,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DefaultUserRequired = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute acl_name
    #   <p>The name of the Access Control List to delete</p>
    #
    #   @return [String]
    #
    DeleteACLInput = ::Struct.new(
      :acl_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute acl
    #   <p>The Access Control List object that has been deleted.</p>
    #
    #   @return [ACL]
    #
    DeleteACLOutput = ::Struct.new(
      :acl,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of the cluster to be deleted</p>
    #
    #   @return [String]
    #
    # @!attribute final_snapshot_name
    #   <p>The user-supplied name of a final cluster snapshot. This is the unique name that identifies the snapshot. MemoryDB creates the snapshot, and then deletes the cluster immediately afterward.</p>
    #
    #   @return [String]
    #
    DeleteClusterInput = ::Struct.new(
      :cluster_name,
      :final_snapshot_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster
    #   <p>The cluster object that has been deleted</p>
    #
    #   @return [Cluster]
    #
    DeleteClusterOutput = ::Struct.new(
      :cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute parameter_group_name
    #   <p>The name of the parameter group to delete.</p>
    #
    #   @return [String]
    #
    DeleteParameterGroupInput = ::Struct.new(
      :parameter_group_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute parameter_group
    #   <p>The parameter group that has been deleted.</p>
    #
    #   @return [ParameterGroup]
    #
    DeleteParameterGroupOutput = ::Struct.new(
      :parameter_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute snapshot_name
    #   <p>The name of the snapshot to delete</p>
    #
    #   @return [String]
    #
    DeleteSnapshotInput = ::Struct.new(
      :snapshot_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute snapshot
    #   <p>The snapshot object that has been deleted.</p>
    #
    #   @return [Snapshot]
    #
    DeleteSnapshotOutput = ::Struct.new(
      :snapshot,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute subnet_group_name
    #   <p>The name of the subnet group to delete</p>
    #
    #   @return [String]
    #
    DeleteSubnetGroupInput = ::Struct.new(
      :subnet_group_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute subnet_group
    #   <p>The subnet group object that has been deleted.</p>
    #
    #   @return [SubnetGroup]
    #
    DeleteSubnetGroupOutput = ::Struct.new(
      :subnet_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_name
    #   <p>The name of the user to delete</p>
    #
    #   @return [String]
    #
    DeleteUserInput = ::Struct.new(
      :user_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user
    #   <p>The user object that has been deleted.</p>
    #
    #   @return [User]
    #
    DeleteUserOutput = ::Struct.new(
      :user,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute acl_name
    #   <p>The name of the ACL</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    #
    #   @return [String]
    #
    DescribeACLsInput = ::Struct.new(
      :acl_name,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute ac_ls
    #   <p>The list of ACLs</p>
    #
    #   @return [Array<ACL>]
    #
    # @!attribute next_token
    #   <p>If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    #
    #   @return [String]
    #
    DescribeACLsOutput = ::Struct.new(
      :ac_ls,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of the cluster</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    #
    #   @return [String]
    #
    # @!attribute show_shard_details
    #   <p>An optional flag that can be included in the request to retrieve information about the individual shard(s).</p>
    #
    #   @return [Boolean]
    #
    DescribeClustersInput = ::Struct.new(
      :cluster_name,
      :max_results,
      :next_token,
      :show_shard_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    #
    #   @return [String]
    #
    # @!attribute clusters
    #   <p>A list of clusters</p>
    #
    #   @return [Array<Cluster>]
    #
    DescribeClustersOutput = ::Struct.new(
      :next_token,
      :clusters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute engine_version
    #   <p>The Redis engine version</p>
    #
    #   @return [String]
    #
    # @!attribute parameter_group_family
    #   <p>The name of a specific parameter group family to return details for.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    #
    #   @return [String]
    #
    # @!attribute default_only
    #   <p>If true, specifies that only the default version of the specified engine or engine and major version combination is to be returned.</p>
    #
    #   @return [Boolean]
    #
    DescribeEngineVersionsInput = ::Struct.new(
      :engine_version,
      :parameter_group_family,
      :max_results,
      :next_token,
      :default_only,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.default_only ||= false
      end

    end

    # @!attribute next_token
    #   <p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    #
    #   @return [String]
    #
    # @!attribute engine_versions
    #   <p>A list of engine version details. Each element in the list contains detailed information about one engine version.</p>
    #
    #   @return [Array<EngineVersionInfo>]
    #
    DescribeEngineVersionsOutput = ::Struct.new(
      :next_token,
      :engine_versions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute source_name
    #   <p>The identifier of the event source for which events are returned. If not specified, all sources are included in the response.</p>
    #
    #   @return [String]
    #
    # @!attribute source_type
    #   <p>The event source to retrieve events for. If no value is specified, all events are returned.</p>
    #
    #   Enum, one of: ["node", "parameter-group", "subnet-group", "cluster", "user", "acl"]
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The beginning of the time interval to retrieve events for, specified in ISO 8601 format.
    #
    #            Example: 2017-03-30T07:03:49.555Z</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The end of the time interval for which to retrieve events, specified in ISO 8601 format.
    #
    #            Example: 2017-03-30T07:03:49.555Z</p>
    #
    #   @return [Time]
    #
    # @!attribute duration
    #   <p>The number of minutes worth of events to retrieve.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_results
    #   <p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    #
    #   @return [String]
    #
    DescribeEventsInput = ::Struct.new(
      :source_name,
      :source_type,
      :start_time,
      :end_time,
      :duration,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    #
    #   @return [String]
    #
    # @!attribute events
    #   <p>A list of events. Each element in the list contains detailed information about one event.</p>
    #
    #   @return [Array<Event>]
    #
    DescribeEventsOutput = ::Struct.new(
      :next_token,
      :events,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute parameter_group_name
    #   <p>The name of a specific  parameter group to return details for.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    #
    #   @return [String]
    #
    DescribeParameterGroupsInput = ::Struct.new(
      :parameter_group_name,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    #
    #   @return [String]
    #
    # @!attribute parameter_groups
    #   <p>A list of parameter groups. Each element in the list contains detailed information about one parameter group.</p>
    #
    #   @return [Array<ParameterGroup>]
    #
    DescribeParameterGroupsOutput = ::Struct.new(
      :next_token,
      :parameter_groups,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute parameter_group_name
    #   <p>he name of a specific  parameter group to return details for.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    #
    #   @return [String]
    #
    DescribeParametersInput = ::Struct.new(
      :parameter_group_name,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>A list of parameters specific to a particular parameter group. Each element in the list contains detailed information about one parameter.</p>
    #
    #   @return [Array<Parameter>]
    #
    DescribeParametersOutput = ::Struct.new(
      :next_token,
      :parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_update_name
    #   <p>The unique ID of the service update to describe.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_names
    #   <p>The list of cluster names to identify service updates to apply</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute status
    #   <p>The status(es) of the service updates to filter on</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute max_results
    #   <p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    #
    #   @return [String]
    #
    DescribeServiceUpdatesInput = ::Struct.new(
      :service_update_name,
      :cluster_names,
      :status,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    #
    #   @return [String]
    #
    # @!attribute service_updates
    #   <p>A list of service updates</p>
    #
    #   @return [Array<ServiceUpdate>]
    #
    DescribeServiceUpdatesOutput = ::Struct.new(
      :next_token,
      :service_updates,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_name
    #   <p>A user-supplied cluster identifier. If this parameter is specified, only snapshots associated with that specific cluster are described.</p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_name
    #   <p>A user-supplied name of the snapshot. If this parameter is specified, only this named snapshot is described.</p>
    #
    #   @return [String]
    #
    # @!attribute source
    #   <p>If set to system, the output shows snapshots that were automatically created by MemoryDB. If set to user the output shows snapshots that were manually created. If omitted, the output shows both automatically and manually created snapshots.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>
    #
    #   @return [Integer]
    #
    # @!attribute show_detail
    #   <p>A Boolean value which if true, the shard configuration is included in the snapshot description.</p>
    #
    #   @return [Boolean]
    #
    DescribeSnapshotsInput = ::Struct.new(
      :cluster_name,
      :snapshot_name,
      :source,
      :next_token,
      :max_results,
      :show_detail,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    #
    #   @return [String]
    #
    # @!attribute snapshots
    #   <p>A list of snapshots. Each item in the list contains detailed information about one snapshot.</p>
    #
    #   @return [Array<Snapshot>]
    #
    DescribeSnapshotsOutput = ::Struct.new(
      :next_token,
      :snapshots,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute subnet_group_name
    #   <p>The name of the subnet group to return details for.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    #
    #   @return [String]
    #
    DescribeSubnetGroupsInput = ::Struct.new(
      :subnet_group_name,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    #
    #   @return [String]
    #
    # @!attribute subnet_groups
    #   <p>A list of subnet groups. Each element in the list contains detailed information about one group.</p>
    #
    #   @return [Array<SubnetGroup>]
    #
    DescribeSubnetGroupsOutput = ::Struct.new(
      :next_token,
      :subnet_groups,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_name
    #   <p>The name of the user</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>Filter to determine the list of users to return.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_results
    #   <p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    #
    #   @return [String]
    #
    DescribeUsersInput = ::Struct.new(
      :user_name,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute users
    #   <p>A list of users.</p>
    #
    #   @return [Array<User>]
    #
    # @!attribute next_token
    #   <p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    #
    #   @return [String]
    #
    DescribeUsersOutput = ::Struct.new(
      :users,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DuplicateUserNameFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the information required for client programs to connect to the cluster and its nodes.</p>
    #
    # @!attribute address
    #   <p>The DNS hostname of the node.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>The port number that the engine is listening on.</p>
    #
    #   @return [Integer]
    #
    Endpoint = ::Struct.new(
      :address,
      :port,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.port ||= 0
      end

    end

    # <p>Provides details of the Redis engine version</p>
    #
    # @!attribute engine_version
    #   <p>The engine version</p>
    #
    #   @return [String]
    #
    # @!attribute engine_patch_version
    #   <p>The patched engine version</p>
    #
    #   @return [String]
    #
    # @!attribute parameter_group_family
    #   <p>Specifies the name of the parameter group family to which the engine default parameters apply.</p>
    #
    #   @return [String]
    #
    EngineVersionInfo = ::Struct.new(
      :engine_version,
      :engine_patch_version,
      :parameter_group_family,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a single occurrence of something interesting within the system. Some examples of events are creating a cluster or adding or removing a
    #          node.</p>
    #
    # @!attribute source_name
    #   <p>The name for the source of the event. For example, if the event occurred at the cluster level, the identifier would be the name of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute source_type
    #   <p>Specifies the origin of this event - a cluster, a parameter group, a security group, etc.</p>
    #
    #   Enum, one of: ["node", "parameter-group", "subnet-group", "cluster", "user", "acl"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The text of the event.</p>
    #
    #   @return [String]
    #
    # @!attribute date
    #   <p>The date and time when the event occurred.</p>
    #
    #   @return [Time]
    #
    Event = ::Struct.new(
      :source_name,
      :source_type,
      :message,
      :date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_name
    #   <p>The cluster being failed over</p>
    #
    #   @return [String]
    #
    # @!attribute shard_name
    #   <p>The name of the shard</p>
    #
    #   @return [String]
    #
    FailoverShardInput = ::Struct.new(
      :cluster_name,
      :shard_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster
    #   <p>The cluster being failed over</p>
    #
    #   @return [Cluster]
    #
    FailoverShardOutput = ::Struct.new(
      :cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Used to streamline results of a search based on the property being filtered.</p>
    #
    # @!attribute name
    #   <p>The property being filtered. For example, UserName.</p>
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The property values to filter on. For example, "user-123".</p>
    #
    #   @return [Array<String>]
    #
    Filter = ::Struct.new(
      :name,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for InputAuthenticationType
    #
    module InputAuthenticationType
      # No documentation available.
      #
      PASSWORD = "password"
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InsufficientClusterCapacityFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidACLStateFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidARNFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidClusterStateFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidCredentialsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidKMSKeyFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidNodeStateFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidParameterCombinationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidParameterGroupStateFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidParameterValueException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidSnapshotStateFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidSubnet = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidUserStateFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidVPCNetworkStateFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of the cluster you want to scale. MemoryDB uses the cluster name to identify the current node type being used by this cluster, and from that to create a list of node types
    #            you can scale up to.</p>
    #
    #   @return [String]
    #
    ListAllowedNodeTypeUpdatesInput = ::Struct.new(
      :cluster_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute scale_up_node_types
    #   <p>A list node types which you can use to scale up your cluster.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute scale_down_node_types
    #   <p>A list node types which you can use to scale down your cluster.</p>
    #
    #   @return [Array<String>]
    #
    ListAllowedNodeTypeUpdatesOutput = ::Struct.new(
      :scale_up_node_types,
      :scale_down_node_types,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which you want the list of tags</p>
    #
    #   @return [String]
    #
    ListTagsInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tag_list
    #   <p>A list of tags as key-value pairs.</p>
    #
    #   @return [Array<Tag>]
    #
    ListTagsOutput = ::Struct.new(
      :tag_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    NoOperationFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents an individual node within a cluster. Each node runs its own instance of the cluster's protocol-compliant caching software.</p>
    #
    # @!attribute name
    #   <p>The  node identifier. A node name is a numeric identifier (0001, 0002, etc.). The combination of cluster name, shard name and node name uniquely identifies every node used in a customer's Amazon account.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the service update on the node</p>
    #
    #   @return [String]
    #
    # @!attribute availability_zone
    #   <p>The Availability Zone in which the node resides</p>
    #
    #   @return [String]
    #
    # @!attribute create_time
    #   <p>The date and time when the node was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute endpoint
    #   <p>The hostname for connecting to this node.</p>
    #
    #   @return [Endpoint]
    #
    Node = ::Struct.new(
      :name,
      :status,
      :availability_zone,
      :create_time,
      :endpoint,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    NodeQuotaForClusterExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    NodeQuotaForCustomerExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes an individual setting that controls some aspect of MemoryDB behavior.</p>
    #
    # @!attribute name
    #   <p>The name of the parameter</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the parameter</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the parameter</p>
    #
    #   @return [String]
    #
    # @!attribute data_type
    #   <p>The parameter's data type</p>
    #
    #   @return [String]
    #
    # @!attribute allowed_values
    #   <p>The valid range of values for the parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute minimum_engine_version
    #   <p>The earliest engine version to which the parameter can apply.</p>
    #
    #   @return [String]
    #
    Parameter = ::Struct.new(
      :name,
      :value,
      :description,
      :data_type,
      :allowed_values,
      :minimum_engine_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a CreateParameterGroup operation. A parameter group represents a combination of specific values for the parameters that are passed to the engine software during startup.</p>
    #
    # @!attribute name
    #   <p>The name of the parameter group</p>
    #
    #   @return [String]
    #
    # @!attribute family
    #   <p>The name of the parameter group family that this  parameter group is compatible with.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the parameter group</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the parameter group</p>
    #
    #   @return [String]
    #
    ParameterGroup = ::Struct.new(
      :name,
      :family,
      :description,
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ParameterGroupAlreadyExistsFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ParameterGroupNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ParameterGroupQuotaExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a name-value pair that is used to update the value of a parameter.</p>
    #
    # @!attribute parameter_name
    #   <p>The name of the parameter</p>
    #
    #   @return [String]
    #
    # @!attribute parameter_value
    #   <p>The value of the parameter</p>
    #
    #   @return [String]
    #
    ParameterNameValue = ::Struct.new(
      :parameter_name,
      :parameter_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Update action that has yet to be processed for the corresponding apply/stop request</p>
    #
    # @!attribute service_update_name
    #   <p>The unique ID of the service update</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the service update</p>
    #
    #   Enum, one of: ["available", "in-progress", "complete", "scheduled"]
    #
    #   @return [String]
    #
    PendingModifiedServiceUpdate = ::Struct.new(
      :service_update_name,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A request to configure the number of replicas in a shard</p>
    #
    # @!attribute replica_count
    #   <p>The number of replicas to scale up or down to</p>
    #
    #   @return [Integer]
    #
    ReplicaConfigurationRequest = ::Struct.new(
      :replica_count,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.replica_count ||= 0
      end

    end

    # @!attribute parameter_group_name
    #   <p>The name of the parameter group to reset.</p>
    #
    #   @return [String]
    #
    # @!attribute all_parameters
    #   <p>If true, all parameters in the parameter group are reset to their default values. If false, only the parameters listed by ParameterNames are reset to their default values.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute parameter_names
    #   <p>An array of parameter names to reset to their default values. If AllParameters is true, do not use ParameterNames. If AllParameters is false, you must specify the name of at least one parameter to reset.</p>
    #
    #   @return [Array<String>]
    #
    ResetParameterGroupInput = ::Struct.new(
      :parameter_group_name,
      :all_parameters,
      :parameter_names,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.all_parameters ||= false
      end

    end

    # @!attribute parameter_group
    #   <p>The parameter group being reset.</p>
    #
    #   @return [ParameterGroup]
    #
    ResetParameterGroupOutput = ::Struct.new(
      :parameter_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The status of the online resharding</p>
    #
    # @!attribute slot_migration
    #   <p>The status of the online resharding slot migration</p>
    #
    #   @return [SlotMigration]
    #
    ReshardingStatus = ::Struct.new(
      :slot_migration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a single security group and its status.</p>
    #
    # @!attribute security_group_id
    #   <p>The identifier of the security group.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the security group membership. The status changes whenever a security group is modified, or when the security groups assigned to a cluster are modified.</p>
    #
    #   @return [String]
    #
    SecurityGroupMembership = ::Struct.new(
      :security_group_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ServiceLinkedRoleNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An update that you can apply to your MemoryDB clusters.</p>
    #
    # @!attribute cluster_name
    #   <p>The name of the cluster to which the service update applies</p>
    #
    #   @return [String]
    #
    # @!attribute service_update_name
    #   <p>The unique ID of the service update</p>
    #
    #   @return [String]
    #
    # @!attribute release_date
    #   <p>The date when the service update is initially available</p>
    #
    #   @return [Time]
    #
    # @!attribute description
    #   <p>Provides details of the service update</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the service update</p>
    #
    #   Enum, one of: ["available", "in-progress", "complete", "scheduled"]
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>Reflects the nature of the service update</p>
    #
    #   Enum, one of: ["security-update"]
    #
    #   @return [String]
    #
    # @!attribute nodes_updated
    #   <p>A list of nodes updated by the service update</p>
    #
    #   @return [String]
    #
    # @!attribute auto_update_start_date
    #   <p>The date at which the service update will be automatically applied</p>
    #
    #   @return [Time]
    #
    ServiceUpdate = ::Struct.new(
      :cluster_name,
      :service_update_name,
      :release_date,
      :description,
      :status,
      :type,
      :nodes_updated,
      :auto_update_start_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ServiceUpdateNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A request to apply a service update</p>
    #
    # @!attribute service_update_name_to_apply
    #   <p>The unique ID of the service update</p>
    #
    #   @return [String]
    #
    ServiceUpdateRequest = ::Struct.new(
      :service_update_name_to_apply,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ServiceUpdateStatus
    #
    module ServiceUpdateStatus
      # No documentation available.
      #
      NOT_APPLIED = "available"

      # No documentation available.
      #
      IN_PROGRESS = "in-progress"

      # No documentation available.
      #
      COMPLETE = "complete"

      # No documentation available.
      #
      SCHEDULED = "scheduled"
    end

    # Includes enum constants for ServiceUpdateType
    #
    module ServiceUpdateType
      # No documentation available.
      #
      SECURITY_UPDATE = "security-update"
    end

    # <p>Represents a collection of nodes in a cluster. One node in the node group is the read/write primary node. All the other nodes are read-only Replica nodes.</p>
    #
    # @!attribute name
    #   <p>The name of the shard</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current state of this replication group - creating, available, modifying, deleting.</p>
    #
    #   @return [String]
    #
    # @!attribute slots
    #   <p>The keyspace for this shard.</p>
    #
    #   @return [String]
    #
    # @!attribute nodes
    #   <p>A list containing information about individual nodes within the shard</p>
    #
    #   @return [Array<Node>]
    #
    # @!attribute number_of_nodes
    #   <p>The number of nodes in the shard</p>
    #
    #   @return [Integer]
    #
    Shard = ::Struct.new(
      :name,
      :status,
      :slots,
      :nodes,
      :number_of_nodes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Shard configuration options. Each shard configuration has the following: Slots and ReplicaCount.</p>
    #
    # @!attribute slots
    #   <p>A string that specifies the keyspace for a particular node group. Keyspaces range from 0 to 16,383. The string is in the format startkey-endkey.</p>
    #
    #   @return [String]
    #
    # @!attribute replica_count
    #   <p>The number of read replica nodes in this shard.</p>
    #
    #   @return [Integer]
    #
    ShardConfiguration = ::Struct.new(
      :slots,
      :replica_count,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A request to configure the sharding properties of a cluster</p>
    #
    # @!attribute shard_count
    #   <p>The number of shards in the cluster</p>
    #
    #   @return [Integer]
    #
    ShardConfigurationRequest = ::Struct.new(
      :shard_count,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.shard_count ||= 0
      end

    end

    # <p>Provides details of a shard in a snapshot</p>
    #
    # @!attribute name
    #   <p>The name of the shard</p>
    #
    #   @return [String]
    #
    # @!attribute configuration
    #   <p>The configuration details of the shard</p>
    #
    #   @return [ShardConfiguration]
    #
    # @!attribute size
    #   <p>The size of the shard's snapshot</p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_creation_time
    #   <p>The date and time that the shard's snapshot was created</p>
    #
    #   @return [Time]
    #
    ShardDetail = ::Struct.new(
      :name,
      :configuration,
      :size,
      :snapshot_creation_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ShardNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ShardsPerClusterQuotaExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the progress of an online resharding operation.</p>
    #
    # @!attribute progress_percentage
    #   <p>The percentage of the slot migration that is complete.</p>
    #
    #   @return [Float]
    #
    SlotMigration = ::Struct.new(
      :progress_percentage,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.progress_percentage ||= 0
      end

    end

    # <p>Represents a copy of an entire cluster as of the time when the snapshot was taken.</p>
    #
    # @!attribute name
    #   <p>The name of the snapshot</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the snapshot. Valid values: creating | available | restoring | copying | deleting.</p>
    #
    #   @return [String]
    #
    # @!attribute source
    #   <p>Indicates whether the snapshot is from an automatic backup (automated) or was created manually (manual).</p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_id
    #   <p>The ID of the KMS key used to encrypt the snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The ARN (Amazon Resource Name) of the snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_configuration
    #   <p>The configuration of the cluster from which the snapshot was taken</p>
    #
    #   @return [ClusterConfiguration]
    #
    Snapshot = ::Struct.new(
      :name,
      :status,
      :source,
      :kms_key_id,
      :arn,
      :cluster_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    SnapshotAlreadyExistsFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    SnapshotNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    SnapshotQuotaExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SourceType
    #
    module SourceType
      # No documentation available.
      #
      node = "node"

      # No documentation available.
      #
      parameter_group = "parameter-group"

      # No documentation available.
      #
      subnet_group = "subnet-group"

      # No documentation available.
      #
      cluster = "cluster"

      # No documentation available.
      #
      user = "user"

      # No documentation available.
      #
      acl = "acl"
    end

    # <p>Represents the subnet associated with a cluster. This parameter refers to subnets defined in Amazon Virtual Private Cloud (Amazon VPC) and used with MemoryDB.</p>
    #
    # @!attribute identifier
    #   <p>The unique identifier for the subnet.</p>
    #
    #   @return [String]
    #
    # @!attribute availability_zone
    #   <p>The Availability Zone where the subnet resides</p>
    #
    #   @return [AvailabilityZone]
    #
    Subnet = ::Struct.new(
      :identifier,
      :availability_zone,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of one of the following operations:</p>
    #          <ul>
    #             <li>
    #                <p>CreateSubnetGroup</p>
    #             </li>
    #             <li>
    #                <p>UpdateSubnetGroup</p>
    #             </li>
    #          </ul>
    #          <p>A subnet group is a collection of subnets (typically private) that you can designate for your clusters running in an Amazon Virtual Private Cloud (VPC) environment.</p>
    #
    # @!attribute name
    #   <p>The name of the subnet group</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the subnet group</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>The Amazon Virtual Private Cloud identifier (VPC ID) of the subnet group.</p>
    #
    #   @return [String]
    #
    # @!attribute subnets
    #   <p>A list of subnets associated with the subnet group.</p>
    #
    #   @return [Array<Subnet>]
    #
    # @!attribute arn
    #   <p>The ARN (Amazon Resource Name) of the subnet group.</p>
    #
    #   @return [String]
    #
    SubnetGroup = ::Struct.new(
      :name,
      :description,
      :vpc_id,
      :subnets,
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    SubnetGroupAlreadyExistsFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    SubnetGroupInUseFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    SubnetGroupNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    SubnetGroupQuotaExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    SubnetInUse = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    SubnetNotAllowedFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    SubnetQuotaExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A tag that can be added to an MemoryDB resource. Tags are composed of a Key/Value pair. You can use tags to categorize and track all your MemoryDB resources.
    #          When you add or remove tags on clusters, those actions will be replicated to all nodes in the cluster. A tag with a null Value is permitted. For more information, see
    #          <a href="https://docs.aws.amazon.com/MemoryDB/latest/devguide/tagging-resources.html">Tagging your MemoryDB resources</a>
    #          </p>
    #
    # @!attribute key
    #   <p>The key for the tag. May not be null.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The tag's value. May be null.</p>
    #
    #   @return [String]
    #
    Tag = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TagNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TagQuotaPerResourceExceeded = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to which the tags are to be added</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value, although null is accepted.</p>
    #
    #   @return [Array<Tag>]
    #
    TagResourceInput = ::Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tag_list
    #   <p>A list of tags as key-value pairs.</p>
    #
    #   @return [Array<Tag>]
    #
    TagResourceOutput = ::Struct.new(
      :tag_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TestFailoverNotAvailableFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A cluster whose updates have failed</p>
    #
    # @!attribute cluster_name
    #   <p>The name of the cluster</p>
    #
    #   @return [String]
    #
    # @!attribute error_type
    #   <p>The error type associated with the update failure</p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>The error message associated with the update failure</p>
    #
    #   @return [String]
    #
    UnprocessedCluster = ::Struct.new(
      :cluster_name,
      :error_type,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to which the tags are to be removed</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The list of keys of the tags that are to be removed</p>
    #
    #   @return [Array<String>]
    #
    UntagResourceInput = ::Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tag_list
    #   <p>The list of tags removed</p>
    #
    #   @return [Array<Tag>]
    #
    UntagResourceOutput = ::Struct.new(
      :tag_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute acl_name
    #   <p>The name of the Access Control List</p>
    #
    #   @return [String]
    #
    # @!attribute user_names_to_add
    #   <p>The list of users to add to the Access Control List</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute user_names_to_remove
    #   <p>The list of users to remove from the Access Control List</p>
    #
    #   @return [Array<String>]
    #
    UpdateACLInput = ::Struct.new(
      :acl_name,
      :user_names_to_add,
      :user_names_to_remove,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute acl
    #   <p>The updated Access Control List</p>
    #
    #   @return [ACL]
    #
    UpdateACLOutput = ::Struct.new(
      :acl,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of the cluster to update</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the cluster to update</p>
    #
    #   @return [String]
    #
    # @!attribute security_group_ids
    #   <p>The SecurityGroupIds to update</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute maintenance_window
    #   <p>The maintenance window to update</p>
    #
    #   @return [String]
    #
    # @!attribute sns_topic_arn
    #   <p>The SNS topic ARN to update</p>
    #
    #   @return [String]
    #
    # @!attribute sns_topic_status
    #   <p>The status of the Amazon SNS notification topic. Notifications are sent only if the status is active.</p>
    #
    #   @return [String]
    #
    # @!attribute parameter_group_name
    #   <p>The name of the parameter group to update</p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_window
    #   <p>The daily time range (in UTC) during which MemoryDB begins taking a daily snapshot of your cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_retention_limit
    #   <p>The number of days for which MemoryDB retains automatic cluster snapshots before deleting them. For example, if you set SnapshotRetentionLimit to 5, a snapshot that was taken today is retained for 5 days before being deleted.</p>
    #
    #   @return [Integer]
    #
    # @!attribute node_type
    #   <p>A valid node type that you want to scale this cluster up or down to.</p>
    #
    #   @return [String]
    #
    # @!attribute engine_version
    #   <p>The upgraded version of the engine to be run on the nodes. You can upgrade to a newer engine version, but you cannot downgrade to an earlier engine version. If you want to use an earlier engine version, you must delete the existing cluster and create it anew with the earlier engine version.</p>
    #
    #   @return [String]
    #
    # @!attribute replica_configuration
    #   <p>The number of replicas that will reside in each shard</p>
    #
    #   @return [ReplicaConfigurationRequest]
    #
    # @!attribute shard_configuration
    #   <p>The number of shards in the cluster</p>
    #
    #   @return [ShardConfigurationRequest]
    #
    # @!attribute acl_name
    #   <p>The Access Control List that is associated with the cluster</p>
    #
    #   @return [String]
    #
    UpdateClusterInput = ::Struct.new(
      :cluster_name,
      :description,
      :security_group_ids,
      :maintenance_window,
      :sns_topic_arn,
      :sns_topic_status,
      :parameter_group_name,
      :snapshot_window,
      :snapshot_retention_limit,
      :node_type,
      :engine_version,
      :replica_configuration,
      :shard_configuration,
      :acl_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster
    #   <p>The updated cluster</p>
    #
    #   @return [Cluster]
    #
    UpdateClusterOutput = ::Struct.new(
      :cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute parameter_group_name
    #   <p>The name of the parameter group to update.</p>
    #
    #   @return [String]
    #
    # @!attribute parameter_name_values
    #   <p>An array of parameter names and values for the parameter update. You must supply at least one parameter name and value; subsequent arguments are optional. A maximum of 20 parameters may be updated per request.</p>
    #
    #   @return [Array<ParameterNameValue>]
    #
    UpdateParameterGroupInput = ::Struct.new(
      :parameter_group_name,
      :parameter_name_values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute parameter_group
    #   <p>The updated parameter group</p>
    #
    #   @return [ParameterGroup]
    #
    UpdateParameterGroupOutput = ::Struct.new(
      :parameter_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute subnet_group_name
    #   <p>The name of the subnet group</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the subnet group</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_ids
    #   <p>The EC2 subnet IDs for the subnet group.</p>
    #
    #   @return [Array<String>]
    #
    UpdateSubnetGroupInput = ::Struct.new(
      :subnet_group_name,
      :description,
      :subnet_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute subnet_group
    #   <p>The updated subnet group</p>
    #
    #   @return [SubnetGroup]
    #
    UpdateSubnetGroupOutput = ::Struct.new(
      :subnet_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_name
    #   <p>The name of the user</p>
    #
    #   @return [String]
    #
    # @!attribute authentication_mode
    #   <p>Denotes the user's authentication properties, such as whether it requires a password to authenticate.</p>
    #
    #   @return [AuthenticationMode]
    #
    # @!attribute access_string
    #   <p>Access permissions string used for this user.</p>
    #
    #   @return [String]
    #
    UpdateUserInput = ::Struct.new(
      :user_name,
      :authentication_mode,
      :access_string,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user
    #   <p>The updated user</p>
    #
    #   @return [User]
    #
    UpdateUserOutput = ::Struct.new(
      :user,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You create users and assign them specific permissions by using an access string. You assign the users to Access Control Lists aligned with a specific role (administrators, human resources) that are then deployed to one or more MemoryDB clusters.</p>
    #
    # @!attribute name
    #   <p>The name of the user</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Indicates the user status. Can be "active", "modifying" or "deleting".</p>
    #
    #   @return [String]
    #
    # @!attribute access_string
    #   <p>Access permissions string used for this user.</p>
    #
    #   @return [String]
    #
    # @!attribute acl_names
    #   <p>The names of the Access Control Lists to which the user belongs</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute minimum_engine_version
    #   <p>The minimum engine version supported for the user</p>
    #
    #   @return [String]
    #
    # @!attribute authentication
    #   <p>Denotes whether the user requires a password to authenticate.</p>
    #
    #   @return [Authentication]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the user.
    #
    #         </p>
    #
    #   @return [String]
    #
    User = ::Struct.new(
      :name,
      :status,
      :access_string,
      :acl_names,
      :minimum_engine_version,
      :authentication,
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UserAlreadyExistsFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UserNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UserQuotaExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
