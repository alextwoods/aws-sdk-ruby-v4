# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::MemoryDB
  # An API client for AmazonMemoryDB
  # See {#initialize} for a full list of supported configuration options
  # <p>MemoryDB for Redis is a fully managed, Redis-compatible, in-memory database that delivers ultra-fast performance and Multi-AZ durability for modern applications built using microservices architectures.
  #
  #        MemoryDB stores the entire database in-memory, enabling low latency and high throughput data access. It is compatible with Redis, a popular open source data store, enabling you to leverage Redis’ flexible and friendly data structures, APIs, and commands.</p>
  #
  class Client
    include Hearth::ClientStubs

    @middleware = Hearth::MiddlewareBuilder.new

    def self.middleware
      @middleware
    end

    # @param [Config] config
    #   An instance of {Config}
    #
    def initialize(config = AWS::SDK::MemoryDB::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Apply the service update to a list of clusters supplied. For more information on service updates and applying them, see <a href="https://docs.aws.amazon.com/MemoryDB/latest/devguide/managing-updates.html#applying-updates">Applying the service updates</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchUpdateClusterInput}.
    #
    # @option params [Array<String>] :cluster_names
    #   <p>The cluster names to apply the updates.</p>
    #
    # @option params [ServiceUpdateRequest] :service_update
    #   <p>The unique ID of the service update</p>
    #
    # @return [Types::BatchUpdateClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_update_cluster(
    #     cluster_names: [
    #       'member'
    #     ], # required
    #     service_update: {
    #       service_update_name_to_apply: 'ServiceUpdateNameToApply'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchUpdateClusterOutput
    #   resp.data.processed_clusters #=> Array<Cluster>
    #   resp.data.processed_clusters[0] #=> Types::Cluster
    #   resp.data.processed_clusters[0].name #=> String
    #   resp.data.processed_clusters[0].description #=> String
    #   resp.data.processed_clusters[0].status #=> String
    #   resp.data.processed_clusters[0].pending_updates #=> Types::ClusterPendingUpdates
    #   resp.data.processed_clusters[0].pending_updates.resharding #=> Types::ReshardingStatus
    #   resp.data.processed_clusters[0].pending_updates.resharding.slot_migration #=> Types::SlotMigration
    #   resp.data.processed_clusters[0].pending_updates.resharding.slot_migration.progress_percentage #=> Float
    #   resp.data.processed_clusters[0].pending_updates.ac_ls #=> Types::ACLsUpdateStatus
    #   resp.data.processed_clusters[0].pending_updates.ac_ls.acl_to_apply #=> String
    #   resp.data.processed_clusters[0].pending_updates.service_updates #=> Array<PendingModifiedServiceUpdate>
    #   resp.data.processed_clusters[0].pending_updates.service_updates[0] #=> Types::PendingModifiedServiceUpdate
    #   resp.data.processed_clusters[0].pending_updates.service_updates[0].service_update_name #=> String
    #   resp.data.processed_clusters[0].pending_updates.service_updates[0].status #=> String, one of ["available", "in-progress", "complete", "scheduled"]
    #   resp.data.processed_clusters[0].number_of_shards #=> Integer
    #   resp.data.processed_clusters[0].shards #=> Array<Shard>
    #   resp.data.processed_clusters[0].shards[0] #=> Types::Shard
    #   resp.data.processed_clusters[0].shards[0].name #=> String
    #   resp.data.processed_clusters[0].shards[0].status #=> String
    #   resp.data.processed_clusters[0].shards[0].slots #=> String
    #   resp.data.processed_clusters[0].shards[0].nodes #=> Array<Node>
    #   resp.data.processed_clusters[0].shards[0].nodes[0] #=> Types::Node
    #   resp.data.processed_clusters[0].shards[0].nodes[0].name #=> String
    #   resp.data.processed_clusters[0].shards[0].nodes[0].status #=> String
    #   resp.data.processed_clusters[0].shards[0].nodes[0].availability_zone #=> String
    #   resp.data.processed_clusters[0].shards[0].nodes[0].create_time #=> Time
    #   resp.data.processed_clusters[0].shards[0].nodes[0].endpoint #=> Types::Endpoint
    #   resp.data.processed_clusters[0].shards[0].nodes[0].endpoint.address #=> String
    #   resp.data.processed_clusters[0].shards[0].nodes[0].endpoint.port #=> Integer
    #   resp.data.processed_clusters[0].shards[0].number_of_nodes #=> Integer
    #   resp.data.processed_clusters[0].availability_mode #=> String, one of ["singleaz", "multiaz"]
    #   resp.data.processed_clusters[0].cluster_endpoint #=> Types::Endpoint
    #   resp.data.processed_clusters[0].node_type #=> String
    #   resp.data.processed_clusters[0].engine_version #=> String
    #   resp.data.processed_clusters[0].engine_patch_version #=> String
    #   resp.data.processed_clusters[0].parameter_group_name #=> String
    #   resp.data.processed_clusters[0].parameter_group_status #=> String
    #   resp.data.processed_clusters[0].security_groups #=> Array<SecurityGroupMembership>
    #   resp.data.processed_clusters[0].security_groups[0] #=> Types::SecurityGroupMembership
    #   resp.data.processed_clusters[0].security_groups[0].security_group_id #=> String
    #   resp.data.processed_clusters[0].security_groups[0].status #=> String
    #   resp.data.processed_clusters[0].subnet_group_name #=> String
    #   resp.data.processed_clusters[0].tls_enabled #=> Boolean
    #   resp.data.processed_clusters[0].kms_key_id #=> String
    #   resp.data.processed_clusters[0].arn #=> String
    #   resp.data.processed_clusters[0].sns_topic_arn #=> String
    #   resp.data.processed_clusters[0].sns_topic_status #=> String
    #   resp.data.processed_clusters[0].snapshot_retention_limit #=> Integer
    #   resp.data.processed_clusters[0].maintenance_window #=> String
    #   resp.data.processed_clusters[0].snapshot_window #=> String
    #   resp.data.processed_clusters[0].acl_name #=> String
    #   resp.data.processed_clusters[0].auto_minor_version_upgrade #=> Boolean
    #   resp.data.unprocessed_clusters #=> Array<UnprocessedCluster>
    #   resp.data.unprocessed_clusters[0] #=> Types::UnprocessedCluster
    #   resp.data.unprocessed_clusters[0].cluster_name #=> String
    #   resp.data.unprocessed_clusters[0].error_type #=> String
    #   resp.data.unprocessed_clusters[0].error_message #=> String
    #
    def batch_update_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchUpdateClusterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchUpdateClusterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchUpdateCluster
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUpdateNotFoundFault, Errors::InvalidParameterValueException]),
        data_parser: Parsers::BatchUpdateCluster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchUpdateCluster,
        stubs: @stubs,
        params_class: Params::BatchUpdateClusterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_update_cluster
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Makes a copy of an existing snapshot.</p>
    #
    # @param [Hash] params
    #   See {Types::CopySnapshotInput}.
    #
    # @option params [String] :source_snapshot_name
    #   <p>The name of an existing snapshot from which to make a copy.</p>
    #
    # @option params [String] :target_snapshot_name
    #   <p>A name for the snapshot copy. MemoryDB does not permit overwriting a snapshot, therefore this name must be unique within its context - MemoryDB or an Amazon S3 bucket if exporting.</p>
    #
    # @option params [String] :target_bucket
    #   <p>The Amazon S3 bucket to which the snapshot is exported. This parameter is used only when exporting a snapshot for external access.
    #
    #          When using this parameter to export a snapshot, be sure MemoryDB has the needed permissions to this S3 bucket. For more information, see
    #
    #          <a href="https://docs.aws.amazon.com/MemoryDB/latest/devguide/snapshots-exporting.html">Step 2: Grant MemoryDB Access to Your Amazon S3 Bucket</a>.
    #
    #        </p>
    #
    # @option params [String] :kms_key_id
    #   <p>The ID of the KMS key used to encrypt the target snapshot.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value, although null is accepted.</p>
    #
    # @return [Types::CopySnapshotOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.copy_snapshot(
    #     source_snapshot_name: 'SourceSnapshotName', # required
    #     target_snapshot_name: 'TargetSnapshotName', # required
    #     target_bucket: 'TargetBucket',
    #     kms_key_id: 'KmsKeyId',
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CopySnapshotOutput
    #   resp.data.snapshot #=> Types::Snapshot
    #   resp.data.snapshot.name #=> String
    #   resp.data.snapshot.status #=> String
    #   resp.data.snapshot.source #=> String
    #   resp.data.snapshot.kms_key_id #=> String
    #   resp.data.snapshot.arn #=> String
    #   resp.data.snapshot.cluster_configuration #=> Types::ClusterConfiguration
    #   resp.data.snapshot.cluster_configuration.name #=> String
    #   resp.data.snapshot.cluster_configuration.description #=> String
    #   resp.data.snapshot.cluster_configuration.node_type #=> String
    #   resp.data.snapshot.cluster_configuration.engine_version #=> String
    #   resp.data.snapshot.cluster_configuration.maintenance_window #=> String
    #   resp.data.snapshot.cluster_configuration.topic_arn #=> String
    #   resp.data.snapshot.cluster_configuration.port #=> Integer
    #   resp.data.snapshot.cluster_configuration.parameter_group_name #=> String
    #   resp.data.snapshot.cluster_configuration.subnet_group_name #=> String
    #   resp.data.snapshot.cluster_configuration.vpc_id #=> String
    #   resp.data.snapshot.cluster_configuration.snapshot_retention_limit #=> Integer
    #   resp.data.snapshot.cluster_configuration.snapshot_window #=> String
    #   resp.data.snapshot.cluster_configuration.num_shards #=> Integer
    #   resp.data.snapshot.cluster_configuration.shards #=> Array<ShardDetail>
    #   resp.data.snapshot.cluster_configuration.shards[0] #=> Types::ShardDetail
    #   resp.data.snapshot.cluster_configuration.shards[0].name #=> String
    #   resp.data.snapshot.cluster_configuration.shards[0].configuration #=> Types::ShardConfiguration
    #   resp.data.snapshot.cluster_configuration.shards[0].configuration.slots #=> String
    #   resp.data.snapshot.cluster_configuration.shards[0].configuration.replica_count #=> Integer
    #   resp.data.snapshot.cluster_configuration.shards[0].size #=> String
    #   resp.data.snapshot.cluster_configuration.shards[0].snapshot_creation_time #=> Time
    #
    def copy_snapshot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CopySnapshotInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CopySnapshotInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CopySnapshot
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterCombinationException, Errors::SnapshotNotFoundFault, Errors::TagQuotaPerResourceExceeded, Errors::SnapshotQuotaExceededFault, Errors::ServiceLinkedRoleNotFoundFault, Errors::SnapshotAlreadyExistsFault, Errors::InvalidSnapshotStateFault, Errors::InvalidParameterValueException]),
        data_parser: Parsers::CopySnapshot
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CopySnapshot,
        stubs: @stubs,
        params_class: Params::CopySnapshotOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :copy_snapshot
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an Access Control List. For more information, see <a href="https://docs.aws.amazon.com/MemoryDB/latest/devguide/clusters.acls.html">Authenticating users with Access Contol Lists (ACLs)</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateACLInput}.
    #
    # @option params [String] :acl_name
    #   <p>The name of the Access Control List.</p>
    #
    # @option params [Array<String>] :user_names
    #   <p>The list of users that belong to the Access Control List.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value, although null is accepted.</p>
    #
    # @return [Types::CreateACLOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_acl(
    #     acl_name: 'ACLName', # required
    #     user_names: [
    #       'member'
    #     ],
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateACLOutput
    #   resp.data.acl #=> Types::ACL
    #   resp.data.acl.name #=> String
    #   resp.data.acl.status #=> String
    #   resp.data.acl.user_names #=> Array<String>
    #   resp.data.acl.user_names[0] #=> String
    #   resp.data.acl.minimum_engine_version #=> String
    #   resp.data.acl.pending_changes #=> Types::ACLPendingChanges
    #   resp.data.acl.pending_changes.user_names_to_remove #=> Array<String>
    #   resp.data.acl.pending_changes.user_names_to_add #=> Array<String>
    #   resp.data.acl.clusters #=> Array<String>
    #   resp.data.acl.clusters[0] #=> String
    #   resp.data.acl.arn #=> String
    #
    def create_acl(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateACLInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateACLInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateACL
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ACLQuotaExceededFault, Errors::DuplicateUserNameFault, Errors::TagQuotaPerResourceExceeded, Errors::DefaultUserRequired, Errors::UserNotFoundFault, Errors::ACLAlreadyExistsFault, Errors::InvalidParameterValueException]),
        data_parser: Parsers::CreateACL
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateACL,
        stubs: @stubs,
        params_class: Params::CreateACLOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_acl
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a cluster. All nodes in the cluster run the same protocol-compliant engine software.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateClusterInput}.
    #
    # @option params [String] :cluster_name
    #   <p>The name of the cluster. This value must be unique as it also serves as the cluster identifier.</p>
    #
    # @option params [String] :node_type
    #   <p>The compute and memory capacity of the nodes in the cluster.</p>
    #
    # @option params [String] :parameter_group_name
    #   <p>The name of the parameter group associated with the cluster.</p>
    #
    # @option params [String] :description
    #   <p>An optional description of the cluster.</p>
    #
    # @option params [Integer] :num_shards
    #   <p>The number of shards the cluster will contain. The default value is 1. </p>
    #
    # @option params [Integer] :num_replicas_per_shard
    #   <p>The number of replicas to apply to each shard. The default value is 1. The maximum is 5. </p>
    #
    # @option params [String] :subnet_group_name
    #   <p>The name of the subnet group to be used for the cluster.</p>
    #
    # @option params [Array<String>] :security_group_ids
    #   <p>A list of security group names to associate with this cluster.</p>
    #
    # @option params [String] :maintenance_window
    #   <p>Specifies the weekly time range during which maintenance on the cluster is performed. It is specified as a range in the format <code>ddd:hh24:mi-ddd:hh24:mi</code> (24H Clock UTC). The minimum maintenance window is a 60 minute period.</p>
    #
    # @option params [Integer] :port
    #   <p>The port number on which each of the nodes accepts connections.</p>
    #
    # @option params [String] :sns_topic_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Simple Notification Service (SNS) topic to which notifications are sent.</p>
    #
    # @option params [Boolean] :tls_enabled
    #   <p>A flag to enable in-transit encryption on the cluster.</p>
    #
    # @option params [String] :kms_key_id
    #   <p>The ID of the KMS key used to encrypt the cluster.</p>
    #
    # @option params [Array<String>] :snapshot_arns
    #   <p>A list of Amazon Resource Names (ARN) that uniquely identify the RDB snapshot files stored in Amazon S3. The snapshot files are used to populate the new cluster. The Amazon S3 object name in the ARN cannot contain any commas.</p>
    #
    # @option params [String] :snapshot_name
    #   <p>The name of a snapshot from which to restore data into the new cluster. The snapshot status changes to restoring while the new cluster is being created.</p>
    #
    # @option params [Integer] :snapshot_retention_limit
    #   <p>The number of days for which MemoryDB retains automatic snapshots before deleting them. For example, if you set SnapshotRetentionLimit to 5, a snapshot that was taken today is retained for 5 days before being deleted.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tags to be added to this resource. Tags are comma-separated key,value pairs (e.g. Key=myKey, Value=myKeyValue. You can include multiple tags as shown following: Key=myKey, Value=myKeyValue Key=mySecondKey, Value=mySecondKeyValue.</p>
    #
    # @option params [String] :snapshot_window
    #   <p>The daily time range (in UTC) during which MemoryDB begins taking a daily snapshot of your shard.</p>
    #
    #            <p>    Example: 05:00-09:00</p>
    #
    #            <p>    If you do not specify this parameter, MemoryDB automatically chooses an appropriate time range.</p>
    #
    # @option params [String] :acl_name
    #   <p>The name of the Access Control List to associate with the cluster.</p>
    #
    # @option params [String] :engine_version
    #   <p>The version number of the Redis engine to be used for the cluster.</p>
    #
    # @option params [Boolean] :auto_minor_version_upgrade
    #   <p>When set to true, the cluster will automatically receive minor engine version upgrades after launch.</p>
    #
    # @return [Types::CreateClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cluster(
    #     cluster_name: 'ClusterName', # required
    #     node_type: 'NodeType', # required
    #     parameter_group_name: 'ParameterGroupName',
    #     description: 'Description',
    #     num_shards: 1,
    #     num_replicas_per_shard: 1,
    #     subnet_group_name: 'SubnetGroupName',
    #     security_group_ids: [
    #       'member'
    #     ],
    #     maintenance_window: 'MaintenanceWindow',
    #     port: 1,
    #     sns_topic_arn: 'SnsTopicArn',
    #     tls_enabled: false,
    #     kms_key_id: 'KmsKeyId',
    #     snapshot_arns: [
    #       'member'
    #     ],
    #     snapshot_name: 'SnapshotName',
    #     snapshot_retention_limit: 1,
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ],
    #     snapshot_window: 'SnapshotWindow',
    #     acl_name: 'ACLName', # required
    #     engine_version: 'EngineVersion',
    #     auto_minor_version_upgrade: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateClusterOutput
    #   resp.data.cluster #=> Types::Cluster
    #   resp.data.cluster.name #=> String
    #   resp.data.cluster.description #=> String
    #   resp.data.cluster.status #=> String
    #   resp.data.cluster.pending_updates #=> Types::ClusterPendingUpdates
    #   resp.data.cluster.pending_updates.resharding #=> Types::ReshardingStatus
    #   resp.data.cluster.pending_updates.resharding.slot_migration #=> Types::SlotMigration
    #   resp.data.cluster.pending_updates.resharding.slot_migration.progress_percentage #=> Float
    #   resp.data.cluster.pending_updates.ac_ls #=> Types::ACLsUpdateStatus
    #   resp.data.cluster.pending_updates.ac_ls.acl_to_apply #=> String
    #   resp.data.cluster.pending_updates.service_updates #=> Array<PendingModifiedServiceUpdate>
    #   resp.data.cluster.pending_updates.service_updates[0] #=> Types::PendingModifiedServiceUpdate
    #   resp.data.cluster.pending_updates.service_updates[0].service_update_name #=> String
    #   resp.data.cluster.pending_updates.service_updates[0].status #=> String, one of ["available", "in-progress", "complete", "scheduled"]
    #   resp.data.cluster.number_of_shards #=> Integer
    #   resp.data.cluster.shards #=> Array<Shard>
    #   resp.data.cluster.shards[0] #=> Types::Shard
    #   resp.data.cluster.shards[0].name #=> String
    #   resp.data.cluster.shards[0].status #=> String
    #   resp.data.cluster.shards[0].slots #=> String
    #   resp.data.cluster.shards[0].nodes #=> Array<Node>
    #   resp.data.cluster.shards[0].nodes[0] #=> Types::Node
    #   resp.data.cluster.shards[0].nodes[0].name #=> String
    #   resp.data.cluster.shards[0].nodes[0].status #=> String
    #   resp.data.cluster.shards[0].nodes[0].availability_zone #=> String
    #   resp.data.cluster.shards[0].nodes[0].create_time #=> Time
    #   resp.data.cluster.shards[0].nodes[0].endpoint #=> Types::Endpoint
    #   resp.data.cluster.shards[0].nodes[0].endpoint.address #=> String
    #   resp.data.cluster.shards[0].nodes[0].endpoint.port #=> Integer
    #   resp.data.cluster.shards[0].number_of_nodes #=> Integer
    #   resp.data.cluster.availability_mode #=> String, one of ["singleaz", "multiaz"]
    #   resp.data.cluster.cluster_endpoint #=> Types::Endpoint
    #   resp.data.cluster.node_type #=> String
    #   resp.data.cluster.engine_version #=> String
    #   resp.data.cluster.engine_patch_version #=> String
    #   resp.data.cluster.parameter_group_name #=> String
    #   resp.data.cluster.parameter_group_status #=> String
    #   resp.data.cluster.security_groups #=> Array<SecurityGroupMembership>
    #   resp.data.cluster.security_groups[0] #=> Types::SecurityGroupMembership
    #   resp.data.cluster.security_groups[0].security_group_id #=> String
    #   resp.data.cluster.security_groups[0].status #=> String
    #   resp.data.cluster.subnet_group_name #=> String
    #   resp.data.cluster.tls_enabled #=> Boolean
    #   resp.data.cluster.kms_key_id #=> String
    #   resp.data.cluster.arn #=> String
    #   resp.data.cluster.sns_topic_arn #=> String
    #   resp.data.cluster.sns_topic_status #=> String
    #   resp.data.cluster.snapshot_retention_limit #=> Integer
    #   resp.data.cluster.maintenance_window #=> String
    #   resp.data.cluster.snapshot_window #=> String
    #   resp.data.cluster.acl_name #=> String
    #   resp.data.cluster.auto_minor_version_upgrade #=> Boolean
    #
    def create_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateClusterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateClusterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateCluster
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterCombinationException, Errors::ClusterQuotaForCustomerExceededFault, Errors::TagQuotaPerResourceExceeded, Errors::ACLNotFoundFault, Errors::ServiceLinkedRoleNotFoundFault, Errors::NodeQuotaForClusterExceededFault, Errors::SubnetGroupNotFoundFault, Errors::InvalidCredentialsException, Errors::ClusterAlreadyExistsFault, Errors::ShardsPerClusterQuotaExceededFault, Errors::ParameterGroupNotFoundFault, Errors::InvalidVPCNetworkStateFault, Errors::NodeQuotaForCustomerExceededFault, Errors::InsufficientClusterCapacityFault, Errors::InvalidACLStateFault, Errors::InvalidParameterValueException]),
        data_parser: Parsers::CreateCluster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateCluster,
        stubs: @stubs,
        params_class: Params::CreateClusterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_cluster
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new MemoryDB parameter group. A parameter group is a collection of parameters and their values that are applied to all of the nodes in any cluster. For
    #          more information, see <a href="https://docs.aws.amazon.com/MemoryDB/latest/devguide/parametergroups.html">Configuring engine parameters using parameter groups</a>.
    #
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::CreateParameterGroupInput}.
    #
    # @option params [String] :parameter_group_name
    #   <p>The name of the parameter group.</p>
    #
    # @option params [String] :family
    #   <p>The name of the parameter group family that the parameter group can be used with.</p>
    #
    # @option params [String] :description
    #   <p>An optional description of the parameter group.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value, although null is accepted.</p>
    #
    # @return [Types::CreateParameterGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_parameter_group(
    #     parameter_group_name: 'ParameterGroupName', # required
    #     family: 'Family', # required
    #     description: 'Description',
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateParameterGroupOutput
    #   resp.data.parameter_group #=> Types::ParameterGroup
    #   resp.data.parameter_group.name #=> String
    #   resp.data.parameter_group.family #=> String
    #   resp.data.parameter_group.description #=> String
    #   resp.data.parameter_group.arn #=> String
    #
    def create_parameter_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateParameterGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateParameterGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateParameterGroup
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterCombinationException, Errors::TagQuotaPerResourceExceeded, Errors::ServiceLinkedRoleNotFoundFault, Errors::ParameterGroupAlreadyExistsFault, Errors::InvalidParameterGroupStateFault, Errors::ParameterGroupQuotaExceededFault, Errors::InvalidParameterValueException]),
        data_parser: Parsers::CreateParameterGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateParameterGroup,
        stubs: @stubs,
        params_class: Params::CreateParameterGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_parameter_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a copy of an entire cluster at a specific moment in time.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateSnapshotInput}.
    #
    # @option params [String] :cluster_name
    #   <p>The snapshot is created from this cluster.</p>
    #
    # @option params [String] :snapshot_name
    #   <p>A name for the snapshot being created.</p>
    #
    # @option params [String] :kms_key_id
    #   <p>The ID of the KMS key used to encrypt the snapshot.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value, although null is accepted.</p>
    #
    # @return [Types::CreateSnapshotOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_snapshot(
    #     cluster_name: 'ClusterName', # required
    #     snapshot_name: 'SnapshotName', # required
    #     kms_key_id: 'KmsKeyId',
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateSnapshotOutput
    #   resp.data.snapshot #=> Types::Snapshot
    #   resp.data.snapshot.name #=> String
    #   resp.data.snapshot.status #=> String
    #   resp.data.snapshot.source #=> String
    #   resp.data.snapshot.kms_key_id #=> String
    #   resp.data.snapshot.arn #=> String
    #   resp.data.snapshot.cluster_configuration #=> Types::ClusterConfiguration
    #   resp.data.snapshot.cluster_configuration.name #=> String
    #   resp.data.snapshot.cluster_configuration.description #=> String
    #   resp.data.snapshot.cluster_configuration.node_type #=> String
    #   resp.data.snapshot.cluster_configuration.engine_version #=> String
    #   resp.data.snapshot.cluster_configuration.maintenance_window #=> String
    #   resp.data.snapshot.cluster_configuration.topic_arn #=> String
    #   resp.data.snapshot.cluster_configuration.port #=> Integer
    #   resp.data.snapshot.cluster_configuration.parameter_group_name #=> String
    #   resp.data.snapshot.cluster_configuration.subnet_group_name #=> String
    #   resp.data.snapshot.cluster_configuration.vpc_id #=> String
    #   resp.data.snapshot.cluster_configuration.snapshot_retention_limit #=> Integer
    #   resp.data.snapshot.cluster_configuration.snapshot_window #=> String
    #   resp.data.snapshot.cluster_configuration.num_shards #=> Integer
    #   resp.data.snapshot.cluster_configuration.shards #=> Array<ShardDetail>
    #   resp.data.snapshot.cluster_configuration.shards[0] #=> Types::ShardDetail
    #   resp.data.snapshot.cluster_configuration.shards[0].name #=> String
    #   resp.data.snapshot.cluster_configuration.shards[0].configuration #=> Types::ShardConfiguration
    #   resp.data.snapshot.cluster_configuration.shards[0].configuration.slots #=> String
    #   resp.data.snapshot.cluster_configuration.shards[0].configuration.replica_count #=> Integer
    #   resp.data.snapshot.cluster_configuration.shards[0].size #=> String
    #   resp.data.snapshot.cluster_configuration.shards[0].snapshot_creation_time #=> Time
    #
    def create_snapshot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateSnapshotInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateSnapshotInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateSnapshot
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterCombinationException, Errors::ClusterNotFoundFault, Errors::TagQuotaPerResourceExceeded, Errors::SnapshotQuotaExceededFault, Errors::ServiceLinkedRoleNotFoundFault, Errors::InvalidClusterStateFault, Errors::SnapshotAlreadyExistsFault, Errors::InvalidParameterValueException]),
        data_parser: Parsers::CreateSnapshot
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateSnapshot,
        stubs: @stubs,
        params_class: Params::CreateSnapshotOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_snapshot
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a subnet group. A subnet group is a collection of subnets (typically private) that you can designate for your clusters running in an Amazon Virtual Private Cloud (VPC) environment.
    #
    #          When you create a cluster in an Amazon VPC, you must specify a subnet group. MemoryDB uses that subnet group to choose a subnet and IP addresses within that subnet to associate with your nodes.
    #          For more information, see <a href="https://docs.aws.amazon.com/MemoryDB/latest/devguide/subnetgroups.html">Subnets and subnet groups</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateSubnetGroupInput}.
    #
    # @option params [String] :subnet_group_name
    #   <p>The name of the subnet group.</p>
    #
    # @option params [String] :description
    #   <p>A description for the subnet group.</p>
    #
    # @option params [Array<String>] :subnet_ids
    #   <p>A list of VPC subnet IDs for the subnet group.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value, although null is accepted.</p>
    #
    # @return [Types::CreateSubnetGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_subnet_group(
    #     subnet_group_name: 'SubnetGroupName', # required
    #     description: 'Description',
    #     subnet_ids: [
    #       'member'
    #     ], # required
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateSubnetGroupOutput
    #   resp.data.subnet_group #=> Types::SubnetGroup
    #   resp.data.subnet_group.name #=> String
    #   resp.data.subnet_group.description #=> String
    #   resp.data.subnet_group.vpc_id #=> String
    #   resp.data.subnet_group.subnets #=> Array<Subnet>
    #   resp.data.subnet_group.subnets[0] #=> Types::Subnet
    #   resp.data.subnet_group.subnets[0].identifier #=> String
    #   resp.data.subnet_group.subnets[0].availability_zone #=> Types::AvailabilityZone
    #   resp.data.subnet_group.subnets[0].availability_zone.name #=> String
    #   resp.data.subnet_group.arn #=> String
    #
    def create_subnet_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateSubnetGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateSubnetGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateSubnetGroup
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::SubnetNotAllowedFault, Errors::TagQuotaPerResourceExceeded, Errors::ServiceLinkedRoleNotFoundFault, Errors::SubnetGroupQuotaExceededFault, Errors::InvalidSubnet, Errors::SubnetQuotaExceededFault, Errors::SubnetGroupAlreadyExistsFault]),
        data_parser: Parsers::CreateSubnetGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateSubnetGroup,
        stubs: @stubs,
        params_class: Params::CreateSubnetGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_subnet_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a MemoryDB user. For more information, see <a href="https://docs.aws.amazon.com/MemoryDB/latest/devguide/clusters.acls.html">Authenticating users with Access Contol Lists (ACLs)</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateUserInput}.
    #
    # @option params [String] :user_name
    #   <p>The name of the user. This value must be unique as it also serves as the user identifier.</p>
    #
    # @option params [AuthenticationMode] :authentication_mode
    #   <p>Denotes the user's authentication properties, such as whether it requires a password to authenticate.</p>
    #
    # @option params [String] :access_string
    #   <p>Access permissions string used for this user.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value, although null is accepted.</p>
    #
    # @return [Types::CreateUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user(
    #     user_name: 'UserName', # required
    #     authentication_mode: {
    #       type: 'password', # accepts ["password"]
    #       passwords: [
    #         'member'
    #       ]
    #     }, # required
    #     access_string: 'AccessString', # required
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateUserOutput
    #   resp.data.user #=> Types::User
    #   resp.data.user.name #=> String
    #   resp.data.user.status #=> String
    #   resp.data.user.access_string #=> String
    #   resp.data.user.acl_names #=> Array<String>
    #   resp.data.user.acl_names[0] #=> String
    #   resp.data.user.minimum_engine_version #=> String
    #   resp.data.user.authentication #=> Types::Authentication
    #   resp.data.user.authentication.type #=> String, one of ["password", "no-password"]
    #   resp.data.user.authentication.password_count #=> Integer
    #   resp.data.user.arn #=> String
    #
    def create_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateUser
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DuplicateUserNameFault, Errors::InvalidParameterCombinationException, Errors::TagQuotaPerResourceExceeded, Errors::UserQuotaExceededFault, Errors::UserAlreadyExistsFault, Errors::InvalidParameterValueException]),
        data_parser: Parsers::CreateUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateUser,
        stubs: @stubs,
        params_class: Params::CreateUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an Access Control List. The ACL must first be disassociated from the cluster before it can be deleted. For more information, see <a href="https://docs.aws.amazon.com/MemoryDB/latest/devguide/clusters.acls.html">Authenticating users with Access Contol Lists (ACLs)</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteACLInput}.
    #
    # @option params [String] :acl_name
    #   <p>The name of the Access Control List to delete</p>
    #
    # @return [Types::DeleteACLOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_acl(
    #     acl_name: 'ACLName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteACLOutput
    #   resp.data.acl #=> Types::ACL
    #   resp.data.acl.name #=> String
    #   resp.data.acl.status #=> String
    #   resp.data.acl.user_names #=> Array<String>
    #   resp.data.acl.user_names[0] #=> String
    #   resp.data.acl.minimum_engine_version #=> String
    #   resp.data.acl.pending_changes #=> Types::ACLPendingChanges
    #   resp.data.acl.pending_changes.user_names_to_remove #=> Array<String>
    #   resp.data.acl.pending_changes.user_names_to_add #=> Array<String>
    #   resp.data.acl.clusters #=> Array<String>
    #   resp.data.acl.clusters[0] #=> String
    #   resp.data.acl.arn #=> String
    #
    def delete_acl(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteACLInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteACLInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteACL
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ACLNotFoundFault, Errors::InvalidACLStateFault, Errors::InvalidParameterValueException]),
        data_parser: Parsers::DeleteACL
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteACL,
        stubs: @stubs,
        params_class: Params::DeleteACLOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_acl
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a cluster. It also deletes all associated nodes and node endpoints</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteClusterInput}.
    #
    # @option params [String] :cluster_name
    #   <p>The name of the cluster to be deleted</p>
    #
    # @option params [String] :final_snapshot_name
    #   <p>The user-supplied name of a final cluster snapshot. This is the unique name that identifies the snapshot. MemoryDB creates the snapshot, and then deletes the cluster immediately afterward.</p>
    #
    # @return [Types::DeleteClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cluster(
    #     cluster_name: 'ClusterName', # required
    #     final_snapshot_name: 'FinalSnapshotName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteClusterOutput
    #   resp.data.cluster #=> Types::Cluster
    #   resp.data.cluster.name #=> String
    #   resp.data.cluster.description #=> String
    #   resp.data.cluster.status #=> String
    #   resp.data.cluster.pending_updates #=> Types::ClusterPendingUpdates
    #   resp.data.cluster.pending_updates.resharding #=> Types::ReshardingStatus
    #   resp.data.cluster.pending_updates.resharding.slot_migration #=> Types::SlotMigration
    #   resp.data.cluster.pending_updates.resharding.slot_migration.progress_percentage #=> Float
    #   resp.data.cluster.pending_updates.ac_ls #=> Types::ACLsUpdateStatus
    #   resp.data.cluster.pending_updates.ac_ls.acl_to_apply #=> String
    #   resp.data.cluster.pending_updates.service_updates #=> Array<PendingModifiedServiceUpdate>
    #   resp.data.cluster.pending_updates.service_updates[0] #=> Types::PendingModifiedServiceUpdate
    #   resp.data.cluster.pending_updates.service_updates[0].service_update_name #=> String
    #   resp.data.cluster.pending_updates.service_updates[0].status #=> String, one of ["available", "in-progress", "complete", "scheduled"]
    #   resp.data.cluster.number_of_shards #=> Integer
    #   resp.data.cluster.shards #=> Array<Shard>
    #   resp.data.cluster.shards[0] #=> Types::Shard
    #   resp.data.cluster.shards[0].name #=> String
    #   resp.data.cluster.shards[0].status #=> String
    #   resp.data.cluster.shards[0].slots #=> String
    #   resp.data.cluster.shards[0].nodes #=> Array<Node>
    #   resp.data.cluster.shards[0].nodes[0] #=> Types::Node
    #   resp.data.cluster.shards[0].nodes[0].name #=> String
    #   resp.data.cluster.shards[0].nodes[0].status #=> String
    #   resp.data.cluster.shards[0].nodes[0].availability_zone #=> String
    #   resp.data.cluster.shards[0].nodes[0].create_time #=> Time
    #   resp.data.cluster.shards[0].nodes[0].endpoint #=> Types::Endpoint
    #   resp.data.cluster.shards[0].nodes[0].endpoint.address #=> String
    #   resp.data.cluster.shards[0].nodes[0].endpoint.port #=> Integer
    #   resp.data.cluster.shards[0].number_of_nodes #=> Integer
    #   resp.data.cluster.availability_mode #=> String, one of ["singleaz", "multiaz"]
    #   resp.data.cluster.cluster_endpoint #=> Types::Endpoint
    #   resp.data.cluster.node_type #=> String
    #   resp.data.cluster.engine_version #=> String
    #   resp.data.cluster.engine_patch_version #=> String
    #   resp.data.cluster.parameter_group_name #=> String
    #   resp.data.cluster.parameter_group_status #=> String
    #   resp.data.cluster.security_groups #=> Array<SecurityGroupMembership>
    #   resp.data.cluster.security_groups[0] #=> Types::SecurityGroupMembership
    #   resp.data.cluster.security_groups[0].security_group_id #=> String
    #   resp.data.cluster.security_groups[0].status #=> String
    #   resp.data.cluster.subnet_group_name #=> String
    #   resp.data.cluster.tls_enabled #=> Boolean
    #   resp.data.cluster.kms_key_id #=> String
    #   resp.data.cluster.arn #=> String
    #   resp.data.cluster.sns_topic_arn #=> String
    #   resp.data.cluster.sns_topic_status #=> String
    #   resp.data.cluster.snapshot_retention_limit #=> Integer
    #   resp.data.cluster.maintenance_window #=> String
    #   resp.data.cluster.snapshot_window #=> String
    #   resp.data.cluster.acl_name #=> String
    #   resp.data.cluster.auto_minor_version_upgrade #=> Boolean
    #
    def delete_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteClusterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteClusterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteCluster
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterCombinationException, Errors::ClusterNotFoundFault, Errors::ServiceLinkedRoleNotFoundFault, Errors::InvalidClusterStateFault, Errors::SnapshotAlreadyExistsFault, Errors::InvalidParameterValueException]),
        data_parser: Parsers::DeleteCluster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteCluster,
        stubs: @stubs,
        params_class: Params::DeleteClusterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_cluster
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified parameter group. You cannot delete a parameter group if it is associated with any clusters.
    #          You cannot delete the default parameter groups in your account.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteParameterGroupInput}.
    #
    # @option params [String] :parameter_group_name
    #   <p>The name of the parameter group to delete.</p>
    #
    # @return [Types::DeleteParameterGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_parameter_group(
    #     parameter_group_name: 'ParameterGroupName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteParameterGroupOutput
    #   resp.data.parameter_group #=> Types::ParameterGroup
    #   resp.data.parameter_group.name #=> String
    #   resp.data.parameter_group.family #=> String
    #   resp.data.parameter_group.description #=> String
    #   resp.data.parameter_group.arn #=> String
    #
    def delete_parameter_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteParameterGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteParameterGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteParameterGroup
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterCombinationException, Errors::ServiceLinkedRoleNotFoundFault, Errors::InvalidParameterGroupStateFault, Errors::ParameterGroupNotFoundFault, Errors::InvalidParameterValueException]),
        data_parser: Parsers::DeleteParameterGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteParameterGroup,
        stubs: @stubs,
        params_class: Params::DeleteParameterGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_parameter_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an existing snapshot. When you receive a successful response from this operation, MemoryDB immediately begins deleting the snapshot; you cannot cancel or revert this operation.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteSnapshotInput}.
    #
    # @option params [String] :snapshot_name
    #   <p>The name of the snapshot to delete</p>
    #
    # @return [Types::DeleteSnapshotOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_snapshot(
    #     snapshot_name: 'SnapshotName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteSnapshotOutput
    #   resp.data.snapshot #=> Types::Snapshot
    #   resp.data.snapshot.name #=> String
    #   resp.data.snapshot.status #=> String
    #   resp.data.snapshot.source #=> String
    #   resp.data.snapshot.kms_key_id #=> String
    #   resp.data.snapshot.arn #=> String
    #   resp.data.snapshot.cluster_configuration #=> Types::ClusterConfiguration
    #   resp.data.snapshot.cluster_configuration.name #=> String
    #   resp.data.snapshot.cluster_configuration.description #=> String
    #   resp.data.snapshot.cluster_configuration.node_type #=> String
    #   resp.data.snapshot.cluster_configuration.engine_version #=> String
    #   resp.data.snapshot.cluster_configuration.maintenance_window #=> String
    #   resp.data.snapshot.cluster_configuration.topic_arn #=> String
    #   resp.data.snapshot.cluster_configuration.port #=> Integer
    #   resp.data.snapshot.cluster_configuration.parameter_group_name #=> String
    #   resp.data.snapshot.cluster_configuration.subnet_group_name #=> String
    #   resp.data.snapshot.cluster_configuration.vpc_id #=> String
    #   resp.data.snapshot.cluster_configuration.snapshot_retention_limit #=> Integer
    #   resp.data.snapshot.cluster_configuration.snapshot_window #=> String
    #   resp.data.snapshot.cluster_configuration.num_shards #=> Integer
    #   resp.data.snapshot.cluster_configuration.shards #=> Array<ShardDetail>
    #   resp.data.snapshot.cluster_configuration.shards[0] #=> Types::ShardDetail
    #   resp.data.snapshot.cluster_configuration.shards[0].name #=> String
    #   resp.data.snapshot.cluster_configuration.shards[0].configuration #=> Types::ShardConfiguration
    #   resp.data.snapshot.cluster_configuration.shards[0].configuration.slots #=> String
    #   resp.data.snapshot.cluster_configuration.shards[0].configuration.replica_count #=> Integer
    #   resp.data.snapshot.cluster_configuration.shards[0].size #=> String
    #   resp.data.snapshot.cluster_configuration.shards[0].snapshot_creation_time #=> Time
    #
    def delete_snapshot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteSnapshotInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteSnapshotInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteSnapshot
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterCombinationException, Errors::SnapshotNotFoundFault, Errors::ServiceLinkedRoleNotFoundFault, Errors::InvalidSnapshotStateFault, Errors::InvalidParameterValueException]),
        data_parser: Parsers::DeleteSnapshot
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteSnapshot,
        stubs: @stubs,
        params_class: Params::DeleteSnapshotOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_snapshot
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a subnet group. You cannot delete a default subnet group or one that is associated with any clusters.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteSubnetGroupInput}.
    #
    # @option params [String] :subnet_group_name
    #   <p>The name of the subnet group to delete</p>
    #
    # @return [Types::DeleteSubnetGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_subnet_group(
    #     subnet_group_name: 'SubnetGroupName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteSubnetGroupOutput
    #   resp.data.subnet_group #=> Types::SubnetGroup
    #   resp.data.subnet_group.name #=> String
    #   resp.data.subnet_group.description #=> String
    #   resp.data.subnet_group.vpc_id #=> String
    #   resp.data.subnet_group.subnets #=> Array<Subnet>
    #   resp.data.subnet_group.subnets[0] #=> Types::Subnet
    #   resp.data.subnet_group.subnets[0].identifier #=> String
    #   resp.data.subnet_group.subnets[0].availability_zone #=> Types::AvailabilityZone
    #   resp.data.subnet_group.subnets[0].availability_zone.name #=> String
    #   resp.data.subnet_group.arn #=> String
    #
    def delete_subnet_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteSubnetGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteSubnetGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteSubnetGroup
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceLinkedRoleNotFoundFault, Errors::SubnetGroupNotFoundFault, Errors::SubnetGroupInUseFault]),
        data_parser: Parsers::DeleteSubnetGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteSubnetGroup,
        stubs: @stubs,
        params_class: Params::DeleteSubnetGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_subnet_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a user. The user will be removed from all ACLs and in turn removed from all clusters.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteUserInput}.
    #
    # @option params [String] :user_name
    #   <p>The name of the user to delete</p>
    #
    # @return [Types::DeleteUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user(
    #     user_name: 'UserName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteUserOutput
    #   resp.data.user #=> Types::User
    #   resp.data.user.name #=> String
    #   resp.data.user.status #=> String
    #   resp.data.user.access_string #=> String
    #   resp.data.user.acl_names #=> Array<String>
    #   resp.data.user.acl_names[0] #=> String
    #   resp.data.user.minimum_engine_version #=> String
    #   resp.data.user.authentication #=> Types::Authentication
    #   resp.data.user.authentication.type #=> String, one of ["password", "no-password"]
    #   resp.data.user.authentication.password_count #=> Integer
    #   resp.data.user.arn #=> String
    #
    def delete_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteUser
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UserNotFoundFault, Errors::InvalidUserStateFault, Errors::InvalidParameterValueException]),
        data_parser: Parsers::DeleteUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteUser,
        stubs: @stubs,
        params_class: Params::DeleteUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of ACLs</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeACLsInput}.
    #
    # @option params [String] :acl_name
    #   <p>The name of the ACL</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>
    #
    # @option params [String] :next_token
    #   <p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    #
    # @return [Types::DescribeACLsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_ac_ls(
    #     acl_name: 'ACLName',
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeACLsOutput
    #   resp.data.ac_ls #=> Array<ACL>
    #   resp.data.ac_ls[0] #=> Types::ACL
    #   resp.data.ac_ls[0].name #=> String
    #   resp.data.ac_ls[0].status #=> String
    #   resp.data.ac_ls[0].user_names #=> Array<String>
    #   resp.data.ac_ls[0].user_names[0] #=> String
    #   resp.data.ac_ls[0].minimum_engine_version #=> String
    #   resp.data.ac_ls[0].pending_changes #=> Types::ACLPendingChanges
    #   resp.data.ac_ls[0].pending_changes.user_names_to_remove #=> Array<String>
    #   resp.data.ac_ls[0].pending_changes.user_names_to_add #=> Array<String>
    #   resp.data.ac_ls[0].clusters #=> Array<String>
    #   resp.data.ac_ls[0].clusters[0] #=> String
    #   resp.data.ac_ls[0].arn #=> String
    #   resp.data.next_token #=> String
    #
    def describe_ac_ls(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeACLsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeACLsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeACLs
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterCombinationException, Errors::ACLNotFoundFault]),
        data_parser: Parsers::DescribeACLs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeACLs,
        stubs: @stubs,
        params_class: Params::DescribeACLsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_ac_ls
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about all provisioned clusters if no cluster identifier is specified, or about a specific cluster if a cluster name is supplied.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeClustersInput}.
    #
    # @option params [String] :cluster_name
    #   <p>The name of the cluster</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>
    #
    # @option params [String] :next_token
    #   <p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    #
    # @option params [Boolean] :show_shard_details
    #   <p>An optional flag that can be included in the request to retrieve information about the individual shard(s).</p>
    #
    # @return [Types::DescribeClustersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_clusters(
    #     cluster_name: 'ClusterName',
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     show_shard_details: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeClustersOutput
    #   resp.data.next_token #=> String
    #   resp.data.clusters #=> Array<Cluster>
    #   resp.data.clusters[0] #=> Types::Cluster
    #   resp.data.clusters[0].name #=> String
    #   resp.data.clusters[0].description #=> String
    #   resp.data.clusters[0].status #=> String
    #   resp.data.clusters[0].pending_updates #=> Types::ClusterPendingUpdates
    #   resp.data.clusters[0].pending_updates.resharding #=> Types::ReshardingStatus
    #   resp.data.clusters[0].pending_updates.resharding.slot_migration #=> Types::SlotMigration
    #   resp.data.clusters[0].pending_updates.resharding.slot_migration.progress_percentage #=> Float
    #   resp.data.clusters[0].pending_updates.ac_ls #=> Types::ACLsUpdateStatus
    #   resp.data.clusters[0].pending_updates.ac_ls.acl_to_apply #=> String
    #   resp.data.clusters[0].pending_updates.service_updates #=> Array<PendingModifiedServiceUpdate>
    #   resp.data.clusters[0].pending_updates.service_updates[0] #=> Types::PendingModifiedServiceUpdate
    #   resp.data.clusters[0].pending_updates.service_updates[0].service_update_name #=> String
    #   resp.data.clusters[0].pending_updates.service_updates[0].status #=> String, one of ["available", "in-progress", "complete", "scheduled"]
    #   resp.data.clusters[0].number_of_shards #=> Integer
    #   resp.data.clusters[0].shards #=> Array<Shard>
    #   resp.data.clusters[0].shards[0] #=> Types::Shard
    #   resp.data.clusters[0].shards[0].name #=> String
    #   resp.data.clusters[0].shards[0].status #=> String
    #   resp.data.clusters[0].shards[0].slots #=> String
    #   resp.data.clusters[0].shards[0].nodes #=> Array<Node>
    #   resp.data.clusters[0].shards[0].nodes[0] #=> Types::Node
    #   resp.data.clusters[0].shards[0].nodes[0].name #=> String
    #   resp.data.clusters[0].shards[0].nodes[0].status #=> String
    #   resp.data.clusters[0].shards[0].nodes[0].availability_zone #=> String
    #   resp.data.clusters[0].shards[0].nodes[0].create_time #=> Time
    #   resp.data.clusters[0].shards[0].nodes[0].endpoint #=> Types::Endpoint
    #   resp.data.clusters[0].shards[0].nodes[0].endpoint.address #=> String
    #   resp.data.clusters[0].shards[0].nodes[0].endpoint.port #=> Integer
    #   resp.data.clusters[0].shards[0].number_of_nodes #=> Integer
    #   resp.data.clusters[0].availability_mode #=> String, one of ["singleaz", "multiaz"]
    #   resp.data.clusters[0].cluster_endpoint #=> Types::Endpoint
    #   resp.data.clusters[0].node_type #=> String
    #   resp.data.clusters[0].engine_version #=> String
    #   resp.data.clusters[0].engine_patch_version #=> String
    #   resp.data.clusters[0].parameter_group_name #=> String
    #   resp.data.clusters[0].parameter_group_status #=> String
    #   resp.data.clusters[0].security_groups #=> Array<SecurityGroupMembership>
    #   resp.data.clusters[0].security_groups[0] #=> Types::SecurityGroupMembership
    #   resp.data.clusters[0].security_groups[0].security_group_id #=> String
    #   resp.data.clusters[0].security_groups[0].status #=> String
    #   resp.data.clusters[0].subnet_group_name #=> String
    #   resp.data.clusters[0].tls_enabled #=> Boolean
    #   resp.data.clusters[0].kms_key_id #=> String
    #   resp.data.clusters[0].arn #=> String
    #   resp.data.clusters[0].sns_topic_arn #=> String
    #   resp.data.clusters[0].sns_topic_status #=> String
    #   resp.data.clusters[0].snapshot_retention_limit #=> Integer
    #   resp.data.clusters[0].maintenance_window #=> String
    #   resp.data.clusters[0].snapshot_window #=> String
    #   resp.data.clusters[0].acl_name #=> String
    #   resp.data.clusters[0].auto_minor_version_upgrade #=> Boolean
    #
    def describe_clusters(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeClustersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeClustersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeClusters
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterCombinationException, Errors::ClusterNotFoundFault, Errors::ServiceLinkedRoleNotFoundFault, Errors::InvalidParameterValueException]),
        data_parser: Parsers::DescribeClusters
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeClusters,
        stubs: @stubs,
        params_class: Params::DescribeClustersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_clusters
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of the available Redis engine versions.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEngineVersionsInput}.
    #
    # @option params [String] :engine_version
    #   <p>The Redis engine version</p>
    #
    # @option params [String] :parameter_group_family
    #   <p>The name of a specific parameter group family to return details for.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>
    #
    # @option params [String] :next_token
    #   <p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    #
    # @option params [Boolean] :default_only
    #   <p>If true, specifies that only the default version of the specified engine or engine and major version combination is to be returned.</p>
    #
    # @return [Types::DescribeEngineVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_engine_versions(
    #     engine_version: 'EngineVersion',
    #     parameter_group_family: 'ParameterGroupFamily',
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     default_only: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeEngineVersionsOutput
    #   resp.data.next_token #=> String
    #   resp.data.engine_versions #=> Array<EngineVersionInfo>
    #   resp.data.engine_versions[0] #=> Types::EngineVersionInfo
    #   resp.data.engine_versions[0].engine_version #=> String
    #   resp.data.engine_versions[0].engine_patch_version #=> String
    #   resp.data.engine_versions[0].parameter_group_family #=> String
    #
    def describe_engine_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEngineVersionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeEngineVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeEngineVersions
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterCombinationException, Errors::ServiceLinkedRoleNotFoundFault, Errors::InvalidParameterValueException]),
        data_parser: Parsers::DescribeEngineVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeEngineVersions,
        stubs: @stubs,
        params_class: Params::DescribeEngineVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_engine_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns events related to clusters, security groups, and parameter groups. You can obtain events specific to a particular cluster, security group, or parameter group by providing the name as a parameter.
    #
    #          By default, only the events occurring within the last hour are returned; however, you can retrieve up to 14 days' worth of events if necessary.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEventsInput}.
    #
    # @option params [String] :source_name
    #   <p>The identifier of the event source for which events are returned. If not specified, all sources are included in the response.</p>
    #
    # @option params [String] :source_type
    #   <p>The event source to retrieve events for. If no value is specified, all events are returned.</p>
    #
    # @option params [Time] :start_time
    #   <p>The beginning of the time interval to retrieve events for, specified in ISO 8601 format.
    #
    #            Example: 2017-03-30T07:03:49.555Z</p>
    #
    # @option params [Time] :end_time
    #   <p>The end of the time interval for which to retrieve events, specified in ISO 8601 format.
    #
    #            Example: 2017-03-30T07:03:49.555Z</p>
    #
    # @option params [Integer] :duration
    #   <p>The number of minutes worth of events to retrieve.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>
    #
    # @option params [String] :next_token
    #   <p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    #
    # @return [Types::DescribeEventsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_events(
    #     source_name: 'SourceName',
    #     source_type: 'node', # accepts ["node", "parameter-group", "subnet-group", "cluster", "user", "acl"]
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     duration: 1,
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeEventsOutput
    #   resp.data.next_token #=> String
    #   resp.data.events #=> Array<Event>
    #   resp.data.events[0] #=> Types::Event
    #   resp.data.events[0].source_name #=> String
    #   resp.data.events[0].source_type #=> String, one of ["node", "parameter-group", "subnet-group", "cluster", "user", "acl"]
    #   resp.data.events[0].message #=> String
    #   resp.data.events[0].date #=> Time
    #
    def describe_events(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEventsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeEventsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeEvents
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterCombinationException, Errors::ServiceLinkedRoleNotFoundFault, Errors::InvalidParameterValueException]),
        data_parser: Parsers::DescribeEvents
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeEvents,
        stubs: @stubs,
        params_class: Params::DescribeEventsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_events
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of parameter group descriptions. If a parameter group name is specified, the list contains only the descriptions for that group.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeParameterGroupsInput}.
    #
    # @option params [String] :parameter_group_name
    #   <p>The name of a specific  parameter group to return details for.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>
    #
    # @option params [String] :next_token
    #   <p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    #
    # @return [Types::DescribeParameterGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_parameter_groups(
    #     parameter_group_name: 'ParameterGroupName',
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeParameterGroupsOutput
    #   resp.data.next_token #=> String
    #   resp.data.parameter_groups #=> Array<ParameterGroup>
    #   resp.data.parameter_groups[0] #=> Types::ParameterGroup
    #   resp.data.parameter_groups[0].name #=> String
    #   resp.data.parameter_groups[0].family #=> String
    #   resp.data.parameter_groups[0].description #=> String
    #   resp.data.parameter_groups[0].arn #=> String
    #
    def describe_parameter_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeParameterGroupsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeParameterGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeParameterGroups
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterCombinationException, Errors::ServiceLinkedRoleNotFoundFault, Errors::ParameterGroupNotFoundFault, Errors::InvalidParameterValueException]),
        data_parser: Parsers::DescribeParameterGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeParameterGroups,
        stubs: @stubs,
        params_class: Params::DescribeParameterGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_parameter_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the detailed parameter list for a particular parameter group.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeParametersInput}.
    #
    # @option params [String] :parameter_group_name
    #   <p>he name of a specific  parameter group to return details for.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>
    #
    # @option params [String] :next_token
    #   <p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    #
    # @return [Types::DescribeParametersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_parameters(
    #     parameter_group_name: 'ParameterGroupName', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeParametersOutput
    #   resp.data.next_token #=> String
    #   resp.data.parameters #=> Array<Parameter>
    #   resp.data.parameters[0] #=> Types::Parameter
    #   resp.data.parameters[0].name #=> String
    #   resp.data.parameters[0].value #=> String
    #   resp.data.parameters[0].description #=> String
    #   resp.data.parameters[0].data_type #=> String
    #   resp.data.parameters[0].allowed_values #=> String
    #   resp.data.parameters[0].minimum_engine_version #=> String
    #
    def describe_parameters(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeParametersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeParametersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeParameters
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterCombinationException, Errors::ServiceLinkedRoleNotFoundFault, Errors::ParameterGroupNotFoundFault, Errors::InvalidParameterValueException]),
        data_parser: Parsers::DescribeParameters
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeParameters,
        stubs: @stubs,
        params_class: Params::DescribeParametersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_parameters
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns details of the service updates</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeServiceUpdatesInput}.
    #
    # @option params [String] :service_update_name
    #   <p>The unique ID of the service update to describe.</p>
    #
    # @option params [Array<String>] :cluster_names
    #   <p>The list of cluster names to identify service updates to apply</p>
    #
    # @option params [Array<String>] :status
    #   <p>The status(es) of the service updates to filter on</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>
    #
    # @option params [String] :next_token
    #   <p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    #
    # @return [Types::DescribeServiceUpdatesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_service_updates(
    #     service_update_name: 'ServiceUpdateName',
    #     cluster_names: [
    #       'member'
    #     ],
    #     status: [
    #       'available' # accepts ["available", "in-progress", "complete", "scheduled"]
    #     ],
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeServiceUpdatesOutput
    #   resp.data.next_token #=> String
    #   resp.data.service_updates #=> Array<ServiceUpdate>
    #   resp.data.service_updates[0] #=> Types::ServiceUpdate
    #   resp.data.service_updates[0].cluster_name #=> String
    #   resp.data.service_updates[0].service_update_name #=> String
    #   resp.data.service_updates[0].release_date #=> Time
    #   resp.data.service_updates[0].description #=> String
    #   resp.data.service_updates[0].status #=> String, one of ["available", "in-progress", "complete", "scheduled"]
    #   resp.data.service_updates[0].type #=> String, one of ["security-update"]
    #   resp.data.service_updates[0].nodes_updated #=> String
    #   resp.data.service_updates[0].auto_update_start_date #=> Time
    #
    def describe_service_updates(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeServiceUpdatesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeServiceUpdatesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeServiceUpdates
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterCombinationException, Errors::InvalidParameterValueException]),
        data_parser: Parsers::DescribeServiceUpdates
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeServiceUpdates,
        stubs: @stubs,
        params_class: Params::DescribeServiceUpdatesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_service_updates
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about cluster snapshots. By default, DescribeSnapshots lists all of your snapshots; it can optionally describe a single snapshot,
    #          or just the snapshots associated with a particular cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeSnapshotsInput}.
    #
    # @option params [String] :cluster_name
    #   <p>A user-supplied cluster identifier. If this parameter is specified, only snapshots associated with that specific cluster are described.</p>
    #
    # @option params [String] :snapshot_name
    #   <p>A user-supplied name of the snapshot. If this parameter is specified, only this named snapshot is described.</p>
    #
    # @option params [String] :source
    #   <p>If set to system, the output shows snapshots that were automatically created by MemoryDB. If set to user the output shows snapshots that were manually created. If omitted, the output shows both automatically and manually created snapshots.</p>
    #
    # @option params [String] :next_token
    #   <p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>
    #
    # @option params [Boolean] :show_detail
    #   <p>A Boolean value which if true, the shard configuration is included in the snapshot description.</p>
    #
    # @return [Types::DescribeSnapshotsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_snapshots(
    #     cluster_name: 'ClusterName',
    #     snapshot_name: 'SnapshotName',
    #     source: 'Source',
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     show_detail: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeSnapshotsOutput
    #   resp.data.next_token #=> String
    #   resp.data.snapshots #=> Array<Snapshot>
    #   resp.data.snapshots[0] #=> Types::Snapshot
    #   resp.data.snapshots[0].name #=> String
    #   resp.data.snapshots[0].status #=> String
    #   resp.data.snapshots[0].source #=> String
    #   resp.data.snapshots[0].kms_key_id #=> String
    #   resp.data.snapshots[0].arn #=> String
    #   resp.data.snapshots[0].cluster_configuration #=> Types::ClusterConfiguration
    #   resp.data.snapshots[0].cluster_configuration.name #=> String
    #   resp.data.snapshots[0].cluster_configuration.description #=> String
    #   resp.data.snapshots[0].cluster_configuration.node_type #=> String
    #   resp.data.snapshots[0].cluster_configuration.engine_version #=> String
    #   resp.data.snapshots[0].cluster_configuration.maintenance_window #=> String
    #   resp.data.snapshots[0].cluster_configuration.topic_arn #=> String
    #   resp.data.snapshots[0].cluster_configuration.port #=> Integer
    #   resp.data.snapshots[0].cluster_configuration.parameter_group_name #=> String
    #   resp.data.snapshots[0].cluster_configuration.subnet_group_name #=> String
    #   resp.data.snapshots[0].cluster_configuration.vpc_id #=> String
    #   resp.data.snapshots[0].cluster_configuration.snapshot_retention_limit #=> Integer
    #   resp.data.snapshots[0].cluster_configuration.snapshot_window #=> String
    #   resp.data.snapshots[0].cluster_configuration.num_shards #=> Integer
    #   resp.data.snapshots[0].cluster_configuration.shards #=> Array<ShardDetail>
    #   resp.data.snapshots[0].cluster_configuration.shards[0] #=> Types::ShardDetail
    #   resp.data.snapshots[0].cluster_configuration.shards[0].name #=> String
    #   resp.data.snapshots[0].cluster_configuration.shards[0].configuration #=> Types::ShardConfiguration
    #   resp.data.snapshots[0].cluster_configuration.shards[0].configuration.slots #=> String
    #   resp.data.snapshots[0].cluster_configuration.shards[0].configuration.replica_count #=> Integer
    #   resp.data.snapshots[0].cluster_configuration.shards[0].size #=> String
    #   resp.data.snapshots[0].cluster_configuration.shards[0].snapshot_creation_time #=> Time
    #
    def describe_snapshots(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeSnapshotsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeSnapshotsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeSnapshots
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterCombinationException, Errors::SnapshotNotFoundFault, Errors::ServiceLinkedRoleNotFoundFault, Errors::InvalidParameterValueException]),
        data_parser: Parsers::DescribeSnapshots
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeSnapshots,
        stubs: @stubs,
        params_class: Params::DescribeSnapshotsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_snapshots
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of subnet group descriptions. If a subnet group name is specified, the list contains only the description of that group.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeSubnetGroupsInput}.
    #
    # @option params [String] :subnet_group_name
    #   <p>The name of the subnet group to return details for.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>
    #
    # @option params [String] :next_token
    #   <p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    #
    # @return [Types::DescribeSubnetGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_subnet_groups(
    #     subnet_group_name: 'SubnetGroupName',
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeSubnetGroupsOutput
    #   resp.data.next_token #=> String
    #   resp.data.subnet_groups #=> Array<SubnetGroup>
    #   resp.data.subnet_groups[0] #=> Types::SubnetGroup
    #   resp.data.subnet_groups[0].name #=> String
    #   resp.data.subnet_groups[0].description #=> String
    #   resp.data.subnet_groups[0].vpc_id #=> String
    #   resp.data.subnet_groups[0].subnets #=> Array<Subnet>
    #   resp.data.subnet_groups[0].subnets[0] #=> Types::Subnet
    #   resp.data.subnet_groups[0].subnets[0].identifier #=> String
    #   resp.data.subnet_groups[0].subnets[0].availability_zone #=> Types::AvailabilityZone
    #   resp.data.subnet_groups[0].subnets[0].availability_zone.name #=> String
    #   resp.data.subnet_groups[0].arn #=> String
    #
    def describe_subnet_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeSubnetGroupsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeSubnetGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeSubnetGroups
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceLinkedRoleNotFoundFault, Errors::SubnetGroupNotFoundFault]),
        data_parser: Parsers::DescribeSubnetGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeSubnetGroups,
        stubs: @stubs,
        params_class: Params::DescribeSubnetGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_subnet_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of users.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeUsersInput}.
    #
    # @option params [String] :user_name
    #   <p>The name of the user</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>Filter to determine the list of users to return.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>
    #
    # @option params [String] :next_token
    #   <p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    #
    # @return [Types::DescribeUsersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_users(
    #     user_name: 'UserName',
    #     filters: [
    #       {
    #         name: 'Name', # required
    #         values: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeUsersOutput
    #   resp.data.users #=> Array<User>
    #   resp.data.users[0] #=> Types::User
    #   resp.data.users[0].name #=> String
    #   resp.data.users[0].status #=> String
    #   resp.data.users[0].access_string #=> String
    #   resp.data.users[0].acl_names #=> Array<String>
    #   resp.data.users[0].acl_names[0] #=> String
    #   resp.data.users[0].minimum_engine_version #=> String
    #   resp.data.users[0].authentication #=> Types::Authentication
    #   resp.data.users[0].authentication.type #=> String, one of ["password", "no-password"]
    #   resp.data.users[0].authentication.password_count #=> Integer
    #   resp.data.users[0].arn #=> String
    #   resp.data.next_token #=> String
    #
    def describe_users(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeUsersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeUsersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeUsers
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterCombinationException, Errors::UserNotFoundFault]),
        data_parser: Parsers::DescribeUsers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeUsers,
        stubs: @stubs,
        params_class: Params::DescribeUsersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_users
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Used to failover a shard</p>
    #
    # @param [Hash] params
    #   See {Types::FailoverShardInput}.
    #
    # @option params [String] :cluster_name
    #   <p>The cluster being failed over</p>
    #
    # @option params [String] :shard_name
    #   <p>The name of the shard</p>
    #
    # @return [Types::FailoverShardOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.failover_shard(
    #     cluster_name: 'ClusterName', # required
    #     shard_name: 'ShardName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::FailoverShardOutput
    #   resp.data.cluster #=> Types::Cluster
    #   resp.data.cluster.name #=> String
    #   resp.data.cluster.description #=> String
    #   resp.data.cluster.status #=> String
    #   resp.data.cluster.pending_updates #=> Types::ClusterPendingUpdates
    #   resp.data.cluster.pending_updates.resharding #=> Types::ReshardingStatus
    #   resp.data.cluster.pending_updates.resharding.slot_migration #=> Types::SlotMigration
    #   resp.data.cluster.pending_updates.resharding.slot_migration.progress_percentage #=> Float
    #   resp.data.cluster.pending_updates.ac_ls #=> Types::ACLsUpdateStatus
    #   resp.data.cluster.pending_updates.ac_ls.acl_to_apply #=> String
    #   resp.data.cluster.pending_updates.service_updates #=> Array<PendingModifiedServiceUpdate>
    #   resp.data.cluster.pending_updates.service_updates[0] #=> Types::PendingModifiedServiceUpdate
    #   resp.data.cluster.pending_updates.service_updates[0].service_update_name #=> String
    #   resp.data.cluster.pending_updates.service_updates[0].status #=> String, one of ["available", "in-progress", "complete", "scheduled"]
    #   resp.data.cluster.number_of_shards #=> Integer
    #   resp.data.cluster.shards #=> Array<Shard>
    #   resp.data.cluster.shards[0] #=> Types::Shard
    #   resp.data.cluster.shards[0].name #=> String
    #   resp.data.cluster.shards[0].status #=> String
    #   resp.data.cluster.shards[0].slots #=> String
    #   resp.data.cluster.shards[0].nodes #=> Array<Node>
    #   resp.data.cluster.shards[0].nodes[0] #=> Types::Node
    #   resp.data.cluster.shards[0].nodes[0].name #=> String
    #   resp.data.cluster.shards[0].nodes[0].status #=> String
    #   resp.data.cluster.shards[0].nodes[0].availability_zone #=> String
    #   resp.data.cluster.shards[0].nodes[0].create_time #=> Time
    #   resp.data.cluster.shards[0].nodes[0].endpoint #=> Types::Endpoint
    #   resp.data.cluster.shards[0].nodes[0].endpoint.address #=> String
    #   resp.data.cluster.shards[0].nodes[0].endpoint.port #=> Integer
    #   resp.data.cluster.shards[0].number_of_nodes #=> Integer
    #   resp.data.cluster.availability_mode #=> String, one of ["singleaz", "multiaz"]
    #   resp.data.cluster.cluster_endpoint #=> Types::Endpoint
    #   resp.data.cluster.node_type #=> String
    #   resp.data.cluster.engine_version #=> String
    #   resp.data.cluster.engine_patch_version #=> String
    #   resp.data.cluster.parameter_group_name #=> String
    #   resp.data.cluster.parameter_group_status #=> String
    #   resp.data.cluster.security_groups #=> Array<SecurityGroupMembership>
    #   resp.data.cluster.security_groups[0] #=> Types::SecurityGroupMembership
    #   resp.data.cluster.security_groups[0].security_group_id #=> String
    #   resp.data.cluster.security_groups[0].status #=> String
    #   resp.data.cluster.subnet_group_name #=> String
    #   resp.data.cluster.tls_enabled #=> Boolean
    #   resp.data.cluster.kms_key_id #=> String
    #   resp.data.cluster.arn #=> String
    #   resp.data.cluster.sns_topic_arn #=> String
    #   resp.data.cluster.sns_topic_status #=> String
    #   resp.data.cluster.snapshot_retention_limit #=> Integer
    #   resp.data.cluster.maintenance_window #=> String
    #   resp.data.cluster.snapshot_window #=> String
    #   resp.data.cluster.acl_name #=> String
    #   resp.data.cluster.auto_minor_version_upgrade #=> Boolean
    #
    def failover_shard(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::FailoverShardInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::FailoverShardInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::FailoverShard
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterCombinationException, Errors::ClusterNotFoundFault, Errors::InvalidKMSKeyFault, Errors::APICallRateForCustomerExceededFault, Errors::ShardNotFoundFault, Errors::InvalidClusterStateFault, Errors::TestFailoverNotAvailableFault, Errors::InvalidParameterValueException]),
        data_parser: Parsers::FailoverShard
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::FailoverShard,
        stubs: @stubs,
        params_class: Params::FailoverShardOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :failover_shard
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all available node types that you can scale to from your cluster's current node type.
    #
    #          When you use the UpdateCluster operation to scale your cluster, the value of the NodeType parameter must be one of the node types returned by this operation.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAllowedNodeTypeUpdatesInput}.
    #
    # @option params [String] :cluster_name
    #   <p>The name of the cluster you want to scale. MemoryDB uses the cluster name to identify the current node type being used by this cluster, and from that to create a list of node types
    #            you can scale up to.</p>
    #
    # @return [Types::ListAllowedNodeTypeUpdatesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_allowed_node_type_updates(
    #     cluster_name: 'ClusterName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAllowedNodeTypeUpdatesOutput
    #   resp.data.scale_up_node_types #=> Array<String>
    #   resp.data.scale_up_node_types[0] #=> String
    #   resp.data.scale_down_node_types #=> Array<String>
    #
    def list_allowed_node_type_updates(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAllowedNodeTypeUpdatesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAllowedNodeTypeUpdatesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAllowedNodeTypeUpdates
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterCombinationException, Errors::ClusterNotFoundFault, Errors::ServiceLinkedRoleNotFoundFault, Errors::InvalidParameterValueException]),
        data_parser: Parsers::ListAllowedNodeTypeUpdates
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAllowedNodeTypeUpdates,
        stubs: @stubs,
        params_class: Params::ListAllowedNodeTypeUpdatesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_allowed_node_type_updates
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all tags currently on a named resource.
    #
    #          A tag is a key-value pair where the key and value are case-sensitive. You can use tags to categorize and track your MemoryDB resources.
    #          For more information, see <a href="https://docs.aws.amazon.com/MemoryDB/latest/devguide/Tagging-Resources.html">Tagging your MemoryDB resources</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which you want the list of tags</p>
    #
    # @return [Types::ListTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags(
    #     resource_arn: 'ResourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsOutput
    #   resp.data.tag_list #=> Array<Tag>
    #   resp.data.tag_list[0] #=> Types::Tag
    #   resp.data.tag_list[0].key #=> String
    #   resp.data.tag_list[0].value #=> String
    #
    def list_tags(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTagsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTagsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTags
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::SnapshotNotFoundFault, Errors::ClusterNotFoundFault, Errors::ACLNotFoundFault, Errors::ServiceLinkedRoleNotFoundFault, Errors::SubnetGroupNotFoundFault, Errors::UserNotFoundFault, Errors::InvalidClusterStateFault, Errors::InvalidARNFault, Errors::ParameterGroupNotFoundFault]),
        data_parser: Parsers::ListTags
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTags,
        stubs: @stubs,
        params_class: Params::ListTagsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_tags
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies the parameters of a parameter group to the engine or system default value. You can reset specific parameters by submitting a list of parameter names. To reset the entire parameter group, specify the AllParameters and ParameterGroupName parameters.</p>
    #
    # @param [Hash] params
    #   See {Types::ResetParameterGroupInput}.
    #
    # @option params [String] :parameter_group_name
    #   <p>The name of the parameter group to reset.</p>
    #
    # @option params [Boolean] :all_parameters
    #   <p>If true, all parameters in the parameter group are reset to their default values. If false, only the parameters listed by ParameterNames are reset to their default values.</p>
    #
    # @option params [Array<String>] :parameter_names
    #   <p>An array of parameter names to reset to their default values. If AllParameters is true, do not use ParameterNames. If AllParameters is false, you must specify the name of at least one parameter to reset.</p>
    #
    # @return [Types::ResetParameterGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reset_parameter_group(
    #     parameter_group_name: 'ParameterGroupName', # required
    #     all_parameters: false,
    #     parameter_names: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ResetParameterGroupOutput
    #   resp.data.parameter_group #=> Types::ParameterGroup
    #   resp.data.parameter_group.name #=> String
    #   resp.data.parameter_group.family #=> String
    #   resp.data.parameter_group.description #=> String
    #   resp.data.parameter_group.arn #=> String
    #
    def reset_parameter_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ResetParameterGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ResetParameterGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ResetParameterGroup
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterCombinationException, Errors::ServiceLinkedRoleNotFoundFault, Errors::InvalidParameterGroupStateFault, Errors::ParameterGroupNotFoundFault, Errors::InvalidParameterValueException]),
        data_parser: Parsers::ResetParameterGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ResetParameterGroup,
        stubs: @stubs,
        params_class: Params::ResetParameterGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :reset_parameter_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>A tag is a key-value pair where the key and value are case-sensitive. You can use tags to categorize and track all your MemoryDB resources.
    #
    #          When you add or remove tags on clusters, those actions will be replicated to all nodes in the cluster. For more information, see
    #
    #          <a href="https://docs.aws.amazon.com/MemoryDB/latest/devguide/iam.resourcelevelpermissions.html">Resource-level permissions</a>.</p>
    #
    #          <p>For example, you can use cost-allocation tags to your MemoryDB resources, Amazon generates a cost allocation report as a comma-separated value
    #           (CSV) file with your usage and costs aggregated by your tags. You can apply tags that represent business categories
    #           (such as cost centers, application names, or owners) to organize your costs across multiple services.
    #
    #          For more information, see <a href="https://docs.aws.amazon.com/MemoryDB/latest/devguide/tagging.html">Using Cost Allocation Tags</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to which the tags are to be added</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value, although null is accepted.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'ResourceArn', # required
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TagResourceOutput
    #   resp.data.tag_list #=> Array<Tag>
    #   resp.data.tag_list[0] #=> Types::Tag
    #   resp.data.tag_list[0].key #=> String
    #   resp.data.tag_list[0].value #=> String
    #
    def tag_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TagResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TagResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TagResource
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::SnapshotNotFoundFault, Errors::ClusterNotFoundFault, Errors::TagQuotaPerResourceExceeded, Errors::ACLNotFoundFault, Errors::ServiceLinkedRoleNotFoundFault, Errors::SubnetGroupNotFoundFault, Errors::UserNotFoundFault, Errors::InvalidClusterStateFault, Errors::InvalidARNFault, Errors::ParameterGroupNotFoundFault]),
        data_parser: Parsers::TagResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TagResource,
        stubs: @stubs,
        params_class: Params::TagResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :tag_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Use this operation to remove tags on a resource</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to which the tags are to be removed</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The list of keys of the tags that are to be removed</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_arn: 'ResourceArn', # required
    #     tag_keys: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UntagResourceOutput
    #   resp.data.tag_list #=> Array<Tag>
    #   resp.data.tag_list[0] #=> Types::Tag
    #   resp.data.tag_list[0].key #=> String
    #   resp.data.tag_list[0].value #=> String
    #
    def untag_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UntagResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UntagResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UntagResource
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::SnapshotNotFoundFault, Errors::ClusterNotFoundFault, Errors::TagNotFoundFault, Errors::ACLNotFoundFault, Errors::ServiceLinkedRoleNotFoundFault, Errors::SubnetGroupNotFoundFault, Errors::UserNotFoundFault, Errors::InvalidClusterStateFault, Errors::InvalidARNFault, Errors::ParameterGroupNotFoundFault]),
        data_parser: Parsers::UntagResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UntagResource,
        stubs: @stubs,
        params_class: Params::UntagResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :untag_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Changes the list of users that belong to the Access Control List.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateACLInput}.
    #
    # @option params [String] :acl_name
    #   <p>The name of the Access Control List</p>
    #
    # @option params [Array<String>] :user_names_to_add
    #   <p>The list of users to add to the Access Control List</p>
    #
    # @option params [Array<String>] :user_names_to_remove
    #   <p>The list of users to remove from the Access Control List</p>
    #
    # @return [Types::UpdateACLOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_acl(
    #     acl_name: 'ACLName', # required
    #     user_names_to_add: [
    #       'member'
    #     ],
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateACLOutput
    #   resp.data.acl #=> Types::ACL
    #   resp.data.acl.name #=> String
    #   resp.data.acl.status #=> String
    #   resp.data.acl.user_names #=> Array<String>
    #   resp.data.acl.user_names[0] #=> String
    #   resp.data.acl.minimum_engine_version #=> String
    #   resp.data.acl.pending_changes #=> Types::ACLPendingChanges
    #   resp.data.acl.pending_changes.user_names_to_remove #=> Array<String>
    #   resp.data.acl.pending_changes.user_names_to_add #=> Array<String>
    #   resp.data.acl.clusters #=> Array<String>
    #   resp.data.acl.clusters[0] #=> String
    #   resp.data.acl.arn #=> String
    #
    def update_acl(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateACLInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateACLInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateACL
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DuplicateUserNameFault, Errors::InvalidParameterCombinationException, Errors::ACLNotFoundFault, Errors::DefaultUserRequired, Errors::UserNotFoundFault, Errors::InvalidACLStateFault, Errors::InvalidParameterValueException]),
        data_parser: Parsers::UpdateACL
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateACL,
        stubs: @stubs,
        params_class: Params::UpdateACLOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_acl
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies the settings for a cluster. You can use this operation to change one or more cluster configuration settings by specifying the settings and the new values.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateClusterInput}.
    #
    # @option params [String] :cluster_name
    #   <p>The name of the cluster to update</p>
    #
    # @option params [String] :description
    #   <p>The description of the cluster to update</p>
    #
    # @option params [Array<String>] :security_group_ids
    #   <p>The SecurityGroupIds to update</p>
    #
    # @option params [String] :maintenance_window
    #   <p>The maintenance window to update</p>
    #
    # @option params [String] :sns_topic_arn
    #   <p>The SNS topic ARN to update</p>
    #
    # @option params [String] :sns_topic_status
    #   <p>The status of the Amazon SNS notification topic. Notifications are sent only if the status is active.</p>
    #
    # @option params [String] :parameter_group_name
    #   <p>The name of the parameter group to update</p>
    #
    # @option params [String] :snapshot_window
    #   <p>The daily time range (in UTC) during which MemoryDB begins taking a daily snapshot of your cluster.</p>
    #
    # @option params [Integer] :snapshot_retention_limit
    #   <p>The number of days for which MemoryDB retains automatic cluster snapshots before deleting them. For example, if you set SnapshotRetentionLimit to 5, a snapshot that was taken today is retained for 5 days before being deleted.</p>
    #
    # @option params [String] :node_type
    #   <p>A valid node type that you want to scale this cluster up or down to.</p>
    #
    # @option params [String] :engine_version
    #   <p>The upgraded version of the engine to be run on the nodes. You can upgrade to a newer engine version, but you cannot downgrade to an earlier engine version. If you want to use an earlier engine version, you must delete the existing cluster and create it anew with the earlier engine version.</p>
    #
    # @option params [ReplicaConfigurationRequest] :replica_configuration
    #   <p>The number of replicas that will reside in each shard</p>
    #
    # @option params [ShardConfigurationRequest] :shard_configuration
    #   <p>The number of shards in the cluster</p>
    #
    # @option params [String] :acl_name
    #   <p>The Access Control List that is associated with the cluster</p>
    #
    # @return [Types::UpdateClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_cluster(
    #     cluster_name: 'ClusterName', # required
    #     description: 'Description',
    #     security_group_ids: [
    #       'member'
    #     ],
    #     maintenance_window: 'MaintenanceWindow',
    #     sns_topic_arn: 'SnsTopicArn',
    #     sns_topic_status: 'SnsTopicStatus',
    #     parameter_group_name: 'ParameterGroupName',
    #     snapshot_window: 'SnapshotWindow',
    #     snapshot_retention_limit: 1,
    #     node_type: 'NodeType',
    #     engine_version: 'EngineVersion',
    #     replica_configuration: {
    #       replica_count: 1
    #     },
    #     shard_configuration: {
    #       shard_count: 1
    #     },
    #     acl_name: 'ACLName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateClusterOutput
    #   resp.data.cluster #=> Types::Cluster
    #   resp.data.cluster.name #=> String
    #   resp.data.cluster.description #=> String
    #   resp.data.cluster.status #=> String
    #   resp.data.cluster.pending_updates #=> Types::ClusterPendingUpdates
    #   resp.data.cluster.pending_updates.resharding #=> Types::ReshardingStatus
    #   resp.data.cluster.pending_updates.resharding.slot_migration #=> Types::SlotMigration
    #   resp.data.cluster.pending_updates.resharding.slot_migration.progress_percentage #=> Float
    #   resp.data.cluster.pending_updates.ac_ls #=> Types::ACLsUpdateStatus
    #   resp.data.cluster.pending_updates.ac_ls.acl_to_apply #=> String
    #   resp.data.cluster.pending_updates.service_updates #=> Array<PendingModifiedServiceUpdate>
    #   resp.data.cluster.pending_updates.service_updates[0] #=> Types::PendingModifiedServiceUpdate
    #   resp.data.cluster.pending_updates.service_updates[0].service_update_name #=> String
    #   resp.data.cluster.pending_updates.service_updates[0].status #=> String, one of ["available", "in-progress", "complete", "scheduled"]
    #   resp.data.cluster.number_of_shards #=> Integer
    #   resp.data.cluster.shards #=> Array<Shard>
    #   resp.data.cluster.shards[0] #=> Types::Shard
    #   resp.data.cluster.shards[0].name #=> String
    #   resp.data.cluster.shards[0].status #=> String
    #   resp.data.cluster.shards[0].slots #=> String
    #   resp.data.cluster.shards[0].nodes #=> Array<Node>
    #   resp.data.cluster.shards[0].nodes[0] #=> Types::Node
    #   resp.data.cluster.shards[0].nodes[0].name #=> String
    #   resp.data.cluster.shards[0].nodes[0].status #=> String
    #   resp.data.cluster.shards[0].nodes[0].availability_zone #=> String
    #   resp.data.cluster.shards[0].nodes[0].create_time #=> Time
    #   resp.data.cluster.shards[0].nodes[0].endpoint #=> Types::Endpoint
    #   resp.data.cluster.shards[0].nodes[0].endpoint.address #=> String
    #   resp.data.cluster.shards[0].nodes[0].endpoint.port #=> Integer
    #   resp.data.cluster.shards[0].number_of_nodes #=> Integer
    #   resp.data.cluster.availability_mode #=> String, one of ["singleaz", "multiaz"]
    #   resp.data.cluster.cluster_endpoint #=> Types::Endpoint
    #   resp.data.cluster.node_type #=> String
    #   resp.data.cluster.engine_version #=> String
    #   resp.data.cluster.engine_patch_version #=> String
    #   resp.data.cluster.parameter_group_name #=> String
    #   resp.data.cluster.parameter_group_status #=> String
    #   resp.data.cluster.security_groups #=> Array<SecurityGroupMembership>
    #   resp.data.cluster.security_groups[0] #=> Types::SecurityGroupMembership
    #   resp.data.cluster.security_groups[0].security_group_id #=> String
    #   resp.data.cluster.security_groups[0].status #=> String
    #   resp.data.cluster.subnet_group_name #=> String
    #   resp.data.cluster.tls_enabled #=> Boolean
    #   resp.data.cluster.kms_key_id #=> String
    #   resp.data.cluster.arn #=> String
    #   resp.data.cluster.sns_topic_arn #=> String
    #   resp.data.cluster.sns_topic_status #=> String
    #   resp.data.cluster.snapshot_retention_limit #=> Integer
    #   resp.data.cluster.maintenance_window #=> String
    #   resp.data.cluster.snapshot_window #=> String
    #   resp.data.cluster.acl_name #=> String
    #   resp.data.cluster.auto_minor_version_upgrade #=> Boolean
    #
    def update_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateClusterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateClusterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateCluster
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterCombinationException, Errors::ClusterQuotaForCustomerExceededFault, Errors::InvalidNodeStateFault, Errors::ACLNotFoundFault, Errors::ServiceLinkedRoleNotFoundFault, Errors::NodeQuotaForClusterExceededFault, Errors::InvalidClusterStateFault, Errors::ShardsPerClusterQuotaExceededFault, Errors::ParameterGroupNotFoundFault, Errors::ClusterNotFoundFault, Errors::InvalidKMSKeyFault, Errors::InvalidVPCNetworkStateFault, Errors::NodeQuotaForCustomerExceededFault, Errors::NoOperationFault, Errors::InvalidACLStateFault, Errors::InvalidParameterValueException]),
        data_parser: Parsers::UpdateCluster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateCluster,
        stubs: @stubs,
        params_class: Params::UpdateClusterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_cluster
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the parameters of a parameter group. You can modify up to 20 parameters in a single request by submitting a list parameter name and value pairs.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateParameterGroupInput}.
    #
    # @option params [String] :parameter_group_name
    #   <p>The name of the parameter group to update.</p>
    #
    # @option params [Array<ParameterNameValue>] :parameter_name_values
    #   <p>An array of parameter names and values for the parameter update. You must supply at least one parameter name and value; subsequent arguments are optional. A maximum of 20 parameters may be updated per request.</p>
    #
    # @return [Types::UpdateParameterGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_parameter_group(
    #     parameter_group_name: 'ParameterGroupName', # required
    #     parameter_name_values: [
    #       {
    #         parameter_name: 'ParameterName',
    #         parameter_value: 'ParameterValue'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateParameterGroupOutput
    #   resp.data.parameter_group #=> Types::ParameterGroup
    #   resp.data.parameter_group.name #=> String
    #   resp.data.parameter_group.family #=> String
    #   resp.data.parameter_group.description #=> String
    #   resp.data.parameter_group.arn #=> String
    #
    def update_parameter_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateParameterGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateParameterGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateParameterGroup
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterCombinationException, Errors::ServiceLinkedRoleNotFoundFault, Errors::InvalidParameterGroupStateFault, Errors::ParameterGroupNotFoundFault, Errors::InvalidParameterValueException]),
        data_parser: Parsers::UpdateParameterGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateParameterGroup,
        stubs: @stubs,
        params_class: Params::UpdateParameterGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_parameter_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a subnet group. For more information, see <a href="https://docs.aws.amazon.com/MemoryDB/latest/devguide/ubnetGroups.Modifying.html">Updating a subnet group</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateSubnetGroupInput}.
    #
    # @option params [String] :subnet_group_name
    #   <p>The name of the subnet group</p>
    #
    # @option params [String] :description
    #   <p>A description of the subnet group</p>
    #
    # @option params [Array<String>] :subnet_ids
    #   <p>The EC2 subnet IDs for the subnet group.</p>
    #
    # @return [Types::UpdateSubnetGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_subnet_group(
    #     subnet_group_name: 'SubnetGroupName', # required
    #     description: 'Description',
    #     subnet_ids: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateSubnetGroupOutput
    #   resp.data.subnet_group #=> Types::SubnetGroup
    #   resp.data.subnet_group.name #=> String
    #   resp.data.subnet_group.description #=> String
    #   resp.data.subnet_group.vpc_id #=> String
    #   resp.data.subnet_group.subnets #=> Array<Subnet>
    #   resp.data.subnet_group.subnets[0] #=> Types::Subnet
    #   resp.data.subnet_group.subnets[0].identifier #=> String
    #   resp.data.subnet_group.subnets[0].availability_zone #=> Types::AvailabilityZone
    #   resp.data.subnet_group.subnets[0].availability_zone.name #=> String
    #   resp.data.subnet_group.arn #=> String
    #
    def update_subnet_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateSubnetGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateSubnetGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateSubnetGroup
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::SubnetNotAllowedFault, Errors::ServiceLinkedRoleNotFoundFault, Errors::SubnetInUse, Errors::SubnetGroupNotFoundFault, Errors::InvalidSubnet, Errors::SubnetQuotaExceededFault]),
        data_parser: Parsers::UpdateSubnetGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateSubnetGroup,
        stubs: @stubs,
        params_class: Params::UpdateSubnetGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_subnet_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Changes user password(s) and/or access string.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateUserInput}.
    #
    # @option params [String] :user_name
    #   <p>The name of the user</p>
    #
    # @option params [AuthenticationMode] :authentication_mode
    #   <p>Denotes the user's authentication properties, such as whether it requires a password to authenticate.</p>
    #
    # @option params [String] :access_string
    #   <p>Access permissions string used for this user.</p>
    #
    # @return [Types::UpdateUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user(
    #     user_name: 'UserName', # required
    #     authentication_mode: {
    #       type: 'password', # accepts ["password"]
    #       passwords: [
    #         'member'
    #       ]
    #     },
    #     access_string: 'AccessString'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateUserOutput
    #   resp.data.user #=> Types::User
    #   resp.data.user.name #=> String
    #   resp.data.user.status #=> String
    #   resp.data.user.access_string #=> String
    #   resp.data.user.acl_names #=> Array<String>
    #   resp.data.user.acl_names[0] #=> String
    #   resp.data.user.minimum_engine_version #=> String
    #   resp.data.user.authentication #=> Types::Authentication
    #   resp.data.user.authentication.type #=> String, one of ["password", "no-password"]
    #   resp.data.user.authentication.password_count #=> Integer
    #   resp.data.user.arn #=> String
    #
    def update_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateUser
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterCombinationException, Errors::UserNotFoundFault, Errors::InvalidUserStateFault, Errors::InvalidParameterValueException]),
        data_parser: Parsers::UpdateUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateUser,
        stubs: @stubs,
        params_class: Params::UpdateUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    private

    def apply_middleware(middleware_stack, middleware)
      Client.middleware.apply(middleware_stack)
      @middleware.apply(middleware_stack)
      Hearth::MiddlewareBuilder.new(middleware).apply(middleware_stack)
    end
  end
end
