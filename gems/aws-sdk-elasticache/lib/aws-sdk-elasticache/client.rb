# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::ElastiCache
  # An API client for AmazonElastiCacheV9
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Amazon ElastiCache</fullname>
  #         <p>Amazon ElastiCache is a web service that makes it easier to set up, operate,
  #             and scale a distributed cache in the cloud.</p>
  #         <p>With ElastiCache, customers get all of the benefits of a high-performance,
  #             in-memory cache with less of the administrative burden involved in launching and managing a distributed cache.
  #             The service makes setup, scaling,
  #             and cluster failure handling much simpler than in a self-managed cache deployment.</p>
  #         <p>In addition, through integration with Amazon CloudWatch,
  #             customers get enhanced visibility into the key performance statistics
  #             associated with their cache and can receive alarms if a part of their cache runs hot.</p>
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
    def initialize(config = AWS::SDK::ElastiCache::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>A  tag is a key-value pair where the key and value are case-sensitive.
    #             You can use tags to categorize and track all your ElastiCache resources, with the exception of global replication group. When you add or remove tags on replication groups, those actions will be replicated to all nodes in the replication group.
    #           For more information, see <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/IAM.ResourceLevelPermissions.html">Resource-level permissions</a>.</p>
    #         <p>
    #             For example, you can use cost-allocation tags to your ElastiCache resources,
    #             Amazon generates a cost allocation report as a comma-separated value (CSV) file
    #             with your usage and costs aggregated by your tags.
    #             You can apply tags that represent business categories (such as cost centers, application names, or owners)
    #             to organize your costs across multiple services.</p>
    #             <p>For more information,
    #             see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Tagging.html">Using Cost Allocation Tags in Amazon ElastiCache</a>
    #             in the <i>ElastiCache User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::AddTagsToResourceInput}.
    #
    # @option params [String] :resource_name
    #   <p>The Amazon Resource Name (ARN) of the resource to which the tags are to be added,
    #               for example <code>arn:aws:elasticache:us-west-2:0123456789:cluster:myCluster</code>
    #               or <code>arn:aws:elasticache:us-west-2:0123456789:snapshot:mySnapshot</code>.
    #               ElastiCache resources are <i>cluster</i> and <i>snapshot</i>.</p>
    #           <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and Amazon Service Namespaces</a>.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tags to be added to this resource. A tag is a key-value pair.
    #             A tag key must be accompanied by a tag value, although null is accepted.</p>
    #
    # @return [Types::AddTagsToResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_tags_to_resource(
    #     resource_name: 'ResourceName', # required
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
    #   resp.data #=> Types::AddTagsToResourceOutput
    #   resp.data.tag_list #=> Array<Tag>
    #   resp.data.tag_list[0] #=> Types::Tag
    #   resp.data.tag_list[0].key #=> String
    #   resp.data.tag_list[0].value #=> String
    #
    def add_tags_to_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddTagsToResourceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AddTagsToResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AddTagsToResource
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CacheSecurityGroupNotFoundFault, Errors::InvalidARNFault, Errors::CacheClusterNotFoundFault, Errors::SnapshotNotFoundFault, Errors::UserNotFoundFault, Errors::CacheSubnetGroupNotFoundFault, Errors::InvalidReplicationGroupStateFault, Errors::UserGroupNotFoundFault, Errors::ReservedCacheNodeNotFoundFault, Errors::CacheParameterGroupNotFoundFault, Errors::TagQuotaPerResourceExceeded, Errors::ReplicationGroupNotFoundFault]),
        data_parser: Parsers::AddTagsToResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AddTagsToResource,
        stubs: @stubs,
        params_class: Params::AddTagsToResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :add_tags_to_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Allows network ingress to a cache
    #             security group. Applications using ElastiCache must be running on Amazon EC2, and Amazon EC2
    #             security groups are used as the authorization mechanism.</p>
    #         <note>
    #             <p>You cannot authorize ingress from an Amazon EC2 security group in one region to an
    #             ElastiCache cluster in another region.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::AuthorizeCacheSecurityGroupIngressInput}.
    #
    # @option params [String] :cache_security_group_name
    #   <p>The cache security group that allows network ingress.</p>
    #
    # @option params [String] :ec2_security_group_name
    #   <p>The Amazon EC2 security group to be authorized for ingress to the cache security group.</p>
    #
    # @option params [String] :ec2_security_group_owner_id
    #   <p>The Amazon account number of the Amazon EC2 security group owner.
    #               Note that this is not the same thing as an Amazon access key ID -
    #               you must provide a valid Amazon account number for this parameter.</p>
    #
    # @return [Types::AuthorizeCacheSecurityGroupIngressOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.authorize_cache_security_group_ingress(
    #     cache_security_group_name: 'CacheSecurityGroupName', # required
    #     ec2_security_group_name: 'EC2SecurityGroupName', # required
    #     ec2_security_group_owner_id: 'EC2SecurityGroupOwnerId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AuthorizeCacheSecurityGroupIngressOutput
    #   resp.data.cache_security_group #=> Types::CacheSecurityGroup
    #   resp.data.cache_security_group.owner_id #=> String
    #   resp.data.cache_security_group.cache_security_group_name #=> String
    #   resp.data.cache_security_group.description #=> String
    #   resp.data.cache_security_group.ec2_security_groups #=> Array<EC2SecurityGroup>
    #   resp.data.cache_security_group.ec2_security_groups[0] #=> Types::EC2SecurityGroup
    #   resp.data.cache_security_group.ec2_security_groups[0].status #=> String
    #   resp.data.cache_security_group.ec2_security_groups[0].ec2_security_group_name #=> String
    #   resp.data.cache_security_group.ec2_security_groups[0].ec2_security_group_owner_id #=> String
    #   resp.data.cache_security_group.arn #=> String
    #
    def authorize_cache_security_group_ingress(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AuthorizeCacheSecurityGroupIngressInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AuthorizeCacheSecurityGroupIngressInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AuthorizeCacheSecurityGroupIngress
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::CacheSecurityGroupNotFoundFault, Errors::InvalidCacheSecurityGroupStateFault, Errors::AuthorizationAlreadyExistsFault, Errors::InvalidParameterCombinationException]),
        data_parser: Parsers::AuthorizeCacheSecurityGroupIngress
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AuthorizeCacheSecurityGroupIngress,
        stubs: @stubs,
        params_class: Params::AuthorizeCacheSecurityGroupIngressOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :authorize_cache_security_group_ingress
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Apply the service update. For more information on service updates and applying them, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/applying-updates.html">Applying Service Updates</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchApplyUpdateActionInput}.
    #
    # @option params [Array<String>] :replication_group_ids
    #   <p>The replication group IDs</p>
    #
    # @option params [Array<String>] :cache_cluster_ids
    #   <p>The cache cluster IDs</p>
    #
    # @option params [String] :service_update_name
    #   <p>The unique ID of the service update</p>
    #
    # @return [Types::BatchApplyUpdateActionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_apply_update_action(
    #     replication_group_ids: [
    #       'member'
    #     ],
    #     cache_cluster_ids: [
    #       'member'
    #     ],
    #     service_update_name: 'ServiceUpdateName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchApplyUpdateActionOutput
    #   resp.data.processed_update_actions #=> Array<ProcessedUpdateAction>
    #   resp.data.processed_update_actions[0] #=> Types::ProcessedUpdateAction
    #   resp.data.processed_update_actions[0].replication_group_id #=> String
    #   resp.data.processed_update_actions[0].cache_cluster_id #=> String
    #   resp.data.processed_update_actions[0].service_update_name #=> String
    #   resp.data.processed_update_actions[0].update_action_status #=> String, one of ["not-applied", "waiting-to-start", "in-progress", "stopping", "stopped", "complete", "scheduling", "scheduled", "not-applicable"]
    #   resp.data.unprocessed_update_actions #=> Array<UnprocessedUpdateAction>
    #   resp.data.unprocessed_update_actions[0] #=> Types::UnprocessedUpdateAction
    #   resp.data.unprocessed_update_actions[0].replication_group_id #=> String
    #   resp.data.unprocessed_update_actions[0].cache_cluster_id #=> String
    #   resp.data.unprocessed_update_actions[0].service_update_name #=> String
    #   resp.data.unprocessed_update_actions[0].error_type #=> String
    #   resp.data.unprocessed_update_actions[0].error_message #=> String
    #
    def batch_apply_update_action(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchApplyUpdateActionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchApplyUpdateActionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchApplyUpdateAction
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::ServiceUpdateNotFoundFault]),
        data_parser: Parsers::BatchApplyUpdateAction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchApplyUpdateAction,
        stubs: @stubs,
        params_class: Params::BatchApplyUpdateActionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_apply_update_action
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stop the service update. For more information on service updates and stopping them, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/stopping-self-service-updates.html">Stopping Service Updates</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchStopUpdateActionInput}.
    #
    # @option params [Array<String>] :replication_group_ids
    #   <p>The replication group IDs</p>
    #
    # @option params [Array<String>] :cache_cluster_ids
    #   <p>The cache cluster IDs</p>
    #
    # @option params [String] :service_update_name
    #   <p>The unique ID of the service update</p>
    #
    # @return [Types::BatchStopUpdateActionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_stop_update_action(
    #     replication_group_ids: [
    #       'member'
    #     ],
    #     cache_cluster_ids: [
    #       'member'
    #     ],
    #     service_update_name: 'ServiceUpdateName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchStopUpdateActionOutput
    #   resp.data.processed_update_actions #=> Array<ProcessedUpdateAction>
    #   resp.data.processed_update_actions[0] #=> Types::ProcessedUpdateAction
    #   resp.data.processed_update_actions[0].replication_group_id #=> String
    #   resp.data.processed_update_actions[0].cache_cluster_id #=> String
    #   resp.data.processed_update_actions[0].service_update_name #=> String
    #   resp.data.processed_update_actions[0].update_action_status #=> String, one of ["not-applied", "waiting-to-start", "in-progress", "stopping", "stopped", "complete", "scheduling", "scheduled", "not-applicable"]
    #   resp.data.unprocessed_update_actions #=> Array<UnprocessedUpdateAction>
    #   resp.data.unprocessed_update_actions[0] #=> Types::UnprocessedUpdateAction
    #   resp.data.unprocessed_update_actions[0].replication_group_id #=> String
    #   resp.data.unprocessed_update_actions[0].cache_cluster_id #=> String
    #   resp.data.unprocessed_update_actions[0].service_update_name #=> String
    #   resp.data.unprocessed_update_actions[0].error_type #=> String
    #   resp.data.unprocessed_update_actions[0].error_message #=> String
    #
    def batch_stop_update_action(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchStopUpdateActionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchStopUpdateActionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchStopUpdateAction
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::ServiceUpdateNotFoundFault]),
        data_parser: Parsers::BatchStopUpdateAction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchStopUpdateAction,
        stubs: @stubs,
        params_class: Params::BatchStopUpdateActionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_stop_update_action
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Complete the migration of data.</p>
    #
    # @param [Hash] params
    #   See {Types::CompleteMigrationInput}.
    #
    # @option params [String] :replication_group_id
    #   <p>The ID of the replication group to which data is being migrated.</p>
    #
    # @option params [Boolean] :force
    #   <p>Forces the migration to stop without ensuring that data is in sync. It is recommended to use this option only to abort the migration and not recommended when application wants to continue migration to ElastiCache.</p>
    #
    # @return [Types::CompleteMigrationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.complete_migration(
    #     replication_group_id: 'ReplicationGroupId', # required
    #     force: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CompleteMigrationOutput
    #   resp.data.replication_group #=> Types::ReplicationGroup
    #   resp.data.replication_group.replication_group_id #=> String
    #   resp.data.replication_group.description #=> String
    #   resp.data.replication_group.global_replication_group_info #=> Types::GlobalReplicationGroupInfo
    #   resp.data.replication_group.global_replication_group_info.global_replication_group_id #=> String
    #   resp.data.replication_group.global_replication_group_info.global_replication_group_member_role #=> String
    #   resp.data.replication_group.status #=> String
    #   resp.data.replication_group.pending_modified_values #=> Types::ReplicationGroupPendingModifiedValues
    #   resp.data.replication_group.pending_modified_values.primary_cluster_id #=> String
    #   resp.data.replication_group.pending_modified_values.automatic_failover_status #=> String, one of ["enabled", "disabled"]
    #   resp.data.replication_group.pending_modified_values.resharding #=> Types::ReshardingStatus
    #   resp.data.replication_group.pending_modified_values.resharding.slot_migration #=> Types::SlotMigration
    #   resp.data.replication_group.pending_modified_values.resharding.slot_migration.progress_percentage #=> Float
    #   resp.data.replication_group.pending_modified_values.auth_token_status #=> String, one of ["SETTING", "ROTATING"]
    #   resp.data.replication_group.pending_modified_values.user_groups #=> Types::UserGroupsUpdateStatus
    #   resp.data.replication_group.pending_modified_values.user_groups.user_group_ids_to_add #=> Array<String>
    #   resp.data.replication_group.pending_modified_values.user_groups.user_group_ids_to_add[0] #=> String
    #   resp.data.replication_group.pending_modified_values.user_groups.user_group_ids_to_remove #=> Array<String>
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations #=> Array<PendingLogDeliveryConfiguration>
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0] #=> Types::PendingLogDeliveryConfiguration
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].log_type #=> String, one of ["slow-log", "engine-log"]
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].destination_type #=> String, one of ["cloudwatch-logs", "kinesis-firehose"]
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].destination_details #=> Types::DestinationDetails
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].destination_details.cloud_watch_logs_details #=> Types::CloudWatchLogsDestinationDetails
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].destination_details.cloud_watch_logs_details.log_group #=> String
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].destination_details.kinesis_firehose_details #=> Types::KinesisFirehoseDestinationDetails
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].destination_details.kinesis_firehose_details.delivery_stream #=> String
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].log_format #=> String, one of ["text", "json"]
    #   resp.data.replication_group.member_clusters #=> Array<String>
    #   resp.data.replication_group.member_clusters[0] #=> String
    #   resp.data.replication_group.node_groups #=> Array<NodeGroup>
    #   resp.data.replication_group.node_groups[0] #=> Types::NodeGroup
    #   resp.data.replication_group.node_groups[0].node_group_id #=> String
    #   resp.data.replication_group.node_groups[0].status #=> String
    #   resp.data.replication_group.node_groups[0].primary_endpoint #=> Types::Endpoint
    #   resp.data.replication_group.node_groups[0].primary_endpoint.address #=> String
    #   resp.data.replication_group.node_groups[0].primary_endpoint.port #=> Integer
    #   resp.data.replication_group.node_groups[0].reader_endpoint #=> Types::Endpoint
    #   resp.data.replication_group.node_groups[0].slots #=> String
    #   resp.data.replication_group.node_groups[0].node_group_members #=> Array<NodeGroupMember>
    #   resp.data.replication_group.node_groups[0].node_group_members[0] #=> Types::NodeGroupMember
    #   resp.data.replication_group.node_groups[0].node_group_members[0].cache_cluster_id #=> String
    #   resp.data.replication_group.node_groups[0].node_group_members[0].cache_node_id #=> String
    #   resp.data.replication_group.node_groups[0].node_group_members[0].read_endpoint #=> Types::Endpoint
    #   resp.data.replication_group.node_groups[0].node_group_members[0].preferred_availability_zone #=> String
    #   resp.data.replication_group.node_groups[0].node_group_members[0].preferred_outpost_arn #=> String
    #   resp.data.replication_group.node_groups[0].node_group_members[0].current_role #=> String
    #   resp.data.replication_group.snapshotting_cluster_id #=> String
    #   resp.data.replication_group.automatic_failover #=> String, one of ["enabled", "disabled", "enabling", "disabling"]
    #   resp.data.replication_group.multi_az #=> String, one of ["enabled", "disabled"]
    #   resp.data.replication_group.configuration_endpoint #=> Types::Endpoint
    #   resp.data.replication_group.snapshot_retention_limit #=> Integer
    #   resp.data.replication_group.snapshot_window #=> String
    #   resp.data.replication_group.cluster_enabled #=> Boolean
    #   resp.data.replication_group.cache_node_type #=> String
    #   resp.data.replication_group.auth_token_enabled #=> Boolean
    #   resp.data.replication_group.auth_token_last_modified_date #=> Time
    #   resp.data.replication_group.transit_encryption_enabled #=> Boolean
    #   resp.data.replication_group.at_rest_encryption_enabled #=> Boolean
    #   resp.data.replication_group.member_clusters_outpost_arns #=> Array<String>
    #   resp.data.replication_group.member_clusters_outpost_arns[0] #=> String
    #   resp.data.replication_group.kms_key_id #=> String
    #   resp.data.replication_group.arn #=> String
    #   resp.data.replication_group.user_group_ids #=> Array<String>
    #   resp.data.replication_group.log_delivery_configurations #=> Array<LogDeliveryConfiguration>
    #   resp.data.replication_group.log_delivery_configurations[0] #=> Types::LogDeliveryConfiguration
    #   resp.data.replication_group.log_delivery_configurations[0].log_type #=> String, one of ["slow-log", "engine-log"]
    #   resp.data.replication_group.log_delivery_configurations[0].destination_type #=> String, one of ["cloudwatch-logs", "kinesis-firehose"]
    #   resp.data.replication_group.log_delivery_configurations[0].destination_details #=> Types::DestinationDetails
    #   resp.data.replication_group.log_delivery_configurations[0].log_format #=> String, one of ["text", "json"]
    #   resp.data.replication_group.log_delivery_configurations[0].status #=> String, one of ["active", "enabling", "modifying", "disabling", "error"]
    #   resp.data.replication_group.log_delivery_configurations[0].message #=> String
    #   resp.data.replication_group.replication_group_create_time #=> Time
    #   resp.data.replication_group.data_tiering #=> String, one of ["enabled", "disabled"]
    #
    def complete_migration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CompleteMigrationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CompleteMigrationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CompleteMigration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ReplicationGroupNotUnderMigrationFault, Errors::InvalidReplicationGroupStateFault, Errors::ReplicationGroupNotFoundFault]),
        data_parser: Parsers::CompleteMigration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CompleteMigration,
        stubs: @stubs,
        params_class: Params::CompleteMigrationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :complete_migration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Makes a copy of an existing snapshot.</p>
    #
    #         <note>
    #             <p>This operation is valid for Redis only.</p>
    #          </note>
    #
    #         <important>
    #             <p>Users or groups that have permissions to use the <code>CopySnapshot</code> operation
    #                 can create their own Amazon S3 buckets and copy snapshots to it.
    #                 To control access to your snapshots, use an IAM policy to control who has the ability to use
    #                 the <code>CopySnapshot</code> operation.
    #                 For more information about using IAM to control the use of ElastiCache operations, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/backups-exporting.html">Exporting Snapshots</a>
    #                 and <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/IAM.html">Authentication & Access Control</a>.</p>
    #          </important>
    #
    #         <p>You could receive the following error messages.</p>
    #         <p class="title">
    #             <b>Error Messages</b>
    #          </p>
    #          <ul>
    #             <li>
    #                 <p>
    #                   <b>Error Message:</b>
    #                     The S3 bucket %s is outside of the region.</p>
    #                 <p>
    #                   <b>Solution:</b>
    #                     Create an Amazon S3 bucket in the same region as your snapshot.
    #                     For more information, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/backups-exporting.html#backups-exporting-create-s3-bucket">Step 1: Create an Amazon S3 Bucket</a> in the ElastiCache User Guide.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <b>Error Message:</b>
    #                     The S3 bucket %s does not exist.</p>
    #                 <p>
    #                   <b>Solution:</b>
    #                     Create an Amazon S3 bucket in the same region as your snapshot.
    #                     For more information, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/backups-exporting.html#backups-exporting-create-s3-bucket">Step 1: Create an Amazon S3 Bucket</a> in the ElastiCache User Guide.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <b>Error Message:</b>
    #                     The S3 bucket %s is not owned by the authenticated user.</p>
    #                 <p>
    #                   <b>Solution:</b>
    #                     Create an Amazon S3 bucket in the same region as your snapshot.
    #                     For more information, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/backups-exporting.html#backups-exporting-create-s3-bucket">Step 1: Create an Amazon S3 Bucket</a> in the ElastiCache User Guide.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <b>Error Message:</b>
    #                     The authenticated user does not have sufficient permissions to perform the desired activity.</p>
    #                 <p>
    #                   <b>Solution:</b>
    #                     Contact your system administrator to get the needed permissions.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <b>Error Message:</b>
    #                     The S3 bucket %s already contains an object with key %s.</p>
    #                 <p>
    #                   <b>Solution:</b>
    #                     Give the <code>TargetSnapshotName</code> a new and unique value.
    #                     If exporting a snapshot,
    #                     you could alternatively create a new Amazon S3 bucket
    #                     and use this same value for <code>TargetSnapshotName</code>.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <b>Error Message: </b>
    #                     ElastiCache has not been granted READ permissions %s on the S3 Bucket.</p>
    #                 <p>
    #                   <b>Solution:</b>
    #                     Add List and Read permissions on the bucket.
    #                 For more information, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/backups-exporting.html#backups-exporting-grant-access">Step 2: Grant ElastiCache Access to Your Amazon S3 Bucket</a> in the ElastiCache User Guide.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <b>Error Message: </b>
    #                     ElastiCache has not been granted WRITE permissions %s on the S3 Bucket.</p>
    #                 <p>
    #                   <b>Solution:</b>
    #                     Add Upload/Delete permissions on the bucket.
    #                     For more information, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/backups-exporting.html#backups-exporting-grant-access">Step 2: Grant ElastiCache Access to Your Amazon S3 Bucket</a> in the ElastiCache User Guide.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <b>Error Message: </b>
    #                     ElastiCache has not been granted READ_ACP permissions %s on the S3 Bucket.</p>
    #                 <p>
    #                   <b>Solution:</b>
    #                     Add View Permissions on the bucket.
    #                 For more information, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/backups-exporting.html#backups-exporting-grant-access">Step 2: Grant ElastiCache Access to Your Amazon S3 Bucket</a> in the ElastiCache User Guide.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::CopySnapshotInput}.
    #
    # @option params [String] :source_snapshot_name
    #   <p>The name of an existing snapshot from which to make a copy.</p>
    #
    # @option params [String] :target_snapshot_name
    #   <p>A name for the snapshot copy.
    #               ElastiCache does not permit overwriting a snapshot, therefore
    #               this name must be unique within its context - ElastiCache or an Amazon S3 bucket if exporting.</p>
    #
    # @option params [String] :target_bucket
    #   <p>The Amazon S3 bucket to which the snapshot is exported.
    #               This parameter is used only when exporting a snapshot for external access.</p>
    #           <p>When using this parameter to export a snapshot,
    #               be sure Amazon ElastiCache has the needed permissions to this S3 bucket.
    #               For more information, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/backups-exporting.html#backups-exporting-grant-access">Step 2: Grant ElastiCache Access to Your Amazon S3 Bucket</a> in the <i>Amazon ElastiCache User Guide</i>.</p>
    #
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/backups-exporting.html">Exporting a Snapshot</a> in the <i>Amazon ElastiCache User Guide</i>.</p>
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
    #   resp.data.snapshot.snapshot_name #=> String
    #   resp.data.snapshot.replication_group_id #=> String
    #   resp.data.snapshot.replication_group_description #=> String
    #   resp.data.snapshot.cache_cluster_id #=> String
    #   resp.data.snapshot.snapshot_status #=> String
    #   resp.data.snapshot.snapshot_source #=> String
    #   resp.data.snapshot.cache_node_type #=> String
    #   resp.data.snapshot.engine #=> String
    #   resp.data.snapshot.engine_version #=> String
    #   resp.data.snapshot.num_cache_nodes #=> Integer
    #   resp.data.snapshot.preferred_availability_zone #=> String
    #   resp.data.snapshot.preferred_outpost_arn #=> String
    #   resp.data.snapshot.cache_cluster_create_time #=> Time
    #   resp.data.snapshot.preferred_maintenance_window #=> String
    #   resp.data.snapshot.topic_arn #=> String
    #   resp.data.snapshot.port #=> Integer
    #   resp.data.snapshot.cache_parameter_group_name #=> String
    #   resp.data.snapshot.cache_subnet_group_name #=> String
    #   resp.data.snapshot.vpc_id #=> String
    #   resp.data.snapshot.auto_minor_version_upgrade #=> Boolean
    #   resp.data.snapshot.snapshot_retention_limit #=> Integer
    #   resp.data.snapshot.snapshot_window #=> String
    #   resp.data.snapshot.num_node_groups #=> Integer
    #   resp.data.snapshot.automatic_failover #=> String, one of ["enabled", "disabled", "enabling", "disabling"]
    #   resp.data.snapshot.node_snapshots #=> Array<NodeSnapshot>
    #   resp.data.snapshot.node_snapshots[0] #=> Types::NodeSnapshot
    #   resp.data.snapshot.node_snapshots[0].cache_cluster_id #=> String
    #   resp.data.snapshot.node_snapshots[0].node_group_id #=> String
    #   resp.data.snapshot.node_snapshots[0].cache_node_id #=> String
    #   resp.data.snapshot.node_snapshots[0].node_group_configuration #=> Types::NodeGroupConfiguration
    #   resp.data.snapshot.node_snapshots[0].node_group_configuration.node_group_id #=> String
    #   resp.data.snapshot.node_snapshots[0].node_group_configuration.slots #=> String
    #   resp.data.snapshot.node_snapshots[0].node_group_configuration.replica_count #=> Integer
    #   resp.data.snapshot.node_snapshots[0].node_group_configuration.primary_availability_zone #=> String
    #   resp.data.snapshot.node_snapshots[0].node_group_configuration.replica_availability_zones #=> Array<String>
    #   resp.data.snapshot.node_snapshots[0].node_group_configuration.replica_availability_zones[0] #=> String
    #   resp.data.snapshot.node_snapshots[0].node_group_configuration.primary_outpost_arn #=> String
    #   resp.data.snapshot.node_snapshots[0].node_group_configuration.replica_outpost_arns #=> Array<String>
    #   resp.data.snapshot.node_snapshots[0].node_group_configuration.replica_outpost_arns[0] #=> String
    #   resp.data.snapshot.node_snapshots[0].cache_size #=> String
    #   resp.data.snapshot.node_snapshots[0].cache_node_create_time #=> Time
    #   resp.data.snapshot.node_snapshots[0].snapshot_create_time #=> Time
    #   resp.data.snapshot.kms_key_id #=> String
    #   resp.data.snapshot.arn #=> String
    #   resp.data.snapshot.data_tiering #=> String, one of ["enabled", "disabled"]
    #
    def copy_snapshot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CopySnapshotInput.build(params)
      response_body = StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::SnapshotAlreadyExistsFault, Errors::TagQuotaPerResourceExceeded, Errors::InvalidSnapshotStateFault, Errors::SnapshotNotFoundFault, Errors::SnapshotQuotaExceededFault, Errors::InvalidParameterCombinationException]),
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

    # <p>Creates a cluster. All nodes in the
    #             cluster run the same protocol-compliant cache engine software, either Memcached
    #             or Redis.</p>
    #         <p>This operation is not supported for Redis (cluster mode enabled) clusters.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateCacheClusterInput}.
    #
    # @option params [String] :cache_cluster_id
    #   <p>The node group (shard) identifier. This parameter is stored as a lowercase string.</p>
    #            <p>
    #               <b>Constraints:</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>A name must contain from 1 to 50 alphanumeric characters or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>The first character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>A name cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :replication_group_id
    #   <p>The ID of the replication group to which this cluster should belong. If this parameter is specified, the cluster is added to the specified replication group as a read replica; otherwise, the cluster is a standalone primary that is not part of any replication group.</p>
    #           <p>If the specified replication group is Multi-AZ enabled and the Availability Zone is not specified, the cluster is created in Availability Zones that provide the best spread of read replicas across Availability Zones.</p>
    #           <note>
    #               <p>This parameter is only valid if the <code>Engine</code> parameter is <code>redis</code>.</p>
    #            </note>
    #
    # @option params [String] :az_mode
    #   <p>Specifies whether the nodes in this Memcached cluster are created in a single Availability Zone or
    #               created across multiple Availability Zones in the cluster's region.</p>
    #           <p>This parameter is only supported for Memcached clusters.</p>
    #           <p>If the <code>AZMode</code> and <code>PreferredAvailabilityZones</code> are not specified,
    #               ElastiCache assumes <code>single-az</code> mode.</p>
    #
    # @option params [String] :preferred_availability_zone
    #   <p>The EC2 Availability Zone in which the cluster is created.</p>
    #           <p>All nodes belonging to this cluster are placed in the preferred Availability Zone.
    #               If you want to create your nodes across multiple Availability Zones, use <code>PreferredAvailabilityZones</code>.</p>
    #           <p>Default: System chosen Availability Zone.</p>
    #
    # @option params [Array<String>] :preferred_availability_zones
    #   <p>A list of the Availability Zones in which cache nodes are created. The order of the zones in the list is not important.</p>
    #           <p>This option is only supported on Memcached.</p>
    #           <note>
    #               <p>If you are creating your cluster in an Amazon VPC (recommended) you can only locate nodes in Availability Zones that are associated with the subnets in the selected subnet group.</p>
    #               <p>The number of Availability Zones listed must equal the value of <code>NumCacheNodes</code>.</p>
    #           </note>
    #           <p>If you want all the nodes in the same Availability Zone, use <code>PreferredAvailabilityZone</code> instead, or
    #               repeat the Availability Zone multiple times in the list.</p>
    #           <p>Default: System chosen Availability Zones.</p>
    #
    # @option params [Integer] :num_cache_nodes
    #   <p>The initial number of cache nodes that the cluster has.</p>
    #           <p>For clusters running Redis, this value must be 1.
    #       For clusters running Memcached, this value must be between 1 and 40.</p>
    #           <p>If you need more than 40 nodes for your Memcached cluster,
    #               please fill out the ElastiCache Limit Increase Request form at <a href="http://aws.amazon.com/contact-us/elasticache-node-limit-request/">http://aws.amazon.com/contact-us/elasticache-node-limit-request/</a>.</p>
    #
    # @option params [String] :cache_node_type
    #   <p>The compute and memory capacity of the nodes in the node group (shard).</p>
    #           <p>The following node types are supported by ElastiCache.
    #   				Generally speaking, the current generation types provide more memory and computational power
    #   			at lower cost when compared to their equivalent previous generation counterparts.</p>
    #   		       <ul>
    #               <li>
    #                  <p>General purpose:</p>
    #   				           <ul>
    #                     <li>
    #                        <p>Current generation: </p>
    #   					
    #       					
    #   					
    #   					
    #   					                <p>
    #                           <b>M6g node types</b> (available only for Redis engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward):
    #   					
    #   					 	<code>cache.m6g.large</code>,
    #   							<code>cache.m6g.xlarge</code>,
    #   							<code>cache.m6g.2xlarge</code>,
    #   							<code>cache.m6g.4xlarge</code>,
    #   							<code>cache.m6g.8xlarge</code>,
    #   							<code>cache.m6g.12xlarge</code>,
    #   							<code>cache.m6g.16xlarge</code>
    #   							
    #   							
    #   							
    #   						               </p>	
    #   						
    #   						               <note>
    #                           <p>For region availability, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion">Supported Node Types</a>
    #                           </p>
    #                        </note>
    #       					
    #       					
    #       					            <p>
    #                           <b>M5 node types:</b>
    #       						              <code>cache.m5.large</code>,
    #       						<code>cache.m5.xlarge</code>,
    #       						<code>cache.m5.2xlarge</code>,
    #       						<code>cache.m5.4xlarge</code>,
    #       						<code>cache.m5.12xlarge</code>,
    #       						<code>cache.m5.24xlarge</code>
    #       						
    #       						
    #       						           </p>	
    #       						
    #   						
    #   						               <p>
    #                           <b>M4 node types:</b>
    #       						              <code>cache.m4.large</code>,
    #       						<code>cache.m4.xlarge</code>,
    #       						<code>cache.m4.2xlarge</code>,
    #       						<code>cache.m4.4xlarge</code>,
    #       						<code>cache.m4.10xlarge</code>
    #                        </p>
    #       		
    #   					                <p>
    #                           <b>T4g node types</b> (available only for Redis engine version 5.0.6 onward and Memcached engine version 1.5.16 onward):
    #   					        <code>cache.t4g.micro</code>,
    #   					        <code>cache.t4g.small</code>,
    #   					        <code>cache.t4g.medium</code>
    #   					                </p>
    #   					
    #   					
    #   					                <p>
    #                           <b>T3 node types:</b>
    #   					                   <code>cache.t3.micro</code>,
    #       						<code>cache.t3.small</code>,
    #       						<code>cache.t3.medium</code>
    #                        </p>
    #       								
    #       						
    #       				             <p>
    #                           <b>T2 node types:</b>
    #   					                   <code>cache.t2.micro</code>,
    #       						<code>cache.t2.small</code>,
    #       						<code>cache.t2.medium</code>
    #                        </p>
    #       						
    #       						
    #       						
    #       						
    #       						        </li>
    #                     <li>
    #                        <p>Previous generation: (not recommended)</p>
    #   						               <p>
    #                           <b>T1 node types:</b>
    #   					                   <code>cache.t1.micro</code>
    #                        </p>
    #   					
    #   						               <p>
    #                           <b>M1 node types:</b>
    #   						                  <code>cache.m1.small</code>,
    #   						   <code>cache.m1.medium</code>,
    #   						   <code>cache.m1.large</code>,
    #   						   <code>cache.m1.xlarge</code>
    #                        </p>
    #   						
    #   						               <p>
    #                           <b>M3 node types:</b>
    #       						              <code>cache.m3.medium</code>,
    #       						<code>cache.m3.large</code>,
    #       						<code>cache.m3.xlarge</code>,
    #       						<code>cache.m3.2xlarge</code>
    #                        </p>
    #   						
    #   						            </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Compute optimized:</p>
    #
    #   				           <ul>
    #                     <li>
    #                        <p>Previous generation: (not recommended)</p>
    #   			                  <p>
    #                           <b>C1 node types:</b>
    #   			                     <code>cache.c1.xlarge</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Memory optimized:</p>
    #   				           <ul>
    #                     <li>
    #                        <p>Current generation: </p>
    #   					
    #   					
    #   					
    #   					
    #   											          <p>
    #                           <b>R6g node types</b> (available only for Redis engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward).</p>
    #   						
    #   					
    #   						
    #   						               <p>	
    #   							                 <code>cache.r6g.large</code>,
    #   							<code>cache.r6g.xlarge</code>,
    #   							<code>cache.r6g.2xlarge</code>,
    #   							<code>cache.r6g.4xlarge</code>,
    #   							<code>cache.r6g.8xlarge</code>,
    #   							<code>cache.r6g.12xlarge</code>,
    #   							<code>cache.r6g.16xlarge</code>
    #   							
    #   							
    #   							
    #   							
    #   							
    #   							
    #   						               </p>	
    #   						               <note>
    #                           <p>For region availability, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion">Supported Node Types</a>
    #                           </p>
    #                        </note>
    #   					                <p>
    #                           <b>R5 node types:</b>
    #       					               <code>cache.r5.large</code>,
    #       					   <code>cache.r5.xlarge</code>,
    #       					   <code>cache.r5.2xlarge</code>,
    #       					   <code>cache.r5.4xlarge</code>,
    #       					   <code>cache.r5.12xlarge</code>,
    #       					   <code>cache.r5.24xlarge</code>
    #                        </p>
    #   						
    #       					            <p>
    #                           <b>R4 node types:</b>
    #       					               <code>cache.r4.large</code>,
    #       					   <code>cache.r4.xlarge</code>,
    #       					   <code>cache.r4.2xlarge</code>,
    #       					   <code>cache.r4.4xlarge</code>,
    #       					   <code>cache.r4.8xlarge</code>,
    #       					   <code>cache.r4.16xlarge</code>
    #                        </p>
    #       					
    #       					
    #       					
    #
    #
    #       					
    #       					
    #       					
    #       					
    #       					
    #       					
    #       					         </li>
    #                     <li>
    #                        <p>Previous generation: (not recommended)</p>
    #                           <p>
    #                           <b>M2 node types:</b>						
    #       					               <code>cache.m2.xlarge</code>,
    #       						<code>cache.m2.2xlarge</code>,
    #       						<code>cache.m2.4xlarge</code>
    #                        </p>
    #       						
    #       						           <p>
    #                           <b>R3 node types:</b>
    #       					               <code>cache.r3.large</code>,
    #       						<code>cache.r3.xlarge</code>,
    #       						<code>cache.r3.2xlarge</code>,
    #       						<code>cache.r3.4xlarge</code>,
    #       						<code>cache.r3.8xlarge</code>
    #                        </p>
    #       						
    #       						        </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #   				
    #   		       <p>
    #               <b>Additional node type info</b>
    #            </p>
    #   		       <ul>
    #               <li>
    #                  <p>All current generation instance types are created in Amazon VPC by default.</p>
    #               </li>
    #               <li>
    #                  <p>Redis append-only files (AOF) are not supported for T1 or T2 instances.</p>
    #               </li>
    #               <li>
    #                  <p>Redis Multi-AZ with automatic failover is not supported on T1 instances.</p>
    #               </li>
    #               <li>
    #                  <p>Redis configuration variables <code>appendonly</code> and
    #   				<code>appendfsync</code> are not supported on Redis version 2.8.22 and later.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :engine
    #   <p>The name of the cache engine to be used for this cluster.</p>
    #           <p>Valid values for this parameter are: <code>memcached</code> | <code>redis</code>
    #            </p>
    #
    # @option params [String] :engine_version
    #   <p>The version number of the cache engine to be used for this cluster.
    #               To view the supported cache engine versions, use the DescribeCacheEngineVersions operation.</p>
    #
    #           <p>
    #               <b>Important:</b> You can upgrade to a newer engine version (see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/SelectEngine.html#VersionManagement">Selecting a Cache Engine and Version</a>), but you cannot downgrade to an earlier engine version.
    #               If you want to use an earlier engine version,
    #               you must delete the existing cluster or replication group and create it anew with the earlier engine version. </p>
    #
    # @option params [String] :cache_parameter_group_name
    #   <p>The name of the parameter group to associate with this cluster.
    #               If this argument is omitted, the default parameter group for the specified engine is used.
    #               You cannot use any parameter group which has <code>cluster-enabled='yes'</code> when creating a cluster.</p>
    #
    # @option params [String] :cache_subnet_group_name
    #   <p>The name of the subnet group to be used for the cluster.</p>
    #           <p>Use this parameter only when you are creating a cluster in an Amazon Virtual Private Cloud (Amazon VPC).</p>
    #           <important>
    #               <p>If you're going to launch your cluster in an Amazon VPC,
    #                   you need to create a subnet group before you start creating a cluster.
    #                   For more information, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/SubnetGroups.html">Subnets and Subnet Groups</a>.</p>
    #            </important>
    #
    # @option params [Array<String>] :cache_security_group_names
    #   <p>A list of security group names to associate with this cluster.</p>
    #           <p>Use this parameter only when you are creating a cluster outside of an Amazon Virtual Private Cloud (Amazon VPC).</p>
    #
    # @option params [Array<String>] :security_group_ids
    #   <p>One or more VPC security groups associated with the cluster.</p>
    #           <p>Use this parameter only when you are creating a cluster in an Amazon Virtual Private Cloud (Amazon VPC).</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tags to be added to this resource.</p>
    #
    # @option params [Array<String>] :snapshot_arns
    #   <p>A single-element string list containing an Amazon Resource Name (ARN) that uniquely identifies
    #               a Redis RDB snapshot file stored in Amazon S3.
    #               The snapshot file is used to populate the node group (shard).
    #               The Amazon S3 object name in the ARN cannot contain any commas.</p>
    #           <note>
    #               <p>This parameter is only valid if the <code>Engine</code> parameter is <code>redis</code>.</p>
    #            </note>
    #           <p>Example of an Amazon S3 ARN: <code>arn:aws:s3:::my_bucket/snapshot1.rdb</code>
    #            </p>
    #
    # @option params [String] :snapshot_name
    #   <p>The name of a Redis snapshot from which to restore data into the new node group (shard).
    #               The snapshot status changes to <code>restoring</code> while the new node group (shard) is being created.</p>
    #           <note>
    #               <p>This parameter is only valid if the <code>Engine</code> parameter is <code>redis</code>.</p>
    #            </note>
    #
    # @option params [String] :preferred_maintenance_window
    #   <p>Specifies the weekly time range during which maintenance
    #               on the cluster is performed. It is specified as a range in
    #               the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum
    #               maintenance window is a 60 minute period.
    #              </p>
    #
    # @option params [Integer] :port
    #   <p>The port number on which each of the cache nodes  accepts connections.</p>
    #
    # @option params [String] :notification_topic_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Simple Notification Service (SNS) topic
    #             to which notifications are sent.</p>
    #            <note>
    #               <p>The Amazon SNS topic owner must be the same as the cluster owner.</p>
    #            </note>
    #
    # @option params [Boolean] :auto_minor_version_upgrade
    #   <p> If you are running Redis engine version 6.0 or later, set this parameter to yes if you want to opt-in to the next auto minor version upgrade campaign. This parameter is disabled for previous versions. 
    #               </p>
    #
    # @option params [Integer] :snapshot_retention_limit
    #   <p>The number of days for which ElastiCache retains automatic snapshots before deleting them.
    #             For example, if you set <code>SnapshotRetentionLimit</code> to 5,
    #             a snapshot taken today is retained for 5 days before being deleted.</p>
    #            <note>
    #               <p>This parameter is only valid if the <code>Engine</code> parameter is <code>redis</code>.</p>
    #            </note>
    #            <p>Default: 0 (i.e., automatic backups are disabled for this cache cluster).</p>
    #
    # @option params [String] :snapshot_window
    #   <p>The daily time range (in UTC) during which ElastiCache begins taking a daily snapshot of your node group (shard).</p>
    #            <p>Example: <code>05:00-09:00</code>
    #            </p>
    #            <p>If you do not specify this parameter, ElastiCache  automatically chooses an appropriate time range.</p>
    #           <note>
    #               <p>This parameter is only valid if the <code>Engine</code> parameter is <code>redis</code>.</p>
    #            </note>
    #
    # @option params [String] :auth_token
    #   <p>
    #               <b>Reserved parameter.</b>
    #               The password used to access a password protected server.</p>
    #           <p>Password constraints:</p>
    #           <ul>
    #               <li>
    #                  <p>Must be only printable ASCII characters.</p>
    #               </li>
    #               <li>
    #                  <p>Must be at least 16 characters and no more than 128
    #                   characters in length.</p>
    #               </li>
    #               <li>
    #                  <p>The only permitted printable special characters are !, &, #, $, ^, <, >, and -. Other printable special characters cannot be used in the AUTH token.</p>
    #               </li>
    #            </ul>
    #           <p>For more information, see <a href="http://redis.io/commands/AUTH">AUTH password</a> at http://redis.io/commands/AUTH.</p>
    #
    # @option params [String] :outpost_mode
    #   <p>Specifies whether the nodes in the cluster are created in a single outpost or across multiple outposts.</p>
    #
    # @option params [String] :preferred_outpost_arn
    #   <p>The outpost ARN in which the cache cluster is created.</p>
    #
    # @option params [Array<String>] :preferred_outpost_arns
    #   <p>The outpost ARNs in which the cache cluster is created.</p>
    #
    # @option params [Array<LogDeliveryConfigurationRequest>] :log_delivery_configurations
    #   <p>Specifies the destination, format and type of the logs. </p>
    #
    # @option params [Boolean] :transit_encryption_enabled
    #   <p>A flag that enables in-transit encryption when set to true.
    #
    #               You cannot modify the value of <code>TransitEncryptionEnabled</code> after the cluster is created. To enable in-transit encryption on a cluster you must set <code>TransitEncryptionEnabled</code> to true when you create a cluster. </p>
    #
    #           <p>
    #               <b>Required:</b>
    #               Only available when creating a cache cluster in an Amazon VPC using Memcached version <code>1.6.12</code> or later.</p>
    #
    # @return [Types::CreateCacheClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cache_cluster(
    #     cache_cluster_id: 'CacheClusterId', # required
    #     replication_group_id: 'ReplicationGroupId',
    #     az_mode: 'single-az', # accepts ["single-az", "cross-az"]
    #     preferred_availability_zone: 'PreferredAvailabilityZone',
    #     preferred_availability_zones: [
    #       'member'
    #     ],
    #     num_cache_nodes: 1,
    #     cache_node_type: 'CacheNodeType',
    #     engine: 'Engine',
    #     engine_version: 'EngineVersion',
    #     cache_parameter_group_name: 'CacheParameterGroupName',
    #     cache_subnet_group_name: 'CacheSubnetGroupName',
    #     cache_security_group_names: [
    #       'member'
    #     ],
    #     security_group_ids: [
    #       'member'
    #     ],
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ],
    #     snapshot_arns: [
    #       'member'
    #     ],
    #     snapshot_name: 'SnapshotName',
    #     preferred_maintenance_window: 'PreferredMaintenanceWindow',
    #     port: 1,
    #     notification_topic_arn: 'NotificationTopicArn',
    #     auto_minor_version_upgrade: false,
    #     snapshot_retention_limit: 1,
    #     snapshot_window: 'SnapshotWindow',
    #     auth_token: 'AuthToken',
    #     outpost_mode: 'single-outpost', # accepts ["single-outpost", "cross-outpost"]
    #     preferred_outpost_arn: 'PreferredOutpostArn',
    #     preferred_outpost_arns: [
    #       'member'
    #     ],
    #     log_delivery_configurations: [
    #       {
    #         log_type: 'slow-log', # accepts ["slow-log", "engine-log"]
    #         destination_type: 'cloudwatch-logs', # accepts ["cloudwatch-logs", "kinesis-firehose"]
    #         destination_details: {
    #           cloud_watch_logs_details: {
    #             log_group: 'LogGroup'
    #           },
    #           kinesis_firehose_details: {
    #             delivery_stream: 'DeliveryStream'
    #           }
    #         },
    #         log_format: 'text', # accepts ["text", "json"]
    #         enabled: false
    #       }
    #     ],
    #     transit_encryption_enabled: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateCacheClusterOutput
    #   resp.data.cache_cluster #=> Types::CacheCluster
    #   resp.data.cache_cluster.cache_cluster_id #=> String
    #   resp.data.cache_cluster.configuration_endpoint #=> Types::Endpoint
    #   resp.data.cache_cluster.configuration_endpoint.address #=> String
    #   resp.data.cache_cluster.configuration_endpoint.port #=> Integer
    #   resp.data.cache_cluster.client_download_landing_page #=> String
    #   resp.data.cache_cluster.cache_node_type #=> String
    #   resp.data.cache_cluster.engine #=> String
    #   resp.data.cache_cluster.engine_version #=> String
    #   resp.data.cache_cluster.cache_cluster_status #=> String
    #   resp.data.cache_cluster.num_cache_nodes #=> Integer
    #   resp.data.cache_cluster.preferred_availability_zone #=> String
    #   resp.data.cache_cluster.preferred_outpost_arn #=> String
    #   resp.data.cache_cluster.cache_cluster_create_time #=> Time
    #   resp.data.cache_cluster.preferred_maintenance_window #=> String
    #   resp.data.cache_cluster.pending_modified_values #=> Types::PendingModifiedValues
    #   resp.data.cache_cluster.pending_modified_values.num_cache_nodes #=> Integer
    #   resp.data.cache_cluster.pending_modified_values.cache_node_ids_to_remove #=> Array<String>
    #   resp.data.cache_cluster.pending_modified_values.cache_node_ids_to_remove[0] #=> String
    #   resp.data.cache_cluster.pending_modified_values.engine_version #=> String
    #   resp.data.cache_cluster.pending_modified_values.cache_node_type #=> String
    #   resp.data.cache_cluster.pending_modified_values.auth_token_status #=> String, one of ["SETTING", "ROTATING"]
    #   resp.data.cache_cluster.pending_modified_values.log_delivery_configurations #=> Array<PendingLogDeliveryConfiguration>
    #   resp.data.cache_cluster.pending_modified_values.log_delivery_configurations[0] #=> Types::PendingLogDeliveryConfiguration
    #   resp.data.cache_cluster.pending_modified_values.log_delivery_configurations[0].log_type #=> String, one of ["slow-log", "engine-log"]
    #   resp.data.cache_cluster.pending_modified_values.log_delivery_configurations[0].destination_type #=> String, one of ["cloudwatch-logs", "kinesis-firehose"]
    #   resp.data.cache_cluster.pending_modified_values.log_delivery_configurations[0].destination_details #=> Types::DestinationDetails
    #   resp.data.cache_cluster.pending_modified_values.log_delivery_configurations[0].destination_details.cloud_watch_logs_details #=> Types::CloudWatchLogsDestinationDetails
    #   resp.data.cache_cluster.pending_modified_values.log_delivery_configurations[0].destination_details.cloud_watch_logs_details.log_group #=> String
    #   resp.data.cache_cluster.pending_modified_values.log_delivery_configurations[0].destination_details.kinesis_firehose_details #=> Types::KinesisFirehoseDestinationDetails
    #   resp.data.cache_cluster.pending_modified_values.log_delivery_configurations[0].destination_details.kinesis_firehose_details.delivery_stream #=> String
    #   resp.data.cache_cluster.pending_modified_values.log_delivery_configurations[0].log_format #=> String, one of ["text", "json"]
    #   resp.data.cache_cluster.notification_configuration #=> Types::NotificationConfiguration
    #   resp.data.cache_cluster.notification_configuration.topic_arn #=> String
    #   resp.data.cache_cluster.notification_configuration.topic_status #=> String
    #   resp.data.cache_cluster.cache_security_groups #=> Array<CacheSecurityGroupMembership>
    #   resp.data.cache_cluster.cache_security_groups[0] #=> Types::CacheSecurityGroupMembership
    #   resp.data.cache_cluster.cache_security_groups[0].cache_security_group_name #=> String
    #   resp.data.cache_cluster.cache_security_groups[0].status #=> String
    #   resp.data.cache_cluster.cache_parameter_group #=> Types::CacheParameterGroupStatus
    #   resp.data.cache_cluster.cache_parameter_group.cache_parameter_group_name #=> String
    #   resp.data.cache_cluster.cache_parameter_group.parameter_apply_status #=> String
    #   resp.data.cache_cluster.cache_parameter_group.cache_node_ids_to_reboot #=> Array<String>
    #   resp.data.cache_cluster.cache_subnet_group_name #=> String
    #   resp.data.cache_cluster.cache_nodes #=> Array<CacheNode>
    #   resp.data.cache_cluster.cache_nodes[0] #=> Types::CacheNode
    #   resp.data.cache_cluster.cache_nodes[0].cache_node_id #=> String
    #   resp.data.cache_cluster.cache_nodes[0].cache_node_status #=> String
    #   resp.data.cache_cluster.cache_nodes[0].cache_node_create_time #=> Time
    #   resp.data.cache_cluster.cache_nodes[0].endpoint #=> Types::Endpoint
    #   resp.data.cache_cluster.cache_nodes[0].parameter_group_status #=> String
    #   resp.data.cache_cluster.cache_nodes[0].source_cache_node_id #=> String
    #   resp.data.cache_cluster.cache_nodes[0].customer_availability_zone #=> String
    #   resp.data.cache_cluster.cache_nodes[0].customer_outpost_arn #=> String
    #   resp.data.cache_cluster.auto_minor_version_upgrade #=> Boolean
    #   resp.data.cache_cluster.security_groups #=> Array<SecurityGroupMembership>
    #   resp.data.cache_cluster.security_groups[0] #=> Types::SecurityGroupMembership
    #   resp.data.cache_cluster.security_groups[0].security_group_id #=> String
    #   resp.data.cache_cluster.security_groups[0].status #=> String
    #   resp.data.cache_cluster.replication_group_id #=> String
    #   resp.data.cache_cluster.snapshot_retention_limit #=> Integer
    #   resp.data.cache_cluster.snapshot_window #=> String
    #   resp.data.cache_cluster.auth_token_enabled #=> Boolean
    #   resp.data.cache_cluster.auth_token_last_modified_date #=> Time
    #   resp.data.cache_cluster.transit_encryption_enabled #=> Boolean
    #   resp.data.cache_cluster.at_rest_encryption_enabled #=> Boolean
    #   resp.data.cache_cluster.arn #=> String
    #   resp.data.cache_cluster.replication_group_log_delivery_enabled #=> Boolean
    #   resp.data.cache_cluster.log_delivery_configurations #=> Array<LogDeliveryConfiguration>
    #   resp.data.cache_cluster.log_delivery_configurations[0] #=> Types::LogDeliveryConfiguration
    #   resp.data.cache_cluster.log_delivery_configurations[0].log_type #=> String, one of ["slow-log", "engine-log"]
    #   resp.data.cache_cluster.log_delivery_configurations[0].destination_type #=> String, one of ["cloudwatch-logs", "kinesis-firehose"]
    #   resp.data.cache_cluster.log_delivery_configurations[0].destination_details #=> Types::DestinationDetails
    #   resp.data.cache_cluster.log_delivery_configurations[0].log_format #=> String, one of ["text", "json"]
    #   resp.data.cache_cluster.log_delivery_configurations[0].status #=> String, one of ["active", "enabling", "modifying", "disabling", "error"]
    #   resp.data.cache_cluster.log_delivery_configurations[0].message #=> String
    #
    def create_cache_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateCacheClusterInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateCacheClusterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateCacheCluster
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidVPCNetworkStateFault, Errors::CacheSecurityGroupNotFoundFault, Errors::CacheClusterAlreadyExistsFault, Errors::NodeQuotaForClusterExceededFault, Errors::NodeQuotaForCustomerExceededFault, Errors::CacheSubnetGroupNotFoundFault, Errors::InvalidReplicationGroupStateFault, Errors::InvalidParameterValueException, Errors::CacheParameterGroupNotFoundFault, Errors::TagQuotaPerResourceExceeded, Errors::ClusterQuotaForCustomerExceededFault, Errors::InsufficientCacheClusterCapacityFault, Errors::InvalidParameterCombinationException, Errors::ReplicationGroupNotFoundFault]),
        data_parser: Parsers::CreateCacheCluster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateCacheCluster,
        stubs: @stubs,
        params_class: Params::CreateCacheClusterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_cache_cluster
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new Amazon ElastiCache cache parameter group. An ElastiCache
    #             cache parameter group is a collection of parameters and their values that are applied to all of the nodes
    #             in any cluster or replication group using the CacheParameterGroup.</p>
    #         <p>A newly created CacheParameterGroup is an exact duplicate of the default parameter group
    #             for the CacheParameterGroupFamily. To customize the newly created CacheParameterGroup you can
    #             change the values of specific parameters. For more information, see:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_ModifyCacheParameterGroup.html">ModifyCacheParameterGroup</a> in the ElastiCache API Reference.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/ParameterGroups.html">Parameters and Parameter Groups</a> in the ElastiCache User Guide.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::CreateCacheParameterGroupInput}.
    #
    # @option params [String] :cache_parameter_group_name
    #   <p>A user-specified name for the cache parameter group.</p>
    #
    # @option params [String] :cache_parameter_group_family
    #   <p>The name of the cache parameter group family that the cache parameter group can be used with.</p>
    #           <p>Valid values are:
    #       <code>memcached1.4</code> |
    #        <code>memcached1.5</code> |
    #         <code>memcached1.6</code> |
    #       <code>redis2.6</code> |
    #       <code>redis2.8</code> |
    #       <code>redis3.2</code> |
    #       <code>redis4.0</code> |
    #        <code>redis5.0</code> |
    #         <code>redis6.x</code>
    #            </p>
    #
    # @option params [String] :description
    #   <p>A user-specified description for the cache parameter group.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value, although null is accepted.</p>
    #
    # @return [Types::CreateCacheParameterGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cache_parameter_group(
    #     cache_parameter_group_name: 'CacheParameterGroupName', # required
    #     cache_parameter_group_family: 'CacheParameterGroupFamily', # required
    #     description: 'Description', # required
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
    #   resp.data #=> Types::CreateCacheParameterGroupOutput
    #   resp.data.cache_parameter_group #=> Types::CacheParameterGroup
    #   resp.data.cache_parameter_group.cache_parameter_group_name #=> String
    #   resp.data.cache_parameter_group.cache_parameter_group_family #=> String
    #   resp.data.cache_parameter_group.description #=> String
    #   resp.data.cache_parameter_group.is_global #=> Boolean
    #   resp.data.cache_parameter_group.arn #=> String
    #
    def create_cache_parameter_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateCacheParameterGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateCacheParameterGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateCacheParameterGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::CacheParameterGroupAlreadyExistsFault, Errors::TagQuotaPerResourceExceeded, Errors::CacheParameterGroupQuotaExceededFault, Errors::InvalidParameterCombinationException, Errors::InvalidCacheParameterGroupStateFault]),
        data_parser: Parsers::CreateCacheParameterGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateCacheParameterGroup,
        stubs: @stubs,
        params_class: Params::CreateCacheParameterGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_cache_parameter_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new cache security group. Use a
    #             cache security group to control access to one or more clusters.</p>
    #         <p>Cache security groups are only used when you are creating a cluster outside of an Amazon
    #             Virtual Private Cloud (Amazon VPC). If you are creating a cluster inside of a VPC, use a cache
    #             subnet group instead. For more information,
    #             see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_CreateCacheSubnetGroup.html">CreateCacheSubnetGroup</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateCacheSecurityGroupInput}.
    #
    # @option params [String] :cache_security_group_name
    #   <p>A name for the cache security group. This value is stored as a lowercase string.</p>
    #           <p>Constraints: Must contain no more than 255 alphanumeric characters. Cannot be the word "Default".</p>
    #           <p>Example: <code>mysecuritygroup</code>
    #            </p>
    #
    # @option params [String] :description
    #   <p>A description for the cache security group.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value, although null is accepted.</p>
    #
    # @return [Types::CreateCacheSecurityGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cache_security_group(
    #     cache_security_group_name: 'CacheSecurityGroupName', # required
    #     description: 'Description', # required
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
    #   resp.data #=> Types::CreateCacheSecurityGroupOutput
    #   resp.data.cache_security_group #=> Types::CacheSecurityGroup
    #   resp.data.cache_security_group.owner_id #=> String
    #   resp.data.cache_security_group.cache_security_group_name #=> String
    #   resp.data.cache_security_group.description #=> String
    #   resp.data.cache_security_group.ec2_security_groups #=> Array<EC2SecurityGroup>
    #   resp.data.cache_security_group.ec2_security_groups[0] #=> Types::EC2SecurityGroup
    #   resp.data.cache_security_group.ec2_security_groups[0].status #=> String
    #   resp.data.cache_security_group.ec2_security_groups[0].ec2_security_group_name #=> String
    #   resp.data.cache_security_group.ec2_security_groups[0].ec2_security_group_owner_id #=> String
    #   resp.data.cache_security_group.arn #=> String
    #
    def create_cache_security_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateCacheSecurityGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateCacheSecurityGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateCacheSecurityGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::CacheSecurityGroupQuotaExceededFault, Errors::TagQuotaPerResourceExceeded, Errors::InvalidParameterCombinationException, Errors::CacheSecurityGroupAlreadyExistsFault]),
        data_parser: Parsers::CreateCacheSecurityGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateCacheSecurityGroup,
        stubs: @stubs,
        params_class: Params::CreateCacheSecurityGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_cache_security_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new cache subnet group.</p>
    #         <p>Use this parameter only when you are creating a cluster in an Amazon Virtual Private Cloud (Amazon VPC).</p>
    #
    # @param [Hash] params
    #   See {Types::CreateCacheSubnetGroupInput}.
    #
    # @option params [String] :cache_subnet_group_name
    #   <p>A name for the cache subnet group. This value is stored as a lowercase string.</p>
    #           <p>Constraints: Must contain no more than 255 alphanumeric characters or hyphens.</p>
    #           <p>Example: <code>mysubnetgroup</code>
    #            </p>
    #
    # @option params [String] :cache_subnet_group_description
    #   <p>A description for the cache subnet group.</p>
    #
    # @option params [Array<String>] :subnet_ids
    #   <p>A list of VPC subnet IDs for the cache subnet group.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value, although null is accepted.</p>
    #
    # @return [Types::CreateCacheSubnetGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cache_subnet_group(
    #     cache_subnet_group_name: 'CacheSubnetGroupName', # required
    #     cache_subnet_group_description: 'CacheSubnetGroupDescription', # required
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
    #   resp.data #=> Types::CreateCacheSubnetGroupOutput
    #   resp.data.cache_subnet_group #=> Types::CacheSubnetGroup
    #   resp.data.cache_subnet_group.cache_subnet_group_name #=> String
    #   resp.data.cache_subnet_group.cache_subnet_group_description #=> String
    #   resp.data.cache_subnet_group.vpc_id #=> String
    #   resp.data.cache_subnet_group.subnets #=> Array<Subnet>
    #   resp.data.cache_subnet_group.subnets[0] #=> Types::Subnet
    #   resp.data.cache_subnet_group.subnets[0].subnet_identifier #=> String
    #   resp.data.cache_subnet_group.subnets[0].subnet_availability_zone #=> Types::AvailabilityZone
    #   resp.data.cache_subnet_group.subnets[0].subnet_availability_zone.name #=> String
    #   resp.data.cache_subnet_group.subnets[0].subnet_outpost #=> Types::SubnetOutpost
    #   resp.data.cache_subnet_group.subnets[0].subnet_outpost.subnet_outpost_arn #=> String
    #   resp.data.cache_subnet_group.arn #=> String
    #
    def create_cache_subnet_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateCacheSubnetGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateCacheSubnetGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateCacheSubnetGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CacheSubnetGroupAlreadyExistsFault, Errors::InvalidSubnet, Errors::SubnetNotAllowedFault, Errors::TagQuotaPerResourceExceeded, Errors::CacheSubnetGroupQuotaExceededFault, Errors::CacheSubnetQuotaExceededFault]),
        data_parser: Parsers::CreateCacheSubnetGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateCacheSubnetGroup,
        stubs: @stubs,
        params_class: Params::CreateCacheSubnetGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_cache_subnet_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Global Datastore for Redis offers fully managed, fast,
    #             reliable and secure cross-region replication.
    #             Using Global Datastore for Redis, you can create cross-region
    #             read replica clusters for ElastiCache for Redis to enable low-latency reads
    #             and disaster recovery across regions. For more information,
    #
    #             see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Redis-Global-Datastore.html">Replication Across Regions Using Global Datastore</a>. </p>
    #
    #          <ul>
    #             <li>
    #                <p>The <b>GlobalReplicationGroupIdSuffix</b> is the name of the Global datastore.</p>
    #             </li>
    #             <li>
    #                <p>The <b>PrimaryReplicationGroupId</b> represents the name of the primary cluster that accepts writes and will replicate updates to the secondary cluster.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::CreateGlobalReplicationGroupInput}.
    #
    # @option params [String] :global_replication_group_id_suffix
    #   <p>The suffix name of a Global datastore. Amazon ElastiCache automatically applies a prefix
    #               to the Global datastore ID when it is created. Each Amazon Region has its own prefix. For instance, a Global datastore ID created in the US-West-1 region will begin with "dsdfu" along with the suffix name you provide. The suffix, combined with the auto-generated prefix, guarantees uniqueness of the Global datastore name across multiple regions.  </p>
    #           <p>For a full list of Amazon Regions and their respective Global datastore iD prefixes, see <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Redis-Global-Datastores-CLI.html">Using the Amazon CLI with Global datastores </a>.</p>
    #
    # @option params [String] :global_replication_group_description
    #   <p>Provides details of the Global datastore</p>
    #
    # @option params [String] :primary_replication_group_id
    #   <p>The name of the primary cluster that accepts writes and will replicate updates to the secondary cluster.</p>
    #
    # @return [Types::CreateGlobalReplicationGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_global_replication_group(
    #     global_replication_group_id_suffix: 'GlobalReplicationGroupIdSuffix', # required
    #     global_replication_group_description: 'GlobalReplicationGroupDescription',
    #     primary_replication_group_id: 'PrimaryReplicationGroupId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateGlobalReplicationGroupOutput
    #   resp.data.global_replication_group #=> Types::GlobalReplicationGroup
    #   resp.data.global_replication_group.global_replication_group_id #=> String
    #   resp.data.global_replication_group.global_replication_group_description #=> String
    #   resp.data.global_replication_group.status #=> String
    #   resp.data.global_replication_group.cache_node_type #=> String
    #   resp.data.global_replication_group.engine #=> String
    #   resp.data.global_replication_group.engine_version #=> String
    #   resp.data.global_replication_group.members #=> Array<GlobalReplicationGroupMember>
    #   resp.data.global_replication_group.members[0] #=> Types::GlobalReplicationGroupMember
    #   resp.data.global_replication_group.members[0].replication_group_id #=> String
    #   resp.data.global_replication_group.members[0].replication_group_region #=> String
    #   resp.data.global_replication_group.members[0].role #=> String
    #   resp.data.global_replication_group.members[0].automatic_failover #=> String, one of ["enabled", "disabled", "enabling", "disabling"]
    #   resp.data.global_replication_group.members[0].status #=> String
    #   resp.data.global_replication_group.cluster_enabled #=> Boolean
    #   resp.data.global_replication_group.global_node_groups #=> Array<GlobalNodeGroup>
    #   resp.data.global_replication_group.global_node_groups[0] #=> Types::GlobalNodeGroup
    #   resp.data.global_replication_group.global_node_groups[0].global_node_group_id #=> String
    #   resp.data.global_replication_group.global_node_groups[0].slots #=> String
    #   resp.data.global_replication_group.auth_token_enabled #=> Boolean
    #   resp.data.global_replication_group.transit_encryption_enabled #=> Boolean
    #   resp.data.global_replication_group.at_rest_encryption_enabled #=> Boolean
    #   resp.data.global_replication_group.arn #=> String
    #
    def create_global_replication_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateGlobalReplicationGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateGlobalReplicationGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateGlobalReplicationGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::GlobalReplicationGroupAlreadyExistsFault, Errors::InvalidReplicationGroupStateFault, Errors::ReplicationGroupNotFoundFault, Errors::ServiceLinkedRoleNotFoundFault]),
        data_parser: Parsers::CreateGlobalReplicationGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateGlobalReplicationGroup,
        stubs: @stubs,
        params_class: Params::CreateGlobalReplicationGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_global_replication_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a Redis (cluster mode disabled) or a Redis (cluster mode enabled) replication group.</p>
    #         <p>This API can be used to create a standalone regional replication group or a secondary replication group associated with a Global datastore.</p>
    #         <p>A Redis (cluster mode disabled) replication group is a collection of clusters,
    #             where one of the clusters is a read/write primary and the others are read-only replicas.
    #             Writes to the primary are asynchronously propagated to the replicas.</p>
    #         <p>A Redis cluster-mode enabled cluster is comprised of from 1 to 90 shards (API/CLI: node groups).
    #             Each shard has a primary node and up to 5 read-only replica nodes. The configuration can range from 90 shards and 0 replicas to 15 shards and 5 replicas, which is the maximum number or replicas allowed.
    #
    #         </p>
    #         <p>The node or shard limit can be increased to a maximum of 500 per cluster if the Redis engine version is 5.0.6 or higher. For example, you can choose to configure a 500 node cluster that ranges between
    #             83 shards (one primary and 5 replicas per shard) and 500 shards (single primary and no replicas). Make sure there are enough available IP addresses to accommodate the increase.
    #             Common pitfalls include the subnets in the subnet group have too small a CIDR range or the subnets are shared and heavily used by other clusters. For more information, see
    #             <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/SubnetGroups.Creating.html">Creating a Subnet Group</a>. For versions below 5.0.6,
    #             the limit is 250 per cluster.</p>
    #         <p>To request a limit increase, see
    #             <a href="https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html">Amazon Service Limits</a>
    #             and choose the limit type <b>Nodes per cluster per instance type</b>. </p>
    #         <p>When a Redis (cluster mode disabled) replication group has been successfully created,
    #             you can add one or more read replicas to it, up to a total of 5 read replicas.
    #             If you need to increase or decrease the number of node groups (console: shards),
    #             you can avail yourself of ElastiCache for Redis' scaling. For more information,
    #             see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Scaling.html">Scaling ElastiCache for Redis Clusters</a> in the <i>ElastiCache User Guide</i>.</p>
    #
    #
    #         <note>
    #             <p>This operation is valid for Redis only.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::CreateReplicationGroupInput}.
    #
    # @option params [String] :replication_group_id
    #   <p>The replication group identifier. This parameter is stored as a lowercase string.</p>
    #
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>A name must contain from 1 to 40 alphanumeric characters or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>The first character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>A name cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :replication_group_description
    #   <p>A user-created description for the replication group.</p>
    #
    # @option params [String] :global_replication_group_id
    #   <p>The name of the Global datastore</p>
    #
    # @option params [String] :primary_cluster_id
    #   <p>The identifier of the cluster that serves as the primary for this replication
    #               group. This cluster must already exist and have a status of <code>available</code>.</p>
    #           <p>This parameter is not required if <code>NumCacheClusters</code>,
    #               <code>NumNodeGroups</code>, or
    #               <code>ReplicasPerNodeGroup</code> is specified.</p>
    #
    # @option params [Boolean] :automatic_failover_enabled
    #   <p>Specifies whether a read-only replica is automatically promoted to read/write primary if the existing primary fails.</p>
    #
    #           <p>
    #               <code>AutomaticFailoverEnabled</code> must be enabled for Redis (cluster mode enabled) replication groups.</p>
    #
    #           <p>Default: false</p>
    #
    # @option params [Boolean] :multi_az_enabled
    #   <p>A flag indicating if you have Multi-AZ enabled to enhance fault tolerance. For more information, see <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/AutoFailover.html">Minimizing Downtime: Multi-AZ</a>.</p>
    #
    # @option params [Integer] :num_cache_clusters
    #   <p>The number of clusters this replication group initially has.</p>
    #           <p>This parameter is not used if there is more than one node group (shard).
    #               You should use <code>ReplicasPerNodeGroup</code> instead.</p>
    #           <p>If <code>AutomaticFailoverEnabled</code> is <code>true</code>, the value of this parameter must be at least 2.
    #               If <code>AutomaticFailoverEnabled</code> is <code>false</code> you can omit this parameter (it will default to 1), or you
    #               can explicitly set it to a value between 2 and 6.</p>
    #           <p>The maximum permitted value for <code>NumCacheClusters</code> is 6 (1 primary plus 5 replicas).</p>
    #
    # @option params [Array<String>] :preferred_cache_cluster_a_zs
    #   <p>A list of EC2 Availability Zones in which the replication group's clusters are created.
    #               The order of the Availability Zones in the list is the order in which clusters are allocated.
    #               The primary cluster is created in the first AZ in the list.</p>
    #           <p>This parameter is not used if there is more than one node group (shard).
    #               You should use <code>NodeGroupConfiguration</code> instead.</p>
    #           <note>
    #               <p>If you are creating your replication group in an Amazon VPC (recommended),
    #               you can only locate clusters in Availability Zones associated with the subnets in the selected subnet group.</p>
    #               <p>The number of Availability Zones listed must equal the value of <code>NumCacheClusters</code>.</p>
    #            </note>
    #           <p>Default: system chosen Availability Zones.</p>
    #
    # @option params [Integer] :num_node_groups
    #   <p>An optional parameter that specifies the number of node groups (shards) for this Redis (cluster mode enabled) replication group.
    #               For Redis (cluster mode disabled) either omit this parameter or set it to 1.</p>
    #           <p>Default: 1</p>
    #
    # @option params [Integer] :replicas_per_node_group
    #   <p>An optional parameter that specifies the number of replica nodes in each node group (shard).
    #               Valid values are 0 to 5.</p>
    #
    # @option params [Array<NodeGroupConfiguration>] :node_group_configuration
    #   <p>A list of node group (shard) configuration options.
    #               Each node group (shard) configuration has the following members:
    #               <code>PrimaryAvailabilityZone</code>,
    #               <code>ReplicaAvailabilityZones</code>,
    #               <code>ReplicaCount</code>, and
    #               <code>Slots</code>.</p>
    #           <p>If you're creating a Redis (cluster mode disabled) or a Redis (cluster mode enabled) replication group, you can use this parameter to
    #               individually configure each node group (shard), or you can omit this parameter. However, it is required when seeding a
    #               Redis (cluster mode enabled) cluster from a S3 rdb file. You must configure each node group (shard) using this parameter
    #               because you must specify the slots for each node group.</p>
    #
    # @option params [String] :cache_node_type
    #   <p>The compute and memory capacity of the nodes in the node group (shard).</p>
    #           <p>The following node types are supported by ElastiCache.
    #   				Generally speaking, the current generation types provide more memory and computational power
    #   			at lower cost when compared to their equivalent previous generation counterparts.</p>
    #   		       <ul>
    #               <li>
    #                  <p>General purpose:</p>
    #   				           <ul>
    #                     <li>
    #                        <p>Current generation: </p>
    #   					
    #   					
    #   					
    #   					
    #   					
    #   					                <p>
    #                           <b>M6g node types</b> (available only for Redis engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward):
    #   						<code>cache.m6g.large</code>,
    #   							<code>cache.m6g.xlarge</code>,
    #   							<code>cache.m6g.2xlarge</code>,
    #   							<code>cache.m6g.4xlarge</code>,
    #   							<code>cache.m6g.8xlarge</code>,
    #   							<code>cache.m6g.12xlarge</code>,
    #   							<code>cache.m6g.16xlarge</code>
    #   							
    #   							
    #   							
    #   						               </p>	
    #   						
    #   						               <note>
    #                           <p>For region availability, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion">Supported Node Types</a>
    #                           </p>
    #                        </note>
    #       					
    #       					
    #       					            <p>
    #                           <b>M5 node types:</b>
    #       						              <code>cache.m5.large</code>,
    #       						<code>cache.m5.xlarge</code>,
    #       						<code>cache.m5.2xlarge</code>,
    #       						<code>cache.m5.4xlarge</code>,
    #       						<code>cache.m5.12xlarge</code>,
    #       						<code>cache.m5.24xlarge</code>
    #       						
    #       						
    #       						           </p>	
    #       						
    #   						
    #   						               <p>
    #                           <b>M4 node types:</b>
    #       						              <code>cache.m4.large</code>,
    #       						<code>cache.m4.xlarge</code>,
    #       						<code>cache.m4.2xlarge</code>,
    #       						<code>cache.m4.4xlarge</code>,
    #       						<code>cache.m4.10xlarge</code>
    #                        </p>
    #       			
    #   					
    #   					                <p>
    #                           <b>T4g node types</b> (available only for Redis engine version 5.0.6 onward and Memcached engine version 1.5.16 onward):
    #   					        <code>cache.t4g.micro</code>,
    #   					        <code>cache.t4g.small</code>,
    #   					        <code>cache.t4g.medium</code>
    #   					                </p>	
    #   					                <p>
    #                           <b>T3 node types:</b>
    #   					                   <code>cache.t3.micro</code>,
    #       						<code>cache.t3.small</code>,
    #       						<code>cache.t3.medium</code>
    #                        </p>
    #       								
    #       						
    #       				             <p>
    #                           <b>T2 node types:</b>
    #   					                   <code>cache.t2.micro</code>,
    #       						<code>cache.t2.small</code>,
    #       						<code>cache.t2.medium</code>
    #                        </p>
    #       						
    #       						
    #       						
    #       						
    #       						        </li>
    #                     <li>
    #                        <p>Previous generation: (not recommended)</p>
    #   						               <p>
    #                           <b>T1 node types:</b>
    #   					                   <code>cache.t1.micro</code>
    #                        </p>
    #   					
    #   						               <p>
    #                           <b>M1 node types:</b>
    #   						                  <code>cache.m1.small</code>,
    #   						   <code>cache.m1.medium</code>,
    #   						   <code>cache.m1.large</code>,
    #   						   <code>cache.m1.xlarge</code>
    #                        </p>
    #   						
    #   						               <p>
    #                           <b>M3 node types:</b>
    #       						              <code>cache.m3.medium</code>,
    #       						<code>cache.m3.large</code>,
    #       						<code>cache.m3.xlarge</code>,
    #       						<code>cache.m3.2xlarge</code>
    #                        </p>
    #   						
    #   						            </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Compute optimized:</p>
    #
    #   				           <ul>
    #                     <li>
    #                        <p>Previous generation: (not recommended)</p>
    #   			                  <p>
    #                           <b>C1 node types:</b>
    #   			                     <code>cache.c1.xlarge</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Memory optimized with data tiering:</p>
    #   		             <ul>
    #                     <li>
    #                        <p>Current generation: </p>
    #   		
    #   		                   <p>
    #                           <b>R6gd node types</b> (available only for Redis engine version 6.2 onward).</p>
    #   		
    #   		
    #   		
    #   		
    #   		                   <p>	
    #   		
    #   		                      <code>cache.r6gd.xlarge</code>,
    #   		                    <code>cache.r6gd.2xlarge</code>,
    #   		                    <code>cache.r6gd.4xlarge</code>,
    #   		                    <code>cache.r6gd.8xlarge</code>,
    #   		                    <code>cache.r6gd.12xlarge</code>,
    #   		                    <code>cache.r6gd.16xlarge</code>
    #   		
    #   		
    #   		
    #   		
    #   		
    #   		
    #   		                   </p>					
    #   		
    #   		                </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Memory optimized:</p>
    #   				           <ul>
    #                     <li>
    #                        <p>Current generation: </p>
    #   				
    #   					   		    				
    #   					
    #   					
    #   					                <p>
    #                           <b>R6g node types</b> (available only for Redis engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward).</p>
    #   						
    #   						
    #   						
    #   						
    #   						               <p>	
    #   							                 <code>cache.r6g.large</code>,
    #   							<code>cache.r6g.xlarge</code>,
    #   							<code>cache.r6g.2xlarge</code>,
    #   							<code>cache.r6g.4xlarge</code>,
    #   							<code>cache.r6g.8xlarge</code>,
    #   							<code>cache.r6g.12xlarge</code>,
    #   							<code>cache.r6g.16xlarge</code>
    #   							
    #   							
    #   							
    #   							
    #   							
    #   							
    #   						               </p>	
    #   						               <note>
    #                           <p>For region availability, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion">Supported Node Types</a>
    #                           </p>
    #                        </note>
    #   					                <p>
    #                           <b>R5 node types:</b>
    #       					               <code>cache.r5.large</code>,
    #       					   <code>cache.r5.xlarge</code>,
    #       					   <code>cache.r5.2xlarge</code>,
    #       					   <code>cache.r5.4xlarge</code>,
    #       					   <code>cache.r5.12xlarge</code>,
    #       					   <code>cache.r5.24xlarge</code>
    #                        </p>
    #   						
    #       					            <p>
    #                           <b>R4 node types:</b>
    #       					               <code>cache.r4.large</code>,
    #       					   <code>cache.r4.xlarge</code>,
    #       					   <code>cache.r4.2xlarge</code>,
    #       					   <code>cache.r4.4xlarge</code>,
    #       					   <code>cache.r4.8xlarge</code>,
    #       					   <code>cache.r4.16xlarge</code>
    #                        </p>
    #       					
    #       					
    #       					
    #
    #
    #       					
    #       					
    #       					
    #       					
    #       					
    #       					
    #       					         </li>
    #                     <li>
    #                        <p>Previous generation: (not recommended)</p>
    #                           <p>
    #                           <b>M2 node types:</b>						
    #       					               <code>cache.m2.xlarge</code>,
    #       						<code>cache.m2.2xlarge</code>,
    #       						<code>cache.m2.4xlarge</code>
    #                        </p>
    #       						
    #       						           <p>
    #                           <b>R3 node types:</b>
    #       					               <code>cache.r3.large</code>,
    #       						<code>cache.r3.xlarge</code>,
    #       						<code>cache.r3.2xlarge</code>,
    #       						<code>cache.r3.4xlarge</code>,
    #       						<code>cache.r3.8xlarge</code>
    #                        </p>
    #       						
    #       						        </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #   				
    #   		       <p>
    #               <b>Additional node type info</b>
    #            </p>
    #   		       <ul>
    #               <li>
    #                  <p>All current generation instance types are created in Amazon VPC by default.</p>
    #               </li>
    #               <li>
    #                  <p>Redis append-only files (AOF) are not supported for T1 or T2 instances.</p>
    #               </li>
    #               <li>
    #                  <p>Redis Multi-AZ with automatic failover is not supported on T1 instances.</p>
    #               </li>
    #               <li>
    #                  <p>Redis configuration variables <code>appendonly</code> and
    #   				<code>appendfsync</code> are not supported on Redis version 2.8.22 and later.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :engine
    #   <p>The name of the cache engine to be used for the clusters in this replication group. Must be Redis.</p>
    #
    # @option params [String] :engine_version
    #   <p>The version number of the cache engine to be used for the clusters in this replication group.
    #               To view the supported cache engine versions, use the <code>DescribeCacheEngineVersions</code> operation.</p>
    #
    #           <p>
    #               <b>Important:</b> You can upgrade to a newer engine version (see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/SelectEngine.html#VersionManagement">Selecting a Cache Engine and Version</a>) in the <i>ElastiCache User Guide</i>,
    #               but you cannot downgrade to an earlier engine version.
    #               If you want to use an earlier engine version,
    #               you must delete the existing cluster or replication group and
    #               create it anew with the earlier engine version. </p>
    #
    # @option params [String] :cache_parameter_group_name
    #   <p>The name of the parameter group to associate with this replication group.
    #               If this argument is omitted, the default cache parameter group for the specified engine is
    #               used.</p>
    #
    #           <p>If you are running Redis version 3.2.4 or later, only one node group (shard), and want to use a default parameter group,
    #               we recommend that you specify the parameter group by name. </p>
    #           <ul>
    #               <li>
    #                  <p>To create a Redis (cluster mode disabled) replication group, use <code>CacheParameterGroupName=default.redis3.2</code>.</p>
    #               </li>
    #               <li>
    #                  <p>To create a Redis (cluster mode enabled) replication group, use <code>CacheParameterGroupName=default.redis3.2.cluster.on</code>.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :cache_subnet_group_name
    #   <p>The name of the cache subnet group to be used for the replication group.</p>
    #           <important>
    #               <p>If you're going to launch your cluster in an Amazon VPC,
    #                   you need to create a subnet group before you start creating a cluster.
    #                   For more information, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/SubnetGroups.html">Subnets and Subnet Groups</a>.</p>
    #            </important>
    #
    # @option params [Array<String>] :cache_security_group_names
    #   <p>A list of cache security group names to associate with this replication group.</p>
    #
    # @option params [Array<String>] :security_group_ids
    #   <p>One or more Amazon VPC security groups associated with this replication group.</p>
    #           <p>Use this parameter only when you are creating a replication group in an Amazon Virtual Private Cloud (Amazon VPC).</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tags to be added to this resource.
    #             Tags are comma-separated key,value pairs (e.g. Key=<code>myKey</code>, Value=<code>myKeyValue</code>. You can include multiple tags as shown following:
    #             Key=<code>myKey</code>, Value=<code>myKeyValue</code> Key=<code>mySecondKey</code>, Value=<code>mySecondKeyValue</code>. Tags on replication groups will be replicated to all nodes.</p>
    #
    # @option params [Array<String>] :snapshot_arns
    #   <p>A list of Amazon Resource Names (ARN) that uniquely identify
    #             the Redis RDB snapshot files stored in Amazon S3.
    #             The snapshot files are used to populate the new replication group.
    #             The Amazon S3 object name in the ARN cannot contain any commas.
    #             The new replication group will have the number of node groups (console: shards)
    #             specified by the parameter <i>NumNodeGroups</i> or the number of
    #             node groups configured by <i>NodeGroupConfiguration</i> regardless
    #             of the number of ARNs specified here.</p>
    #            <p>Example of an Amazon S3 ARN: <code>arn:aws:s3:::my_bucket/snapshot1.rdb</code>
    #            </p>
    #
    # @option params [String] :snapshot_name
    #   <p>The name of a snapshot from which to restore data into the new replication group.
    #               The snapshot status changes to <code>restoring</code> while the new replication group is being created.</p>
    #
    # @option params [String] :preferred_maintenance_window
    #   <p>Specifies the weekly time range during which maintenance
    #               on the cluster is performed. It is specified as a range in
    #               the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum
    #               maintenance window is a 60 minute period.
    #               Valid values for <code>ddd</code> are:</p>
    #
    #            <p>Specifies the weekly time range during which maintenance
    #      on the cluster is performed. It is specified as a range in
    #      the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum
    #      maintenance window is a 60 minute period.</p>
    #            <p>Valid values for <code>ddd</code> are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>sun</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>mon</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>tue</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>wed</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>thu</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>fri</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sat</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>sun:23:00-mon:01:30</code>
    #            </p>
    #
    # @option params [Integer] :port
    #   <p>The port number on which each member of the replication group accepts connections.</p>
    #
    # @option params [String] :notification_topic_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Simple Notification Service (SNS)
    #               topic to which notifications are sent.</p>
    #           <note>
    #               <p>The Amazon SNS topic owner must be the same as the cluster owner.</p>
    #            </note>
    #
    # @option params [Boolean] :auto_minor_version_upgrade
    #   <p> If you are running Redis engine version 6.0 or later, set this parameter to yes if you want to opt-in to the next auto minor version upgrade campaign. This parameter is disabled for previous versions. 
    #           </p>
    #
    # @option params [Integer] :snapshot_retention_limit
    #   <p>The number of days for which ElastiCache retains automatic snapshots before deleting them.
    #               For example, if you set <code>SnapshotRetentionLimit</code> to 5,
    #               a snapshot that was taken today is retained for 5 days before being deleted.</p>
    #            <p>Default: 0 (i.e., automatic backups are disabled for this cluster).</p>
    #
    # @option params [String] :snapshot_window
    #   <p>The daily time range (in UTC) during which ElastiCache begins taking a daily snapshot of your node group (shard).</p>
    #            <p>Example: <code>05:00-09:00</code>
    #            </p>
    #            <p>If you do not specify this parameter, ElastiCache  automatically chooses an appropriate time range.</p>
    #
    # @option params [String] :auth_token
    #   <p>
    #               <b>Reserved parameter.</b>
    #               The password used to access a password protected server.</p>
    #           <p>
    #               <code>AuthToken</code> can be specified only on replication groups where <code>TransitEncryptionEnabled</code> is
    #               <code>true</code>.</p>
    #           <important>
    #               <p>For HIPAA compliance, you must specify <code>TransitEncryptionEnabled</code> as <code>true</code>,
    #               an <code>AuthToken</code>, and a <code>CacheSubnetGroup</code>.</p>
    #            </important>
    #           <p>Password constraints:</p>
    #           <ul>
    #               <li>
    #                  <p>Must be only printable ASCII characters.</p>
    #               </li>
    #               <li>
    #                  <p>Must be at least 16 characters and no more than 128
    #                   characters in length.</p>
    #               </li>
    #               <li>
    #                  <p>The only permitted printable special characters are !, &, #, $, ^, <, >, and -. Other printable special characters cannot be used in the AUTH token.</p>
    #               </li>
    #            </ul>
    #           <p>For more information, see <a href="http://redis.io/commands/AUTH">AUTH password</a> at http://redis.io/commands/AUTH.</p>
    #
    # @option params [Boolean] :transit_encryption_enabled
    #   <p>A flag that enables in-transit encryption when set to <code>true</code>.</p>
    #           <p>You cannot modify the value of <code>TransitEncryptionEnabled</code>
    #               after the cluster is created. To enable in-transit encryption on a cluster
    #               you must set <code>TransitEncryptionEnabled</code> to <code>true</code>
    #               when you create a cluster.</p>
    #           <p>This parameter is valid only if the <code>Engine</code> parameter is <code>redis</code>,
    #               the <code>EngineVersion</code> parameter is <code>3.2.6</code>, <code>4.x</code> or later,
    #               and the cluster is being created in an Amazon VPC.</p>
    #           <p>If you enable in-transit encryption, you must also specify a value for
    #               <code>CacheSubnetGroup</code>.</p>
    #           <p>
    #               <b>Required:</b>
    #               Only available when creating a replication group in an Amazon VPC using redis version <code>3.2.6</code>, <code>4.x</code> or later.</p>
    #           <p>Default: <code>false</code>
    #            </p>
    #           <important>
    #               <p>For HIPAA compliance, you must specify <code>TransitEncryptionEnabled</code> as <code>true</code>,
    #               an <code>AuthToken</code>, and a <code>CacheSubnetGroup</code>.</p>
    #            </important>
    #
    # @option params [Boolean] :at_rest_encryption_enabled
    #   <p>A flag that enables encryption at rest when set to <code>true</code>.</p>
    #           <p>You cannot modify the value of <code>AtRestEncryptionEnabled</code> after the replication
    #               group is created.
    #               To enable encryption at rest on a replication group you must set <code>AtRestEncryptionEnabled</code> to
    #               <code>true</code> when you create the replication group. </p>
    #           <p>
    #               <b>Required:</b>
    #               Only available when creating a replication group in an Amazon VPC using redis version <code>3.2.6</code>, <code>4.x</code> or later.</p>
    #           <p>Default: <code>false</code>
    #            </p>
    #
    # @option params [String] :kms_key_id
    #   <p>The ID of the KMS key used to encrypt the disk in the cluster.</p>
    #
    # @option params [Array<String>] :user_group_ids
    #   <p>The user group to associate with the replication group.</p>
    #
    # @option params [Array<LogDeliveryConfigurationRequest>] :log_delivery_configurations
    #   <p>Specifies the destination, format and type of the logs.</p>
    #
    # @option params [Boolean] :data_tiering_enabled
    #   <p>Enables data tiering. Data tiering is only supported for replication groups using the r6gd node type. This parameter must be set to true when using r6gd nodes.
    #               For more information, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/data-tiering.html">Data tiering</a>.</p>
    #
    # @return [Types::CreateReplicationGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_replication_group(
    #     replication_group_id: 'ReplicationGroupId', # required
    #     replication_group_description: 'ReplicationGroupDescription', # required
    #     global_replication_group_id: 'GlobalReplicationGroupId',
    #     primary_cluster_id: 'PrimaryClusterId',
    #     automatic_failover_enabled: false,
    #     multi_az_enabled: false,
    #     num_cache_clusters: 1,
    #     preferred_cache_cluster_a_zs: [
    #       'member'
    #     ],
    #     num_node_groups: 1,
    #     replicas_per_node_group: 1,
    #     node_group_configuration: [
    #       {
    #         node_group_id: 'NodeGroupId',
    #         slots: 'Slots',
    #         replica_count: 1,
    #         primary_availability_zone: 'PrimaryAvailabilityZone',
    #         primary_outpost_arn: 'PrimaryOutpostArn',
    #         replica_outpost_arns: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     cache_node_type: 'CacheNodeType',
    #     engine: 'Engine',
    #     engine_version: 'EngineVersion',
    #     cache_parameter_group_name: 'CacheParameterGroupName',
    #     cache_subnet_group_name: 'CacheSubnetGroupName',
    #     cache_security_group_names: [
    #       'member'
    #     ],
    #     security_group_ids: [
    #       'member'
    #     ],
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ],
    #     snapshot_arns: [
    #       'member'
    #     ],
    #     snapshot_name: 'SnapshotName',
    #     preferred_maintenance_window: 'PreferredMaintenanceWindow',
    #     port: 1,
    #     notification_topic_arn: 'NotificationTopicArn',
    #     auto_minor_version_upgrade: false,
    #     snapshot_retention_limit: 1,
    #     snapshot_window: 'SnapshotWindow',
    #     auth_token: 'AuthToken',
    #     transit_encryption_enabled: false,
    #     at_rest_encryption_enabled: false,
    #     kms_key_id: 'KmsKeyId',
    #     user_group_ids: [
    #       'member'
    #     ],
    #     log_delivery_configurations: [
    #       {
    #         log_type: 'slow-log', # accepts ["slow-log", "engine-log"]
    #         destination_type: 'cloudwatch-logs', # accepts ["cloudwatch-logs", "kinesis-firehose"]
    #         destination_details: {
    #           cloud_watch_logs_details: {
    #             log_group: 'LogGroup'
    #           },
    #           kinesis_firehose_details: {
    #             delivery_stream: 'DeliveryStream'
    #           }
    #         },
    #         log_format: 'text', # accepts ["text", "json"]
    #         enabled: false
    #       }
    #     ],
    #     data_tiering_enabled: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateReplicationGroupOutput
    #   resp.data.replication_group #=> Types::ReplicationGroup
    #   resp.data.replication_group.replication_group_id #=> String
    #   resp.data.replication_group.description #=> String
    #   resp.data.replication_group.global_replication_group_info #=> Types::GlobalReplicationGroupInfo
    #   resp.data.replication_group.global_replication_group_info.global_replication_group_id #=> String
    #   resp.data.replication_group.global_replication_group_info.global_replication_group_member_role #=> String
    #   resp.data.replication_group.status #=> String
    #   resp.data.replication_group.pending_modified_values #=> Types::ReplicationGroupPendingModifiedValues
    #   resp.data.replication_group.pending_modified_values.primary_cluster_id #=> String
    #   resp.data.replication_group.pending_modified_values.automatic_failover_status #=> String, one of ["enabled", "disabled"]
    #   resp.data.replication_group.pending_modified_values.resharding #=> Types::ReshardingStatus
    #   resp.data.replication_group.pending_modified_values.resharding.slot_migration #=> Types::SlotMigration
    #   resp.data.replication_group.pending_modified_values.resharding.slot_migration.progress_percentage #=> Float
    #   resp.data.replication_group.pending_modified_values.auth_token_status #=> String, one of ["SETTING", "ROTATING"]
    #   resp.data.replication_group.pending_modified_values.user_groups #=> Types::UserGroupsUpdateStatus
    #   resp.data.replication_group.pending_modified_values.user_groups.user_group_ids_to_add #=> Array<String>
    #   resp.data.replication_group.pending_modified_values.user_groups.user_group_ids_to_add[0] #=> String
    #   resp.data.replication_group.pending_modified_values.user_groups.user_group_ids_to_remove #=> Array<String>
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations #=> Array<PendingLogDeliveryConfiguration>
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0] #=> Types::PendingLogDeliveryConfiguration
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].log_type #=> String, one of ["slow-log", "engine-log"]
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].destination_type #=> String, one of ["cloudwatch-logs", "kinesis-firehose"]
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].destination_details #=> Types::DestinationDetails
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].destination_details.cloud_watch_logs_details #=> Types::CloudWatchLogsDestinationDetails
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].destination_details.cloud_watch_logs_details.log_group #=> String
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].destination_details.kinesis_firehose_details #=> Types::KinesisFirehoseDestinationDetails
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].destination_details.kinesis_firehose_details.delivery_stream #=> String
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].log_format #=> String, one of ["text", "json"]
    #   resp.data.replication_group.member_clusters #=> Array<String>
    #   resp.data.replication_group.member_clusters[0] #=> String
    #   resp.data.replication_group.node_groups #=> Array<NodeGroup>
    #   resp.data.replication_group.node_groups[0] #=> Types::NodeGroup
    #   resp.data.replication_group.node_groups[0].node_group_id #=> String
    #   resp.data.replication_group.node_groups[0].status #=> String
    #   resp.data.replication_group.node_groups[0].primary_endpoint #=> Types::Endpoint
    #   resp.data.replication_group.node_groups[0].primary_endpoint.address #=> String
    #   resp.data.replication_group.node_groups[0].primary_endpoint.port #=> Integer
    #   resp.data.replication_group.node_groups[0].reader_endpoint #=> Types::Endpoint
    #   resp.data.replication_group.node_groups[0].slots #=> String
    #   resp.data.replication_group.node_groups[0].node_group_members #=> Array<NodeGroupMember>
    #   resp.data.replication_group.node_groups[0].node_group_members[0] #=> Types::NodeGroupMember
    #   resp.data.replication_group.node_groups[0].node_group_members[0].cache_cluster_id #=> String
    #   resp.data.replication_group.node_groups[0].node_group_members[0].cache_node_id #=> String
    #   resp.data.replication_group.node_groups[0].node_group_members[0].read_endpoint #=> Types::Endpoint
    #   resp.data.replication_group.node_groups[0].node_group_members[0].preferred_availability_zone #=> String
    #   resp.data.replication_group.node_groups[0].node_group_members[0].preferred_outpost_arn #=> String
    #   resp.data.replication_group.node_groups[0].node_group_members[0].current_role #=> String
    #   resp.data.replication_group.snapshotting_cluster_id #=> String
    #   resp.data.replication_group.automatic_failover #=> String, one of ["enabled", "disabled", "enabling", "disabling"]
    #   resp.data.replication_group.multi_az #=> String, one of ["enabled", "disabled"]
    #   resp.data.replication_group.configuration_endpoint #=> Types::Endpoint
    #   resp.data.replication_group.snapshot_retention_limit #=> Integer
    #   resp.data.replication_group.snapshot_window #=> String
    #   resp.data.replication_group.cluster_enabled #=> Boolean
    #   resp.data.replication_group.cache_node_type #=> String
    #   resp.data.replication_group.auth_token_enabled #=> Boolean
    #   resp.data.replication_group.auth_token_last_modified_date #=> Time
    #   resp.data.replication_group.transit_encryption_enabled #=> Boolean
    #   resp.data.replication_group.at_rest_encryption_enabled #=> Boolean
    #   resp.data.replication_group.member_clusters_outpost_arns #=> Array<String>
    #   resp.data.replication_group.member_clusters_outpost_arns[0] #=> String
    #   resp.data.replication_group.kms_key_id #=> String
    #   resp.data.replication_group.arn #=> String
    #   resp.data.replication_group.user_group_ids #=> Array<String>
    #   resp.data.replication_group.log_delivery_configurations #=> Array<LogDeliveryConfiguration>
    #   resp.data.replication_group.log_delivery_configurations[0] #=> Types::LogDeliveryConfiguration
    #   resp.data.replication_group.log_delivery_configurations[0].log_type #=> String, one of ["slow-log", "engine-log"]
    #   resp.data.replication_group.log_delivery_configurations[0].destination_type #=> String, one of ["cloudwatch-logs", "kinesis-firehose"]
    #   resp.data.replication_group.log_delivery_configurations[0].destination_details #=> Types::DestinationDetails
    #   resp.data.replication_group.log_delivery_configurations[0].log_format #=> String, one of ["text", "json"]
    #   resp.data.replication_group.log_delivery_configurations[0].status #=> String, one of ["active", "enabling", "modifying", "disabling", "error"]
    #   resp.data.replication_group.log_delivery_configurations[0].message #=> String
    #   resp.data.replication_group.replication_group_create_time #=> Time
    #   resp.data.replication_group.data_tiering #=> String, one of ["enabled", "disabled"]
    #
    def create_replication_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateReplicationGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateReplicationGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateReplicationGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidVPCNetworkStateFault, Errors::CacheSecurityGroupNotFoundFault, Errors::CacheClusterNotFoundFault, Errors::InvalidCacheClusterStateFault, Errors::NodeGroupsPerReplicationGroupQuotaExceededFault, Errors::NodeQuotaForClusterExceededFault, Errors::NodeQuotaForCustomerExceededFault, Errors::CacheSubnetGroupNotFoundFault, Errors::UserGroupNotFoundFault, Errors::InvalidParameterValueException, Errors::GlobalReplicationGroupNotFoundFault, Errors::InvalidGlobalReplicationGroupStateFault, Errors::CacheParameterGroupNotFoundFault, Errors::TagQuotaPerResourceExceeded, Errors::ClusterQuotaForCustomerExceededFault, Errors::ReplicationGroupAlreadyExistsFault, Errors::InsufficientCacheClusterCapacityFault, Errors::InvalidParameterCombinationException, Errors::InvalidUserGroupStateFault]),
        data_parser: Parsers::CreateReplicationGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateReplicationGroup,
        stubs: @stubs,
        params_class: Params::CreateReplicationGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_replication_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a copy of an entire cluster or replication group at a
    #             specific moment in time.</p>
    #
    #         <note>
    #             <p>This operation is valid for Redis only.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::CreateSnapshotInput}.
    #
    # @option params [String] :replication_group_id
    #   <p>The identifier of an existing replication group. The snapshot is created from this replication group.</p>
    #
    # @option params [String] :cache_cluster_id
    #   <p>The identifier of an existing cluster. The snapshot is created from this cluster.</p>
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
    #     replication_group_id: 'ReplicationGroupId',
    #     cache_cluster_id: 'CacheClusterId',
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
    #   resp.data.snapshot.snapshot_name #=> String
    #   resp.data.snapshot.replication_group_id #=> String
    #   resp.data.snapshot.replication_group_description #=> String
    #   resp.data.snapshot.cache_cluster_id #=> String
    #   resp.data.snapshot.snapshot_status #=> String
    #   resp.data.snapshot.snapshot_source #=> String
    #   resp.data.snapshot.cache_node_type #=> String
    #   resp.data.snapshot.engine #=> String
    #   resp.data.snapshot.engine_version #=> String
    #   resp.data.snapshot.num_cache_nodes #=> Integer
    #   resp.data.snapshot.preferred_availability_zone #=> String
    #   resp.data.snapshot.preferred_outpost_arn #=> String
    #   resp.data.snapshot.cache_cluster_create_time #=> Time
    #   resp.data.snapshot.preferred_maintenance_window #=> String
    #   resp.data.snapshot.topic_arn #=> String
    #   resp.data.snapshot.port #=> Integer
    #   resp.data.snapshot.cache_parameter_group_name #=> String
    #   resp.data.snapshot.cache_subnet_group_name #=> String
    #   resp.data.snapshot.vpc_id #=> String
    #   resp.data.snapshot.auto_minor_version_upgrade #=> Boolean
    #   resp.data.snapshot.snapshot_retention_limit #=> Integer
    #   resp.data.snapshot.snapshot_window #=> String
    #   resp.data.snapshot.num_node_groups #=> Integer
    #   resp.data.snapshot.automatic_failover #=> String, one of ["enabled", "disabled", "enabling", "disabling"]
    #   resp.data.snapshot.node_snapshots #=> Array<NodeSnapshot>
    #   resp.data.snapshot.node_snapshots[0] #=> Types::NodeSnapshot
    #   resp.data.snapshot.node_snapshots[0].cache_cluster_id #=> String
    #   resp.data.snapshot.node_snapshots[0].node_group_id #=> String
    #   resp.data.snapshot.node_snapshots[0].cache_node_id #=> String
    #   resp.data.snapshot.node_snapshots[0].node_group_configuration #=> Types::NodeGroupConfiguration
    #   resp.data.snapshot.node_snapshots[0].node_group_configuration.node_group_id #=> String
    #   resp.data.snapshot.node_snapshots[0].node_group_configuration.slots #=> String
    #   resp.data.snapshot.node_snapshots[0].node_group_configuration.replica_count #=> Integer
    #   resp.data.snapshot.node_snapshots[0].node_group_configuration.primary_availability_zone #=> String
    #   resp.data.snapshot.node_snapshots[0].node_group_configuration.replica_availability_zones #=> Array<String>
    #   resp.data.snapshot.node_snapshots[0].node_group_configuration.replica_availability_zones[0] #=> String
    #   resp.data.snapshot.node_snapshots[0].node_group_configuration.primary_outpost_arn #=> String
    #   resp.data.snapshot.node_snapshots[0].node_group_configuration.replica_outpost_arns #=> Array<String>
    #   resp.data.snapshot.node_snapshots[0].node_group_configuration.replica_outpost_arns[0] #=> String
    #   resp.data.snapshot.node_snapshots[0].cache_size #=> String
    #   resp.data.snapshot.node_snapshots[0].cache_node_create_time #=> Time
    #   resp.data.snapshot.node_snapshots[0].snapshot_create_time #=> Time
    #   resp.data.snapshot.kms_key_id #=> String
    #   resp.data.snapshot.arn #=> String
    #   resp.data.snapshot.data_tiering #=> String, one of ["enabled", "disabled"]
    #
    def create_snapshot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateSnapshotInput.build(params)
      response_body = StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::SnapshotAlreadyExistsFault, Errors::TagQuotaPerResourceExceeded, Errors::CacheClusterNotFoundFault, Errors::InvalidCacheClusterStateFault, Errors::SnapshotQuotaExceededFault, Errors::SnapshotFeatureNotSupportedFault, Errors::InvalidParameterCombinationException, Errors::InvalidReplicationGroupStateFault, Errors::ReplicationGroupNotFoundFault]),
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

    # <p>For Redis engine version 6.0 onwards: Creates a Redis user. For more information, see <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Clusters.RBAC.html">Using Role Based Access Control (RBAC)</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateUserInput}.
    #
    # @option params [String] :user_id
    #   <p>The ID of the user.</p>
    #
    # @option params [String] :user_name
    #   <p>The username of the user.</p>
    #
    # @option params [String] :engine
    #   <p>The current supported value is Redis. </p>
    #
    # @option params [Array<String>] :passwords
    #   <p>Passwords used for this user. You can create up to two passwords for each user.</p>
    #
    # @option params [String] :access_string
    #   <p>Access permissions string used for this user.</p>
    #
    # @option params [Boolean] :no_password_required
    #   <p>Indicates a password is not required for this user.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value, although null is accepted.</p>
    #
    # @return [Types::CreateUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user(
    #     user_id: 'UserId', # required
    #     user_name: 'UserName', # required
    #     engine: 'Engine', # required
    #     passwords: [
    #       'member'
    #     ],
    #     access_string: 'AccessString', # required
    #     no_password_required: false,
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
    #   resp.data.user_id #=> String
    #   resp.data.user_name #=> String
    #   resp.data.status #=> String
    #   resp.data.engine #=> String
    #   resp.data.minimum_engine_version #=> String
    #   resp.data.access_string #=> String
    #   resp.data.user_group_ids #=> Array<String>
    #   resp.data.user_group_ids[0] #=> String
    #   resp.data.authentication #=> Types::Authentication
    #   resp.data.authentication.type #=> String, one of ["password", "no-password"]
    #   resp.data.authentication.password_count #=> Integer
    #   resp.data.arn #=> String
    #
    def create_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateUserInput.build(params)
      response_body = StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::UserQuotaExceededFault, Errors::TagQuotaPerResourceExceeded, Errors::UserAlreadyExistsFault, Errors::InvalidParameterCombinationException, Errors::DuplicateUserNameFault, Errors::ServiceLinkedRoleNotFoundFault]),
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

    # <p>For Redis engine version 6.0 onwards: Creates a Redis user group. For more information, see <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Clusters.RBAC.html">Using Role Based Access Control (RBAC)</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::CreateUserGroupInput}.
    #
    # @option params [String] :user_group_id
    #   <p>The ID of the user group.</p>
    #
    # @option params [String] :engine
    #   <p>The current supported value is Redis. </p>
    #
    # @option params [Array<String>] :user_ids
    #   <p>The list of user IDs that belong to the user group.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value, although null is accepted.</p>
    #
    # @return [Types::CreateUserGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user_group(
    #     user_group_id: 'UserGroupId', # required
    #     engine: 'Engine', # required
    #     user_ids: [
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
    #   resp.data #=> Types::CreateUserGroupOutput
    #   resp.data.user_group_id #=> String
    #   resp.data.status #=> String
    #   resp.data.engine #=> String
    #   resp.data.user_ids #=> Array<String>
    #   resp.data.user_ids[0] #=> String
    #   resp.data.minimum_engine_version #=> String
    #   resp.data.pending_changes #=> Types::UserGroupPendingChanges
    #   resp.data.pending_changes.user_ids_to_remove #=> Array<String>
    #   resp.data.pending_changes.user_ids_to_add #=> Array<String>
    #   resp.data.replication_groups #=> Array<String>
    #   resp.data.replication_groups[0] #=> String
    #   resp.data.arn #=> String
    #
    def create_user_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateUserGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateUserGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateUserGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::UserGroupAlreadyExistsFault, Errors::TagQuotaPerResourceExceeded, Errors::UserNotFoundFault, Errors::UserGroupQuotaExceededFault, Errors::DuplicateUserNameFault, Errors::DefaultUserRequired, Errors::ServiceLinkedRoleNotFoundFault]),
        data_parser: Parsers::CreateUserGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateUserGroup,
        stubs: @stubs,
        params_class: Params::CreateUserGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_user_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Decreases the number of node groups in a Global datastore</p>
    #
    # @param [Hash] params
    #   See {Types::DecreaseNodeGroupsInGlobalReplicationGroupInput}.
    #
    # @option params [String] :global_replication_group_id
    #   <p>The name of the Global datastore</p>
    #
    # @option params [Integer] :node_group_count
    #   <p>The number of node groups (shards) that results from the modification of the shard configuration</p>
    #
    # @option params [Array<String>] :global_node_groups_to_remove
    #   <p>If the value of NodeGroupCount is less than the current number of node groups (shards), then either NodeGroupsToRemove or NodeGroupsToRetain is required. GlobalNodeGroupsToRemove is a list of NodeGroupIds to remove from the cluster.
    #
    #               ElastiCache for Redis will attempt to remove all node groups listed by GlobalNodeGroupsToRemove from the cluster. </p>
    #
    # @option params [Array<String>] :global_node_groups_to_retain
    #   <p>If the value of NodeGroupCount is less than the current number of node groups (shards), then either NodeGroupsToRemove or NodeGroupsToRetain is required. GlobalNodeGroupsToRetain is a list of NodeGroupIds to retain from the cluster. ElastiCache for Redis will attempt to retain all node groups listed by GlobalNodeGroupsToRetain from the cluster.
    #
    #
    #                </p>
    #
    # @option params [Boolean] :apply_immediately
    #   <p>Indicates that the shard reconfiguration process begins immediately. At present, the only permitted value for this parameter is true. </p>
    #
    # @return [Types::DecreaseNodeGroupsInGlobalReplicationGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.decrease_node_groups_in_global_replication_group(
    #     global_replication_group_id: 'GlobalReplicationGroupId', # required
    #     node_group_count: 1, # required
    #     global_node_groups_to_remove: [
    #       'member'
    #     ],
    #     apply_immediately: false # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DecreaseNodeGroupsInGlobalReplicationGroupOutput
    #   resp.data.global_replication_group #=> Types::GlobalReplicationGroup
    #   resp.data.global_replication_group.global_replication_group_id #=> String
    #   resp.data.global_replication_group.global_replication_group_description #=> String
    #   resp.data.global_replication_group.status #=> String
    #   resp.data.global_replication_group.cache_node_type #=> String
    #   resp.data.global_replication_group.engine #=> String
    #   resp.data.global_replication_group.engine_version #=> String
    #   resp.data.global_replication_group.members #=> Array<GlobalReplicationGroupMember>
    #   resp.data.global_replication_group.members[0] #=> Types::GlobalReplicationGroupMember
    #   resp.data.global_replication_group.members[0].replication_group_id #=> String
    #   resp.data.global_replication_group.members[0].replication_group_region #=> String
    #   resp.data.global_replication_group.members[0].role #=> String
    #   resp.data.global_replication_group.members[0].automatic_failover #=> String, one of ["enabled", "disabled", "enabling", "disabling"]
    #   resp.data.global_replication_group.members[0].status #=> String
    #   resp.data.global_replication_group.cluster_enabled #=> Boolean
    #   resp.data.global_replication_group.global_node_groups #=> Array<GlobalNodeGroup>
    #   resp.data.global_replication_group.global_node_groups[0] #=> Types::GlobalNodeGroup
    #   resp.data.global_replication_group.global_node_groups[0].global_node_group_id #=> String
    #   resp.data.global_replication_group.global_node_groups[0].slots #=> String
    #   resp.data.global_replication_group.auth_token_enabled #=> Boolean
    #   resp.data.global_replication_group.transit_encryption_enabled #=> Boolean
    #   resp.data.global_replication_group.at_rest_encryption_enabled #=> Boolean
    #   resp.data.global_replication_group.arn #=> String
    #
    def decrease_node_groups_in_global_replication_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DecreaseNodeGroupsInGlobalReplicationGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DecreaseNodeGroupsInGlobalReplicationGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DecreaseNodeGroupsInGlobalReplicationGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::GlobalReplicationGroupNotFoundFault, Errors::InvalidGlobalReplicationGroupStateFault, Errors::InvalidParameterCombinationException]),
        data_parser: Parsers::DecreaseNodeGroupsInGlobalReplicationGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DecreaseNodeGroupsInGlobalReplicationGroup,
        stubs: @stubs,
        params_class: Params::DecreaseNodeGroupsInGlobalReplicationGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :decrease_node_groups_in_global_replication_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Dynamically decreases the number of replicas in a Redis (cluster mode disabled) replication group or the number of
    #             replica nodes in one or more node groups (shards) of a Redis (cluster mode enabled) replication group. This operation
    #             is performed with no cluster down time.</p>
    #
    # @param [Hash] params
    #   See {Types::DecreaseReplicaCountInput}.
    #
    # @option params [String] :replication_group_id
    #   <p>The id of the replication group from which you want to remove replica nodes.</p>
    #
    # @option params [Integer] :new_replica_count
    #   <p>The number of read replica nodes you want at the completion of this operation.
    #               For Redis (cluster mode disabled) replication groups, this is the number of replica nodes in the
    #               replication group. For Redis (cluster mode enabled) replication groups, this is the number of
    #               replica nodes in each of the replication group's node groups.</p>
    #           <p>The minimum number of replicas in a shard or replication group is:</p>
    #           <ul>
    #               <li>
    #                   <p>Redis (cluster mode disabled)</p>
    #                   <ul>
    #                     <li>
    #                           <p>If Multi-AZ is enabled: 1</p>
    #                     </li>
    #                     <li>
    #                           <p>If Multi-AZ is not enabled: 0</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                   <p>Redis (cluster mode enabled): 0 (though you will not be able to failover to a replica if your primary node fails)</p>
    #               </li>
    #            </ul>
    #
    # @option params [Array<ConfigureShard>] :replica_configuration
    #   <p>A list of <code>ConfigureShard</code> objects that can be used to configure each shard
    #               in a Redis (cluster mode enabled) replication group. The <code>ConfigureShard</code> has three members:
    #               <code>NewReplicaCount</code>, <code>NodeGroupId</code>, and <code>PreferredAvailabilityZones</code>.</p>
    #
    # @option params [Array<String>] :replicas_to_remove
    #   <p>A list of the node ids to remove from the replication group or node group (shard).</p>
    #
    # @option params [Boolean] :apply_immediately
    #   <p>If <code>True</code>, the number of replica nodes is decreased immediately.
    #
    #               <code>ApplyImmediately=False</code> is not currently supported.</p>
    #
    # @return [Types::DecreaseReplicaCountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.decrease_replica_count(
    #     replication_group_id: 'ReplicationGroupId', # required
    #     new_replica_count: 1,
    #     replica_configuration: [
    #       {
    #         node_group_id: 'NodeGroupId', # required
    #         new_replica_count: 1, # required
    #         preferred_availability_zones: [
    #           'member'
    #         ],
    #         preferred_outpost_arns: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     replicas_to_remove: [
    #       'member'
    #     ],
    #     apply_immediately: false # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DecreaseReplicaCountOutput
    #   resp.data.replication_group #=> Types::ReplicationGroup
    #   resp.data.replication_group.replication_group_id #=> String
    #   resp.data.replication_group.description #=> String
    #   resp.data.replication_group.global_replication_group_info #=> Types::GlobalReplicationGroupInfo
    #   resp.data.replication_group.global_replication_group_info.global_replication_group_id #=> String
    #   resp.data.replication_group.global_replication_group_info.global_replication_group_member_role #=> String
    #   resp.data.replication_group.status #=> String
    #   resp.data.replication_group.pending_modified_values #=> Types::ReplicationGroupPendingModifiedValues
    #   resp.data.replication_group.pending_modified_values.primary_cluster_id #=> String
    #   resp.data.replication_group.pending_modified_values.automatic_failover_status #=> String, one of ["enabled", "disabled"]
    #   resp.data.replication_group.pending_modified_values.resharding #=> Types::ReshardingStatus
    #   resp.data.replication_group.pending_modified_values.resharding.slot_migration #=> Types::SlotMigration
    #   resp.data.replication_group.pending_modified_values.resharding.slot_migration.progress_percentage #=> Float
    #   resp.data.replication_group.pending_modified_values.auth_token_status #=> String, one of ["SETTING", "ROTATING"]
    #   resp.data.replication_group.pending_modified_values.user_groups #=> Types::UserGroupsUpdateStatus
    #   resp.data.replication_group.pending_modified_values.user_groups.user_group_ids_to_add #=> Array<String>
    #   resp.data.replication_group.pending_modified_values.user_groups.user_group_ids_to_add[0] #=> String
    #   resp.data.replication_group.pending_modified_values.user_groups.user_group_ids_to_remove #=> Array<String>
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations #=> Array<PendingLogDeliveryConfiguration>
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0] #=> Types::PendingLogDeliveryConfiguration
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].log_type #=> String, one of ["slow-log", "engine-log"]
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].destination_type #=> String, one of ["cloudwatch-logs", "kinesis-firehose"]
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].destination_details #=> Types::DestinationDetails
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].destination_details.cloud_watch_logs_details #=> Types::CloudWatchLogsDestinationDetails
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].destination_details.cloud_watch_logs_details.log_group #=> String
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].destination_details.kinesis_firehose_details #=> Types::KinesisFirehoseDestinationDetails
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].destination_details.kinesis_firehose_details.delivery_stream #=> String
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].log_format #=> String, one of ["text", "json"]
    #   resp.data.replication_group.member_clusters #=> Array<String>
    #   resp.data.replication_group.member_clusters[0] #=> String
    #   resp.data.replication_group.node_groups #=> Array<NodeGroup>
    #   resp.data.replication_group.node_groups[0] #=> Types::NodeGroup
    #   resp.data.replication_group.node_groups[0].node_group_id #=> String
    #   resp.data.replication_group.node_groups[0].status #=> String
    #   resp.data.replication_group.node_groups[0].primary_endpoint #=> Types::Endpoint
    #   resp.data.replication_group.node_groups[0].primary_endpoint.address #=> String
    #   resp.data.replication_group.node_groups[0].primary_endpoint.port #=> Integer
    #   resp.data.replication_group.node_groups[0].reader_endpoint #=> Types::Endpoint
    #   resp.data.replication_group.node_groups[0].slots #=> String
    #   resp.data.replication_group.node_groups[0].node_group_members #=> Array<NodeGroupMember>
    #   resp.data.replication_group.node_groups[0].node_group_members[0] #=> Types::NodeGroupMember
    #   resp.data.replication_group.node_groups[0].node_group_members[0].cache_cluster_id #=> String
    #   resp.data.replication_group.node_groups[0].node_group_members[0].cache_node_id #=> String
    #   resp.data.replication_group.node_groups[0].node_group_members[0].read_endpoint #=> Types::Endpoint
    #   resp.data.replication_group.node_groups[0].node_group_members[0].preferred_availability_zone #=> String
    #   resp.data.replication_group.node_groups[0].node_group_members[0].preferred_outpost_arn #=> String
    #   resp.data.replication_group.node_groups[0].node_group_members[0].current_role #=> String
    #   resp.data.replication_group.snapshotting_cluster_id #=> String
    #   resp.data.replication_group.automatic_failover #=> String, one of ["enabled", "disabled", "enabling", "disabling"]
    #   resp.data.replication_group.multi_az #=> String, one of ["enabled", "disabled"]
    #   resp.data.replication_group.configuration_endpoint #=> Types::Endpoint
    #   resp.data.replication_group.snapshot_retention_limit #=> Integer
    #   resp.data.replication_group.snapshot_window #=> String
    #   resp.data.replication_group.cluster_enabled #=> Boolean
    #   resp.data.replication_group.cache_node_type #=> String
    #   resp.data.replication_group.auth_token_enabled #=> Boolean
    #   resp.data.replication_group.auth_token_last_modified_date #=> Time
    #   resp.data.replication_group.transit_encryption_enabled #=> Boolean
    #   resp.data.replication_group.at_rest_encryption_enabled #=> Boolean
    #   resp.data.replication_group.member_clusters_outpost_arns #=> Array<String>
    #   resp.data.replication_group.member_clusters_outpost_arns[0] #=> String
    #   resp.data.replication_group.kms_key_id #=> String
    #   resp.data.replication_group.arn #=> String
    #   resp.data.replication_group.user_group_ids #=> Array<String>
    #   resp.data.replication_group.log_delivery_configurations #=> Array<LogDeliveryConfiguration>
    #   resp.data.replication_group.log_delivery_configurations[0] #=> Types::LogDeliveryConfiguration
    #   resp.data.replication_group.log_delivery_configurations[0].log_type #=> String, one of ["slow-log", "engine-log"]
    #   resp.data.replication_group.log_delivery_configurations[0].destination_type #=> String, one of ["cloudwatch-logs", "kinesis-firehose"]
    #   resp.data.replication_group.log_delivery_configurations[0].destination_details #=> Types::DestinationDetails
    #   resp.data.replication_group.log_delivery_configurations[0].log_format #=> String, one of ["text", "json"]
    #   resp.data.replication_group.log_delivery_configurations[0].status #=> String, one of ["active", "enabling", "modifying", "disabling", "error"]
    #   resp.data.replication_group.log_delivery_configurations[0].message #=> String
    #   resp.data.replication_group.replication_group_create_time #=> Time
    #   resp.data.replication_group.data_tiering #=> String, one of ["enabled", "disabled"]
    #
    def decrease_replica_count(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DecreaseReplicaCountInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DecreaseReplicaCountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DecreaseReplicaCount
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidVPCNetworkStateFault, Errors::NoOperationFault, Errors::InvalidCacheClusterStateFault, Errors::NodeGroupsPerReplicationGroupQuotaExceededFault, Errors::NodeQuotaForCustomerExceededFault, Errors::InvalidReplicationGroupStateFault, Errors::InvalidParameterValueException, Errors::ClusterQuotaForCustomerExceededFault, Errors::InsufficientCacheClusterCapacityFault, Errors::InvalidParameterCombinationException, Errors::ReplicationGroupNotFoundFault, Errors::ServiceLinkedRoleNotFoundFault]),
        data_parser: Parsers::DecreaseReplicaCount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DecreaseReplicaCount,
        stubs: @stubs,
        params_class: Params::DecreaseReplicaCountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :decrease_replica_count
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a previously provisioned cluster.
    #                 <code>DeleteCacheCluster</code> deletes all associated cache nodes, node endpoints and the
    #             cluster itself. When you receive a successful response from this operation,
    #             Amazon ElastiCache immediately begins deleting the cluster; you cannot cancel or revert
    #             this operation.</p>
    #         <p>This operation is not valid for:</p>
    #         <ul>
    #             <li>
    #                 <p>Redis (cluster mode enabled) clusters</p>
    #             </li>
    #             <li>
    #                 <p>Redis (cluster mode disabled) clusters</p>
    #             </li>
    #             <li>
    #
    #                 <p>A cluster that is the last read replica of a replication group</p>
    #             </li>
    #             <li>
    #                 <p>A cluster that is the primary node of a replication group</p>
    #             </li>
    #             <li>
    #                 <p>A node group (shard) that has Multi-AZ mode enabled</p>
    #             </li>
    #             <li>
    #                 <p>A cluster from a Redis (cluster mode enabled) replication group</p>
    #             </li>
    #             <li>
    #                 <p>A cluster that is not in the <code>available</code> state</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DeleteCacheClusterInput}.
    #
    # @option params [String] :cache_cluster_id
    #   <p>The cluster identifier for the cluster to be deleted. This parameter is not case sensitive.</p>
    #
    # @option params [String] :final_snapshot_identifier
    #   <p>The user-supplied name of a final cluster snapshot. This is the unique name that identifies the snapshot.
    #               ElastiCache creates the snapshot, and then deletes the cluster immediately afterward.</p>
    #
    # @return [Types::DeleteCacheClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cache_cluster(
    #     cache_cluster_id: 'CacheClusterId', # required
    #     final_snapshot_identifier: 'FinalSnapshotIdentifier'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteCacheClusterOutput
    #   resp.data.cache_cluster #=> Types::CacheCluster
    #   resp.data.cache_cluster.cache_cluster_id #=> String
    #   resp.data.cache_cluster.configuration_endpoint #=> Types::Endpoint
    #   resp.data.cache_cluster.configuration_endpoint.address #=> String
    #   resp.data.cache_cluster.configuration_endpoint.port #=> Integer
    #   resp.data.cache_cluster.client_download_landing_page #=> String
    #   resp.data.cache_cluster.cache_node_type #=> String
    #   resp.data.cache_cluster.engine #=> String
    #   resp.data.cache_cluster.engine_version #=> String
    #   resp.data.cache_cluster.cache_cluster_status #=> String
    #   resp.data.cache_cluster.num_cache_nodes #=> Integer
    #   resp.data.cache_cluster.preferred_availability_zone #=> String
    #   resp.data.cache_cluster.preferred_outpost_arn #=> String
    #   resp.data.cache_cluster.cache_cluster_create_time #=> Time
    #   resp.data.cache_cluster.preferred_maintenance_window #=> String
    #   resp.data.cache_cluster.pending_modified_values #=> Types::PendingModifiedValues
    #   resp.data.cache_cluster.pending_modified_values.num_cache_nodes #=> Integer
    #   resp.data.cache_cluster.pending_modified_values.cache_node_ids_to_remove #=> Array<String>
    #   resp.data.cache_cluster.pending_modified_values.cache_node_ids_to_remove[0] #=> String
    #   resp.data.cache_cluster.pending_modified_values.engine_version #=> String
    #   resp.data.cache_cluster.pending_modified_values.cache_node_type #=> String
    #   resp.data.cache_cluster.pending_modified_values.auth_token_status #=> String, one of ["SETTING", "ROTATING"]
    #   resp.data.cache_cluster.pending_modified_values.log_delivery_configurations #=> Array<PendingLogDeliveryConfiguration>
    #   resp.data.cache_cluster.pending_modified_values.log_delivery_configurations[0] #=> Types::PendingLogDeliveryConfiguration
    #   resp.data.cache_cluster.pending_modified_values.log_delivery_configurations[0].log_type #=> String, one of ["slow-log", "engine-log"]
    #   resp.data.cache_cluster.pending_modified_values.log_delivery_configurations[0].destination_type #=> String, one of ["cloudwatch-logs", "kinesis-firehose"]
    #   resp.data.cache_cluster.pending_modified_values.log_delivery_configurations[0].destination_details #=> Types::DestinationDetails
    #   resp.data.cache_cluster.pending_modified_values.log_delivery_configurations[0].destination_details.cloud_watch_logs_details #=> Types::CloudWatchLogsDestinationDetails
    #   resp.data.cache_cluster.pending_modified_values.log_delivery_configurations[0].destination_details.cloud_watch_logs_details.log_group #=> String
    #   resp.data.cache_cluster.pending_modified_values.log_delivery_configurations[0].destination_details.kinesis_firehose_details #=> Types::KinesisFirehoseDestinationDetails
    #   resp.data.cache_cluster.pending_modified_values.log_delivery_configurations[0].destination_details.kinesis_firehose_details.delivery_stream #=> String
    #   resp.data.cache_cluster.pending_modified_values.log_delivery_configurations[0].log_format #=> String, one of ["text", "json"]
    #   resp.data.cache_cluster.notification_configuration #=> Types::NotificationConfiguration
    #   resp.data.cache_cluster.notification_configuration.topic_arn #=> String
    #   resp.data.cache_cluster.notification_configuration.topic_status #=> String
    #   resp.data.cache_cluster.cache_security_groups #=> Array<CacheSecurityGroupMembership>
    #   resp.data.cache_cluster.cache_security_groups[0] #=> Types::CacheSecurityGroupMembership
    #   resp.data.cache_cluster.cache_security_groups[0].cache_security_group_name #=> String
    #   resp.data.cache_cluster.cache_security_groups[0].status #=> String
    #   resp.data.cache_cluster.cache_parameter_group #=> Types::CacheParameterGroupStatus
    #   resp.data.cache_cluster.cache_parameter_group.cache_parameter_group_name #=> String
    #   resp.data.cache_cluster.cache_parameter_group.parameter_apply_status #=> String
    #   resp.data.cache_cluster.cache_parameter_group.cache_node_ids_to_reboot #=> Array<String>
    #   resp.data.cache_cluster.cache_subnet_group_name #=> String
    #   resp.data.cache_cluster.cache_nodes #=> Array<CacheNode>
    #   resp.data.cache_cluster.cache_nodes[0] #=> Types::CacheNode
    #   resp.data.cache_cluster.cache_nodes[0].cache_node_id #=> String
    #   resp.data.cache_cluster.cache_nodes[0].cache_node_status #=> String
    #   resp.data.cache_cluster.cache_nodes[0].cache_node_create_time #=> Time
    #   resp.data.cache_cluster.cache_nodes[0].endpoint #=> Types::Endpoint
    #   resp.data.cache_cluster.cache_nodes[0].parameter_group_status #=> String
    #   resp.data.cache_cluster.cache_nodes[0].source_cache_node_id #=> String
    #   resp.data.cache_cluster.cache_nodes[0].customer_availability_zone #=> String
    #   resp.data.cache_cluster.cache_nodes[0].customer_outpost_arn #=> String
    #   resp.data.cache_cluster.auto_minor_version_upgrade #=> Boolean
    #   resp.data.cache_cluster.security_groups #=> Array<SecurityGroupMembership>
    #   resp.data.cache_cluster.security_groups[0] #=> Types::SecurityGroupMembership
    #   resp.data.cache_cluster.security_groups[0].security_group_id #=> String
    #   resp.data.cache_cluster.security_groups[0].status #=> String
    #   resp.data.cache_cluster.replication_group_id #=> String
    #   resp.data.cache_cluster.snapshot_retention_limit #=> Integer
    #   resp.data.cache_cluster.snapshot_window #=> String
    #   resp.data.cache_cluster.auth_token_enabled #=> Boolean
    #   resp.data.cache_cluster.auth_token_last_modified_date #=> Time
    #   resp.data.cache_cluster.transit_encryption_enabled #=> Boolean
    #   resp.data.cache_cluster.at_rest_encryption_enabled #=> Boolean
    #   resp.data.cache_cluster.arn #=> String
    #   resp.data.cache_cluster.replication_group_log_delivery_enabled #=> Boolean
    #   resp.data.cache_cluster.log_delivery_configurations #=> Array<LogDeliveryConfiguration>
    #   resp.data.cache_cluster.log_delivery_configurations[0] #=> Types::LogDeliveryConfiguration
    #   resp.data.cache_cluster.log_delivery_configurations[0].log_type #=> String, one of ["slow-log", "engine-log"]
    #   resp.data.cache_cluster.log_delivery_configurations[0].destination_type #=> String, one of ["cloudwatch-logs", "kinesis-firehose"]
    #   resp.data.cache_cluster.log_delivery_configurations[0].destination_details #=> Types::DestinationDetails
    #   resp.data.cache_cluster.log_delivery_configurations[0].log_format #=> String, one of ["text", "json"]
    #   resp.data.cache_cluster.log_delivery_configurations[0].status #=> String, one of ["active", "enabling", "modifying", "disabling", "error"]
    #   resp.data.cache_cluster.log_delivery_configurations[0].message #=> String
    #
    def delete_cache_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteCacheClusterInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteCacheClusterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteCacheCluster
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::SnapshotAlreadyExistsFault, Errors::CacheClusterNotFoundFault, Errors::InvalidCacheClusterStateFault, Errors::SnapshotQuotaExceededFault, Errors::SnapshotFeatureNotSupportedFault, Errors::InvalidParameterCombinationException]),
        data_parser: Parsers::DeleteCacheCluster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteCacheCluster,
        stubs: @stubs,
        params_class: Params::DeleteCacheClusterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_cache_cluster
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified cache parameter
    #             group. You cannot delete a cache parameter group if it is associated with any cache
    #             clusters. You cannot delete the default cache parameter groups in your account.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteCacheParameterGroupInput}.
    #
    # @option params [String] :cache_parameter_group_name
    #   <p>The name of the cache parameter group to delete.</p>
    #           <note>
    #               <p>The specified cache security group must not be associated with any clusters.</p>
    #            </note>
    #
    # @return [Types::DeleteCacheParameterGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cache_parameter_group(
    #     cache_parameter_group_name: 'CacheParameterGroupName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteCacheParameterGroupOutput
    #
    def delete_cache_parameter_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteCacheParameterGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteCacheParameterGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteCacheParameterGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::CacheParameterGroupNotFoundFault, Errors::InvalidParameterCombinationException, Errors::InvalidCacheParameterGroupStateFault]),
        data_parser: Parsers::DeleteCacheParameterGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteCacheParameterGroup,
        stubs: @stubs,
        params_class: Params::DeleteCacheParameterGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_cache_parameter_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a cache security group.</p>
    #         <note>
    #             <p>You cannot delete a cache security group if it is associated with any clusters.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteCacheSecurityGroupInput}.
    #
    # @option params [String] :cache_security_group_name
    #   <p>The name of the cache security group to delete.</p>
    #           <note>
    #               <p>You cannot delete the default security group.</p>
    #            </note>
    #
    # @return [Types::DeleteCacheSecurityGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cache_security_group(
    #     cache_security_group_name: 'CacheSecurityGroupName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteCacheSecurityGroupOutput
    #
    def delete_cache_security_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteCacheSecurityGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteCacheSecurityGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteCacheSecurityGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::CacheSecurityGroupNotFoundFault, Errors::InvalidCacheSecurityGroupStateFault, Errors::InvalidParameterCombinationException]),
        data_parser: Parsers::DeleteCacheSecurityGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteCacheSecurityGroup,
        stubs: @stubs,
        params_class: Params::DeleteCacheSecurityGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_cache_security_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a cache subnet group.</p>
    #         <note>
    #             <p>You cannot delete a default cache subnet group or one that is associated with any clusters.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteCacheSubnetGroupInput}.
    #
    # @option params [String] :cache_subnet_group_name
    #   <p>The name of the cache subnet group to delete.</p>
    #           <p>Constraints: Must contain no more than 255 alphanumeric characters or hyphens.</p>
    #
    # @return [Types::DeleteCacheSubnetGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cache_subnet_group(
    #     cache_subnet_group_name: 'CacheSubnetGroupName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteCacheSubnetGroupOutput
    #
    def delete_cache_subnet_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteCacheSubnetGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteCacheSubnetGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteCacheSubnetGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CacheSubnetGroupInUse, Errors::CacheSubnetGroupNotFoundFault]),
        data_parser: Parsers::DeleteCacheSubnetGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteCacheSubnetGroup,
        stubs: @stubs,
        params_class: Params::DeleteCacheSubnetGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_cache_subnet_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deleting a Global datastore is a two-step process: </p>
    #             <ul>
    #             <li>
    #                <p>First, you must <a>DisassociateGlobalReplicationGroup</a> to remove the secondary clusters in the Global datastore.</p>
    #             </li>
    #             <li>
    #                <p>Once the Global datastore contains only the primary cluster, you can use the <code>DeleteGlobalReplicationGroup</code> API to delete the Global datastore while retainining the primary cluster using <code>RetainPrimaryReplicationGroup=true</code>.</p>
    #             </li>
    #          </ul>
    #
    #
    #           <p>Since the Global Datastore has only a primary cluster, you can delete the Global Datastore
    #              while retaining the primary by setting <code>RetainPrimaryReplicationGroup=true</code>. The primary cluster is never deleted when deleting a
    #           Global Datastore. It can only be deleted when it no longer is associated with any Global Datastore.</p>
    #
    #         <p>When you receive a successful response from this operation, Amazon ElastiCache immediately begins deleting the selected resources;
    #             you cannot cancel or revert this operation.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteGlobalReplicationGroupInput}.
    #
    # @option params [String] :global_replication_group_id
    #   <p>The name of the Global datastore</p>
    #
    # @option params [Boolean] :retain_primary_replication_group
    #   <p>The primary replication group is retained as a standalone replication group. </p>
    #
    # @return [Types::DeleteGlobalReplicationGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_global_replication_group(
    #     global_replication_group_id: 'GlobalReplicationGroupId', # required
    #     retain_primary_replication_group: false # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteGlobalReplicationGroupOutput
    #   resp.data.global_replication_group #=> Types::GlobalReplicationGroup
    #   resp.data.global_replication_group.global_replication_group_id #=> String
    #   resp.data.global_replication_group.global_replication_group_description #=> String
    #   resp.data.global_replication_group.status #=> String
    #   resp.data.global_replication_group.cache_node_type #=> String
    #   resp.data.global_replication_group.engine #=> String
    #   resp.data.global_replication_group.engine_version #=> String
    #   resp.data.global_replication_group.members #=> Array<GlobalReplicationGroupMember>
    #   resp.data.global_replication_group.members[0] #=> Types::GlobalReplicationGroupMember
    #   resp.data.global_replication_group.members[0].replication_group_id #=> String
    #   resp.data.global_replication_group.members[0].replication_group_region #=> String
    #   resp.data.global_replication_group.members[0].role #=> String
    #   resp.data.global_replication_group.members[0].automatic_failover #=> String, one of ["enabled", "disabled", "enabling", "disabling"]
    #   resp.data.global_replication_group.members[0].status #=> String
    #   resp.data.global_replication_group.cluster_enabled #=> Boolean
    #   resp.data.global_replication_group.global_node_groups #=> Array<GlobalNodeGroup>
    #   resp.data.global_replication_group.global_node_groups[0] #=> Types::GlobalNodeGroup
    #   resp.data.global_replication_group.global_node_groups[0].global_node_group_id #=> String
    #   resp.data.global_replication_group.global_node_groups[0].slots #=> String
    #   resp.data.global_replication_group.auth_token_enabled #=> Boolean
    #   resp.data.global_replication_group.transit_encryption_enabled #=> Boolean
    #   resp.data.global_replication_group.at_rest_encryption_enabled #=> Boolean
    #   resp.data.global_replication_group.arn #=> String
    #
    def delete_global_replication_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteGlobalReplicationGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteGlobalReplicationGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteGlobalReplicationGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::GlobalReplicationGroupNotFoundFault, Errors::InvalidGlobalReplicationGroupStateFault]),
        data_parser: Parsers::DeleteGlobalReplicationGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteGlobalReplicationGroup,
        stubs: @stubs,
        params_class: Params::DeleteGlobalReplicationGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_global_replication_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an existing replication group.
    #             By default, this operation deletes the entire replication group, including the primary/primaries and all of the read replicas.
    #             If the replication group has only one primary,
    #             you can optionally delete only the read replicas, while retaining the primary by setting <code>RetainPrimaryCluster=true</code>.</p>
    #         <p>When you receive a successful response from this operation, Amazon ElastiCache immediately begins deleting the selected resources;
    #             you cannot cancel or revert this operation.</p>
    #         <note>
    #             <p>This operation is valid for Redis only.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteReplicationGroupInput}.
    #
    # @option params [String] :replication_group_id
    #   <p>The identifier for the cluster to be deleted. This parameter is not case sensitive.</p>
    #
    # @option params [Boolean] :retain_primary_cluster
    #   <p>If set to <code>true</code>, all of the read replicas are deleted,
    #               but the primary node is retained.</p>
    #
    # @option params [String] :final_snapshot_identifier
    #   <p>The name of a final node group (shard) snapshot.
    #               ElastiCache creates the snapshot from the primary node in the cluster,
    #               rather than one of the replicas; this is to ensure that it captures the freshest data.
    #               After the final snapshot is taken, the replication group is immediately deleted.</p>
    #
    # @return [Types::DeleteReplicationGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_replication_group(
    #     replication_group_id: 'ReplicationGroupId', # required
    #     retain_primary_cluster: false,
    #     final_snapshot_identifier: 'FinalSnapshotIdentifier'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteReplicationGroupOutput
    #   resp.data.replication_group #=> Types::ReplicationGroup
    #   resp.data.replication_group.replication_group_id #=> String
    #   resp.data.replication_group.description #=> String
    #   resp.data.replication_group.global_replication_group_info #=> Types::GlobalReplicationGroupInfo
    #   resp.data.replication_group.global_replication_group_info.global_replication_group_id #=> String
    #   resp.data.replication_group.global_replication_group_info.global_replication_group_member_role #=> String
    #   resp.data.replication_group.status #=> String
    #   resp.data.replication_group.pending_modified_values #=> Types::ReplicationGroupPendingModifiedValues
    #   resp.data.replication_group.pending_modified_values.primary_cluster_id #=> String
    #   resp.data.replication_group.pending_modified_values.automatic_failover_status #=> String, one of ["enabled", "disabled"]
    #   resp.data.replication_group.pending_modified_values.resharding #=> Types::ReshardingStatus
    #   resp.data.replication_group.pending_modified_values.resharding.slot_migration #=> Types::SlotMigration
    #   resp.data.replication_group.pending_modified_values.resharding.slot_migration.progress_percentage #=> Float
    #   resp.data.replication_group.pending_modified_values.auth_token_status #=> String, one of ["SETTING", "ROTATING"]
    #   resp.data.replication_group.pending_modified_values.user_groups #=> Types::UserGroupsUpdateStatus
    #   resp.data.replication_group.pending_modified_values.user_groups.user_group_ids_to_add #=> Array<String>
    #   resp.data.replication_group.pending_modified_values.user_groups.user_group_ids_to_add[0] #=> String
    #   resp.data.replication_group.pending_modified_values.user_groups.user_group_ids_to_remove #=> Array<String>
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations #=> Array<PendingLogDeliveryConfiguration>
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0] #=> Types::PendingLogDeliveryConfiguration
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].log_type #=> String, one of ["slow-log", "engine-log"]
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].destination_type #=> String, one of ["cloudwatch-logs", "kinesis-firehose"]
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].destination_details #=> Types::DestinationDetails
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].destination_details.cloud_watch_logs_details #=> Types::CloudWatchLogsDestinationDetails
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].destination_details.cloud_watch_logs_details.log_group #=> String
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].destination_details.kinesis_firehose_details #=> Types::KinesisFirehoseDestinationDetails
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].destination_details.kinesis_firehose_details.delivery_stream #=> String
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].log_format #=> String, one of ["text", "json"]
    #   resp.data.replication_group.member_clusters #=> Array<String>
    #   resp.data.replication_group.member_clusters[0] #=> String
    #   resp.data.replication_group.node_groups #=> Array<NodeGroup>
    #   resp.data.replication_group.node_groups[0] #=> Types::NodeGroup
    #   resp.data.replication_group.node_groups[0].node_group_id #=> String
    #   resp.data.replication_group.node_groups[0].status #=> String
    #   resp.data.replication_group.node_groups[0].primary_endpoint #=> Types::Endpoint
    #   resp.data.replication_group.node_groups[0].primary_endpoint.address #=> String
    #   resp.data.replication_group.node_groups[0].primary_endpoint.port #=> Integer
    #   resp.data.replication_group.node_groups[0].reader_endpoint #=> Types::Endpoint
    #   resp.data.replication_group.node_groups[0].slots #=> String
    #   resp.data.replication_group.node_groups[0].node_group_members #=> Array<NodeGroupMember>
    #   resp.data.replication_group.node_groups[0].node_group_members[0] #=> Types::NodeGroupMember
    #   resp.data.replication_group.node_groups[0].node_group_members[0].cache_cluster_id #=> String
    #   resp.data.replication_group.node_groups[0].node_group_members[0].cache_node_id #=> String
    #   resp.data.replication_group.node_groups[0].node_group_members[0].read_endpoint #=> Types::Endpoint
    #   resp.data.replication_group.node_groups[0].node_group_members[0].preferred_availability_zone #=> String
    #   resp.data.replication_group.node_groups[0].node_group_members[0].preferred_outpost_arn #=> String
    #   resp.data.replication_group.node_groups[0].node_group_members[0].current_role #=> String
    #   resp.data.replication_group.snapshotting_cluster_id #=> String
    #   resp.data.replication_group.automatic_failover #=> String, one of ["enabled", "disabled", "enabling", "disabling"]
    #   resp.data.replication_group.multi_az #=> String, one of ["enabled", "disabled"]
    #   resp.data.replication_group.configuration_endpoint #=> Types::Endpoint
    #   resp.data.replication_group.snapshot_retention_limit #=> Integer
    #   resp.data.replication_group.snapshot_window #=> String
    #   resp.data.replication_group.cluster_enabled #=> Boolean
    #   resp.data.replication_group.cache_node_type #=> String
    #   resp.data.replication_group.auth_token_enabled #=> Boolean
    #   resp.data.replication_group.auth_token_last_modified_date #=> Time
    #   resp.data.replication_group.transit_encryption_enabled #=> Boolean
    #   resp.data.replication_group.at_rest_encryption_enabled #=> Boolean
    #   resp.data.replication_group.member_clusters_outpost_arns #=> Array<String>
    #   resp.data.replication_group.member_clusters_outpost_arns[0] #=> String
    #   resp.data.replication_group.kms_key_id #=> String
    #   resp.data.replication_group.arn #=> String
    #   resp.data.replication_group.user_group_ids #=> Array<String>
    #   resp.data.replication_group.log_delivery_configurations #=> Array<LogDeliveryConfiguration>
    #   resp.data.replication_group.log_delivery_configurations[0] #=> Types::LogDeliveryConfiguration
    #   resp.data.replication_group.log_delivery_configurations[0].log_type #=> String, one of ["slow-log", "engine-log"]
    #   resp.data.replication_group.log_delivery_configurations[0].destination_type #=> String, one of ["cloudwatch-logs", "kinesis-firehose"]
    #   resp.data.replication_group.log_delivery_configurations[0].destination_details #=> Types::DestinationDetails
    #   resp.data.replication_group.log_delivery_configurations[0].log_format #=> String, one of ["text", "json"]
    #   resp.data.replication_group.log_delivery_configurations[0].status #=> String, one of ["active", "enabling", "modifying", "disabling", "error"]
    #   resp.data.replication_group.log_delivery_configurations[0].message #=> String
    #   resp.data.replication_group.replication_group_create_time #=> Time
    #   resp.data.replication_group.data_tiering #=> String, one of ["enabled", "disabled"]
    #
    def delete_replication_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteReplicationGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteReplicationGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteReplicationGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::SnapshotAlreadyExistsFault, Errors::SnapshotQuotaExceededFault, Errors::SnapshotFeatureNotSupportedFault, Errors::InvalidParameterCombinationException, Errors::InvalidReplicationGroupStateFault, Errors::ReplicationGroupNotFoundFault]),
        data_parser: Parsers::DeleteReplicationGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteReplicationGroup,
        stubs: @stubs,
        params_class: Params::DeleteReplicationGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_replication_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an existing snapshot. When you receive a
    #             successful response from this operation, ElastiCache immediately begins deleting the snapshot;
    #             you cannot cancel or revert this operation.</p>
    #
    #         <note>
    #             <p>This operation is valid for Redis only.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteSnapshotInput}.
    #
    # @option params [String] :snapshot_name
    #   <p>The name of the snapshot to be deleted.</p>
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
    #   resp.data.snapshot.snapshot_name #=> String
    #   resp.data.snapshot.replication_group_id #=> String
    #   resp.data.snapshot.replication_group_description #=> String
    #   resp.data.snapshot.cache_cluster_id #=> String
    #   resp.data.snapshot.snapshot_status #=> String
    #   resp.data.snapshot.snapshot_source #=> String
    #   resp.data.snapshot.cache_node_type #=> String
    #   resp.data.snapshot.engine #=> String
    #   resp.data.snapshot.engine_version #=> String
    #   resp.data.snapshot.num_cache_nodes #=> Integer
    #   resp.data.snapshot.preferred_availability_zone #=> String
    #   resp.data.snapshot.preferred_outpost_arn #=> String
    #   resp.data.snapshot.cache_cluster_create_time #=> Time
    #   resp.data.snapshot.preferred_maintenance_window #=> String
    #   resp.data.snapshot.topic_arn #=> String
    #   resp.data.snapshot.port #=> Integer
    #   resp.data.snapshot.cache_parameter_group_name #=> String
    #   resp.data.snapshot.cache_subnet_group_name #=> String
    #   resp.data.snapshot.vpc_id #=> String
    #   resp.data.snapshot.auto_minor_version_upgrade #=> Boolean
    #   resp.data.snapshot.snapshot_retention_limit #=> Integer
    #   resp.data.snapshot.snapshot_window #=> String
    #   resp.data.snapshot.num_node_groups #=> Integer
    #   resp.data.snapshot.automatic_failover #=> String, one of ["enabled", "disabled", "enabling", "disabling"]
    #   resp.data.snapshot.node_snapshots #=> Array<NodeSnapshot>
    #   resp.data.snapshot.node_snapshots[0] #=> Types::NodeSnapshot
    #   resp.data.snapshot.node_snapshots[0].cache_cluster_id #=> String
    #   resp.data.snapshot.node_snapshots[0].node_group_id #=> String
    #   resp.data.snapshot.node_snapshots[0].cache_node_id #=> String
    #   resp.data.snapshot.node_snapshots[0].node_group_configuration #=> Types::NodeGroupConfiguration
    #   resp.data.snapshot.node_snapshots[0].node_group_configuration.node_group_id #=> String
    #   resp.data.snapshot.node_snapshots[0].node_group_configuration.slots #=> String
    #   resp.data.snapshot.node_snapshots[0].node_group_configuration.replica_count #=> Integer
    #   resp.data.snapshot.node_snapshots[0].node_group_configuration.primary_availability_zone #=> String
    #   resp.data.snapshot.node_snapshots[0].node_group_configuration.replica_availability_zones #=> Array<String>
    #   resp.data.snapshot.node_snapshots[0].node_group_configuration.replica_availability_zones[0] #=> String
    #   resp.data.snapshot.node_snapshots[0].node_group_configuration.primary_outpost_arn #=> String
    #   resp.data.snapshot.node_snapshots[0].node_group_configuration.replica_outpost_arns #=> Array<String>
    #   resp.data.snapshot.node_snapshots[0].node_group_configuration.replica_outpost_arns[0] #=> String
    #   resp.data.snapshot.node_snapshots[0].cache_size #=> String
    #   resp.data.snapshot.node_snapshots[0].cache_node_create_time #=> Time
    #   resp.data.snapshot.node_snapshots[0].snapshot_create_time #=> Time
    #   resp.data.snapshot.kms_key_id #=> String
    #   resp.data.snapshot.arn #=> String
    #   resp.data.snapshot.data_tiering #=> String, one of ["enabled", "disabled"]
    #
    def delete_snapshot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteSnapshotInput.build(params)
      response_body = StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::InvalidSnapshotStateFault, Errors::SnapshotNotFoundFault, Errors::InvalidParameterCombinationException]),
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

    # <p>For Redis engine version 6.0 onwards: Deletes a user. The user will be removed from all user groups and in turn removed from all replication groups. For more information, see <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Clusters.RBAC.html">Using Role Based Access Control (RBAC)</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteUserInput}.
    #
    # @option params [String] :user_id
    #   <p>The ID of the user.</p>
    #
    # @return [Types::DeleteUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user(
    #     user_id: 'UserId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteUserOutput
    #   resp.data.user_id #=> String
    #   resp.data.user_name #=> String
    #   resp.data.status #=> String
    #   resp.data.engine #=> String
    #   resp.data.minimum_engine_version #=> String
    #   resp.data.access_string #=> String
    #   resp.data.user_group_ids #=> Array<String>
    #   resp.data.user_group_ids[0] #=> String
    #   resp.data.authentication #=> Types::Authentication
    #   resp.data.authentication.type #=> String, one of ["password", "no-password"]
    #   resp.data.authentication.password_count #=> Integer
    #   resp.data.arn #=> String
    #
    def delete_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteUserInput.build(params)
      response_body = StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::InvalidUserStateFault, Errors::DefaultUserAssociatedToUserGroupFault, Errors::UserNotFoundFault, Errors::ServiceLinkedRoleNotFoundFault]),
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

    # <p>For Redis engine version 6.0 onwards: Deletes a user group. The user group must first be disassociated from the replication group before it can be deleted. For more information, see <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Clusters.RBAC.html">Using Role Based Access Control (RBAC)</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteUserGroupInput}.
    #
    # @option params [String] :user_group_id
    #   <p>The ID of the user group.</p>
    #
    # @return [Types::DeleteUserGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user_group(
    #     user_group_id: 'UserGroupId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteUserGroupOutput
    #   resp.data.user_group_id #=> String
    #   resp.data.status #=> String
    #   resp.data.engine #=> String
    #   resp.data.user_ids #=> Array<String>
    #   resp.data.user_ids[0] #=> String
    #   resp.data.minimum_engine_version #=> String
    #   resp.data.pending_changes #=> Types::UserGroupPendingChanges
    #   resp.data.pending_changes.user_ids_to_remove #=> Array<String>
    #   resp.data.pending_changes.user_ids_to_add #=> Array<String>
    #   resp.data.replication_groups #=> Array<String>
    #   resp.data.replication_groups[0] #=> String
    #   resp.data.arn #=> String
    #
    def delete_user_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteUserGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteUserGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteUserGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::InvalidUserGroupStateFault, Errors::ServiceLinkedRoleNotFoundFault, Errors::UserGroupNotFoundFault]),
        data_parser: Parsers::DeleteUserGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteUserGroup,
        stubs: @stubs,
        params_class: Params::DeleteUserGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_user_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about all provisioned
    #             clusters if no cluster identifier is specified, or about a specific cache
    #             cluster if a cluster identifier is supplied.</p>
    #         <p>By default, abbreviated information about the clusters is returned. You can
    #             use the optional <i>ShowCacheNodeInfo</i> flag to retrieve detailed information about the
    #             cache nodes associated with the clusters. These details include the DNS address
    #             and port for the cache node endpoint.</p>
    #         <p>If the cluster is in the <i>creating</i> state, only cluster-level information is displayed
    #             until all of the nodes are successfully provisioned.</p>
    #         <p>If the cluster is in the <i>deleting</i> state, only cluster-level information is displayed.</p>
    #         <p>If cache nodes are currently being added to the cluster, node endpoint information
    #             and creation time for the additional nodes are not displayed until they are
    #             completely provisioned. When the cluster state is <i>available</i>, the cluster is
    #             ready for use.</p>
    #         <p>If cache nodes are currently being removed from the cluster, no endpoint information
    #             for the removed nodes is displayed.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeCacheClustersInput}.
    #
    # @option params [String] :cache_cluster_id
    #   <p>The user-supplied cluster identifier. If this parameter is specified, only information
    #               about that specific cluster is returned. This parameter isn't case sensitive.</p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than the
    #               specified <code>MaxRecords</code> value, a marker is included in the response so that
    #               the remaining results can be retrieved.</p>
    #
    #           <p>Default: 100</p>
    #           <p>Constraints: minimum 20; maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p>An optional marker returned from a prior request.
    #               Use this marker for pagination of results from this operation. If this
    #               parameter is specified, the response includes only records beyond the marker, up to the
    #               value specified by <code>MaxRecords</code>.</p>
    #
    # @option params [Boolean] :show_cache_node_info
    #   <p>An optional flag that can be included in the <code>DescribeCacheCluster</code> request
    #               to retrieve information about the individual cache nodes.</p>
    #
    # @option params [Boolean] :show_cache_clusters_not_in_replication_groups
    #   <p>An optional flag that can be included in the <code>DescribeCacheCluster</code> request
    #               to show only nodes (API/CLI: clusters) that are not members of a replication group.
    #               In practice, this mean Memcached and single node Redis clusters.</p>
    #
    # @return [Types::DescribeCacheClustersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_cache_clusters(
    #     cache_cluster_id: 'CacheClusterId',
    #     max_records: 1,
    #     marker: 'Marker',
    #     show_cache_node_info: false,
    #     show_cache_clusters_not_in_replication_groups: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeCacheClustersOutput
    #   resp.data.marker #=> String
    #   resp.data.cache_clusters #=> Array<CacheCluster>
    #   resp.data.cache_clusters[0] #=> Types::CacheCluster
    #   resp.data.cache_clusters[0].cache_cluster_id #=> String
    #   resp.data.cache_clusters[0].configuration_endpoint #=> Types::Endpoint
    #   resp.data.cache_clusters[0].configuration_endpoint.address #=> String
    #   resp.data.cache_clusters[0].configuration_endpoint.port #=> Integer
    #   resp.data.cache_clusters[0].client_download_landing_page #=> String
    #   resp.data.cache_clusters[0].cache_node_type #=> String
    #   resp.data.cache_clusters[0].engine #=> String
    #   resp.data.cache_clusters[0].engine_version #=> String
    #   resp.data.cache_clusters[0].cache_cluster_status #=> String
    #   resp.data.cache_clusters[0].num_cache_nodes #=> Integer
    #   resp.data.cache_clusters[0].preferred_availability_zone #=> String
    #   resp.data.cache_clusters[0].preferred_outpost_arn #=> String
    #   resp.data.cache_clusters[0].cache_cluster_create_time #=> Time
    #   resp.data.cache_clusters[0].preferred_maintenance_window #=> String
    #   resp.data.cache_clusters[0].pending_modified_values #=> Types::PendingModifiedValues
    #   resp.data.cache_clusters[0].pending_modified_values.num_cache_nodes #=> Integer
    #   resp.data.cache_clusters[0].pending_modified_values.cache_node_ids_to_remove #=> Array<String>
    #   resp.data.cache_clusters[0].pending_modified_values.cache_node_ids_to_remove[0] #=> String
    #   resp.data.cache_clusters[0].pending_modified_values.engine_version #=> String
    #   resp.data.cache_clusters[0].pending_modified_values.cache_node_type #=> String
    #   resp.data.cache_clusters[0].pending_modified_values.auth_token_status #=> String, one of ["SETTING", "ROTATING"]
    #   resp.data.cache_clusters[0].pending_modified_values.log_delivery_configurations #=> Array<PendingLogDeliveryConfiguration>
    #   resp.data.cache_clusters[0].pending_modified_values.log_delivery_configurations[0] #=> Types::PendingLogDeliveryConfiguration
    #   resp.data.cache_clusters[0].pending_modified_values.log_delivery_configurations[0].log_type #=> String, one of ["slow-log", "engine-log"]
    #   resp.data.cache_clusters[0].pending_modified_values.log_delivery_configurations[0].destination_type #=> String, one of ["cloudwatch-logs", "kinesis-firehose"]
    #   resp.data.cache_clusters[0].pending_modified_values.log_delivery_configurations[0].destination_details #=> Types::DestinationDetails
    #   resp.data.cache_clusters[0].pending_modified_values.log_delivery_configurations[0].destination_details.cloud_watch_logs_details #=> Types::CloudWatchLogsDestinationDetails
    #   resp.data.cache_clusters[0].pending_modified_values.log_delivery_configurations[0].destination_details.cloud_watch_logs_details.log_group #=> String
    #   resp.data.cache_clusters[0].pending_modified_values.log_delivery_configurations[0].destination_details.kinesis_firehose_details #=> Types::KinesisFirehoseDestinationDetails
    #   resp.data.cache_clusters[0].pending_modified_values.log_delivery_configurations[0].destination_details.kinesis_firehose_details.delivery_stream #=> String
    #   resp.data.cache_clusters[0].pending_modified_values.log_delivery_configurations[0].log_format #=> String, one of ["text", "json"]
    #   resp.data.cache_clusters[0].notification_configuration #=> Types::NotificationConfiguration
    #   resp.data.cache_clusters[0].notification_configuration.topic_arn #=> String
    #   resp.data.cache_clusters[0].notification_configuration.topic_status #=> String
    #   resp.data.cache_clusters[0].cache_security_groups #=> Array<CacheSecurityGroupMembership>
    #   resp.data.cache_clusters[0].cache_security_groups[0] #=> Types::CacheSecurityGroupMembership
    #   resp.data.cache_clusters[0].cache_security_groups[0].cache_security_group_name #=> String
    #   resp.data.cache_clusters[0].cache_security_groups[0].status #=> String
    #   resp.data.cache_clusters[0].cache_parameter_group #=> Types::CacheParameterGroupStatus
    #   resp.data.cache_clusters[0].cache_parameter_group.cache_parameter_group_name #=> String
    #   resp.data.cache_clusters[0].cache_parameter_group.parameter_apply_status #=> String
    #   resp.data.cache_clusters[0].cache_parameter_group.cache_node_ids_to_reboot #=> Array<String>
    #   resp.data.cache_clusters[0].cache_subnet_group_name #=> String
    #   resp.data.cache_clusters[0].cache_nodes #=> Array<CacheNode>
    #   resp.data.cache_clusters[0].cache_nodes[0] #=> Types::CacheNode
    #   resp.data.cache_clusters[0].cache_nodes[0].cache_node_id #=> String
    #   resp.data.cache_clusters[0].cache_nodes[0].cache_node_status #=> String
    #   resp.data.cache_clusters[0].cache_nodes[0].cache_node_create_time #=> Time
    #   resp.data.cache_clusters[0].cache_nodes[0].endpoint #=> Types::Endpoint
    #   resp.data.cache_clusters[0].cache_nodes[0].parameter_group_status #=> String
    #   resp.data.cache_clusters[0].cache_nodes[0].source_cache_node_id #=> String
    #   resp.data.cache_clusters[0].cache_nodes[0].customer_availability_zone #=> String
    #   resp.data.cache_clusters[0].cache_nodes[0].customer_outpost_arn #=> String
    #   resp.data.cache_clusters[0].auto_minor_version_upgrade #=> Boolean
    #   resp.data.cache_clusters[0].security_groups #=> Array<SecurityGroupMembership>
    #   resp.data.cache_clusters[0].security_groups[0] #=> Types::SecurityGroupMembership
    #   resp.data.cache_clusters[0].security_groups[0].security_group_id #=> String
    #   resp.data.cache_clusters[0].security_groups[0].status #=> String
    #   resp.data.cache_clusters[0].replication_group_id #=> String
    #   resp.data.cache_clusters[0].snapshot_retention_limit #=> Integer
    #   resp.data.cache_clusters[0].snapshot_window #=> String
    #   resp.data.cache_clusters[0].auth_token_enabled #=> Boolean
    #   resp.data.cache_clusters[0].auth_token_last_modified_date #=> Time
    #   resp.data.cache_clusters[0].transit_encryption_enabled #=> Boolean
    #   resp.data.cache_clusters[0].at_rest_encryption_enabled #=> Boolean
    #   resp.data.cache_clusters[0].arn #=> String
    #   resp.data.cache_clusters[0].replication_group_log_delivery_enabled #=> Boolean
    #   resp.data.cache_clusters[0].log_delivery_configurations #=> Array<LogDeliveryConfiguration>
    #   resp.data.cache_clusters[0].log_delivery_configurations[0] #=> Types::LogDeliveryConfiguration
    #   resp.data.cache_clusters[0].log_delivery_configurations[0].log_type #=> String, one of ["slow-log", "engine-log"]
    #   resp.data.cache_clusters[0].log_delivery_configurations[0].destination_type #=> String, one of ["cloudwatch-logs", "kinesis-firehose"]
    #   resp.data.cache_clusters[0].log_delivery_configurations[0].destination_details #=> Types::DestinationDetails
    #   resp.data.cache_clusters[0].log_delivery_configurations[0].log_format #=> String, one of ["text", "json"]
    #   resp.data.cache_clusters[0].log_delivery_configurations[0].status #=> String, one of ["active", "enabling", "modifying", "disabling", "error"]
    #   resp.data.cache_clusters[0].log_delivery_configurations[0].message #=> String
    #
    def describe_cache_clusters(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeCacheClustersInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeCacheClustersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeCacheClusters
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::CacheClusterNotFoundFault, Errors::InvalidParameterCombinationException]),
        data_parser: Parsers::DescribeCacheClusters
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeCacheClusters,
        stubs: @stubs,
        params_class: Params::DescribeCacheClustersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_cache_clusters
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of the available cache
    #             engines and their versions.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeCacheEngineVersionsInput}.
    #
    # @option params [String] :engine
    #   <p>The cache engine to return. Valid values: <code>memcached</code> | <code>redis</code>
    #            </p>
    #
    # @option params [String] :engine_version
    #   <p>The cache engine version to return.</p>
    #           <p>Example: <code>1.4.14</code>
    #            </p>
    #
    # @option params [String] :cache_parameter_group_family
    #   <p>The name of a specific cache parameter group family to return details for.</p>
    #           <p>Valid values are:
    #       <code>memcached1.4</code> |
    #        <code>memcached1.5</code> |
    #         <code>memcached1.6</code> |
    #       <code>redis2.6</code> |
    #       <code>redis2.8</code> |
    #       <code>redis3.2</code> |
    #       <code>redis4.0</code> |
    #        <code>redis5.0</code> |
    #         <code>redis6.x</code> |
    #               <code>redis6.2</code>
    #            </p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                  <p>Must be 1 to 255 alphanumeric characters</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #            </ul>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than the
    #               specified <code>MaxRecords</code> value, a marker is included in the response so that
    #               the remaining results can be retrieved.</p>
    #
    #           <p>Default: 100</p>
    #           <p>Constraints: minimum 20; maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p>An optional marker returned from a prior request. Use this marker for pagination of results from this operation.
    #               If this parameter is specified, the response includes only records beyond the marker, up to the
    #               value specified by <code>MaxRecords</code>.</p>
    #
    # @option params [Boolean] :default_only
    #   <p>If <code>true</code>, specifies that only the default version of the specified engine or engine
    #               and major version combination is to be returned.</p>
    #
    # @return [Types::DescribeCacheEngineVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_cache_engine_versions(
    #     engine: 'Engine',
    #     engine_version: 'EngineVersion',
    #     cache_parameter_group_family: 'CacheParameterGroupFamily',
    #     max_records: 1,
    #     marker: 'Marker',
    #     default_only: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeCacheEngineVersionsOutput
    #   resp.data.marker #=> String
    #   resp.data.cache_engine_versions #=> Array<CacheEngineVersion>
    #   resp.data.cache_engine_versions[0] #=> Types::CacheEngineVersion
    #   resp.data.cache_engine_versions[0].engine #=> String
    #   resp.data.cache_engine_versions[0].engine_version #=> String
    #   resp.data.cache_engine_versions[0].cache_parameter_group_family #=> String
    #   resp.data.cache_engine_versions[0].cache_engine_description #=> String
    #   resp.data.cache_engine_versions[0].cache_engine_version_description #=> String
    #
    def describe_cache_engine_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeCacheEngineVersionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeCacheEngineVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeCacheEngineVersions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::DescribeCacheEngineVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeCacheEngineVersions,
        stubs: @stubs,
        params_class: Params::DescribeCacheEngineVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_cache_engine_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of cache parameter group
    #             descriptions. If a cache parameter group name is specified, the list contains only
    #             the descriptions for that group.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeCacheParameterGroupsInput}.
    #
    # @option params [String] :cache_parameter_group_name
    #   <p>The name of a specific cache parameter group to return details for.</p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than the
    #               specified <code>MaxRecords</code> value, a marker is included in the response so that
    #               the remaining results can be retrieved.</p>
    #
    #           <p>Default: 100</p>
    #           <p>Constraints: minimum 20; maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p>An optional marker returned from a prior request. Use this marker for pagination of results from this operation.
    #               If this parameter is specified, the response includes only records beyond the marker, up to the
    #               value specified by <code>MaxRecords</code>.</p>
    #
    # @return [Types::DescribeCacheParameterGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_cache_parameter_groups(
    #     cache_parameter_group_name: 'CacheParameterGroupName',
    #     max_records: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeCacheParameterGroupsOutput
    #   resp.data.marker #=> String
    #   resp.data.cache_parameter_groups #=> Array<CacheParameterGroup>
    #   resp.data.cache_parameter_groups[0] #=> Types::CacheParameterGroup
    #   resp.data.cache_parameter_groups[0].cache_parameter_group_name #=> String
    #   resp.data.cache_parameter_groups[0].cache_parameter_group_family #=> String
    #   resp.data.cache_parameter_groups[0].description #=> String
    #   resp.data.cache_parameter_groups[0].is_global #=> Boolean
    #   resp.data.cache_parameter_groups[0].arn #=> String
    #
    def describe_cache_parameter_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeCacheParameterGroupsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeCacheParameterGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeCacheParameterGroups
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::CacheParameterGroupNotFoundFault, Errors::InvalidParameterCombinationException]),
        data_parser: Parsers::DescribeCacheParameterGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeCacheParameterGroups,
        stubs: @stubs,
        params_class: Params::DescribeCacheParameterGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_cache_parameter_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the detailed parameter list for a
    #             particular cache parameter group.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeCacheParametersInput}.
    #
    # @option params [String] :cache_parameter_group_name
    #   <p>The name of a specific cache parameter group to return details for.</p>
    #
    # @option params [String] :source
    #   <p>The parameter types to return.</p>
    #           <p>Valid values: <code>user</code> | <code>system</code> | <code>engine-default</code>
    #            </p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than the
    #               specified <code>MaxRecords</code> value, a marker is included in the response so that
    #               the remaining results can be retrieved.</p>
    #
    #           <p>Default: 100</p>
    #           <p>Constraints: minimum 20; maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p>An optional marker returned from a prior request.
    #               Use this marker for pagination of results from this operation.
    #               If this parameter is specified, the response includes only records beyond the marker, up to the
    #               value specified by <code>MaxRecords</code>.</p>
    #
    # @return [Types::DescribeCacheParametersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_cache_parameters(
    #     cache_parameter_group_name: 'CacheParameterGroupName', # required
    #     source: 'Source',
    #     max_records: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeCacheParametersOutput
    #   resp.data.marker #=> String
    #   resp.data.parameters #=> Array<Parameter>
    #   resp.data.parameters[0] #=> Types::Parameter
    #   resp.data.parameters[0].parameter_name #=> String
    #   resp.data.parameters[0].parameter_value #=> String
    #   resp.data.parameters[0].description #=> String
    #   resp.data.parameters[0].source #=> String
    #   resp.data.parameters[0].data_type #=> String
    #   resp.data.parameters[0].allowed_values #=> String
    #   resp.data.parameters[0].is_modifiable #=> Boolean
    #   resp.data.parameters[0].minimum_engine_version #=> String
    #   resp.data.parameters[0].change_type #=> String, one of ["immediate", "requires-reboot"]
    #   resp.data.cache_node_type_specific_parameters #=> Array<CacheNodeTypeSpecificParameter>
    #   resp.data.cache_node_type_specific_parameters[0] #=> Types::CacheNodeTypeSpecificParameter
    #   resp.data.cache_node_type_specific_parameters[0].parameter_name #=> String
    #   resp.data.cache_node_type_specific_parameters[0].description #=> String
    #   resp.data.cache_node_type_specific_parameters[0].source #=> String
    #   resp.data.cache_node_type_specific_parameters[0].data_type #=> String
    #   resp.data.cache_node_type_specific_parameters[0].allowed_values #=> String
    #   resp.data.cache_node_type_specific_parameters[0].is_modifiable #=> Boolean
    #   resp.data.cache_node_type_specific_parameters[0].minimum_engine_version #=> String
    #   resp.data.cache_node_type_specific_parameters[0].cache_node_type_specific_values #=> Array<CacheNodeTypeSpecificValue>
    #   resp.data.cache_node_type_specific_parameters[0].cache_node_type_specific_values[0] #=> Types::CacheNodeTypeSpecificValue
    #   resp.data.cache_node_type_specific_parameters[0].cache_node_type_specific_values[0].cache_node_type #=> String
    #   resp.data.cache_node_type_specific_parameters[0].cache_node_type_specific_values[0].value #=> String
    #   resp.data.cache_node_type_specific_parameters[0].change_type #=> String, one of ["immediate", "requires-reboot"]
    #
    def describe_cache_parameters(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeCacheParametersInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeCacheParametersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeCacheParameters
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::CacheParameterGroupNotFoundFault, Errors::InvalidParameterCombinationException]),
        data_parser: Parsers::DescribeCacheParameters
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeCacheParameters,
        stubs: @stubs,
        params_class: Params::DescribeCacheParametersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_cache_parameters
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of cache security group
    #             descriptions. If a cache security group name is specified, the list contains only
    #             the description of that group. This applicable only when you have ElastiCache in Classic setup
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeCacheSecurityGroupsInput}.
    #
    # @option params [String] :cache_security_group_name
    #   <p>The name of the cache security group to return details for.</p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than the
    #               specified <code>MaxRecords</code> value, a marker is included in the response so that
    #               the remaining results can be retrieved.</p>
    #
    #           <p>Default: 100</p>
    #           <p>Constraints: minimum 20; maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p>An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this
    #               parameter is specified, the response includes only records beyond the marker, up to the
    #               value specified by <code>MaxRecords</code>.</p>
    #
    # @return [Types::DescribeCacheSecurityGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_cache_security_groups(
    #     cache_security_group_name: 'CacheSecurityGroupName',
    #     max_records: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeCacheSecurityGroupsOutput
    #   resp.data.marker #=> String
    #   resp.data.cache_security_groups #=> Array<CacheSecurityGroup>
    #   resp.data.cache_security_groups[0] #=> Types::CacheSecurityGroup
    #   resp.data.cache_security_groups[0].owner_id #=> String
    #   resp.data.cache_security_groups[0].cache_security_group_name #=> String
    #   resp.data.cache_security_groups[0].description #=> String
    #   resp.data.cache_security_groups[0].ec2_security_groups #=> Array<EC2SecurityGroup>
    #   resp.data.cache_security_groups[0].ec2_security_groups[0] #=> Types::EC2SecurityGroup
    #   resp.data.cache_security_groups[0].ec2_security_groups[0].status #=> String
    #   resp.data.cache_security_groups[0].ec2_security_groups[0].ec2_security_group_name #=> String
    #   resp.data.cache_security_groups[0].ec2_security_groups[0].ec2_security_group_owner_id #=> String
    #   resp.data.cache_security_groups[0].arn #=> String
    #
    def describe_cache_security_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeCacheSecurityGroupsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeCacheSecurityGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeCacheSecurityGroups
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::CacheSecurityGroupNotFoundFault, Errors::InvalidParameterCombinationException]),
        data_parser: Parsers::DescribeCacheSecurityGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeCacheSecurityGroups,
        stubs: @stubs,
        params_class: Params::DescribeCacheSecurityGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_cache_security_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of cache subnet group
    #             descriptions. If a subnet group name is specified, the list  contains only the
    #             description of that group. This is applicable only when you have ElastiCache in VPC setup. All ElastiCache clusters now launch in VPC by default.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeCacheSubnetGroupsInput}.
    #
    # @option params [String] :cache_subnet_group_name
    #   <p>The name of the cache subnet group to return details for.</p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than the
    #               specified <code>MaxRecords</code> value, a marker is included in the response so that
    #               the remaining results can be retrieved.</p>
    #
    #           <p>Default: 100</p>
    #           <p>Constraints: minimum 20; maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p>An optional marker returned from a prior request.
    #               Use this marker for pagination of results from this operation.
    #               If this parameter is specified, the response includes only records beyond the marker, up to the
    #               value specified by <code>MaxRecords</code>.</p>
    #
    # @return [Types::DescribeCacheSubnetGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_cache_subnet_groups(
    #     cache_subnet_group_name: 'CacheSubnetGroupName',
    #     max_records: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeCacheSubnetGroupsOutput
    #   resp.data.marker #=> String
    #   resp.data.cache_subnet_groups #=> Array<CacheSubnetGroup>
    #   resp.data.cache_subnet_groups[0] #=> Types::CacheSubnetGroup
    #   resp.data.cache_subnet_groups[0].cache_subnet_group_name #=> String
    #   resp.data.cache_subnet_groups[0].cache_subnet_group_description #=> String
    #   resp.data.cache_subnet_groups[0].vpc_id #=> String
    #   resp.data.cache_subnet_groups[0].subnets #=> Array<Subnet>
    #   resp.data.cache_subnet_groups[0].subnets[0] #=> Types::Subnet
    #   resp.data.cache_subnet_groups[0].subnets[0].subnet_identifier #=> String
    #   resp.data.cache_subnet_groups[0].subnets[0].subnet_availability_zone #=> Types::AvailabilityZone
    #   resp.data.cache_subnet_groups[0].subnets[0].subnet_availability_zone.name #=> String
    #   resp.data.cache_subnet_groups[0].subnets[0].subnet_outpost #=> Types::SubnetOutpost
    #   resp.data.cache_subnet_groups[0].subnets[0].subnet_outpost.subnet_outpost_arn #=> String
    #   resp.data.cache_subnet_groups[0].arn #=> String
    #
    def describe_cache_subnet_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeCacheSubnetGroupsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeCacheSubnetGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeCacheSubnetGroups
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CacheSubnetGroupNotFoundFault]),
        data_parser: Parsers::DescribeCacheSubnetGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeCacheSubnetGroups,
        stubs: @stubs,
        params_class: Params::DescribeCacheSubnetGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_cache_subnet_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the default engine and
    #             system parameter information for the specified cache engine.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEngineDefaultParametersInput}.
    #
    # @option params [String] :cache_parameter_group_family
    #   <p>The name of the cache parameter group family.</p>
    #           <p>Valid values are:
    #       <code>memcached1.4</code> |
    #        <code>memcached1.5</code> |
    #         <code>memcached1.6</code> |
    #       <code>redis2.6</code> |
    #       <code>redis2.8</code> |
    #       <code>redis3.2</code> |
    #       <code>redis4.0</code> |
    #        <code>redis5.0</code> |
    #         <code>redis6.x</code> |
    #               <code>redis6.2</code>
    #            </p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than the
    #               specified <code>MaxRecords</code> value, a marker is included in the response so that
    #               the remaining results can be retrieved.</p>
    #
    #           <p>Default: 100</p>
    #           <p>Constraints: minimum 20; maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p>An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this
    #               parameter is specified, the response includes only records beyond the marker, up to the
    #               value specified by <code>MaxRecords</code>.</p>
    #
    # @return [Types::DescribeEngineDefaultParametersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_engine_default_parameters(
    #     cache_parameter_group_family: 'CacheParameterGroupFamily', # required
    #     max_records: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeEngineDefaultParametersOutput
    #   resp.data.engine_defaults #=> Types::EngineDefaults
    #   resp.data.engine_defaults.cache_parameter_group_family #=> String
    #   resp.data.engine_defaults.marker #=> String
    #   resp.data.engine_defaults.parameters #=> Array<Parameter>
    #   resp.data.engine_defaults.parameters[0] #=> Types::Parameter
    #   resp.data.engine_defaults.parameters[0].parameter_name #=> String
    #   resp.data.engine_defaults.parameters[0].parameter_value #=> String
    #   resp.data.engine_defaults.parameters[0].description #=> String
    #   resp.data.engine_defaults.parameters[0].source #=> String
    #   resp.data.engine_defaults.parameters[0].data_type #=> String
    #   resp.data.engine_defaults.parameters[0].allowed_values #=> String
    #   resp.data.engine_defaults.parameters[0].is_modifiable #=> Boolean
    #   resp.data.engine_defaults.parameters[0].minimum_engine_version #=> String
    #   resp.data.engine_defaults.parameters[0].change_type #=> String, one of ["immediate", "requires-reboot"]
    #   resp.data.engine_defaults.cache_node_type_specific_parameters #=> Array<CacheNodeTypeSpecificParameter>
    #   resp.data.engine_defaults.cache_node_type_specific_parameters[0] #=> Types::CacheNodeTypeSpecificParameter
    #   resp.data.engine_defaults.cache_node_type_specific_parameters[0].parameter_name #=> String
    #   resp.data.engine_defaults.cache_node_type_specific_parameters[0].description #=> String
    #   resp.data.engine_defaults.cache_node_type_specific_parameters[0].source #=> String
    #   resp.data.engine_defaults.cache_node_type_specific_parameters[0].data_type #=> String
    #   resp.data.engine_defaults.cache_node_type_specific_parameters[0].allowed_values #=> String
    #   resp.data.engine_defaults.cache_node_type_specific_parameters[0].is_modifiable #=> Boolean
    #   resp.data.engine_defaults.cache_node_type_specific_parameters[0].minimum_engine_version #=> String
    #   resp.data.engine_defaults.cache_node_type_specific_parameters[0].cache_node_type_specific_values #=> Array<CacheNodeTypeSpecificValue>
    #   resp.data.engine_defaults.cache_node_type_specific_parameters[0].cache_node_type_specific_values[0] #=> Types::CacheNodeTypeSpecificValue
    #   resp.data.engine_defaults.cache_node_type_specific_parameters[0].cache_node_type_specific_values[0].cache_node_type #=> String
    #   resp.data.engine_defaults.cache_node_type_specific_parameters[0].cache_node_type_specific_values[0].value #=> String
    #   resp.data.engine_defaults.cache_node_type_specific_parameters[0].change_type #=> String, one of ["immediate", "requires-reboot"]
    #
    def describe_engine_default_parameters(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEngineDefaultParametersInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeEngineDefaultParametersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeEngineDefaultParameters
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::InvalidParameterCombinationException]),
        data_parser: Parsers::DescribeEngineDefaultParameters
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeEngineDefaultParameters,
        stubs: @stubs,
        params_class: Params::DescribeEngineDefaultParametersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_engine_default_parameters
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns events related to clusters, cache
    #             security groups, and cache parameter groups. You can obtain events specific to a
    #             particular cluster, cache security group, or cache parameter group by providing
    #             the name as a parameter.</p>
    #         <p>By default, only the events occurring within the last hour are returned;
    #             however, you can retrieve up to 14 days' worth of events if necessary.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEventsInput}.
    #
    # @option params [String] :source_identifier
    #   <p>The identifier of the event source for which events are returned.
    #               If not specified, all sources are included in the response.</p>
    #
    # @option params [String] :source_type
    #   <p>The event source to retrieve events for.
    #               If no value is specified, all events are returned.</p>
    #
    # @option params [Time] :start_time
    #   <p>The beginning of the time interval to retrieve events for, specified in ISO 8601 format.</p>
    #           <p>
    #               <b>Example:</b> 2017-03-30T07:03:49.555Z</p>
    #
    # @option params [Time] :end_time
    #   <p>The end of the time interval for which to retrieve events, specified in ISO 8601 format.</p>
    #           <p>
    #               <b>Example:</b> 2017-03-30T07:03:49.555Z</p>
    #
    # @option params [Integer] :duration
    #   <p>The number of minutes worth of events to retrieve.</p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than the
    #               specified <code>MaxRecords</code> value, a marker is included in the response so that
    #               the remaining results can be retrieved.</p>
    #
    #           <p>Default: 100</p>
    #           <p>Constraints: minimum 20; maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p>An optional marker returned from a prior request.
    #               Use this marker for pagination of results from this operation.
    #               If this parameter is specified, the response includes only records beyond the marker,
    #               up to the value specified by <code>MaxRecords</code>.</p>
    #
    # @return [Types::DescribeEventsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_events(
    #     source_identifier: 'SourceIdentifier',
    #     source_type: 'cache-cluster', # accepts ["cache-cluster", "cache-parameter-group", "cache-security-group", "cache-subnet-group", "replication-group", "user", "user-group"]
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     duration: 1,
    #     max_records: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeEventsOutput
    #   resp.data.marker #=> String
    #   resp.data.events #=> Array<Event>
    #   resp.data.events[0] #=> Types::Event
    #   resp.data.events[0].source_identifier #=> String
    #   resp.data.events[0].source_type #=> String, one of ["cache-cluster", "cache-parameter-group", "cache-security-group", "cache-subnet-group", "replication-group", "user", "user-group"]
    #   resp.data.events[0].message #=> String
    #   resp.data.events[0].date #=> Time
    #
    def describe_events(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEventsInput.build(params)
      response_body = StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::InvalidParameterCombinationException]),
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

    # <p>Returns information about a particular global replication group. If no identifier is specified, returns information about all Global datastores. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeGlobalReplicationGroupsInput}.
    #
    # @option params [String] :global_replication_group_id
    #   <p>The name of the Global datastore</p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than the specified MaxRecords value, a marker is included in the response so that the remaining results can be retrieved. </p>
    #
    # @option params [String] :marker
    #   <p>An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
    #
    # @option params [Boolean] :show_member_info
    #   <p>Returns the list of members that comprise the Global datastore.</p>
    #
    # @return [Types::DescribeGlobalReplicationGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_global_replication_groups(
    #     global_replication_group_id: 'GlobalReplicationGroupId',
    #     max_records: 1,
    #     marker: 'Marker',
    #     show_member_info: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeGlobalReplicationGroupsOutput
    #   resp.data.marker #=> String
    #   resp.data.global_replication_groups #=> Array<GlobalReplicationGroup>
    #   resp.data.global_replication_groups[0] #=> Types::GlobalReplicationGroup
    #   resp.data.global_replication_groups[0].global_replication_group_id #=> String
    #   resp.data.global_replication_groups[0].global_replication_group_description #=> String
    #   resp.data.global_replication_groups[0].status #=> String
    #   resp.data.global_replication_groups[0].cache_node_type #=> String
    #   resp.data.global_replication_groups[0].engine #=> String
    #   resp.data.global_replication_groups[0].engine_version #=> String
    #   resp.data.global_replication_groups[0].members #=> Array<GlobalReplicationGroupMember>
    #   resp.data.global_replication_groups[0].members[0] #=> Types::GlobalReplicationGroupMember
    #   resp.data.global_replication_groups[0].members[0].replication_group_id #=> String
    #   resp.data.global_replication_groups[0].members[0].replication_group_region #=> String
    #   resp.data.global_replication_groups[0].members[0].role #=> String
    #   resp.data.global_replication_groups[0].members[0].automatic_failover #=> String, one of ["enabled", "disabled", "enabling", "disabling"]
    #   resp.data.global_replication_groups[0].members[0].status #=> String
    #   resp.data.global_replication_groups[0].cluster_enabled #=> Boolean
    #   resp.data.global_replication_groups[0].global_node_groups #=> Array<GlobalNodeGroup>
    #   resp.data.global_replication_groups[0].global_node_groups[0] #=> Types::GlobalNodeGroup
    #   resp.data.global_replication_groups[0].global_node_groups[0].global_node_group_id #=> String
    #   resp.data.global_replication_groups[0].global_node_groups[0].slots #=> String
    #   resp.data.global_replication_groups[0].auth_token_enabled #=> Boolean
    #   resp.data.global_replication_groups[0].transit_encryption_enabled #=> Boolean
    #   resp.data.global_replication_groups[0].at_rest_encryption_enabled #=> Boolean
    #   resp.data.global_replication_groups[0].arn #=> String
    #
    def describe_global_replication_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeGlobalReplicationGroupsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeGlobalReplicationGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeGlobalReplicationGroups
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::GlobalReplicationGroupNotFoundFault, Errors::InvalidParameterCombinationException]),
        data_parser: Parsers::DescribeGlobalReplicationGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeGlobalReplicationGroups,
        stubs: @stubs,
        params_class: Params::DescribeGlobalReplicationGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_global_replication_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about a particular
    #             replication group. If no identifier is specified, <code>DescribeReplicationGroups</code>
    #             returns information about all replication groups.</p>
    #         <note>
    #             <p>This operation is valid for Redis only.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeReplicationGroupsInput}.
    #
    # @option params [String] :replication_group_id
    #   <p>The identifier for the replication group to be described. This parameter is not case sensitive.</p>
    #           <p>If you do not specify this parameter, information about all replication groups is returned.</p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than the
    #               specified <code>MaxRecords</code> value, a marker is included in the response so that
    #               the remaining results can be retrieved.</p>
    #
    #           <p>Default: 100</p>
    #           <p>Constraints: minimum 20; maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p>An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this
    #               parameter is specified, the response includes only records beyond the marker, up to the
    #               value specified by <code>MaxRecords</code>.</p>
    #
    # @return [Types::DescribeReplicationGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_replication_groups(
    #     replication_group_id: 'ReplicationGroupId',
    #     max_records: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeReplicationGroupsOutput
    #   resp.data.marker #=> String
    #   resp.data.replication_groups #=> Array<ReplicationGroup>
    #   resp.data.replication_groups[0] #=> Types::ReplicationGroup
    #   resp.data.replication_groups[0].replication_group_id #=> String
    #   resp.data.replication_groups[0].description #=> String
    #   resp.data.replication_groups[0].global_replication_group_info #=> Types::GlobalReplicationGroupInfo
    #   resp.data.replication_groups[0].global_replication_group_info.global_replication_group_id #=> String
    #   resp.data.replication_groups[0].global_replication_group_info.global_replication_group_member_role #=> String
    #   resp.data.replication_groups[0].status #=> String
    #   resp.data.replication_groups[0].pending_modified_values #=> Types::ReplicationGroupPendingModifiedValues
    #   resp.data.replication_groups[0].pending_modified_values.primary_cluster_id #=> String
    #   resp.data.replication_groups[0].pending_modified_values.automatic_failover_status #=> String, one of ["enabled", "disabled"]
    #   resp.data.replication_groups[0].pending_modified_values.resharding #=> Types::ReshardingStatus
    #   resp.data.replication_groups[0].pending_modified_values.resharding.slot_migration #=> Types::SlotMigration
    #   resp.data.replication_groups[0].pending_modified_values.resharding.slot_migration.progress_percentage #=> Float
    #   resp.data.replication_groups[0].pending_modified_values.auth_token_status #=> String, one of ["SETTING", "ROTATING"]
    #   resp.data.replication_groups[0].pending_modified_values.user_groups #=> Types::UserGroupsUpdateStatus
    #   resp.data.replication_groups[0].pending_modified_values.user_groups.user_group_ids_to_add #=> Array<String>
    #   resp.data.replication_groups[0].pending_modified_values.user_groups.user_group_ids_to_add[0] #=> String
    #   resp.data.replication_groups[0].pending_modified_values.user_groups.user_group_ids_to_remove #=> Array<String>
    #   resp.data.replication_groups[0].pending_modified_values.log_delivery_configurations #=> Array<PendingLogDeliveryConfiguration>
    #   resp.data.replication_groups[0].pending_modified_values.log_delivery_configurations[0] #=> Types::PendingLogDeliveryConfiguration
    #   resp.data.replication_groups[0].pending_modified_values.log_delivery_configurations[0].log_type #=> String, one of ["slow-log", "engine-log"]
    #   resp.data.replication_groups[0].pending_modified_values.log_delivery_configurations[0].destination_type #=> String, one of ["cloudwatch-logs", "kinesis-firehose"]
    #   resp.data.replication_groups[0].pending_modified_values.log_delivery_configurations[0].destination_details #=> Types::DestinationDetails
    #   resp.data.replication_groups[0].pending_modified_values.log_delivery_configurations[0].destination_details.cloud_watch_logs_details #=> Types::CloudWatchLogsDestinationDetails
    #   resp.data.replication_groups[0].pending_modified_values.log_delivery_configurations[0].destination_details.cloud_watch_logs_details.log_group #=> String
    #   resp.data.replication_groups[0].pending_modified_values.log_delivery_configurations[0].destination_details.kinesis_firehose_details #=> Types::KinesisFirehoseDestinationDetails
    #   resp.data.replication_groups[0].pending_modified_values.log_delivery_configurations[0].destination_details.kinesis_firehose_details.delivery_stream #=> String
    #   resp.data.replication_groups[0].pending_modified_values.log_delivery_configurations[0].log_format #=> String, one of ["text", "json"]
    #   resp.data.replication_groups[0].member_clusters #=> Array<String>
    #   resp.data.replication_groups[0].member_clusters[0] #=> String
    #   resp.data.replication_groups[0].node_groups #=> Array<NodeGroup>
    #   resp.data.replication_groups[0].node_groups[0] #=> Types::NodeGroup
    #   resp.data.replication_groups[0].node_groups[0].node_group_id #=> String
    #   resp.data.replication_groups[0].node_groups[0].status #=> String
    #   resp.data.replication_groups[0].node_groups[0].primary_endpoint #=> Types::Endpoint
    #   resp.data.replication_groups[0].node_groups[0].primary_endpoint.address #=> String
    #   resp.data.replication_groups[0].node_groups[0].primary_endpoint.port #=> Integer
    #   resp.data.replication_groups[0].node_groups[0].reader_endpoint #=> Types::Endpoint
    #   resp.data.replication_groups[0].node_groups[0].slots #=> String
    #   resp.data.replication_groups[0].node_groups[0].node_group_members #=> Array<NodeGroupMember>
    #   resp.data.replication_groups[0].node_groups[0].node_group_members[0] #=> Types::NodeGroupMember
    #   resp.data.replication_groups[0].node_groups[0].node_group_members[0].cache_cluster_id #=> String
    #   resp.data.replication_groups[0].node_groups[0].node_group_members[0].cache_node_id #=> String
    #   resp.data.replication_groups[0].node_groups[0].node_group_members[0].read_endpoint #=> Types::Endpoint
    #   resp.data.replication_groups[0].node_groups[0].node_group_members[0].preferred_availability_zone #=> String
    #   resp.data.replication_groups[0].node_groups[0].node_group_members[0].preferred_outpost_arn #=> String
    #   resp.data.replication_groups[0].node_groups[0].node_group_members[0].current_role #=> String
    #   resp.data.replication_groups[0].snapshotting_cluster_id #=> String
    #   resp.data.replication_groups[0].automatic_failover #=> String, one of ["enabled", "disabled", "enabling", "disabling"]
    #   resp.data.replication_groups[0].multi_az #=> String, one of ["enabled", "disabled"]
    #   resp.data.replication_groups[0].configuration_endpoint #=> Types::Endpoint
    #   resp.data.replication_groups[0].snapshot_retention_limit #=> Integer
    #   resp.data.replication_groups[0].snapshot_window #=> String
    #   resp.data.replication_groups[0].cluster_enabled #=> Boolean
    #   resp.data.replication_groups[0].cache_node_type #=> String
    #   resp.data.replication_groups[0].auth_token_enabled #=> Boolean
    #   resp.data.replication_groups[0].auth_token_last_modified_date #=> Time
    #   resp.data.replication_groups[0].transit_encryption_enabled #=> Boolean
    #   resp.data.replication_groups[0].at_rest_encryption_enabled #=> Boolean
    #   resp.data.replication_groups[0].member_clusters_outpost_arns #=> Array<String>
    #   resp.data.replication_groups[0].member_clusters_outpost_arns[0] #=> String
    #   resp.data.replication_groups[0].kms_key_id #=> String
    #   resp.data.replication_groups[0].arn #=> String
    #   resp.data.replication_groups[0].user_group_ids #=> Array<String>
    #   resp.data.replication_groups[0].log_delivery_configurations #=> Array<LogDeliveryConfiguration>
    #   resp.data.replication_groups[0].log_delivery_configurations[0] #=> Types::LogDeliveryConfiguration
    #   resp.data.replication_groups[0].log_delivery_configurations[0].log_type #=> String, one of ["slow-log", "engine-log"]
    #   resp.data.replication_groups[0].log_delivery_configurations[0].destination_type #=> String, one of ["cloudwatch-logs", "kinesis-firehose"]
    #   resp.data.replication_groups[0].log_delivery_configurations[0].destination_details #=> Types::DestinationDetails
    #   resp.data.replication_groups[0].log_delivery_configurations[0].log_format #=> String, one of ["text", "json"]
    #   resp.data.replication_groups[0].log_delivery_configurations[0].status #=> String, one of ["active", "enabling", "modifying", "disabling", "error"]
    #   resp.data.replication_groups[0].log_delivery_configurations[0].message #=> String
    #   resp.data.replication_groups[0].replication_group_create_time #=> Time
    #   resp.data.replication_groups[0].data_tiering #=> String, one of ["enabled", "disabled"]
    #
    def describe_replication_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeReplicationGroupsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeReplicationGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeReplicationGroups
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::InvalidParameterCombinationException, Errors::ReplicationGroupNotFoundFault]),
        data_parser: Parsers::DescribeReplicationGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeReplicationGroups,
        stubs: @stubs,
        params_class: Params::DescribeReplicationGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_replication_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about reserved cache
    #             nodes for this account, or about a specified reserved cache node.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeReservedCacheNodesInput}.
    #
    # @option params [String] :reserved_cache_node_id
    #   <p>The reserved cache node identifier filter value.
    #               Use this parameter to show only the reservation that matches the specified reservation ID.</p>
    #
    # @option params [String] :reserved_cache_nodes_offering_id
    #   <p>The offering identifier filter value.
    #               Use this parameter to show only purchased reservations matching the specified offering identifier.</p>
    #
    # @option params [String] :cache_node_type
    #   <p>The cache node type filter value.
    #               Use this parameter to show only those reservations matching the specified cache node type.</p>
    #
    #           <p>The following node types are supported by ElastiCache.
    #   				Generally speaking, the current generation types provide more memory and computational power
    #   			at lower cost when compared to their equivalent previous generation counterparts.</p>
    #   		       <ul>
    #               <li>
    #                  <p>General purpose:</p>
    #   				           <ul>
    #                     <li>
    #                        <p>Current generation: </p>
    #   					
    #   					
    #   					
    #   					
    #   					
    #   					
    #   					                <p>
    #                           <b>M6g node types:</b> (available only for Redis engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward):
    #   					        <code>cache.m6g.large</code>,
    #   							<code>cache.m6g.xlarge</code>,
    #   							<code>cache.m6g.2xlarge</code>,
    #   							<code>cache.m6g.4xlarge</code>,
    #   							<code>cache.m6g.8xlarge</code>,
    #   							<code>cache.m6g.12xlarge</code>,
    #   							<code>cache.m6g.16xlarge</code>
    #   							
    #   							
    #   							
    #   						               </p>	
    #   						
    #   						               <note>
    #                           <p>For region availability, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion">Supported Node Types</a>
    #                           </p>
    #                        </note>
    #       					
    #       					
    #       					            <p>
    #                           <b>M5 node types:</b>
    #       						              <code>cache.m5.large</code>,
    #       						<code>cache.m5.xlarge</code>,
    #       						<code>cache.m5.2xlarge</code>,
    #       						<code>cache.m5.4xlarge</code>,
    #       						<code>cache.m5.12xlarge</code>,
    #       						<code>cache.m5.24xlarge</code>
    #       						
    #       						
    #       						           </p>	
    #       						
    #   						
    #   						               <p>
    #                           <b>M4 node types:</b>
    #       						              <code>cache.m4.large</code>,
    #       						<code>cache.m4.xlarge</code>,
    #       						<code>cache.m4.2xlarge</code>,
    #       						<code>cache.m4.4xlarge</code>,
    #       						<code>cache.m4.10xlarge</code>
    #                        </p>
    #       		
    #   					                <p>
    #                           <b>T4g node types</b> (available only for Redis engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward):
    #   					        <code>cache.t4g.micro</code>,
    #   					        <code>cache.t4g.small</code>,
    #   					        <code>cache.t4g.medium</code>
    #   					                </p>		
    #   					
    #   					
    #   					                <p>
    #                           <b>T3 node types:</b>
    #   					                   <code>cache.t3.micro</code>,
    #       						<code>cache.t3.small</code>,
    #       						<code>cache.t3.medium</code>
    #                        </p>
    #       								
    #       						
    #       				             <p>
    #                           <b>T2 node types:</b>
    #   					                   <code>cache.t2.micro</code>,
    #       						<code>cache.t2.small</code>,
    #       						<code>cache.t2.medium</code>
    #                        </p>
    #       						
    #       						
    #       						
    #       						
    #       						        </li>
    #                     <li>
    #                        <p>Previous generation: (not recommended)</p>
    #   						               <p>
    #                           <b>T1 node types:</b>
    #   					                   <code>cache.t1.micro</code>
    #                        </p>
    #   					
    #   						               <p>
    #                           <b>M1 node types:</b>
    #   						                  <code>cache.m1.small</code>,
    #   						   <code>cache.m1.medium</code>,
    #   						   <code>cache.m1.large</code>,
    #   						   <code>cache.m1.xlarge</code>
    #                        </p>
    #   						
    #   						               <p>
    #                           <b>M3 node types:</b>
    #       						              <code>cache.m3.medium</code>,
    #       						<code>cache.m3.large</code>,
    #       						<code>cache.m3.xlarge</code>,
    #       						<code>cache.m3.2xlarge</code>
    #                        </p>
    #   						
    #   						            </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Compute optimized:</p>
    #
    #   				           <ul>
    #                     <li>
    #                        <p>Previous generation: (not recommended)</p>
    #   			                  <p>
    #                           <b>C1 node types:</b>
    #   			                     <code>cache.c1.xlarge</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Memory optimized with data tiering:</p>
    #   		             <ul>
    #                     <li>
    #                        <p>Current generation: </p>
    #   		
    #   		                   <p>
    #                           <b>R6gd node types</b> (available only for Redis engine version 6.2 onward).</p>
    #   		
    #   		
    #   		
    #   		
    #   		                   <p>	
    #   		
    #   		                      <code>cache.r6gd.xlarge</code>,
    #   		                    <code>cache.r6gd.2xlarge</code>,
    #   		                    <code>cache.r6gd.4xlarge</code>,
    #   		                    <code>cache.r6gd.8xlarge</code>,
    #   		                    <code>cache.r6gd.12xlarge</code>,
    #   		                    <code>cache.r6gd.16xlarge</code>
    #   		
    #   		
    #   		
    #   		
    #   		
    #   		
    #   		                   </p>					
    #   		
    #   		                </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Memory optimized:</p>
    #   				           <ul>
    #                     <li>
    #                        <p>Current generation: </p>
    #   	
    #   								    				
    #   					
    #   					                <p>
    #                           <b>R6g node types</b> (available only for Redis engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward).</p>
    #   						
    #   						
    #   						
    #   						
    #   						               <p>	
    #   							                 <code>cache.r6g.large</code>,
    #   							<code>cache.r6g.xlarge</code>,
    #   							<code>cache.r6g.2xlarge</code>,
    #   							<code>cache.r6g.4xlarge</code>,
    #   							<code>cache.r6g.8xlarge</code>,
    #   							<code>cache.r6g.12xlarge</code>,
    #   							<code>cache.r6g.16xlarge</code>
    #   							
    #   							
    #   							
    #   							
    #   							
    #   							
    #   						               </p>	
    #   						               <note>
    #                           <p>For region availability, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion">Supported Node Types</a>
    #                           </p>
    #                        </note>
    #   					                <p>
    #                           <b>R5 node types:</b>
    #       					               <code>cache.r5.large</code>,
    #       					   <code>cache.r5.xlarge</code>,
    #       					   <code>cache.r5.2xlarge</code>,
    #       					   <code>cache.r5.4xlarge</code>,
    #       					   <code>cache.r5.12xlarge</code>,
    #       					   <code>cache.r5.24xlarge</code>
    #                        </p>
    #   						
    #       					            <p>
    #                           <b>R4 node types:</b>
    #       					               <code>cache.r4.large</code>,
    #       					   <code>cache.r4.xlarge</code>,
    #       					   <code>cache.r4.2xlarge</code>,
    #       					   <code>cache.r4.4xlarge</code>,
    #       					   <code>cache.r4.8xlarge</code>,
    #       					   <code>cache.r4.16xlarge</code>
    #                        </p>
    #       					
    #       					
    #       					
    #
    #
    #       					
    #       					
    #       					
    #       					
    #       					
    #       					
    #       					         </li>
    #                     <li>
    #                        <p>Previous generation: (not recommended)</p>
    #                           <p>
    #                           <b>M2 node types:</b>						
    #       					               <code>cache.m2.xlarge</code>,
    #       						<code>cache.m2.2xlarge</code>,
    #       						<code>cache.m2.4xlarge</code>
    #                        </p>
    #       						
    #       						           <p>
    #                           <b>R3 node types:</b>
    #       					               <code>cache.r3.large</code>,
    #       						<code>cache.r3.xlarge</code>,
    #       						<code>cache.r3.2xlarge</code>,
    #       						<code>cache.r3.4xlarge</code>,
    #       						<code>cache.r3.8xlarge</code>
    #                        </p>
    #       						
    #       						        </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #   				
    #   		       <p>
    #               <b>Additional node type info</b>
    #            </p>
    #   		       <ul>
    #               <li>
    #                  <p>All current generation instance types are created in Amazon VPC by default.</p>
    #               </li>
    #               <li>
    #                  <p>Redis append-only files (AOF) are not supported for T1 or T2 instances.</p>
    #               </li>
    #               <li>
    #                  <p>Redis Multi-AZ with automatic failover is not supported on T1 instances.</p>
    #               </li>
    #               <li>
    #                  <p>Redis configuration variables <code>appendonly</code> and
    #   				<code>appendfsync</code> are not supported on Redis version 2.8.22 and later.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :duration
    #   <p>The duration filter value, specified in years or seconds.
    #               Use this parameter to show only reservations for this duration.</p>
    #           <p>Valid Values: <code>1 | 3 | 31536000 | 94608000</code>
    #            </p>
    #
    # @option params [String] :product_description
    #   <p>The product description filter value. Use this parameter to show only those reservations matching the specified product description.</p>
    #
    # @option params [String] :offering_type
    #   <p>The offering type filter value.
    #               Use this parameter to show only the available offerings matching the specified offering type.</p>
    #           <p>Valid values: <code>"Light Utilization"|"Medium Utilization"|"Heavy Utilization"|"All Upfront"|"Partial Upfront"| "No Upfront"</code>
    #            </p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than the
    #               specified <code>MaxRecords</code> value, a marker is included in the response so that
    #               the remaining results can be retrieved.</p>
    #
    #           <p>Default: 100</p>
    #           <p>Constraints: minimum 20; maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p>An optional marker returned from a prior request.
    #               Use this marker for pagination of results from this operation.
    #               If this parameter is specified, the response includes only records beyond the marker,
    #               up to the value specified by <code>MaxRecords</code>.</p>
    #
    # @return [Types::DescribeReservedCacheNodesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_reserved_cache_nodes(
    #     reserved_cache_node_id: 'ReservedCacheNodeId',
    #     reserved_cache_nodes_offering_id: 'ReservedCacheNodesOfferingId',
    #     cache_node_type: 'CacheNodeType',
    #     duration: 'Duration',
    #     product_description: 'ProductDescription',
    #     offering_type: 'OfferingType',
    #     max_records: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeReservedCacheNodesOutput
    #   resp.data.marker #=> String
    #   resp.data.reserved_cache_nodes #=> Array<ReservedCacheNode>
    #   resp.data.reserved_cache_nodes[0] #=> Types::ReservedCacheNode
    #   resp.data.reserved_cache_nodes[0].reserved_cache_node_id #=> String
    #   resp.data.reserved_cache_nodes[0].reserved_cache_nodes_offering_id #=> String
    #   resp.data.reserved_cache_nodes[0].cache_node_type #=> String
    #   resp.data.reserved_cache_nodes[0].start_time #=> Time
    #   resp.data.reserved_cache_nodes[0].duration #=> Integer
    #   resp.data.reserved_cache_nodes[0].fixed_price #=> Float
    #   resp.data.reserved_cache_nodes[0].usage_price #=> Float
    #   resp.data.reserved_cache_nodes[0].cache_node_count #=> Integer
    #   resp.data.reserved_cache_nodes[0].product_description #=> String
    #   resp.data.reserved_cache_nodes[0].offering_type #=> String
    #   resp.data.reserved_cache_nodes[0].state #=> String
    #   resp.data.reserved_cache_nodes[0].recurring_charges #=> Array<RecurringCharge>
    #   resp.data.reserved_cache_nodes[0].recurring_charges[0] #=> Types::RecurringCharge
    #   resp.data.reserved_cache_nodes[0].recurring_charges[0].recurring_charge_amount #=> Float
    #   resp.data.reserved_cache_nodes[0].recurring_charges[0].recurring_charge_frequency #=> String
    #   resp.data.reserved_cache_nodes[0].reservation_arn #=> String
    #
    def describe_reserved_cache_nodes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeReservedCacheNodesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeReservedCacheNodesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeReservedCacheNodes
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ReservedCacheNodeNotFoundFault, Errors::InvalidParameterValueException, Errors::InvalidParameterCombinationException]),
        data_parser: Parsers::DescribeReservedCacheNodes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeReservedCacheNodes,
        stubs: @stubs,
        params_class: Params::DescribeReservedCacheNodesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_reserved_cache_nodes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists available reserved cache
    #             node offerings.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeReservedCacheNodesOfferingsInput}.
    #
    # @option params [String] :reserved_cache_nodes_offering_id
    #   <p>The offering identifier filter value.
    #               Use this parameter to show only the available offering that matches the specified reservation identifier.</p>
    #           <p>Example: <code>438012d3-4052-4cc7-b2e3-8d3372e0e706</code>
    #            </p>
    #
    # @option params [String] :cache_node_type
    #   <p>The cache node type filter value.
    #               Use this parameter to show only the available offerings matching the specified cache node type.</p>
    #
    #           <p>The following node types are supported by ElastiCache.
    #   				Generally speaking, the current generation types provide more memory and computational power
    #   			at lower cost when compared to their equivalent previous generation counterparts.</p>
    #   		       <ul>
    #               <li>
    #                  <p>General purpose:</p>
    #   				           <ul>
    #                     <li>
    #                        <p>Current generation: </p>
    #   					
    #   					
    #   					
    #   					
    #   					
    #   					
    #   					                <p>
    #                           <b>M6g node types:</b> (available only for Redis engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward)	<code>cache.m6g.large</code>,
    #   							<code>cache.m6g.xlarge</code>,
    #   							<code>cache.m6g.2xlarge</code>,
    #   							<code>cache.m6g.4xlarge</code>,
    #   							<code>cache.m6g.8xlarge</code>,
    #   							<code>cache.m6g.12xlarge</code>,
    #   							<code>cache.m6g.16xlarge</code>
    #   							
    #   							
    #   							
    #   						               </p>	
    #   						
    #   						               <note>
    #                           <p>For region availability, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion">Supported Node Types</a>
    #                           </p>
    #                        </note>
    #       					
    #       					
    #       					            <p>
    #                           <b>M5 node types:</b>
    #       						              <code>cache.m5.large</code>,
    #       						<code>cache.m5.xlarge</code>,
    #       						<code>cache.m5.2xlarge</code>,
    #       						<code>cache.m5.4xlarge</code>,
    #       						<code>cache.m5.12xlarge</code>,
    #       						<code>cache.m5.24xlarge</code>
    #       						
    #       						
    #       						           </p>	
    #       						
    #   						
    #   						               <p>
    #                           <b>M4 node types:</b>
    #       						              <code>cache.m4.large</code>,
    #       						<code>cache.m4.xlarge</code>,
    #       						<code>cache.m4.2xlarge</code>,
    #       						<code>cache.m4.4xlarge</code>,
    #       						<code>cache.m4.10xlarge</code>
    #                        </p>
    #       		
    #   					                <p>
    #                           <b>T4g node types</b> (available only for Redis engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward):
    #   					        <code>cache.t4g.micro</code>,
    #   					        <code>cache.t4g.small</code>,
    #   					        <code>cache.t4g.medium</code>
    #   					                </p>	
    #   					
    #   					
    #   					                <p>
    #                           <b>T3 node types:</b>
    #   					                   <code>cache.t3.micro</code>,
    #       						<code>cache.t3.small</code>,
    #       						<code>cache.t3.medium</code>
    #                        </p>
    #       								
    #       						
    #       				             <p>
    #                           <b>T2 node types:</b>
    #   					                   <code>cache.t2.micro</code>,
    #       						<code>cache.t2.small</code>,
    #       						<code>cache.t2.medium</code>
    #                        </p>
    #       						
    #       						
    #       						
    #       						
    #       						        </li>
    #                     <li>
    #                        <p>Previous generation: (not recommended)</p>
    #   						               <p>
    #                           <b>T1 node types:</b>
    #   					                   <code>cache.t1.micro</code>
    #                        </p>
    #   					
    #   						               <p>
    #                           <b>M1 node types:</b>
    #   						                  <code>cache.m1.small</code>,
    #   						   <code>cache.m1.medium</code>,
    #   						   <code>cache.m1.large</code>,
    #   						   <code>cache.m1.xlarge</code>
    #                        </p>
    #   						
    #   						               <p>
    #                           <b>M3 node types:</b>
    #       						              <code>cache.m3.medium</code>,
    #       						<code>cache.m3.large</code>,
    #       						<code>cache.m3.xlarge</code>,
    #       						<code>cache.m3.2xlarge</code>
    #                        </p>
    #   						
    #   						            </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Compute optimized:</p>
    #
    #   				           <ul>
    #                     <li>
    #                        <p>Previous generation: (not recommended)</p>
    #   			                  <p>
    #                           <b>C1 node types:</b>
    #   			                     <code>cache.c1.xlarge</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Memory optimized with data tiering:</p>
    #   		             <ul>
    #                     <li>
    #                        <p>Current generation: </p>
    #   		
    #   		                   <p>
    #                           <b>R6gd node types</b> (available only for Redis engine version 6.2 onward).</p>
    #   		
    #   		
    #   		
    #   		
    #   		                   <p>	
    #   		
    #   		                      <code>cache.r6gd.xlarge</code>,
    #   		                    <code>cache.r6gd.2xlarge</code>,
    #   		                    <code>cache.r6gd.4xlarge</code>,
    #   		                    <code>cache.r6gd.8xlarge</code>,
    #   		                    <code>cache.r6gd.12xlarge</code>,
    #   		                    <code>cache.r6gd.16xlarge</code>
    #   		
    #   		
    #   		
    #   		
    #   		
    #   		
    #   		                   </p>					
    #   		
    #   		                </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Memory optimized:</p>
    #   				           <ul>
    #                     <li>
    #                        <p>Current generation: </p>
    #
    #
    #   					 			    					
    #   					
    #   					                <p>
    #                           <b>R6g node types</b> (available only for Redis engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward).</p>
    #   						
    #   						
    #   						
    #   						
    #
    #   						               <p>	
    #   							                 <code>cache.r6g.large</code>,
    #   							<code>cache.r6g.xlarge</code>,
    #   							<code>cache.r6g.2xlarge</code>,
    #   							<code>cache.r6g.4xlarge</code>,
    #   							<code>cache.r6g.8xlarge</code>,
    #   							<code>cache.r6g.12xlarge</code>,
    #   							<code>cache.r6g.16xlarge</code>
    #   							
    #   							
    #   							
    #   							
    #   							
    #   							
    #   						               </p>	
    #   						               <note>
    #                           <p>For region availability, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion">Supported Node Types</a>
    #                           </p>
    #                        </note>
    #   					                <p>
    #                           <b>R5 node types:</b>
    #       					               <code>cache.r5.large</code>,
    #       					   <code>cache.r5.xlarge</code>,
    #       					   <code>cache.r5.2xlarge</code>,
    #       					   <code>cache.r5.4xlarge</code>,
    #       					   <code>cache.r5.12xlarge</code>,
    #       					   <code>cache.r5.24xlarge</code>
    #                        </p>
    #   						
    #       					            <p>
    #                           <b>R4 node types:</b>
    #       					               <code>cache.r4.large</code>,
    #       					   <code>cache.r4.xlarge</code>,
    #       					   <code>cache.r4.2xlarge</code>,
    #       					   <code>cache.r4.4xlarge</code>,
    #       					   <code>cache.r4.8xlarge</code>,
    #       					   <code>cache.r4.16xlarge</code>
    #                        </p>
    #       					
    #       					
    #       					
    #
    #
    #       					
    #       					
    #       					
    #       					
    #       					
    #       					
    #       					         </li>
    #                     <li>
    #                        <p>Previous generation: (not recommended)</p>
    #                           <p>
    #                           <b>M2 node types:</b>						
    #       					               <code>cache.m2.xlarge</code>,
    #       						<code>cache.m2.2xlarge</code>,
    #       						<code>cache.m2.4xlarge</code>
    #                        </p>
    #       						
    #       						           <p>
    #                           <b>R3 node types:</b>
    #       					               <code>cache.r3.large</code>,
    #       						<code>cache.r3.xlarge</code>,
    #       						<code>cache.r3.2xlarge</code>,
    #       						<code>cache.r3.4xlarge</code>,
    #       						<code>cache.r3.8xlarge</code>
    #                        </p>
    #       						
    #       						        </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #   				
    #   		       <p>
    #               <b>Additional node type info</b>
    #            </p>
    #   		       <ul>
    #               <li>
    #                  <p>All current generation instance types are created in Amazon VPC by default.</p>
    #               </li>
    #               <li>
    #                  <p>Redis append-only files (AOF) are not supported for T1 or T2 instances.</p>
    #               </li>
    #               <li>
    #                  <p>Redis Multi-AZ with automatic failover is not supported on T1 instances.</p>
    #               </li>
    #               <li>
    #                  <p>Redis configuration variables <code>appendonly</code> and
    #   				<code>appendfsync</code> are not supported on Redis version 2.8.22 and later.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :duration
    #   <p>Duration filter value, specified in years or seconds.
    #               Use this parameter to show only reservations for a given duration.</p>
    #           <p>Valid Values: <code>1 | 3 | 31536000 | 94608000</code>
    #            </p>
    #
    # @option params [String] :product_description
    #   <p>The product description filter value.
    #               Use this parameter to show only the available offerings matching the specified product description.</p>
    #
    # @option params [String] :offering_type
    #   <p>The offering type filter value.
    #               Use this parameter to show only the available offerings matching the specified offering type.</p>
    #           <p>Valid Values: <code>"Light Utilization"|"Medium Utilization"|"Heavy Utilization" |"All Upfront"|"Partial Upfront"| "No Upfront"</code>
    #            </p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than the
    #               specified <code>MaxRecords</code> value, a marker is included in the response so that
    #               the remaining results can be retrieved.</p>
    #
    #           <p>Default: 100</p>
    #           <p>Constraints: minimum 20; maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p>An optional marker returned from a prior request.
    #               Use this marker for pagination of results from this operation.
    #               If this parameter is specified, the response includes only records beyond the marker,
    #               up to the value specified by <code>MaxRecords</code>.</p>
    #
    # @return [Types::DescribeReservedCacheNodesOfferingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_reserved_cache_nodes_offerings(
    #     reserved_cache_nodes_offering_id: 'ReservedCacheNodesOfferingId',
    #     cache_node_type: 'CacheNodeType',
    #     duration: 'Duration',
    #     product_description: 'ProductDescription',
    #     offering_type: 'OfferingType',
    #     max_records: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeReservedCacheNodesOfferingsOutput
    #   resp.data.marker #=> String
    #   resp.data.reserved_cache_nodes_offerings #=> Array<ReservedCacheNodesOffering>
    #   resp.data.reserved_cache_nodes_offerings[0] #=> Types::ReservedCacheNodesOffering
    #   resp.data.reserved_cache_nodes_offerings[0].reserved_cache_nodes_offering_id #=> String
    #   resp.data.reserved_cache_nodes_offerings[0].cache_node_type #=> String
    #   resp.data.reserved_cache_nodes_offerings[0].duration #=> Integer
    #   resp.data.reserved_cache_nodes_offerings[0].fixed_price #=> Float
    #   resp.data.reserved_cache_nodes_offerings[0].usage_price #=> Float
    #   resp.data.reserved_cache_nodes_offerings[0].product_description #=> String
    #   resp.data.reserved_cache_nodes_offerings[0].offering_type #=> String
    #   resp.data.reserved_cache_nodes_offerings[0].recurring_charges #=> Array<RecurringCharge>
    #   resp.data.reserved_cache_nodes_offerings[0].recurring_charges[0] #=> Types::RecurringCharge
    #   resp.data.reserved_cache_nodes_offerings[0].recurring_charges[0].recurring_charge_amount #=> Float
    #   resp.data.reserved_cache_nodes_offerings[0].recurring_charges[0].recurring_charge_frequency #=> String
    #
    def describe_reserved_cache_nodes_offerings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeReservedCacheNodesOfferingsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeReservedCacheNodesOfferingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeReservedCacheNodesOfferings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::ReservedCacheNodesOfferingNotFoundFault, Errors::InvalidParameterCombinationException]),
        data_parser: Parsers::DescribeReservedCacheNodesOfferings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeReservedCacheNodesOfferings,
        stubs: @stubs,
        params_class: Params::DescribeReservedCacheNodesOfferingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_reserved_cache_nodes_offerings
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
    #   <p>The unique ID of the service update</p>
    #
    # @option params [Array<String>] :service_update_status
    #   <p>The status of the service update</p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response</p>
    #
    # @option params [String] :marker
    #   <p>An optional marker returned from a prior request.
    #              Use this marker for pagination of results from this operation. If this
    #              parameter is specified, the response includes only records beyond the marker, up to the
    #              value specified by <code>MaxRecords</code>.</p>
    #
    # @return [Types::DescribeServiceUpdatesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_service_updates(
    #     service_update_name: 'ServiceUpdateName',
    #     service_update_status: [
    #       'available' # accepts ["available", "cancelled", "expired"]
    #     ],
    #     max_records: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeServiceUpdatesOutput
    #   resp.data.marker #=> String
    #   resp.data.service_updates #=> Array<ServiceUpdate>
    #   resp.data.service_updates[0] #=> Types::ServiceUpdate
    #   resp.data.service_updates[0].service_update_name #=> String
    #   resp.data.service_updates[0].service_update_release_date #=> Time
    #   resp.data.service_updates[0].service_update_end_date #=> Time
    #   resp.data.service_updates[0].service_update_severity #=> String, one of ["critical", "important", "medium", "low"]
    #   resp.data.service_updates[0].service_update_recommended_apply_by_date #=> Time
    #   resp.data.service_updates[0].service_update_status #=> String, one of ["available", "cancelled", "expired"]
    #   resp.data.service_updates[0].service_update_description #=> String
    #   resp.data.service_updates[0].service_update_type #=> String, one of ["security-update"]
    #   resp.data.service_updates[0].engine #=> String
    #   resp.data.service_updates[0].engine_version #=> String
    #   resp.data.service_updates[0].auto_update_after_recommended_apply_by_date #=> Boolean
    #   resp.data.service_updates[0].estimated_update_time #=> String
    #
    def describe_service_updates(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeServiceUpdatesInput.build(params)
      response_body = StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::InvalidParameterCombinationException, Errors::ServiceUpdateNotFoundFault]),
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

    # <p>Returns information about cluster or replication group snapshots.
    #             By default, <code>DescribeSnapshots</code> lists all of your snapshots; it can optionally
    #             describe a single snapshot, or just the snapshots associated with a particular cache
    #             cluster.</p>
    #
    #         <note>
    #             <p>This operation is valid for Redis only.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeSnapshotsInput}.
    #
    # @option params [String] :replication_group_id
    #   <p>A user-supplied replication group identifier.
    #               If this parameter is specified, only snapshots associated with that specific replication group are described.</p>
    #
    # @option params [String] :cache_cluster_id
    #   <p>A user-supplied cluster identifier.
    #               If this parameter is specified, only snapshots associated with that specific cluster are described.</p>
    #
    # @option params [String] :snapshot_name
    #   <p>A user-supplied name of the snapshot.
    #               If this parameter is specified, only this snapshot are described.</p>
    #
    # @option params [String] :snapshot_source
    #   <p>If set to <code>system</code>, the output shows snapshots that were automatically created by ElastiCache.
    #               If set to <code>user</code> the output shows snapshots that were manually created.
    #               If omitted, the output shows both automatically and manually created snapshots.</p>
    #
    # @option params [String] :marker
    #   <p>An optional marker returned from a prior request.
    #               Use this marker for pagination of results from this operation.
    #               If this parameter is specified, the response includes only records beyond the marker,
    #               up to the value specified by <code>MaxRecords</code>.</p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than the
    #               specified <code>MaxRecords</code> value, a marker is included in the response so that
    #               the remaining results can be retrieved.</p>
    #           <p>Default: 50</p>
    #           <p>Constraints: minimum 20; maximum 50.</p>
    #
    # @option params [Boolean] :show_node_group_config
    #   <p>A Boolean value which if true, the node group (shard) configuration is included in the snapshot description.</p>
    #
    # @return [Types::DescribeSnapshotsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_snapshots(
    #     replication_group_id: 'ReplicationGroupId',
    #     cache_cluster_id: 'CacheClusterId',
    #     snapshot_name: 'SnapshotName',
    #     snapshot_source: 'SnapshotSource',
    #     marker: 'Marker',
    #     max_records: 1,
    #     show_node_group_config: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeSnapshotsOutput
    #   resp.data.marker #=> String
    #   resp.data.snapshots #=> Array<Snapshot>
    #   resp.data.snapshots[0] #=> Types::Snapshot
    #   resp.data.snapshots[0].snapshot_name #=> String
    #   resp.data.snapshots[0].replication_group_id #=> String
    #   resp.data.snapshots[0].replication_group_description #=> String
    #   resp.data.snapshots[0].cache_cluster_id #=> String
    #   resp.data.snapshots[0].snapshot_status #=> String
    #   resp.data.snapshots[0].snapshot_source #=> String
    #   resp.data.snapshots[0].cache_node_type #=> String
    #   resp.data.snapshots[0].engine #=> String
    #   resp.data.snapshots[0].engine_version #=> String
    #   resp.data.snapshots[0].num_cache_nodes #=> Integer
    #   resp.data.snapshots[0].preferred_availability_zone #=> String
    #   resp.data.snapshots[0].preferred_outpost_arn #=> String
    #   resp.data.snapshots[0].cache_cluster_create_time #=> Time
    #   resp.data.snapshots[0].preferred_maintenance_window #=> String
    #   resp.data.snapshots[0].topic_arn #=> String
    #   resp.data.snapshots[0].port #=> Integer
    #   resp.data.snapshots[0].cache_parameter_group_name #=> String
    #   resp.data.snapshots[0].cache_subnet_group_name #=> String
    #   resp.data.snapshots[0].vpc_id #=> String
    #   resp.data.snapshots[0].auto_minor_version_upgrade #=> Boolean
    #   resp.data.snapshots[0].snapshot_retention_limit #=> Integer
    #   resp.data.snapshots[0].snapshot_window #=> String
    #   resp.data.snapshots[0].num_node_groups #=> Integer
    #   resp.data.snapshots[0].automatic_failover #=> String, one of ["enabled", "disabled", "enabling", "disabling"]
    #   resp.data.snapshots[0].node_snapshots #=> Array<NodeSnapshot>
    #   resp.data.snapshots[0].node_snapshots[0] #=> Types::NodeSnapshot
    #   resp.data.snapshots[0].node_snapshots[0].cache_cluster_id #=> String
    #   resp.data.snapshots[0].node_snapshots[0].node_group_id #=> String
    #   resp.data.snapshots[0].node_snapshots[0].cache_node_id #=> String
    #   resp.data.snapshots[0].node_snapshots[0].node_group_configuration #=> Types::NodeGroupConfiguration
    #   resp.data.snapshots[0].node_snapshots[0].node_group_configuration.node_group_id #=> String
    #   resp.data.snapshots[0].node_snapshots[0].node_group_configuration.slots #=> String
    #   resp.data.snapshots[0].node_snapshots[0].node_group_configuration.replica_count #=> Integer
    #   resp.data.snapshots[0].node_snapshots[0].node_group_configuration.primary_availability_zone #=> String
    #   resp.data.snapshots[0].node_snapshots[0].node_group_configuration.replica_availability_zones #=> Array<String>
    #   resp.data.snapshots[0].node_snapshots[0].node_group_configuration.replica_availability_zones[0] #=> String
    #   resp.data.snapshots[0].node_snapshots[0].node_group_configuration.primary_outpost_arn #=> String
    #   resp.data.snapshots[0].node_snapshots[0].node_group_configuration.replica_outpost_arns #=> Array<String>
    #   resp.data.snapshots[0].node_snapshots[0].node_group_configuration.replica_outpost_arns[0] #=> String
    #   resp.data.snapshots[0].node_snapshots[0].cache_size #=> String
    #   resp.data.snapshots[0].node_snapshots[0].cache_node_create_time #=> Time
    #   resp.data.snapshots[0].node_snapshots[0].snapshot_create_time #=> Time
    #   resp.data.snapshots[0].kms_key_id #=> String
    #   resp.data.snapshots[0].arn #=> String
    #   resp.data.snapshots[0].data_tiering #=> String, one of ["enabled", "disabled"]
    #
    def describe_snapshots(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeSnapshotsInput.build(params)
      response_body = StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::CacheClusterNotFoundFault, Errors::SnapshotNotFoundFault, Errors::InvalidParameterCombinationException]),
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

    # <p>Returns details of the update actions </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeUpdateActionsInput}.
    #
    # @option params [String] :service_update_name
    #   <p>The unique ID of the service update</p>
    #
    # @option params [Array<String>] :replication_group_ids
    #   <p>The replication group IDs</p>
    #
    # @option params [Array<String>] :cache_cluster_ids
    #   <p>The cache cluster IDs</p>
    #
    # @option params [String] :engine
    #   <p>The Elasticache engine to which the update applies. Either Redis or Memcached </p>
    #
    # @option params [Array<String>] :service_update_status
    #   <p>The status of the service update</p>
    #
    # @option params [TimeRangeFilter] :service_update_time_range
    #   <p>The range of time specified to search for service updates that are in available status</p>
    #
    # @option params [Array<String>] :update_action_status
    #   <p>The status of the update action.</p>
    #
    # @option params [Boolean] :show_node_level_update_status
    #   <p>Dictates whether to include node level update status in the response </p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response</p>
    #
    # @option params [String] :marker
    #   <p>An optional marker returned from a prior request.
    #              Use this marker for pagination of results from this operation. If this
    #              parameter is specified, the response includes only records beyond the marker, up to the
    #              value specified by <code>MaxRecords</code>.</p>
    #
    # @return [Types::DescribeUpdateActionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_update_actions(
    #     service_update_name: 'ServiceUpdateName',
    #     replication_group_ids: [
    #       'member'
    #     ],
    #     cache_cluster_ids: [
    #       'member'
    #     ],
    #     engine: 'Engine',
    #     service_update_status: [
    #       'available' # accepts ["available", "cancelled", "expired"]
    #     ],
    #     service_update_time_range: {
    #       start_time: Time.now,
    #       end_time: Time.now
    #     },
    #     update_action_status: [
    #       'not-applied' # accepts ["not-applied", "waiting-to-start", "in-progress", "stopping", "stopped", "complete", "scheduling", "scheduled", "not-applicable"]
    #     ],
    #     show_node_level_update_status: false,
    #     max_records: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeUpdateActionsOutput
    #   resp.data.marker #=> String
    #   resp.data.update_actions #=> Array<UpdateAction>
    #   resp.data.update_actions[0] #=> Types::UpdateAction
    #   resp.data.update_actions[0].replication_group_id #=> String
    #   resp.data.update_actions[0].cache_cluster_id #=> String
    #   resp.data.update_actions[0].service_update_name #=> String
    #   resp.data.update_actions[0].service_update_release_date #=> Time
    #   resp.data.update_actions[0].service_update_severity #=> String, one of ["critical", "important", "medium", "low"]
    #   resp.data.update_actions[0].service_update_status #=> String, one of ["available", "cancelled", "expired"]
    #   resp.data.update_actions[0].service_update_recommended_apply_by_date #=> Time
    #   resp.data.update_actions[0].service_update_type #=> String, one of ["security-update"]
    #   resp.data.update_actions[0].update_action_available_date #=> Time
    #   resp.data.update_actions[0].update_action_status #=> String, one of ["not-applied", "waiting-to-start", "in-progress", "stopping", "stopped", "complete", "scheduling", "scheduled", "not-applicable"]
    #   resp.data.update_actions[0].nodes_updated #=> String
    #   resp.data.update_actions[0].update_action_status_modified_date #=> Time
    #   resp.data.update_actions[0].sla_met #=> String, one of ["yes", "no", "n/a"]
    #   resp.data.update_actions[0].node_group_update_status #=> Array<NodeGroupUpdateStatus>
    #   resp.data.update_actions[0].node_group_update_status[0] #=> Types::NodeGroupUpdateStatus
    #   resp.data.update_actions[0].node_group_update_status[0].node_group_id #=> String
    #   resp.data.update_actions[0].node_group_update_status[0].node_group_member_update_status #=> Array<NodeGroupMemberUpdateStatus>
    #   resp.data.update_actions[0].node_group_update_status[0].node_group_member_update_status[0] #=> Types::NodeGroupMemberUpdateStatus
    #   resp.data.update_actions[0].node_group_update_status[0].node_group_member_update_status[0].cache_cluster_id #=> String
    #   resp.data.update_actions[0].node_group_update_status[0].node_group_member_update_status[0].cache_node_id #=> String
    #   resp.data.update_actions[0].node_group_update_status[0].node_group_member_update_status[0].node_update_status #=> String, one of ["not-applied", "waiting-to-start", "in-progress", "stopping", "stopped", "complete"]
    #   resp.data.update_actions[0].node_group_update_status[0].node_group_member_update_status[0].node_deletion_date #=> Time
    #   resp.data.update_actions[0].node_group_update_status[0].node_group_member_update_status[0].node_update_start_date #=> Time
    #   resp.data.update_actions[0].node_group_update_status[0].node_group_member_update_status[0].node_update_end_date #=> Time
    #   resp.data.update_actions[0].node_group_update_status[0].node_group_member_update_status[0].node_update_initiated_by #=> String, one of ["system", "customer"]
    #   resp.data.update_actions[0].node_group_update_status[0].node_group_member_update_status[0].node_update_initiated_date #=> Time
    #   resp.data.update_actions[0].node_group_update_status[0].node_group_member_update_status[0].node_update_status_modified_date #=> Time
    #   resp.data.update_actions[0].cache_node_update_status #=> Array<CacheNodeUpdateStatus>
    #   resp.data.update_actions[0].cache_node_update_status[0] #=> Types::CacheNodeUpdateStatus
    #   resp.data.update_actions[0].cache_node_update_status[0].cache_node_id #=> String
    #   resp.data.update_actions[0].cache_node_update_status[0].node_update_status #=> String, one of ["not-applied", "waiting-to-start", "in-progress", "stopping", "stopped", "complete"]
    #   resp.data.update_actions[0].cache_node_update_status[0].node_deletion_date #=> Time
    #   resp.data.update_actions[0].cache_node_update_status[0].node_update_start_date #=> Time
    #   resp.data.update_actions[0].cache_node_update_status[0].node_update_end_date #=> Time
    #   resp.data.update_actions[0].cache_node_update_status[0].node_update_initiated_by #=> String, one of ["system", "customer"]
    #   resp.data.update_actions[0].cache_node_update_status[0].node_update_initiated_date #=> Time
    #   resp.data.update_actions[0].cache_node_update_status[0].node_update_status_modified_date #=> Time
    #   resp.data.update_actions[0].estimated_update_time #=> String
    #   resp.data.update_actions[0].engine #=> String
    #
    def describe_update_actions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeUpdateActionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeUpdateActionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeUpdateActions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::InvalidParameterCombinationException]),
        data_parser: Parsers::DescribeUpdateActions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeUpdateActions,
        stubs: @stubs,
        params_class: Params::DescribeUpdateActionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_update_actions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of user groups.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeUserGroupsInput}.
    #
    # @option params [String] :user_group_id
    #   <p>The ID of the user group.</p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than the specified MaxRecords value, a marker is included in the response so that the remaining results can be retrieved. </p>
    #
    # @option params [String] :marker
    #   <p>An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by MaxRecords. ></p>
    #
    # @return [Types::DescribeUserGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_user_groups(
    #     user_group_id: 'UserGroupId',
    #     max_records: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeUserGroupsOutput
    #   resp.data.user_groups #=> Array<UserGroup>
    #   resp.data.user_groups[0] #=> Types::UserGroup
    #   resp.data.user_groups[0].user_group_id #=> String
    #   resp.data.user_groups[0].status #=> String
    #   resp.data.user_groups[0].engine #=> String
    #   resp.data.user_groups[0].user_ids #=> Array<String>
    #   resp.data.user_groups[0].user_ids[0] #=> String
    #   resp.data.user_groups[0].minimum_engine_version #=> String
    #   resp.data.user_groups[0].pending_changes #=> Types::UserGroupPendingChanges
    #   resp.data.user_groups[0].pending_changes.user_ids_to_remove #=> Array<String>
    #   resp.data.user_groups[0].pending_changes.user_ids_to_add #=> Array<String>
    #   resp.data.user_groups[0].replication_groups #=> Array<String>
    #   resp.data.user_groups[0].replication_groups[0] #=> String
    #   resp.data.user_groups[0].arn #=> String
    #   resp.data.marker #=> String
    #
    def describe_user_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeUserGroupsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeUserGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeUserGroups
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterCombinationException, Errors::ServiceLinkedRoleNotFoundFault, Errors::UserGroupNotFoundFault]),
        data_parser: Parsers::DescribeUserGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeUserGroups,
        stubs: @stubs,
        params_class: Params::DescribeUserGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_user_groups
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
    # @option params [String] :engine
    #   <p>The Redis engine. </p>
    #
    # @option params [String] :user_id
    #   <p>The ID of the user.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>Filter to determine the list of User IDs to return.</p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than the specified MaxRecords value, a marker is included in the response so that the remaining results can be retrieved. </p>
    #
    # @option params [String] :marker
    #   <p>An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by MaxRecords. ></p>
    #
    # @return [Types::DescribeUsersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_users(
    #     engine: 'Engine',
    #     user_id: 'UserId',
    #     filters: [
    #       {
    #         name: 'Name', # required
    #         values: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #     max_records: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeUsersOutput
    #   resp.data.users #=> Array<User>
    #   resp.data.users[0] #=> Types::User
    #   resp.data.users[0].user_id #=> String
    #   resp.data.users[0].user_name #=> String
    #   resp.data.users[0].status #=> String
    #   resp.data.users[0].engine #=> String
    #   resp.data.users[0].minimum_engine_version #=> String
    #   resp.data.users[0].access_string #=> String
    #   resp.data.users[0].user_group_ids #=> Array<String>
    #   resp.data.users[0].user_group_ids[0] #=> String
    #   resp.data.users[0].authentication #=> Types::Authentication
    #   resp.data.users[0].authentication.type #=> String, one of ["password", "no-password"]
    #   resp.data.users[0].authentication.password_count #=> Integer
    #   resp.data.users[0].arn #=> String
    #   resp.data.marker #=> String
    #
    def describe_users(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeUsersInput.build(params)
      response_body = StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UserNotFoundFault, Errors::InvalidParameterCombinationException, Errors::ServiceLinkedRoleNotFoundFault]),
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

    # <p>Remove a secondary cluster from the Global datastore using the Global datastore name. The secondary cluster will no longer receive updates from the primary cluster, but will remain as a standalone cluster in that Amazon region.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateGlobalReplicationGroupInput}.
    #
    # @option params [String] :global_replication_group_id
    #   <p>The name of the Global datastore</p>
    #
    # @option params [String] :replication_group_id
    #   <p>The name of the secondary cluster you wish to remove from the Global datastore</p>
    #
    # @option params [String] :replication_group_region
    #   <p>The Amazon region of secondary cluster you wish to remove from the Global datastore</p>
    #
    # @return [Types::DisassociateGlobalReplicationGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_global_replication_group(
    #     global_replication_group_id: 'GlobalReplicationGroupId', # required
    #     replication_group_id: 'ReplicationGroupId', # required
    #     replication_group_region: 'ReplicationGroupRegion' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateGlobalReplicationGroupOutput
    #   resp.data.global_replication_group #=> Types::GlobalReplicationGroup
    #   resp.data.global_replication_group.global_replication_group_id #=> String
    #   resp.data.global_replication_group.global_replication_group_description #=> String
    #   resp.data.global_replication_group.status #=> String
    #   resp.data.global_replication_group.cache_node_type #=> String
    #   resp.data.global_replication_group.engine #=> String
    #   resp.data.global_replication_group.engine_version #=> String
    #   resp.data.global_replication_group.members #=> Array<GlobalReplicationGroupMember>
    #   resp.data.global_replication_group.members[0] #=> Types::GlobalReplicationGroupMember
    #   resp.data.global_replication_group.members[0].replication_group_id #=> String
    #   resp.data.global_replication_group.members[0].replication_group_region #=> String
    #   resp.data.global_replication_group.members[0].role #=> String
    #   resp.data.global_replication_group.members[0].automatic_failover #=> String, one of ["enabled", "disabled", "enabling", "disabling"]
    #   resp.data.global_replication_group.members[0].status #=> String
    #   resp.data.global_replication_group.cluster_enabled #=> Boolean
    #   resp.data.global_replication_group.global_node_groups #=> Array<GlobalNodeGroup>
    #   resp.data.global_replication_group.global_node_groups[0] #=> Types::GlobalNodeGroup
    #   resp.data.global_replication_group.global_node_groups[0].global_node_group_id #=> String
    #   resp.data.global_replication_group.global_node_groups[0].slots #=> String
    #   resp.data.global_replication_group.auth_token_enabled #=> Boolean
    #   resp.data.global_replication_group.transit_encryption_enabled #=> Boolean
    #   resp.data.global_replication_group.at_rest_encryption_enabled #=> Boolean
    #   resp.data.global_replication_group.arn #=> String
    #
    def disassociate_global_replication_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateGlobalReplicationGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateGlobalReplicationGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateGlobalReplicationGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::GlobalReplicationGroupNotFoundFault, Errors::InvalidGlobalReplicationGroupStateFault, Errors::InvalidParameterCombinationException]),
        data_parser: Parsers::DisassociateGlobalReplicationGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateGlobalReplicationGroup,
        stubs: @stubs,
        params_class: Params::DisassociateGlobalReplicationGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_global_replication_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Used to failover the primary region to a selected secondary region. The selected secondary region will become primary, and all other clusters will become secondary.</p>
    #
    # @param [Hash] params
    #   See {Types::FailoverGlobalReplicationGroupInput}.
    #
    # @option params [String] :global_replication_group_id
    #   <p>The name of the Global datastore</p>
    #
    # @option params [String] :primary_region
    #   <p>The Amazon region of the primary cluster of the Global datastore</p>
    #
    # @option params [String] :primary_replication_group_id
    #   <p>The name of the primary replication group</p>
    #
    # @return [Types::FailoverGlobalReplicationGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.failover_global_replication_group(
    #     global_replication_group_id: 'GlobalReplicationGroupId', # required
    #     primary_region: 'PrimaryRegion', # required
    #     primary_replication_group_id: 'PrimaryReplicationGroupId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::FailoverGlobalReplicationGroupOutput
    #   resp.data.global_replication_group #=> Types::GlobalReplicationGroup
    #   resp.data.global_replication_group.global_replication_group_id #=> String
    #   resp.data.global_replication_group.global_replication_group_description #=> String
    #   resp.data.global_replication_group.status #=> String
    #   resp.data.global_replication_group.cache_node_type #=> String
    #   resp.data.global_replication_group.engine #=> String
    #   resp.data.global_replication_group.engine_version #=> String
    #   resp.data.global_replication_group.members #=> Array<GlobalReplicationGroupMember>
    #   resp.data.global_replication_group.members[0] #=> Types::GlobalReplicationGroupMember
    #   resp.data.global_replication_group.members[0].replication_group_id #=> String
    #   resp.data.global_replication_group.members[0].replication_group_region #=> String
    #   resp.data.global_replication_group.members[0].role #=> String
    #   resp.data.global_replication_group.members[0].automatic_failover #=> String, one of ["enabled", "disabled", "enabling", "disabling"]
    #   resp.data.global_replication_group.members[0].status #=> String
    #   resp.data.global_replication_group.cluster_enabled #=> Boolean
    #   resp.data.global_replication_group.global_node_groups #=> Array<GlobalNodeGroup>
    #   resp.data.global_replication_group.global_node_groups[0] #=> Types::GlobalNodeGroup
    #   resp.data.global_replication_group.global_node_groups[0].global_node_group_id #=> String
    #   resp.data.global_replication_group.global_node_groups[0].slots #=> String
    #   resp.data.global_replication_group.auth_token_enabled #=> Boolean
    #   resp.data.global_replication_group.transit_encryption_enabled #=> Boolean
    #   resp.data.global_replication_group.at_rest_encryption_enabled #=> Boolean
    #   resp.data.global_replication_group.arn #=> String
    #
    def failover_global_replication_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::FailoverGlobalReplicationGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::FailoverGlobalReplicationGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::FailoverGlobalReplicationGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::GlobalReplicationGroupNotFoundFault, Errors::InvalidGlobalReplicationGroupStateFault, Errors::InvalidParameterCombinationException]),
        data_parser: Parsers::FailoverGlobalReplicationGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::FailoverGlobalReplicationGroup,
        stubs: @stubs,
        params_class: Params::FailoverGlobalReplicationGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :failover_global_replication_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Increase the number of node groups in the Global datastore</p>
    #
    # @param [Hash] params
    #   See {Types::IncreaseNodeGroupsInGlobalReplicationGroupInput}.
    #
    # @option params [String] :global_replication_group_id
    #   <p>The name of the Global datastore</p>
    #
    # @option params [Integer] :node_group_count
    #   <p>The number of node groups you wish to add</p>
    #
    # @option params [Array<RegionalConfiguration>] :regional_configurations
    #   <p>Describes the replication group IDs, the Amazon regions where they are stored and the shard configuration for each that comprise the Global datastore</p>
    #
    # @option params [Boolean] :apply_immediately
    #   <p>Indicates that the process begins immediately. At present, the only permitted value for this parameter is true.</p>
    #
    # @return [Types::IncreaseNodeGroupsInGlobalReplicationGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.increase_node_groups_in_global_replication_group(
    #     global_replication_group_id: 'GlobalReplicationGroupId', # required
    #     node_group_count: 1, # required
    #     regional_configurations: [
    #       {
    #         replication_group_id: 'ReplicationGroupId', # required
    #         replication_group_region: 'ReplicationGroupRegion', # required
    #         resharding_configuration: [
    #           {
    #             node_group_id: 'NodeGroupId',
    #             preferred_availability_zones: [
    #               'member'
    #             ]
    #           }
    #         ] # required
    #       }
    #     ],
    #     apply_immediately: false # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::IncreaseNodeGroupsInGlobalReplicationGroupOutput
    #   resp.data.global_replication_group #=> Types::GlobalReplicationGroup
    #   resp.data.global_replication_group.global_replication_group_id #=> String
    #   resp.data.global_replication_group.global_replication_group_description #=> String
    #   resp.data.global_replication_group.status #=> String
    #   resp.data.global_replication_group.cache_node_type #=> String
    #   resp.data.global_replication_group.engine #=> String
    #   resp.data.global_replication_group.engine_version #=> String
    #   resp.data.global_replication_group.members #=> Array<GlobalReplicationGroupMember>
    #   resp.data.global_replication_group.members[0] #=> Types::GlobalReplicationGroupMember
    #   resp.data.global_replication_group.members[0].replication_group_id #=> String
    #   resp.data.global_replication_group.members[0].replication_group_region #=> String
    #   resp.data.global_replication_group.members[0].role #=> String
    #   resp.data.global_replication_group.members[0].automatic_failover #=> String, one of ["enabled", "disabled", "enabling", "disabling"]
    #   resp.data.global_replication_group.members[0].status #=> String
    #   resp.data.global_replication_group.cluster_enabled #=> Boolean
    #   resp.data.global_replication_group.global_node_groups #=> Array<GlobalNodeGroup>
    #   resp.data.global_replication_group.global_node_groups[0] #=> Types::GlobalNodeGroup
    #   resp.data.global_replication_group.global_node_groups[0].global_node_group_id #=> String
    #   resp.data.global_replication_group.global_node_groups[0].slots #=> String
    #   resp.data.global_replication_group.auth_token_enabled #=> Boolean
    #   resp.data.global_replication_group.transit_encryption_enabled #=> Boolean
    #   resp.data.global_replication_group.at_rest_encryption_enabled #=> Boolean
    #   resp.data.global_replication_group.arn #=> String
    #
    def increase_node_groups_in_global_replication_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::IncreaseNodeGroupsInGlobalReplicationGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::IncreaseNodeGroupsInGlobalReplicationGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::IncreaseNodeGroupsInGlobalReplicationGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::GlobalReplicationGroupNotFoundFault, Errors::InvalidGlobalReplicationGroupStateFault]),
        data_parser: Parsers::IncreaseNodeGroupsInGlobalReplicationGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::IncreaseNodeGroupsInGlobalReplicationGroup,
        stubs: @stubs,
        params_class: Params::IncreaseNodeGroupsInGlobalReplicationGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :increase_node_groups_in_global_replication_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Dynamically increases the number of replicas in a Redis (cluster mode disabled) replication group or the number of
    #             replica nodes in one or more node groups (shards) of a Redis (cluster mode enabled) replication group. This operation
    #             is performed with no cluster down time.</p>
    #
    # @param [Hash] params
    #   See {Types::IncreaseReplicaCountInput}.
    #
    # @option params [String] :replication_group_id
    #   <p>The id of the replication group to which you want to add replica nodes.</p>
    #
    # @option params [Integer] :new_replica_count
    #   <p>The number of read replica nodes you want at the completion of this operation.
    #               For Redis (cluster mode disabled) replication groups, this is the number of replica nodes in the
    #               replication group. For Redis (cluster mode enabled) replication groups, this is the number of
    #               replica nodes in each of the replication group's node groups.</p>
    #
    # @option params [Array<ConfigureShard>] :replica_configuration
    #   <p>A list of <code>ConfigureShard</code> objects that can be used to configure each shard
    #               in a Redis (cluster mode enabled) replication group. The <code>ConfigureShard</code> has three members:
    #               <code>NewReplicaCount</code>, <code>NodeGroupId</code>, and <code>PreferredAvailabilityZones</code>.</p>
    #
    # @option params [Boolean] :apply_immediately
    #   <p>If <code>True</code>, the number of replica nodes is increased immediately.
    #
    #               <code>ApplyImmediately=False</code> is not currently supported.</p>
    #
    # @return [Types::IncreaseReplicaCountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.increase_replica_count(
    #     replication_group_id: 'ReplicationGroupId', # required
    #     new_replica_count: 1,
    #     replica_configuration: [
    #       {
    #         node_group_id: 'NodeGroupId', # required
    #         new_replica_count: 1, # required
    #         preferred_availability_zones: [
    #           'member'
    #         ],
    #         preferred_outpost_arns: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     apply_immediately: false # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::IncreaseReplicaCountOutput
    #   resp.data.replication_group #=> Types::ReplicationGroup
    #   resp.data.replication_group.replication_group_id #=> String
    #   resp.data.replication_group.description #=> String
    #   resp.data.replication_group.global_replication_group_info #=> Types::GlobalReplicationGroupInfo
    #   resp.data.replication_group.global_replication_group_info.global_replication_group_id #=> String
    #   resp.data.replication_group.global_replication_group_info.global_replication_group_member_role #=> String
    #   resp.data.replication_group.status #=> String
    #   resp.data.replication_group.pending_modified_values #=> Types::ReplicationGroupPendingModifiedValues
    #   resp.data.replication_group.pending_modified_values.primary_cluster_id #=> String
    #   resp.data.replication_group.pending_modified_values.automatic_failover_status #=> String, one of ["enabled", "disabled"]
    #   resp.data.replication_group.pending_modified_values.resharding #=> Types::ReshardingStatus
    #   resp.data.replication_group.pending_modified_values.resharding.slot_migration #=> Types::SlotMigration
    #   resp.data.replication_group.pending_modified_values.resharding.slot_migration.progress_percentage #=> Float
    #   resp.data.replication_group.pending_modified_values.auth_token_status #=> String, one of ["SETTING", "ROTATING"]
    #   resp.data.replication_group.pending_modified_values.user_groups #=> Types::UserGroupsUpdateStatus
    #   resp.data.replication_group.pending_modified_values.user_groups.user_group_ids_to_add #=> Array<String>
    #   resp.data.replication_group.pending_modified_values.user_groups.user_group_ids_to_add[0] #=> String
    #   resp.data.replication_group.pending_modified_values.user_groups.user_group_ids_to_remove #=> Array<String>
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations #=> Array<PendingLogDeliveryConfiguration>
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0] #=> Types::PendingLogDeliveryConfiguration
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].log_type #=> String, one of ["slow-log", "engine-log"]
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].destination_type #=> String, one of ["cloudwatch-logs", "kinesis-firehose"]
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].destination_details #=> Types::DestinationDetails
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].destination_details.cloud_watch_logs_details #=> Types::CloudWatchLogsDestinationDetails
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].destination_details.cloud_watch_logs_details.log_group #=> String
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].destination_details.kinesis_firehose_details #=> Types::KinesisFirehoseDestinationDetails
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].destination_details.kinesis_firehose_details.delivery_stream #=> String
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].log_format #=> String, one of ["text", "json"]
    #   resp.data.replication_group.member_clusters #=> Array<String>
    #   resp.data.replication_group.member_clusters[0] #=> String
    #   resp.data.replication_group.node_groups #=> Array<NodeGroup>
    #   resp.data.replication_group.node_groups[0] #=> Types::NodeGroup
    #   resp.data.replication_group.node_groups[0].node_group_id #=> String
    #   resp.data.replication_group.node_groups[0].status #=> String
    #   resp.data.replication_group.node_groups[0].primary_endpoint #=> Types::Endpoint
    #   resp.data.replication_group.node_groups[0].primary_endpoint.address #=> String
    #   resp.data.replication_group.node_groups[0].primary_endpoint.port #=> Integer
    #   resp.data.replication_group.node_groups[0].reader_endpoint #=> Types::Endpoint
    #   resp.data.replication_group.node_groups[0].slots #=> String
    #   resp.data.replication_group.node_groups[0].node_group_members #=> Array<NodeGroupMember>
    #   resp.data.replication_group.node_groups[0].node_group_members[0] #=> Types::NodeGroupMember
    #   resp.data.replication_group.node_groups[0].node_group_members[0].cache_cluster_id #=> String
    #   resp.data.replication_group.node_groups[0].node_group_members[0].cache_node_id #=> String
    #   resp.data.replication_group.node_groups[0].node_group_members[0].read_endpoint #=> Types::Endpoint
    #   resp.data.replication_group.node_groups[0].node_group_members[0].preferred_availability_zone #=> String
    #   resp.data.replication_group.node_groups[0].node_group_members[0].preferred_outpost_arn #=> String
    #   resp.data.replication_group.node_groups[0].node_group_members[0].current_role #=> String
    #   resp.data.replication_group.snapshotting_cluster_id #=> String
    #   resp.data.replication_group.automatic_failover #=> String, one of ["enabled", "disabled", "enabling", "disabling"]
    #   resp.data.replication_group.multi_az #=> String, one of ["enabled", "disabled"]
    #   resp.data.replication_group.configuration_endpoint #=> Types::Endpoint
    #   resp.data.replication_group.snapshot_retention_limit #=> Integer
    #   resp.data.replication_group.snapshot_window #=> String
    #   resp.data.replication_group.cluster_enabled #=> Boolean
    #   resp.data.replication_group.cache_node_type #=> String
    #   resp.data.replication_group.auth_token_enabled #=> Boolean
    #   resp.data.replication_group.auth_token_last_modified_date #=> Time
    #   resp.data.replication_group.transit_encryption_enabled #=> Boolean
    #   resp.data.replication_group.at_rest_encryption_enabled #=> Boolean
    #   resp.data.replication_group.member_clusters_outpost_arns #=> Array<String>
    #   resp.data.replication_group.member_clusters_outpost_arns[0] #=> String
    #   resp.data.replication_group.kms_key_id #=> String
    #   resp.data.replication_group.arn #=> String
    #   resp.data.replication_group.user_group_ids #=> Array<String>
    #   resp.data.replication_group.log_delivery_configurations #=> Array<LogDeliveryConfiguration>
    #   resp.data.replication_group.log_delivery_configurations[0] #=> Types::LogDeliveryConfiguration
    #   resp.data.replication_group.log_delivery_configurations[0].log_type #=> String, one of ["slow-log", "engine-log"]
    #   resp.data.replication_group.log_delivery_configurations[0].destination_type #=> String, one of ["cloudwatch-logs", "kinesis-firehose"]
    #   resp.data.replication_group.log_delivery_configurations[0].destination_details #=> Types::DestinationDetails
    #   resp.data.replication_group.log_delivery_configurations[0].log_format #=> String, one of ["text", "json"]
    #   resp.data.replication_group.log_delivery_configurations[0].status #=> String, one of ["active", "enabling", "modifying", "disabling", "error"]
    #   resp.data.replication_group.log_delivery_configurations[0].message #=> String
    #   resp.data.replication_group.replication_group_create_time #=> Time
    #   resp.data.replication_group.data_tiering #=> String, one of ["enabled", "disabled"]
    #
    def increase_replica_count(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::IncreaseReplicaCountInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::IncreaseReplicaCountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::IncreaseReplicaCount
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidVPCNetworkStateFault, Errors::InvalidKMSKeyFault, Errors::NoOperationFault, Errors::InvalidCacheClusterStateFault, Errors::NodeGroupsPerReplicationGroupQuotaExceededFault, Errors::NodeQuotaForCustomerExceededFault, Errors::InvalidReplicationGroupStateFault, Errors::InvalidParameterValueException, Errors::ClusterQuotaForCustomerExceededFault, Errors::InsufficientCacheClusterCapacityFault, Errors::InvalidParameterCombinationException, Errors::ReplicationGroupNotFoundFault]),
        data_parser: Parsers::IncreaseReplicaCount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::IncreaseReplicaCount,
        stubs: @stubs,
        params_class: Params::IncreaseReplicaCountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :increase_replica_count
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all available node types that you
    #             can scale your Redis cluster's or replication group's current node type.</p>
    #
    #         <p>When you use the <code>ModifyCacheCluster</code> or <code>ModifyReplicationGroup</code> operations to
    #             scale your cluster or replication group, the value of the <code>CacheNodeType</code> parameter
    #             must be one of the node types returned by this operation.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAllowedNodeTypeModificationsInput}.
    #
    # @option params [String] :cache_cluster_id
    #   <p>The name of the cluster you want to scale up to a larger node instanced type.
    #               ElastiCache uses the cluster id to identify the current node type of this cluster and from that to create a list of node types you can scale up to.</p>
    #
    #           <important>
    #               <p>You must provide a value for either the <code>CacheClusterId</code> or the
    #               <code>ReplicationGroupId</code>.</p>
    #            </important>
    #
    # @option params [String] :replication_group_id
    #   <p>The name of the replication group want to scale up to a larger node type.
    #           ElastiCache uses the replication group id to identify the current node type being used by
    #           this replication group, and from that to create a list of node types you can scale up to.</p>
    #
    #           <important>
    #               <p>You must provide a value for either the <code>CacheClusterId</code> or the
    #               <code>ReplicationGroupId</code>.</p>
    #            </important>
    #
    # @return [Types::ListAllowedNodeTypeModificationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_allowed_node_type_modifications(
    #     cache_cluster_id: 'CacheClusterId',
    #     replication_group_id: 'ReplicationGroupId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAllowedNodeTypeModificationsOutput
    #   resp.data.scale_up_modifications #=> Array<String>
    #   resp.data.scale_up_modifications[0] #=> String
    #   resp.data.scale_down_modifications #=> Array<String>
    #
    def list_allowed_node_type_modifications(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAllowedNodeTypeModificationsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAllowedNodeTypeModificationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAllowedNodeTypeModifications
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::CacheClusterNotFoundFault, Errors::InvalidParameterCombinationException, Errors::ReplicationGroupNotFoundFault]),
        data_parser: Parsers::ListAllowedNodeTypeModifications
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAllowedNodeTypeModifications,
        stubs: @stubs,
        params_class: Params::ListAllowedNodeTypeModificationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_allowed_node_type_modifications
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all tags currently on a  named resource.</p>
    #          <p>    A  tag is a key-value pair where the key and value are case-sensitive.
    #             You can use tags to categorize and track all your ElastiCache resources, with the exception of global replication group. When you add or remove tags on replication groups, those actions will be replicated to all nodes in the replication group.
    #      For more information, see <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/IAM.ResourceLevelPermissions.html">Resource-level permissions</a>.</p>
    #
    #         <p>If the cluster is not in the <i>available</i> state, <code>ListTagsForResource</code>
    #             returns an error.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_name
    #   <p>The Amazon Resource Name (ARN) of the resource for which you want the list of tags,
    #               for example <code>arn:aws:elasticache:us-west-2:0123456789:cluster:myCluster</code>
    #               or <code>arn:aws:elasticache:us-west-2:0123456789:snapshot:mySnapshot</code>.</p>
    #           <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a>.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_name: 'ResourceName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForResourceOutput
    #   resp.data.tag_list #=> Array<Tag>
    #   resp.data.tag_list[0] #=> Types::Tag
    #   resp.data.tag_list[0].key #=> String
    #   resp.data.tag_list[0].value #=> String
    #
    def list_tags_for_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTagsForResourceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTagsForResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTagsForResource
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ReservedCacheNodeNotFoundFault, Errors::CacheSecurityGroupNotFoundFault, Errors::CacheParameterGroupNotFoundFault, Errors::InvalidARNFault, Errors::CacheClusterNotFoundFault, Errors::SnapshotNotFoundFault, Errors::UserNotFoundFault, Errors::CacheSubnetGroupNotFoundFault, Errors::InvalidReplicationGroupStateFault, Errors::ReplicationGroupNotFoundFault, Errors::UserGroupNotFoundFault]),
        data_parser: Parsers::ListTagsForResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTagsForResource,
        stubs: @stubs,
        params_class: Params::ListTagsForResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_tags_for_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies the settings for a cluster. You
    #             can use this operation to change one or more cluster configuration parameters by
    #             specifying the parameters and the new values.</p>
    #
    # @param [Hash] params
    #   See {Types::ModifyCacheClusterInput}.
    #
    # @option params [String] :cache_cluster_id
    #   <p>The cluster identifier. This value is stored as a lowercase string.</p>
    #
    # @option params [Integer] :num_cache_nodes
    #   <p>The number of cache nodes that the cluster should have.
    #               If the value for <code>NumCacheNodes</code> is greater than the sum of the number of current cache nodes and
    #               the number of cache nodes pending creation (which may be zero), more nodes are added.
    #               If the value is less than the number of existing cache nodes,  nodes are removed.
    #               If the value is equal to the number of current cache nodes,
    #                any pending add or remove requests are canceled.</p>
    #           <p>If you are removing cache nodes, you must
    #               use the <code>CacheNodeIdsToRemove</code> parameter to provide the IDs of the specific cache nodes to remove.</p>
    #           <p>For clusters running Redis, this value must be 1.
    #       For clusters running Memcached, this value must be between 1 and 40.</p>
    #
    #           <note>
    #               <p>Adding or removing Memcached cache nodes can be applied immediately or as a pending operation (see <code>ApplyImmediately</code>).</p>
    #               <p>A pending operation to modify the number of cache nodes in a cluster during its maintenance window,
    #               whether by adding or removing nodes in accordance with the scale out architecture, is not queued.
    #               The customer's latest request to add or remove nodes to the cluster overrides any previous pending operations to modify the
    #               number of cache nodes in the cluster.
    #               For example, a request to remove 2 nodes would override a previous pending operation to remove 3 nodes.
    #               Similarly, a request to add 2 nodes would override a previous pending operation to remove 3 nodes and vice versa.
    #               As Memcached cache nodes may now be provisioned in different Availability Zones with flexible cache node placement,
    #               a request to add nodes does not automatically override a previous pending operation to add nodes.
    #               The customer can modify the previous pending operation to add more nodes or explicitly cancel the pending request and
    #               retry the new request.
    #               To cancel pending operations to modify the number of cache nodes in a cluster,
    #               use the <code>ModifyCacheCluster</code> request and
    #               set <code>NumCacheNodes</code> equal to the number of cache nodes currently in the cluster.</p>
    #            </note>
    #
    # @option params [Array<String>] :cache_node_ids_to_remove
    #   <p>A list of cache node IDs to be removed. A node ID is a numeric identifier (0001, 0002,
    #               etc.). This parameter is only valid when <code>NumCacheNodes</code> is less than the existing number
    #               of cache nodes. The number of cache node IDs supplied in this parameter must match the
    #               difference between the existing number of cache nodes in the cluster or pending cache nodes, whichever is
    #               greater, and the value of <code>NumCacheNodes</code> in the request.</p>
    #           <p>For example: If you have 3 active cache nodes, 7 pending cache nodes, and the number of cache nodes in this
    #           <code>ModifyCacheCluster</code> call is 5, you must list 2 (7 - 5) cache node IDs to remove.</p>
    #
    # @option params [String] :az_mode
    #   <p>Specifies whether the new nodes in this Memcached cluster are all created in a
    #               single Availability Zone or created across multiple Availability Zones.</p>
    #           <p>Valid values: <code>single-az</code> | <code>cross-az</code>.</p>
    #           <p>This option is only supported for Memcached clusters.</p>
    #           <note>
    #               <p>You cannot specify <code>single-az</code> if the Memcached cluster already has cache nodes in different Availability Zones.
    #               If <code>cross-az</code> is specified, existing Memcached nodes remain in their current Availability Zone.</p>
    #               <p>Only newly created nodes are located in different Availability Zones.
    #                   </p>
    #           </note>
    #
    # @option params [Array<String>] :new_availability_zones
    #   <note>
    #               <p>This option is only supported on Memcached clusters.</p>
    #            </note>
    #           <p>The list of Availability Zones where the new Memcached cache nodes are created.</p>
    #           <p>This parameter is only valid when <code>NumCacheNodes</code> in the request is greater
    #               than the sum of the number of active cache nodes and the number of cache nodes pending creation (which may be zero).
    #               The number of Availability Zones supplied in this list must match the cache nodes being added in this request.</p>
    #
    #           <p>Scenarios:</p>
    #               <ul>
    #               <li>
    #                      <p>
    #                     <b>Scenario 1:</b> You have 3 active nodes and wish to add 2 nodes.
    #                           Specify <code>NumCacheNodes=5</code> (3 + 2) and optionally specify two Availability Zones
    #                           for the two new nodes.</p>
    #                   </li>
    #               <li>
    #                      <p>
    #                     <b>Scenario 2:</b> You have 3 active nodes and 2 nodes pending creation
    #                           (from the scenario 1 call) and want to add 1 more node.
    #                           Specify <code>NumCacheNodes=6</code> ((3 + 2) + 1) and
    #                           optionally specify an Availability Zone for the new node.</p>
    #                   </li>
    #               <li>
    #                       <p>
    #                     <b>Scenario 3:</b> You want to cancel all pending operations.
    #                           Specify <code>NumCacheNodes=3</code> to cancel all pending operations.</p>
    #                   </li>
    #            </ul>
    #
    #           <p>The Availability Zone placement of nodes pending creation cannot be modified. If you wish to cancel any nodes pending creation,
    #               add 0 nodes by setting <code>NumCacheNodes</code> to the number of current nodes.</p>
    #           <p>If <code>cross-az</code> is specified, existing Memcached nodes remain in their current Availability Zone.
    #               Only newly created nodes can be located in different Availability Zones.
    #               For guidance on how to move existing Memcached nodes to different Availability Zones, see the
    #               <b>Availability Zone Considerations</b> section of <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/mem-ug/CacheNodes.SupportedTypes.html">Cache Node Considerations for Memcached</a>.</p>
    #
    #            <p>
    #               <b>Impact of new add/remove requests upon pending requests</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>Scenario-1</p>
    #                  <ul>
    #                     <li>
    #                        <p>Pending Action: Delete</p>
    #                     </li>
    #                     <li>
    #                        <p>New Request: Delete</p>
    #                     </li>
    #                     <li>
    #                        <p>Result: The new delete, pending or immediate, replaces the pending delete.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Scenario-2</p>
    #                  <ul>
    #                     <li>
    #                        <p>Pending Action: Delete</p>
    #                     </li>
    #                     <li>
    #                        <p>New Request: Create</p>
    #                     </li>
    #                     <li>
    #                        <p>Result: The new create, pending or immediate, replaces the pending delete.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Scenario-3</p>
    #                  <ul>
    #                     <li>
    #                        <p>Pending Action: Create</p>
    #                     </li>
    #                     <li>
    #                        <p>New Request: Delete</p>
    #                     </li>
    #                     <li>
    #                        <p>Result: The new delete, pending or immediate, replaces the pending create.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Scenario-4</p>
    #                  <ul>
    #                     <li>
    #                        <p>Pending Action: Create</p>
    #                     </li>
    #                     <li>
    #                        <p>New Request: Create</p>
    #                     </li>
    #                     <li>
    #                        <p>Result: The new create is added to the pending create.</p>
    #                        <important>
    #                           <p>
    #                              <b>Important:</b>
    #                         If the new create request is <b>Apply Immediately - Yes</b>,
    #                         all creates are performed immediately.
    #                         If the new create request is <b>Apply Immediately - No</b>,
    #                         all creates are pending.</p>
    #                        </important>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #
    # @option params [Array<String>] :cache_security_group_names
    #   <p>A list of cache security group names to authorize on this cluster.
    #               This change is asynchronously applied as soon as possible.</p>
    #           <p>You can use this parameter only with clusters that are created outside of an Amazon Virtual Private Cloud (Amazon VPC).</p>
    #           <p>Constraints: Must contain no more than 255 alphanumeric characters. Must not be "Default".</p>
    #
    # @option params [Array<String>] :security_group_ids
    #   <p>Specifies the VPC Security Groups associated with the cluster.</p>
    #           <p>This parameter can be used only with clusters that are created in an Amazon Virtual Private Cloud (Amazon VPC).</p>
    #
    # @option params [String] :preferred_maintenance_window
    #   <p>Specifies the weekly time range during which maintenance
    #      on the cluster is performed. It is specified as a range in
    #      the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum
    #      maintenance window is a 60 minute period.</p>
    #            <p>Valid values for <code>ddd</code> are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>sun</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>mon</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>tue</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>wed</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>thu</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>fri</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sat</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>sun:23:00-mon:01:30</code>
    #            </p>
    #
    # @option params [String] :notification_topic_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon SNS topic to which notifications are sent.</p>
    #           <note>
    #               <p>The Amazon SNS topic owner must be same as the cluster owner.</p>
    #            </note>
    #
    # @option params [String] :cache_parameter_group_name
    #   <p>The name of the cache parameter group to apply to this cluster. This change is
    #               asynchronously applied as soon as possible for parameters when the
    #               <code>ApplyImmediately</code> parameter is specified as <code>true</code> for this request.</p>
    #
    # @option params [String] :notification_topic_status
    #   <p>The status of the Amazon SNS notification topic. Notifications are sent only if the
    #               status is <code>active</code>.</p>
    #           <p>Valid values: <code>active</code> | <code>inactive</code>
    #            </p>
    #
    # @option params [Boolean] :apply_immediately
    #   <p>If <code>true</code>, this parameter causes the modifications in this request and any
    #               pending modifications to be applied, asynchronously and as soon as possible, regardless
    #               of the <code>PreferredMaintenanceWindow</code> setting for the cluster.</p>
    #           <p>If <code>false</code>, changes to the cluster are applied on the next
    #               maintenance reboot, or the next failure reboot, whichever occurs first.</p>
    #           <important>
    #               <p>If you perform a <code>ModifyCacheCluster</code> before a pending modification is applied,
    #               the pending modification is replaced by the newer modification.</p>
    #            </important>
    #           <p>Valid values: <code>true</code> | <code>false</code>
    #            </p>
    #           <p>Default: <code>false</code>
    #            </p>
    #
    # @option params [String] :engine_version
    #   <p>The upgraded version of the cache engine to be run on the cache nodes.</p>
    #
    #           <p>
    #               <b>Important:</b> You can upgrade to a newer engine version
    #               (see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/SelectEngine.html#VersionManagement">Selecting a Cache Engine and Version</a>), but you cannot downgrade to an earlier engine version.
    #               If you want to use an earlier engine version,
    #               you must delete the existing cluster and create it anew with the earlier engine version. </p>
    #
    # @option params [Boolean] :auto_minor_version_upgrade
    #   <p> If you are running Redis engine version 6.0 or later, set this parameter to yes if you want to opt-in to the next auto minor version upgrade campaign. This parameter is disabled for previous versions. 
    #           </p>
    #
    # @option params [Integer] :snapshot_retention_limit
    #   <p>The number of days for which ElastiCache retains automatic cluster snapshots before
    #               deleting them. For example, if you set <code>SnapshotRetentionLimit</code> to 5,  a
    #               snapshot that was taken today is retained for 5 days before being deleted.</p>
    #           <note>
    #               <p>If the value of <code>SnapshotRetentionLimit</code> is set to zero (0), backups are turned off.</p>
    #            </note>
    #
    # @option params [String] :snapshot_window
    #   <p>The daily time range (in UTC) during which ElastiCache  begins taking a daily snapshot of
    #               your cluster. </p>
    #
    # @option params [String] :cache_node_type
    #   <p>A valid cache node type that you want to scale this cluster up to.</p>
    #
    # @option params [String] :auth_token
    #   <p>Reserved parameter. The password used to access a password protected server. This parameter must be specified with the <code>auth-token-update</code> parameter.
    #               Password constraints:</p>
    #               <ul>
    #               <li>
    #                  <p>Must be only printable ASCII characters</p>
    #               </li>
    #               <li>
    #                  <p>Must be at least 16 characters and no more than 128 characters in length</p>
    #               </li>
    #               <li>
    #                  <p>Cannot contain any of the following characters: '/', '"', or '@', '%'</p>
    #               </li>
    #            </ul>
    #            <p>
    #
    #               For more information, see AUTH password at <a href="http://redis.io/commands/AUTH">AUTH</a>.</p>
    #
    # @option params [String] :auth_token_update_strategy
    #   <p>Specifies the strategy to use to update the AUTH token. This parameter must be specified with the <code>auth-token</code> parameter.
    #               Possible values:</p>
    #               <ul>
    #               <li>
    #                  <p>Rotate</p>
    #               </li>
    #               <li>
    #                  <p>Set</p>
    #               </li>
    #            </ul>
    #           <p>
    #               For more information, see <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/auth.html">Authenticating Users with Redis AUTH</a>
    #            </p>
    #
    # @option params [Array<LogDeliveryConfigurationRequest>] :log_delivery_configurations
    #   <p>Specifies the destination, format and type of the logs.</p>
    #
    # @return [Types::ModifyCacheClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_cache_cluster(
    #     cache_cluster_id: 'CacheClusterId', # required
    #     num_cache_nodes: 1,
    #     cache_node_ids_to_remove: [
    #       'member'
    #     ],
    #     az_mode: 'single-az', # accepts ["single-az", "cross-az"]
    #     new_availability_zones: [
    #       'member'
    #     ],
    #     cache_security_group_names: [
    #       'member'
    #     ],
    #     security_group_ids: [
    #       'member'
    #     ],
    #     preferred_maintenance_window: 'PreferredMaintenanceWindow',
    #     notification_topic_arn: 'NotificationTopicArn',
    #     cache_parameter_group_name: 'CacheParameterGroupName',
    #     notification_topic_status: 'NotificationTopicStatus',
    #     apply_immediately: false,
    #     engine_version: 'EngineVersion',
    #     auto_minor_version_upgrade: false,
    #     snapshot_retention_limit: 1,
    #     snapshot_window: 'SnapshotWindow',
    #     cache_node_type: 'CacheNodeType',
    #     auth_token: 'AuthToken',
    #     auth_token_update_strategy: 'SET', # accepts ["SET", "ROTATE", "DELETE"]
    #     log_delivery_configurations: [
    #       {
    #         log_type: 'slow-log', # accepts ["slow-log", "engine-log"]
    #         destination_type: 'cloudwatch-logs', # accepts ["cloudwatch-logs", "kinesis-firehose"]
    #         destination_details: {
    #           cloud_watch_logs_details: {
    #             log_group: 'LogGroup'
    #           },
    #           kinesis_firehose_details: {
    #             delivery_stream: 'DeliveryStream'
    #           }
    #         },
    #         log_format: 'text', # accepts ["text", "json"]
    #         enabled: false
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifyCacheClusterOutput
    #   resp.data.cache_cluster #=> Types::CacheCluster
    #   resp.data.cache_cluster.cache_cluster_id #=> String
    #   resp.data.cache_cluster.configuration_endpoint #=> Types::Endpoint
    #   resp.data.cache_cluster.configuration_endpoint.address #=> String
    #   resp.data.cache_cluster.configuration_endpoint.port #=> Integer
    #   resp.data.cache_cluster.client_download_landing_page #=> String
    #   resp.data.cache_cluster.cache_node_type #=> String
    #   resp.data.cache_cluster.engine #=> String
    #   resp.data.cache_cluster.engine_version #=> String
    #   resp.data.cache_cluster.cache_cluster_status #=> String
    #   resp.data.cache_cluster.num_cache_nodes #=> Integer
    #   resp.data.cache_cluster.preferred_availability_zone #=> String
    #   resp.data.cache_cluster.preferred_outpost_arn #=> String
    #   resp.data.cache_cluster.cache_cluster_create_time #=> Time
    #   resp.data.cache_cluster.preferred_maintenance_window #=> String
    #   resp.data.cache_cluster.pending_modified_values #=> Types::PendingModifiedValues
    #   resp.data.cache_cluster.pending_modified_values.num_cache_nodes #=> Integer
    #   resp.data.cache_cluster.pending_modified_values.cache_node_ids_to_remove #=> Array<String>
    #   resp.data.cache_cluster.pending_modified_values.cache_node_ids_to_remove[0] #=> String
    #   resp.data.cache_cluster.pending_modified_values.engine_version #=> String
    #   resp.data.cache_cluster.pending_modified_values.cache_node_type #=> String
    #   resp.data.cache_cluster.pending_modified_values.auth_token_status #=> String, one of ["SETTING", "ROTATING"]
    #   resp.data.cache_cluster.pending_modified_values.log_delivery_configurations #=> Array<PendingLogDeliveryConfiguration>
    #   resp.data.cache_cluster.pending_modified_values.log_delivery_configurations[0] #=> Types::PendingLogDeliveryConfiguration
    #   resp.data.cache_cluster.pending_modified_values.log_delivery_configurations[0].log_type #=> String, one of ["slow-log", "engine-log"]
    #   resp.data.cache_cluster.pending_modified_values.log_delivery_configurations[0].destination_type #=> String, one of ["cloudwatch-logs", "kinesis-firehose"]
    #   resp.data.cache_cluster.pending_modified_values.log_delivery_configurations[0].destination_details #=> Types::DestinationDetails
    #   resp.data.cache_cluster.pending_modified_values.log_delivery_configurations[0].destination_details.cloud_watch_logs_details #=> Types::CloudWatchLogsDestinationDetails
    #   resp.data.cache_cluster.pending_modified_values.log_delivery_configurations[0].destination_details.cloud_watch_logs_details.log_group #=> String
    #   resp.data.cache_cluster.pending_modified_values.log_delivery_configurations[0].destination_details.kinesis_firehose_details #=> Types::KinesisFirehoseDestinationDetails
    #   resp.data.cache_cluster.pending_modified_values.log_delivery_configurations[0].destination_details.kinesis_firehose_details.delivery_stream #=> String
    #   resp.data.cache_cluster.pending_modified_values.log_delivery_configurations[0].log_format #=> String, one of ["text", "json"]
    #   resp.data.cache_cluster.notification_configuration #=> Types::NotificationConfiguration
    #   resp.data.cache_cluster.notification_configuration.topic_arn #=> String
    #   resp.data.cache_cluster.notification_configuration.topic_status #=> String
    #   resp.data.cache_cluster.cache_security_groups #=> Array<CacheSecurityGroupMembership>
    #   resp.data.cache_cluster.cache_security_groups[0] #=> Types::CacheSecurityGroupMembership
    #   resp.data.cache_cluster.cache_security_groups[0].cache_security_group_name #=> String
    #   resp.data.cache_cluster.cache_security_groups[0].status #=> String
    #   resp.data.cache_cluster.cache_parameter_group #=> Types::CacheParameterGroupStatus
    #   resp.data.cache_cluster.cache_parameter_group.cache_parameter_group_name #=> String
    #   resp.data.cache_cluster.cache_parameter_group.parameter_apply_status #=> String
    #   resp.data.cache_cluster.cache_parameter_group.cache_node_ids_to_reboot #=> Array<String>
    #   resp.data.cache_cluster.cache_subnet_group_name #=> String
    #   resp.data.cache_cluster.cache_nodes #=> Array<CacheNode>
    #   resp.data.cache_cluster.cache_nodes[0] #=> Types::CacheNode
    #   resp.data.cache_cluster.cache_nodes[0].cache_node_id #=> String
    #   resp.data.cache_cluster.cache_nodes[0].cache_node_status #=> String
    #   resp.data.cache_cluster.cache_nodes[0].cache_node_create_time #=> Time
    #   resp.data.cache_cluster.cache_nodes[0].endpoint #=> Types::Endpoint
    #   resp.data.cache_cluster.cache_nodes[0].parameter_group_status #=> String
    #   resp.data.cache_cluster.cache_nodes[0].source_cache_node_id #=> String
    #   resp.data.cache_cluster.cache_nodes[0].customer_availability_zone #=> String
    #   resp.data.cache_cluster.cache_nodes[0].customer_outpost_arn #=> String
    #   resp.data.cache_cluster.auto_minor_version_upgrade #=> Boolean
    #   resp.data.cache_cluster.security_groups #=> Array<SecurityGroupMembership>
    #   resp.data.cache_cluster.security_groups[0] #=> Types::SecurityGroupMembership
    #   resp.data.cache_cluster.security_groups[0].security_group_id #=> String
    #   resp.data.cache_cluster.security_groups[0].status #=> String
    #   resp.data.cache_cluster.replication_group_id #=> String
    #   resp.data.cache_cluster.snapshot_retention_limit #=> Integer
    #   resp.data.cache_cluster.snapshot_window #=> String
    #   resp.data.cache_cluster.auth_token_enabled #=> Boolean
    #   resp.data.cache_cluster.auth_token_last_modified_date #=> Time
    #   resp.data.cache_cluster.transit_encryption_enabled #=> Boolean
    #   resp.data.cache_cluster.at_rest_encryption_enabled #=> Boolean
    #   resp.data.cache_cluster.arn #=> String
    #   resp.data.cache_cluster.replication_group_log_delivery_enabled #=> Boolean
    #   resp.data.cache_cluster.log_delivery_configurations #=> Array<LogDeliveryConfiguration>
    #   resp.data.cache_cluster.log_delivery_configurations[0] #=> Types::LogDeliveryConfiguration
    #   resp.data.cache_cluster.log_delivery_configurations[0].log_type #=> String, one of ["slow-log", "engine-log"]
    #   resp.data.cache_cluster.log_delivery_configurations[0].destination_type #=> String, one of ["cloudwatch-logs", "kinesis-firehose"]
    #   resp.data.cache_cluster.log_delivery_configurations[0].destination_details #=> Types::DestinationDetails
    #   resp.data.cache_cluster.log_delivery_configurations[0].log_format #=> String, one of ["text", "json"]
    #   resp.data.cache_cluster.log_delivery_configurations[0].status #=> String, one of ["active", "enabling", "modifying", "disabling", "error"]
    #   resp.data.cache_cluster.log_delivery_configurations[0].message #=> String
    #
    def modify_cache_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyCacheClusterInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifyCacheClusterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifyCacheCluster
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::InvalidVPCNetworkStateFault, Errors::CacheSecurityGroupNotFoundFault, Errors::InvalidCacheSecurityGroupStateFault, Errors::CacheParameterGroupNotFoundFault, Errors::CacheClusterNotFoundFault, Errors::InvalidCacheClusterStateFault, Errors::NodeQuotaForClusterExceededFault, Errors::InsufficientCacheClusterCapacityFault, Errors::InvalidParameterCombinationException, Errors::NodeQuotaForCustomerExceededFault]),
        data_parser: Parsers::ModifyCacheCluster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifyCacheCluster,
        stubs: @stubs,
        params_class: Params::ModifyCacheClusterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_cache_cluster
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies the parameters of a cache
    #             parameter group. You can modify up to 20 parameters in a single request by submitting a
    #             list parameter name and value pairs.</p>
    #
    # @param [Hash] params
    #   See {Types::ModifyCacheParameterGroupInput}.
    #
    # @option params [String] :cache_parameter_group_name
    #   <p>The name of the cache parameter group to modify.</p>
    #
    # @option params [Array<ParameterNameValue>] :parameter_name_values
    #   <p>An array of parameter names and values for the parameter update. You must supply at least one parameter name and value; subsequent arguments are optional. A maximum of 20 parameters may be modified per request.</p>
    #
    # @return [Types::ModifyCacheParameterGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_cache_parameter_group(
    #     cache_parameter_group_name: 'CacheParameterGroupName', # required
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
    #   resp.data #=> Types::ModifyCacheParameterGroupOutput
    #   resp.data.cache_parameter_group_name #=> String
    #
    def modify_cache_parameter_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyCacheParameterGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifyCacheParameterGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifyCacheParameterGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::InvalidGlobalReplicationGroupStateFault, Errors::CacheParameterGroupNotFoundFault, Errors::InvalidParameterCombinationException, Errors::InvalidCacheParameterGroupStateFault]),
        data_parser: Parsers::ModifyCacheParameterGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifyCacheParameterGroup,
        stubs: @stubs,
        params_class: Params::ModifyCacheParameterGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_cache_parameter_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies an existing cache subnet group.</p>
    #
    # @param [Hash] params
    #   See {Types::ModifyCacheSubnetGroupInput}.
    #
    # @option params [String] :cache_subnet_group_name
    #   <p>The name for the cache subnet group. This value is stored as a lowercase string.</p>
    #           <p>Constraints: Must contain no more than 255 alphanumeric characters or hyphens.</p>
    #           <p>Example: <code>mysubnetgroup</code>
    #            </p>
    #
    # @option params [String] :cache_subnet_group_description
    #   <p>A description of the cache subnet group.</p>
    #
    # @option params [Array<String>] :subnet_ids
    #   <p>The EC2 subnet IDs for the cache subnet group.</p>
    #
    # @return [Types::ModifyCacheSubnetGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_cache_subnet_group(
    #     cache_subnet_group_name: 'CacheSubnetGroupName', # required
    #     cache_subnet_group_description: 'CacheSubnetGroupDescription',
    #     subnet_ids: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifyCacheSubnetGroupOutput
    #   resp.data.cache_subnet_group #=> Types::CacheSubnetGroup
    #   resp.data.cache_subnet_group.cache_subnet_group_name #=> String
    #   resp.data.cache_subnet_group.cache_subnet_group_description #=> String
    #   resp.data.cache_subnet_group.vpc_id #=> String
    #   resp.data.cache_subnet_group.subnets #=> Array<Subnet>
    #   resp.data.cache_subnet_group.subnets[0] #=> Types::Subnet
    #   resp.data.cache_subnet_group.subnets[0].subnet_identifier #=> String
    #   resp.data.cache_subnet_group.subnets[0].subnet_availability_zone #=> Types::AvailabilityZone
    #   resp.data.cache_subnet_group.subnets[0].subnet_availability_zone.name #=> String
    #   resp.data.cache_subnet_group.subnets[0].subnet_outpost #=> Types::SubnetOutpost
    #   resp.data.cache_subnet_group.subnets[0].subnet_outpost.subnet_outpost_arn #=> String
    #   resp.data.cache_subnet_group.arn #=> String
    #
    def modify_cache_subnet_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyCacheSubnetGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifyCacheSubnetGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifyCacheSubnetGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidSubnet, Errors::SubnetNotAllowedFault, Errors::CacheSubnetQuotaExceededFault, Errors::CacheSubnetGroupNotFoundFault, Errors::SubnetInUse]),
        data_parser: Parsers::ModifyCacheSubnetGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifyCacheSubnetGroup,
        stubs: @stubs,
        params_class: Params::ModifyCacheSubnetGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_cache_subnet_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies the settings for a Global datastore.</p>
    #
    # @param [Hash] params
    #   See {Types::ModifyGlobalReplicationGroupInput}.
    #
    # @option params [String] :global_replication_group_id
    #   <p>The name of the Global datastore</p>
    #
    # @option params [Boolean] :apply_immediately
    #   <p>This parameter causes the modifications in this request and any pending modifications to be applied, asynchronously and as soon as possible. Modifications to Global
    #               Replication Groups cannot be requested to be applied in PreferredMaintenceWindow.
    #                </p>
    #
    # @option params [String] :cache_node_type
    #   <p>A valid cache node type that you want to scale this Global datastore to.</p>
    #
    # @option params [String] :engine_version
    #   <p>The upgraded version of the cache engine to be run on the clusters in the Global datastore. </p>
    #
    # @option params [String] :cache_parameter_group_name
    #   <p>The name of the cache parameter group to use with the Global datastore. It must be compatible with the major engine version used by the Global datastore.</p>
    #
    # @option params [String] :global_replication_group_description
    #   <p>A description of the Global datastore</p>
    #
    # @option params [Boolean] :automatic_failover_enabled
    #   <p>Determines whether a read replica is automatically promoted to read/write primary if the existing primary encounters a failure. </p>
    #
    # @return [Types::ModifyGlobalReplicationGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_global_replication_group(
    #     global_replication_group_id: 'GlobalReplicationGroupId', # required
    #     apply_immediately: false, # required
    #     cache_node_type: 'CacheNodeType',
    #     engine_version: 'EngineVersion',
    #     cache_parameter_group_name: 'CacheParameterGroupName',
    #     global_replication_group_description: 'GlobalReplicationGroupDescription',
    #     automatic_failover_enabled: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifyGlobalReplicationGroupOutput
    #   resp.data.global_replication_group #=> Types::GlobalReplicationGroup
    #   resp.data.global_replication_group.global_replication_group_id #=> String
    #   resp.data.global_replication_group.global_replication_group_description #=> String
    #   resp.data.global_replication_group.status #=> String
    #   resp.data.global_replication_group.cache_node_type #=> String
    #   resp.data.global_replication_group.engine #=> String
    #   resp.data.global_replication_group.engine_version #=> String
    #   resp.data.global_replication_group.members #=> Array<GlobalReplicationGroupMember>
    #   resp.data.global_replication_group.members[0] #=> Types::GlobalReplicationGroupMember
    #   resp.data.global_replication_group.members[0].replication_group_id #=> String
    #   resp.data.global_replication_group.members[0].replication_group_region #=> String
    #   resp.data.global_replication_group.members[0].role #=> String
    #   resp.data.global_replication_group.members[0].automatic_failover #=> String, one of ["enabled", "disabled", "enabling", "disabling"]
    #   resp.data.global_replication_group.members[0].status #=> String
    #   resp.data.global_replication_group.cluster_enabled #=> Boolean
    #   resp.data.global_replication_group.global_node_groups #=> Array<GlobalNodeGroup>
    #   resp.data.global_replication_group.global_node_groups[0] #=> Types::GlobalNodeGroup
    #   resp.data.global_replication_group.global_node_groups[0].global_node_group_id #=> String
    #   resp.data.global_replication_group.global_node_groups[0].slots #=> String
    #   resp.data.global_replication_group.auth_token_enabled #=> Boolean
    #   resp.data.global_replication_group.transit_encryption_enabled #=> Boolean
    #   resp.data.global_replication_group.at_rest_encryption_enabled #=> Boolean
    #   resp.data.global_replication_group.arn #=> String
    #
    def modify_global_replication_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyGlobalReplicationGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifyGlobalReplicationGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifyGlobalReplicationGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::GlobalReplicationGroupNotFoundFault, Errors::InvalidGlobalReplicationGroupStateFault]),
        data_parser: Parsers::ModifyGlobalReplicationGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifyGlobalReplicationGroup,
        stubs: @stubs,
        params_class: Params::ModifyGlobalReplicationGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_global_replication_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies the settings for a replication group.</p>
    #
    #         <ul>
    #             <li>
    #                 <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/scaling-redis-cluster-mode-enabled.html">Scaling for Amazon ElastiCache for Redis (cluster mode enabled)</a>
    #                     in the ElastiCache User Guide</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_ModifyReplicationGroupShardConfiguration.html">ModifyReplicationGroupShardConfiguration</a>
    #                     in the ElastiCache API Reference</p>
    #             </li>
    #          </ul>
    #         <note>
    #             <p>This operation is valid for Redis only.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::ModifyReplicationGroupInput}.
    #
    # @option params [String] :replication_group_id
    #   <p>The identifier of the replication group to modify.</p>
    #
    # @option params [String] :replication_group_description
    #   <p>A description for the replication group. Maximum length is 255 characters.</p>
    #
    # @option params [String] :primary_cluster_id
    #   <p>For replication groups with a single primary,
    #               if this parameter is specified, ElastiCache promotes the specified cluster in the specified replication group to the primary role.
    #               The nodes of all other clusters in the replication group are read replicas.</p>
    #
    # @option params [String] :snapshotting_cluster_id
    #   <p>The cluster ID that is used as the daily snapshot source for the replication group.
    #               This parameter cannot be set for Redis (cluster mode enabled) replication groups.</p>
    #
    # @option params [Boolean] :automatic_failover_enabled
    #   <p>Determines whether a read replica is automatically promoted to read/write primary if the existing primary encounters a failure.</p>
    #           <p>Valid values: <code>true</code> | <code>false</code>
    #            </p>
    #
    # @option params [Boolean] :multi_az_enabled
    #   <p>A flag to indicate MultiAZ is enabled.</p>
    #
    # @option params [String] :node_group_id
    #   <p>Deprecated. This parameter is not used.</p>
    #
    # @option params [Array<String>] :cache_security_group_names
    #   <p>A list of cache security group names to authorize for the clusters in this replication group. This change is asynchronously applied as soon as possible.</p>
    #           <p>This parameter can be used only with replication group containing clusters running outside of an Amazon Virtual Private Cloud (Amazon VPC).</p>
    #           <p>Constraints: Must contain no more than 255 alphanumeric characters. Must not be <code>Default</code>.</p>
    #
    # @option params [Array<String>] :security_group_ids
    #   <p>Specifies the VPC Security Groups associated with the clusters in the replication group.</p>
    #           <p>This parameter can be used only with replication group containing clusters running in
    #               an Amazon Virtual Private Cloud (Amazon VPC).</p>
    #
    # @option params [String] :preferred_maintenance_window
    #   <p>Specifies the weekly time range during which maintenance
    #      on the cluster is performed. It is specified as a range in
    #      the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum
    #      maintenance window is a 60 minute period.</p>
    #            <p>Valid values for <code>ddd</code> are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>sun</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>mon</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>tue</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>wed</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>thu</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>fri</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sat</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>sun:23:00-mon:01:30</code>
    #            </p>
    #
    # @option params [String] :notification_topic_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon SNS topic to which notifications are sent.</p>
    #           <note>
    #               <p>The Amazon SNS topic owner must be same as the replication group owner. </p>
    #            </note>
    #
    # @option params [String] :cache_parameter_group_name
    #   <p>The name of the cache parameter group to apply to all of the clusters in this replication group.
    #               This change is asynchronously applied as soon as possible for parameters when the
    #               <code>ApplyImmediately</code> parameter is specified as <code>true</code> for this request.</p>
    #
    # @option params [String] :notification_topic_status
    #   <p>The status of the Amazon SNS notification topic for the replication group.
    #               Notifications are sent only if the status is <code>active</code>.</p>
    #           <p>Valid values: <code>active</code> | <code>inactive</code>
    #            </p>
    #
    # @option params [Boolean] :apply_immediately
    #   <p>If <code>true</code>, this parameter causes the modifications in this request and any
    #               pending modifications to be applied, asynchronously and as soon as possible, regardless
    #               of the <code>PreferredMaintenanceWindow</code> setting for the replication group.</p>
    #           <p>If <code>false</code>, changes to the nodes in the replication group are applied on
    #               the next maintenance reboot, or the next failure reboot, whichever occurs first.</p>
    #           <p>Valid values: <code>true</code> | <code>false</code>
    #            </p>
    #           <p>Default: <code>false</code>
    #            </p>
    #
    # @option params [String] :engine_version
    #   <p>The upgraded version of the cache engine to be run on the clusters in the replication group.</p>
    #
    #           <p>
    #               <b>Important:</b> You can upgrade to a newer engine version (see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/SelectEngine.html#VersionManagement">Selecting a Cache Engine and Version</a>), but you cannot downgrade to an earlier engine version.
    #               If you want to use an earlier engine version,
    #               you must delete the existing replication group and create it anew with the earlier engine version. </p>
    #
    # @option params [Boolean] :auto_minor_version_upgrade
    #   <p> If you are running Redis engine version 6.0 or later, set this parameter to yes if you want to opt-in to the next auto minor version upgrade campaign. This parameter is disabled for previous versions. 
    #           </p>
    #
    # @option params [Integer] :snapshot_retention_limit
    #   <p>The number of days for which ElastiCache retains automatic node group (shard) snapshots before
    #               deleting them. For example, if you set <code>SnapshotRetentionLimit</code> to 5, a
    #               snapshot that was taken today is retained for 5 days before being deleted.</p>
    #           <p>
    #               <b>Important</b> If the value of SnapshotRetentionLimit is set to zero (0),
    #               backups are turned off.</p>
    #
    # @option params [String] :snapshot_window
    #   <p>The daily time range (in UTC) during which ElastiCache  begins taking a daily snapshot of
    #               the node group (shard) specified by <code>SnapshottingClusterId</code>.</p>
    #           <p>Example: <code>05:00-09:00</code>
    #            </p>
    #           <p>If you do not specify this parameter, ElastiCache  automatically chooses an appropriate time range.</p>
    #
    # @option params [String] :cache_node_type
    #   <p>A valid cache node type that you want to scale this replication group to.</p>
    #
    # @option params [String] :auth_token
    #   <p>Reserved parameter. The password used to access a password protected server. This parameter must be specified with the <code>auth-token-update-strategy </code>
    #               parameter.
    #               Password constraints:</p>
    #           <ul>
    #               <li>
    #                  <p>Must be only printable ASCII characters</p>
    #               </li>
    #               <li>
    #                  <p>Must be at least 16 characters and no more than 128 characters in length</p>
    #               </li>
    #               <li>
    #                  <p>Cannot contain any of the following characters: '/', '"', or '@', '%'</p>
    #               </li>
    #            </ul>
    #           <p>
    #
    #               For more information, see AUTH password at <a href="http://redis.io/commands/AUTH">AUTH</a>.</p>
    #
    # @option params [String] :auth_token_update_strategy
    #   <p>Specifies the strategy to use to update the AUTH token. This parameter must be specified with the <code>auth-token</code> parameter.
    #                   Possible values:</p>
    #               <ul>
    #               <li>
    #                  <p>Rotate</p>
    #               </li>
    #               <li>
    #                  <p>Set</p>
    #               </li>
    #            </ul>
    #               <p>
    #                   For more information, see <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/auth.html">Authenticating Users with Redis AUTH</a>
    #            </p>
    #
    # @option params [Array<String>] :user_group_ids_to_add
    #   <p>The ID of the user group you are associating with the replication group.</p>
    #
    # @option params [Array<String>] :user_group_ids_to_remove
    #   <p>The ID of the user group to disassociate from the replication group, meaning the users in the group no longer can access the replication group.</p>
    #
    # @option params [Boolean] :remove_user_groups
    #   <p>Removes the user group associated with this replication group.</p>
    #
    # @option params [Array<LogDeliveryConfigurationRequest>] :log_delivery_configurations
    #   <p>Specifies the destination, format and type of the logs.</p>
    #
    # @return [Types::ModifyReplicationGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_replication_group(
    #     replication_group_id: 'ReplicationGroupId', # required
    #     replication_group_description: 'ReplicationGroupDescription',
    #     primary_cluster_id: 'PrimaryClusterId',
    #     snapshotting_cluster_id: 'SnapshottingClusterId',
    #     automatic_failover_enabled: false,
    #     multi_az_enabled: false,
    #     node_group_id: 'NodeGroupId',
    #     cache_security_group_names: [
    #       'member'
    #     ],
    #     security_group_ids: [
    #       'member'
    #     ],
    #     preferred_maintenance_window: 'PreferredMaintenanceWindow',
    #     notification_topic_arn: 'NotificationTopicArn',
    #     cache_parameter_group_name: 'CacheParameterGroupName',
    #     notification_topic_status: 'NotificationTopicStatus',
    #     apply_immediately: false,
    #     engine_version: 'EngineVersion',
    #     auto_minor_version_upgrade: false,
    #     snapshot_retention_limit: 1,
    #     snapshot_window: 'SnapshotWindow',
    #     cache_node_type: 'CacheNodeType',
    #     auth_token: 'AuthToken',
    #     auth_token_update_strategy: 'SET', # accepts ["SET", "ROTATE", "DELETE"]
    #     user_group_ids_to_add: [
    #       'member'
    #     ],
    #     remove_user_groups: false,
    #     log_delivery_configurations: [
    #       {
    #         log_type: 'slow-log', # accepts ["slow-log", "engine-log"]
    #         destination_type: 'cloudwatch-logs', # accepts ["cloudwatch-logs", "kinesis-firehose"]
    #         destination_details: {
    #           cloud_watch_logs_details: {
    #             log_group: 'LogGroup'
    #           },
    #           kinesis_firehose_details: {
    #             delivery_stream: 'DeliveryStream'
    #           }
    #         },
    #         log_format: 'text', # accepts ["text", "json"]
    #         enabled: false
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifyReplicationGroupOutput
    #   resp.data.replication_group #=> Types::ReplicationGroup
    #   resp.data.replication_group.replication_group_id #=> String
    #   resp.data.replication_group.description #=> String
    #   resp.data.replication_group.global_replication_group_info #=> Types::GlobalReplicationGroupInfo
    #   resp.data.replication_group.global_replication_group_info.global_replication_group_id #=> String
    #   resp.data.replication_group.global_replication_group_info.global_replication_group_member_role #=> String
    #   resp.data.replication_group.status #=> String
    #   resp.data.replication_group.pending_modified_values #=> Types::ReplicationGroupPendingModifiedValues
    #   resp.data.replication_group.pending_modified_values.primary_cluster_id #=> String
    #   resp.data.replication_group.pending_modified_values.automatic_failover_status #=> String, one of ["enabled", "disabled"]
    #   resp.data.replication_group.pending_modified_values.resharding #=> Types::ReshardingStatus
    #   resp.data.replication_group.pending_modified_values.resharding.slot_migration #=> Types::SlotMigration
    #   resp.data.replication_group.pending_modified_values.resharding.slot_migration.progress_percentage #=> Float
    #   resp.data.replication_group.pending_modified_values.auth_token_status #=> String, one of ["SETTING", "ROTATING"]
    #   resp.data.replication_group.pending_modified_values.user_groups #=> Types::UserGroupsUpdateStatus
    #   resp.data.replication_group.pending_modified_values.user_groups.user_group_ids_to_add #=> Array<String>
    #   resp.data.replication_group.pending_modified_values.user_groups.user_group_ids_to_add[0] #=> String
    #   resp.data.replication_group.pending_modified_values.user_groups.user_group_ids_to_remove #=> Array<String>
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations #=> Array<PendingLogDeliveryConfiguration>
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0] #=> Types::PendingLogDeliveryConfiguration
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].log_type #=> String, one of ["slow-log", "engine-log"]
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].destination_type #=> String, one of ["cloudwatch-logs", "kinesis-firehose"]
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].destination_details #=> Types::DestinationDetails
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].destination_details.cloud_watch_logs_details #=> Types::CloudWatchLogsDestinationDetails
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].destination_details.cloud_watch_logs_details.log_group #=> String
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].destination_details.kinesis_firehose_details #=> Types::KinesisFirehoseDestinationDetails
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].destination_details.kinesis_firehose_details.delivery_stream #=> String
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].log_format #=> String, one of ["text", "json"]
    #   resp.data.replication_group.member_clusters #=> Array<String>
    #   resp.data.replication_group.member_clusters[0] #=> String
    #   resp.data.replication_group.node_groups #=> Array<NodeGroup>
    #   resp.data.replication_group.node_groups[0] #=> Types::NodeGroup
    #   resp.data.replication_group.node_groups[0].node_group_id #=> String
    #   resp.data.replication_group.node_groups[0].status #=> String
    #   resp.data.replication_group.node_groups[0].primary_endpoint #=> Types::Endpoint
    #   resp.data.replication_group.node_groups[0].primary_endpoint.address #=> String
    #   resp.data.replication_group.node_groups[0].primary_endpoint.port #=> Integer
    #   resp.data.replication_group.node_groups[0].reader_endpoint #=> Types::Endpoint
    #   resp.data.replication_group.node_groups[0].slots #=> String
    #   resp.data.replication_group.node_groups[0].node_group_members #=> Array<NodeGroupMember>
    #   resp.data.replication_group.node_groups[0].node_group_members[0] #=> Types::NodeGroupMember
    #   resp.data.replication_group.node_groups[0].node_group_members[0].cache_cluster_id #=> String
    #   resp.data.replication_group.node_groups[0].node_group_members[0].cache_node_id #=> String
    #   resp.data.replication_group.node_groups[0].node_group_members[0].read_endpoint #=> Types::Endpoint
    #   resp.data.replication_group.node_groups[0].node_group_members[0].preferred_availability_zone #=> String
    #   resp.data.replication_group.node_groups[0].node_group_members[0].preferred_outpost_arn #=> String
    #   resp.data.replication_group.node_groups[0].node_group_members[0].current_role #=> String
    #   resp.data.replication_group.snapshotting_cluster_id #=> String
    #   resp.data.replication_group.automatic_failover #=> String, one of ["enabled", "disabled", "enabling", "disabling"]
    #   resp.data.replication_group.multi_az #=> String, one of ["enabled", "disabled"]
    #   resp.data.replication_group.configuration_endpoint #=> Types::Endpoint
    #   resp.data.replication_group.snapshot_retention_limit #=> Integer
    #   resp.data.replication_group.snapshot_window #=> String
    #   resp.data.replication_group.cluster_enabled #=> Boolean
    #   resp.data.replication_group.cache_node_type #=> String
    #   resp.data.replication_group.auth_token_enabled #=> Boolean
    #   resp.data.replication_group.auth_token_last_modified_date #=> Time
    #   resp.data.replication_group.transit_encryption_enabled #=> Boolean
    #   resp.data.replication_group.at_rest_encryption_enabled #=> Boolean
    #   resp.data.replication_group.member_clusters_outpost_arns #=> Array<String>
    #   resp.data.replication_group.member_clusters_outpost_arns[0] #=> String
    #   resp.data.replication_group.kms_key_id #=> String
    #   resp.data.replication_group.arn #=> String
    #   resp.data.replication_group.user_group_ids #=> Array<String>
    #   resp.data.replication_group.log_delivery_configurations #=> Array<LogDeliveryConfiguration>
    #   resp.data.replication_group.log_delivery_configurations[0] #=> Types::LogDeliveryConfiguration
    #   resp.data.replication_group.log_delivery_configurations[0].log_type #=> String, one of ["slow-log", "engine-log"]
    #   resp.data.replication_group.log_delivery_configurations[0].destination_type #=> String, one of ["cloudwatch-logs", "kinesis-firehose"]
    #   resp.data.replication_group.log_delivery_configurations[0].destination_details #=> Types::DestinationDetails
    #   resp.data.replication_group.log_delivery_configurations[0].log_format #=> String, one of ["text", "json"]
    #   resp.data.replication_group.log_delivery_configurations[0].status #=> String, one of ["active", "enabling", "modifying", "disabling", "error"]
    #   resp.data.replication_group.log_delivery_configurations[0].message #=> String
    #   resp.data.replication_group.replication_group_create_time #=> Time
    #   resp.data.replication_group.data_tiering #=> String, one of ["enabled", "disabled"]
    #
    def modify_replication_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyReplicationGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifyReplicationGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifyReplicationGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidVPCNetworkStateFault, Errors::CacheSecurityGroupNotFoundFault, Errors::InvalidKMSKeyFault, Errors::InvalidCacheSecurityGroupStateFault, Errors::CacheClusterNotFoundFault, Errors::InvalidCacheClusterStateFault, Errors::NodeQuotaForClusterExceededFault, Errors::NodeQuotaForCustomerExceededFault, Errors::InvalidReplicationGroupStateFault, Errors::UserGroupNotFoundFault, Errors::InvalidParameterValueException, Errors::CacheParameterGroupNotFoundFault, Errors::InsufficientCacheClusterCapacityFault, Errors::InvalidParameterCombinationException, Errors::ReplicationGroupNotFoundFault, Errors::InvalidUserGroupStateFault]),
        data_parser: Parsers::ModifyReplicationGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifyReplicationGroup,
        stubs: @stubs,
        params_class: Params::ModifyReplicationGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_replication_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies a replication group's shards (node groups) by allowing you to
    #             add shards, remove shards, or rebalance the keyspaces among existing shards.</p>
    #
    # @param [Hash] params
    #   See {Types::ModifyReplicationGroupShardConfigurationInput}.
    #
    # @option params [String] :replication_group_id
    #   <p>The name of the Redis (cluster mode enabled) cluster (replication group)
    #               on which the shards are to be configured.</p>
    #
    # @option params [Integer] :node_group_count
    #   <p>The number of node groups (shards) that results from the modification of the
    #               shard configuration.</p>
    #
    # @option params [Boolean] :apply_immediately
    #   <p>Indicates that the shard reconfiguration process begins immediately.
    #               At present, the only permitted value for this parameter is <code>true</code>.</p>
    #           <p>Value: true</p>
    #
    # @option params [Array<ReshardingConfiguration>] :resharding_configuration
    #   <p>Specifies the preferred availability zones for each node group in the cluster.
    #               If the value of <code>NodeGroupCount</code> is greater than the current number
    #               of node groups (shards), you can use this parameter to specify the preferred
    #               availability zones of the cluster's shards.
    #               If you omit this parameter ElastiCache selects availability zones for you.</p>
    #           <p>You can specify this parameter only if the value of <code>NodeGroupCount</code>
    #               is greater than the current number of node groups (shards).</p>
    #
    # @option params [Array<String>] :node_groups_to_remove
    #   <p>If the value of <code>NodeGroupCount</code> is less than the
    #               current number of node groups (shards), then either <code>NodeGroupsToRemove</code> or
    #               <code>NodeGroupsToRetain</code> is required.
    #               <code>NodeGroupsToRemove</code> is a list of <code>NodeGroupId</code>s to remove
    #               from the cluster.</p>
    #           <p>ElastiCache for Redis will attempt to remove all node groups listed by <code>NodeGroupsToRemove</code>
    #               from the cluster.</p>
    #
    # @option params [Array<String>] :node_groups_to_retain
    #   <p>If the value of <code>NodeGroupCount</code> is less than the
    #               current number of node groups (shards), then either <code>NodeGroupsToRemove</code> or
    #               <code>NodeGroupsToRetain</code> is required.
    #               <code>NodeGroupsToRetain</code> is a list of <code>NodeGroupId</code>s to retain
    #               in the cluster.</p>
    #           <p>ElastiCache for Redis will attempt to remove all node groups except those listed by <code>NodeGroupsToRetain</code>
    #               from the cluster.</p>
    #
    # @return [Types::ModifyReplicationGroupShardConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_replication_group_shard_configuration(
    #     replication_group_id: 'ReplicationGroupId', # required
    #     node_group_count: 1, # required
    #     apply_immediately: false, # required
    #     resharding_configuration: [
    #       {
    #         node_group_id: 'NodeGroupId',
    #         preferred_availability_zones: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     node_groups_to_remove: [
    #       'member'
    #     ],
    #     node_groups_to_retain: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifyReplicationGroupShardConfigurationOutput
    #   resp.data.replication_group #=> Types::ReplicationGroup
    #   resp.data.replication_group.replication_group_id #=> String
    #   resp.data.replication_group.description #=> String
    #   resp.data.replication_group.global_replication_group_info #=> Types::GlobalReplicationGroupInfo
    #   resp.data.replication_group.global_replication_group_info.global_replication_group_id #=> String
    #   resp.data.replication_group.global_replication_group_info.global_replication_group_member_role #=> String
    #   resp.data.replication_group.status #=> String
    #   resp.data.replication_group.pending_modified_values #=> Types::ReplicationGroupPendingModifiedValues
    #   resp.data.replication_group.pending_modified_values.primary_cluster_id #=> String
    #   resp.data.replication_group.pending_modified_values.automatic_failover_status #=> String, one of ["enabled", "disabled"]
    #   resp.data.replication_group.pending_modified_values.resharding #=> Types::ReshardingStatus
    #   resp.data.replication_group.pending_modified_values.resharding.slot_migration #=> Types::SlotMigration
    #   resp.data.replication_group.pending_modified_values.resharding.slot_migration.progress_percentage #=> Float
    #   resp.data.replication_group.pending_modified_values.auth_token_status #=> String, one of ["SETTING", "ROTATING"]
    #   resp.data.replication_group.pending_modified_values.user_groups #=> Types::UserGroupsUpdateStatus
    #   resp.data.replication_group.pending_modified_values.user_groups.user_group_ids_to_add #=> Array<String>
    #   resp.data.replication_group.pending_modified_values.user_groups.user_group_ids_to_add[0] #=> String
    #   resp.data.replication_group.pending_modified_values.user_groups.user_group_ids_to_remove #=> Array<String>
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations #=> Array<PendingLogDeliveryConfiguration>
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0] #=> Types::PendingLogDeliveryConfiguration
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].log_type #=> String, one of ["slow-log", "engine-log"]
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].destination_type #=> String, one of ["cloudwatch-logs", "kinesis-firehose"]
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].destination_details #=> Types::DestinationDetails
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].destination_details.cloud_watch_logs_details #=> Types::CloudWatchLogsDestinationDetails
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].destination_details.cloud_watch_logs_details.log_group #=> String
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].destination_details.kinesis_firehose_details #=> Types::KinesisFirehoseDestinationDetails
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].destination_details.kinesis_firehose_details.delivery_stream #=> String
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].log_format #=> String, one of ["text", "json"]
    #   resp.data.replication_group.member_clusters #=> Array<String>
    #   resp.data.replication_group.member_clusters[0] #=> String
    #   resp.data.replication_group.node_groups #=> Array<NodeGroup>
    #   resp.data.replication_group.node_groups[0] #=> Types::NodeGroup
    #   resp.data.replication_group.node_groups[0].node_group_id #=> String
    #   resp.data.replication_group.node_groups[0].status #=> String
    #   resp.data.replication_group.node_groups[0].primary_endpoint #=> Types::Endpoint
    #   resp.data.replication_group.node_groups[0].primary_endpoint.address #=> String
    #   resp.data.replication_group.node_groups[0].primary_endpoint.port #=> Integer
    #   resp.data.replication_group.node_groups[0].reader_endpoint #=> Types::Endpoint
    #   resp.data.replication_group.node_groups[0].slots #=> String
    #   resp.data.replication_group.node_groups[0].node_group_members #=> Array<NodeGroupMember>
    #   resp.data.replication_group.node_groups[0].node_group_members[0] #=> Types::NodeGroupMember
    #   resp.data.replication_group.node_groups[0].node_group_members[0].cache_cluster_id #=> String
    #   resp.data.replication_group.node_groups[0].node_group_members[0].cache_node_id #=> String
    #   resp.data.replication_group.node_groups[0].node_group_members[0].read_endpoint #=> Types::Endpoint
    #   resp.data.replication_group.node_groups[0].node_group_members[0].preferred_availability_zone #=> String
    #   resp.data.replication_group.node_groups[0].node_group_members[0].preferred_outpost_arn #=> String
    #   resp.data.replication_group.node_groups[0].node_group_members[0].current_role #=> String
    #   resp.data.replication_group.snapshotting_cluster_id #=> String
    #   resp.data.replication_group.automatic_failover #=> String, one of ["enabled", "disabled", "enabling", "disabling"]
    #   resp.data.replication_group.multi_az #=> String, one of ["enabled", "disabled"]
    #   resp.data.replication_group.configuration_endpoint #=> Types::Endpoint
    #   resp.data.replication_group.snapshot_retention_limit #=> Integer
    #   resp.data.replication_group.snapshot_window #=> String
    #   resp.data.replication_group.cluster_enabled #=> Boolean
    #   resp.data.replication_group.cache_node_type #=> String
    #   resp.data.replication_group.auth_token_enabled #=> Boolean
    #   resp.data.replication_group.auth_token_last_modified_date #=> Time
    #   resp.data.replication_group.transit_encryption_enabled #=> Boolean
    #   resp.data.replication_group.at_rest_encryption_enabled #=> Boolean
    #   resp.data.replication_group.member_clusters_outpost_arns #=> Array<String>
    #   resp.data.replication_group.member_clusters_outpost_arns[0] #=> String
    #   resp.data.replication_group.kms_key_id #=> String
    #   resp.data.replication_group.arn #=> String
    #   resp.data.replication_group.user_group_ids #=> Array<String>
    #   resp.data.replication_group.log_delivery_configurations #=> Array<LogDeliveryConfiguration>
    #   resp.data.replication_group.log_delivery_configurations[0] #=> Types::LogDeliveryConfiguration
    #   resp.data.replication_group.log_delivery_configurations[0].log_type #=> String, one of ["slow-log", "engine-log"]
    #   resp.data.replication_group.log_delivery_configurations[0].destination_type #=> String, one of ["cloudwatch-logs", "kinesis-firehose"]
    #   resp.data.replication_group.log_delivery_configurations[0].destination_details #=> Types::DestinationDetails
    #   resp.data.replication_group.log_delivery_configurations[0].log_format #=> String, one of ["text", "json"]
    #   resp.data.replication_group.log_delivery_configurations[0].status #=> String, one of ["active", "enabling", "modifying", "disabling", "error"]
    #   resp.data.replication_group.log_delivery_configurations[0].message #=> String
    #   resp.data.replication_group.replication_group_create_time #=> Time
    #   resp.data.replication_group.data_tiering #=> String, one of ["enabled", "disabled"]
    #
    def modify_replication_group_shard_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyReplicationGroupShardConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifyReplicationGroupShardConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifyReplicationGroupShardConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::InvalidVPCNetworkStateFault, Errors::InvalidKMSKeyFault, Errors::InvalidCacheClusterStateFault, Errors::NodeGroupsPerReplicationGroupQuotaExceededFault, Errors::InsufficientCacheClusterCapacityFault, Errors::InvalidParameterCombinationException, Errors::NodeQuotaForCustomerExceededFault, Errors::InvalidReplicationGroupStateFault, Errors::ReplicationGroupNotFoundFault]),
        data_parser: Parsers::ModifyReplicationGroupShardConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifyReplicationGroupShardConfiguration,
        stubs: @stubs,
        params_class: Params::ModifyReplicationGroupShardConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_replication_group_shard_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Changes user password(s) and/or access string.</p>
    #
    # @param [Hash] params
    #   See {Types::ModifyUserInput}.
    #
    # @option params [String] :user_id
    #   <p>The ID of the user.</p>
    #
    # @option params [String] :access_string
    #   <p>Access permissions string used for this user.</p>
    #
    # @option params [String] :append_access_string
    #   <p>Adds additional user permissions to the access string.</p>
    #
    # @option params [Array<String>] :passwords
    #   <p>The passwords belonging to the user. You are allowed up to two.</p>
    #
    # @option params [Boolean] :no_password_required
    #   <p>Indicates no password is required for the user.</p>
    #
    # @return [Types::ModifyUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_user(
    #     user_id: 'UserId', # required
    #     access_string: 'AccessString',
    #     append_access_string: 'AppendAccessString',
    #     passwords: [
    #       'member'
    #     ],
    #     no_password_required: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifyUserOutput
    #   resp.data.user_id #=> String
    #   resp.data.user_name #=> String
    #   resp.data.status #=> String
    #   resp.data.engine #=> String
    #   resp.data.minimum_engine_version #=> String
    #   resp.data.access_string #=> String
    #   resp.data.user_group_ids #=> Array<String>
    #   resp.data.user_group_ids[0] #=> String
    #   resp.data.authentication #=> Types::Authentication
    #   resp.data.authentication.type #=> String, one of ["password", "no-password"]
    #   resp.data.authentication.password_count #=> Integer
    #   resp.data.arn #=> String
    #
    def modify_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyUserInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifyUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifyUser
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::InvalidUserStateFault, Errors::UserNotFoundFault, Errors::InvalidParameterCombinationException, Errors::ServiceLinkedRoleNotFoundFault]),
        data_parser: Parsers::ModifyUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifyUser,
        stubs: @stubs,
        params_class: Params::ModifyUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Changes the list of users that belong to the user group.</p>
    #
    # @param [Hash] params
    #   See {Types::ModifyUserGroupInput}.
    #
    # @option params [String] :user_group_id
    #   <p>The ID of the user group.</p>
    #
    # @option params [Array<String>] :user_ids_to_add
    #   <p>The list of user IDs to add to the user group.</p>
    #
    # @option params [Array<String>] :user_ids_to_remove
    #   <p>The list of user IDs to remove from the user group.</p>
    #
    # @return [Types::ModifyUserGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_user_group(
    #     user_group_id: 'UserGroupId', # required
    #     user_ids_to_add: [
    #       'member'
    #     ],
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifyUserGroupOutput
    #   resp.data.user_group_id #=> String
    #   resp.data.status #=> String
    #   resp.data.engine #=> String
    #   resp.data.user_ids #=> Array<String>
    #   resp.data.user_ids[0] #=> String
    #   resp.data.minimum_engine_version #=> String
    #   resp.data.pending_changes #=> Types::UserGroupPendingChanges
    #   resp.data.pending_changes.user_ids_to_remove #=> Array<String>
    #   resp.data.pending_changes.user_ids_to_add #=> Array<String>
    #   resp.data.replication_groups #=> Array<String>
    #   resp.data.replication_groups[0] #=> String
    #   resp.data.arn #=> String
    #
    def modify_user_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyUserGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifyUserGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifyUserGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::UserNotFoundFault, Errors::InvalidParameterCombinationException, Errors::DuplicateUserNameFault, Errors::DefaultUserRequired, Errors::InvalidUserGroupStateFault, Errors::ServiceLinkedRoleNotFoundFault, Errors::UserGroupNotFoundFault]),
        data_parser: Parsers::ModifyUserGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifyUserGroup,
        stubs: @stubs,
        params_class: Params::ModifyUserGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_user_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Allows you to purchase a reserved
    #             cache node offering. Reserved nodes are not eligible for cancellation and are non-refundable. For more information,
    #             see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/reserved-nodes.html">Managing Costs with Reserved Nodes</a> for Redis or
    #             <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/mem-ug/reserved-nodes.html">Managing Costs with Reserved Nodes</a> for Memcached.</p>
    #
    # @param [Hash] params
    #   See {Types::PurchaseReservedCacheNodesOfferingInput}.
    #
    # @option params [String] :reserved_cache_nodes_offering_id
    #   <p>The ID of the reserved cache node offering to purchase.</p>
    #           <p>Example: <code>438012d3-4052-4cc7-b2e3-8d3372e0e706</code>
    #            </p>
    #
    # @option params [String] :reserved_cache_node_id
    #   <p>A customer-specified identifier to track this reservation.</p>
    #           <note>
    #               <p>The Reserved Cache Node ID is an unique customer-specified identifier to track this reservation.
    #                   If this parameter is not specified,
    #                   ElastiCache automatically generates an identifier for the reservation.</p>
    #            </note>
    #           <p>Example: myreservationID</p>
    #
    # @option params [Integer] :cache_node_count
    #   <p>The number of cache node instances to reserve.</p>
    #           <p>Default: <code>1</code>
    #            </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value, although null is accepted.</p>
    #
    # @return [Types::PurchaseReservedCacheNodesOfferingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.purchase_reserved_cache_nodes_offering(
    #     reserved_cache_nodes_offering_id: 'ReservedCacheNodesOfferingId', # required
    #     reserved_cache_node_id: 'ReservedCacheNodeId',
    #     cache_node_count: 1,
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
    #   resp.data #=> Types::PurchaseReservedCacheNodesOfferingOutput
    #   resp.data.reserved_cache_node #=> Types::ReservedCacheNode
    #   resp.data.reserved_cache_node.reserved_cache_node_id #=> String
    #   resp.data.reserved_cache_node.reserved_cache_nodes_offering_id #=> String
    #   resp.data.reserved_cache_node.cache_node_type #=> String
    #   resp.data.reserved_cache_node.start_time #=> Time
    #   resp.data.reserved_cache_node.duration #=> Integer
    #   resp.data.reserved_cache_node.fixed_price #=> Float
    #   resp.data.reserved_cache_node.usage_price #=> Float
    #   resp.data.reserved_cache_node.cache_node_count #=> Integer
    #   resp.data.reserved_cache_node.product_description #=> String
    #   resp.data.reserved_cache_node.offering_type #=> String
    #   resp.data.reserved_cache_node.state #=> String
    #   resp.data.reserved_cache_node.recurring_charges #=> Array<RecurringCharge>
    #   resp.data.reserved_cache_node.recurring_charges[0] #=> Types::RecurringCharge
    #   resp.data.reserved_cache_node.recurring_charges[0].recurring_charge_amount #=> Float
    #   resp.data.reserved_cache_node.recurring_charges[0].recurring_charge_frequency #=> String
    #   resp.data.reserved_cache_node.reservation_arn #=> String
    #
    def purchase_reserved_cache_nodes_offering(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PurchaseReservedCacheNodesOfferingInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PurchaseReservedCacheNodesOfferingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PurchaseReservedCacheNodesOffering
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::ReservedCacheNodeAlreadyExistsFault, Errors::ReservedCacheNodesOfferingNotFoundFault, Errors::TagQuotaPerResourceExceeded, Errors::InvalidParameterCombinationException, Errors::ReservedCacheNodeQuotaExceededFault]),
        data_parser: Parsers::PurchaseReservedCacheNodesOffering
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PurchaseReservedCacheNodesOffering,
        stubs: @stubs,
        params_class: Params::PurchaseReservedCacheNodesOfferingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :purchase_reserved_cache_nodes_offering
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Redistribute slots to ensure uniform distribution across existing shards in the cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::RebalanceSlotsInGlobalReplicationGroupInput}.
    #
    # @option params [String] :global_replication_group_id
    #   <p>The name of the Global datastore</p>
    #
    # @option params [Boolean] :apply_immediately
    #   <p>If <code>True</code>, redistribution is applied immediately.</p>
    #
    # @return [Types::RebalanceSlotsInGlobalReplicationGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.rebalance_slots_in_global_replication_group(
    #     global_replication_group_id: 'GlobalReplicationGroupId', # required
    #     apply_immediately: false # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RebalanceSlotsInGlobalReplicationGroupOutput
    #   resp.data.global_replication_group #=> Types::GlobalReplicationGroup
    #   resp.data.global_replication_group.global_replication_group_id #=> String
    #   resp.data.global_replication_group.global_replication_group_description #=> String
    #   resp.data.global_replication_group.status #=> String
    #   resp.data.global_replication_group.cache_node_type #=> String
    #   resp.data.global_replication_group.engine #=> String
    #   resp.data.global_replication_group.engine_version #=> String
    #   resp.data.global_replication_group.members #=> Array<GlobalReplicationGroupMember>
    #   resp.data.global_replication_group.members[0] #=> Types::GlobalReplicationGroupMember
    #   resp.data.global_replication_group.members[0].replication_group_id #=> String
    #   resp.data.global_replication_group.members[0].replication_group_region #=> String
    #   resp.data.global_replication_group.members[0].role #=> String
    #   resp.data.global_replication_group.members[0].automatic_failover #=> String, one of ["enabled", "disabled", "enabling", "disabling"]
    #   resp.data.global_replication_group.members[0].status #=> String
    #   resp.data.global_replication_group.cluster_enabled #=> Boolean
    #   resp.data.global_replication_group.global_node_groups #=> Array<GlobalNodeGroup>
    #   resp.data.global_replication_group.global_node_groups[0] #=> Types::GlobalNodeGroup
    #   resp.data.global_replication_group.global_node_groups[0].global_node_group_id #=> String
    #   resp.data.global_replication_group.global_node_groups[0].slots #=> String
    #   resp.data.global_replication_group.auth_token_enabled #=> Boolean
    #   resp.data.global_replication_group.transit_encryption_enabled #=> Boolean
    #   resp.data.global_replication_group.at_rest_encryption_enabled #=> Boolean
    #   resp.data.global_replication_group.arn #=> String
    #
    def rebalance_slots_in_global_replication_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RebalanceSlotsInGlobalReplicationGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RebalanceSlotsInGlobalReplicationGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RebalanceSlotsInGlobalReplicationGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::GlobalReplicationGroupNotFoundFault, Errors::InvalidGlobalReplicationGroupStateFault]),
        data_parser: Parsers::RebalanceSlotsInGlobalReplicationGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RebalanceSlotsInGlobalReplicationGroup,
        stubs: @stubs,
        params_class: Params::RebalanceSlotsInGlobalReplicationGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :rebalance_slots_in_global_replication_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Reboots some, or all, of the cache nodes
    #             within a provisioned cluster. This operation applies any modified cache parameter
    #             groups to the cluster. The reboot operation takes place as soon as possible, and
    #             results in a momentary outage to the cluster. During the reboot, the cluster
    #             status is set to REBOOTING.</p>
    #         <p>The reboot causes the contents of the cache (for each cache node being rebooted) to be lost.</p>
    #         <p>When the reboot is complete, a cluster event is created.</p>
    #
    #         <p>Rebooting a cluster is currently supported on Memcached and Redis (cluster mode disabled) clusters.
    #             Rebooting is not supported on Redis (cluster mode enabled) clusters.</p>
    #
    #         <p>If you make changes to parameters that require a Redis (cluster mode enabled) cluster reboot for the changes to be applied,
    #             see <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/nodes.rebooting.html">Rebooting a Cluster</a> for an alternate process.</p>
    #
    # @param [Hash] params
    #   See {Types::RebootCacheClusterInput}.
    #
    # @option params [String] :cache_cluster_id
    #   <p>The cluster identifier. This parameter is stored as a lowercase string.</p>
    #
    # @option params [Array<String>] :cache_node_ids_to_reboot
    #   <p>A list of cache node IDs to reboot. A node ID is a numeric identifier (0001, 0002, etc.). To reboot an entire cluster, specify all of the cache node IDs.</p>
    #
    # @return [Types::RebootCacheClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reboot_cache_cluster(
    #     cache_cluster_id: 'CacheClusterId', # required
    #     cache_node_ids_to_reboot: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RebootCacheClusterOutput
    #   resp.data.cache_cluster #=> Types::CacheCluster
    #   resp.data.cache_cluster.cache_cluster_id #=> String
    #   resp.data.cache_cluster.configuration_endpoint #=> Types::Endpoint
    #   resp.data.cache_cluster.configuration_endpoint.address #=> String
    #   resp.data.cache_cluster.configuration_endpoint.port #=> Integer
    #   resp.data.cache_cluster.client_download_landing_page #=> String
    #   resp.data.cache_cluster.cache_node_type #=> String
    #   resp.data.cache_cluster.engine #=> String
    #   resp.data.cache_cluster.engine_version #=> String
    #   resp.data.cache_cluster.cache_cluster_status #=> String
    #   resp.data.cache_cluster.num_cache_nodes #=> Integer
    #   resp.data.cache_cluster.preferred_availability_zone #=> String
    #   resp.data.cache_cluster.preferred_outpost_arn #=> String
    #   resp.data.cache_cluster.cache_cluster_create_time #=> Time
    #   resp.data.cache_cluster.preferred_maintenance_window #=> String
    #   resp.data.cache_cluster.pending_modified_values #=> Types::PendingModifiedValues
    #   resp.data.cache_cluster.pending_modified_values.num_cache_nodes #=> Integer
    #   resp.data.cache_cluster.pending_modified_values.cache_node_ids_to_remove #=> Array<String>
    #   resp.data.cache_cluster.pending_modified_values.cache_node_ids_to_remove[0] #=> String
    #   resp.data.cache_cluster.pending_modified_values.engine_version #=> String
    #   resp.data.cache_cluster.pending_modified_values.cache_node_type #=> String
    #   resp.data.cache_cluster.pending_modified_values.auth_token_status #=> String, one of ["SETTING", "ROTATING"]
    #   resp.data.cache_cluster.pending_modified_values.log_delivery_configurations #=> Array<PendingLogDeliveryConfiguration>
    #   resp.data.cache_cluster.pending_modified_values.log_delivery_configurations[0] #=> Types::PendingLogDeliveryConfiguration
    #   resp.data.cache_cluster.pending_modified_values.log_delivery_configurations[0].log_type #=> String, one of ["slow-log", "engine-log"]
    #   resp.data.cache_cluster.pending_modified_values.log_delivery_configurations[0].destination_type #=> String, one of ["cloudwatch-logs", "kinesis-firehose"]
    #   resp.data.cache_cluster.pending_modified_values.log_delivery_configurations[0].destination_details #=> Types::DestinationDetails
    #   resp.data.cache_cluster.pending_modified_values.log_delivery_configurations[0].destination_details.cloud_watch_logs_details #=> Types::CloudWatchLogsDestinationDetails
    #   resp.data.cache_cluster.pending_modified_values.log_delivery_configurations[0].destination_details.cloud_watch_logs_details.log_group #=> String
    #   resp.data.cache_cluster.pending_modified_values.log_delivery_configurations[0].destination_details.kinesis_firehose_details #=> Types::KinesisFirehoseDestinationDetails
    #   resp.data.cache_cluster.pending_modified_values.log_delivery_configurations[0].destination_details.kinesis_firehose_details.delivery_stream #=> String
    #   resp.data.cache_cluster.pending_modified_values.log_delivery_configurations[0].log_format #=> String, one of ["text", "json"]
    #   resp.data.cache_cluster.notification_configuration #=> Types::NotificationConfiguration
    #   resp.data.cache_cluster.notification_configuration.topic_arn #=> String
    #   resp.data.cache_cluster.notification_configuration.topic_status #=> String
    #   resp.data.cache_cluster.cache_security_groups #=> Array<CacheSecurityGroupMembership>
    #   resp.data.cache_cluster.cache_security_groups[0] #=> Types::CacheSecurityGroupMembership
    #   resp.data.cache_cluster.cache_security_groups[0].cache_security_group_name #=> String
    #   resp.data.cache_cluster.cache_security_groups[0].status #=> String
    #   resp.data.cache_cluster.cache_parameter_group #=> Types::CacheParameterGroupStatus
    #   resp.data.cache_cluster.cache_parameter_group.cache_parameter_group_name #=> String
    #   resp.data.cache_cluster.cache_parameter_group.parameter_apply_status #=> String
    #   resp.data.cache_cluster.cache_parameter_group.cache_node_ids_to_reboot #=> Array<String>
    #   resp.data.cache_cluster.cache_subnet_group_name #=> String
    #   resp.data.cache_cluster.cache_nodes #=> Array<CacheNode>
    #   resp.data.cache_cluster.cache_nodes[0] #=> Types::CacheNode
    #   resp.data.cache_cluster.cache_nodes[0].cache_node_id #=> String
    #   resp.data.cache_cluster.cache_nodes[0].cache_node_status #=> String
    #   resp.data.cache_cluster.cache_nodes[0].cache_node_create_time #=> Time
    #   resp.data.cache_cluster.cache_nodes[0].endpoint #=> Types::Endpoint
    #   resp.data.cache_cluster.cache_nodes[0].parameter_group_status #=> String
    #   resp.data.cache_cluster.cache_nodes[0].source_cache_node_id #=> String
    #   resp.data.cache_cluster.cache_nodes[0].customer_availability_zone #=> String
    #   resp.data.cache_cluster.cache_nodes[0].customer_outpost_arn #=> String
    #   resp.data.cache_cluster.auto_minor_version_upgrade #=> Boolean
    #   resp.data.cache_cluster.security_groups #=> Array<SecurityGroupMembership>
    #   resp.data.cache_cluster.security_groups[0] #=> Types::SecurityGroupMembership
    #   resp.data.cache_cluster.security_groups[0].security_group_id #=> String
    #   resp.data.cache_cluster.security_groups[0].status #=> String
    #   resp.data.cache_cluster.replication_group_id #=> String
    #   resp.data.cache_cluster.snapshot_retention_limit #=> Integer
    #   resp.data.cache_cluster.snapshot_window #=> String
    #   resp.data.cache_cluster.auth_token_enabled #=> Boolean
    #   resp.data.cache_cluster.auth_token_last_modified_date #=> Time
    #   resp.data.cache_cluster.transit_encryption_enabled #=> Boolean
    #   resp.data.cache_cluster.at_rest_encryption_enabled #=> Boolean
    #   resp.data.cache_cluster.arn #=> String
    #   resp.data.cache_cluster.replication_group_log_delivery_enabled #=> Boolean
    #   resp.data.cache_cluster.log_delivery_configurations #=> Array<LogDeliveryConfiguration>
    #   resp.data.cache_cluster.log_delivery_configurations[0] #=> Types::LogDeliveryConfiguration
    #   resp.data.cache_cluster.log_delivery_configurations[0].log_type #=> String, one of ["slow-log", "engine-log"]
    #   resp.data.cache_cluster.log_delivery_configurations[0].destination_type #=> String, one of ["cloudwatch-logs", "kinesis-firehose"]
    #   resp.data.cache_cluster.log_delivery_configurations[0].destination_details #=> Types::DestinationDetails
    #   resp.data.cache_cluster.log_delivery_configurations[0].log_format #=> String, one of ["text", "json"]
    #   resp.data.cache_cluster.log_delivery_configurations[0].status #=> String, one of ["active", "enabling", "modifying", "disabling", "error"]
    #   resp.data.cache_cluster.log_delivery_configurations[0].message #=> String
    #
    def reboot_cache_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RebootCacheClusterInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RebootCacheClusterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RebootCacheCluster
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CacheClusterNotFoundFault, Errors::InvalidCacheClusterStateFault]),
        data_parser: Parsers::RebootCacheCluster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RebootCacheCluster,
        stubs: @stubs,
        params_class: Params::RebootCacheClusterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :reboot_cache_cluster
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the tags identified by the <code>TagKeys</code>
    #             list from the named resource. A  tag is a key-value pair where the key and value are case-sensitive.
    #             You can use tags to categorize and track all your ElastiCache resources, with the exception of global replication group. When you add or remove tags on replication groups, those actions will be replicated to all nodes in the replication group.
    #         For more information, see <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/IAM.ResourceLevelPermissions.html">Resource-level permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::RemoveTagsFromResourceInput}.
    #
    # @option params [String] :resource_name
    #   <p>The Amazon Resource Name (ARN) of the resource from which you want the tags removed,
    #               for example <code>arn:aws:elasticache:us-west-2:0123456789:cluster:myCluster</code>
    #               or <code>arn:aws:elasticache:us-west-2:0123456789:snapshot:mySnapshot</code>.</p>
    #           <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and Amazon Service Namespaces</a>.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>A list of <code>TagKeys</code> identifying the tags you want removed from the named resource.</p>
    #
    # @return [Types::RemoveTagsFromResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_tags_from_resource(
    #     resource_name: 'ResourceName', # required
    #     tag_keys: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RemoveTagsFromResourceOutput
    #   resp.data.tag_list #=> Array<Tag>
    #   resp.data.tag_list[0] #=> Types::Tag
    #   resp.data.tag_list[0].key #=> String
    #   resp.data.tag_list[0].value #=> String
    #
    def remove_tags_from_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RemoveTagsFromResourceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RemoveTagsFromResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RemoveTagsFromResource
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CacheSecurityGroupNotFoundFault, Errors::InvalidARNFault, Errors::CacheClusterNotFoundFault, Errors::SnapshotNotFoundFault, Errors::UserNotFoundFault, Errors::CacheSubnetGroupNotFoundFault, Errors::InvalidReplicationGroupStateFault, Errors::UserGroupNotFoundFault, Errors::ReservedCacheNodeNotFoundFault, Errors::TagNotFoundFault, Errors::CacheParameterGroupNotFoundFault, Errors::ReplicationGroupNotFoundFault]),
        data_parser: Parsers::RemoveTagsFromResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RemoveTagsFromResource,
        stubs: @stubs,
        params_class: Params::RemoveTagsFromResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :remove_tags_from_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies the parameters of a cache
    #             parameter group to the engine or system default value. You can reset specific parameters
    #             by submitting a list of parameter names. To reset the entire cache parameter group,
    #             specify the <code>ResetAllParameters</code> and <code>CacheParameterGroupName</code> parameters.</p>
    #
    # @param [Hash] params
    #   See {Types::ResetCacheParameterGroupInput}.
    #
    # @option params [String] :cache_parameter_group_name
    #   <p>The name of the cache parameter group to reset.</p>
    #
    # @option params [Boolean] :reset_all_parameters
    #   <p>If <code>true</code>,
    #               all parameters in the cache parameter group are reset to their default values.
    #               If <code>false</code>, only the parameters listed by <code>ParameterNameValues</code>
    #               are reset to their default values.</p>
    #           <p>Valid values: <code>true</code> | <code>false</code>
    #            </p>
    #
    # @option params [Array<ParameterNameValue>] :parameter_name_values
    #   <p>An array of parameter names to reset to their default values.
    #               If <code>ResetAllParameters</code> is <code>true</code>,
    #               do not use <code>ParameterNameValues</code>.
    #               If <code>ResetAllParameters</code> is <code>false</code>,
    #               you must specify the name of at least one parameter to reset.</p>
    #
    # @return [Types::ResetCacheParameterGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reset_cache_parameter_group(
    #     cache_parameter_group_name: 'CacheParameterGroupName', # required
    #     reset_all_parameters: false,
    #     parameter_name_values: [
    #       {
    #         parameter_name: 'ParameterName',
    #         parameter_value: 'ParameterValue'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ResetCacheParameterGroupOutput
    #   resp.data.cache_parameter_group_name #=> String
    #
    def reset_cache_parameter_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ResetCacheParameterGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ResetCacheParameterGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ResetCacheParameterGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::InvalidGlobalReplicationGroupStateFault, Errors::CacheParameterGroupNotFoundFault, Errors::InvalidParameterCombinationException, Errors::InvalidCacheParameterGroupStateFault]),
        data_parser: Parsers::ResetCacheParameterGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ResetCacheParameterGroup,
        stubs: @stubs,
        params_class: Params::ResetCacheParameterGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :reset_cache_parameter_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Revokes ingress from a cache security group.
    #             Use this operation to disallow access from an Amazon EC2 security group
    #             that had been previously authorized.</p>
    #
    # @param [Hash] params
    #   See {Types::RevokeCacheSecurityGroupIngressInput}.
    #
    # @option params [String] :cache_security_group_name
    #   <p>The name of the cache security group to revoke ingress from.</p>
    #
    # @option params [String] :ec2_security_group_name
    #   <p>The name of the Amazon EC2 security group to revoke access from.</p>
    #
    # @option params [String] :ec2_security_group_owner_id
    #   <p>The Amazon account number of the Amazon EC2 security group owner.
    #               Note that this is not the same thing as an Amazon access key ID - you must provide
    #               a valid Amazon account number for this parameter.</p>
    #
    # @return [Types::RevokeCacheSecurityGroupIngressOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.revoke_cache_security_group_ingress(
    #     cache_security_group_name: 'CacheSecurityGroupName', # required
    #     ec2_security_group_name: 'EC2SecurityGroupName', # required
    #     ec2_security_group_owner_id: 'EC2SecurityGroupOwnerId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RevokeCacheSecurityGroupIngressOutput
    #   resp.data.cache_security_group #=> Types::CacheSecurityGroup
    #   resp.data.cache_security_group.owner_id #=> String
    #   resp.data.cache_security_group.cache_security_group_name #=> String
    #   resp.data.cache_security_group.description #=> String
    #   resp.data.cache_security_group.ec2_security_groups #=> Array<EC2SecurityGroup>
    #   resp.data.cache_security_group.ec2_security_groups[0] #=> Types::EC2SecurityGroup
    #   resp.data.cache_security_group.ec2_security_groups[0].status #=> String
    #   resp.data.cache_security_group.ec2_security_groups[0].ec2_security_group_name #=> String
    #   resp.data.cache_security_group.ec2_security_groups[0].ec2_security_group_owner_id #=> String
    #   resp.data.cache_security_group.arn #=> String
    #
    def revoke_cache_security_group_ingress(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RevokeCacheSecurityGroupIngressInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RevokeCacheSecurityGroupIngressInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RevokeCacheSecurityGroupIngress
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::CacheSecurityGroupNotFoundFault, Errors::InvalidCacheSecurityGroupStateFault, Errors::AuthorizationNotFoundFault, Errors::InvalidParameterCombinationException]),
        data_parser: Parsers::RevokeCacheSecurityGroupIngress
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RevokeCacheSecurityGroupIngress,
        stubs: @stubs,
        params_class: Params::RevokeCacheSecurityGroupIngressOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :revoke_cache_security_group_ingress
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Start the migration of data.</p>
    #
    # @param [Hash] params
    #   See {Types::StartMigrationInput}.
    #
    # @option params [String] :replication_group_id
    #   <p>The ID of the replication group to which data should be migrated.</p>
    #
    # @option params [Array<CustomerNodeEndpoint>] :customer_node_endpoint_list
    #   <p>List of endpoints from which data should be migrated. For Redis (cluster mode disabled), list should have only one element.</p>
    #
    # @return [Types::StartMigrationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_migration(
    #     replication_group_id: 'ReplicationGroupId', # required
    #     customer_node_endpoint_list: [
    #       {
    #         address: 'Address',
    #         port: 1
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartMigrationOutput
    #   resp.data.replication_group #=> Types::ReplicationGroup
    #   resp.data.replication_group.replication_group_id #=> String
    #   resp.data.replication_group.description #=> String
    #   resp.data.replication_group.global_replication_group_info #=> Types::GlobalReplicationGroupInfo
    #   resp.data.replication_group.global_replication_group_info.global_replication_group_id #=> String
    #   resp.data.replication_group.global_replication_group_info.global_replication_group_member_role #=> String
    #   resp.data.replication_group.status #=> String
    #   resp.data.replication_group.pending_modified_values #=> Types::ReplicationGroupPendingModifiedValues
    #   resp.data.replication_group.pending_modified_values.primary_cluster_id #=> String
    #   resp.data.replication_group.pending_modified_values.automatic_failover_status #=> String, one of ["enabled", "disabled"]
    #   resp.data.replication_group.pending_modified_values.resharding #=> Types::ReshardingStatus
    #   resp.data.replication_group.pending_modified_values.resharding.slot_migration #=> Types::SlotMigration
    #   resp.data.replication_group.pending_modified_values.resharding.slot_migration.progress_percentage #=> Float
    #   resp.data.replication_group.pending_modified_values.auth_token_status #=> String, one of ["SETTING", "ROTATING"]
    #   resp.data.replication_group.pending_modified_values.user_groups #=> Types::UserGroupsUpdateStatus
    #   resp.data.replication_group.pending_modified_values.user_groups.user_group_ids_to_add #=> Array<String>
    #   resp.data.replication_group.pending_modified_values.user_groups.user_group_ids_to_add[0] #=> String
    #   resp.data.replication_group.pending_modified_values.user_groups.user_group_ids_to_remove #=> Array<String>
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations #=> Array<PendingLogDeliveryConfiguration>
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0] #=> Types::PendingLogDeliveryConfiguration
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].log_type #=> String, one of ["slow-log", "engine-log"]
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].destination_type #=> String, one of ["cloudwatch-logs", "kinesis-firehose"]
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].destination_details #=> Types::DestinationDetails
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].destination_details.cloud_watch_logs_details #=> Types::CloudWatchLogsDestinationDetails
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].destination_details.cloud_watch_logs_details.log_group #=> String
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].destination_details.kinesis_firehose_details #=> Types::KinesisFirehoseDestinationDetails
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].destination_details.kinesis_firehose_details.delivery_stream #=> String
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].log_format #=> String, one of ["text", "json"]
    #   resp.data.replication_group.member_clusters #=> Array<String>
    #   resp.data.replication_group.member_clusters[0] #=> String
    #   resp.data.replication_group.node_groups #=> Array<NodeGroup>
    #   resp.data.replication_group.node_groups[0] #=> Types::NodeGroup
    #   resp.data.replication_group.node_groups[0].node_group_id #=> String
    #   resp.data.replication_group.node_groups[0].status #=> String
    #   resp.data.replication_group.node_groups[0].primary_endpoint #=> Types::Endpoint
    #   resp.data.replication_group.node_groups[0].primary_endpoint.address #=> String
    #   resp.data.replication_group.node_groups[0].primary_endpoint.port #=> Integer
    #   resp.data.replication_group.node_groups[0].reader_endpoint #=> Types::Endpoint
    #   resp.data.replication_group.node_groups[0].slots #=> String
    #   resp.data.replication_group.node_groups[0].node_group_members #=> Array<NodeGroupMember>
    #   resp.data.replication_group.node_groups[0].node_group_members[0] #=> Types::NodeGroupMember
    #   resp.data.replication_group.node_groups[0].node_group_members[0].cache_cluster_id #=> String
    #   resp.data.replication_group.node_groups[0].node_group_members[0].cache_node_id #=> String
    #   resp.data.replication_group.node_groups[0].node_group_members[0].read_endpoint #=> Types::Endpoint
    #   resp.data.replication_group.node_groups[0].node_group_members[0].preferred_availability_zone #=> String
    #   resp.data.replication_group.node_groups[0].node_group_members[0].preferred_outpost_arn #=> String
    #   resp.data.replication_group.node_groups[0].node_group_members[0].current_role #=> String
    #   resp.data.replication_group.snapshotting_cluster_id #=> String
    #   resp.data.replication_group.automatic_failover #=> String, one of ["enabled", "disabled", "enabling", "disabling"]
    #   resp.data.replication_group.multi_az #=> String, one of ["enabled", "disabled"]
    #   resp.data.replication_group.configuration_endpoint #=> Types::Endpoint
    #   resp.data.replication_group.snapshot_retention_limit #=> Integer
    #   resp.data.replication_group.snapshot_window #=> String
    #   resp.data.replication_group.cluster_enabled #=> Boolean
    #   resp.data.replication_group.cache_node_type #=> String
    #   resp.data.replication_group.auth_token_enabled #=> Boolean
    #   resp.data.replication_group.auth_token_last_modified_date #=> Time
    #   resp.data.replication_group.transit_encryption_enabled #=> Boolean
    #   resp.data.replication_group.at_rest_encryption_enabled #=> Boolean
    #   resp.data.replication_group.member_clusters_outpost_arns #=> Array<String>
    #   resp.data.replication_group.member_clusters_outpost_arns[0] #=> String
    #   resp.data.replication_group.kms_key_id #=> String
    #   resp.data.replication_group.arn #=> String
    #   resp.data.replication_group.user_group_ids #=> Array<String>
    #   resp.data.replication_group.log_delivery_configurations #=> Array<LogDeliveryConfiguration>
    #   resp.data.replication_group.log_delivery_configurations[0] #=> Types::LogDeliveryConfiguration
    #   resp.data.replication_group.log_delivery_configurations[0].log_type #=> String, one of ["slow-log", "engine-log"]
    #   resp.data.replication_group.log_delivery_configurations[0].destination_type #=> String, one of ["cloudwatch-logs", "kinesis-firehose"]
    #   resp.data.replication_group.log_delivery_configurations[0].destination_details #=> Types::DestinationDetails
    #   resp.data.replication_group.log_delivery_configurations[0].log_format #=> String, one of ["text", "json"]
    #   resp.data.replication_group.log_delivery_configurations[0].status #=> String, one of ["active", "enabling", "modifying", "disabling", "error"]
    #   resp.data.replication_group.log_delivery_configurations[0].message #=> String
    #   resp.data.replication_group.replication_group_create_time #=> Time
    #   resp.data.replication_group.data_tiering #=> String, one of ["enabled", "disabled"]
    #
    def start_migration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartMigrationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartMigrationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartMigration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::InvalidReplicationGroupStateFault, Errors::ReplicationGroupAlreadyUnderMigrationFault, Errors::ReplicationGroupNotFoundFault]),
        data_parser: Parsers::StartMigration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartMigration,
        stubs: @stubs,
        params_class: Params::StartMigrationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_migration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Represents the input of a <code>TestFailover</code> operation which test automatic failover on
    #             a specified node group (called shard in the console) in a replication group (called cluster in the console).</p>
    #          <p>This API is designed for testing the behavior of your application in case of ElastiCache failover. It is not designed to be an operational tool
    #            for initiating a failover to overcome a problem you may have with the cluster. Moreover, in certain conditions such as large-scale operational events, Amazon may block this API. </p>
    #         <p class="title">
    #             <b>Note the following</b>
    #          </p>
    #          <ul>
    #             <li>
    #                 <p>A customer can use this operation to test automatic failover on up to 5 shards (called node groups in the ElastiCache API and Amazon CLI)
    #                     in any rolling 24-hour period.</p>
    #             </li>
    #             <li>
    #                 <p>If calling this operation on shards in different clusters (called replication groups in the API and CLI), the calls can be made concurrently.</p>
    #                 <p> </p>
    #             </li>
    #             <li>
    #                 <p>If calling this operation multiple times on different shards in the same Redis (cluster mode enabled) replication group,
    #                     the first node replacement must complete before a subsequent call can be made.</p>
    #             </li>
    #             <li>
    #                 <p>To determine whether the node replacement is complete you can check Events using the Amazon ElastiCache console,
    #                     the Amazon CLI, or the ElastiCache API.
    #                     Look for the following automatic failover related events, listed here in order of occurrance:</p>
    #                 <ol>
    #                   <li>
    #                         <p>Replication group message: <code>Test Failover API called for node group <node-group-id></code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                         <p>Cache cluster message: <code>Failover from primary node <primary-node-id> to replica node <node-id> completed</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                         <p>Replication group message: <code>Failover from primary node <primary-node-id> to replica node <node-id> completed</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                         <p>Cache cluster message: <code>Recovering cache nodes <node-id></code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                         <p>Cache cluster message: <code>Finished recovery for cache nodes <node-id></code>
    #                      </p>
    #                   </li>
    #                </ol>
    #
    #                 <p>For more information see:</p>
    #                 <ul>
    #                   <li>
    #                         <p>
    #                         <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/ECEvents.Viewing.html">Viewing ElastiCache Events</a>
    #                             in the <i>ElastiCache User Guide</i>
    #                      </p>
    #                   </li>
    #                   <li>
    #                         <p>
    #                         <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_DescribeEvents.html">DescribeEvents</a> in the ElastiCache API Reference</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #
    #         <p>Also see, <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/AutoFailover.html#auto-failover-test">Testing Multi-AZ </a> in the <i>ElastiCache User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::TestFailoverInput}.
    #
    # @option params [String] :replication_group_id
    #   <p>The name of the replication group (console: cluster) whose automatic failover is being
    #               tested by this operation.</p>
    #
    # @option params [String] :node_group_id
    #   <p>The name of the node group (called shard in the console) in this replication group on
    #               which automatic failover is to be tested.
    #               You may test automatic failover on up to 5 node groups in any rolling 24-hour period.</p>
    #
    # @return [Types::TestFailoverOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.test_failover(
    #     replication_group_id: 'ReplicationGroupId', # required
    #     node_group_id: 'NodeGroupId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TestFailoverOutput
    #   resp.data.replication_group #=> Types::ReplicationGroup
    #   resp.data.replication_group.replication_group_id #=> String
    #   resp.data.replication_group.description #=> String
    #   resp.data.replication_group.global_replication_group_info #=> Types::GlobalReplicationGroupInfo
    #   resp.data.replication_group.global_replication_group_info.global_replication_group_id #=> String
    #   resp.data.replication_group.global_replication_group_info.global_replication_group_member_role #=> String
    #   resp.data.replication_group.status #=> String
    #   resp.data.replication_group.pending_modified_values #=> Types::ReplicationGroupPendingModifiedValues
    #   resp.data.replication_group.pending_modified_values.primary_cluster_id #=> String
    #   resp.data.replication_group.pending_modified_values.automatic_failover_status #=> String, one of ["enabled", "disabled"]
    #   resp.data.replication_group.pending_modified_values.resharding #=> Types::ReshardingStatus
    #   resp.data.replication_group.pending_modified_values.resharding.slot_migration #=> Types::SlotMigration
    #   resp.data.replication_group.pending_modified_values.resharding.slot_migration.progress_percentage #=> Float
    #   resp.data.replication_group.pending_modified_values.auth_token_status #=> String, one of ["SETTING", "ROTATING"]
    #   resp.data.replication_group.pending_modified_values.user_groups #=> Types::UserGroupsUpdateStatus
    #   resp.data.replication_group.pending_modified_values.user_groups.user_group_ids_to_add #=> Array<String>
    #   resp.data.replication_group.pending_modified_values.user_groups.user_group_ids_to_add[0] #=> String
    #   resp.data.replication_group.pending_modified_values.user_groups.user_group_ids_to_remove #=> Array<String>
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations #=> Array<PendingLogDeliveryConfiguration>
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0] #=> Types::PendingLogDeliveryConfiguration
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].log_type #=> String, one of ["slow-log", "engine-log"]
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].destination_type #=> String, one of ["cloudwatch-logs", "kinesis-firehose"]
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].destination_details #=> Types::DestinationDetails
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].destination_details.cloud_watch_logs_details #=> Types::CloudWatchLogsDestinationDetails
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].destination_details.cloud_watch_logs_details.log_group #=> String
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].destination_details.kinesis_firehose_details #=> Types::KinesisFirehoseDestinationDetails
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].destination_details.kinesis_firehose_details.delivery_stream #=> String
    #   resp.data.replication_group.pending_modified_values.log_delivery_configurations[0].log_format #=> String, one of ["text", "json"]
    #   resp.data.replication_group.member_clusters #=> Array<String>
    #   resp.data.replication_group.member_clusters[0] #=> String
    #   resp.data.replication_group.node_groups #=> Array<NodeGroup>
    #   resp.data.replication_group.node_groups[0] #=> Types::NodeGroup
    #   resp.data.replication_group.node_groups[0].node_group_id #=> String
    #   resp.data.replication_group.node_groups[0].status #=> String
    #   resp.data.replication_group.node_groups[0].primary_endpoint #=> Types::Endpoint
    #   resp.data.replication_group.node_groups[0].primary_endpoint.address #=> String
    #   resp.data.replication_group.node_groups[0].primary_endpoint.port #=> Integer
    #   resp.data.replication_group.node_groups[0].reader_endpoint #=> Types::Endpoint
    #   resp.data.replication_group.node_groups[0].slots #=> String
    #   resp.data.replication_group.node_groups[0].node_group_members #=> Array<NodeGroupMember>
    #   resp.data.replication_group.node_groups[0].node_group_members[0] #=> Types::NodeGroupMember
    #   resp.data.replication_group.node_groups[0].node_group_members[0].cache_cluster_id #=> String
    #   resp.data.replication_group.node_groups[0].node_group_members[0].cache_node_id #=> String
    #   resp.data.replication_group.node_groups[0].node_group_members[0].read_endpoint #=> Types::Endpoint
    #   resp.data.replication_group.node_groups[0].node_group_members[0].preferred_availability_zone #=> String
    #   resp.data.replication_group.node_groups[0].node_group_members[0].preferred_outpost_arn #=> String
    #   resp.data.replication_group.node_groups[0].node_group_members[0].current_role #=> String
    #   resp.data.replication_group.snapshotting_cluster_id #=> String
    #   resp.data.replication_group.automatic_failover #=> String, one of ["enabled", "disabled", "enabling", "disabling"]
    #   resp.data.replication_group.multi_az #=> String, one of ["enabled", "disabled"]
    #   resp.data.replication_group.configuration_endpoint #=> Types::Endpoint
    #   resp.data.replication_group.snapshot_retention_limit #=> Integer
    #   resp.data.replication_group.snapshot_window #=> String
    #   resp.data.replication_group.cluster_enabled #=> Boolean
    #   resp.data.replication_group.cache_node_type #=> String
    #   resp.data.replication_group.auth_token_enabled #=> Boolean
    #   resp.data.replication_group.auth_token_last_modified_date #=> Time
    #   resp.data.replication_group.transit_encryption_enabled #=> Boolean
    #   resp.data.replication_group.at_rest_encryption_enabled #=> Boolean
    #   resp.data.replication_group.member_clusters_outpost_arns #=> Array<String>
    #   resp.data.replication_group.member_clusters_outpost_arns[0] #=> String
    #   resp.data.replication_group.kms_key_id #=> String
    #   resp.data.replication_group.arn #=> String
    #   resp.data.replication_group.user_group_ids #=> Array<String>
    #   resp.data.replication_group.log_delivery_configurations #=> Array<LogDeliveryConfiguration>
    #   resp.data.replication_group.log_delivery_configurations[0] #=> Types::LogDeliveryConfiguration
    #   resp.data.replication_group.log_delivery_configurations[0].log_type #=> String, one of ["slow-log", "engine-log"]
    #   resp.data.replication_group.log_delivery_configurations[0].destination_type #=> String, one of ["cloudwatch-logs", "kinesis-firehose"]
    #   resp.data.replication_group.log_delivery_configurations[0].destination_details #=> Types::DestinationDetails
    #   resp.data.replication_group.log_delivery_configurations[0].log_format #=> String, one of ["text", "json"]
    #   resp.data.replication_group.log_delivery_configurations[0].status #=> String, one of ["active", "enabling", "modifying", "disabling", "error"]
    #   resp.data.replication_group.log_delivery_configurations[0].message #=> String
    #   resp.data.replication_group.replication_group_create_time #=> Time
    #   resp.data.replication_group.data_tiering #=> String, one of ["enabled", "disabled"]
    #
    def test_failover(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TestFailoverInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TestFailoverInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TestFailover
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::InvalidKMSKeyFault, Errors::NodeGroupNotFoundFault, Errors::InvalidCacheClusterStateFault, Errors::TestFailoverNotAvailableFault, Errors::InvalidParameterCombinationException, Errors::InvalidReplicationGroupStateFault, Errors::ReplicationGroupNotFoundFault, Errors::APICallRateForCustomerExceededFault]),
        data_parser: Parsers::TestFailover
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TestFailover,
        stubs: @stubs,
        params_class: Params::TestFailoverOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :test_failover
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
