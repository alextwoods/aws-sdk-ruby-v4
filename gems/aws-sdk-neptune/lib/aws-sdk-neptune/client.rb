# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::Neptune
  # An API client for AmazonRDSv19
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Amazon Neptune</fullname>
  #          <p>Amazon Neptune is a fast, reliable, fully-managed graph database service that makes it
  #       easy to build and run applications that work with highly connected datasets. The core of
  #       Amazon Neptune is a purpose-built, high-performance graph database engine optimized for
  #       storing billions of relationships and querying the graph with milliseconds latency. Amazon
  #       Neptune supports popular graph models Property Graph and W3C's RDF, and their respective query
  #       languages Apache TinkerPop Gremlin and SPARQL, allowing you to easily build queries that
  #       efficiently navigate highly connected datasets. Neptune powers graph use cases such as
  #       recommendation engines, fraud detection, knowledge graphs, drug discovery, and network
  #       security.</p>
  #
  #          <p>This interface reference for Amazon Neptune contains documentation for a programming or
  #       command line interface you can use to manage Amazon Neptune. Note that Amazon Neptune is
  #       asynchronous, which means that some interfaces might require techniques such as polling or
  #       callback functions to determine when a command has been applied. In this reference, the
  #       parameter descriptions indicate whether a command is applied immediately, on the next instance
  #       reboot, or during the maintenance window. The reference structure is as follows, and we list
  #       following some related topics from the user guide.</p>
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
    def initialize(config = AWS::SDK::Neptune::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Associates an Identity and Access Management (IAM) role with an
    #       Neptune DB cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::AddRoleToDBClusterInput}.
    #
    # @option params [String] :db_cluster_identifier
    #   <p>The name of the DB cluster to associate the IAM role with.</p>
    #
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to associate with the Neptune DB cluster,
    #         for example <code>arn:aws:iam::123456789012:role/NeptuneAccessRole</code>.</p>
    #
    # @option params [String] :feature_name
    #   <p>The name of the feature for the Neptune DB cluster that the IAM role is to be associated with.
    #         For the list of supported feature names, see <a href="neptune/latest/userguide/api-other-apis.html#DBEngineVersion">DBEngineVersion</a>.</p>
    #
    # @return [Types::AddRoleToDBClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_role_to_db_cluster(
    #     db_cluster_identifier: 'DBClusterIdentifier', # required
    #     role_arn: 'RoleArn', # required
    #     feature_name: 'FeatureName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AddRoleToDBClusterOutput
    #
    def add_role_to_db_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddRoleToDBClusterInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AddRoleToDBClusterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AddRoleToDBCluster
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DBClusterNotFoundFault, Errors::DBClusterRoleQuotaExceededFault, Errors::InvalidDBClusterStateFault, Errors::DBClusterRoleAlreadyExistsFault]),
        data_parser: Parsers::AddRoleToDBCluster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AddRoleToDBCluster,
        stubs: @stubs,
        params_class: Params::AddRoleToDBClusterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :add_role_to_db_cluster
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds a source identifier to an existing event notification subscription.</p>
    #
    # @param [Hash] params
    #   See {Types::AddSourceIdentifierToSubscriptionInput}.
    #
    # @option params [String] :subscription_name
    #   <p>The name of the event notification subscription you want to add a source identifier
    #         to.</p>
    #
    # @option params [String] :source_identifier
    #   <p>The identifier of the event source to be added.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If the source type is a DB instance, then a <code>DBInstanceIdentifier</code> must be
    #             supplied.</p>
    #               </li>
    #               <li>
    #                  <p>If the source type is a DB security group, a <code>DBSecurityGroupName</code> must be
    #             supplied.</p>
    #               </li>
    #               <li>
    #                  <p>If the source type is a DB parameter group, a <code>DBParameterGroupName</code> must
    #             be supplied.</p>
    #               </li>
    #               <li>
    #                  <p>If the source type is a DB snapshot, a <code>DBSnapshotIdentifier</code> must be
    #             supplied.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::AddSourceIdentifierToSubscriptionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_source_identifier_to_subscription(
    #     subscription_name: 'SubscriptionName', # required
    #     source_identifier: 'SourceIdentifier' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AddSourceIdentifierToSubscriptionOutput
    #   resp.data.event_subscription #=> Types::EventSubscription
    #   resp.data.event_subscription.customer_aws_id #=> String
    #   resp.data.event_subscription.cust_subscription_id #=> String
    #   resp.data.event_subscription.sns_topic_arn #=> String
    #   resp.data.event_subscription.status #=> String
    #   resp.data.event_subscription.subscription_creation_time #=> String
    #   resp.data.event_subscription.source_type #=> String
    #   resp.data.event_subscription.source_ids_list #=> Array<String>
    #   resp.data.event_subscription.source_ids_list[0] #=> String
    #   resp.data.event_subscription.event_categories_list #=> Array<String>
    #   resp.data.event_subscription.event_categories_list[0] #=> String
    #   resp.data.event_subscription.enabled #=> Boolean
    #   resp.data.event_subscription.event_subscription_arn #=> String
    #
    def add_source_identifier_to_subscription(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddSourceIdentifierToSubscriptionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AddSourceIdentifierToSubscriptionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AddSourceIdentifierToSubscription
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::SubscriptionNotFoundFault, Errors::SourceNotFoundFault]),
        data_parser: Parsers::AddSourceIdentifierToSubscription
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AddSourceIdentifierToSubscription,
        stubs: @stubs,
        params_class: Params::AddSourceIdentifierToSubscriptionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :add_source_identifier_to_subscription
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds metadata tags to an Amazon Neptune resource. These tags can also be used with cost
    #       allocation reporting to track cost associated with Amazon Neptune resources, or used in a
    #       Condition statement in an IAM policy for Amazon Neptune.</p>
    #
    # @param [Hash] params
    #   See {Types::AddTagsToResourceInput}.
    #
    # @option params [String] :resource_name
    #   <p>The Amazon Neptune resource that the tags are added to. This value is an Amazon Resource
    #         Name (ARN). For information about creating an ARN, see <a href="https://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html#tagging.ARN.Constructing"> Constructing an
    #         Amazon Resource Name (ARN)</a>.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to be assigned to the Amazon Neptune resource.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DBClusterNotFoundFault, Errors::DBInstanceNotFoundFault, Errors::DBSnapshotNotFoundFault]),
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

    # <p>Applies a pending maintenance action to a resource (for example, to a DB instance).</p>
    #
    # @param [Hash] params
    #   See {Types::ApplyPendingMaintenanceActionInput}.
    #
    # @option params [String] :resource_identifier
    #   <p>The Amazon Resource Name (ARN) of the resource that the pending maintenance action applies
    #         to. For information about creating an ARN, see <a href="https://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html#tagging.ARN.Constructing"> Constructing an
    #         Amazon Resource Name (ARN)</a>.</p>
    #
    # @option params [String] :apply_action
    #   <p>The pending maintenance action to apply to this resource.</p>
    #            <p>Valid values: <code>system-update</code>, <code>db-upgrade</code>
    #            </p>
    #
    # @option params [String] :opt_in_type
    #   <p>A value that specifies the type of opt-in request, or undoes an opt-in request. An opt-in
    #         request of type <code>immediate</code> can't be undone.</p>
    #            <p>Valid values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>immediate</code> - Apply the maintenance action immediately.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>next-maintenance</code> - Apply the maintenance action during the next
    #             maintenance window for the resource.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>undo-opt-in</code> - Cancel any existing <code>next-maintenance</code> opt-in
    #             requests.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::ApplyPendingMaintenanceActionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.apply_pending_maintenance_action(
    #     resource_identifier: 'ResourceIdentifier', # required
    #     apply_action: 'ApplyAction', # required
    #     opt_in_type: 'OptInType' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ApplyPendingMaintenanceActionOutput
    #   resp.data.resource_pending_maintenance_actions #=> Types::ResourcePendingMaintenanceActions
    #   resp.data.resource_pending_maintenance_actions.resource_identifier #=> String
    #   resp.data.resource_pending_maintenance_actions.pending_maintenance_action_details #=> Array<PendingMaintenanceAction>
    #   resp.data.resource_pending_maintenance_actions.pending_maintenance_action_details[0] #=> Types::PendingMaintenanceAction
    #   resp.data.resource_pending_maintenance_actions.pending_maintenance_action_details[0].action #=> String
    #   resp.data.resource_pending_maintenance_actions.pending_maintenance_action_details[0].auto_applied_after_date #=> Time
    #   resp.data.resource_pending_maintenance_actions.pending_maintenance_action_details[0].forced_apply_date #=> Time
    #   resp.data.resource_pending_maintenance_actions.pending_maintenance_action_details[0].opt_in_status #=> String
    #   resp.data.resource_pending_maintenance_actions.pending_maintenance_action_details[0].current_apply_date #=> Time
    #   resp.data.resource_pending_maintenance_actions.pending_maintenance_action_details[0].description #=> String
    #
    def apply_pending_maintenance_action(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ApplyPendingMaintenanceActionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ApplyPendingMaintenanceActionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ApplyPendingMaintenanceAction
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundFault]),
        data_parser: Parsers::ApplyPendingMaintenanceAction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ApplyPendingMaintenanceAction,
        stubs: @stubs,
        params_class: Params::ApplyPendingMaintenanceActionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :apply_pending_maintenance_action
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Copies the specified DB cluster parameter group.</p>
    #
    # @param [Hash] params
    #   See {Types::CopyDBClusterParameterGroupInput}.
    #
    # @option params [String] :source_db_cluster_parameter_group_identifier
    #   <p>The identifier or Amazon Resource Name (ARN) for the source DB cluster parameter group.
    #         For information about creating an ARN, see <a href="https://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html#tagging.ARN.Constructing"> Constructing an
    #         Amazon Resource Name (ARN)</a>.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must specify a valid DB cluster parameter group.</p>
    #               </li>
    #               <li>
    #                  <p>If the source DB cluster parameter group is in the same Amazon Region as the copy,
    #             specify a valid DB parameter group identifier, for example
    #             <code>my-db-cluster-param-group</code>, or a valid ARN.</p>
    #               </li>
    #               <li>
    #                  <p>If the source DB parameter group is in a different Amazon Region than the copy, specify a
    #             valid DB cluster parameter group ARN, for example
    #             <code>arn:aws:rds:us-east-1:123456789012:cluster-pg:custom-cluster-group1</code>.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :target_db_cluster_parameter_group_identifier
    #   <p>The identifier for the copied DB cluster parameter group.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Cannot be null, empty, or blank</p>
    #               </li>
    #               <li>
    #                  <p>Must contain from 1 to 255 letters, numbers, or hyphens</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>my-cluster-param-group1</code>
    #            </p>
    #
    # @option params [String] :target_db_cluster_parameter_group_description
    #   <p>A description for the copied DB cluster parameter group.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to be assigned to the copied DB cluster parameter group.</p>
    #
    # @return [Types::CopyDBClusterParameterGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.copy_db_cluster_parameter_group(
    #     source_db_cluster_parameter_group_identifier: 'SourceDBClusterParameterGroupIdentifier', # required
    #     target_db_cluster_parameter_group_identifier: 'TargetDBClusterParameterGroupIdentifier', # required
    #     target_db_cluster_parameter_group_description: 'TargetDBClusterParameterGroupDescription', # required
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
    #   resp.data #=> Types::CopyDBClusterParameterGroupOutput
    #   resp.data.db_cluster_parameter_group #=> Types::DBClusterParameterGroup
    #   resp.data.db_cluster_parameter_group.db_cluster_parameter_group_name #=> String
    #   resp.data.db_cluster_parameter_group.db_parameter_group_family #=> String
    #   resp.data.db_cluster_parameter_group.description #=> String
    #   resp.data.db_cluster_parameter_group.db_cluster_parameter_group_arn #=> String
    #
    def copy_db_cluster_parameter_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CopyDBClusterParameterGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CopyDBClusterParameterGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CopyDBClusterParameterGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DBParameterGroupAlreadyExistsFault, Errors::DBParameterGroupQuotaExceededFault, Errors::DBParameterGroupNotFoundFault]),
        data_parser: Parsers::CopyDBClusterParameterGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CopyDBClusterParameterGroup,
        stubs: @stubs,
        params_class: Params::CopyDBClusterParameterGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :copy_db_cluster_parameter_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Copies a snapshot of a DB cluster.</p>
    #          <p>To copy a DB cluster snapshot from a shared manual DB cluster snapshot,
    #       <code>SourceDBClusterSnapshotIdentifier</code> must be the Amazon Resource Name (ARN) of the
    #       shared DB cluster snapshot.</p>
    #
    # @param [Hash] params
    #   See {Types::CopyDBClusterSnapshotInput}.
    #
    # @option params [String] :source_db_cluster_snapshot_identifier
    #   <p>The identifier of the DB cluster snapshot to copy. This parameter is not
    #         case-sensitive.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must specify a valid system snapshot in the "available" state.</p>
    #               </li>
    #               <li>
    #                  <p>Specify a valid DB snapshot identifier.</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>my-cluster-snapshot1</code>
    #            </p>
    #
    # @option params [String] :target_db_cluster_snapshot_identifier
    #   <p>The identifier of the new DB cluster snapshot to create from the source DB cluster
    #         snapshot. This parameter is not case-sensitive.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>my-cluster-snapshot2</code>
    #            </p>
    #
    # @option params [String] :kms_key_id
    #   <p>The Amazon Amazon KMS key ID for an encrypted DB cluster snapshot. The KMS key ID is the Amazon
    #         Resource Name (ARN), KMS key identifier, or the KMS key alias for the KMS encryption key.</p>
    #
    #            <p>If you copy an encrypted DB cluster snapshot from your Amazon account, you can specify a
    #         value for <code>KmsKeyId</code> to encrypt the copy with a new KMS encryption key. If you
    #         don't specify a value for <code>KmsKeyId</code>, then the copy of the DB cluster snapshot is
    #         encrypted with the same KMS key as the source DB cluster snapshot.</p>
    #
    #            <p>If you copy an encrypted DB cluster snapshot that is shared from another Amazon account, then
    #         you must specify a value for <code>KmsKeyId</code>.</p>
    #            <p> KMS encryption keys are specific to the Amazon Region that they are created in, and you
    #         can't use encryption keys from one Amazon Region in another Amazon Region.</p>
    #
    #            <p>You cannot encrypt an unencrypted DB cluster snapshot when you copy it. If you try to
    #         copy an unencrypted DB cluster snapshot and specify a value for the KmsKeyId parameter, an
    #         error is returned.</p>
    #
    # @option params [String] :pre_signed_url
    #   <p>Not currently supported.</p>
    #
    # @option params [Boolean] :copy_tags
    #   <p>True to copy all tags from the source DB cluster snapshot to the target DB cluster
    #         snapshot, and otherwise false. The default is false.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to assign to the new DB cluster snapshot copy.</p>
    #
    # @return [Types::CopyDBClusterSnapshotOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.copy_db_cluster_snapshot(
    #     source_db_cluster_snapshot_identifier: 'SourceDBClusterSnapshotIdentifier', # required
    #     target_db_cluster_snapshot_identifier: 'TargetDBClusterSnapshotIdentifier', # required
    #     kms_key_id: 'KmsKeyId',
    #     pre_signed_url: 'PreSignedUrl',
    #     copy_tags: false,
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
    #   resp.data #=> Types::CopyDBClusterSnapshotOutput
    #   resp.data.db_cluster_snapshot #=> Types::DBClusterSnapshot
    #   resp.data.db_cluster_snapshot.availability_zones #=> Array<String>
    #   resp.data.db_cluster_snapshot.availability_zones[0] #=> String
    #   resp.data.db_cluster_snapshot.db_cluster_snapshot_identifier #=> String
    #   resp.data.db_cluster_snapshot.db_cluster_identifier #=> String
    #   resp.data.db_cluster_snapshot.snapshot_create_time #=> Time
    #   resp.data.db_cluster_snapshot.engine #=> String
    #   resp.data.db_cluster_snapshot.allocated_storage #=> Integer
    #   resp.data.db_cluster_snapshot.status #=> String
    #   resp.data.db_cluster_snapshot.port #=> Integer
    #   resp.data.db_cluster_snapshot.vpc_id #=> String
    #   resp.data.db_cluster_snapshot.cluster_create_time #=> Time
    #   resp.data.db_cluster_snapshot.master_username #=> String
    #   resp.data.db_cluster_snapshot.engine_version #=> String
    #   resp.data.db_cluster_snapshot.license_model #=> String
    #   resp.data.db_cluster_snapshot.snapshot_type #=> String
    #   resp.data.db_cluster_snapshot.percent_progress #=> Integer
    #   resp.data.db_cluster_snapshot.storage_encrypted #=> Boolean
    #   resp.data.db_cluster_snapshot.kms_key_id #=> String
    #   resp.data.db_cluster_snapshot.db_cluster_snapshot_arn #=> String
    #   resp.data.db_cluster_snapshot.source_db_cluster_snapshot_arn #=> String
    #   resp.data.db_cluster_snapshot.iam_database_authentication_enabled #=> Boolean
    #
    def copy_db_cluster_snapshot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CopyDBClusterSnapshotInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CopyDBClusterSnapshotInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CopyDBClusterSnapshot
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidDBClusterSnapshotStateFault, Errors::SnapshotQuotaExceededFault, Errors::KMSKeyNotAccessibleFault, Errors::DBClusterSnapshotAlreadyExistsFault, Errors::InvalidDBClusterStateFault, Errors::DBClusterSnapshotNotFoundFault]),
        data_parser: Parsers::CopyDBClusterSnapshot
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CopyDBClusterSnapshot,
        stubs: @stubs,
        params_class: Params::CopyDBClusterSnapshotOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :copy_db_cluster_snapshot
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Copies the specified DB parameter group.</p>
    #
    # @param [Hash] params
    #   See {Types::CopyDBParameterGroupInput}.
    #
    # @option params [String] :source_db_parameter_group_identifier
    #   <p>The identifier or ARN for the source DB parameter group. For information about creating
    #         an ARN, see <a href="https://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html#tagging.ARN.Constructing"> Constructing an
    #         Amazon Resource Name (ARN)</a>.</p>
    #
    #            <p>Constraints:</p>
    #
    #            <ul>
    #               <li>
    #                  <p>Must specify a valid DB parameter group.</p>
    #               </li>
    #               <li>
    #                  <p>Must specify a valid DB parameter group identifier, for example
    #           <code>my-db-param-group</code>, or a valid ARN.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :target_db_parameter_group_identifier
    #   <p>The identifier for the copied DB parameter group.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Cannot be null, empty, or blank.</p>
    #               </li>
    #               <li>
    #                  <p>Must contain from 1 to 255 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #
    #            <p>Example: <code>my-db-parameter-group</code>
    #            </p>
    #
    # @option params [String] :target_db_parameter_group_description
    #   <p>A description for the copied DB parameter group.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to be assigned to the copied DB parameter group.</p>
    #
    # @return [Types::CopyDBParameterGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.copy_db_parameter_group(
    #     source_db_parameter_group_identifier: 'SourceDBParameterGroupIdentifier', # required
    #     target_db_parameter_group_identifier: 'TargetDBParameterGroupIdentifier', # required
    #     target_db_parameter_group_description: 'TargetDBParameterGroupDescription', # required
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
    #   resp.data #=> Types::CopyDBParameterGroupOutput
    #   resp.data.db_parameter_group #=> Types::DBParameterGroup
    #   resp.data.db_parameter_group.db_parameter_group_name #=> String
    #   resp.data.db_parameter_group.db_parameter_group_family #=> String
    #   resp.data.db_parameter_group.description #=> String
    #   resp.data.db_parameter_group.db_parameter_group_arn #=> String
    #
    def copy_db_parameter_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CopyDBParameterGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CopyDBParameterGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CopyDBParameterGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DBParameterGroupAlreadyExistsFault, Errors::DBParameterGroupQuotaExceededFault, Errors::DBParameterGroupNotFoundFault]),
        data_parser: Parsers::CopyDBParameterGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CopyDBParameterGroup,
        stubs: @stubs,
        params_class: Params::CopyDBParameterGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :copy_db_parameter_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new Amazon Neptune DB cluster.</p>
    #          <p>You can use the <code>ReplicationSourceIdentifier</code> parameter to create the DB
    #       cluster as a Read Replica of another DB cluster or Amazon Neptune DB instance.</p>
    #          <p>Note that when you create a new cluster using <code>CreateDBCluster</code> directly,
    #       deletion protection is disabled by default (when you create a new production cluster in
    #       the console, deletion protection is enabled by default). You can only delete a DB
    #       cluster if its <code>DeletionProtection</code> field is set to <code>false</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDBClusterInput}.
    #
    # @option params [Array<String>] :availability_zones
    #   <p>A list of EC2 Availability Zones that instances in the DB cluster can be created
    #         in.</p>
    #
    # @option params [Integer] :backup_retention_period
    #   <p>The number of days for which automated backups are retained. You must specify a minimum
    #         value of 1.</p>
    #            <p>Default: 1</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be a value from 1 to 35</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :character_set_name
    #   <p>
    #               <i>(Not supported by Neptune)</i>
    #            </p>
    #
    # @option params [Boolean] :copy_tags_to_snapshot
    #   <p>
    #               <i>If set to <code>true</code>, tags are copied to any snapshot of
    #         the DB cluster that is created.</i>
    #            </p>
    #
    # @option params [String] :database_name
    #   <p>The name for your database of up to 64 alpha-numeric characters. If you do not provide a
    #         name, Amazon Neptune will not create a database in the DB cluster you are creating.</p>
    #
    # @option params [String] :db_cluster_identifier
    #   <p>The DB cluster identifier. This parameter is stored as a lowercase string.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>my-cluster1</code>
    #            </p>
    #
    # @option params [String] :db_cluster_parameter_group_name
    #   <p> The name of the DB cluster parameter group to associate with this DB cluster. If this
    #         argument is omitted, the default is used.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If supplied, must match the name of an existing DBClusterParameterGroup.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Array<String>] :vpc_security_group_ids
    #   <p>A list of EC2 VPC security groups to associate with this DB cluster.</p>
    #
    # @option params [String] :db_subnet_group_name
    #   <p>A DB subnet group to associate with this DB cluster.</p>
    #            <p>Constraints: Must match the name of an existing DBSubnetGroup. Must not be default.</p>
    #            <p>Example: <code>mySubnetgroup</code>
    #            </p>
    #
    # @option params [String] :engine
    #   <p>The name of the database engine to be used for this DB cluster.</p>
    #            <p>Valid Values: <code>neptune</code>
    #            </p>
    #
    # @option params [String] :engine_version
    #   <p>The version number of the database engine to use for the new DB cluster.</p>
    #            <p>Example: <code>1.0.2.1</code>
    #            </p>
    #
    # @option params [Integer] :port
    #   <p>The port number on which the instances in the DB cluster accept connections.</p>
    #            <p> Default: <code>8182</code>
    #            </p>
    #
    # @option params [String] :master_username
    #   <p>Not supported by Neptune.</p>
    #
    # @option params [String] :master_user_password
    #   <p>Not supported by Neptune.</p>
    #
    # @option params [String] :option_group_name
    #   <p>
    #               <i>(Not supported by Neptune)</i>
    #            </p>
    #
    # @option params [String] :preferred_backup_window
    #   <p>The daily time range during which automated backups are created if automated backups are
    #         enabled using the <code>BackupRetentionPeriod</code> parameter.</p>
    #            <p>The default is a 30-minute window selected at random from an 8-hour block of time for each
    #         Amazon Region. To see the time blocks available, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html"> Adjusting the Preferred
    #         Maintenance Window</a> in the <i>Amazon Neptune User Guide.</i>
    #            </p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be in the format <code>hh24:mi-hh24:mi</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Must be in Universal Coordinated Time (UTC).</p>
    #               </li>
    #               <li>
    #                  <p>Must not conflict with the preferred maintenance window.</p>
    #               </li>
    #               <li>
    #                  <p>Must be at least 30 minutes.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :preferred_maintenance_window
    #   <p>The weekly time range during which system maintenance can occur, in Universal Coordinated
    #         Time (UTC).</p>
    #            <p>Format: <code>ddd:hh24:mi-ddd:hh24:mi</code>
    #            </p>
    #            <p>The default is a 30-minute window selected at random from an 8-hour block of time for each
    #         Amazon Region, occurring on a random day of the week. To see the time blocks available, see
    #         <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html"> Adjusting the Preferred
    #         Maintenance Window</a> in the <i>Amazon Neptune User Guide.</i>
    #            </p>
    #            <p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.</p>
    #            <p>Constraints: Minimum 30-minute window.</p>
    #
    # @option params [String] :replication_source_identifier
    #   <p>The Amazon Resource Name (ARN) of the source DB instance or DB cluster if this DB cluster
    #         is created as a Read Replica.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to assign to the new DB cluster.</p>
    #
    # @option params [Boolean] :storage_encrypted
    #   <p>Specifies whether the DB cluster is encrypted.</p>
    #
    # @option params [String] :kms_key_id
    #   <p>The Amazon KMS key identifier for an encrypted DB cluster.</p>
    #            <p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If
    #         you are creating a DB cluster with the same Amazon account that owns the KMS encryption key used
    #         to encrypt the new DB cluster, then you can use the KMS key alias instead of the ARN for the
    #         KMS encryption key.</p>
    #            <p>If an encryption key is not specified in <code>KmsKeyId</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>If <code>ReplicationSourceIdentifier</code> identifies an encrypted source, then
    #             Amazon Neptune will use the encryption key used to encrypt the source. Otherwise, Amazon
    #             Neptune will use your default encryption key.</p>
    #               </li>
    #               <li>
    #                  <p>If the <code>StorageEncrypted</code> parameter is true and
    #             <code>ReplicationSourceIdentifier</code> is not specified, then Amazon Neptune will use
    #             your default encryption key.</p>
    #               </li>
    #            </ul>
    #            <p>Amazon KMS creates the default encryption key for your Amazon account. Your Amazon account has a
    #         different default encryption key for each Amazon Region.</p>
    #            <p>If you create a Read Replica of an encrypted DB cluster in another Amazon Region, you must
    #         set <code>KmsKeyId</code> to a KMS key ID that is valid in the destination Amazon Region. This
    #         key is used to encrypt the Read Replica in that Amazon Region.</p>
    #
    # @option params [String] :pre_signed_url
    #   <p>This parameter is not currently supported.</p>
    #
    # @option params [Boolean] :enable_iam_database_authentication
    #   <p>If set to <code>true</code>, enables Amazon Identity and Access Management
    #         (IAM) authentication for the entire DB cluster (this cannot be set at an
    #         instance level).</p>
    #            <p>Default: <code>false</code>.</p>
    #
    # @option params [Array<String>] :enable_cloudwatch_logs_exports
    #   <p>The list of log types that need to be enabled for exporting to CloudWatch Logs.</p>
    #
    # @option params [Boolean] :deletion_protection
    #   <p>A value that indicates whether the DB cluster has deletion protection enabled.
    #         The database can't be deleted when deletion protection is enabled. By default,
    #         deletion protection is enabled.</p>
    #
    # @option params [String] :global_cluster_identifier
    #   <p>The ID of the Neptune global database to which this new DB cluster
    #         should be added.</p>
    #
    # @return [Types::CreateDBClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_db_cluster(
    #     availability_zones: [
    #       'member'
    #     ],
    #     backup_retention_period: 1,
    #     character_set_name: 'CharacterSetName',
    #     copy_tags_to_snapshot: false,
    #     database_name: 'DatabaseName',
    #     db_cluster_identifier: 'DBClusterIdentifier', # required
    #     db_cluster_parameter_group_name: 'DBClusterParameterGroupName',
    #     vpc_security_group_ids: [
    #       'member'
    #     ],
    #     db_subnet_group_name: 'DBSubnetGroupName',
    #     engine: 'Engine', # required
    #     engine_version: 'EngineVersion',
    #     port: 1,
    #     master_username: 'MasterUsername',
    #     master_user_password: 'MasterUserPassword',
    #     option_group_name: 'OptionGroupName',
    #     preferred_backup_window: 'PreferredBackupWindow',
    #     preferred_maintenance_window: 'PreferredMaintenanceWindow',
    #     replication_source_identifier: 'ReplicationSourceIdentifier',
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ],
    #     storage_encrypted: false,
    #     kms_key_id: 'KmsKeyId',
    #     pre_signed_url: 'PreSignedUrl',
    #     enable_iam_database_authentication: false,
    #     enable_cloudwatch_logs_exports: [
    #       'member'
    #     ],
    #     deletion_protection: false,
    #     global_cluster_identifier: 'GlobalClusterIdentifier'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDBClusterOutput
    #   resp.data.db_cluster #=> Types::DBCluster
    #   resp.data.db_cluster.allocated_storage #=> Integer
    #   resp.data.db_cluster.availability_zones #=> Array<String>
    #   resp.data.db_cluster.availability_zones[0] #=> String
    #   resp.data.db_cluster.backup_retention_period #=> Integer
    #   resp.data.db_cluster.character_set_name #=> String
    #   resp.data.db_cluster.database_name #=> String
    #   resp.data.db_cluster.db_cluster_identifier #=> String
    #   resp.data.db_cluster.db_cluster_parameter_group #=> String
    #   resp.data.db_cluster.db_subnet_group #=> String
    #   resp.data.db_cluster.status #=> String
    #   resp.data.db_cluster.percent_progress #=> String
    #   resp.data.db_cluster.earliest_restorable_time #=> Time
    #   resp.data.db_cluster.endpoint #=> String
    #   resp.data.db_cluster.reader_endpoint #=> String
    #   resp.data.db_cluster.multi_az #=> Boolean
    #   resp.data.db_cluster.engine #=> String
    #   resp.data.db_cluster.engine_version #=> String
    #   resp.data.db_cluster.latest_restorable_time #=> Time
    #   resp.data.db_cluster.port #=> Integer
    #   resp.data.db_cluster.master_username #=> String
    #   resp.data.db_cluster.db_cluster_option_group_memberships #=> Array<DBClusterOptionGroupStatus>
    #   resp.data.db_cluster.db_cluster_option_group_memberships[0] #=> Types::DBClusterOptionGroupStatus
    #   resp.data.db_cluster.db_cluster_option_group_memberships[0].db_cluster_option_group_name #=> String
    #   resp.data.db_cluster.db_cluster_option_group_memberships[0].status #=> String
    #   resp.data.db_cluster.preferred_backup_window #=> String
    #   resp.data.db_cluster.preferred_maintenance_window #=> String
    #   resp.data.db_cluster.replication_source_identifier #=> String
    #   resp.data.db_cluster.read_replica_identifiers #=> Array<String>
    #   resp.data.db_cluster.read_replica_identifiers[0] #=> String
    #   resp.data.db_cluster.db_cluster_members #=> Array<DBClusterMember>
    #   resp.data.db_cluster.db_cluster_members[0] #=> Types::DBClusterMember
    #   resp.data.db_cluster.db_cluster_members[0].db_instance_identifier #=> String
    #   resp.data.db_cluster.db_cluster_members[0].is_cluster_writer #=> Boolean
    #   resp.data.db_cluster.db_cluster_members[0].db_cluster_parameter_group_status #=> String
    #   resp.data.db_cluster.db_cluster_members[0].promotion_tier #=> Integer
    #   resp.data.db_cluster.vpc_security_groups #=> Array<VpcSecurityGroupMembership>
    #   resp.data.db_cluster.vpc_security_groups[0] #=> Types::VpcSecurityGroupMembership
    #   resp.data.db_cluster.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.data.db_cluster.vpc_security_groups[0].status #=> String
    #   resp.data.db_cluster.hosted_zone_id #=> String
    #   resp.data.db_cluster.storage_encrypted #=> Boolean
    #   resp.data.db_cluster.kms_key_id #=> String
    #   resp.data.db_cluster.db_cluster_resource_id #=> String
    #   resp.data.db_cluster.db_cluster_arn #=> String
    #   resp.data.db_cluster.associated_roles #=> Array<DBClusterRole>
    #   resp.data.db_cluster.associated_roles[0] #=> Types::DBClusterRole
    #   resp.data.db_cluster.associated_roles[0].role_arn #=> String
    #   resp.data.db_cluster.associated_roles[0].status #=> String
    #   resp.data.db_cluster.associated_roles[0].feature_name #=> String
    #   resp.data.db_cluster.iam_database_authentication_enabled #=> Boolean
    #   resp.data.db_cluster.clone_group_id #=> String
    #   resp.data.db_cluster.cluster_create_time #=> Time
    #   resp.data.db_cluster.copy_tags_to_snapshot #=> Boolean
    #   resp.data.db_cluster.enabled_cloudwatch_logs_exports #=> Array<String>
    #   resp.data.db_cluster.enabled_cloudwatch_logs_exports[0] #=> String
    #   resp.data.db_cluster.deletion_protection #=> Boolean
    #   resp.data.db_cluster.cross_account_clone #=> Boolean
    #   resp.data.db_cluster.automatic_restart_time #=> Time
    #
    def create_db_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDBClusterInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDBClusterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDBCluster
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DBClusterNotFoundFault, Errors::InsufficientStorageClusterCapacityFault, Errors::DBSubnetGroupDoesNotCoverEnoughAZs, Errors::GlobalClusterNotFoundFault, Errors::DBSubnetGroupNotFoundFault, Errors::InvalidDBSubnetGroupStateFault, Errors::KMSKeyNotAccessibleFault, Errors::StorageQuotaExceededFault, Errors::InvalidVPCNetworkStateFault, Errors::InvalidDBInstanceStateFault, Errors::DBClusterParameterGroupNotFoundFault, Errors::InvalidSubnet, Errors::DBInstanceNotFoundFault, Errors::InvalidGlobalClusterStateFault, Errors::DBClusterAlreadyExistsFault, Errors::InvalidDBClusterStateFault, Errors::DBClusterQuotaExceededFault]),
        data_parser: Parsers::CreateDBCluster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDBCluster,
        stubs: @stubs,
        params_class: Params::CreateDBClusterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_db_cluster
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new custom endpoint and associates it with an Amazon Neptune DB cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDBClusterEndpointInput}.
    #
    # @option params [String] :db_cluster_identifier
    #   <p>The DB cluster identifier of the DB cluster associated with the endpoint. This parameter is
    #         stored as a lowercase string.</p>
    #
    # @option params [String] :db_cluster_endpoint_identifier
    #   <p>The identifier to use for the new endpoint. This parameter is stored as a lowercase string.</p>
    #
    # @option params [String] :endpoint_type
    #   <p>The type of the endpoint. One of: <code>READER</code>, <code>WRITER</code>, <code>ANY</code>.</p>
    #
    # @option params [Array<String>] :static_members
    #   <p>List of DB instance identifiers that are part of the custom endpoint group.</p>
    #
    # @option params [Array<String>] :excluded_members
    #   <p>List of DB instance identifiers that aren't part of the custom endpoint group.
    #         All other eligible instances are reachable through the custom endpoint.
    #         Only relevant if the list of static members is empty.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to be assigned to the Amazon Neptune resource.</p>
    #
    # @return [Types::CreateDBClusterEndpointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_db_cluster_endpoint(
    #     db_cluster_identifier: 'DBClusterIdentifier', # required
    #     db_cluster_endpoint_identifier: 'DBClusterEndpointIdentifier', # required
    #     endpoint_type: 'EndpointType', # required
    #     static_members: [
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
    #   resp.data #=> Types::CreateDBClusterEndpointOutput
    #   resp.data.db_cluster_endpoint_identifier #=> String
    #   resp.data.db_cluster_identifier #=> String
    #   resp.data.db_cluster_endpoint_resource_identifier #=> String
    #   resp.data.endpoint #=> String
    #   resp.data.status #=> String
    #   resp.data.endpoint_type #=> String
    #   resp.data.custom_endpoint_type #=> String
    #   resp.data.static_members #=> Array<String>
    #   resp.data.static_members[0] #=> String
    #   resp.data.excluded_members #=> Array<String>
    #   resp.data.db_cluster_endpoint_arn #=> String
    #
    def create_db_cluster_endpoint(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDBClusterEndpointInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDBClusterEndpointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDBClusterEndpoint
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DBClusterNotFoundFault, Errors::DBInstanceNotFoundFault, Errors::InvalidDBClusterStateFault, Errors::DBClusterEndpointQuotaExceededFault, Errors::InvalidDBInstanceStateFault, Errors::DBClusterEndpointAlreadyExistsFault]),
        data_parser: Parsers::CreateDBClusterEndpoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDBClusterEndpoint,
        stubs: @stubs,
        params_class: Params::CreateDBClusterEndpointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_db_cluster_endpoint
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new DB cluster parameter group.</p>
    #          <p>Parameters in a DB cluster parameter group apply to all of the instances in a DB
    #       cluster.</p>
    #          <p> A DB cluster parameter group is initially created with the default
    #       parameters for the database engine used by instances in the DB cluster.
    #       To provide custom values for any of the parameters, you must modify the
    #       group after creating it using <a>ModifyDBClusterParameterGroup</a>.
    #       Once you've created a DB cluster parameter group, you need to associate it
    #       with your DB cluster using <a>ModifyDBCluster</a>.
    #       When you associate a new DB cluster parameter group with a running DB cluster,
    #       you need to reboot the DB instances in the DB cluster without failover for the
    #       new DB cluster parameter group and associated settings to take effect.</p>
    #          <important>
    #             <p>After you create a DB cluster parameter group, you should wait at least
    #         5 minutes before creating your first DB cluster that uses that DB cluster
    #         parameter group as the default parameter group. This allows Amazon Neptune
    #         to fully complete the create action before the DB cluster parameter group
    #         is used as the default for a new DB cluster. This is especially important for
    #         parameters that are critical when creating the default database for a DB
    #         cluster, such as the character set for the default database defined by the
    #         <code>character_set_database</code> parameter. You can use the <i>Parameter
    #         Groups</i> option of the <a href="https://console.aws.amazon.com/rds/">Amazon Neptune
    #         console</a> or the <a>DescribeDBClusterParameters</a>
    #         command to verify that your DB cluster parameter group has been created or modified.</p>
    #          </important>
    #
    # @param [Hash] params
    #   See {Types::CreateDBClusterParameterGroupInput}.
    #
    # @option params [String] :db_cluster_parameter_group_name
    #   <p>The name of the DB cluster parameter group.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match the name of an existing DBClusterParameterGroup.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>This value is stored as a lowercase string.</p>
    #            </note>
    #
    # @option params [String] :db_parameter_group_family
    #   <p>The DB cluster parameter group family name. A DB cluster parameter group can be associated
    #         with one and only one DB cluster parameter group family, and can be applied only to a DB
    #         cluster running a database engine and engine version compatible with that DB cluster parameter
    #         group family.</p>
    #
    # @option params [String] :description
    #   <p>The description for the DB cluster parameter group.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to be assigned to the new DB cluster parameter group.</p>
    #
    # @return [Types::CreateDBClusterParameterGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_db_cluster_parameter_group(
    #     db_cluster_parameter_group_name: 'DBClusterParameterGroupName', # required
    #     db_parameter_group_family: 'DBParameterGroupFamily', # required
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
    #   resp.data #=> Types::CreateDBClusterParameterGroupOutput
    #   resp.data.db_cluster_parameter_group #=> Types::DBClusterParameterGroup
    #   resp.data.db_cluster_parameter_group.db_cluster_parameter_group_name #=> String
    #   resp.data.db_cluster_parameter_group.db_parameter_group_family #=> String
    #   resp.data.db_cluster_parameter_group.description #=> String
    #   resp.data.db_cluster_parameter_group.db_cluster_parameter_group_arn #=> String
    #
    def create_db_cluster_parameter_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDBClusterParameterGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDBClusterParameterGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDBClusterParameterGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DBParameterGroupAlreadyExistsFault, Errors::DBParameterGroupQuotaExceededFault]),
        data_parser: Parsers::CreateDBClusterParameterGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDBClusterParameterGroup,
        stubs: @stubs,
        params_class: Params::CreateDBClusterParameterGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_db_cluster_parameter_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a snapshot of a DB cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDBClusterSnapshotInput}.
    #
    # @option params [String] :db_cluster_snapshot_identifier
    #   <p>The identifier of the DB cluster snapshot. This parameter is stored as a lowercase
    #         string.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>my-cluster1-snapshot1</code>
    #            </p>
    #
    # @option params [String] :db_cluster_identifier
    #   <p>The identifier of the DB cluster to create a snapshot for. This parameter is not
    #         case-sensitive.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match the identifier of an existing DBCluster.</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>my-cluster1</code>
    #            </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to be assigned to the DB cluster snapshot.</p>
    #
    # @return [Types::CreateDBClusterSnapshotOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_db_cluster_snapshot(
    #     db_cluster_snapshot_identifier: 'DBClusterSnapshotIdentifier', # required
    #     db_cluster_identifier: 'DBClusterIdentifier', # required
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
    #   resp.data #=> Types::CreateDBClusterSnapshotOutput
    #   resp.data.db_cluster_snapshot #=> Types::DBClusterSnapshot
    #   resp.data.db_cluster_snapshot.availability_zones #=> Array<String>
    #   resp.data.db_cluster_snapshot.availability_zones[0] #=> String
    #   resp.data.db_cluster_snapshot.db_cluster_snapshot_identifier #=> String
    #   resp.data.db_cluster_snapshot.db_cluster_identifier #=> String
    #   resp.data.db_cluster_snapshot.snapshot_create_time #=> Time
    #   resp.data.db_cluster_snapshot.engine #=> String
    #   resp.data.db_cluster_snapshot.allocated_storage #=> Integer
    #   resp.data.db_cluster_snapshot.status #=> String
    #   resp.data.db_cluster_snapshot.port #=> Integer
    #   resp.data.db_cluster_snapshot.vpc_id #=> String
    #   resp.data.db_cluster_snapshot.cluster_create_time #=> Time
    #   resp.data.db_cluster_snapshot.master_username #=> String
    #   resp.data.db_cluster_snapshot.engine_version #=> String
    #   resp.data.db_cluster_snapshot.license_model #=> String
    #   resp.data.db_cluster_snapshot.snapshot_type #=> String
    #   resp.data.db_cluster_snapshot.percent_progress #=> Integer
    #   resp.data.db_cluster_snapshot.storage_encrypted #=> Boolean
    #   resp.data.db_cluster_snapshot.kms_key_id #=> String
    #   resp.data.db_cluster_snapshot.db_cluster_snapshot_arn #=> String
    #   resp.data.db_cluster_snapshot.source_db_cluster_snapshot_arn #=> String
    #   resp.data.db_cluster_snapshot.iam_database_authentication_enabled #=> Boolean
    #
    def create_db_cluster_snapshot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDBClusterSnapshotInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDBClusterSnapshotInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDBClusterSnapshot
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DBClusterNotFoundFault, Errors::InvalidDBClusterSnapshotStateFault, Errors::SnapshotQuotaExceededFault, Errors::DBClusterSnapshotAlreadyExistsFault, Errors::InvalidDBClusterStateFault]),
        data_parser: Parsers::CreateDBClusterSnapshot
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDBClusterSnapshot,
        stubs: @stubs,
        params_class: Params::CreateDBClusterSnapshotOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_db_cluster_snapshot
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new DB instance.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDBInstanceInput}.
    #
    # @option params [String] :db_name
    #   <p>Not supported.</p>
    #
    # @option params [String] :db_instance_identifier
    #   <p>The DB instance identifier. This parameter is stored as a lowercase string.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>mydbinstance</code>
    #            </p>
    #
    # @option params [Integer] :allocated_storage
    #   <p>Not supported by Neptune.</p>
    #
    # @option params [String] :db_instance_class
    #   <p>The compute and memory capacity of the DB instance, for example, <code>db.m4.large</code>.
    #         Not all DB instance classes are available in all Amazon Regions.</p>
    #
    # @option params [String] :engine
    #   <p>The name of the database engine to be used for this instance.</p>
    #            <p>Valid Values: <code>neptune</code>
    #            </p>
    #
    # @option params [String] :master_username
    #   <p>Not supported by Neptune.</p>
    #
    # @option params [String] :master_user_password
    #   <p>Not supported by Neptune.</p>
    #
    # @option params [Array<String>] :db_security_groups
    #   <p>A list of DB security groups to associate with this DB instance.</p>
    #            <p>Default: The default DB security group for the database engine.</p>
    #
    # @option params [Array<String>] :vpc_security_group_ids
    #   <p>A list of EC2 VPC security groups to associate with this DB instance.</p>
    #            <p>Not applicable. The associated list of EC2 VPC security groups is managed by the DB
    #         cluster. For more information, see <a>CreateDBCluster</a>.</p>
    #            <p>Default: The default EC2 VPC security group for the DB subnet group's VPC.</p>
    #
    # @option params [String] :availability_zone
    #   <p> The EC2 Availability Zone that the DB instance is created in</p>
    #            <p>Default: A random, system-chosen Availability Zone in the endpoint's Amazon Region.</p>
    #            <p> Example: <code>us-east-1d</code>
    #            </p>
    #            <p> Constraint: The AvailabilityZone parameter can't be specified if the MultiAZ parameter is
    #         set to <code>true</code>. The specified Availability Zone must be in the same Amazon Region as
    #         the current endpoint.</p>
    #
    # @option params [String] :db_subnet_group_name
    #   <p>A DB subnet group to associate with this DB instance.</p>
    #            <p>If there is no DB subnet group, then it is a non-VPC DB instance.</p>
    #
    # @option params [String] :preferred_maintenance_window
    #   <p>The time range each week during which system maintenance can occur, in Universal
    #         Coordinated Time (UTC).</p>
    #            <p> Format: <code>ddd:hh24:mi-ddd:hh24:mi</code>
    #            </p>
    #            <p>The default is a 30-minute window selected at random from an 8-hour block of time for each
    #         Amazon Region, occurring on a random day of the week.</p>
    #            <p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.</p>
    #            <p>Constraints: Minimum 30-minute window.</p>
    #
    # @option params [String] :db_parameter_group_name
    #   <p>The name of the DB parameter group to associate with this DB instance. If this argument is
    #         omitted, the default DBParameterGroup for the specified engine is used.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be 1 to 255 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #            </ul>
    #
    # @option params [Integer] :backup_retention_period
    #   <p>The number of days for which automated backups are
    #         retained.</p>
    #            <p>Not applicable. The retention period for automated backups is managed by the DB cluster.
    #         For more information, see <a>CreateDBCluster</a>.</p>
    #            <p>Default: 1</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be a value from 0 to 35</p>
    #               </li>
    #               <li>
    #                  <p>Cannot be set to 0 if the DB instance is a source to Read Replicas</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :preferred_backup_window
    #   <p> The daily time range during which automated backups are created.</p>
    #            <p>Not applicable. The daily time range for creating automated backups is managed by the DB
    #         cluster. For more information, see <a>CreateDBCluster</a>.</p>
    #
    # @option params [Integer] :port
    #   <p>The port number on which the database accepts connections.</p>
    #            <p>Not applicable. The port is managed by the DB cluster. For more information, see <a>CreateDBCluster</a>.</p>
    #            <p> Default: <code>8182</code>
    #            </p>
    #            <p>Type: Integer</p>
    #
    # @option params [Boolean] :multi_az
    #   <p>Specifies if the DB instance is a Multi-AZ deployment. You can't set the AvailabilityZone
    #         parameter if the MultiAZ parameter is set to true.</p>
    #
    # @option params [String] :engine_version
    #   <p>The version number of the database engine to use. Currently, setting this
    #         parameter has no effect.</p>
    #
    # @option params [Boolean] :auto_minor_version_upgrade
    #   <p>Indicates that minor engine upgrades are applied automatically to the DB instance during
    #         the maintenance window.</p>
    #            <p>Default: <code>true</code>
    #            </p>
    #
    # @option params [String] :license_model
    #   <p>License model information for this DB instance.</p>
    #            <p> Valid values: <code>license-included</code> | <code>bring-your-own-license</code> |
    #         <code>general-public-license</code>
    #            </p>
    #
    # @option params [Integer] :iops
    #   <p>The amount of Provisioned IOPS (input/output operations per second) to be initially
    #         allocated for the DB instance.</p>
    #
    # @option params [String] :option_group_name
    #   <p>
    #               <i>(Not supported by Neptune)</i>
    #            </p>
    #
    # @option params [String] :character_set_name
    #   <p>
    #               <i>(Not supported by Neptune)</i>
    #            </p>
    #
    # @option params [Boolean] :publicly_accessible
    #   <p>This flag should no longer be used.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to assign to the new instance.</p>
    #
    # @option params [String] :db_cluster_identifier
    #   <p>The identifier of the DB cluster that the instance will belong to.</p>
    #            <p>For information on creating a DB cluster, see <a>CreateDBCluster</a>.</p>
    #            <p>Type: String</p>
    #
    # @option params [String] :storage_type
    #   <p>Specifies the storage type to be associated with the DB instance.</p>
    #            <p>Not applicable. Storage is managed by the DB Cluster.</p>
    #
    # @option params [String] :tde_credential_arn
    #   <p>The ARN from the key store with which to associate the instance for TDE encryption.</p>
    #
    # @option params [String] :tde_credential_password
    #   <p>The password for the given ARN from the key store in order to access the device.</p>
    #
    # @option params [Boolean] :storage_encrypted
    #   <p>Specifies whether the DB instance is encrypted.</p>
    #            <p>Not applicable. The encryption for DB instances is managed by the DB cluster. For more
    #         information, see <a>CreateDBCluster</a>.</p>
    #            <p>Default: false</p>
    #
    # @option params [String] :kms_key_id
    #   <p>The Amazon KMS key identifier for an encrypted DB instance.</p>
    #            <p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If
    #         you are creating a DB instance with the same Amazon account that owns the KMS encryption key used
    #         to encrypt the new DB instance, then you can use the KMS key alias instead of the ARN for the
    #         KM encryption key.</p>
    #            <p>Not applicable. The KMS key identifier is managed by the DB cluster. For more information,
    #         see <a>CreateDBCluster</a>.</p>
    #            <p>If the <code>StorageEncrypted</code> parameter is true, and you do not specify a value for
    #         the <code>KmsKeyId</code> parameter, then Amazon Neptune will use your default encryption key.
    #         Amazon KMS creates the default encryption key for your Amazon account. Your Amazon account has a
    #         different default encryption key for each Amazon Region.</p>
    #
    # @option params [String] :domain
    #   <p>Specify the Active Directory Domain to create the instance in.</p>
    #
    # @option params [Boolean] :copy_tags_to_snapshot
    #   <p>True to copy all tags from the DB instance to snapshots of the DB instance, and otherwise
    #         false. The default is false.</p>
    #
    # @option params [Integer] :monitoring_interval
    #   <p>The interval, in seconds, between points when Enhanced Monitoring metrics are collected
    #         for the DB instance. To disable collecting Enhanced Monitoring metrics, specify 0. The default
    #         is 0.</p>
    #            <p>If <code>MonitoringRoleArn</code> is specified, then you must also set
    #         <code>MonitoringInterval</code> to a value other than 0.</p>
    #            <p>Valid Values: <code>0, 1, 5, 10, 15, 30, 60</code>
    #            </p>
    #
    # @option params [String] :monitoring_role_arn
    #   <p>The ARN for the IAM role that permits Neptune to send enhanced monitoring metrics to
    #         Amazon CloudWatch Logs. For example,
    #         <code>arn:aws:iam:123456789012:role/emaccess</code>.</p>
    #            <p>If <code>MonitoringInterval</code> is set to a value other than 0, then you must supply a
    #         <code>MonitoringRoleArn</code> value.</p>
    #
    # @option params [String] :domain_iam_role_name
    #   <p>Specify the name of the IAM role to be used when making API calls to the Directory
    #         Service.</p>
    #
    # @option params [Integer] :promotion_tier
    #   <p>A value that specifies the order in which an Read Replica is promoted to the primary
    #         instance after a failure of the existing primary instance.
    #         </p>
    #            <p>Default: 1</p>
    #            <p>Valid Values: 0 - 15</p>
    #
    # @option params [String] :timezone
    #   <p>The time zone of the DB instance.</p>
    #
    # @option params [Boolean] :enable_iam_database_authentication
    #   <p>Not supported by Neptune (ignored).</p>
    #
    # @option params [Boolean] :enable_performance_insights
    #   <p>
    #               <i>(Not supported by Neptune)</i>
    #            </p>
    #
    # @option params [String] :performance_insights_kms_key_id
    #   <p>
    #               <i>(Not supported by Neptune)</i>
    #            </p>
    #
    # @option params [Array<String>] :enable_cloudwatch_logs_exports
    #   <p>The list of log types that need to be enabled for exporting to CloudWatch Logs.</p>
    #
    # @option params [Boolean] :deletion_protection
    #   <p>A value that indicates whether the DB instance has deletion protection enabled.
    #         The database can't be deleted when deletion protection is enabled. By default,
    #         deletion protection is disabled. See <a href="https://docs.aws.amazon.com/neptune/latest/userguide/manage-console-instances-delete.html">Deleting
    #         a DB Instance</a>.</p>
    #
    #            <p>DB instances in a DB cluster can be deleted even when deletion
    #         protection is enabled in their parent DB cluster.</p>
    #
    # @return [Types::CreateDBInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_db_instance(
    #     db_name: 'DBName',
    #     db_instance_identifier: 'DBInstanceIdentifier', # required
    #     allocated_storage: 1,
    #     db_instance_class: 'DBInstanceClass', # required
    #     engine: 'Engine', # required
    #     master_username: 'MasterUsername',
    #     master_user_password: 'MasterUserPassword',
    #     db_security_groups: [
    #       'member'
    #     ],
    #     vpc_security_group_ids: [
    #       'member'
    #     ],
    #     availability_zone: 'AvailabilityZone',
    #     db_subnet_group_name: 'DBSubnetGroupName',
    #     preferred_maintenance_window: 'PreferredMaintenanceWindow',
    #     db_parameter_group_name: 'DBParameterGroupName',
    #     backup_retention_period: 1,
    #     preferred_backup_window: 'PreferredBackupWindow',
    #     port: 1,
    #     multi_az: false,
    #     engine_version: 'EngineVersion',
    #     auto_minor_version_upgrade: false,
    #     license_model: 'LicenseModel',
    #     iops: 1,
    #     option_group_name: 'OptionGroupName',
    #     character_set_name: 'CharacterSetName',
    #     publicly_accessible: false,
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ],
    #     db_cluster_identifier: 'DBClusterIdentifier',
    #     storage_type: 'StorageType',
    #     tde_credential_arn: 'TdeCredentialArn',
    #     tde_credential_password: 'TdeCredentialPassword',
    #     storage_encrypted: false,
    #     kms_key_id: 'KmsKeyId',
    #     domain: 'Domain',
    #     copy_tags_to_snapshot: false,
    #     monitoring_interval: 1,
    #     monitoring_role_arn: 'MonitoringRoleArn',
    #     domain_iam_role_name: 'DomainIAMRoleName',
    #     promotion_tier: 1,
    #     timezone: 'Timezone',
    #     enable_iam_database_authentication: false,
    #     enable_performance_insights: false,
    #     performance_insights_kms_key_id: 'PerformanceInsightsKMSKeyId',
    #     enable_cloudwatch_logs_exports: [
    #       'member'
    #     ],
    #     deletion_protection: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDBInstanceOutput
    #   resp.data.db_instance #=> Types::DBInstance
    #   resp.data.db_instance.db_instance_identifier #=> String
    #   resp.data.db_instance.db_instance_class #=> String
    #   resp.data.db_instance.engine #=> String
    #   resp.data.db_instance.db_instance_status #=> String
    #   resp.data.db_instance.master_username #=> String
    #   resp.data.db_instance.db_name #=> String
    #   resp.data.db_instance.endpoint #=> Types::Endpoint
    #   resp.data.db_instance.endpoint.address #=> String
    #   resp.data.db_instance.endpoint.port #=> Integer
    #   resp.data.db_instance.endpoint.hosted_zone_id #=> String
    #   resp.data.db_instance.allocated_storage #=> Integer
    #   resp.data.db_instance.instance_create_time #=> Time
    #   resp.data.db_instance.preferred_backup_window #=> String
    #   resp.data.db_instance.backup_retention_period #=> Integer
    #   resp.data.db_instance.db_security_groups #=> Array<DBSecurityGroupMembership>
    #   resp.data.db_instance.db_security_groups[0] #=> Types::DBSecurityGroupMembership
    #   resp.data.db_instance.db_security_groups[0].db_security_group_name #=> String
    #   resp.data.db_instance.db_security_groups[0].status #=> String
    #   resp.data.db_instance.vpc_security_groups #=> Array<VpcSecurityGroupMembership>
    #   resp.data.db_instance.vpc_security_groups[0] #=> Types::VpcSecurityGroupMembership
    #   resp.data.db_instance.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.data.db_instance.vpc_security_groups[0].status #=> String
    #   resp.data.db_instance.db_parameter_groups #=> Array<DBParameterGroupStatus>
    #   resp.data.db_instance.db_parameter_groups[0] #=> Types::DBParameterGroupStatus
    #   resp.data.db_instance.db_parameter_groups[0].db_parameter_group_name #=> String
    #   resp.data.db_instance.db_parameter_groups[0].parameter_apply_status #=> String
    #   resp.data.db_instance.availability_zone #=> String
    #   resp.data.db_instance.db_subnet_group #=> Types::DBSubnetGroup
    #   resp.data.db_instance.db_subnet_group.db_subnet_group_name #=> String
    #   resp.data.db_instance.db_subnet_group.db_subnet_group_description #=> String
    #   resp.data.db_instance.db_subnet_group.vpc_id #=> String
    #   resp.data.db_instance.db_subnet_group.subnet_group_status #=> String
    #   resp.data.db_instance.db_subnet_group.subnets #=> Array<Subnet>
    #   resp.data.db_instance.db_subnet_group.subnets[0] #=> Types::Subnet
    #   resp.data.db_instance.db_subnet_group.subnets[0].subnet_identifier #=> String
    #   resp.data.db_instance.db_subnet_group.subnets[0].subnet_availability_zone #=> Types::AvailabilityZone
    #   resp.data.db_instance.db_subnet_group.subnets[0].subnet_availability_zone.name #=> String
    #   resp.data.db_instance.db_subnet_group.subnets[0].subnet_status #=> String
    #   resp.data.db_instance.db_subnet_group.db_subnet_group_arn #=> String
    #   resp.data.db_instance.preferred_maintenance_window #=> String
    #   resp.data.db_instance.pending_modified_values #=> Types::PendingModifiedValues
    #   resp.data.db_instance.pending_modified_values.db_instance_class #=> String
    #   resp.data.db_instance.pending_modified_values.allocated_storage #=> Integer
    #   resp.data.db_instance.pending_modified_values.master_user_password #=> String
    #   resp.data.db_instance.pending_modified_values.port #=> Integer
    #   resp.data.db_instance.pending_modified_values.backup_retention_period #=> Integer
    #   resp.data.db_instance.pending_modified_values.multi_az #=> Boolean
    #   resp.data.db_instance.pending_modified_values.engine_version #=> String
    #   resp.data.db_instance.pending_modified_values.license_model #=> String
    #   resp.data.db_instance.pending_modified_values.iops #=> Integer
    #   resp.data.db_instance.pending_modified_values.db_instance_identifier #=> String
    #   resp.data.db_instance.pending_modified_values.storage_type #=> String
    #   resp.data.db_instance.pending_modified_values.ca_certificate_identifier #=> String
    #   resp.data.db_instance.pending_modified_values.db_subnet_group_name #=> String
    #   resp.data.db_instance.pending_modified_values.pending_cloudwatch_logs_exports #=> Types::PendingCloudwatchLogsExports
    #   resp.data.db_instance.pending_modified_values.pending_cloudwatch_logs_exports.log_types_to_enable #=> Array<String>
    #   resp.data.db_instance.pending_modified_values.pending_cloudwatch_logs_exports.log_types_to_enable[0] #=> String
    #   resp.data.db_instance.pending_modified_values.pending_cloudwatch_logs_exports.log_types_to_disable #=> Array<String>
    #   resp.data.db_instance.latest_restorable_time #=> Time
    #   resp.data.db_instance.multi_az #=> Boolean
    #   resp.data.db_instance.engine_version #=> String
    #   resp.data.db_instance.auto_minor_version_upgrade #=> Boolean
    #   resp.data.db_instance.read_replica_source_db_instance_identifier #=> String
    #   resp.data.db_instance.read_replica_db_instance_identifiers #=> Array<String>
    #   resp.data.db_instance.read_replica_db_instance_identifiers[0] #=> String
    #   resp.data.db_instance.read_replica_db_cluster_identifiers #=> Array<String>
    #   resp.data.db_instance.read_replica_db_cluster_identifiers[0] #=> String
    #   resp.data.db_instance.license_model #=> String
    #   resp.data.db_instance.iops #=> Integer
    #   resp.data.db_instance.option_group_memberships #=> Array<OptionGroupMembership>
    #   resp.data.db_instance.option_group_memberships[0] #=> Types::OptionGroupMembership
    #   resp.data.db_instance.option_group_memberships[0].option_group_name #=> String
    #   resp.data.db_instance.option_group_memberships[0].status #=> String
    #   resp.data.db_instance.character_set_name #=> String
    #   resp.data.db_instance.secondary_availability_zone #=> String
    #   resp.data.db_instance.publicly_accessible #=> Boolean
    #   resp.data.db_instance.status_infos #=> Array<DBInstanceStatusInfo>
    #   resp.data.db_instance.status_infos[0] #=> Types::DBInstanceStatusInfo
    #   resp.data.db_instance.status_infos[0].status_type #=> String
    #   resp.data.db_instance.status_infos[0].normal #=> Boolean
    #   resp.data.db_instance.status_infos[0].status #=> String
    #   resp.data.db_instance.status_infos[0].message #=> String
    #   resp.data.db_instance.storage_type #=> String
    #   resp.data.db_instance.tde_credential_arn #=> String
    #   resp.data.db_instance.db_instance_port #=> Integer
    #   resp.data.db_instance.db_cluster_identifier #=> String
    #   resp.data.db_instance.storage_encrypted #=> Boolean
    #   resp.data.db_instance.kms_key_id #=> String
    #   resp.data.db_instance.dbi_resource_id #=> String
    #   resp.data.db_instance.ca_certificate_identifier #=> String
    #   resp.data.db_instance.domain_memberships #=> Array<DomainMembership>
    #   resp.data.db_instance.domain_memberships[0] #=> Types::DomainMembership
    #   resp.data.db_instance.domain_memberships[0].domain #=> String
    #   resp.data.db_instance.domain_memberships[0].status #=> String
    #   resp.data.db_instance.domain_memberships[0].fqdn #=> String
    #   resp.data.db_instance.domain_memberships[0].iam_role_name #=> String
    #   resp.data.db_instance.copy_tags_to_snapshot #=> Boolean
    #   resp.data.db_instance.monitoring_interval #=> Integer
    #   resp.data.db_instance.enhanced_monitoring_resource_arn #=> String
    #   resp.data.db_instance.monitoring_role_arn #=> String
    #   resp.data.db_instance.promotion_tier #=> Integer
    #   resp.data.db_instance.db_instance_arn #=> String
    #   resp.data.db_instance.timezone #=> String
    #   resp.data.db_instance.iam_database_authentication_enabled #=> Boolean
    #   resp.data.db_instance.performance_insights_enabled #=> Boolean
    #   resp.data.db_instance.performance_insights_kms_key_id #=> String
    #   resp.data.db_instance.enabled_cloudwatch_logs_exports #=> Array<String>
    #   resp.data.db_instance.deletion_protection #=> Boolean
    #
    def create_db_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDBInstanceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDBInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDBInstance
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DBClusterNotFoundFault, Errors::InstanceQuotaExceededFault, Errors::DBSubnetGroupDoesNotCoverEnoughAZs, Errors::DBSubnetGroupNotFoundFault, Errors::KMSKeyNotAccessibleFault, Errors::StorageQuotaExceededFault, Errors::InvalidVPCNetworkStateFault, Errors::OptionGroupNotFoundFault, Errors::DBInstanceAlreadyExistsFault, Errors::InvalidSubnet, Errors::InsufficientDBInstanceCapacityFault, Errors::DomainNotFoundFault, Errors::ProvisionedIopsNotAvailableInAZFault, Errors::DBSecurityGroupNotFoundFault, Errors::StorageTypeNotSupportedFault, Errors::InvalidDBClusterStateFault, Errors::AuthorizationNotFoundFault, Errors::DBParameterGroupNotFoundFault]),
        data_parser: Parsers::CreateDBInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDBInstance,
        stubs: @stubs,
        params_class: Params::CreateDBInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_db_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new DB parameter group.</p>
    #
    #          <p>A DB parameter group is initially created with the default parameters for the database
    #       engine used by the DB instance. To provide custom values for any of the parameters, you must
    #       modify the group after creating it using <i>ModifyDBParameterGroup</i>. Once
    #       you've created a DB parameter group, you need to associate it with your DB instance using
    #       <i>ModifyDBInstance</i>. When you associate a new DB parameter group with a
    #       running DB instance, you need to reboot the DB instance without failover for the new DB
    #       parameter group and associated settings to take effect.</p>
    #
    #          <important>
    #             <p>After you create a DB parameter group, you should wait at least 5 minutes before
    #         creating your first DB instance that uses that DB parameter group as the default parameter
    #         group. This allows Amazon Neptune to fully complete the create action before the parameter
    #         group is used as the default for a new DB instance. This is especially important for
    #         parameters that are critical when creating the default database for a DB instance, such as
    #         the character set for the default database defined by the
    #         <code>character_set_database</code> parameter. You can use the <i>Parameter
    #         Groups</i> option of the Amazon Neptune console or the
    #         <i>DescribeDBParameters</i> command to verify that your DB parameter group has
    #         been created or modified.</p>
    #          </important>
    #
    # @param [Hash] params
    #   See {Types::CreateDBParameterGroupInput}.
    #
    # @option params [String] :db_parameter_group_name
    #   <p>The name of the DB parameter group.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be 1 to 255 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>This value is stored as a lowercase string.</p>
    #            </note>
    #
    # @option params [String] :db_parameter_group_family
    #   <p>The DB parameter group family name. A DB parameter group can be associated with one and
    #         only one DB parameter group family, and can be applied only to a DB instance running a
    #         database engine and engine version compatible with that DB parameter group family.</p>
    #
    # @option params [String] :description
    #   <p>The description for the DB parameter group.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to be assigned to the new DB parameter group.</p>
    #
    # @return [Types::CreateDBParameterGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_db_parameter_group(
    #     db_parameter_group_name: 'DBParameterGroupName', # required
    #     db_parameter_group_family: 'DBParameterGroupFamily', # required
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
    #   resp.data #=> Types::CreateDBParameterGroupOutput
    #   resp.data.db_parameter_group #=> Types::DBParameterGroup
    #   resp.data.db_parameter_group.db_parameter_group_name #=> String
    #   resp.data.db_parameter_group.db_parameter_group_family #=> String
    #   resp.data.db_parameter_group.description #=> String
    #   resp.data.db_parameter_group.db_parameter_group_arn #=> String
    #
    def create_db_parameter_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDBParameterGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDBParameterGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDBParameterGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DBParameterGroupAlreadyExistsFault, Errors::DBParameterGroupQuotaExceededFault]),
        data_parser: Parsers::CreateDBParameterGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDBParameterGroup,
        stubs: @stubs,
        params_class: Params::CreateDBParameterGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_db_parameter_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new DB subnet group. DB subnet groups must contain at least one subnet in at
    #       least two AZs in the Amazon Region.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDBSubnetGroupInput}.
    #
    # @option params [String] :db_subnet_group_name
    #   <p>The name for the DB subnet group. This value is stored as a lowercase string.</p>
    #            <p>Constraints: Must contain no more than 255 letters, numbers, periods, underscores, spaces,
    #         or hyphens. Must not be default.</p>
    #            <p>Example: <code>mySubnetgroup</code>
    #            </p>
    #
    # @option params [String] :db_subnet_group_description
    #   <p>The description for the DB subnet group.</p>
    #
    # @option params [Array<String>] :subnet_ids
    #   <p>The EC2 Subnet IDs for the DB subnet group.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to be assigned to the new DB subnet group.</p>
    #
    # @return [Types::CreateDBSubnetGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_db_subnet_group(
    #     db_subnet_group_name: 'DBSubnetGroupName', # required
    #     db_subnet_group_description: 'DBSubnetGroupDescription', # required
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
    #   resp.data #=> Types::CreateDBSubnetGroupOutput
    #   resp.data.db_subnet_group #=> Types::DBSubnetGroup
    #   resp.data.db_subnet_group.db_subnet_group_name #=> String
    #   resp.data.db_subnet_group.db_subnet_group_description #=> String
    #   resp.data.db_subnet_group.vpc_id #=> String
    #   resp.data.db_subnet_group.subnet_group_status #=> String
    #   resp.data.db_subnet_group.subnets #=> Array<Subnet>
    #   resp.data.db_subnet_group.subnets[0] #=> Types::Subnet
    #   resp.data.db_subnet_group.subnets[0].subnet_identifier #=> String
    #   resp.data.db_subnet_group.subnets[0].subnet_availability_zone #=> Types::AvailabilityZone
    #   resp.data.db_subnet_group.subnets[0].subnet_availability_zone.name #=> String
    #   resp.data.db_subnet_group.subnets[0].subnet_status #=> String
    #   resp.data.db_subnet_group.db_subnet_group_arn #=> String
    #
    def create_db_subnet_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDBSubnetGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDBSubnetGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDBSubnetGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DBSubnetGroupDoesNotCoverEnoughAZs, Errors::DBSubnetGroupQuotaExceededFault, Errors::DBSubnetQuotaExceededFault, Errors::DBSubnetGroupAlreadyExistsFault, Errors::InvalidSubnet]),
        data_parser: Parsers::CreateDBSubnetGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDBSubnetGroup,
        stubs: @stubs,
        params_class: Params::CreateDBSubnetGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_db_subnet_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an event notification subscription. This action requires a topic ARN (Amazon
    #       Resource Name) created by either the Neptune console, the SNS console, or the SNS API. To
    #       obtain an ARN with SNS, you must create a topic in Amazon SNS and subscribe to the topic. The
    #       ARN is displayed in the SNS console.</p>
    #          <p>You can specify the type of source (SourceType) you want to be notified of, provide a list
    #       of Neptune sources (SourceIds) that triggers the events, and provide a list of event
    #       categories (EventCategories) for events you want to be notified of. For example, you can
    #       specify SourceType = db-instance, SourceIds = mydbinstance1, mydbinstance2 and EventCategories
    #       = Availability, Backup.</p>
    #          <p>If you specify both the SourceType and SourceIds, such as SourceType = db-instance and
    #       SourceIdentifier = myDBInstance1, you are notified of all the db-instance events for the
    #       specified source. If you specify a SourceType but do not specify a SourceIdentifier, you
    #       receive notice of the events for that source type for all your Neptune sources. If you do not
    #       specify either the SourceType nor the SourceIdentifier, you are notified of events generated
    #       from all Neptune sources belonging to your customer account.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateEventSubscriptionInput}.
    #
    # @option params [String] :subscription_name
    #   <p>The name of the subscription.</p>
    #            <p>Constraints: The name must be less than 255 characters.</p>
    #
    # @option params [String] :sns_topic_arn
    #   <p>The Amazon Resource Name (ARN) of the SNS topic created for event notification. The ARN is
    #         created by Amazon SNS when you create a topic and subscribe to it.</p>
    #
    # @option params [String] :source_type
    #   <p>The type of source that is generating the events. For example, if you want to be notified
    #         of events generated by a DB instance, you would set this parameter to db-instance. if this
    #         value is not specified, all events are returned.</p>
    #            <p>Valid values: <code>db-instance</code> | <code>db-cluster</code> |
    #         <code>db-parameter-group</code> | <code>db-security-group</code> | <code>db-snapshot</code> |
    #         <code>db-cluster-snapshot</code>
    #            </p>
    #
    # @option params [Array<String>] :event_categories
    #   <p> A list of event categories for a SourceType that you want to subscribe to. You can see a
    #         list of the categories for a given SourceType by using the
    #         <b>DescribeEventCategories</b> action.</p>
    #
    # @option params [Array<String>] :source_ids
    #   <p>The list of identifiers of the event sources for which events are returned. If not
    #         specified, then all sources are included in the response. An identifier must begin with a
    #         letter and must contain only ASCII letters, digits, and hyphens; it can't end with a hyphen or
    #         contain two consecutive hyphens.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If SourceIds are supplied, SourceType must also be provided.</p>
    #               </li>
    #               <li>
    #                  <p>If the source type is a DB instance, then a <code>DBInstanceIdentifier</code> must be
    #             supplied.</p>
    #               </li>
    #               <li>
    #                  <p>If the source type is a DB security group, a <code>DBSecurityGroupName</code> must be
    #             supplied.</p>
    #               </li>
    #               <li>
    #                  <p>If the source type is a DB parameter group, a <code>DBParameterGroupName</code> must
    #             be supplied.</p>
    #               </li>
    #               <li>
    #                  <p>If the source type is a DB snapshot, a <code>DBSnapshotIdentifier</code> must be
    #             supplied.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Boolean] :enabled
    #   <p> A Boolean value; set to <b>true</b> to activate the
    #         subscription, set to <b>false</b> to create the subscription but not
    #         active it.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to be applied to the new event subscription.</p>
    #
    # @return [Types::CreateEventSubscriptionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_event_subscription(
    #     subscription_name: 'SubscriptionName', # required
    #     sns_topic_arn: 'SnsTopicArn', # required
    #     source_type: 'SourceType',
    #     event_categories: [
    #       'member'
    #     ],
    #     source_ids: [
    #       'member'
    #     ],
    #     enabled: false,
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
    #   resp.data #=> Types::CreateEventSubscriptionOutput
    #   resp.data.event_subscription #=> Types::EventSubscription
    #   resp.data.event_subscription.customer_aws_id #=> String
    #   resp.data.event_subscription.cust_subscription_id #=> String
    #   resp.data.event_subscription.sns_topic_arn #=> String
    #   resp.data.event_subscription.status #=> String
    #   resp.data.event_subscription.subscription_creation_time #=> String
    #   resp.data.event_subscription.source_type #=> String
    #   resp.data.event_subscription.source_ids_list #=> Array<String>
    #   resp.data.event_subscription.source_ids_list[0] #=> String
    #   resp.data.event_subscription.event_categories_list #=> Array<String>
    #   resp.data.event_subscription.event_categories_list[0] #=> String
    #   resp.data.event_subscription.enabled #=> Boolean
    #   resp.data.event_subscription.event_subscription_arn #=> String
    #
    def create_event_subscription(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateEventSubscriptionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateEventSubscriptionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateEventSubscription
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::SubscriptionCategoryNotFoundFault, Errors::SourceNotFoundFault, Errors::SNSInvalidTopicFault, Errors::SubscriptionAlreadyExistFault, Errors::SNSNoAuthorizationFault, Errors::EventSubscriptionQuotaExceededFault, Errors::SNSTopicArnNotFoundFault]),
        data_parser: Parsers::CreateEventSubscription
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateEventSubscription,
        stubs: @stubs,
        params_class: Params::CreateEventSubscriptionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_event_subscription
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a Neptune global database spread across multiple Amazon Regions.
    #       The global database contains a single primary cluster with read-write
    #       capability, and read-only secondary clusters that receive data from the
    #       primary cluster through high-speed replication performed by the Neptune
    #       storage subsystem.</p>
    #
    #          <p>You can create a global database that is initially empty, and then
    #       add a primary cluster and secondary clusters to it, or you can specify
    #       an existing Neptune cluster during the create operation to become the
    #       primary cluster of the global database.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateGlobalClusterInput}.
    #
    # @option params [String] :global_cluster_identifier
    #   <p>The cluster identifier of the new global database cluster.</p>
    #
    # @option params [String] :source_db_cluster_identifier
    #   <p>(<i>Optional</i>) The Amazon Resource Name (ARN) of
    #         an existing Neptune DB cluster to use as the primary cluster of the new
    #         global database.</p>
    #
    # @option params [String] :engine
    #   <p>The name of the database engine to be used in the global database.</p>
    #            <p>Valid values: <code>neptune</code>
    #            </p>
    #
    # @option params [String] :engine_version
    #   <p>The Neptune engine version to be used by the global database.</p>
    #            <p>Valid values: <code>1.2.0.0</code> or above.</p>
    #
    # @option params [Boolean] :deletion_protection
    #   <p>The deletion protection setting for the new global database.
    #         The global database can't be deleted when deletion protection is
    #         enabled.</p>
    #
    # @option params [Boolean] :storage_encrypted
    #   <p>The storage encryption setting for the new global database
    #         cluster.</p>
    #
    # @return [Types::CreateGlobalClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_global_cluster(
    #     global_cluster_identifier: 'GlobalClusterIdentifier', # required
    #     source_db_cluster_identifier: 'SourceDBClusterIdentifier',
    #     engine: 'Engine',
    #     engine_version: 'EngineVersion',
    #     deletion_protection: false,
    #     storage_encrypted: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateGlobalClusterOutput
    #   resp.data.global_cluster #=> Types::GlobalCluster
    #   resp.data.global_cluster.global_cluster_identifier #=> String
    #   resp.data.global_cluster.global_cluster_resource_id #=> String
    #   resp.data.global_cluster.global_cluster_arn #=> String
    #   resp.data.global_cluster.status #=> String
    #   resp.data.global_cluster.engine #=> String
    #   resp.data.global_cluster.engine_version #=> String
    #   resp.data.global_cluster.storage_encrypted #=> Boolean
    #   resp.data.global_cluster.deletion_protection #=> Boolean
    #   resp.data.global_cluster.global_cluster_members #=> Array<GlobalClusterMember>
    #   resp.data.global_cluster.global_cluster_members[0] #=> Types::GlobalClusterMember
    #   resp.data.global_cluster.global_cluster_members[0].db_cluster_arn #=> String
    #   resp.data.global_cluster.global_cluster_members[0].readers #=> Array<String>
    #   resp.data.global_cluster.global_cluster_members[0].readers[0] #=> String
    #   resp.data.global_cluster.global_cluster_members[0].is_writer #=> Boolean
    #
    def create_global_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateGlobalClusterInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateGlobalClusterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateGlobalCluster
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DBClusterNotFoundFault, Errors::GlobalClusterQuotaExceededFault, Errors::InvalidDBClusterStateFault, Errors::GlobalClusterAlreadyExistsFault]),
        data_parser: Parsers::CreateGlobalCluster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateGlobalCluster,
        stubs: @stubs,
        params_class: Params::CreateGlobalClusterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_global_cluster
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>The DeleteDBCluster action deletes a previously provisioned DB cluster. When you delete a
    #       DB cluster, all automated backups for that DB cluster are deleted and can't be recovered.
    #       Manual DB cluster snapshots of the specified DB cluster are not deleted.</p>
    #
    #          <p>Note that the DB Cluster cannot be deleted if deletion protection is enabled.  To
    #       delete it, you must first set its <code>DeletionProtection</code> field to
    #       <code>False</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDBClusterInput}.
    #
    # @option params [String] :db_cluster_identifier
    #   <p>The DB cluster identifier for the DB cluster to be deleted. This parameter isn't
    #         case-sensitive.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match an existing DBClusterIdentifier.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Boolean] :skip_final_snapshot
    #   <p> Determines whether a final DB cluster snapshot is created before the DB cluster is
    #         deleted. If <code>true</code> is specified, no DB cluster snapshot is created. If
    #         <code>false</code> is specified, a DB cluster snapshot is created before the DB cluster is
    #         deleted.</p>
    #            <note>
    #               <p>You must specify a <code>FinalDBSnapshotIdentifier</code> parameter if
    #           <code>SkipFinalSnapshot</code> is <code>false</code>.</p>
    #            </note>
    #            <p>Default: <code>false</code>
    #            </p>
    #
    # @option params [String] :final_db_snapshot_identifier
    #   <p> The DB cluster snapshot identifier of the new DB cluster snapshot created when
    #         <code>SkipFinalSnapshot</code> is set to <code>false</code>.</p>
    #            <note>
    #               <p> Specifying this parameter and also setting the <code>SkipFinalShapshot</code> parameter
    #           to true results in an error.</p>
    #            </note>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be 1 to 255 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::DeleteDBClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_db_cluster(
    #     db_cluster_identifier: 'DBClusterIdentifier', # required
    #     skip_final_snapshot: false,
    #     final_db_snapshot_identifier: 'FinalDBSnapshotIdentifier'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDBClusterOutput
    #   resp.data.db_cluster #=> Types::DBCluster
    #   resp.data.db_cluster.allocated_storage #=> Integer
    #   resp.data.db_cluster.availability_zones #=> Array<String>
    #   resp.data.db_cluster.availability_zones[0] #=> String
    #   resp.data.db_cluster.backup_retention_period #=> Integer
    #   resp.data.db_cluster.character_set_name #=> String
    #   resp.data.db_cluster.database_name #=> String
    #   resp.data.db_cluster.db_cluster_identifier #=> String
    #   resp.data.db_cluster.db_cluster_parameter_group #=> String
    #   resp.data.db_cluster.db_subnet_group #=> String
    #   resp.data.db_cluster.status #=> String
    #   resp.data.db_cluster.percent_progress #=> String
    #   resp.data.db_cluster.earliest_restorable_time #=> Time
    #   resp.data.db_cluster.endpoint #=> String
    #   resp.data.db_cluster.reader_endpoint #=> String
    #   resp.data.db_cluster.multi_az #=> Boolean
    #   resp.data.db_cluster.engine #=> String
    #   resp.data.db_cluster.engine_version #=> String
    #   resp.data.db_cluster.latest_restorable_time #=> Time
    #   resp.data.db_cluster.port #=> Integer
    #   resp.data.db_cluster.master_username #=> String
    #   resp.data.db_cluster.db_cluster_option_group_memberships #=> Array<DBClusterOptionGroupStatus>
    #   resp.data.db_cluster.db_cluster_option_group_memberships[0] #=> Types::DBClusterOptionGroupStatus
    #   resp.data.db_cluster.db_cluster_option_group_memberships[0].db_cluster_option_group_name #=> String
    #   resp.data.db_cluster.db_cluster_option_group_memberships[0].status #=> String
    #   resp.data.db_cluster.preferred_backup_window #=> String
    #   resp.data.db_cluster.preferred_maintenance_window #=> String
    #   resp.data.db_cluster.replication_source_identifier #=> String
    #   resp.data.db_cluster.read_replica_identifiers #=> Array<String>
    #   resp.data.db_cluster.read_replica_identifiers[0] #=> String
    #   resp.data.db_cluster.db_cluster_members #=> Array<DBClusterMember>
    #   resp.data.db_cluster.db_cluster_members[0] #=> Types::DBClusterMember
    #   resp.data.db_cluster.db_cluster_members[0].db_instance_identifier #=> String
    #   resp.data.db_cluster.db_cluster_members[0].is_cluster_writer #=> Boolean
    #   resp.data.db_cluster.db_cluster_members[0].db_cluster_parameter_group_status #=> String
    #   resp.data.db_cluster.db_cluster_members[0].promotion_tier #=> Integer
    #   resp.data.db_cluster.vpc_security_groups #=> Array<VpcSecurityGroupMembership>
    #   resp.data.db_cluster.vpc_security_groups[0] #=> Types::VpcSecurityGroupMembership
    #   resp.data.db_cluster.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.data.db_cluster.vpc_security_groups[0].status #=> String
    #   resp.data.db_cluster.hosted_zone_id #=> String
    #   resp.data.db_cluster.storage_encrypted #=> Boolean
    #   resp.data.db_cluster.kms_key_id #=> String
    #   resp.data.db_cluster.db_cluster_resource_id #=> String
    #   resp.data.db_cluster.db_cluster_arn #=> String
    #   resp.data.db_cluster.associated_roles #=> Array<DBClusterRole>
    #   resp.data.db_cluster.associated_roles[0] #=> Types::DBClusterRole
    #   resp.data.db_cluster.associated_roles[0].role_arn #=> String
    #   resp.data.db_cluster.associated_roles[0].status #=> String
    #   resp.data.db_cluster.associated_roles[0].feature_name #=> String
    #   resp.data.db_cluster.iam_database_authentication_enabled #=> Boolean
    #   resp.data.db_cluster.clone_group_id #=> String
    #   resp.data.db_cluster.cluster_create_time #=> Time
    #   resp.data.db_cluster.copy_tags_to_snapshot #=> Boolean
    #   resp.data.db_cluster.enabled_cloudwatch_logs_exports #=> Array<String>
    #   resp.data.db_cluster.enabled_cloudwatch_logs_exports[0] #=> String
    #   resp.data.db_cluster.deletion_protection #=> Boolean
    #   resp.data.db_cluster.cross_account_clone #=> Boolean
    #   resp.data.db_cluster.automatic_restart_time #=> Time
    #
    def delete_db_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDBClusterInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDBClusterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDBCluster
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DBClusterNotFoundFault, Errors::InvalidDBClusterSnapshotStateFault, Errors::SnapshotQuotaExceededFault, Errors::DBClusterSnapshotAlreadyExistsFault, Errors::InvalidDBClusterStateFault]),
        data_parser: Parsers::DeleteDBCluster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDBCluster,
        stubs: @stubs,
        params_class: Params::DeleteDBClusterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_db_cluster
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a custom endpoint and removes it from an Amazon Neptune DB cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDBClusterEndpointInput}.
    #
    # @option params [String] :db_cluster_endpoint_identifier
    #   <p>The identifier associated with the custom endpoint. This parameter is stored as a lowercase string.</p>
    #
    # @return [Types::DeleteDBClusterEndpointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_db_cluster_endpoint(
    #     db_cluster_endpoint_identifier: 'DBClusterEndpointIdentifier' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDBClusterEndpointOutput
    #   resp.data.db_cluster_endpoint_identifier #=> String
    #   resp.data.db_cluster_identifier #=> String
    #   resp.data.db_cluster_endpoint_resource_identifier #=> String
    #   resp.data.endpoint #=> String
    #   resp.data.status #=> String
    #   resp.data.endpoint_type #=> String
    #   resp.data.custom_endpoint_type #=> String
    #   resp.data.static_members #=> Array<String>
    #   resp.data.static_members[0] #=> String
    #   resp.data.excluded_members #=> Array<String>
    #   resp.data.db_cluster_endpoint_arn #=> String
    #
    def delete_db_cluster_endpoint(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDBClusterEndpointInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDBClusterEndpointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDBClusterEndpoint
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidDBClusterEndpointStateFault, Errors::DBClusterEndpointNotFoundFault, Errors::InvalidDBClusterStateFault]),
        data_parser: Parsers::DeleteDBClusterEndpoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDBClusterEndpoint,
        stubs: @stubs,
        params_class: Params::DeleteDBClusterEndpointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_db_cluster_endpoint
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a specified DB cluster parameter group. The DB cluster parameter group to be
    #       deleted can't be associated with any DB clusters.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDBClusterParameterGroupInput}.
    #
    # @option params [String] :db_cluster_parameter_group_name
    #   <p>The name of the DB cluster parameter group.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be the name of an existing DB cluster parameter group.</p>
    #               </li>
    #               <li>
    #                  <p>You can't delete a default DB cluster parameter group.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot be associated with any DB clusters.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::DeleteDBClusterParameterGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_db_cluster_parameter_group(
    #     db_cluster_parameter_group_name: 'DBClusterParameterGroupName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDBClusterParameterGroupOutput
    #
    def delete_db_cluster_parameter_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDBClusterParameterGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDBClusterParameterGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDBClusterParameterGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidDBParameterGroupStateFault, Errors::DBParameterGroupNotFoundFault]),
        data_parser: Parsers::DeleteDBClusterParameterGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDBClusterParameterGroup,
        stubs: @stubs,
        params_class: Params::DeleteDBClusterParameterGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_db_cluster_parameter_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a DB cluster snapshot. If the snapshot is being copied, the copy operation is
    #       terminated.</p>
    #          <note>
    #             <p>The DB cluster snapshot must be in the <code>available</code> state to be
    #         deleted.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteDBClusterSnapshotInput}.
    #
    # @option params [String] :db_cluster_snapshot_identifier
    #   <p>The identifier of the DB cluster snapshot to delete.</p>
    #            <p>Constraints: Must be the name of an existing DB cluster snapshot in the
    #         <code>available</code> state.</p>
    #
    # @return [Types::DeleteDBClusterSnapshotOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_db_cluster_snapshot(
    #     db_cluster_snapshot_identifier: 'DBClusterSnapshotIdentifier' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDBClusterSnapshotOutput
    #   resp.data.db_cluster_snapshot #=> Types::DBClusterSnapshot
    #   resp.data.db_cluster_snapshot.availability_zones #=> Array<String>
    #   resp.data.db_cluster_snapshot.availability_zones[0] #=> String
    #   resp.data.db_cluster_snapshot.db_cluster_snapshot_identifier #=> String
    #   resp.data.db_cluster_snapshot.db_cluster_identifier #=> String
    #   resp.data.db_cluster_snapshot.snapshot_create_time #=> Time
    #   resp.data.db_cluster_snapshot.engine #=> String
    #   resp.data.db_cluster_snapshot.allocated_storage #=> Integer
    #   resp.data.db_cluster_snapshot.status #=> String
    #   resp.data.db_cluster_snapshot.port #=> Integer
    #   resp.data.db_cluster_snapshot.vpc_id #=> String
    #   resp.data.db_cluster_snapshot.cluster_create_time #=> Time
    #   resp.data.db_cluster_snapshot.master_username #=> String
    #   resp.data.db_cluster_snapshot.engine_version #=> String
    #   resp.data.db_cluster_snapshot.license_model #=> String
    #   resp.data.db_cluster_snapshot.snapshot_type #=> String
    #   resp.data.db_cluster_snapshot.percent_progress #=> Integer
    #   resp.data.db_cluster_snapshot.storage_encrypted #=> Boolean
    #   resp.data.db_cluster_snapshot.kms_key_id #=> String
    #   resp.data.db_cluster_snapshot.db_cluster_snapshot_arn #=> String
    #   resp.data.db_cluster_snapshot.source_db_cluster_snapshot_arn #=> String
    #   resp.data.db_cluster_snapshot.iam_database_authentication_enabled #=> Boolean
    #
    def delete_db_cluster_snapshot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDBClusterSnapshotInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDBClusterSnapshotInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDBClusterSnapshot
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidDBClusterSnapshotStateFault, Errors::DBClusterSnapshotNotFoundFault]),
        data_parser: Parsers::DeleteDBClusterSnapshot
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDBClusterSnapshot,
        stubs: @stubs,
        params_class: Params::DeleteDBClusterSnapshotOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_db_cluster_snapshot
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>The DeleteDBInstance action deletes a previously provisioned DB instance. When you delete
    #       a DB instance, all automated backups for that instance are deleted and can't be recovered.
    #       Manual DB snapshots of the DB instance to be deleted by <code>DeleteDBInstance</code> are not
    #       deleted.</p>
    #          <p> If you request a final DB snapshot the status of the Amazon Neptune DB instance is
    #       <code>deleting</code> until the DB snapshot is created. The API action
    #       <code>DescribeDBInstance</code> is used to monitor the status of this operation. The action
    #       can't be canceled or reverted once submitted.</p>
    #          <p>Note that when a DB instance is in a failure state and has a status of
    #       <code>failed</code>, <code>incompatible-restore</code>, or <code>incompatible-network</code>,
    #       you can only delete it when the <code>SkipFinalSnapshot</code> parameter is set to
    #       <code>true</code>.</p>
    #          <p>You can't delete a DB instance if it is the only instance in the DB cluster, or
    #       if it has deletion protection enabled.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDBInstanceInput}.
    #
    # @option params [String] :db_instance_identifier
    #   <p>The DB instance identifier for the DB instance to be deleted. This parameter isn't
    #         case-sensitive.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match the name of an existing DB instance.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Boolean] :skip_final_snapshot
    #   <p> Determines whether a final DB snapshot is created before the DB instance is deleted. If
    #         <code>true</code> is specified, no DBSnapshot is created. If <code>false</code> is specified,
    #         a DB snapshot is created before the DB instance is deleted.</p>
    #            <p>Note that when a DB instance is in a failure state and has a status of 'failed',
    #         'incompatible-restore', or 'incompatible-network', it can only be deleted when the
    #         SkipFinalSnapshot parameter is set to "true".</p>
    #            <p>Specify <code>true</code> when deleting a Read Replica.</p>
    #            <note>
    #               <p>The FinalDBSnapshotIdentifier parameter must be specified if SkipFinalSnapshot is
    #           <code>false</code>.</p>
    #            </note>
    #            <p>Default: <code>false</code>
    #            </p>
    #
    # @option params [String] :final_db_snapshot_identifier
    #   <p> The DBSnapshotIdentifier of the new DBSnapshot created when SkipFinalSnapshot is set to
    #         <code>false</code>.</p>
    #            <note>
    #               <p>Specifying this parameter and also setting the SkipFinalShapshot parameter to true
    #           results in an error.</p>
    #            </note>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be 1 to 255 letters or numbers.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #               <li>
    #                  <p>Cannot be specified when deleting a Read Replica.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::DeleteDBInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_db_instance(
    #     db_instance_identifier: 'DBInstanceIdentifier', # required
    #     skip_final_snapshot: false,
    #     final_db_snapshot_identifier: 'FinalDBSnapshotIdentifier'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDBInstanceOutput
    #   resp.data.db_instance #=> Types::DBInstance
    #   resp.data.db_instance.db_instance_identifier #=> String
    #   resp.data.db_instance.db_instance_class #=> String
    #   resp.data.db_instance.engine #=> String
    #   resp.data.db_instance.db_instance_status #=> String
    #   resp.data.db_instance.master_username #=> String
    #   resp.data.db_instance.db_name #=> String
    #   resp.data.db_instance.endpoint #=> Types::Endpoint
    #   resp.data.db_instance.endpoint.address #=> String
    #   resp.data.db_instance.endpoint.port #=> Integer
    #   resp.data.db_instance.endpoint.hosted_zone_id #=> String
    #   resp.data.db_instance.allocated_storage #=> Integer
    #   resp.data.db_instance.instance_create_time #=> Time
    #   resp.data.db_instance.preferred_backup_window #=> String
    #   resp.data.db_instance.backup_retention_period #=> Integer
    #   resp.data.db_instance.db_security_groups #=> Array<DBSecurityGroupMembership>
    #   resp.data.db_instance.db_security_groups[0] #=> Types::DBSecurityGroupMembership
    #   resp.data.db_instance.db_security_groups[0].db_security_group_name #=> String
    #   resp.data.db_instance.db_security_groups[0].status #=> String
    #   resp.data.db_instance.vpc_security_groups #=> Array<VpcSecurityGroupMembership>
    #   resp.data.db_instance.vpc_security_groups[0] #=> Types::VpcSecurityGroupMembership
    #   resp.data.db_instance.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.data.db_instance.vpc_security_groups[0].status #=> String
    #   resp.data.db_instance.db_parameter_groups #=> Array<DBParameterGroupStatus>
    #   resp.data.db_instance.db_parameter_groups[0] #=> Types::DBParameterGroupStatus
    #   resp.data.db_instance.db_parameter_groups[0].db_parameter_group_name #=> String
    #   resp.data.db_instance.db_parameter_groups[0].parameter_apply_status #=> String
    #   resp.data.db_instance.availability_zone #=> String
    #   resp.data.db_instance.db_subnet_group #=> Types::DBSubnetGroup
    #   resp.data.db_instance.db_subnet_group.db_subnet_group_name #=> String
    #   resp.data.db_instance.db_subnet_group.db_subnet_group_description #=> String
    #   resp.data.db_instance.db_subnet_group.vpc_id #=> String
    #   resp.data.db_instance.db_subnet_group.subnet_group_status #=> String
    #   resp.data.db_instance.db_subnet_group.subnets #=> Array<Subnet>
    #   resp.data.db_instance.db_subnet_group.subnets[0] #=> Types::Subnet
    #   resp.data.db_instance.db_subnet_group.subnets[0].subnet_identifier #=> String
    #   resp.data.db_instance.db_subnet_group.subnets[0].subnet_availability_zone #=> Types::AvailabilityZone
    #   resp.data.db_instance.db_subnet_group.subnets[0].subnet_availability_zone.name #=> String
    #   resp.data.db_instance.db_subnet_group.subnets[0].subnet_status #=> String
    #   resp.data.db_instance.db_subnet_group.db_subnet_group_arn #=> String
    #   resp.data.db_instance.preferred_maintenance_window #=> String
    #   resp.data.db_instance.pending_modified_values #=> Types::PendingModifiedValues
    #   resp.data.db_instance.pending_modified_values.db_instance_class #=> String
    #   resp.data.db_instance.pending_modified_values.allocated_storage #=> Integer
    #   resp.data.db_instance.pending_modified_values.master_user_password #=> String
    #   resp.data.db_instance.pending_modified_values.port #=> Integer
    #   resp.data.db_instance.pending_modified_values.backup_retention_period #=> Integer
    #   resp.data.db_instance.pending_modified_values.multi_az #=> Boolean
    #   resp.data.db_instance.pending_modified_values.engine_version #=> String
    #   resp.data.db_instance.pending_modified_values.license_model #=> String
    #   resp.data.db_instance.pending_modified_values.iops #=> Integer
    #   resp.data.db_instance.pending_modified_values.db_instance_identifier #=> String
    #   resp.data.db_instance.pending_modified_values.storage_type #=> String
    #   resp.data.db_instance.pending_modified_values.ca_certificate_identifier #=> String
    #   resp.data.db_instance.pending_modified_values.db_subnet_group_name #=> String
    #   resp.data.db_instance.pending_modified_values.pending_cloudwatch_logs_exports #=> Types::PendingCloudwatchLogsExports
    #   resp.data.db_instance.pending_modified_values.pending_cloudwatch_logs_exports.log_types_to_enable #=> Array<String>
    #   resp.data.db_instance.pending_modified_values.pending_cloudwatch_logs_exports.log_types_to_enable[0] #=> String
    #   resp.data.db_instance.pending_modified_values.pending_cloudwatch_logs_exports.log_types_to_disable #=> Array<String>
    #   resp.data.db_instance.latest_restorable_time #=> Time
    #   resp.data.db_instance.multi_az #=> Boolean
    #   resp.data.db_instance.engine_version #=> String
    #   resp.data.db_instance.auto_minor_version_upgrade #=> Boolean
    #   resp.data.db_instance.read_replica_source_db_instance_identifier #=> String
    #   resp.data.db_instance.read_replica_db_instance_identifiers #=> Array<String>
    #   resp.data.db_instance.read_replica_db_instance_identifiers[0] #=> String
    #   resp.data.db_instance.read_replica_db_cluster_identifiers #=> Array<String>
    #   resp.data.db_instance.read_replica_db_cluster_identifiers[0] #=> String
    #   resp.data.db_instance.license_model #=> String
    #   resp.data.db_instance.iops #=> Integer
    #   resp.data.db_instance.option_group_memberships #=> Array<OptionGroupMembership>
    #   resp.data.db_instance.option_group_memberships[0] #=> Types::OptionGroupMembership
    #   resp.data.db_instance.option_group_memberships[0].option_group_name #=> String
    #   resp.data.db_instance.option_group_memberships[0].status #=> String
    #   resp.data.db_instance.character_set_name #=> String
    #   resp.data.db_instance.secondary_availability_zone #=> String
    #   resp.data.db_instance.publicly_accessible #=> Boolean
    #   resp.data.db_instance.status_infos #=> Array<DBInstanceStatusInfo>
    #   resp.data.db_instance.status_infos[0] #=> Types::DBInstanceStatusInfo
    #   resp.data.db_instance.status_infos[0].status_type #=> String
    #   resp.data.db_instance.status_infos[0].normal #=> Boolean
    #   resp.data.db_instance.status_infos[0].status #=> String
    #   resp.data.db_instance.status_infos[0].message #=> String
    #   resp.data.db_instance.storage_type #=> String
    #   resp.data.db_instance.tde_credential_arn #=> String
    #   resp.data.db_instance.db_instance_port #=> Integer
    #   resp.data.db_instance.db_cluster_identifier #=> String
    #   resp.data.db_instance.storage_encrypted #=> Boolean
    #   resp.data.db_instance.kms_key_id #=> String
    #   resp.data.db_instance.dbi_resource_id #=> String
    #   resp.data.db_instance.ca_certificate_identifier #=> String
    #   resp.data.db_instance.domain_memberships #=> Array<DomainMembership>
    #   resp.data.db_instance.domain_memberships[0] #=> Types::DomainMembership
    #   resp.data.db_instance.domain_memberships[0].domain #=> String
    #   resp.data.db_instance.domain_memberships[0].status #=> String
    #   resp.data.db_instance.domain_memberships[0].fqdn #=> String
    #   resp.data.db_instance.domain_memberships[0].iam_role_name #=> String
    #   resp.data.db_instance.copy_tags_to_snapshot #=> Boolean
    #   resp.data.db_instance.monitoring_interval #=> Integer
    #   resp.data.db_instance.enhanced_monitoring_resource_arn #=> String
    #   resp.data.db_instance.monitoring_role_arn #=> String
    #   resp.data.db_instance.promotion_tier #=> Integer
    #   resp.data.db_instance.db_instance_arn #=> String
    #   resp.data.db_instance.timezone #=> String
    #   resp.data.db_instance.iam_database_authentication_enabled #=> Boolean
    #   resp.data.db_instance.performance_insights_enabled #=> Boolean
    #   resp.data.db_instance.performance_insights_kms_key_id #=> String
    #   resp.data.db_instance.enabled_cloudwatch_logs_exports #=> Array<String>
    #   resp.data.db_instance.deletion_protection #=> Boolean
    #
    def delete_db_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDBInstanceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDBInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDBInstance
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::SnapshotQuotaExceededFault, Errors::DBInstanceNotFoundFault, Errors::InvalidDBClusterStateFault, Errors::DBSnapshotAlreadyExistsFault, Errors::InvalidDBInstanceStateFault]),
        data_parser: Parsers::DeleteDBInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDBInstance,
        stubs: @stubs,
        params_class: Params::DeleteDBInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_db_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a specified DBParameterGroup. The DBParameterGroup to be deleted can't be
    #       associated with any DB instances.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDBParameterGroupInput}.
    #
    # @option params [String] :db_parameter_group_name
    #   <p>The name of the DB parameter group.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be the name of an existing DB parameter group</p>
    #               </li>
    #               <li>
    #                  <p>You can't delete a default DB parameter group</p>
    #               </li>
    #               <li>
    #                  <p>Cannot be associated with any DB instances</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::DeleteDBParameterGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_db_parameter_group(
    #     db_parameter_group_name: 'DBParameterGroupName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDBParameterGroupOutput
    #
    def delete_db_parameter_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDBParameterGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDBParameterGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDBParameterGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidDBParameterGroupStateFault, Errors::DBParameterGroupNotFoundFault]),
        data_parser: Parsers::DeleteDBParameterGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDBParameterGroup,
        stubs: @stubs,
        params_class: Params::DeleteDBParameterGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_db_parameter_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a DB subnet group.</p>
    #          <note>
    #             <p>The specified database subnet group must not be associated with any DB instances.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteDBSubnetGroupInput}.
    #
    # @option params [String] :db_subnet_group_name
    #   <p>The name of the database subnet group to delete.</p>
    #            <note>
    #               <p>You can't delete the default subnet group.</p>
    #            </note>
    #            <p>Constraints:</p>
    #            <p>Constraints: Must match the name of an existing DBSubnetGroup. Must not be default.</p>
    #            <p>Example: <code>mySubnetgroup</code>
    #            </p>
    #
    # @return [Types::DeleteDBSubnetGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_db_subnet_group(
    #     db_subnet_group_name: 'DBSubnetGroupName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDBSubnetGroupOutput
    #
    def delete_db_subnet_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDBSubnetGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDBSubnetGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDBSubnetGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DBSubnetGroupNotFoundFault, Errors::InvalidDBSubnetGroupStateFault, Errors::InvalidDBSubnetStateFault]),
        data_parser: Parsers::DeleteDBSubnetGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDBSubnetGroup,
        stubs: @stubs,
        params_class: Params::DeleteDBSubnetGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_db_subnet_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an event notification subscription.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteEventSubscriptionInput}.
    #
    # @option params [String] :subscription_name
    #   <p>The name of the event notification subscription you want to delete.</p>
    #
    # @return [Types::DeleteEventSubscriptionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_event_subscription(
    #     subscription_name: 'SubscriptionName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteEventSubscriptionOutput
    #   resp.data.event_subscription #=> Types::EventSubscription
    #   resp.data.event_subscription.customer_aws_id #=> String
    #   resp.data.event_subscription.cust_subscription_id #=> String
    #   resp.data.event_subscription.sns_topic_arn #=> String
    #   resp.data.event_subscription.status #=> String
    #   resp.data.event_subscription.subscription_creation_time #=> String
    #   resp.data.event_subscription.source_type #=> String
    #   resp.data.event_subscription.source_ids_list #=> Array<String>
    #   resp.data.event_subscription.source_ids_list[0] #=> String
    #   resp.data.event_subscription.event_categories_list #=> Array<String>
    #   resp.data.event_subscription.event_categories_list[0] #=> String
    #   resp.data.event_subscription.enabled #=> Boolean
    #   resp.data.event_subscription.event_subscription_arn #=> String
    #
    def delete_event_subscription(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteEventSubscriptionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteEventSubscriptionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteEventSubscription
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidEventSubscriptionStateFault, Errors::SubscriptionNotFoundFault]),
        data_parser: Parsers::DeleteEventSubscription
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteEventSubscription,
        stubs: @stubs,
        params_class: Params::DeleteEventSubscriptionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_event_subscription
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a global database. The primary and all secondary clusters must
    #       already be detached or deleted first.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteGlobalClusterInput}.
    #
    # @option params [String] :global_cluster_identifier
    #   <p>The cluster identifier of the global database cluster being deleted.</p>
    #
    # @return [Types::DeleteGlobalClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_global_cluster(
    #     global_cluster_identifier: 'GlobalClusterIdentifier' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteGlobalClusterOutput
    #   resp.data.global_cluster #=> Types::GlobalCluster
    #   resp.data.global_cluster.global_cluster_identifier #=> String
    #   resp.data.global_cluster.global_cluster_resource_id #=> String
    #   resp.data.global_cluster.global_cluster_arn #=> String
    #   resp.data.global_cluster.status #=> String
    #   resp.data.global_cluster.engine #=> String
    #   resp.data.global_cluster.engine_version #=> String
    #   resp.data.global_cluster.storage_encrypted #=> Boolean
    #   resp.data.global_cluster.deletion_protection #=> Boolean
    #   resp.data.global_cluster.global_cluster_members #=> Array<GlobalClusterMember>
    #   resp.data.global_cluster.global_cluster_members[0] #=> Types::GlobalClusterMember
    #   resp.data.global_cluster.global_cluster_members[0].db_cluster_arn #=> String
    #   resp.data.global_cluster.global_cluster_members[0].readers #=> Array<String>
    #   resp.data.global_cluster.global_cluster_members[0].readers[0] #=> String
    #   resp.data.global_cluster.global_cluster_members[0].is_writer #=> Boolean
    #
    def delete_global_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteGlobalClusterInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteGlobalClusterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteGlobalCluster
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::GlobalClusterNotFoundFault, Errors::InvalidGlobalClusterStateFault]),
        data_parser: Parsers::DeleteGlobalCluster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteGlobalCluster,
        stubs: @stubs,
        params_class: Params::DeleteGlobalClusterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_global_cluster
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about endpoints for an Amazon Neptune DB cluster.</p>
    #          <note>
    #             <p>This operation can also return information for Amazon RDS clusters
    #         and Amazon DocDB clusters.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeDBClusterEndpointsInput}.
    #
    # @option params [String] :db_cluster_identifier
    #   <p>The DB cluster identifier of the DB cluster associated with the endpoint. This parameter is
    #         stored as a lowercase string.</p>
    #
    # @option params [String] :db_cluster_endpoint_identifier
    #   <p>The identifier of the endpoint to describe. This parameter is stored as a lowercase string.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>A set of name-value pairs that define which endpoints to include in the output.
    #         The filters are specified as name-value pairs, in the format
    #         <code>Name=<i>endpoint_type</i>,Values=<i>endpoint_type1</i>,<i>endpoint_type2</i>,...</code>.
    #         <code>Name</code> can be one of: <code>db-cluster-endpoint-type</code>, <code>db-cluster-endpoint-custom-type</code>, <code>db-cluster-endpoint-id</code>, <code>db-cluster-endpoint-status</code>.
    #         <code>Values</code> for the <code> db-cluster-endpoint-type</code> filter can be one or more of: <code>reader</code>, <code>writer</code>, <code>custom</code>.
    #         <code>Values</code> for the <code>db-cluster-endpoint-custom-type</code> filter can be one or more of: <code>reader</code>, <code>any</code>.
    #         <code>Values</code> for the <code>db-cluster-endpoint-status</code> filter can be one or more of: <code>available</code>, <code>creating</code>, <code>deleting</code>, <code>inactive</code>, <code>modifying</code>.
    #       </p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response.
    #         If more records exist than the specified <code>MaxRecords</code> value,
    #         a pagination token called a marker is included in the response so you can retrieve the remaining results.
    #       </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p> An optional pagination token provided by a previous
    #         <code>DescribeDBClusterEndpoints</code> request.
    #         If this parameter is specified, the response includes
    #         only records beyond the marker,
    #         up to the value specified by <code>MaxRecords</code>.
    #       </p>
    #
    # @return [Types::DescribeDBClusterEndpointsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_db_cluster_endpoints(
    #     db_cluster_identifier: 'DBClusterIdentifier',
    #     db_cluster_endpoint_identifier: 'DBClusterEndpointIdentifier',
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
    #   resp.data #=> Types::DescribeDBClusterEndpointsOutput
    #   resp.data.marker #=> String
    #   resp.data.db_cluster_endpoints #=> Array<DBClusterEndpoint>
    #   resp.data.db_cluster_endpoints[0] #=> Types::DBClusterEndpoint
    #   resp.data.db_cluster_endpoints[0].db_cluster_endpoint_identifier #=> String
    #   resp.data.db_cluster_endpoints[0].db_cluster_identifier #=> String
    #   resp.data.db_cluster_endpoints[0].db_cluster_endpoint_resource_identifier #=> String
    #   resp.data.db_cluster_endpoints[0].endpoint #=> String
    #   resp.data.db_cluster_endpoints[0].status #=> String
    #   resp.data.db_cluster_endpoints[0].endpoint_type #=> String
    #   resp.data.db_cluster_endpoints[0].custom_endpoint_type #=> String
    #   resp.data.db_cluster_endpoints[0].static_members #=> Array<String>
    #   resp.data.db_cluster_endpoints[0].static_members[0] #=> String
    #   resp.data.db_cluster_endpoints[0].excluded_members #=> Array<String>
    #   resp.data.db_cluster_endpoints[0].db_cluster_endpoint_arn #=> String
    #
    def describe_db_cluster_endpoints(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDBClusterEndpointsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDBClusterEndpointsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDBClusterEndpoints
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DBClusterNotFoundFault]),
        data_parser: Parsers::DescribeDBClusterEndpoints
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDBClusterEndpoints,
        stubs: @stubs,
        params_class: Params::DescribeDBClusterEndpointsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_db_cluster_endpoints
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns a list of <code>DBClusterParameterGroup</code> descriptions. If a
    #       <code>DBClusterParameterGroupName</code> parameter is specified, the list will contain only
    #       the description of the specified DB cluster parameter group.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDBClusterParameterGroupsInput}.
    #
    # @option params [String] :db_cluster_parameter_group_name
    #   <p>The name of a specific DB cluster parameter group to return details for.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If supplied, must match the name of an existing DBClusterParameterGroup.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Array<Filter>] :filters
    #   <p>This parameter is not currently supported.</p>
    #
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than the
    #         specified <code>MaxRecords</code> value, a pagination token called a marker is included in the
    #         response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p> An optional pagination token provided by a previous
    #         <code>DescribeDBClusterParameterGroups</code> request. If this parameter is specified, the
    #         response includes only records beyond the marker, up to the value specified by
    #         <code>MaxRecords</code>.</p>
    #
    # @return [Types::DescribeDBClusterParameterGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_db_cluster_parameter_groups(
    #     db_cluster_parameter_group_name: 'DBClusterParameterGroupName',
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
    #   resp.data #=> Types::DescribeDBClusterParameterGroupsOutput
    #   resp.data.marker #=> String
    #   resp.data.db_cluster_parameter_groups #=> Array<DBClusterParameterGroup>
    #   resp.data.db_cluster_parameter_groups[0] #=> Types::DBClusterParameterGroup
    #   resp.data.db_cluster_parameter_groups[0].db_cluster_parameter_group_name #=> String
    #   resp.data.db_cluster_parameter_groups[0].db_parameter_group_family #=> String
    #   resp.data.db_cluster_parameter_groups[0].description #=> String
    #   resp.data.db_cluster_parameter_groups[0].db_cluster_parameter_group_arn #=> String
    #
    def describe_db_cluster_parameter_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDBClusterParameterGroupsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDBClusterParameterGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDBClusterParameterGroups
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DBParameterGroupNotFoundFault]),
        data_parser: Parsers::DescribeDBClusterParameterGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDBClusterParameterGroups,
        stubs: @stubs,
        params_class: Params::DescribeDBClusterParameterGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_db_cluster_parameter_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the detailed parameter list for a particular DB cluster parameter group.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDBClusterParametersInput}.
    #
    # @option params [String] :db_cluster_parameter_group_name
    #   <p>The name of a specific DB cluster parameter group to return parameter details for.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If supplied, must match the name of an existing DBClusterParameterGroup.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :source
    #   <p> A value that indicates to return only parameters for a specific source. Parameter sources
    #         can be <code>engine</code>, <code>service</code>, or <code>customer</code>.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>This parameter is not currently supported.</p>
    #
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than the
    #         specified <code>MaxRecords</code> value, a pagination token called a marker is included in the
    #         response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p> An optional pagination token provided by a previous
    #         <code>DescribeDBClusterParameters</code> request. If this parameter is specified, the response
    #         includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.
    #      </p>
    #
    # @return [Types::DescribeDBClusterParametersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_db_cluster_parameters(
    #     db_cluster_parameter_group_name: 'DBClusterParameterGroupName', # required
    #     source: 'Source',
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
    #   resp.data #=> Types::DescribeDBClusterParametersOutput
    #   resp.data.parameters #=> Array<Parameter>
    #   resp.data.parameters[0] #=> Types::Parameter
    #   resp.data.parameters[0].parameter_name #=> String
    #   resp.data.parameters[0].parameter_value #=> String
    #   resp.data.parameters[0].description #=> String
    #   resp.data.parameters[0].source #=> String
    #   resp.data.parameters[0].apply_type #=> String
    #   resp.data.parameters[0].data_type #=> String
    #   resp.data.parameters[0].allowed_values #=> String
    #   resp.data.parameters[0].is_modifiable #=> Boolean
    #   resp.data.parameters[0].minimum_engine_version #=> String
    #   resp.data.parameters[0].apply_method #=> String, one of ["immediate", "pending-reboot"]
    #   resp.data.marker #=> String
    #
    def describe_db_cluster_parameters(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDBClusterParametersInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDBClusterParametersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDBClusterParameters
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DBParameterGroupNotFoundFault]),
        data_parser: Parsers::DescribeDBClusterParameters
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDBClusterParameters,
        stubs: @stubs,
        params_class: Params::DescribeDBClusterParametersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_db_cluster_parameters
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of DB cluster snapshot attribute names and values for a manual DB cluster
    #       snapshot.</p>
    #          <p>When sharing snapshots with other Amazon accounts,
    #       <code>DescribeDBClusterSnapshotAttributes</code> returns the <code>restore</code> attribute
    #       and a list of IDs for the Amazon accounts that are authorized to copy or restore the manual DB
    #       cluster snapshot. If <code>all</code> is included in the list of values for the
    #       <code>restore</code> attribute, then the manual DB cluster snapshot is public and can be
    #       copied or restored by all Amazon accounts.</p>
    #          <p>To add or remove access for an Amazon account to copy or restore a manual DB cluster
    #       snapshot, or to make the manual DB cluster snapshot public or private, use the <a>ModifyDBClusterSnapshotAttribute</a> API action.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDBClusterSnapshotAttributesInput}.
    #
    # @option params [String] :db_cluster_snapshot_identifier
    #   <p>The identifier for the DB cluster snapshot to describe the attributes for.</p>
    #
    # @return [Types::DescribeDBClusterSnapshotAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_db_cluster_snapshot_attributes(
    #     db_cluster_snapshot_identifier: 'DBClusterSnapshotIdentifier' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDBClusterSnapshotAttributesOutput
    #   resp.data.db_cluster_snapshot_attributes_result #=> Types::DBClusterSnapshotAttributesResult
    #   resp.data.db_cluster_snapshot_attributes_result.db_cluster_snapshot_identifier #=> String
    #   resp.data.db_cluster_snapshot_attributes_result.db_cluster_snapshot_attributes #=> Array<DBClusterSnapshotAttribute>
    #   resp.data.db_cluster_snapshot_attributes_result.db_cluster_snapshot_attributes[0] #=> Types::DBClusterSnapshotAttribute
    #   resp.data.db_cluster_snapshot_attributes_result.db_cluster_snapshot_attributes[0].attribute_name #=> String
    #   resp.data.db_cluster_snapshot_attributes_result.db_cluster_snapshot_attributes[0].attribute_values #=> Array<String>
    #   resp.data.db_cluster_snapshot_attributes_result.db_cluster_snapshot_attributes[0].attribute_values[0] #=> String
    #
    def describe_db_cluster_snapshot_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDBClusterSnapshotAttributesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDBClusterSnapshotAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDBClusterSnapshotAttributes
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DBClusterSnapshotNotFoundFault]),
        data_parser: Parsers::DescribeDBClusterSnapshotAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDBClusterSnapshotAttributes,
        stubs: @stubs,
        params_class: Params::DescribeDBClusterSnapshotAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_db_cluster_snapshot_attributes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about DB cluster snapshots. This API action supports
    #       pagination.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDBClusterSnapshotsInput}.
    #
    # @option params [String] :db_cluster_identifier
    #   <p>The ID of the DB cluster to retrieve the list of DB cluster snapshots for. This parameter
    #         can't be used in conjunction with the <code>DBClusterSnapshotIdentifier</code> parameter. This
    #         parameter is not case-sensitive.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If supplied, must match the identifier of an existing DBCluster.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :db_cluster_snapshot_identifier
    #   <p>A specific DB cluster snapshot identifier to describe. This parameter can't be used in
    #         conjunction with the <code>DBClusterIdentifier</code> parameter. This value is stored as a
    #         lowercase string.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If supplied, must match the identifier of an existing DBClusterSnapshot.</p>
    #               </li>
    #               <li>
    #                  <p>If this identifier is for an automated snapshot, the <code>SnapshotType</code>
    #             parameter must also be specified.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :snapshot_type
    #   <p>The type of DB cluster snapshots to be returned. You can specify one of the following
    #         values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>automated</code> - Return all DB cluster snapshots that have been automatically
    #             taken by Amazon Neptune for my Amazon account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>manual</code> - Return all DB cluster snapshots that have been taken by my Amazon
    #             account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>shared</code> - Return all manual DB cluster snapshots that have been shared to
    #             my Amazon account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>public</code> - Return all DB cluster snapshots that have been marked as
    #             public.</p>
    #               </li>
    #            </ul>
    #            <p>If you don't specify a <code>SnapshotType</code> value, then both automated and manual DB
    #         cluster snapshots are returned. You can include shared DB cluster snapshots with these results
    #         by setting the <code>IncludeShared</code> parameter to <code>true</code>. You can include
    #         public DB cluster snapshots with these results by setting the <code>IncludePublic</code>
    #         parameter to <code>true</code>.</p>
    #            <p>The <code>IncludeShared</code> and <code>IncludePublic</code> parameters don't apply for
    #         <code>SnapshotType</code> values of <code>manual</code> or <code>automated</code>. The
    #         <code>IncludePublic</code> parameter doesn't apply when <code>SnapshotType</code> is set to
    #         <code>shared</code>. The <code>IncludeShared</code> parameter doesn't apply when
    #         <code>SnapshotType</code> is set to <code>public</code>.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>This parameter is not currently supported.</p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than the
    #         specified <code>MaxRecords</code> value, a pagination token called a marker is included in the
    #         response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous
    #         <code>DescribeDBClusterSnapshots</code> request. If this parameter is specified, the response
    #         includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.
    #      </p>
    #
    # @option params [Boolean] :include_shared
    #   <p>True to include shared manual DB cluster snapshots from other Amazon accounts that this Amazon
    #         account has been given permission to copy or restore, and otherwise false. The default is
    #         <code>false</code>.</p>
    #            <p>You can give an Amazon account permission to restore a manual DB cluster snapshot from
    #         another Amazon account by the <a>ModifyDBClusterSnapshotAttribute</a> API
    #         action.</p>
    #
    # @option params [Boolean] :include_public
    #   <p>True to include manual DB cluster snapshots that are public and can be copied or restored
    #         by any Amazon account, and otherwise false. The default is <code>false</code>. The default is
    #         false.</p>
    #            <p>You can share a manual DB cluster snapshot as public by using the <a>ModifyDBClusterSnapshotAttribute</a> API action.</p>
    #
    # @return [Types::DescribeDBClusterSnapshotsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_db_cluster_snapshots(
    #     db_cluster_identifier: 'DBClusterIdentifier',
    #     db_cluster_snapshot_identifier: 'DBClusterSnapshotIdentifier',
    #     snapshot_type: 'SnapshotType',
    #     filters: [
    #       {
    #         name: 'Name', # required
    #         values: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #     max_records: 1,
    #     marker: 'Marker',
    #     include_shared: false,
    #     include_public: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDBClusterSnapshotsOutput
    #   resp.data.marker #=> String
    #   resp.data.db_cluster_snapshots #=> Array<DBClusterSnapshot>
    #   resp.data.db_cluster_snapshots[0] #=> Types::DBClusterSnapshot
    #   resp.data.db_cluster_snapshots[0].availability_zones #=> Array<String>
    #   resp.data.db_cluster_snapshots[0].availability_zones[0] #=> String
    #   resp.data.db_cluster_snapshots[0].db_cluster_snapshot_identifier #=> String
    #   resp.data.db_cluster_snapshots[0].db_cluster_identifier #=> String
    #   resp.data.db_cluster_snapshots[0].snapshot_create_time #=> Time
    #   resp.data.db_cluster_snapshots[0].engine #=> String
    #   resp.data.db_cluster_snapshots[0].allocated_storage #=> Integer
    #   resp.data.db_cluster_snapshots[0].status #=> String
    #   resp.data.db_cluster_snapshots[0].port #=> Integer
    #   resp.data.db_cluster_snapshots[0].vpc_id #=> String
    #   resp.data.db_cluster_snapshots[0].cluster_create_time #=> Time
    #   resp.data.db_cluster_snapshots[0].master_username #=> String
    #   resp.data.db_cluster_snapshots[0].engine_version #=> String
    #   resp.data.db_cluster_snapshots[0].license_model #=> String
    #   resp.data.db_cluster_snapshots[0].snapshot_type #=> String
    #   resp.data.db_cluster_snapshots[0].percent_progress #=> Integer
    #   resp.data.db_cluster_snapshots[0].storage_encrypted #=> Boolean
    #   resp.data.db_cluster_snapshots[0].kms_key_id #=> String
    #   resp.data.db_cluster_snapshots[0].db_cluster_snapshot_arn #=> String
    #   resp.data.db_cluster_snapshots[0].source_db_cluster_snapshot_arn #=> String
    #   resp.data.db_cluster_snapshots[0].iam_database_authentication_enabled #=> Boolean
    #
    def describe_db_cluster_snapshots(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDBClusterSnapshotsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDBClusterSnapshotsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDBClusterSnapshots
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DBClusterSnapshotNotFoundFault]),
        data_parser: Parsers::DescribeDBClusterSnapshots
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDBClusterSnapshots,
        stubs: @stubs,
        params_class: Params::DescribeDBClusterSnapshotsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_db_cluster_snapshots
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about provisioned DB clusters, and supports
    #       pagination.</p>
    #
    #          <note>
    #             <p>This operation can also return information for Amazon RDS clusters
    #     and Amazon DocDB clusters.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeDBClustersInput}.
    #
    # @option params [String] :db_cluster_identifier
    #   <p>The user-supplied DB cluster identifier. If this parameter is specified, information from
    #         only the specific DB cluster is returned. This parameter isn't case-sensitive.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If supplied, must match an existing DBClusterIdentifier.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Array<Filter>] :filters
    #   <p>A filter that specifies one or more DB clusters to describe.</p>
    #            <p>Supported filters:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>db-cluster-id</code> - Accepts DB cluster identifiers and DB cluster Amazon
    #           Resource Names (ARNs). The results list will only include information about the DB
    #           clusters identified by these ARNs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>engine</code> - Accepts an engine name (such as <code>neptune</code>),
    #           and restricts the results list to DB clusters created by that engine.</p>
    #               </li>
    #            </ul>
    #
    #            <p>For example, to invoke this API from the Amazon CLI and filter so that only
    #         Neptune DB clusters are returned, you could use the following command:</p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than the
    #         specified <code>MaxRecords</code> value, a pagination token called a marker is included in the
    #         response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous <a>DescribeDBClusters</a>
    #         request. If this parameter is specified, the response includes only records beyond the marker,
    #         up to the value specified by <code>MaxRecords</code>.</p>
    #
    # @return [Types::DescribeDBClustersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_db_clusters(
    #     db_cluster_identifier: 'DBClusterIdentifier',
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
    #   resp.data #=> Types::DescribeDBClustersOutput
    #   resp.data.marker #=> String
    #   resp.data.db_clusters #=> Array<DBCluster>
    #   resp.data.db_clusters[0] #=> Types::DBCluster
    #   resp.data.db_clusters[0].allocated_storage #=> Integer
    #   resp.data.db_clusters[0].availability_zones #=> Array<String>
    #   resp.data.db_clusters[0].availability_zones[0] #=> String
    #   resp.data.db_clusters[0].backup_retention_period #=> Integer
    #   resp.data.db_clusters[0].character_set_name #=> String
    #   resp.data.db_clusters[0].database_name #=> String
    #   resp.data.db_clusters[0].db_cluster_identifier #=> String
    #   resp.data.db_clusters[0].db_cluster_parameter_group #=> String
    #   resp.data.db_clusters[0].db_subnet_group #=> String
    #   resp.data.db_clusters[0].status #=> String
    #   resp.data.db_clusters[0].percent_progress #=> String
    #   resp.data.db_clusters[0].earliest_restorable_time #=> Time
    #   resp.data.db_clusters[0].endpoint #=> String
    #   resp.data.db_clusters[0].reader_endpoint #=> String
    #   resp.data.db_clusters[0].multi_az #=> Boolean
    #   resp.data.db_clusters[0].engine #=> String
    #   resp.data.db_clusters[0].engine_version #=> String
    #   resp.data.db_clusters[0].latest_restorable_time #=> Time
    #   resp.data.db_clusters[0].port #=> Integer
    #   resp.data.db_clusters[0].master_username #=> String
    #   resp.data.db_clusters[0].db_cluster_option_group_memberships #=> Array<DBClusterOptionGroupStatus>
    #   resp.data.db_clusters[0].db_cluster_option_group_memberships[0] #=> Types::DBClusterOptionGroupStatus
    #   resp.data.db_clusters[0].db_cluster_option_group_memberships[0].db_cluster_option_group_name #=> String
    #   resp.data.db_clusters[0].db_cluster_option_group_memberships[0].status #=> String
    #   resp.data.db_clusters[0].preferred_backup_window #=> String
    #   resp.data.db_clusters[0].preferred_maintenance_window #=> String
    #   resp.data.db_clusters[0].replication_source_identifier #=> String
    #   resp.data.db_clusters[0].read_replica_identifiers #=> Array<String>
    #   resp.data.db_clusters[0].read_replica_identifiers[0] #=> String
    #   resp.data.db_clusters[0].db_cluster_members #=> Array<DBClusterMember>
    #   resp.data.db_clusters[0].db_cluster_members[0] #=> Types::DBClusterMember
    #   resp.data.db_clusters[0].db_cluster_members[0].db_instance_identifier #=> String
    #   resp.data.db_clusters[0].db_cluster_members[0].is_cluster_writer #=> Boolean
    #   resp.data.db_clusters[0].db_cluster_members[0].db_cluster_parameter_group_status #=> String
    #   resp.data.db_clusters[0].db_cluster_members[0].promotion_tier #=> Integer
    #   resp.data.db_clusters[0].vpc_security_groups #=> Array<VpcSecurityGroupMembership>
    #   resp.data.db_clusters[0].vpc_security_groups[0] #=> Types::VpcSecurityGroupMembership
    #   resp.data.db_clusters[0].vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.data.db_clusters[0].vpc_security_groups[0].status #=> String
    #   resp.data.db_clusters[0].hosted_zone_id #=> String
    #   resp.data.db_clusters[0].storage_encrypted #=> Boolean
    #   resp.data.db_clusters[0].kms_key_id #=> String
    #   resp.data.db_clusters[0].db_cluster_resource_id #=> String
    #   resp.data.db_clusters[0].db_cluster_arn #=> String
    #   resp.data.db_clusters[0].associated_roles #=> Array<DBClusterRole>
    #   resp.data.db_clusters[0].associated_roles[0] #=> Types::DBClusterRole
    #   resp.data.db_clusters[0].associated_roles[0].role_arn #=> String
    #   resp.data.db_clusters[0].associated_roles[0].status #=> String
    #   resp.data.db_clusters[0].associated_roles[0].feature_name #=> String
    #   resp.data.db_clusters[0].iam_database_authentication_enabled #=> Boolean
    #   resp.data.db_clusters[0].clone_group_id #=> String
    #   resp.data.db_clusters[0].cluster_create_time #=> Time
    #   resp.data.db_clusters[0].copy_tags_to_snapshot #=> Boolean
    #   resp.data.db_clusters[0].enabled_cloudwatch_logs_exports #=> Array<String>
    #   resp.data.db_clusters[0].enabled_cloudwatch_logs_exports[0] #=> String
    #   resp.data.db_clusters[0].deletion_protection #=> Boolean
    #   resp.data.db_clusters[0].cross_account_clone #=> Boolean
    #   resp.data.db_clusters[0].automatic_restart_time #=> Time
    #
    def describe_db_clusters(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDBClustersInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDBClustersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDBClusters
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DBClusterNotFoundFault]),
        data_parser: Parsers::DescribeDBClusters
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDBClusters,
        stubs: @stubs,
        params_class: Params::DescribeDBClustersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_db_clusters
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of the available DB engines.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDBEngineVersionsInput}.
    #
    # @option params [String] :engine
    #   <p>The database engine to return.</p>
    #
    # @option params [String] :engine_version
    #   <p>The database engine version to return.</p>
    #            <p>Example: <code>5.1.49</code>
    #            </p>
    #
    # @option params [String] :db_parameter_group_family
    #   <p>The name of a specific DB parameter group family to return details for.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If supplied, must match an existing DBParameterGroupFamily.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Array<Filter>] :filters
    #   <p>Not currently supported.</p>
    #
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more than the
    #         <code>MaxRecords</code> value is available, a pagination token called a marker is included in
    #         the response so that the following results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #         specified, the response includes only records beyond the marker, up to the value specified by
    #         <code>MaxRecords</code>.</p>
    #
    # @option params [Boolean] :default_only
    #   <p>Indicates that only the default version of the specified engine or engine and major
    #         version combination is returned.</p>
    #
    # @option params [Boolean] :list_supported_character_sets
    #   <p>If this parameter is specified and the requested engine supports the
    #         <code>CharacterSetName</code> parameter for <code>CreateDBInstance</code>, the response
    #         includes a list of supported character sets for each engine version.</p>
    #
    # @option params [Boolean] :list_supported_timezones
    #   <p>If this parameter is specified and the requested engine supports the <code>TimeZone</code>
    #         parameter for <code>CreateDBInstance</code>, the response includes a list of supported time
    #         zones for each engine version.</p>
    #
    # @return [Types::DescribeDBEngineVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_db_engine_versions(
    #     engine: 'Engine',
    #     engine_version: 'EngineVersion',
    #     db_parameter_group_family: 'DBParameterGroupFamily',
    #     filters: [
    #       {
    #         name: 'Name', # required
    #         values: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #     max_records: 1,
    #     marker: 'Marker',
    #     default_only: false,
    #     list_supported_character_sets: false,
    #     list_supported_timezones: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDBEngineVersionsOutput
    #   resp.data.marker #=> String
    #   resp.data.db_engine_versions #=> Array<DBEngineVersion>
    #   resp.data.db_engine_versions[0] #=> Types::DBEngineVersion
    #   resp.data.db_engine_versions[0].engine #=> String
    #   resp.data.db_engine_versions[0].engine_version #=> String
    #   resp.data.db_engine_versions[0].db_parameter_group_family #=> String
    #   resp.data.db_engine_versions[0].db_engine_description #=> String
    #   resp.data.db_engine_versions[0].db_engine_version_description #=> String
    #   resp.data.db_engine_versions[0].default_character_set #=> Types::CharacterSet
    #   resp.data.db_engine_versions[0].default_character_set.character_set_name #=> String
    #   resp.data.db_engine_versions[0].default_character_set.character_set_description #=> String
    #   resp.data.db_engine_versions[0].supported_character_sets #=> Array<CharacterSet>
    #   resp.data.db_engine_versions[0].valid_upgrade_target #=> Array<UpgradeTarget>
    #   resp.data.db_engine_versions[0].valid_upgrade_target[0] #=> Types::UpgradeTarget
    #   resp.data.db_engine_versions[0].valid_upgrade_target[0].engine #=> String
    #   resp.data.db_engine_versions[0].valid_upgrade_target[0].engine_version #=> String
    #   resp.data.db_engine_versions[0].valid_upgrade_target[0].description #=> String
    #   resp.data.db_engine_versions[0].valid_upgrade_target[0].auto_upgrade #=> Boolean
    #   resp.data.db_engine_versions[0].valid_upgrade_target[0].is_major_version_upgrade #=> Boolean
    #   resp.data.db_engine_versions[0].valid_upgrade_target[0].supports_global_databases #=> Boolean
    #   resp.data.db_engine_versions[0].supported_timezones #=> Array<Timezone>
    #   resp.data.db_engine_versions[0].supported_timezones[0] #=> Types::Timezone
    #   resp.data.db_engine_versions[0].supported_timezones[0].timezone_name #=> String
    #   resp.data.db_engine_versions[0].exportable_log_types #=> Array<String>
    #   resp.data.db_engine_versions[0].exportable_log_types[0] #=> String
    #   resp.data.db_engine_versions[0].supports_log_exports_to_cloudwatch_logs #=> Boolean
    #   resp.data.db_engine_versions[0].supports_read_replica #=> Boolean
    #   resp.data.db_engine_versions[0].supports_global_databases #=> Boolean
    #
    def describe_db_engine_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDBEngineVersionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDBEngineVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDBEngineVersions
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
        data_parser: Parsers::DescribeDBEngineVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDBEngineVersions,
        stubs: @stubs,
        params_class: Params::DescribeDBEngineVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_db_engine_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about provisioned instances, and supports pagination.</p>
    #
    #          <note>
    #             <p>This operation can also return information for Amazon RDS instances
    #     and Amazon DocDB instances.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeDBInstancesInput}.
    #
    # @option params [String] :db_instance_identifier
    #   <p>The user-supplied instance identifier. If this parameter is specified, information from
    #         only the specific DB instance is returned. This parameter isn't case-sensitive.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If supplied, must match the identifier of an existing DBInstance.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Array<Filter>] :filters
    #   <p>A filter that specifies one or more DB instances to describe.</p>
    #            <p>Supported filters:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>db-cluster-id</code> - Accepts DB cluster identifiers and DB cluster Amazon
    #           Resource Names (ARNs). The results list will only include information about the DB
    #           instances associated with the DB clusters identified by these ARNs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>engine</code> - Accepts an engine name (such as <code>neptune</code>),
    #           and restricts the results list to DB instances created by that engine.</p>
    #               </li>
    #            </ul>
    #
    #            <p>For example, to invoke this API from the Amazon CLI and filter so that only
    #         Neptune DB instances are returned, you could use the following command:</p>
    #
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than the
    #         specified <code>MaxRecords</code> value, a pagination token called a marker is included in the
    #         response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p> An optional pagination token provided by a previous <code>DescribeDBInstances</code>
    #         request. If this parameter is specified, the response includes only records beyond the marker,
    #         up to the value specified by <code>MaxRecords</code>.</p>
    #
    # @return [Types::DescribeDBInstancesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_db_instances(
    #     db_instance_identifier: 'DBInstanceIdentifier',
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
    #   resp.data #=> Types::DescribeDBInstancesOutput
    #   resp.data.marker #=> String
    #   resp.data.db_instances #=> Array<DBInstance>
    #   resp.data.db_instances[0] #=> Types::DBInstance
    #   resp.data.db_instances[0].db_instance_identifier #=> String
    #   resp.data.db_instances[0].db_instance_class #=> String
    #   resp.data.db_instances[0].engine #=> String
    #   resp.data.db_instances[0].db_instance_status #=> String
    #   resp.data.db_instances[0].master_username #=> String
    #   resp.data.db_instances[0].db_name #=> String
    #   resp.data.db_instances[0].endpoint #=> Types::Endpoint
    #   resp.data.db_instances[0].endpoint.address #=> String
    #   resp.data.db_instances[0].endpoint.port #=> Integer
    #   resp.data.db_instances[0].endpoint.hosted_zone_id #=> String
    #   resp.data.db_instances[0].allocated_storage #=> Integer
    #   resp.data.db_instances[0].instance_create_time #=> Time
    #   resp.data.db_instances[0].preferred_backup_window #=> String
    #   resp.data.db_instances[0].backup_retention_period #=> Integer
    #   resp.data.db_instances[0].db_security_groups #=> Array<DBSecurityGroupMembership>
    #   resp.data.db_instances[0].db_security_groups[0] #=> Types::DBSecurityGroupMembership
    #   resp.data.db_instances[0].db_security_groups[0].db_security_group_name #=> String
    #   resp.data.db_instances[0].db_security_groups[0].status #=> String
    #   resp.data.db_instances[0].vpc_security_groups #=> Array<VpcSecurityGroupMembership>
    #   resp.data.db_instances[0].vpc_security_groups[0] #=> Types::VpcSecurityGroupMembership
    #   resp.data.db_instances[0].vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.data.db_instances[0].vpc_security_groups[0].status #=> String
    #   resp.data.db_instances[0].db_parameter_groups #=> Array<DBParameterGroupStatus>
    #   resp.data.db_instances[0].db_parameter_groups[0] #=> Types::DBParameterGroupStatus
    #   resp.data.db_instances[0].db_parameter_groups[0].db_parameter_group_name #=> String
    #   resp.data.db_instances[0].db_parameter_groups[0].parameter_apply_status #=> String
    #   resp.data.db_instances[0].availability_zone #=> String
    #   resp.data.db_instances[0].db_subnet_group #=> Types::DBSubnetGroup
    #   resp.data.db_instances[0].db_subnet_group.db_subnet_group_name #=> String
    #   resp.data.db_instances[0].db_subnet_group.db_subnet_group_description #=> String
    #   resp.data.db_instances[0].db_subnet_group.vpc_id #=> String
    #   resp.data.db_instances[0].db_subnet_group.subnet_group_status #=> String
    #   resp.data.db_instances[0].db_subnet_group.subnets #=> Array<Subnet>
    #   resp.data.db_instances[0].db_subnet_group.subnets[0] #=> Types::Subnet
    #   resp.data.db_instances[0].db_subnet_group.subnets[0].subnet_identifier #=> String
    #   resp.data.db_instances[0].db_subnet_group.subnets[0].subnet_availability_zone #=> Types::AvailabilityZone
    #   resp.data.db_instances[0].db_subnet_group.subnets[0].subnet_availability_zone.name #=> String
    #   resp.data.db_instances[0].db_subnet_group.subnets[0].subnet_status #=> String
    #   resp.data.db_instances[0].db_subnet_group.db_subnet_group_arn #=> String
    #   resp.data.db_instances[0].preferred_maintenance_window #=> String
    #   resp.data.db_instances[0].pending_modified_values #=> Types::PendingModifiedValues
    #   resp.data.db_instances[0].pending_modified_values.db_instance_class #=> String
    #   resp.data.db_instances[0].pending_modified_values.allocated_storage #=> Integer
    #   resp.data.db_instances[0].pending_modified_values.master_user_password #=> String
    #   resp.data.db_instances[0].pending_modified_values.port #=> Integer
    #   resp.data.db_instances[0].pending_modified_values.backup_retention_period #=> Integer
    #   resp.data.db_instances[0].pending_modified_values.multi_az #=> Boolean
    #   resp.data.db_instances[0].pending_modified_values.engine_version #=> String
    #   resp.data.db_instances[0].pending_modified_values.license_model #=> String
    #   resp.data.db_instances[0].pending_modified_values.iops #=> Integer
    #   resp.data.db_instances[0].pending_modified_values.db_instance_identifier #=> String
    #   resp.data.db_instances[0].pending_modified_values.storage_type #=> String
    #   resp.data.db_instances[0].pending_modified_values.ca_certificate_identifier #=> String
    #   resp.data.db_instances[0].pending_modified_values.db_subnet_group_name #=> String
    #   resp.data.db_instances[0].pending_modified_values.pending_cloudwatch_logs_exports #=> Types::PendingCloudwatchLogsExports
    #   resp.data.db_instances[0].pending_modified_values.pending_cloudwatch_logs_exports.log_types_to_enable #=> Array<String>
    #   resp.data.db_instances[0].pending_modified_values.pending_cloudwatch_logs_exports.log_types_to_enable[0] #=> String
    #   resp.data.db_instances[0].pending_modified_values.pending_cloudwatch_logs_exports.log_types_to_disable #=> Array<String>
    #   resp.data.db_instances[0].latest_restorable_time #=> Time
    #   resp.data.db_instances[0].multi_az #=> Boolean
    #   resp.data.db_instances[0].engine_version #=> String
    #   resp.data.db_instances[0].auto_minor_version_upgrade #=> Boolean
    #   resp.data.db_instances[0].read_replica_source_db_instance_identifier #=> String
    #   resp.data.db_instances[0].read_replica_db_instance_identifiers #=> Array<String>
    #   resp.data.db_instances[0].read_replica_db_instance_identifiers[0] #=> String
    #   resp.data.db_instances[0].read_replica_db_cluster_identifiers #=> Array<String>
    #   resp.data.db_instances[0].read_replica_db_cluster_identifiers[0] #=> String
    #   resp.data.db_instances[0].license_model #=> String
    #   resp.data.db_instances[0].iops #=> Integer
    #   resp.data.db_instances[0].option_group_memberships #=> Array<OptionGroupMembership>
    #   resp.data.db_instances[0].option_group_memberships[0] #=> Types::OptionGroupMembership
    #   resp.data.db_instances[0].option_group_memberships[0].option_group_name #=> String
    #   resp.data.db_instances[0].option_group_memberships[0].status #=> String
    #   resp.data.db_instances[0].character_set_name #=> String
    #   resp.data.db_instances[0].secondary_availability_zone #=> String
    #   resp.data.db_instances[0].publicly_accessible #=> Boolean
    #   resp.data.db_instances[0].status_infos #=> Array<DBInstanceStatusInfo>
    #   resp.data.db_instances[0].status_infos[0] #=> Types::DBInstanceStatusInfo
    #   resp.data.db_instances[0].status_infos[0].status_type #=> String
    #   resp.data.db_instances[0].status_infos[0].normal #=> Boolean
    #   resp.data.db_instances[0].status_infos[0].status #=> String
    #   resp.data.db_instances[0].status_infos[0].message #=> String
    #   resp.data.db_instances[0].storage_type #=> String
    #   resp.data.db_instances[0].tde_credential_arn #=> String
    #   resp.data.db_instances[0].db_instance_port #=> Integer
    #   resp.data.db_instances[0].db_cluster_identifier #=> String
    #   resp.data.db_instances[0].storage_encrypted #=> Boolean
    #   resp.data.db_instances[0].kms_key_id #=> String
    #   resp.data.db_instances[0].dbi_resource_id #=> String
    #   resp.data.db_instances[0].ca_certificate_identifier #=> String
    #   resp.data.db_instances[0].domain_memberships #=> Array<DomainMembership>
    #   resp.data.db_instances[0].domain_memberships[0] #=> Types::DomainMembership
    #   resp.data.db_instances[0].domain_memberships[0].domain #=> String
    #   resp.data.db_instances[0].domain_memberships[0].status #=> String
    #   resp.data.db_instances[0].domain_memberships[0].fqdn #=> String
    #   resp.data.db_instances[0].domain_memberships[0].iam_role_name #=> String
    #   resp.data.db_instances[0].copy_tags_to_snapshot #=> Boolean
    #   resp.data.db_instances[0].monitoring_interval #=> Integer
    #   resp.data.db_instances[0].enhanced_monitoring_resource_arn #=> String
    #   resp.data.db_instances[0].monitoring_role_arn #=> String
    #   resp.data.db_instances[0].promotion_tier #=> Integer
    #   resp.data.db_instances[0].db_instance_arn #=> String
    #   resp.data.db_instances[0].timezone #=> String
    #   resp.data.db_instances[0].iam_database_authentication_enabled #=> Boolean
    #   resp.data.db_instances[0].performance_insights_enabled #=> Boolean
    #   resp.data.db_instances[0].performance_insights_kms_key_id #=> String
    #   resp.data.db_instances[0].enabled_cloudwatch_logs_exports #=> Array<String>
    #   resp.data.db_instances[0].deletion_protection #=> Boolean
    #
    def describe_db_instances(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDBInstancesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDBInstancesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDBInstances
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DBInstanceNotFoundFault]),
        data_parser: Parsers::DescribeDBInstances
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDBInstances,
        stubs: @stubs,
        params_class: Params::DescribeDBInstancesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_db_instances
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of <code>DBParameterGroup</code> descriptions. If a
    #       <code>DBParameterGroupName</code> is specified, the list will contain only the description of
    #       the specified DB parameter group.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDBParameterGroupsInput}.
    #
    # @option params [String] :db_parameter_group_name
    #   <p>The name of a specific DB parameter group to return details for.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If supplied, must match the name of an existing DBClusterParameterGroup.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Array<Filter>] :filters
    #   <p>This parameter is not currently supported.</p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than the
    #         specified <code>MaxRecords</code> value, a pagination token called a marker is included in the
    #         response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous
    #         <code>DescribeDBParameterGroups</code> request. If this parameter is specified, the response
    #         includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
    #
    # @return [Types::DescribeDBParameterGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_db_parameter_groups(
    #     db_parameter_group_name: 'DBParameterGroupName',
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
    #   resp.data #=> Types::DescribeDBParameterGroupsOutput
    #   resp.data.marker #=> String
    #   resp.data.db_parameter_groups #=> Array<DBParameterGroup>
    #   resp.data.db_parameter_groups[0] #=> Types::DBParameterGroup
    #   resp.data.db_parameter_groups[0].db_parameter_group_name #=> String
    #   resp.data.db_parameter_groups[0].db_parameter_group_family #=> String
    #   resp.data.db_parameter_groups[0].description #=> String
    #   resp.data.db_parameter_groups[0].db_parameter_group_arn #=> String
    #
    def describe_db_parameter_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDBParameterGroupsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDBParameterGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDBParameterGroups
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DBParameterGroupNotFoundFault]),
        data_parser: Parsers::DescribeDBParameterGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDBParameterGroups,
        stubs: @stubs,
        params_class: Params::DescribeDBParameterGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_db_parameter_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the detailed parameter list for a particular DB parameter group.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDBParametersInput}.
    #
    # @option params [String] :db_parameter_group_name
    #   <p>The name of a specific DB parameter group to return details for.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If supplied, must match the name of an existing DBParameterGroup.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :source
    #   <p>The parameter types to return.</p>
    #            <p>Default: All parameter types returned</p>
    #            <p>Valid Values: <code>user | system | engine-default</code>
    #            </p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>This parameter is not currently supported.</p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than the
    #         specified <code>MaxRecords</code> value, a pagination token called a marker is included in the
    #         response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous <code>DescribeDBParameters</code>
    #         request. If this parameter is specified, the response includes only records beyond the marker,
    #         up to the value specified by <code>MaxRecords</code>.</p>
    #
    # @return [Types::DescribeDBParametersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_db_parameters(
    #     db_parameter_group_name: 'DBParameterGroupName', # required
    #     source: 'Source',
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
    #   resp.data #=> Types::DescribeDBParametersOutput
    #   resp.data.parameters #=> Array<Parameter>
    #   resp.data.parameters[0] #=> Types::Parameter
    #   resp.data.parameters[0].parameter_name #=> String
    #   resp.data.parameters[0].parameter_value #=> String
    #   resp.data.parameters[0].description #=> String
    #   resp.data.parameters[0].source #=> String
    #   resp.data.parameters[0].apply_type #=> String
    #   resp.data.parameters[0].data_type #=> String
    #   resp.data.parameters[0].allowed_values #=> String
    #   resp.data.parameters[0].is_modifiable #=> Boolean
    #   resp.data.parameters[0].minimum_engine_version #=> String
    #   resp.data.parameters[0].apply_method #=> String, one of ["immediate", "pending-reboot"]
    #   resp.data.marker #=> String
    #
    def describe_db_parameters(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDBParametersInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDBParametersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDBParameters
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DBParameterGroupNotFoundFault]),
        data_parser: Parsers::DescribeDBParameters
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDBParameters,
        stubs: @stubs,
        params_class: Params::DescribeDBParametersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_db_parameters
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of DBSubnetGroup descriptions. If a DBSubnetGroupName is specified, the
    #       list will contain only the descriptions of the specified DBSubnetGroup.</p>
    #          <p>For an overview of CIDR ranges, go to the <a href="http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing">Wikipedia Tutorial</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDBSubnetGroupsInput}.
    #
    # @option params [String] :db_subnet_group_name
    #   <p>The name of the DB subnet group to return details for.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>This parameter is not currently supported.</p>
    #
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than the
    #         specified <code>MaxRecords</code> value, a pagination token called a marker is included in the
    #         response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p> An optional pagination token provided by a previous DescribeDBSubnetGroups request. If
    #         this parameter is specified, the response includes only records beyond the marker, up to the
    #         value specified by <code>MaxRecords</code>.</p>
    #
    # @return [Types::DescribeDBSubnetGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_db_subnet_groups(
    #     db_subnet_group_name: 'DBSubnetGroupName',
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
    #   resp.data #=> Types::DescribeDBSubnetGroupsOutput
    #   resp.data.marker #=> String
    #   resp.data.db_subnet_groups #=> Array<DBSubnetGroup>
    #   resp.data.db_subnet_groups[0] #=> Types::DBSubnetGroup
    #   resp.data.db_subnet_groups[0].db_subnet_group_name #=> String
    #   resp.data.db_subnet_groups[0].db_subnet_group_description #=> String
    #   resp.data.db_subnet_groups[0].vpc_id #=> String
    #   resp.data.db_subnet_groups[0].subnet_group_status #=> String
    #   resp.data.db_subnet_groups[0].subnets #=> Array<Subnet>
    #   resp.data.db_subnet_groups[0].subnets[0] #=> Types::Subnet
    #   resp.data.db_subnet_groups[0].subnets[0].subnet_identifier #=> String
    #   resp.data.db_subnet_groups[0].subnets[0].subnet_availability_zone #=> Types::AvailabilityZone
    #   resp.data.db_subnet_groups[0].subnets[0].subnet_availability_zone.name #=> String
    #   resp.data.db_subnet_groups[0].subnets[0].subnet_status #=> String
    #   resp.data.db_subnet_groups[0].db_subnet_group_arn #=> String
    #
    def describe_db_subnet_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDBSubnetGroupsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDBSubnetGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDBSubnetGroups
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DBSubnetGroupNotFoundFault]),
        data_parser: Parsers::DescribeDBSubnetGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDBSubnetGroups,
        stubs: @stubs,
        params_class: Params::DescribeDBSubnetGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_db_subnet_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the default engine and system parameter information for the cluster database
    #       engine.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEngineDefaultClusterParametersInput}.
    #
    # @option params [String] :db_parameter_group_family
    #   <p>The name of the DB cluster parameter group family to return engine parameter information
    #         for.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>This parameter is not currently supported.</p>
    #
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than the
    #         specified <code>MaxRecords</code> value, a pagination token called a marker is included in the
    #         response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p> An optional pagination token provided by a previous
    #         <code>DescribeEngineDefaultClusterParameters</code> request. If this parameter is specified,
    #         the response includes only records beyond the marker, up to the value specified by
    #         <code>MaxRecords</code>.</p>
    #
    # @return [Types::DescribeEngineDefaultClusterParametersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_engine_default_cluster_parameters(
    #     db_parameter_group_family: 'DBParameterGroupFamily', # required
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
    #   resp.data #=> Types::DescribeEngineDefaultClusterParametersOutput
    #   resp.data.engine_defaults #=> Types::EngineDefaults
    #   resp.data.engine_defaults.db_parameter_group_family #=> String
    #   resp.data.engine_defaults.marker #=> String
    #   resp.data.engine_defaults.parameters #=> Array<Parameter>
    #   resp.data.engine_defaults.parameters[0] #=> Types::Parameter
    #   resp.data.engine_defaults.parameters[0].parameter_name #=> String
    #   resp.data.engine_defaults.parameters[0].parameter_value #=> String
    #   resp.data.engine_defaults.parameters[0].description #=> String
    #   resp.data.engine_defaults.parameters[0].source #=> String
    #   resp.data.engine_defaults.parameters[0].apply_type #=> String
    #   resp.data.engine_defaults.parameters[0].data_type #=> String
    #   resp.data.engine_defaults.parameters[0].allowed_values #=> String
    #   resp.data.engine_defaults.parameters[0].is_modifiable #=> Boolean
    #   resp.data.engine_defaults.parameters[0].minimum_engine_version #=> String
    #   resp.data.engine_defaults.parameters[0].apply_method #=> String, one of ["immediate", "pending-reboot"]
    #
    def describe_engine_default_cluster_parameters(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEngineDefaultClusterParametersInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeEngineDefaultClusterParametersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeEngineDefaultClusterParameters
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
        data_parser: Parsers::DescribeEngineDefaultClusterParameters
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeEngineDefaultClusterParameters,
        stubs: @stubs,
        params_class: Params::DescribeEngineDefaultClusterParametersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_engine_default_cluster_parameters
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the default engine and system parameter information for the specified database
    #       engine.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEngineDefaultParametersInput}.
    #
    # @option params [String] :db_parameter_group_family
    #   <p>The name of the DB parameter group family.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>Not currently supported.</p>
    #
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than the
    #         specified <code>MaxRecords</code> value, a pagination token called a marker is included in the
    #         response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p> An optional pagination token provided by a previous
    #         <code>DescribeEngineDefaultParameters</code> request. If this parameter is specified, the
    #         response includes only records beyond the marker, up to the value specified by
    #         <code>MaxRecords</code>.</p>
    #
    # @return [Types::DescribeEngineDefaultParametersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_engine_default_parameters(
    #     db_parameter_group_family: 'DBParameterGroupFamily', # required
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
    #   resp.data #=> Types::DescribeEngineDefaultParametersOutput
    #   resp.data.engine_defaults #=> Types::EngineDefaults
    #   resp.data.engine_defaults.db_parameter_group_family #=> String
    #   resp.data.engine_defaults.marker #=> String
    #   resp.data.engine_defaults.parameters #=> Array<Parameter>
    #   resp.data.engine_defaults.parameters[0] #=> Types::Parameter
    #   resp.data.engine_defaults.parameters[0].parameter_name #=> String
    #   resp.data.engine_defaults.parameters[0].parameter_value #=> String
    #   resp.data.engine_defaults.parameters[0].description #=> String
    #   resp.data.engine_defaults.parameters[0].source #=> String
    #   resp.data.engine_defaults.parameters[0].apply_type #=> String
    #   resp.data.engine_defaults.parameters[0].data_type #=> String
    #   resp.data.engine_defaults.parameters[0].allowed_values #=> String
    #   resp.data.engine_defaults.parameters[0].is_modifiable #=> Boolean
    #   resp.data.engine_defaults.parameters[0].minimum_engine_version #=> String
    #   resp.data.engine_defaults.parameters[0].apply_method #=> String, one of ["immediate", "pending-reboot"]
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
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

    # <p>Displays a list of categories for all event source types, or, if specified, for a
    #       specified source type.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEventCategoriesInput}.
    #
    # @option params [String] :source_type
    #   <p>The type of source that is generating the events.</p>
    #            <p>Valid values: db-instance | db-parameter-group | db-security-group | db-snapshot</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>This parameter is not currently supported.</p>
    #
    # @return [Types::DescribeEventCategoriesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_event_categories(
    #     source_type: 'SourceType',
    #     filters: [
    #       {
    #         name: 'Name', # required
    #         values: [
    #           'member'
    #         ] # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeEventCategoriesOutput
    #   resp.data.event_categories_map_list #=> Array<EventCategoriesMap>
    #   resp.data.event_categories_map_list[0] #=> Types::EventCategoriesMap
    #   resp.data.event_categories_map_list[0].source_type #=> String
    #   resp.data.event_categories_map_list[0].event_categories #=> Array<String>
    #   resp.data.event_categories_map_list[0].event_categories[0] #=> String
    #
    def describe_event_categories(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEventCategoriesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeEventCategoriesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeEventCategories
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
        data_parser: Parsers::DescribeEventCategories
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeEventCategories,
        stubs: @stubs,
        params_class: Params::DescribeEventCategoriesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_event_categories
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all the subscription descriptions for a customer account. The description for a
    #       subscription includes SubscriptionName, SNSTopicARN, CustomerID, SourceType, SourceID,
    #       CreationTime, and Status.</p>
    #          <p>If you specify a SubscriptionName, lists the description for that subscription.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEventSubscriptionsInput}.
    #
    # @option params [String] :subscription_name
    #   <p>The name of the event notification subscription you want to describe.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>This parameter is not currently supported.</p>
    #
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than the
    #         specified <code>MaxRecords</code> value, a pagination token called a marker is included in the
    #         response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p> An optional pagination token provided by a previous DescribeOrderableDBInstanceOptions
    #         request. If this parameter is specified, the response includes only records beyond the marker,
    #         up to the value specified by <code>MaxRecords</code> .</p>
    #
    # @return [Types::DescribeEventSubscriptionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_event_subscriptions(
    #     subscription_name: 'SubscriptionName',
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
    #   resp.data #=> Types::DescribeEventSubscriptionsOutput
    #   resp.data.marker #=> String
    #   resp.data.event_subscriptions_list #=> Array<EventSubscription>
    #   resp.data.event_subscriptions_list[0] #=> Types::EventSubscription
    #   resp.data.event_subscriptions_list[0].customer_aws_id #=> String
    #   resp.data.event_subscriptions_list[0].cust_subscription_id #=> String
    #   resp.data.event_subscriptions_list[0].sns_topic_arn #=> String
    #   resp.data.event_subscriptions_list[0].status #=> String
    #   resp.data.event_subscriptions_list[0].subscription_creation_time #=> String
    #   resp.data.event_subscriptions_list[0].source_type #=> String
    #   resp.data.event_subscriptions_list[0].source_ids_list #=> Array<String>
    #   resp.data.event_subscriptions_list[0].source_ids_list[0] #=> String
    #   resp.data.event_subscriptions_list[0].event_categories_list #=> Array<String>
    #   resp.data.event_subscriptions_list[0].event_categories_list[0] #=> String
    #   resp.data.event_subscriptions_list[0].enabled #=> Boolean
    #   resp.data.event_subscriptions_list[0].event_subscription_arn #=> String
    #
    def describe_event_subscriptions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEventSubscriptionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeEventSubscriptionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeEventSubscriptions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::SubscriptionNotFoundFault]),
        data_parser: Parsers::DescribeEventSubscriptions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeEventSubscriptions,
        stubs: @stubs,
        params_class: Params::DescribeEventSubscriptionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_event_subscriptions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns events related to DB instances, DB security groups, DB snapshots, and DB parameter
    #       groups for the past 14 days. Events specific to a particular DB instance, DB security group,
    #       database snapshot, or DB parameter group can be obtained by providing the name as a parameter.
    #       By default, the past hour of events are returned.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEventsInput}.
    #
    # @option params [String] :source_identifier
    #   <p>The identifier of the event source for which events are returned. If not specified, then
    #         all sources are included in the response.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If SourceIdentifier is supplied, SourceType must also be provided.</p>
    #               </li>
    #               <li>
    #                  <p>If the source type is <code>DBInstance</code>, then a
    #             <code>DBInstanceIdentifier</code> must be supplied.</p>
    #               </li>
    #               <li>
    #                  <p>If the source type is <code>DBSecurityGroup</code>, a <code>DBSecurityGroupName</code>
    #             must be supplied.</p>
    #               </li>
    #               <li>
    #                  <p>If the source type is <code>DBParameterGroup</code>, a
    #             <code>DBParameterGroupName</code> must be supplied.</p>
    #               </li>
    #               <li>
    #                  <p>If the source type is <code>DBSnapshot</code>, a <code>DBSnapshotIdentifier</code>
    #             must be supplied.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :source_type
    #   <p>The event source to retrieve events for. If no value is specified, all events are
    #         returned.</p>
    #
    # @option params [Time] :start_time
    #   <p> The beginning of the time interval to retrieve events for, specified in ISO 8601 format.
    #         For more information about ISO 8601, go to the <a href="http://en.wikipedia.org/wiki/ISO_8601">ISO8601 Wikipedia page.</a>
    #            </p>
    #            <p>Example: 2009-07-08T18:00Z</p>
    #
    # @option params [Time] :end_time
    #   <p> The end of the time interval for which to retrieve events, specified in ISO 8601 format.
    #         For more information about ISO 8601, go to the <a href="http://en.wikipedia.org/wiki/ISO_8601">ISO8601 Wikipedia page.</a>
    #            </p>
    #            <p>Example: 2009-07-08T18:00Z</p>
    #
    # @option params [Integer] :duration
    #   <p>The number of minutes to retrieve events for.</p>
    #            <p>Default: 60</p>
    #
    # @option params [Array<String>] :event_categories
    #   <p>A list of event categories that trigger notifications for a event notification
    #         subscription.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>This parameter is not currently supported.</p>
    #
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than the
    #         specified <code>MaxRecords</code> value, a pagination token called a marker is included in the
    #         response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p> An optional pagination token provided by a previous DescribeEvents request. If this
    #         parameter is specified, the response includes only records beyond the marker, up to the value
    #         specified by <code>MaxRecords</code>.</p>
    #
    # @return [Types::DescribeEventsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_events(
    #     source_identifier: 'SourceIdentifier',
    #     source_type: 'db-instance', # accepts ["db-instance", "db-parameter-group", "db-security-group", "db-snapshot", "db-cluster", "db-cluster-snapshot"]
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     duration: 1,
    #     event_categories: [
    #       'member'
    #     ],
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
    #   resp.data #=> Types::DescribeEventsOutput
    #   resp.data.marker #=> String
    #   resp.data.events #=> Array<Event>
    #   resp.data.events[0] #=> Types::Event
    #   resp.data.events[0].source_identifier #=> String
    #   resp.data.events[0].source_type #=> String, one of ["db-instance", "db-parameter-group", "db-security-group", "db-snapshot", "db-cluster", "db-cluster-snapshot"]
    #   resp.data.events[0].message #=> String
    #   resp.data.events[0].event_categories #=> Array<String>
    #   resp.data.events[0].event_categories[0] #=> String
    #   resp.data.events[0].date #=> Time
    #   resp.data.events[0].source_arn #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
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

    # <p>Returns information about Neptune global database clusters. This API
    #       supports pagination.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeGlobalClustersInput}.
    #
    # @option params [String] :global_cluster_identifier
    #   <p>The user-supplied DB cluster identifier. If this parameter is specified,
    #         only information about the specified DB cluster is returned. This parameter
    #         is not case-sensitive.</p>
    #
    #            <p>Constraints: If supplied, must match an existing DB cluster identifier.</p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records
    #         exist than the specified <code>MaxRecords</code> value, a pagination marker token
    #         is included in the response that you can use to retrieve the remaining results.</p>
    #            <p>Default: <code>100</code>
    #            </p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p>(<i>Optional</i>) A pagination token returned by a previous
    #         call to <code>DescribeGlobalClusters</code>. If this parameter is specified,
    #         the response will only include records beyond the marker, up to the number
    #         specified by <code>MaxRecords</code>.</p>
    #
    # @return [Types::DescribeGlobalClustersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_global_clusters(
    #     global_cluster_identifier: 'GlobalClusterIdentifier',
    #     max_records: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeGlobalClustersOutput
    #   resp.data.marker #=> String
    #   resp.data.global_clusters #=> Array<GlobalCluster>
    #   resp.data.global_clusters[0] #=> Types::GlobalCluster
    #   resp.data.global_clusters[0].global_cluster_identifier #=> String
    #   resp.data.global_clusters[0].global_cluster_resource_id #=> String
    #   resp.data.global_clusters[0].global_cluster_arn #=> String
    #   resp.data.global_clusters[0].status #=> String
    #   resp.data.global_clusters[0].engine #=> String
    #   resp.data.global_clusters[0].engine_version #=> String
    #   resp.data.global_clusters[0].storage_encrypted #=> Boolean
    #   resp.data.global_clusters[0].deletion_protection #=> Boolean
    #   resp.data.global_clusters[0].global_cluster_members #=> Array<GlobalClusterMember>
    #   resp.data.global_clusters[0].global_cluster_members[0] #=> Types::GlobalClusterMember
    #   resp.data.global_clusters[0].global_cluster_members[0].db_cluster_arn #=> String
    #   resp.data.global_clusters[0].global_cluster_members[0].readers #=> Array<String>
    #   resp.data.global_clusters[0].global_cluster_members[0].readers[0] #=> String
    #   resp.data.global_clusters[0].global_cluster_members[0].is_writer #=> Boolean
    #
    def describe_global_clusters(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeGlobalClustersInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeGlobalClustersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeGlobalClusters
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::GlobalClusterNotFoundFault]),
        data_parser: Parsers::DescribeGlobalClusters
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeGlobalClusters,
        stubs: @stubs,
        params_class: Params::DescribeGlobalClustersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_global_clusters
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of orderable DB instance options for the specified engine.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeOrderableDBInstanceOptionsInput}.
    #
    # @option params [String] :engine
    #   <p>The name of the engine to retrieve DB instance options for.</p>
    #
    # @option params [String] :engine_version
    #   <p>The engine version filter value. Specify this parameter to show only the available
    #         offerings matching the specified engine version.</p>
    #
    # @option params [String] :db_instance_class
    #   <p>The DB instance class filter value. Specify this parameter to show only the available
    #         offerings matching the specified DB instance class.</p>
    #
    # @option params [String] :license_model
    #   <p>The license model filter value. Specify this parameter to show only the available
    #         offerings matching the specified license model.</p>
    #
    # @option params [Boolean] :vpc
    #   <p>The VPC filter value. Specify this parameter to show only the available VPC or non-VPC
    #         offerings.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>This parameter is not currently supported.</p>
    #
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than the
    #         specified <code>MaxRecords</code> value, a pagination token called a marker is included in the
    #         response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p> An optional pagination token provided by a previous DescribeOrderableDBInstanceOptions
    #         request. If this parameter is specified, the response includes only records beyond the marker,
    #         up to the value specified by <code>MaxRecords</code> .</p>
    #
    # @return [Types::DescribeOrderableDBInstanceOptionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_orderable_db_instance_options(
    #     engine: 'Engine', # required
    #     engine_version: 'EngineVersion',
    #     db_instance_class: 'DBInstanceClass',
    #     license_model: 'LicenseModel',
    #     vpc: false,
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
    #   resp.data #=> Types::DescribeOrderableDBInstanceOptionsOutput
    #   resp.data.orderable_db_instance_options #=> Array<OrderableDBInstanceOption>
    #   resp.data.orderable_db_instance_options[0] #=> Types::OrderableDBInstanceOption
    #   resp.data.orderable_db_instance_options[0].engine #=> String
    #   resp.data.orderable_db_instance_options[0].engine_version #=> String
    #   resp.data.orderable_db_instance_options[0].db_instance_class #=> String
    #   resp.data.orderable_db_instance_options[0].license_model #=> String
    #   resp.data.orderable_db_instance_options[0].availability_zones #=> Array<AvailabilityZone>
    #   resp.data.orderable_db_instance_options[0].availability_zones[0] #=> Types::AvailabilityZone
    #   resp.data.orderable_db_instance_options[0].availability_zones[0].name #=> String
    #   resp.data.orderable_db_instance_options[0].multi_az_capable #=> Boolean
    #   resp.data.orderable_db_instance_options[0].read_replica_capable #=> Boolean
    #   resp.data.orderable_db_instance_options[0].vpc #=> Boolean
    #   resp.data.orderable_db_instance_options[0].supports_storage_encryption #=> Boolean
    #   resp.data.orderable_db_instance_options[0].storage_type #=> String
    #   resp.data.orderable_db_instance_options[0].supports_iops #=> Boolean
    #   resp.data.orderable_db_instance_options[0].supports_enhanced_monitoring #=> Boolean
    #   resp.data.orderable_db_instance_options[0].supports_iam_database_authentication #=> Boolean
    #   resp.data.orderable_db_instance_options[0].supports_performance_insights #=> Boolean
    #   resp.data.orderable_db_instance_options[0].min_storage_size #=> Integer
    #   resp.data.orderable_db_instance_options[0].max_storage_size #=> Integer
    #   resp.data.orderable_db_instance_options[0].min_iops_per_db_instance #=> Integer
    #   resp.data.orderable_db_instance_options[0].max_iops_per_db_instance #=> Integer
    #   resp.data.orderable_db_instance_options[0].min_iops_per_gib #=> Float
    #   resp.data.orderable_db_instance_options[0].max_iops_per_gib #=> Float
    #   resp.data.orderable_db_instance_options[0].supports_global_databases #=> Boolean
    #   resp.data.marker #=> String
    #
    def describe_orderable_db_instance_options(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeOrderableDBInstanceOptionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeOrderableDBInstanceOptionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeOrderableDBInstanceOptions
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
        data_parser: Parsers::DescribeOrderableDBInstanceOptions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeOrderableDBInstanceOptions,
        stubs: @stubs,
        params_class: Params::DescribeOrderableDBInstanceOptionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_orderable_db_instance_options
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of resources (for example, DB instances) that have at least one pending
    #       maintenance action.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribePendingMaintenanceActionsInput}.
    #
    # @option params [String] :resource_identifier
    #   <p>The ARN of a resource to return pending maintenance actions for.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>A filter that specifies one or more resources to return pending maintenance actions
    #         for.</p>
    #            <p>Supported filters:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>db-cluster-id</code> - Accepts DB cluster identifiers and DB cluster Amazon
    #             Resource Names (ARNs). The results list will only include pending maintenance actions for
    #             the DB clusters identified by these ARNs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>db-instance-id</code> - Accepts DB instance identifiers and DB instance ARNs.
    #             The results list will only include pending maintenance actions for the DB instances
    #             identified by these ARNs.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :marker
    #   <p> An optional pagination token provided by a previous
    #         <code>DescribePendingMaintenanceActions</code> request. If this parameter is specified, the
    #         response includes only records beyond the marker, up to a number of records specified by
    #         <code>MaxRecords</code>.</p>
    #
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than the
    #         specified <code>MaxRecords</code> value, a pagination token called a marker is included in the
    #         response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    # @return [Types::DescribePendingMaintenanceActionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_pending_maintenance_actions(
    #     resource_identifier: 'ResourceIdentifier',
    #     filters: [
    #       {
    #         name: 'Name', # required
    #         values: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #     marker: 'Marker',
    #     max_records: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribePendingMaintenanceActionsOutput
    #   resp.data.pending_maintenance_actions #=> Array<ResourcePendingMaintenanceActions>
    #   resp.data.pending_maintenance_actions[0] #=> Types::ResourcePendingMaintenanceActions
    #   resp.data.pending_maintenance_actions[0].resource_identifier #=> String
    #   resp.data.pending_maintenance_actions[0].pending_maintenance_action_details #=> Array<PendingMaintenanceAction>
    #   resp.data.pending_maintenance_actions[0].pending_maintenance_action_details[0] #=> Types::PendingMaintenanceAction
    #   resp.data.pending_maintenance_actions[0].pending_maintenance_action_details[0].action #=> String
    #   resp.data.pending_maintenance_actions[0].pending_maintenance_action_details[0].auto_applied_after_date #=> Time
    #   resp.data.pending_maintenance_actions[0].pending_maintenance_action_details[0].forced_apply_date #=> Time
    #   resp.data.pending_maintenance_actions[0].pending_maintenance_action_details[0].opt_in_status #=> String
    #   resp.data.pending_maintenance_actions[0].pending_maintenance_action_details[0].current_apply_date #=> Time
    #   resp.data.pending_maintenance_actions[0].pending_maintenance_action_details[0].description #=> String
    #   resp.data.marker #=> String
    #
    def describe_pending_maintenance_actions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribePendingMaintenanceActionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribePendingMaintenanceActionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribePendingMaintenanceActions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundFault]),
        data_parser: Parsers::DescribePendingMaintenanceActions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribePendingMaintenanceActions,
        stubs: @stubs,
        params_class: Params::DescribePendingMaintenanceActionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_pending_maintenance_actions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>You can call <a>DescribeValidDBInstanceModifications</a>
    #       to learn what modifications you can make to your DB instance. You can use this
    #       information when you call <a>ModifyDBInstance</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeValidDBInstanceModificationsInput}.
    #
    # @option params [String] :db_instance_identifier
    #   <p>The customer identifier or the ARN of your DB instance.</p>
    #
    # @return [Types::DescribeValidDBInstanceModificationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_valid_db_instance_modifications(
    #     db_instance_identifier: 'DBInstanceIdentifier' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeValidDBInstanceModificationsOutput
    #   resp.data.valid_db_instance_modifications_message #=> Types::ValidDBInstanceModificationsMessage
    #   resp.data.valid_db_instance_modifications_message.storage #=> Array<ValidStorageOptions>
    #   resp.data.valid_db_instance_modifications_message.storage[0] #=> Types::ValidStorageOptions
    #   resp.data.valid_db_instance_modifications_message.storage[0].storage_type #=> String
    #   resp.data.valid_db_instance_modifications_message.storage[0].storage_size #=> Array<Range>
    #   resp.data.valid_db_instance_modifications_message.storage[0].storage_size[0] #=> Types::Range
    #   resp.data.valid_db_instance_modifications_message.storage[0].storage_size[0].from #=> Integer
    #   resp.data.valid_db_instance_modifications_message.storage[0].storage_size[0].to #=> Integer
    #   resp.data.valid_db_instance_modifications_message.storage[0].storage_size[0].step #=> Integer
    #   resp.data.valid_db_instance_modifications_message.storage[0].provisioned_iops #=> Array<Range>
    #   resp.data.valid_db_instance_modifications_message.storage[0].iops_to_storage_ratio #=> Array<DoubleRange>
    #   resp.data.valid_db_instance_modifications_message.storage[0].iops_to_storage_ratio[0] #=> Types::DoubleRange
    #   resp.data.valid_db_instance_modifications_message.storage[0].iops_to_storage_ratio[0].from #=> Float
    #   resp.data.valid_db_instance_modifications_message.storage[0].iops_to_storage_ratio[0].to #=> Float
    #
    def describe_valid_db_instance_modifications(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeValidDBInstanceModificationsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeValidDBInstanceModificationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeValidDBInstanceModifications
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DBInstanceNotFoundFault, Errors::InvalidDBInstanceStateFault]),
        data_parser: Parsers::DescribeValidDBInstanceModifications
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeValidDBInstanceModifications,
        stubs: @stubs,
        params_class: Params::DescribeValidDBInstanceModificationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_valid_db_instance_modifications
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Forces a failover for a DB cluster.</p>
    #          <p>A failover for a DB cluster promotes one of the Read Replicas (read-only instances) in the
    #       DB cluster to be the primary instance (the cluster writer).</p>
    #          <p>Amazon Neptune will automatically fail over to a Read Replica, if one exists, when the
    #       primary instance fails. You can force a failover when you want to simulate a failure of a
    #       primary instance for testing. Because each instance in a DB cluster has its own endpoint
    #       address, you will need to clean up and re-establish any existing connections that use those
    #       endpoint addresses when the failover is complete.</p>
    #
    # @param [Hash] params
    #   See {Types::FailoverDBClusterInput}.
    #
    # @option params [String] :db_cluster_identifier
    #   <p>A DB cluster identifier to force a failover for. This parameter is not
    #         case-sensitive.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match the identifier of an existing DBCluster.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :target_db_instance_identifier
    #   <p>The name of the instance to promote to the primary instance.</p>
    #            <p>You must specify the instance identifier for an Read Replica in the DB cluster. For
    #         example, <code>mydbcluster-replica1</code>.</p>
    #
    # @return [Types::FailoverDBClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.failover_db_cluster(
    #     db_cluster_identifier: 'DBClusterIdentifier',
    #     target_db_instance_identifier: 'TargetDBInstanceIdentifier'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::FailoverDBClusterOutput
    #   resp.data.db_cluster #=> Types::DBCluster
    #   resp.data.db_cluster.allocated_storage #=> Integer
    #   resp.data.db_cluster.availability_zones #=> Array<String>
    #   resp.data.db_cluster.availability_zones[0] #=> String
    #   resp.data.db_cluster.backup_retention_period #=> Integer
    #   resp.data.db_cluster.character_set_name #=> String
    #   resp.data.db_cluster.database_name #=> String
    #   resp.data.db_cluster.db_cluster_identifier #=> String
    #   resp.data.db_cluster.db_cluster_parameter_group #=> String
    #   resp.data.db_cluster.db_subnet_group #=> String
    #   resp.data.db_cluster.status #=> String
    #   resp.data.db_cluster.percent_progress #=> String
    #   resp.data.db_cluster.earliest_restorable_time #=> Time
    #   resp.data.db_cluster.endpoint #=> String
    #   resp.data.db_cluster.reader_endpoint #=> String
    #   resp.data.db_cluster.multi_az #=> Boolean
    #   resp.data.db_cluster.engine #=> String
    #   resp.data.db_cluster.engine_version #=> String
    #   resp.data.db_cluster.latest_restorable_time #=> Time
    #   resp.data.db_cluster.port #=> Integer
    #   resp.data.db_cluster.master_username #=> String
    #   resp.data.db_cluster.db_cluster_option_group_memberships #=> Array<DBClusterOptionGroupStatus>
    #   resp.data.db_cluster.db_cluster_option_group_memberships[0] #=> Types::DBClusterOptionGroupStatus
    #   resp.data.db_cluster.db_cluster_option_group_memberships[0].db_cluster_option_group_name #=> String
    #   resp.data.db_cluster.db_cluster_option_group_memberships[0].status #=> String
    #   resp.data.db_cluster.preferred_backup_window #=> String
    #   resp.data.db_cluster.preferred_maintenance_window #=> String
    #   resp.data.db_cluster.replication_source_identifier #=> String
    #   resp.data.db_cluster.read_replica_identifiers #=> Array<String>
    #   resp.data.db_cluster.read_replica_identifiers[0] #=> String
    #   resp.data.db_cluster.db_cluster_members #=> Array<DBClusterMember>
    #   resp.data.db_cluster.db_cluster_members[0] #=> Types::DBClusterMember
    #   resp.data.db_cluster.db_cluster_members[0].db_instance_identifier #=> String
    #   resp.data.db_cluster.db_cluster_members[0].is_cluster_writer #=> Boolean
    #   resp.data.db_cluster.db_cluster_members[0].db_cluster_parameter_group_status #=> String
    #   resp.data.db_cluster.db_cluster_members[0].promotion_tier #=> Integer
    #   resp.data.db_cluster.vpc_security_groups #=> Array<VpcSecurityGroupMembership>
    #   resp.data.db_cluster.vpc_security_groups[0] #=> Types::VpcSecurityGroupMembership
    #   resp.data.db_cluster.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.data.db_cluster.vpc_security_groups[0].status #=> String
    #   resp.data.db_cluster.hosted_zone_id #=> String
    #   resp.data.db_cluster.storage_encrypted #=> Boolean
    #   resp.data.db_cluster.kms_key_id #=> String
    #   resp.data.db_cluster.db_cluster_resource_id #=> String
    #   resp.data.db_cluster.db_cluster_arn #=> String
    #   resp.data.db_cluster.associated_roles #=> Array<DBClusterRole>
    #   resp.data.db_cluster.associated_roles[0] #=> Types::DBClusterRole
    #   resp.data.db_cluster.associated_roles[0].role_arn #=> String
    #   resp.data.db_cluster.associated_roles[0].status #=> String
    #   resp.data.db_cluster.associated_roles[0].feature_name #=> String
    #   resp.data.db_cluster.iam_database_authentication_enabled #=> Boolean
    #   resp.data.db_cluster.clone_group_id #=> String
    #   resp.data.db_cluster.cluster_create_time #=> Time
    #   resp.data.db_cluster.copy_tags_to_snapshot #=> Boolean
    #   resp.data.db_cluster.enabled_cloudwatch_logs_exports #=> Array<String>
    #   resp.data.db_cluster.enabled_cloudwatch_logs_exports[0] #=> String
    #   resp.data.db_cluster.deletion_protection #=> Boolean
    #   resp.data.db_cluster.cross_account_clone #=> Boolean
    #   resp.data.db_cluster.automatic_restart_time #=> Time
    #
    def failover_db_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::FailoverDBClusterInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::FailoverDBClusterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::FailoverDBCluster
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DBClusterNotFoundFault, Errors::InvalidDBClusterStateFault, Errors::InvalidDBInstanceStateFault]),
        data_parser: Parsers::FailoverDBCluster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::FailoverDBCluster,
        stubs: @stubs,
        params_class: Params::FailoverDBClusterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :failover_db_cluster
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Initiates the failover process for a Neptune global database.</p>
    #          <p>A failover for a Neptune global database promotes one of secondary
    #       read-only DB clusters to be the primary DB cluster and demotes the
    #       primary DB cluster to being a secondary (read-only) DB cluster. In other
    #       words, the role of the current primary DB cluster and the selected
    #       target secondary DB cluster are switched. The selected secondary DB cluster
    #       assumes full read/write capabilities for the Neptune global database.</p>
    #
    #          <note>
    #             <p>This action applies <b>only</b> to
    #       Neptune global databases. This action is only intended for use on healthy
    #       Neptune global databases with healthy Neptune DB clusters and no region-wide
    #       outages, to test disaster recovery scenarios or to reconfigure the global
    #       database topology.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::FailoverGlobalClusterInput}.
    #
    # @option params [String] :global_cluster_identifier
    #   <p>Identifier of the Neptune global database that should be failed over.
    #         The identifier is the unique key assigned by the user when the Neptune
    #         global database was created. In other words, it's the name of the global
    #         database that you want to fail over.</p>
    #            <p>Constraints: Must match the identifier of an existing Neptune global
    #         database.</p>
    #
    # @option params [String] :target_db_cluster_identifier
    #   <p>The Amazon Resource Name (ARN) of the secondary Neptune DB cluster
    #         that you want to promote to primary for the global database.</p>
    #
    # @return [Types::FailoverGlobalClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.failover_global_cluster(
    #     global_cluster_identifier: 'GlobalClusterIdentifier', # required
    #     target_db_cluster_identifier: 'TargetDbClusterIdentifier' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::FailoverGlobalClusterOutput
    #   resp.data.global_cluster #=> Types::GlobalCluster
    #   resp.data.global_cluster.global_cluster_identifier #=> String
    #   resp.data.global_cluster.global_cluster_resource_id #=> String
    #   resp.data.global_cluster.global_cluster_arn #=> String
    #   resp.data.global_cluster.status #=> String
    #   resp.data.global_cluster.engine #=> String
    #   resp.data.global_cluster.engine_version #=> String
    #   resp.data.global_cluster.storage_encrypted #=> Boolean
    #   resp.data.global_cluster.deletion_protection #=> Boolean
    #   resp.data.global_cluster.global_cluster_members #=> Array<GlobalClusterMember>
    #   resp.data.global_cluster.global_cluster_members[0] #=> Types::GlobalClusterMember
    #   resp.data.global_cluster.global_cluster_members[0].db_cluster_arn #=> String
    #   resp.data.global_cluster.global_cluster_members[0].readers #=> Array<String>
    #   resp.data.global_cluster.global_cluster_members[0].readers[0] #=> String
    #   resp.data.global_cluster.global_cluster_members[0].is_writer #=> Boolean
    #
    def failover_global_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::FailoverGlobalClusterInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::FailoverGlobalClusterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::FailoverGlobalCluster
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DBClusterNotFoundFault, Errors::GlobalClusterNotFoundFault, Errors::InvalidGlobalClusterStateFault, Errors::InvalidDBClusterStateFault]),
        data_parser: Parsers::FailoverGlobalCluster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::FailoverGlobalCluster,
        stubs: @stubs,
        params_class: Params::FailoverGlobalClusterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :failover_global_cluster
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all tags on an Amazon Neptune resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_name
    #   <p>The Amazon Neptune resource with tags to be listed. This value is an Amazon Resource Name
    #         (ARN). For information about creating an ARN, see <a href="https://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html#tagging.ARN.Constructing"> Constructing an
    #         Amazon Resource Name (ARN)</a>.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>This parameter is not currently supported.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_name: 'ResourceName', # required
    #     filters: [
    #       {
    #         name: 'Name', # required
    #         values: [
    #           'member'
    #         ] # required
    #       }
    #     ]
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DBClusterNotFoundFault, Errors::DBInstanceNotFoundFault, Errors::DBSnapshotNotFoundFault]),
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

    # <p>Modify a setting for a DB cluster. You can change one or more database configuration
    #       parameters by specifying these parameters and the new values in the request.</p>
    #
    # @param [Hash] params
    #   See {Types::ModifyDBClusterInput}.
    #
    # @option params [String] :db_cluster_identifier
    #   <p>The DB cluster identifier for the cluster being modified. This parameter is not
    #         case-sensitive.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match the identifier of an existing DBCluster.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :new_db_cluster_identifier
    #   <p>The new DB cluster identifier for the DB cluster when renaming a DB cluster. This value is
    #         stored as a lowercase string.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 1 to 63 letters, numbers, or hyphens</p>
    #               </li>
    #               <li>
    #                  <p>The first character must be a letter</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>my-cluster2</code>
    #            </p>
    #
    # @option params [Boolean] :apply_immediately
    #   <p>A value that specifies whether the modifications in this request and any pending
    #         modifications are asynchronously applied as soon as possible, regardless of the
    #         <code>PreferredMaintenanceWindow</code> setting for the DB cluster. If this parameter is set
    #         to <code>false</code>, changes to the DB cluster are applied during the next maintenance
    #         window.</p>
    #            <p>The <code>ApplyImmediately</code> parameter only affects <code>NewDBClusterIdentifier</code>
    #         values. If you set the <code>ApplyImmediately</code> parameter value to false, then changes to
    #         <code>NewDBClusterIdentifier</code> values are applied during the next maintenance window.
    #         All other changes are applied immediately, regardless of the value of the
    #         <code>ApplyImmediately</code> parameter.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    #
    # @option params [Integer] :backup_retention_period
    #   <p>The number of days for which automated backups are retained. You must specify a minimum
    #         value of 1.</p>
    #            <p>Default: 1</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be a value from 1 to 35</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :db_cluster_parameter_group_name
    #   <p>The name of the DB cluster parameter group to use for the DB cluster.</p>
    #
    # @option params [Array<String>] :vpc_security_group_ids
    #   <p>A list of VPC security groups that the DB cluster will belong to.</p>
    #
    # @option params [Integer] :port
    #   <p>The port number on which the DB cluster accepts connections.</p>
    #            <p>Constraints: Value must be <code>1150-65535</code>
    #            </p>
    #            <p>Default: The same port as the original DB cluster.</p>
    #
    # @option params [String] :master_user_password
    #   <p>Not supported by Neptune.</p>
    #
    # @option params [String] :option_group_name
    #   <p>
    #               <i>Not supported by Neptune.</i>
    #            </p>
    #
    # @option params [String] :preferred_backup_window
    #   <p>The daily time range during which automated backups are created if automated backups are
    #         enabled, using the <code>BackupRetentionPeriod</code> parameter.</p>
    #            <p>The default is a 30-minute window selected at random from an 8-hour block of time for each
    #         Amazon Region.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be in the format <code>hh24:mi-hh24:mi</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Must be in Universal Coordinated Time (UTC).</p>
    #               </li>
    #               <li>
    #                  <p>Must not conflict with the preferred maintenance window.</p>
    #               </li>
    #               <li>
    #                  <p>Must be at least 30 minutes.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :preferred_maintenance_window
    #   <p>The weekly time range during which system maintenance can occur, in Universal Coordinated
    #         Time (UTC).</p>
    #            <p>Format: <code>ddd:hh24:mi-ddd:hh24:mi</code>
    #            </p>
    #            <p>The default is a 30-minute window selected at random from an 8-hour block of time for each
    #         Amazon Region, occurring on a random day of the
    #         week.</p>
    #            <p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.</p>
    #            <p>Constraints: Minimum 30-minute window.</p>
    #
    # @option params [Boolean] :enable_iam_database_authentication
    #   <p>True to enable mapping of Amazon Identity and Access Management (IAM) accounts to database
    #         accounts, and otherwise false.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    #
    # @option params [CloudwatchLogsExportConfiguration] :cloudwatch_logs_export_configuration
    #   <p>The configuration setting for the log types to be enabled for export to CloudWatch Logs
    #         for a specific DB cluster.</p>
    #
    # @option params [String] :engine_version
    #   <p>The version number of the database engine to which you want to upgrade. Changing this
    #         parameter results in an outage. The change is applied during the next maintenance window
    #         unless the <code>ApplyImmediately</code> parameter is set to true.</p>
    #            <p>For a list of valid engine versions, see <a href="https://docs.aws.amazon.com/neptune/latest/userguide/engine-releases.html">Engine Releases for Amazon
    #         Neptune</a>, or call <a href="https://docs.aws.amazon.com/neptune/latest/userguide/api-other-apis.html#DescribeDBEngineVersions">DescribeDBEngineVersions</a>.</p>
    #
    # @option params [Boolean] :allow_major_version_upgrade
    #   <p>A value that indicates whether upgrades between different major versions are allowed.</p>
    #            <p>Constraints: You must set the allow-major-version-upgrade flag when providing an
    #         <code>EngineVersion</code> parameter that uses a different major version than the DB cluster's current
    #         version.</p>
    #
    # @option params [String] :db_instance_parameter_group_name
    #   <p>The name of the DB parameter group to apply to all instances of the DB cluster. </p>
    #            <note>
    #               <p>When you apply a parameter group using <code>DBInstanceParameterGroupName</code>,
    #         parameter changes aren't applied during the next maintenance window but instead are
    #         applied immediately.</p>
    #            </note>
    #            <p>Default: The existing name setting</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>The DB parameter group must be in the same DB parameter group family as
    #           the target DB cluster version.</p>
    #               </li>
    #               <li>
    #                  <p>The <code>DBInstanceParameterGroupName</code> parameter is only valid in combination with
    #           the <code>AllowMajorVersionUpgrade</code> parameter.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Boolean] :deletion_protection
    #   <p>A value that indicates whether the DB cluster has deletion protection enabled.
    #         The database can't be deleted when deletion protection is enabled. By default,
    #         deletion protection is disabled.</p>
    #
    # @option params [Boolean] :copy_tags_to_snapshot
    #   <p>
    #               <i>If set to <code>true</code>, tags are copied to any snapshot of
    #         the DB cluster that is created.</i>
    #            </p>
    #
    # @return [Types::ModifyDBClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_db_cluster(
    #     db_cluster_identifier: 'DBClusterIdentifier', # required
    #     new_db_cluster_identifier: 'NewDBClusterIdentifier',
    #     apply_immediately: false,
    #     backup_retention_period: 1,
    #     db_cluster_parameter_group_name: 'DBClusterParameterGroupName',
    #     vpc_security_group_ids: [
    #       'member'
    #     ],
    #     port: 1,
    #     master_user_password: 'MasterUserPassword',
    #     option_group_name: 'OptionGroupName',
    #     preferred_backup_window: 'PreferredBackupWindow',
    #     preferred_maintenance_window: 'PreferredMaintenanceWindow',
    #     enable_iam_database_authentication: false,
    #     cloudwatch_logs_export_configuration: {
    #       enable_log_types: [
    #         'member'
    #       ],
    #     },
    #     engine_version: 'EngineVersion',
    #     allow_major_version_upgrade: false,
    #     db_instance_parameter_group_name: 'DBInstanceParameterGroupName',
    #     deletion_protection: false,
    #     copy_tags_to_snapshot: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifyDBClusterOutput
    #   resp.data.db_cluster #=> Types::DBCluster
    #   resp.data.db_cluster.allocated_storage #=> Integer
    #   resp.data.db_cluster.availability_zones #=> Array<String>
    #   resp.data.db_cluster.availability_zones[0] #=> String
    #   resp.data.db_cluster.backup_retention_period #=> Integer
    #   resp.data.db_cluster.character_set_name #=> String
    #   resp.data.db_cluster.database_name #=> String
    #   resp.data.db_cluster.db_cluster_identifier #=> String
    #   resp.data.db_cluster.db_cluster_parameter_group #=> String
    #   resp.data.db_cluster.db_subnet_group #=> String
    #   resp.data.db_cluster.status #=> String
    #   resp.data.db_cluster.percent_progress #=> String
    #   resp.data.db_cluster.earliest_restorable_time #=> Time
    #   resp.data.db_cluster.endpoint #=> String
    #   resp.data.db_cluster.reader_endpoint #=> String
    #   resp.data.db_cluster.multi_az #=> Boolean
    #   resp.data.db_cluster.engine #=> String
    #   resp.data.db_cluster.engine_version #=> String
    #   resp.data.db_cluster.latest_restorable_time #=> Time
    #   resp.data.db_cluster.port #=> Integer
    #   resp.data.db_cluster.master_username #=> String
    #   resp.data.db_cluster.db_cluster_option_group_memberships #=> Array<DBClusterOptionGroupStatus>
    #   resp.data.db_cluster.db_cluster_option_group_memberships[0] #=> Types::DBClusterOptionGroupStatus
    #   resp.data.db_cluster.db_cluster_option_group_memberships[0].db_cluster_option_group_name #=> String
    #   resp.data.db_cluster.db_cluster_option_group_memberships[0].status #=> String
    #   resp.data.db_cluster.preferred_backup_window #=> String
    #   resp.data.db_cluster.preferred_maintenance_window #=> String
    #   resp.data.db_cluster.replication_source_identifier #=> String
    #   resp.data.db_cluster.read_replica_identifiers #=> Array<String>
    #   resp.data.db_cluster.read_replica_identifiers[0] #=> String
    #   resp.data.db_cluster.db_cluster_members #=> Array<DBClusterMember>
    #   resp.data.db_cluster.db_cluster_members[0] #=> Types::DBClusterMember
    #   resp.data.db_cluster.db_cluster_members[0].db_instance_identifier #=> String
    #   resp.data.db_cluster.db_cluster_members[0].is_cluster_writer #=> Boolean
    #   resp.data.db_cluster.db_cluster_members[0].db_cluster_parameter_group_status #=> String
    #   resp.data.db_cluster.db_cluster_members[0].promotion_tier #=> Integer
    #   resp.data.db_cluster.vpc_security_groups #=> Array<VpcSecurityGroupMembership>
    #   resp.data.db_cluster.vpc_security_groups[0] #=> Types::VpcSecurityGroupMembership
    #   resp.data.db_cluster.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.data.db_cluster.vpc_security_groups[0].status #=> String
    #   resp.data.db_cluster.hosted_zone_id #=> String
    #   resp.data.db_cluster.storage_encrypted #=> Boolean
    #   resp.data.db_cluster.kms_key_id #=> String
    #   resp.data.db_cluster.db_cluster_resource_id #=> String
    #   resp.data.db_cluster.db_cluster_arn #=> String
    #   resp.data.db_cluster.associated_roles #=> Array<DBClusterRole>
    #   resp.data.db_cluster.associated_roles[0] #=> Types::DBClusterRole
    #   resp.data.db_cluster.associated_roles[0].role_arn #=> String
    #   resp.data.db_cluster.associated_roles[0].status #=> String
    #   resp.data.db_cluster.associated_roles[0].feature_name #=> String
    #   resp.data.db_cluster.iam_database_authentication_enabled #=> Boolean
    #   resp.data.db_cluster.clone_group_id #=> String
    #   resp.data.db_cluster.cluster_create_time #=> Time
    #   resp.data.db_cluster.copy_tags_to_snapshot #=> Boolean
    #   resp.data.db_cluster.enabled_cloudwatch_logs_exports #=> Array<String>
    #   resp.data.db_cluster.enabled_cloudwatch_logs_exports[0] #=> String
    #   resp.data.db_cluster.deletion_protection #=> Boolean
    #   resp.data.db_cluster.cross_account_clone #=> Boolean
    #   resp.data.db_cluster.automatic_restart_time #=> Time
    #
    def modify_db_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyDBClusterInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifyDBClusterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifyDBCluster
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DBClusterNotFoundFault, Errors::DBSubnetGroupNotFoundFault, Errors::InvalidDBSubnetGroupStateFault, Errors::DBClusterAlreadyExistsFault, Errors::StorageQuotaExceededFault, Errors::InvalidDBClusterStateFault, Errors::InvalidDBSecurityGroupStateFault, Errors::InvalidVPCNetworkStateFault, Errors::InvalidDBInstanceStateFault, Errors::DBClusterParameterGroupNotFoundFault, Errors::InvalidSubnet]),
        data_parser: Parsers::ModifyDBCluster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifyDBCluster,
        stubs: @stubs,
        params_class: Params::ModifyDBClusterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_db_cluster
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies the properties of an endpoint in an Amazon Neptune DB cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::ModifyDBClusterEndpointInput}.
    #
    # @option params [String] :db_cluster_endpoint_identifier
    #   <p>The identifier of the endpoint to modify. This parameter is stored as a lowercase string.</p>
    #
    # @option params [String] :endpoint_type
    #   <p>The type of the endpoint. One of: <code>READER</code>, <code>WRITER</code>, <code>ANY</code>.</p>
    #
    # @option params [Array<String>] :static_members
    #   <p>List of DB instance identifiers that are part of the custom endpoint group.</p>
    #
    # @option params [Array<String>] :excluded_members
    #   <p>List of DB instance identifiers that aren't part of the custom endpoint group.
    #         All other eligible instances are reachable through the custom endpoint.
    #         Only relevant if the list of static members is empty.</p>
    #
    # @return [Types::ModifyDBClusterEndpointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_db_cluster_endpoint(
    #     db_cluster_endpoint_identifier: 'DBClusterEndpointIdentifier', # required
    #     endpoint_type: 'EndpointType',
    #     static_members: [
    #       'member'
    #     ],
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifyDBClusterEndpointOutput
    #   resp.data.db_cluster_endpoint_identifier #=> String
    #   resp.data.db_cluster_identifier #=> String
    #   resp.data.db_cluster_endpoint_resource_identifier #=> String
    #   resp.data.endpoint #=> String
    #   resp.data.status #=> String
    #   resp.data.endpoint_type #=> String
    #   resp.data.custom_endpoint_type #=> String
    #   resp.data.static_members #=> Array<String>
    #   resp.data.static_members[0] #=> String
    #   resp.data.excluded_members #=> Array<String>
    #   resp.data.db_cluster_endpoint_arn #=> String
    #
    def modify_db_cluster_endpoint(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyDBClusterEndpointInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifyDBClusterEndpointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifyDBClusterEndpoint
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidDBClusterEndpointStateFault, Errors::DBInstanceNotFoundFault, Errors::DBClusterEndpointNotFoundFault, Errors::InvalidDBClusterStateFault, Errors::InvalidDBInstanceStateFault]),
        data_parser: Parsers::ModifyDBClusterEndpoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifyDBClusterEndpoint,
        stubs: @stubs,
        params_class: Params::ModifyDBClusterEndpointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_db_cluster_endpoint
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Modifies the parameters of a DB cluster parameter group. To modify more than one
    #       parameter, submit a list of the following: <code>ParameterName</code>,
    #       <code>ParameterValue</code>, and <code>ApplyMethod</code>. A maximum of 20 parameters can be
    #       modified in a single request.</p>
    #
    #          <note>
    #             <p>Changes to dynamic parameters are applied immediately. Changes to static parameters
    #         require a reboot without failover to the DB cluster associated with the parameter group
    #         before the change can take effect.</p>
    #          </note>
    #          <important>
    #             <p>After you create a DB cluster parameter group, you should wait at least 5 minutes before
    #         creating your first DB cluster that uses that DB cluster parameter group as the default
    #         parameter group. This allows Amazon Neptune to fully complete the create action before the
    #         parameter group is used as the default for a new DB cluster. This is especially important
    #         for parameters that are critical when creating the default database for a DB cluster, such
    #         as the character set for the default database defined by the
    #         <code>character_set_database</code> parameter. You can use the <i>Parameter
    #         Groups</i> option of the Amazon Neptune console or the <a>DescribeDBClusterParameters</a> command to verify that your DB cluster parameter
    #         group has been created or modified.</p>
    #          </important>
    #
    # @param [Hash] params
    #   See {Types::ModifyDBClusterParameterGroupInput}.
    #
    # @option params [String] :db_cluster_parameter_group_name
    #   <p>The name of the DB cluster parameter group to modify.</p>
    #
    # @option params [Array<Parameter>] :parameters
    #   <p>A list of parameters in the DB cluster parameter group to modify.</p>
    #
    # @return [Types::ModifyDBClusterParameterGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_db_cluster_parameter_group(
    #     db_cluster_parameter_group_name: 'DBClusterParameterGroupName', # required
    #     parameters: [
    #       {
    #         parameter_name: 'ParameterName',
    #         parameter_value: 'ParameterValue',
    #         description: 'Description',
    #         source: 'Source',
    #         apply_type: 'ApplyType',
    #         data_type: 'DataType',
    #         allowed_values: 'AllowedValues',
    #         is_modifiable: false,
    #         minimum_engine_version: 'MinimumEngineVersion',
    #         apply_method: 'immediate' # accepts ["immediate", "pending-reboot"]
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifyDBClusterParameterGroupOutput
    #   resp.data.db_cluster_parameter_group_name #=> String
    #
    def modify_db_cluster_parameter_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyDBClusterParameterGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifyDBClusterParameterGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifyDBClusterParameterGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidDBParameterGroupStateFault, Errors::DBParameterGroupNotFoundFault]),
        data_parser: Parsers::ModifyDBClusterParameterGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifyDBClusterParameterGroup,
        stubs: @stubs,
        params_class: Params::ModifyDBClusterParameterGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_db_cluster_parameter_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds an attribute and values to, or removes an attribute and values from, a manual DB
    #       cluster snapshot.</p>
    #          <p>To share a manual DB cluster snapshot with other Amazon accounts, specify
    #       <code>restore</code> as the <code>AttributeName</code> and use the <code>ValuesToAdd</code>
    #       parameter to add a list of IDs of the Amazon accounts that are authorized to restore the manual
    #       DB cluster snapshot. Use the value <code>all</code> to make the manual DB cluster snapshot
    #       public, which means that it can be copied or restored by all Amazon accounts. Do not add the
    #       <code>all</code> value for any manual DB cluster snapshots that contain private information
    #       that you don't want available to all Amazon accounts. If a manual DB cluster snapshot is
    #       encrypted, it can be shared, but only by specifying a list of authorized Amazon account IDs for
    #       the <code>ValuesToAdd</code> parameter. You can't use <code>all</code> as a value for that
    #       parameter in this case.</p>
    #          <p>To view which Amazon accounts have access to copy or restore a manual DB cluster snapshot, or
    #       whether a manual DB cluster snapshot public or private, use the <a>DescribeDBClusterSnapshotAttributes</a> API action.</p>
    #
    # @param [Hash] params
    #   See {Types::ModifyDBClusterSnapshotAttributeInput}.
    #
    # @option params [String] :db_cluster_snapshot_identifier
    #   <p>The identifier for the DB cluster snapshot to modify the attributes for.</p>
    #
    # @option params [String] :attribute_name
    #   <p>The name of the DB cluster snapshot attribute to modify.</p>
    #            <p>To manage authorization for other Amazon accounts to copy or restore a manual DB cluster
    #         snapshot, set this value to <code>restore</code>.</p>
    #
    # @option params [Array<String>] :values_to_add
    #   <p>A list of DB cluster snapshot attributes to add to the attribute specified by
    #         <code>AttributeName</code>.</p>
    #            <p>To authorize other Amazon accounts to copy or restore a manual DB cluster snapshot, set this
    #         list to include one or more Amazon account IDs, or <code>all</code> to make the manual DB cluster
    #         snapshot restorable by any Amazon account. Do not add the <code>all</code> value for any manual
    #         DB cluster snapshots that contain private information that you don't want available to all Amazon
    #         accounts.</p>
    #
    # @option params [Array<String>] :values_to_remove
    #   <p>A list of DB cluster snapshot attributes to remove from the attribute specified by
    #         <code>AttributeName</code>.</p>
    #            <p>To remove authorization for other Amazon accounts to copy or restore a manual DB cluster
    #         snapshot, set this list to include one or more Amazon account identifiers, or <code>all</code> to
    #         remove authorization for any Amazon account to copy or restore the DB cluster snapshot. If you
    #         specify <code>all</code>, an Amazon account whose account ID is explicitly added to the
    #         <code>restore</code> attribute can still copy or restore a manual DB cluster snapshot.</p>
    #
    # @return [Types::ModifyDBClusterSnapshotAttributeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_db_cluster_snapshot_attribute(
    #     db_cluster_snapshot_identifier: 'DBClusterSnapshotIdentifier', # required
    #     attribute_name: 'AttributeName', # required
    #     values_to_add: [
    #       'member'
    #     ],
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifyDBClusterSnapshotAttributeOutput
    #   resp.data.db_cluster_snapshot_attributes_result #=> Types::DBClusterSnapshotAttributesResult
    #   resp.data.db_cluster_snapshot_attributes_result.db_cluster_snapshot_identifier #=> String
    #   resp.data.db_cluster_snapshot_attributes_result.db_cluster_snapshot_attributes #=> Array<DBClusterSnapshotAttribute>
    #   resp.data.db_cluster_snapshot_attributes_result.db_cluster_snapshot_attributes[0] #=> Types::DBClusterSnapshotAttribute
    #   resp.data.db_cluster_snapshot_attributes_result.db_cluster_snapshot_attributes[0].attribute_name #=> String
    #   resp.data.db_cluster_snapshot_attributes_result.db_cluster_snapshot_attributes[0].attribute_values #=> Array<String>
    #   resp.data.db_cluster_snapshot_attributes_result.db_cluster_snapshot_attributes[0].attribute_values[0] #=> String
    #
    def modify_db_cluster_snapshot_attribute(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyDBClusterSnapshotAttributeInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifyDBClusterSnapshotAttributeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifyDBClusterSnapshotAttribute
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidDBClusterSnapshotStateFault, Errors::SharedSnapshotQuotaExceededFault, Errors::DBClusterSnapshotNotFoundFault]),
        data_parser: Parsers::ModifyDBClusterSnapshotAttribute
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifyDBClusterSnapshotAttribute,
        stubs: @stubs,
        params_class: Params::ModifyDBClusterSnapshotAttributeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_db_cluster_snapshot_attribute
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies settings for a DB instance. You can change one or more database configuration
    #       parameters by specifying these parameters and the new values in the request. To learn what
    #       modifications you can make to your DB instance, call <a>DescribeValidDBInstanceModifications</a> before you call <a>ModifyDBInstance</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::ModifyDBInstanceInput}.
    #
    # @option params [String] :db_instance_identifier
    #   <p>The DB instance identifier. This value is stored as a lowercase string.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match the identifier of an existing DBInstance.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Integer] :allocated_storage
    #   <p>Not supported by Neptune.</p>
    #
    # @option params [String] :db_instance_class
    #   <p>The new compute and memory capacity of the DB instance, for example,
    #         <code>db.m4.large</code>. Not all DB instance classes are available in all Amazon
    #         Regions.</p>
    #            <p>If you modify the DB instance class, an outage occurs during the change. The change is
    #         applied during the next maintenance window, unless <code>ApplyImmediately</code> is specified
    #         as <code>true</code> for this request.</p>
    #            <p>Default: Uses existing setting</p>
    #
    # @option params [String] :db_subnet_group_name
    #   <p>The new DB subnet group for the DB instance. You can use this parameter to move your DB
    #         instance to a different VPC.</p>
    #            <p>Changing the subnet group causes an outage during the change. The change is applied during
    #         the next maintenance window, unless you specify <code>true</code> for the
    #         <code>ApplyImmediately</code> parameter.</p>
    #            <p>Constraints: If supplied, must match the name of an existing DBSubnetGroup.</p>
    #            <p>Example: <code>mySubnetGroup</code>
    #            </p>
    #
    # @option params [Array<String>] :db_security_groups
    #   <p>A list of DB security groups to authorize on this DB instance. Changing this setting
    #         doesn't result in an outage and the change is asynchronously applied as soon as
    #         possible.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If supplied, must match existing DBSecurityGroups.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Array<String>] :vpc_security_group_ids
    #   <p>A list of EC2 VPC security groups to authorize on this DB instance. This change is
    #         asynchronously applied as soon as possible.</p>
    #            <p>Not applicable. The associated list of EC2 VPC security groups is managed by the DB
    #         cluster. For more information, see <a>ModifyDBCluster</a>.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If supplied, must match existing VpcSecurityGroupIds.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Boolean] :apply_immediately
    #   <p>Specifies whether the modifications in this request and any pending modifications are
    #         asynchronously applied as soon as possible, regardless of the
    #         <code>PreferredMaintenanceWindow</code> setting for the DB instance.</p>
    #            <p> If this parameter is set to <code>false</code>, changes to the DB instance are applied
    #         during the next maintenance window. Some parameter changes can cause an outage and are applied
    #         on the next call to <a>RebootDBInstance</a>, or the next
    #         failure reboot.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    #
    # @option params [String] :master_user_password
    #   <p>Not supported by Neptune.</p>
    #
    # @option params [String] :db_parameter_group_name
    #   <p>The name of the DB parameter group to apply to the DB instance. Changing this setting
    #         doesn't result in an outage. The parameter group name itself is changed immediately, but the
    #         actual parameter changes are not applied until you reboot the instance without failover. The
    #         db instance will NOT be rebooted automatically and the parameter changes will NOT be applied
    #         during the next maintenance window.</p>
    #            <p>Default: Uses existing setting</p>
    #            <p>Constraints: The DB parameter group must be in the same DB parameter group family as this
    #         DB instance.</p>
    #
    # @option params [Integer] :backup_retention_period
    #   <p>Not applicable. The retention period for automated backups is managed by the DB cluster.
    #         For more information, see <a>ModifyDBCluster</a>.</p>
    #            <p>Default: Uses existing setting</p>
    #
    # @option params [String] :preferred_backup_window
    #   <p> The daily time range during which automated backups are created if automated backups are
    #         enabled.</p>
    #            <p>Not applicable. The daily time range for creating automated backups is managed by the DB
    #         cluster. For more information, see <a>ModifyDBCluster</a>.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be in the format hh24:mi-hh24:mi</p>
    #               </li>
    #               <li>
    #                  <p>Must be in Universal Time Coordinated (UTC)</p>
    #               </li>
    #               <li>
    #                  <p>Must not conflict with the preferred maintenance window</p>
    #               </li>
    #               <li>
    #                  <p>Must be at least 30 minutes</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :preferred_maintenance_window
    #   <p>The weekly time range (in UTC) during which system maintenance can occur, which might
    #         result in an outage. Changing this parameter doesn't result in an outage, except in the
    #         following situation, and the change is asynchronously applied as soon as possible. If there
    #         are pending actions that cause a reboot, and the maintenance window is changed to include the
    #         current time, then changing this parameter will cause a reboot of the DB instance. If moving
    #         this window to the current time, there must be at least 30 minutes between the current time
    #         and end of the window to ensure pending changes are applied.</p>
    #            <p>Default: Uses existing setting</p>
    #            <p>Format: ddd:hh24:mi-ddd:hh24:mi</p>
    #            <p>Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun</p>
    #            <p>Constraints: Must be at least 30 minutes</p>
    #
    # @option params [Boolean] :multi_az
    #   <p>Specifies if the DB instance is a Multi-AZ deployment. Changing this parameter doesn't
    #         result in an outage and the change is applied during the next maintenance window unless the
    #         <code>ApplyImmediately</code> parameter is set to <code>true</code> for this request.</p>
    #
    # @option params [String] :engine_version
    #   <p>The version number of the database engine to upgrade to. Currently, setting this
    #         parameter has no effect. To upgrade your database engine to the most recent release,
    #         use the <a>ApplyPendingMaintenanceAction</a> API.</p>
    #
    # @option params [Boolean] :allow_major_version_upgrade
    #   <p>Indicates that major version upgrades are allowed. Changing this parameter doesn't result
    #         in an outage and the change is asynchronously applied as soon as possible.</p>
    #
    # @option params [Boolean] :auto_minor_version_upgrade
    #   <p> Indicates that minor version upgrades are applied automatically to the DB instance during
    #         the maintenance window. Changing this parameter doesn't result in an outage except in the
    #         following case and the change is asynchronously applied as soon as possible. An outage will
    #         result if this parameter is set to <code>true</code> during the maintenance window, and a
    #         newer minor version is available, and Neptune has enabled auto patching for that engine
    #         version.</p>
    #
    # @option params [String] :license_model
    #   <p>Not supported by Neptune.</p>
    #
    # @option params [Integer] :iops
    #   <p>The new Provisioned IOPS (I/O operations per second) value for the instance.</p>
    #            <p>Changing this setting doesn't result in an outage and the change is applied during the
    #         next maintenance window unless the <code>ApplyImmediately</code> parameter is set to
    #         <code>true</code> for this request.</p>
    #            <p>Default: Uses existing setting</p>
    #
    # @option params [String] :option_group_name
    #   <p>
    #               <i>(Not supported by Neptune)</i>
    #            </p>
    #
    # @option params [String] :new_db_instance_identifier
    #   <p> The new DB instance identifier for the DB instance when renaming a DB instance. When you
    #         change the DB instance identifier, an instance reboot will occur immediately if you set
    #         <code>Apply Immediately</code> to true, or will occur during the next maintenance window if
    #         <code>Apply Immediately</code> to false. This value is stored as a lowercase string.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>The first character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>mydbinstance</code>
    #            </p>
    #
    # @option params [String] :storage_type
    #   <p>Not supported.</p>
    #
    # @option params [String] :tde_credential_arn
    #   <p>The ARN from the key store with which to associate the instance for TDE encryption.</p>
    #
    # @option params [String] :tde_credential_password
    #   <p>The password for the given ARN from the key store in order to access the device.</p>
    #
    # @option params [String] :ca_certificate_identifier
    #   <p>Indicates the certificate that needs to be associated with the instance.</p>
    #
    # @option params [String] :domain
    #   <p>Not supported.</p>
    #
    # @option params [Boolean] :copy_tags_to_snapshot
    #   <p>True to copy all tags from the DB instance to snapshots of the DB instance, and otherwise
    #         false. The default is false.</p>
    #
    # @option params [Integer] :monitoring_interval
    #   <p>The interval, in seconds, between points when Enhanced Monitoring metrics are collected
    #         for the DB instance. To disable collecting Enhanced Monitoring metrics, specify 0. The default
    #         is 0.</p>
    #            <p>If <code>MonitoringRoleArn</code> is specified, then you must also set
    #         <code>MonitoringInterval</code> to a value other than 0.</p>
    #            <p>Valid Values: <code>0, 1, 5, 10, 15, 30, 60</code>
    #            </p>
    #
    # @option params [Integer] :db_port_number
    #   <p>The port number on which the database accepts connections.</p>
    #            <p>The value of the <code>DBPortNumber</code> parameter must not match any of the port values
    #         specified for options in the option group for the DB instance.</p>
    #            <p>Your database will restart when you change the <code>DBPortNumber</code> value regardless
    #         of the value of the <code>ApplyImmediately</code> parameter.</p>
    #            <p> Default: <code>8182</code>
    #            </p>
    #
    # @option params [Boolean] :publicly_accessible
    #   <p>This flag should no longer be used.</p>
    #
    # @option params [String] :monitoring_role_arn
    #   <p>The ARN for the IAM role that permits Neptune to send enhanced monitoring metrics to
    #         Amazon CloudWatch Logs. For example, <code>arn:aws:iam:123456789012:role/emaccess</code>.</p>
    #            <p>If <code>MonitoringInterval</code> is set to a value other than 0, then you must supply a
    #         <code>MonitoringRoleArn</code> value.</p>
    #
    # @option params [String] :domain_iam_role_name
    #   <p>Not supported</p>
    #
    # @option params [Integer] :promotion_tier
    #   <p>A value that specifies the order in which a Read Replica is promoted to the primary
    #         instance after a failure of the existing primary instance.</p>
    #            <p>Default: 1</p>
    #            <p>Valid Values: 0 - 15</p>
    #
    # @option params [Boolean] :enable_iam_database_authentication
    #   <p>True to enable mapping of Amazon Identity and Access Management (IAM) accounts to database
    #         accounts, and otherwise false.</p>
    #            <p>You can enable IAM database authentication for the following database engines</p>
    #            <p>Not applicable. Mapping Amazon IAM accounts to database accounts is managed by the DB
    #         cluster. For more information, see <a>ModifyDBCluster</a>.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    #
    # @option params [Boolean] :enable_performance_insights
    #   <p>
    #               <i>(Not supported by Neptune)</i>
    #            </p>
    #
    # @option params [String] :performance_insights_kms_key_id
    #   <p>
    #               <i>(Not supported by Neptune)</i>
    #            </p>
    #
    # @option params [CloudwatchLogsExportConfiguration] :cloudwatch_logs_export_configuration
    #   <p>The configuration setting for the log types to be enabled for export to CloudWatch Logs
    #         for a specific DB instance or DB cluster.</p>
    #
    # @option params [Boolean] :deletion_protection
    #   <p>A value that indicates whether the DB instance has deletion protection enabled.
    #         The database can't be deleted when deletion protection is enabled. By default,
    #         deletion protection is disabled.  See <a href="https://docs.aws.amazon.com/neptune/latest/userguide/manage-console-instances-delete.html">Deleting
    #         a DB Instance</a>.</p>
    #
    # @return [Types::ModifyDBInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_db_instance(
    #     db_instance_identifier: 'DBInstanceIdentifier', # required
    #     allocated_storage: 1,
    #     db_instance_class: 'DBInstanceClass',
    #     db_subnet_group_name: 'DBSubnetGroupName',
    #     db_security_groups: [
    #       'member'
    #     ],
    #     vpc_security_group_ids: [
    #       'member'
    #     ],
    #     apply_immediately: false,
    #     master_user_password: 'MasterUserPassword',
    #     db_parameter_group_name: 'DBParameterGroupName',
    #     backup_retention_period: 1,
    #     preferred_backup_window: 'PreferredBackupWindow',
    #     preferred_maintenance_window: 'PreferredMaintenanceWindow',
    #     multi_az: false,
    #     engine_version: 'EngineVersion',
    #     allow_major_version_upgrade: false,
    #     auto_minor_version_upgrade: false,
    #     license_model: 'LicenseModel',
    #     iops: 1,
    #     option_group_name: 'OptionGroupName',
    #     new_db_instance_identifier: 'NewDBInstanceIdentifier',
    #     storage_type: 'StorageType',
    #     tde_credential_arn: 'TdeCredentialArn',
    #     tde_credential_password: 'TdeCredentialPassword',
    #     ca_certificate_identifier: 'CACertificateIdentifier',
    #     domain: 'Domain',
    #     copy_tags_to_snapshot: false,
    #     monitoring_interval: 1,
    #     db_port_number: 1,
    #     publicly_accessible: false,
    #     monitoring_role_arn: 'MonitoringRoleArn',
    #     domain_iam_role_name: 'DomainIAMRoleName',
    #     promotion_tier: 1,
    #     enable_iam_database_authentication: false,
    #     enable_performance_insights: false,
    #     performance_insights_kms_key_id: 'PerformanceInsightsKMSKeyId',
    #     cloudwatch_logs_export_configuration: {
    #       enable_log_types: [
    #         'member'
    #       ],
    #     },
    #     deletion_protection: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifyDBInstanceOutput
    #   resp.data.db_instance #=> Types::DBInstance
    #   resp.data.db_instance.db_instance_identifier #=> String
    #   resp.data.db_instance.db_instance_class #=> String
    #   resp.data.db_instance.engine #=> String
    #   resp.data.db_instance.db_instance_status #=> String
    #   resp.data.db_instance.master_username #=> String
    #   resp.data.db_instance.db_name #=> String
    #   resp.data.db_instance.endpoint #=> Types::Endpoint
    #   resp.data.db_instance.endpoint.address #=> String
    #   resp.data.db_instance.endpoint.port #=> Integer
    #   resp.data.db_instance.endpoint.hosted_zone_id #=> String
    #   resp.data.db_instance.allocated_storage #=> Integer
    #   resp.data.db_instance.instance_create_time #=> Time
    #   resp.data.db_instance.preferred_backup_window #=> String
    #   resp.data.db_instance.backup_retention_period #=> Integer
    #   resp.data.db_instance.db_security_groups #=> Array<DBSecurityGroupMembership>
    #   resp.data.db_instance.db_security_groups[0] #=> Types::DBSecurityGroupMembership
    #   resp.data.db_instance.db_security_groups[0].db_security_group_name #=> String
    #   resp.data.db_instance.db_security_groups[0].status #=> String
    #   resp.data.db_instance.vpc_security_groups #=> Array<VpcSecurityGroupMembership>
    #   resp.data.db_instance.vpc_security_groups[0] #=> Types::VpcSecurityGroupMembership
    #   resp.data.db_instance.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.data.db_instance.vpc_security_groups[0].status #=> String
    #   resp.data.db_instance.db_parameter_groups #=> Array<DBParameterGroupStatus>
    #   resp.data.db_instance.db_parameter_groups[0] #=> Types::DBParameterGroupStatus
    #   resp.data.db_instance.db_parameter_groups[0].db_parameter_group_name #=> String
    #   resp.data.db_instance.db_parameter_groups[0].parameter_apply_status #=> String
    #   resp.data.db_instance.availability_zone #=> String
    #   resp.data.db_instance.db_subnet_group #=> Types::DBSubnetGroup
    #   resp.data.db_instance.db_subnet_group.db_subnet_group_name #=> String
    #   resp.data.db_instance.db_subnet_group.db_subnet_group_description #=> String
    #   resp.data.db_instance.db_subnet_group.vpc_id #=> String
    #   resp.data.db_instance.db_subnet_group.subnet_group_status #=> String
    #   resp.data.db_instance.db_subnet_group.subnets #=> Array<Subnet>
    #   resp.data.db_instance.db_subnet_group.subnets[0] #=> Types::Subnet
    #   resp.data.db_instance.db_subnet_group.subnets[0].subnet_identifier #=> String
    #   resp.data.db_instance.db_subnet_group.subnets[0].subnet_availability_zone #=> Types::AvailabilityZone
    #   resp.data.db_instance.db_subnet_group.subnets[0].subnet_availability_zone.name #=> String
    #   resp.data.db_instance.db_subnet_group.subnets[0].subnet_status #=> String
    #   resp.data.db_instance.db_subnet_group.db_subnet_group_arn #=> String
    #   resp.data.db_instance.preferred_maintenance_window #=> String
    #   resp.data.db_instance.pending_modified_values #=> Types::PendingModifiedValues
    #   resp.data.db_instance.pending_modified_values.db_instance_class #=> String
    #   resp.data.db_instance.pending_modified_values.allocated_storage #=> Integer
    #   resp.data.db_instance.pending_modified_values.master_user_password #=> String
    #   resp.data.db_instance.pending_modified_values.port #=> Integer
    #   resp.data.db_instance.pending_modified_values.backup_retention_period #=> Integer
    #   resp.data.db_instance.pending_modified_values.multi_az #=> Boolean
    #   resp.data.db_instance.pending_modified_values.engine_version #=> String
    #   resp.data.db_instance.pending_modified_values.license_model #=> String
    #   resp.data.db_instance.pending_modified_values.iops #=> Integer
    #   resp.data.db_instance.pending_modified_values.db_instance_identifier #=> String
    #   resp.data.db_instance.pending_modified_values.storage_type #=> String
    #   resp.data.db_instance.pending_modified_values.ca_certificate_identifier #=> String
    #   resp.data.db_instance.pending_modified_values.db_subnet_group_name #=> String
    #   resp.data.db_instance.pending_modified_values.pending_cloudwatch_logs_exports #=> Types::PendingCloudwatchLogsExports
    #   resp.data.db_instance.pending_modified_values.pending_cloudwatch_logs_exports.log_types_to_enable #=> Array<String>
    #   resp.data.db_instance.pending_modified_values.pending_cloudwatch_logs_exports.log_types_to_enable[0] #=> String
    #   resp.data.db_instance.pending_modified_values.pending_cloudwatch_logs_exports.log_types_to_disable #=> Array<String>
    #   resp.data.db_instance.latest_restorable_time #=> Time
    #   resp.data.db_instance.multi_az #=> Boolean
    #   resp.data.db_instance.engine_version #=> String
    #   resp.data.db_instance.auto_minor_version_upgrade #=> Boolean
    #   resp.data.db_instance.read_replica_source_db_instance_identifier #=> String
    #   resp.data.db_instance.read_replica_db_instance_identifiers #=> Array<String>
    #   resp.data.db_instance.read_replica_db_instance_identifiers[0] #=> String
    #   resp.data.db_instance.read_replica_db_cluster_identifiers #=> Array<String>
    #   resp.data.db_instance.read_replica_db_cluster_identifiers[0] #=> String
    #   resp.data.db_instance.license_model #=> String
    #   resp.data.db_instance.iops #=> Integer
    #   resp.data.db_instance.option_group_memberships #=> Array<OptionGroupMembership>
    #   resp.data.db_instance.option_group_memberships[0] #=> Types::OptionGroupMembership
    #   resp.data.db_instance.option_group_memberships[0].option_group_name #=> String
    #   resp.data.db_instance.option_group_memberships[0].status #=> String
    #   resp.data.db_instance.character_set_name #=> String
    #   resp.data.db_instance.secondary_availability_zone #=> String
    #   resp.data.db_instance.publicly_accessible #=> Boolean
    #   resp.data.db_instance.status_infos #=> Array<DBInstanceStatusInfo>
    #   resp.data.db_instance.status_infos[0] #=> Types::DBInstanceStatusInfo
    #   resp.data.db_instance.status_infos[0].status_type #=> String
    #   resp.data.db_instance.status_infos[0].normal #=> Boolean
    #   resp.data.db_instance.status_infos[0].status #=> String
    #   resp.data.db_instance.status_infos[0].message #=> String
    #   resp.data.db_instance.storage_type #=> String
    #   resp.data.db_instance.tde_credential_arn #=> String
    #   resp.data.db_instance.db_instance_port #=> Integer
    #   resp.data.db_instance.db_cluster_identifier #=> String
    #   resp.data.db_instance.storage_encrypted #=> Boolean
    #   resp.data.db_instance.kms_key_id #=> String
    #   resp.data.db_instance.dbi_resource_id #=> String
    #   resp.data.db_instance.ca_certificate_identifier #=> String
    #   resp.data.db_instance.domain_memberships #=> Array<DomainMembership>
    #   resp.data.db_instance.domain_memberships[0] #=> Types::DomainMembership
    #   resp.data.db_instance.domain_memberships[0].domain #=> String
    #   resp.data.db_instance.domain_memberships[0].status #=> String
    #   resp.data.db_instance.domain_memberships[0].fqdn #=> String
    #   resp.data.db_instance.domain_memberships[0].iam_role_name #=> String
    #   resp.data.db_instance.copy_tags_to_snapshot #=> Boolean
    #   resp.data.db_instance.monitoring_interval #=> Integer
    #   resp.data.db_instance.enhanced_monitoring_resource_arn #=> String
    #   resp.data.db_instance.monitoring_role_arn #=> String
    #   resp.data.db_instance.promotion_tier #=> Integer
    #   resp.data.db_instance.db_instance_arn #=> String
    #   resp.data.db_instance.timezone #=> String
    #   resp.data.db_instance.iam_database_authentication_enabled #=> Boolean
    #   resp.data.db_instance.performance_insights_enabled #=> Boolean
    #   resp.data.db_instance.performance_insights_kms_key_id #=> String
    #   resp.data.db_instance.enabled_cloudwatch_logs_exports #=> Array<String>
    #   resp.data.db_instance.deletion_protection #=> Boolean
    #
    def modify_db_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyDBInstanceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifyDBInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifyDBInstance
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::StorageQuotaExceededFault, Errors::InvalidDBSecurityGroupStateFault, Errors::InvalidVPCNetworkStateFault, Errors::OptionGroupNotFoundFault, Errors::DBInstanceAlreadyExistsFault, Errors::DBUpgradeDependencyFailureFault, Errors::InvalidDBInstanceStateFault, Errors::InsufficientDBInstanceCapacityFault, Errors::CertificateNotFoundFault, Errors::DBInstanceNotFoundFault, Errors::DomainNotFoundFault, Errors::ProvisionedIopsNotAvailableInAZFault, Errors::DBSecurityGroupNotFoundFault, Errors::StorageTypeNotSupportedFault, Errors::AuthorizationNotFoundFault, Errors::DBParameterGroupNotFoundFault]),
        data_parser: Parsers::ModifyDBInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifyDBInstance,
        stubs: @stubs,
        params_class: Params::ModifyDBInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_db_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies the parameters of a DB parameter group. To modify more than one parameter,
    #       submit a list of the following: <code>ParameterName</code>, <code>ParameterValue</code>, and
    #       <code>ApplyMethod</code>. A maximum of 20 parameters can be modified in a single request.</p>
    #          <note>
    #             <p>Changes to dynamic parameters are applied immediately. Changes to static parameters
    #         require a reboot without failover to the DB instance associated with the parameter group
    #         before the change can take effect.</p>
    #          </note>
    #          <important>
    #             <p>After you modify a DB parameter group, you should wait at least 5 minutes before
    #         creating your first DB instance that uses that DB parameter group as the default parameter
    #         group. This allows Amazon Neptune to fully complete the modify action before the parameter
    #         group is used as the default for a new DB instance. This is especially important for
    #         parameters that are critical when creating the default database for a DB instance, such as
    #         the character set for the default database defined by the
    #         <code>character_set_database</code> parameter. You can use the <i>Parameter
    #         Groups</i> option of the Amazon Neptune console or the
    #         <i>DescribeDBParameters</i> command to verify that your DB parameter group has
    #         been created or modified.</p>
    #          </important>
    #
    # @param [Hash] params
    #   See {Types::ModifyDBParameterGroupInput}.
    #
    # @option params [String] :db_parameter_group_name
    #   <p>The name of the DB parameter group.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If supplied, must match the name of an existing DBParameterGroup.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Array<Parameter>] :parameters
    #   <p>An array of parameter names, values, and the apply method for the parameter update. At
    #         least one parameter name, value, and apply method must be supplied; subsequent arguments are
    #         optional. A maximum of 20 parameters can be modified in a single request.</p>
    #            <p>Valid Values (for the application method): <code>immediate | pending-reboot</code>
    #            </p>
    #            <note>
    #               <p>You can use the immediate value with dynamic parameters only. You can use the
    #           pending-reboot value for both dynamic and static parameters, and changes are applied when
    #           you reboot the DB instance without failover.</p>
    #            </note>
    #
    # @return [Types::ModifyDBParameterGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_db_parameter_group(
    #     db_parameter_group_name: 'DBParameterGroupName', # required
    #     parameters: [
    #       {
    #         parameter_name: 'ParameterName',
    #         parameter_value: 'ParameterValue',
    #         description: 'Description',
    #         source: 'Source',
    #         apply_type: 'ApplyType',
    #         data_type: 'DataType',
    #         allowed_values: 'AllowedValues',
    #         is_modifiable: false,
    #         minimum_engine_version: 'MinimumEngineVersion',
    #         apply_method: 'immediate' # accepts ["immediate", "pending-reboot"]
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifyDBParameterGroupOutput
    #   resp.data.db_parameter_group_name #=> String
    #
    def modify_db_parameter_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyDBParameterGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifyDBParameterGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifyDBParameterGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidDBParameterGroupStateFault, Errors::DBParameterGroupNotFoundFault]),
        data_parser: Parsers::ModifyDBParameterGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifyDBParameterGroup,
        stubs: @stubs,
        params_class: Params::ModifyDBParameterGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_db_parameter_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies an existing DB subnet group. DB subnet groups must contain at least one subnet in
    #       at least two AZs in the Amazon Region.</p>
    #
    # @param [Hash] params
    #   See {Types::ModifyDBSubnetGroupInput}.
    #
    # @option params [String] :db_subnet_group_name
    #   <p>The name for the DB subnet group. This value is stored as a lowercase string. You can't
    #         modify the default subnet group.</p>
    #            <p>Constraints: Must match the name of an existing DBSubnetGroup. Must not be default.</p>
    #            <p>Example: <code>mySubnetgroup</code>
    #            </p>
    #
    # @option params [String] :db_subnet_group_description
    #   <p>The description for the DB subnet group.</p>
    #
    # @option params [Array<String>] :subnet_ids
    #   <p>The EC2 subnet IDs for the DB subnet group.</p>
    #
    # @return [Types::ModifyDBSubnetGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_db_subnet_group(
    #     db_subnet_group_name: 'DBSubnetGroupName', # required
    #     db_subnet_group_description: 'DBSubnetGroupDescription',
    #     subnet_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifyDBSubnetGroupOutput
    #   resp.data.db_subnet_group #=> Types::DBSubnetGroup
    #   resp.data.db_subnet_group.db_subnet_group_name #=> String
    #   resp.data.db_subnet_group.db_subnet_group_description #=> String
    #   resp.data.db_subnet_group.vpc_id #=> String
    #   resp.data.db_subnet_group.subnet_group_status #=> String
    #   resp.data.db_subnet_group.subnets #=> Array<Subnet>
    #   resp.data.db_subnet_group.subnets[0] #=> Types::Subnet
    #   resp.data.db_subnet_group.subnets[0].subnet_identifier #=> String
    #   resp.data.db_subnet_group.subnets[0].subnet_availability_zone #=> Types::AvailabilityZone
    #   resp.data.db_subnet_group.subnets[0].subnet_availability_zone.name #=> String
    #   resp.data.db_subnet_group.subnets[0].subnet_status #=> String
    #   resp.data.db_subnet_group.db_subnet_group_arn #=> String
    #
    def modify_db_subnet_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyDBSubnetGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifyDBSubnetGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifyDBSubnetGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DBSubnetGroupDoesNotCoverEnoughAZs, Errors::DBSubnetGroupNotFoundFault, Errors::DBSubnetQuotaExceededFault, Errors::SubnetAlreadyInUse, Errors::InvalidSubnet]),
        data_parser: Parsers::ModifyDBSubnetGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifyDBSubnetGroup,
        stubs: @stubs,
        params_class: Params::ModifyDBSubnetGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_db_subnet_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies an existing event notification subscription. Note that you can't modify the
    #       source identifiers using this call; to change source identifiers for a subscription, use the
    #       <a>AddSourceIdentifierToSubscription</a> and <a>RemoveSourceIdentifierFromSubscription</a> calls.</p>
    #          <p>You can see a list of the event categories for a given SourceType
    #       by using the <b>DescribeEventCategories</b> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ModifyEventSubscriptionInput}.
    #
    # @option params [String] :subscription_name
    #   <p>The name of the event notification subscription.</p>
    #
    # @option params [String] :sns_topic_arn
    #   <p>The Amazon Resource Name (ARN) of the SNS topic created for event notification. The ARN is
    #         created by Amazon SNS when you create a topic and subscribe to it.</p>
    #
    # @option params [String] :source_type
    #   <p>The type of source that is generating the events. For example, if you want to be notified
    #         of events generated by a DB instance, you would set this parameter to db-instance. if this
    #         value is not specified, all events are returned.</p>
    #            <p>Valid values: db-instance | db-parameter-group | db-security-group | db-snapshot</p>
    #
    # @option params [Array<String>] :event_categories
    #   <p> A list of event categories for a SourceType that you want to subscribe to. You can see a
    #         list of the categories for a given SourceType
    #
    #         by using the <b>DescribeEventCategories</b> action.</p>
    #
    # @option params [Boolean] :enabled
    #   <p> A Boolean value; set to <b>true</b> to activate the
    #         subscription.</p>
    #
    # @return [Types::ModifyEventSubscriptionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_event_subscription(
    #     subscription_name: 'SubscriptionName', # required
    #     sns_topic_arn: 'SnsTopicArn',
    #     source_type: 'SourceType',
    #     event_categories: [
    #       'member'
    #     ],
    #     enabled: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifyEventSubscriptionOutput
    #   resp.data.event_subscription #=> Types::EventSubscription
    #   resp.data.event_subscription.customer_aws_id #=> String
    #   resp.data.event_subscription.cust_subscription_id #=> String
    #   resp.data.event_subscription.sns_topic_arn #=> String
    #   resp.data.event_subscription.status #=> String
    #   resp.data.event_subscription.subscription_creation_time #=> String
    #   resp.data.event_subscription.source_type #=> String
    #   resp.data.event_subscription.source_ids_list #=> Array<String>
    #   resp.data.event_subscription.source_ids_list[0] #=> String
    #   resp.data.event_subscription.event_categories_list #=> Array<String>
    #   resp.data.event_subscription.event_categories_list[0] #=> String
    #   resp.data.event_subscription.enabled #=> Boolean
    #   resp.data.event_subscription.event_subscription_arn #=> String
    #
    def modify_event_subscription(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyEventSubscriptionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifyEventSubscriptionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifyEventSubscription
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::SubscriptionNotFoundFault, Errors::SubscriptionCategoryNotFoundFault, Errors::SNSInvalidTopicFault, Errors::SNSNoAuthorizationFault, Errors::EventSubscriptionQuotaExceededFault, Errors::SNSTopicArnNotFoundFault]),
        data_parser: Parsers::ModifyEventSubscription
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifyEventSubscription,
        stubs: @stubs,
        params_class: Params::ModifyEventSubscriptionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_event_subscription
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modify a setting for an Amazon Neptune global cluster. You can change one
    #       or more database configuration parameters by specifying these parameters
    #       and their new values in the request.</p>
    #
    # @param [Hash] params
    #   See {Types::ModifyGlobalClusterInput}.
    #
    # @option params [String] :global_cluster_identifier
    #   <p>The DB cluster identifier for the global cluster being modified. This parameter
    #         is not case-sensitive.</p>
    #            <p>Constraints: Must match the identifier of an existing global database cluster.</p>
    #
    # @option params [String] :new_global_cluster_identifier
    #   <p>A new cluster identifier to assign to the global database. This value is
    #         stored as a lowercase string.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>The first character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Can't end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>my-cluster2</code>
    #            </p>
    #
    # @option params [Boolean] :deletion_protection
    #   <p>Indicates whether the global database has deletion protection enabled. The
    #         global database cannot be deleted when deletion protection is enabled.</p>
    #
    # @option params [String] :engine_version
    #   <p>The version number of the database engine to which you want to upgrade.
    #         Changing this parameter will result in an outage. The change is applied during
    #         the next maintenance window unless <code>ApplyImmediately</code> is enabled.</p>
    #            <p>To list all of the available Neptune engine versions, use the following command:</p>
    #
    # @option params [Boolean] :allow_major_version_upgrade
    #   <p>A value that indicates whether major version upgrades are allowed.</p>
    #            <p>Constraints: You must allow major version upgrades if you specify a value
    #         for the <code>EngineVersion</code> parameter that is a different major version
    #         than the DB cluster's current version.</p>
    #            <p>If you upgrade the major version of a global database, the cluster and
    #         DB instance parameter groups are set to the default parameter groups for the
    #         new version, so you will need to apply any custom parameter groups after
    #         completing the upgrade.</p>
    #
    # @return [Types::ModifyGlobalClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_global_cluster(
    #     global_cluster_identifier: 'GlobalClusterIdentifier', # required
    #     new_global_cluster_identifier: 'NewGlobalClusterIdentifier',
    #     deletion_protection: false,
    #     engine_version: 'EngineVersion',
    #     allow_major_version_upgrade: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifyGlobalClusterOutput
    #   resp.data.global_cluster #=> Types::GlobalCluster
    #   resp.data.global_cluster.global_cluster_identifier #=> String
    #   resp.data.global_cluster.global_cluster_resource_id #=> String
    #   resp.data.global_cluster.global_cluster_arn #=> String
    #   resp.data.global_cluster.status #=> String
    #   resp.data.global_cluster.engine #=> String
    #   resp.data.global_cluster.engine_version #=> String
    #   resp.data.global_cluster.storage_encrypted #=> Boolean
    #   resp.data.global_cluster.deletion_protection #=> Boolean
    #   resp.data.global_cluster.global_cluster_members #=> Array<GlobalClusterMember>
    #   resp.data.global_cluster.global_cluster_members[0] #=> Types::GlobalClusterMember
    #   resp.data.global_cluster.global_cluster_members[0].db_cluster_arn #=> String
    #   resp.data.global_cluster.global_cluster_members[0].readers #=> Array<String>
    #   resp.data.global_cluster.global_cluster_members[0].readers[0] #=> String
    #   resp.data.global_cluster.global_cluster_members[0].is_writer #=> Boolean
    #
    def modify_global_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyGlobalClusterInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifyGlobalClusterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifyGlobalCluster
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::GlobalClusterNotFoundFault, Errors::InvalidGlobalClusterStateFault]),
        data_parser: Parsers::ModifyGlobalCluster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifyGlobalCluster,
        stubs: @stubs,
        params_class: Params::ModifyGlobalClusterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_global_cluster
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Not supported.</p>
    #
    # @param [Hash] params
    #   See {Types::PromoteReadReplicaDBClusterInput}.
    #
    # @option params [String] :db_cluster_identifier
    #   <p>Not supported.</p>
    #
    # @return [Types::PromoteReadReplicaDBClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.promote_read_replica_db_cluster(
    #     db_cluster_identifier: 'DBClusterIdentifier' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PromoteReadReplicaDBClusterOutput
    #   resp.data.db_cluster #=> Types::DBCluster
    #   resp.data.db_cluster.allocated_storage #=> Integer
    #   resp.data.db_cluster.availability_zones #=> Array<String>
    #   resp.data.db_cluster.availability_zones[0] #=> String
    #   resp.data.db_cluster.backup_retention_period #=> Integer
    #   resp.data.db_cluster.character_set_name #=> String
    #   resp.data.db_cluster.database_name #=> String
    #   resp.data.db_cluster.db_cluster_identifier #=> String
    #   resp.data.db_cluster.db_cluster_parameter_group #=> String
    #   resp.data.db_cluster.db_subnet_group #=> String
    #   resp.data.db_cluster.status #=> String
    #   resp.data.db_cluster.percent_progress #=> String
    #   resp.data.db_cluster.earliest_restorable_time #=> Time
    #   resp.data.db_cluster.endpoint #=> String
    #   resp.data.db_cluster.reader_endpoint #=> String
    #   resp.data.db_cluster.multi_az #=> Boolean
    #   resp.data.db_cluster.engine #=> String
    #   resp.data.db_cluster.engine_version #=> String
    #   resp.data.db_cluster.latest_restorable_time #=> Time
    #   resp.data.db_cluster.port #=> Integer
    #   resp.data.db_cluster.master_username #=> String
    #   resp.data.db_cluster.db_cluster_option_group_memberships #=> Array<DBClusterOptionGroupStatus>
    #   resp.data.db_cluster.db_cluster_option_group_memberships[0] #=> Types::DBClusterOptionGroupStatus
    #   resp.data.db_cluster.db_cluster_option_group_memberships[0].db_cluster_option_group_name #=> String
    #   resp.data.db_cluster.db_cluster_option_group_memberships[0].status #=> String
    #   resp.data.db_cluster.preferred_backup_window #=> String
    #   resp.data.db_cluster.preferred_maintenance_window #=> String
    #   resp.data.db_cluster.replication_source_identifier #=> String
    #   resp.data.db_cluster.read_replica_identifiers #=> Array<String>
    #   resp.data.db_cluster.read_replica_identifiers[0] #=> String
    #   resp.data.db_cluster.db_cluster_members #=> Array<DBClusterMember>
    #   resp.data.db_cluster.db_cluster_members[0] #=> Types::DBClusterMember
    #   resp.data.db_cluster.db_cluster_members[0].db_instance_identifier #=> String
    #   resp.data.db_cluster.db_cluster_members[0].is_cluster_writer #=> Boolean
    #   resp.data.db_cluster.db_cluster_members[0].db_cluster_parameter_group_status #=> String
    #   resp.data.db_cluster.db_cluster_members[0].promotion_tier #=> Integer
    #   resp.data.db_cluster.vpc_security_groups #=> Array<VpcSecurityGroupMembership>
    #   resp.data.db_cluster.vpc_security_groups[0] #=> Types::VpcSecurityGroupMembership
    #   resp.data.db_cluster.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.data.db_cluster.vpc_security_groups[0].status #=> String
    #   resp.data.db_cluster.hosted_zone_id #=> String
    #   resp.data.db_cluster.storage_encrypted #=> Boolean
    #   resp.data.db_cluster.kms_key_id #=> String
    #   resp.data.db_cluster.db_cluster_resource_id #=> String
    #   resp.data.db_cluster.db_cluster_arn #=> String
    #   resp.data.db_cluster.associated_roles #=> Array<DBClusterRole>
    #   resp.data.db_cluster.associated_roles[0] #=> Types::DBClusterRole
    #   resp.data.db_cluster.associated_roles[0].role_arn #=> String
    #   resp.data.db_cluster.associated_roles[0].status #=> String
    #   resp.data.db_cluster.associated_roles[0].feature_name #=> String
    #   resp.data.db_cluster.iam_database_authentication_enabled #=> Boolean
    #   resp.data.db_cluster.clone_group_id #=> String
    #   resp.data.db_cluster.cluster_create_time #=> Time
    #   resp.data.db_cluster.copy_tags_to_snapshot #=> Boolean
    #   resp.data.db_cluster.enabled_cloudwatch_logs_exports #=> Array<String>
    #   resp.data.db_cluster.enabled_cloudwatch_logs_exports[0] #=> String
    #   resp.data.db_cluster.deletion_protection #=> Boolean
    #   resp.data.db_cluster.cross_account_clone #=> Boolean
    #   resp.data.db_cluster.automatic_restart_time #=> Time
    #
    def promote_read_replica_db_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PromoteReadReplicaDBClusterInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PromoteReadReplicaDBClusterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PromoteReadReplicaDBCluster
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DBClusterNotFoundFault, Errors::InvalidDBClusterStateFault]),
        data_parser: Parsers::PromoteReadReplicaDBCluster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PromoteReadReplicaDBCluster,
        stubs: @stubs,
        params_class: Params::PromoteReadReplicaDBClusterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :promote_read_replica_db_cluster
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>You might need to reboot your DB instance, usually for maintenance reasons. For example,
    #       if you make certain modifications, or if you change the DB parameter group associated with the
    #       DB instance, you must reboot the instance for the changes to take effect.</p>
    #          <p>Rebooting a DB instance restarts the database engine service. Rebooting a DB instance
    #       results in a momentary outage, during which the DB instance status is set to rebooting.</p>
    #
    # @param [Hash] params
    #   See {Types::RebootDBInstanceInput}.
    #
    # @option params [String] :db_instance_identifier
    #   <p>The DB instance identifier. This parameter is stored as a lowercase string.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match the identifier of an existing DBInstance.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Boolean] :force_failover
    #   <p> When <code>true</code>, the reboot is conducted through a MultiAZ failover.</p>
    #            <p>Constraint: You can't specify <code>true</code> if the instance is not configured for
    #         MultiAZ.</p>
    #
    # @return [Types::RebootDBInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reboot_db_instance(
    #     db_instance_identifier: 'DBInstanceIdentifier', # required
    #     force_failover: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RebootDBInstanceOutput
    #   resp.data.db_instance #=> Types::DBInstance
    #   resp.data.db_instance.db_instance_identifier #=> String
    #   resp.data.db_instance.db_instance_class #=> String
    #   resp.data.db_instance.engine #=> String
    #   resp.data.db_instance.db_instance_status #=> String
    #   resp.data.db_instance.master_username #=> String
    #   resp.data.db_instance.db_name #=> String
    #   resp.data.db_instance.endpoint #=> Types::Endpoint
    #   resp.data.db_instance.endpoint.address #=> String
    #   resp.data.db_instance.endpoint.port #=> Integer
    #   resp.data.db_instance.endpoint.hosted_zone_id #=> String
    #   resp.data.db_instance.allocated_storage #=> Integer
    #   resp.data.db_instance.instance_create_time #=> Time
    #   resp.data.db_instance.preferred_backup_window #=> String
    #   resp.data.db_instance.backup_retention_period #=> Integer
    #   resp.data.db_instance.db_security_groups #=> Array<DBSecurityGroupMembership>
    #   resp.data.db_instance.db_security_groups[0] #=> Types::DBSecurityGroupMembership
    #   resp.data.db_instance.db_security_groups[0].db_security_group_name #=> String
    #   resp.data.db_instance.db_security_groups[0].status #=> String
    #   resp.data.db_instance.vpc_security_groups #=> Array<VpcSecurityGroupMembership>
    #   resp.data.db_instance.vpc_security_groups[0] #=> Types::VpcSecurityGroupMembership
    #   resp.data.db_instance.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.data.db_instance.vpc_security_groups[0].status #=> String
    #   resp.data.db_instance.db_parameter_groups #=> Array<DBParameterGroupStatus>
    #   resp.data.db_instance.db_parameter_groups[0] #=> Types::DBParameterGroupStatus
    #   resp.data.db_instance.db_parameter_groups[0].db_parameter_group_name #=> String
    #   resp.data.db_instance.db_parameter_groups[0].parameter_apply_status #=> String
    #   resp.data.db_instance.availability_zone #=> String
    #   resp.data.db_instance.db_subnet_group #=> Types::DBSubnetGroup
    #   resp.data.db_instance.db_subnet_group.db_subnet_group_name #=> String
    #   resp.data.db_instance.db_subnet_group.db_subnet_group_description #=> String
    #   resp.data.db_instance.db_subnet_group.vpc_id #=> String
    #   resp.data.db_instance.db_subnet_group.subnet_group_status #=> String
    #   resp.data.db_instance.db_subnet_group.subnets #=> Array<Subnet>
    #   resp.data.db_instance.db_subnet_group.subnets[0] #=> Types::Subnet
    #   resp.data.db_instance.db_subnet_group.subnets[0].subnet_identifier #=> String
    #   resp.data.db_instance.db_subnet_group.subnets[0].subnet_availability_zone #=> Types::AvailabilityZone
    #   resp.data.db_instance.db_subnet_group.subnets[0].subnet_availability_zone.name #=> String
    #   resp.data.db_instance.db_subnet_group.subnets[0].subnet_status #=> String
    #   resp.data.db_instance.db_subnet_group.db_subnet_group_arn #=> String
    #   resp.data.db_instance.preferred_maintenance_window #=> String
    #   resp.data.db_instance.pending_modified_values #=> Types::PendingModifiedValues
    #   resp.data.db_instance.pending_modified_values.db_instance_class #=> String
    #   resp.data.db_instance.pending_modified_values.allocated_storage #=> Integer
    #   resp.data.db_instance.pending_modified_values.master_user_password #=> String
    #   resp.data.db_instance.pending_modified_values.port #=> Integer
    #   resp.data.db_instance.pending_modified_values.backup_retention_period #=> Integer
    #   resp.data.db_instance.pending_modified_values.multi_az #=> Boolean
    #   resp.data.db_instance.pending_modified_values.engine_version #=> String
    #   resp.data.db_instance.pending_modified_values.license_model #=> String
    #   resp.data.db_instance.pending_modified_values.iops #=> Integer
    #   resp.data.db_instance.pending_modified_values.db_instance_identifier #=> String
    #   resp.data.db_instance.pending_modified_values.storage_type #=> String
    #   resp.data.db_instance.pending_modified_values.ca_certificate_identifier #=> String
    #   resp.data.db_instance.pending_modified_values.db_subnet_group_name #=> String
    #   resp.data.db_instance.pending_modified_values.pending_cloudwatch_logs_exports #=> Types::PendingCloudwatchLogsExports
    #   resp.data.db_instance.pending_modified_values.pending_cloudwatch_logs_exports.log_types_to_enable #=> Array<String>
    #   resp.data.db_instance.pending_modified_values.pending_cloudwatch_logs_exports.log_types_to_enable[0] #=> String
    #   resp.data.db_instance.pending_modified_values.pending_cloudwatch_logs_exports.log_types_to_disable #=> Array<String>
    #   resp.data.db_instance.latest_restorable_time #=> Time
    #   resp.data.db_instance.multi_az #=> Boolean
    #   resp.data.db_instance.engine_version #=> String
    #   resp.data.db_instance.auto_minor_version_upgrade #=> Boolean
    #   resp.data.db_instance.read_replica_source_db_instance_identifier #=> String
    #   resp.data.db_instance.read_replica_db_instance_identifiers #=> Array<String>
    #   resp.data.db_instance.read_replica_db_instance_identifiers[0] #=> String
    #   resp.data.db_instance.read_replica_db_cluster_identifiers #=> Array<String>
    #   resp.data.db_instance.read_replica_db_cluster_identifiers[0] #=> String
    #   resp.data.db_instance.license_model #=> String
    #   resp.data.db_instance.iops #=> Integer
    #   resp.data.db_instance.option_group_memberships #=> Array<OptionGroupMembership>
    #   resp.data.db_instance.option_group_memberships[0] #=> Types::OptionGroupMembership
    #   resp.data.db_instance.option_group_memberships[0].option_group_name #=> String
    #   resp.data.db_instance.option_group_memberships[0].status #=> String
    #   resp.data.db_instance.character_set_name #=> String
    #   resp.data.db_instance.secondary_availability_zone #=> String
    #   resp.data.db_instance.publicly_accessible #=> Boolean
    #   resp.data.db_instance.status_infos #=> Array<DBInstanceStatusInfo>
    #   resp.data.db_instance.status_infos[0] #=> Types::DBInstanceStatusInfo
    #   resp.data.db_instance.status_infos[0].status_type #=> String
    #   resp.data.db_instance.status_infos[0].normal #=> Boolean
    #   resp.data.db_instance.status_infos[0].status #=> String
    #   resp.data.db_instance.status_infos[0].message #=> String
    #   resp.data.db_instance.storage_type #=> String
    #   resp.data.db_instance.tde_credential_arn #=> String
    #   resp.data.db_instance.db_instance_port #=> Integer
    #   resp.data.db_instance.db_cluster_identifier #=> String
    #   resp.data.db_instance.storage_encrypted #=> Boolean
    #   resp.data.db_instance.kms_key_id #=> String
    #   resp.data.db_instance.dbi_resource_id #=> String
    #   resp.data.db_instance.ca_certificate_identifier #=> String
    #   resp.data.db_instance.domain_memberships #=> Array<DomainMembership>
    #   resp.data.db_instance.domain_memberships[0] #=> Types::DomainMembership
    #   resp.data.db_instance.domain_memberships[0].domain #=> String
    #   resp.data.db_instance.domain_memberships[0].status #=> String
    #   resp.data.db_instance.domain_memberships[0].fqdn #=> String
    #   resp.data.db_instance.domain_memberships[0].iam_role_name #=> String
    #   resp.data.db_instance.copy_tags_to_snapshot #=> Boolean
    #   resp.data.db_instance.monitoring_interval #=> Integer
    #   resp.data.db_instance.enhanced_monitoring_resource_arn #=> String
    #   resp.data.db_instance.monitoring_role_arn #=> String
    #   resp.data.db_instance.promotion_tier #=> Integer
    #   resp.data.db_instance.db_instance_arn #=> String
    #   resp.data.db_instance.timezone #=> String
    #   resp.data.db_instance.iam_database_authentication_enabled #=> Boolean
    #   resp.data.db_instance.performance_insights_enabled #=> Boolean
    #   resp.data.db_instance.performance_insights_kms_key_id #=> String
    #   resp.data.db_instance.enabled_cloudwatch_logs_exports #=> Array<String>
    #   resp.data.db_instance.deletion_protection #=> Boolean
    #
    def reboot_db_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RebootDBInstanceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RebootDBInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RebootDBInstance
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DBInstanceNotFoundFault, Errors::InvalidDBInstanceStateFault]),
        data_parser: Parsers::RebootDBInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RebootDBInstance,
        stubs: @stubs,
        params_class: Params::RebootDBInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :reboot_db_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Detaches a Neptune DB cluster from a Neptune global database. A secondary
    #       cluster becomes a normal standalone cluster with read-write capability
    #       instead of being read-only, and no longer receives data from a the
    #       primary cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::RemoveFromGlobalClusterInput}.
    #
    # @option params [String] :global_cluster_identifier
    #   <p>The identifier of the Neptune global database from which to detach the
    #         specified Neptune DB cluster.</p>
    #
    # @option params [String] :db_cluster_identifier
    #   <p>The Amazon Resource Name (ARN) identifying the cluster to be detached
    #         from the Neptune global database cluster.</p>
    #
    # @return [Types::RemoveFromGlobalClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_from_global_cluster(
    #     global_cluster_identifier: 'GlobalClusterIdentifier', # required
    #     db_cluster_identifier: 'DbClusterIdentifier' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RemoveFromGlobalClusterOutput
    #   resp.data.global_cluster #=> Types::GlobalCluster
    #   resp.data.global_cluster.global_cluster_identifier #=> String
    #   resp.data.global_cluster.global_cluster_resource_id #=> String
    #   resp.data.global_cluster.global_cluster_arn #=> String
    #   resp.data.global_cluster.status #=> String
    #   resp.data.global_cluster.engine #=> String
    #   resp.data.global_cluster.engine_version #=> String
    #   resp.data.global_cluster.storage_encrypted #=> Boolean
    #   resp.data.global_cluster.deletion_protection #=> Boolean
    #   resp.data.global_cluster.global_cluster_members #=> Array<GlobalClusterMember>
    #   resp.data.global_cluster.global_cluster_members[0] #=> Types::GlobalClusterMember
    #   resp.data.global_cluster.global_cluster_members[0].db_cluster_arn #=> String
    #   resp.data.global_cluster.global_cluster_members[0].readers #=> Array<String>
    #   resp.data.global_cluster.global_cluster_members[0].readers[0] #=> String
    #   resp.data.global_cluster.global_cluster_members[0].is_writer #=> Boolean
    #
    def remove_from_global_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RemoveFromGlobalClusterInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RemoveFromGlobalClusterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RemoveFromGlobalCluster
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DBClusterNotFoundFault, Errors::GlobalClusterNotFoundFault, Errors::InvalidGlobalClusterStateFault]),
        data_parser: Parsers::RemoveFromGlobalCluster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RemoveFromGlobalCluster,
        stubs: @stubs,
        params_class: Params::RemoveFromGlobalClusterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :remove_from_global_cluster
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates an Identity and Access Management (IAM) role from a DB cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::RemoveRoleFromDBClusterInput}.
    #
    # @option params [String] :db_cluster_identifier
    #   <p>The name of the DB cluster to disassociate the IAM role from.</p>
    #
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to disassociate from the DB cluster, for
    #         example <code>arn:aws:iam::123456789012:role/NeptuneAccessRole</code>.</p>
    #
    # @option params [String] :feature_name
    #   <p>The name of the feature for the DB cluster that the IAM role is to be disassociated from.
    #         For the list of supported feature names, see <a href="https://docs.aws.amazon.com/neptune/latest/userguide/api-other-apis.html#DescribeDBEngineVersions">DescribeDBEngineVersions</a>.</p>
    #
    # @return [Types::RemoveRoleFromDBClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_role_from_db_cluster(
    #     db_cluster_identifier: 'DBClusterIdentifier', # required
    #     role_arn: 'RoleArn', # required
    #     feature_name: 'FeatureName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RemoveRoleFromDBClusterOutput
    #
    def remove_role_from_db_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RemoveRoleFromDBClusterInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RemoveRoleFromDBClusterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RemoveRoleFromDBCluster
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DBClusterNotFoundFault, Errors::DBClusterRoleNotFoundFault, Errors::InvalidDBClusterStateFault]),
        data_parser: Parsers::RemoveRoleFromDBCluster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RemoveRoleFromDBCluster,
        stubs: @stubs,
        params_class: Params::RemoveRoleFromDBClusterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :remove_role_from_db_cluster
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes a source identifier from an existing event notification subscription.</p>
    #
    # @param [Hash] params
    #   See {Types::RemoveSourceIdentifierFromSubscriptionInput}.
    #
    # @option params [String] :subscription_name
    #   <p>The name of the event notification subscription you want to remove a source identifier
    #         from.</p>
    #
    # @option params [String] :source_identifier
    #   <p> The source identifier to be removed from the subscription, such as the <b>DB instance identifier</b> for a DB instance or the name of a security
    #         group.</p>
    #
    # @return [Types::RemoveSourceIdentifierFromSubscriptionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_source_identifier_from_subscription(
    #     subscription_name: 'SubscriptionName', # required
    #     source_identifier: 'SourceIdentifier' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RemoveSourceIdentifierFromSubscriptionOutput
    #   resp.data.event_subscription #=> Types::EventSubscription
    #   resp.data.event_subscription.customer_aws_id #=> String
    #   resp.data.event_subscription.cust_subscription_id #=> String
    #   resp.data.event_subscription.sns_topic_arn #=> String
    #   resp.data.event_subscription.status #=> String
    #   resp.data.event_subscription.subscription_creation_time #=> String
    #   resp.data.event_subscription.source_type #=> String
    #   resp.data.event_subscription.source_ids_list #=> Array<String>
    #   resp.data.event_subscription.source_ids_list[0] #=> String
    #   resp.data.event_subscription.event_categories_list #=> Array<String>
    #   resp.data.event_subscription.event_categories_list[0] #=> String
    #   resp.data.event_subscription.enabled #=> Boolean
    #   resp.data.event_subscription.event_subscription_arn #=> String
    #
    def remove_source_identifier_from_subscription(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RemoveSourceIdentifierFromSubscriptionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RemoveSourceIdentifierFromSubscriptionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RemoveSourceIdentifierFromSubscription
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::SubscriptionNotFoundFault, Errors::SourceNotFoundFault]),
        data_parser: Parsers::RemoveSourceIdentifierFromSubscription
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RemoveSourceIdentifierFromSubscription,
        stubs: @stubs,
        params_class: Params::RemoveSourceIdentifierFromSubscriptionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :remove_source_identifier_from_subscription
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes metadata tags from an Amazon Neptune resource.</p>
    #
    # @param [Hash] params
    #   See {Types::RemoveTagsFromResourceInput}.
    #
    # @option params [String] :resource_name
    #   <p>The Amazon Neptune resource that the tags are removed from. This value is an Amazon
    #         Resource Name (ARN). For information about creating an ARN, see <a href="https://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html#tagging.ARN.Constructing"> Constructing an
    #         Amazon Resource Name (ARN)</a>.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The tag key (name) of the tag to be removed.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DBClusterNotFoundFault, Errors::DBInstanceNotFoundFault, Errors::DBSnapshotNotFoundFault]),
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

    # <p> Modifies the parameters of a DB cluster parameter group to the default value. To reset
    #       specific parameters submit a list of the following: <code>ParameterName</code> and
    #       <code>ApplyMethod</code>. To reset the entire DB cluster parameter group, specify the
    #       <code>DBClusterParameterGroupName</code> and <code>ResetAllParameters</code> parameters.</p>
    #          <p> When resetting the entire group, dynamic parameters are updated immediately and static
    #       parameters are set to <code>pending-reboot</code> to take effect on the next DB instance
    #       restart or <a>RebootDBInstance</a> request. You must call <a>RebootDBInstance</a> for every DB instance in your DB cluster
    #       that you want the updated static parameter to apply to.</p>
    #
    # @param [Hash] params
    #   See {Types::ResetDBClusterParameterGroupInput}.
    #
    # @option params [String] :db_cluster_parameter_group_name
    #   <p>The name of the DB cluster parameter group to reset.</p>
    #
    # @option params [Boolean] :reset_all_parameters
    #   <p>A value that is set to <code>true</code> to reset all parameters in the DB cluster
    #         parameter group to their default values, and <code>false</code> otherwise. You can't use this
    #         parameter if there is a list of parameter names specified for the <code>Parameters</code>
    #         parameter.</p>
    #
    # @option params [Array<Parameter>] :parameters
    #   <p>A list of parameter names in the DB cluster parameter group to reset to the default
    #         values. You can't use this parameter if the <code>ResetAllParameters</code> parameter is set
    #         to <code>true</code>.</p>
    #
    # @return [Types::ResetDBClusterParameterGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reset_db_cluster_parameter_group(
    #     db_cluster_parameter_group_name: 'DBClusterParameterGroupName', # required
    #     reset_all_parameters: false,
    #     parameters: [
    #       {
    #         parameter_name: 'ParameterName',
    #         parameter_value: 'ParameterValue',
    #         description: 'Description',
    #         source: 'Source',
    #         apply_type: 'ApplyType',
    #         data_type: 'DataType',
    #         allowed_values: 'AllowedValues',
    #         is_modifiable: false,
    #         minimum_engine_version: 'MinimumEngineVersion',
    #         apply_method: 'immediate' # accepts ["immediate", "pending-reboot"]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ResetDBClusterParameterGroupOutput
    #   resp.data.db_cluster_parameter_group_name #=> String
    #
    def reset_db_cluster_parameter_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ResetDBClusterParameterGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ResetDBClusterParameterGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ResetDBClusterParameterGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidDBParameterGroupStateFault, Errors::DBParameterGroupNotFoundFault]),
        data_parser: Parsers::ResetDBClusterParameterGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ResetDBClusterParameterGroup,
        stubs: @stubs,
        params_class: Params::ResetDBClusterParameterGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :reset_db_cluster_parameter_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies the parameters of a DB parameter group to the engine/system default value. To
    #       reset specific parameters, provide a list of the following: <code>ParameterName</code> and
    #       <code>ApplyMethod</code>. To reset the entire DB parameter group, specify the
    #       <code>DBParameterGroup</code> name and <code>ResetAllParameters</code> parameters. When
    #       resetting the entire group, dynamic parameters are updated immediately and static parameters
    #       are set to <code>pending-reboot</code> to take effect on the next DB instance restart or
    #       <code>RebootDBInstance</code> request.</p>
    #
    # @param [Hash] params
    #   See {Types::ResetDBParameterGroupInput}.
    #
    # @option params [String] :db_parameter_group_name
    #   <p>The name of the DB parameter group.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match the name of an existing DBParameterGroup.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Boolean] :reset_all_parameters
    #   <p>Specifies whether (<code>true</code>) or not (<code>false</code>) to reset all parameters
    #         in the DB parameter group to default values.</p>
    #            <p>Default: <code>true</code>
    #            </p>
    #
    # @option params [Array<Parameter>] :parameters
    #   <p>To reset the entire DB parameter group, specify the <code>DBParameterGroup</code> name and
    #         <code>ResetAllParameters</code> parameters. To reset specific parameters, provide a list of
    #         the following: <code>ParameterName</code> and <code>ApplyMethod</code>. A maximum of 20
    #         parameters can be modified in a single request.</p>
    #            <p>Valid Values (for Apply method): <code>pending-reboot</code>
    #            </p>
    #
    # @return [Types::ResetDBParameterGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reset_db_parameter_group(
    #     db_parameter_group_name: 'DBParameterGroupName', # required
    #     reset_all_parameters: false,
    #     parameters: [
    #       {
    #         parameter_name: 'ParameterName',
    #         parameter_value: 'ParameterValue',
    #         description: 'Description',
    #         source: 'Source',
    #         apply_type: 'ApplyType',
    #         data_type: 'DataType',
    #         allowed_values: 'AllowedValues',
    #         is_modifiable: false,
    #         minimum_engine_version: 'MinimumEngineVersion',
    #         apply_method: 'immediate' # accepts ["immediate", "pending-reboot"]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ResetDBParameterGroupOutput
    #   resp.data.db_parameter_group_name #=> String
    #
    def reset_db_parameter_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ResetDBParameterGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ResetDBParameterGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ResetDBParameterGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidDBParameterGroupStateFault, Errors::DBParameterGroupNotFoundFault]),
        data_parser: Parsers::ResetDBParameterGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ResetDBParameterGroup,
        stubs: @stubs,
        params_class: Params::ResetDBParameterGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :reset_db_parameter_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new DB cluster from a DB snapshot or DB cluster snapshot.</p>
    #          <p>If a DB snapshot is specified, the target DB cluster is created from the source DB
    #       snapshot with a default configuration and default security group.</p>
    #          <p>If a DB cluster snapshot is specified, the target DB cluster is created from the source DB
    #       cluster restore point with the same configuration as the original source DB cluster, except
    #       that the new DB cluster is created with the default security group.</p>
    #
    # @param [Hash] params
    #   See {Types::RestoreDBClusterFromSnapshotInput}.
    #
    # @option params [Array<String>] :availability_zones
    #   <p>Provides the list of EC2 Availability Zones that instances in the restored DB cluster can
    #         be created in.</p>
    #
    # @option params [String] :db_cluster_identifier
    #   <p>The name of the DB cluster to create from the DB snapshot or DB cluster snapshot. This
    #         parameter isn't case-sensitive.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 1 to 63 letters, numbers, or hyphens</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>my-snapshot-id</code>
    #            </p>
    #
    # @option params [String] :snapshot_identifier
    #   <p>The identifier for the DB snapshot or DB cluster snapshot to restore from.</p>
    #            <p>You can use either the name or the Amazon Resource Name (ARN) to specify a DB cluster
    #         snapshot. However, you can use only the ARN to specify a DB snapshot.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match the identifier of an existing Snapshot.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :engine
    #   <p>The database engine to use for the new DB cluster.</p>
    #            <p>Default: The same as source</p>
    #            <p>Constraint: Must be compatible with the engine of the source</p>
    #
    # @option params [String] :engine_version
    #   <p>The version of the database engine to use for the new DB cluster.</p>
    #
    # @option params [Integer] :port
    #   <p>The port number on which the new DB cluster accepts connections.</p>
    #            <p>Constraints: Value must be <code>1150-65535</code>
    #            </p>
    #            <p>Default: The same port as the original DB cluster.</p>
    #
    # @option params [String] :db_subnet_group_name
    #   <p>The name of the DB subnet group to use for the new DB cluster.</p>
    #            <p>Constraints: If supplied, must match the name of an existing DBSubnetGroup.</p>
    #            <p>Example: <code>mySubnetgroup</code>
    #            </p>
    #
    # @option params [String] :database_name
    #   <p>Not supported.</p>
    #
    # @option params [String] :option_group_name
    #   <p>
    #               <i>(Not supported by Neptune)</i>
    #            </p>
    #
    # @option params [Array<String>] :vpc_security_group_ids
    #   <p>A list of VPC security groups that the new DB cluster will belong to.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to be assigned to the restored DB cluster.</p>
    #
    # @option params [String] :kms_key_id
    #   <p>The Amazon KMS key identifier to use when restoring an encrypted DB cluster from a DB
    #         snapshot or DB cluster snapshot.</p>
    #            <p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If
    #         you are restoring a DB cluster with the same Amazon account that owns the KMS encryption key used
    #         to encrypt the new DB cluster, then you can use the KMS key alias instead of the ARN for the
    #         KMS encryption key.</p>
    #            <p>If you do not specify a value for the <code>KmsKeyId</code> parameter, then the following
    #         will occur:</p>
    #            <ul>
    #               <li>
    #                  <p>If the DB snapshot or DB cluster snapshot in <code>SnapshotIdentifier</code> is
    #             encrypted, then the restored DB cluster is encrypted using the KMS key that was used to
    #             encrypt the DB snapshot or DB cluster snapshot.</p>
    #               </li>
    #               <li>
    #                  <p>If the DB snapshot or DB cluster snapshot in <code>SnapshotIdentifier</code> is not
    #             encrypted, then the restored DB cluster is not encrypted.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Boolean] :enable_iam_database_authentication
    #   <p>True to enable mapping of Amazon Identity and Access Management (IAM) accounts to database
    #         accounts, and otherwise false.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    #
    # @option params [Array<String>] :enable_cloudwatch_logs_exports
    #   <p>The list of logs that the restored DB cluster is to export to Amazon CloudWatch Logs.</p>
    #
    # @option params [String] :db_cluster_parameter_group_name
    #   <p>The name of the DB cluster parameter group to associate with the new DB cluster.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If supplied, must match the name of an existing DBClusterParameterGroup.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Boolean] :deletion_protection
    #   <p>A value that indicates whether the DB cluster has deletion protection enabled.
    #         The database can't be deleted when deletion protection is enabled. By default,
    #         deletion protection is disabled.
    #       </p>
    #
    # @option params [Boolean] :copy_tags_to_snapshot
    #   <p>
    #               <i>If set to <code>true</code>, tags are copied to any snapshot of
    #         the restored DB cluster that is created.</i>
    #            </p>
    #
    # @return [Types::RestoreDBClusterFromSnapshotOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_db_cluster_from_snapshot(
    #     availability_zones: [
    #       'member'
    #     ],
    #     db_cluster_identifier: 'DBClusterIdentifier', # required
    #     snapshot_identifier: 'SnapshotIdentifier', # required
    #     engine: 'Engine', # required
    #     engine_version: 'EngineVersion',
    #     port: 1,
    #     db_subnet_group_name: 'DBSubnetGroupName',
    #     database_name: 'DatabaseName',
    #     option_group_name: 'OptionGroupName',
    #     vpc_security_group_ids: [
    #       'member'
    #     ],
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ],
    #     kms_key_id: 'KmsKeyId',
    #     enable_iam_database_authentication: false,
    #     enable_cloudwatch_logs_exports: [
    #       'member'
    #     ],
    #     db_cluster_parameter_group_name: 'DBClusterParameterGroupName',
    #     deletion_protection: false,
    #     copy_tags_to_snapshot: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RestoreDBClusterFromSnapshotOutput
    #   resp.data.db_cluster #=> Types::DBCluster
    #   resp.data.db_cluster.allocated_storage #=> Integer
    #   resp.data.db_cluster.availability_zones #=> Array<String>
    #   resp.data.db_cluster.availability_zones[0] #=> String
    #   resp.data.db_cluster.backup_retention_period #=> Integer
    #   resp.data.db_cluster.character_set_name #=> String
    #   resp.data.db_cluster.database_name #=> String
    #   resp.data.db_cluster.db_cluster_identifier #=> String
    #   resp.data.db_cluster.db_cluster_parameter_group #=> String
    #   resp.data.db_cluster.db_subnet_group #=> String
    #   resp.data.db_cluster.status #=> String
    #   resp.data.db_cluster.percent_progress #=> String
    #   resp.data.db_cluster.earliest_restorable_time #=> Time
    #   resp.data.db_cluster.endpoint #=> String
    #   resp.data.db_cluster.reader_endpoint #=> String
    #   resp.data.db_cluster.multi_az #=> Boolean
    #   resp.data.db_cluster.engine #=> String
    #   resp.data.db_cluster.engine_version #=> String
    #   resp.data.db_cluster.latest_restorable_time #=> Time
    #   resp.data.db_cluster.port #=> Integer
    #   resp.data.db_cluster.master_username #=> String
    #   resp.data.db_cluster.db_cluster_option_group_memberships #=> Array<DBClusterOptionGroupStatus>
    #   resp.data.db_cluster.db_cluster_option_group_memberships[0] #=> Types::DBClusterOptionGroupStatus
    #   resp.data.db_cluster.db_cluster_option_group_memberships[0].db_cluster_option_group_name #=> String
    #   resp.data.db_cluster.db_cluster_option_group_memberships[0].status #=> String
    #   resp.data.db_cluster.preferred_backup_window #=> String
    #   resp.data.db_cluster.preferred_maintenance_window #=> String
    #   resp.data.db_cluster.replication_source_identifier #=> String
    #   resp.data.db_cluster.read_replica_identifiers #=> Array<String>
    #   resp.data.db_cluster.read_replica_identifiers[0] #=> String
    #   resp.data.db_cluster.db_cluster_members #=> Array<DBClusterMember>
    #   resp.data.db_cluster.db_cluster_members[0] #=> Types::DBClusterMember
    #   resp.data.db_cluster.db_cluster_members[0].db_instance_identifier #=> String
    #   resp.data.db_cluster.db_cluster_members[0].is_cluster_writer #=> Boolean
    #   resp.data.db_cluster.db_cluster_members[0].db_cluster_parameter_group_status #=> String
    #   resp.data.db_cluster.db_cluster_members[0].promotion_tier #=> Integer
    #   resp.data.db_cluster.vpc_security_groups #=> Array<VpcSecurityGroupMembership>
    #   resp.data.db_cluster.vpc_security_groups[0] #=> Types::VpcSecurityGroupMembership
    #   resp.data.db_cluster.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.data.db_cluster.vpc_security_groups[0].status #=> String
    #   resp.data.db_cluster.hosted_zone_id #=> String
    #   resp.data.db_cluster.storage_encrypted #=> Boolean
    #   resp.data.db_cluster.kms_key_id #=> String
    #   resp.data.db_cluster.db_cluster_resource_id #=> String
    #   resp.data.db_cluster.db_cluster_arn #=> String
    #   resp.data.db_cluster.associated_roles #=> Array<DBClusterRole>
    #   resp.data.db_cluster.associated_roles[0] #=> Types::DBClusterRole
    #   resp.data.db_cluster.associated_roles[0].role_arn #=> String
    #   resp.data.db_cluster.associated_roles[0].status #=> String
    #   resp.data.db_cluster.associated_roles[0].feature_name #=> String
    #   resp.data.db_cluster.iam_database_authentication_enabled #=> Boolean
    #   resp.data.db_cluster.clone_group_id #=> String
    #   resp.data.db_cluster.cluster_create_time #=> Time
    #   resp.data.db_cluster.copy_tags_to_snapshot #=> Boolean
    #   resp.data.db_cluster.enabled_cloudwatch_logs_exports #=> Array<String>
    #   resp.data.db_cluster.enabled_cloudwatch_logs_exports[0] #=> String
    #   resp.data.db_cluster.deletion_protection #=> Boolean
    #   resp.data.db_cluster.cross_account_clone #=> Boolean
    #   resp.data.db_cluster.automatic_restart_time #=> Time
    #
    def restore_db_cluster_from_snapshot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RestoreDBClusterFromSnapshotInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RestoreDBClusterFromSnapshotInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RestoreDBClusterFromSnapshot
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InsufficientDBClusterCapacityFault, Errors::InsufficientStorageClusterCapacityFault, Errors::InvalidDBSnapshotStateFault, Errors::DBSubnetGroupNotFoundFault, Errors::KMSKeyNotAccessibleFault, Errors::StorageQuotaExceededFault, Errors::DBClusterSnapshotNotFoundFault, Errors::InvalidVPCNetworkStateFault, Errors::OptionGroupNotFoundFault, Errors::DBClusterParameterGroupNotFoundFault, Errors::InvalidSubnet, Errors::DBSnapshotNotFoundFault, Errors::InvalidDBClusterSnapshotStateFault, Errors::DBClusterAlreadyExistsFault, Errors::InvalidRestoreFault, Errors::DBClusterQuotaExceededFault]),
        data_parser: Parsers::RestoreDBClusterFromSnapshot
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RestoreDBClusterFromSnapshot,
        stubs: @stubs,
        params_class: Params::RestoreDBClusterFromSnapshotOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :restore_db_cluster_from_snapshot
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Restores a DB cluster to an arbitrary point in time. Users can restore to any point in
    #       time before <code>LatestRestorableTime</code> for up to <code>BackupRetentionPeriod</code>
    #       days. The target DB cluster is created from the source DB cluster with the same configuration
    #       as the original DB cluster, except that the new DB cluster is created with the default DB
    #       security group.</p>
    #          <note>
    #             <p>This action only restores the DB cluster, not the DB instances for that DB cluster. You
    #         must invoke the <a>CreateDBInstance</a> action to create DB instances for the
    #         restored DB cluster, specifying the identifier of the restored DB cluster in
    #         <code>DBClusterIdentifier</code>. You can create DB instances only after the
    #         <code>RestoreDBClusterToPointInTime</code> action has completed and the DB cluster is
    #         available.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::RestoreDBClusterToPointInTimeInput}.
    #
    # @option params [String] :db_cluster_identifier
    #   <p>The name of the new DB cluster to be created.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 1 to 63 letters, numbers, or hyphens</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :restore_type
    #   <p>The type of restore to be performed. You can specify one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>full-copy</code> - The new DB cluster is restored as a full copy of the source
    #             DB cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>copy-on-write</code> - The new DB cluster is restored as a clone of the source
    #             DB cluster.</p>
    #               </li>
    #            </ul>
    #            <p>If you don't specify a <code>RestoreType</code> value, then the new DB cluster is restored
    #         as a full copy of the source DB cluster.</p>
    #
    # @option params [String] :source_db_cluster_identifier
    #   <p>The identifier of the source DB cluster from which to restore.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match the identifier of an existing DBCluster.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Time] :restore_to_time
    #   <p>The date and time to restore the DB cluster to.</p>
    #            <p>Valid Values: Value must be a time in Universal Coordinated Time (UTC) format</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be before the latest restorable time for the DB instance</p>
    #               </li>
    #               <li>
    #                  <p>Must be specified if <code>UseLatestRestorableTime</code> parameter is not
    #             provided</p>
    #               </li>
    #               <li>
    #                  <p>Cannot be specified if <code>UseLatestRestorableTime</code> parameter is true</p>
    #               </li>
    #               <li>
    #                  <p>Cannot be specified if <code>RestoreType</code> parameter is
    #             <code>copy-on-write</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>2015-03-07T23:45:00Z</code>
    #            </p>
    #
    # @option params [Boolean] :use_latest_restorable_time
    #   <p>A value that is set to <code>true</code> to restore the DB cluster to the latest
    #         restorable backup time, and <code>false</code> otherwise.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    #            <p>Constraints: Cannot be specified if <code>RestoreToTime</code> parameter is
    #         provided.</p>
    #
    # @option params [Integer] :port
    #   <p>The port number on which the new DB cluster accepts connections.</p>
    #            <p>Constraints: Value must be <code>1150-65535</code>
    #            </p>
    #            <p>Default: The same port as the original DB cluster.</p>
    #
    # @option params [String] :db_subnet_group_name
    #   <p>The DB subnet group name to use for the new DB cluster.</p>
    #            <p>Constraints: If supplied, must match the name of an existing DBSubnetGroup.</p>
    #            <p>Example: <code>mySubnetgroup</code>
    #            </p>
    #
    # @option params [String] :option_group_name
    #   <p>
    #               <i>(Not supported by Neptune)</i>
    #            </p>
    #
    # @option params [Array<String>] :vpc_security_group_ids
    #   <p>A list of VPC security groups that the new DB cluster belongs to.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to be applied to the restored DB cluster.</p>
    #
    # @option params [String] :kms_key_id
    #   <p>The Amazon KMS key identifier to use when restoring an encrypted DB cluster from an encrypted
    #         DB cluster.</p>
    #            <p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If
    #         you are restoring a DB cluster with the same Amazon account that owns the KMS encryption key used
    #         to encrypt the new DB cluster, then you can use the KMS key alias instead of the ARN for the
    #         KMS encryption key.</p>
    #            <p>You can restore to a new DB cluster and encrypt the new DB cluster with a KMS key that is
    #         different than the KMS key used to encrypt the source DB cluster. The new DB cluster is
    #         encrypted with the KMS key identified by the <code>KmsKeyId</code> parameter.</p>
    #            <p>If you do not specify a value for the <code>KmsKeyId</code> parameter, then the following
    #         will occur:</p>
    #            <ul>
    #               <li>
    #                  <p>If the DB cluster is encrypted, then the restored DB cluster is encrypted using the
    #             KMS key that was used to encrypt the source DB cluster.</p>
    #               </li>
    #               <li>
    #                  <p>If the DB cluster is not encrypted, then the restored DB cluster is not
    #             encrypted.</p>
    #               </li>
    #            </ul>
    #            <p>If <code>DBClusterIdentifier</code> refers to a DB cluster that is not encrypted, then the
    #         restore request is rejected.</p>
    #
    # @option params [Boolean] :enable_iam_database_authentication
    #   <p>True to enable mapping of Amazon Identity and Access Management (IAM) accounts to database
    #         accounts, and otherwise false.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    #
    # @option params [Array<String>] :enable_cloudwatch_logs_exports
    #   <p>The list of logs that the restored DB cluster is to export to CloudWatch Logs.</p>
    #
    # @option params [String] :db_cluster_parameter_group_name
    #   <p>The name of the DB cluster parameter group to associate with the new DB cluster.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If supplied, must match the name of an existing DBClusterParameterGroup.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Boolean] :deletion_protection
    #   <p>A value that indicates whether the DB cluster has deletion protection enabled.
    #         The database can't be deleted when deletion protection is enabled. By default,
    #         deletion protection is disabled.
    #       </p>
    #
    # @return [Types::RestoreDBClusterToPointInTimeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_db_cluster_to_point_in_time(
    #     db_cluster_identifier: 'DBClusterIdentifier', # required
    #     restore_type: 'RestoreType',
    #     source_db_cluster_identifier: 'SourceDBClusterIdentifier', # required
    #     restore_to_time: Time.now,
    #     use_latest_restorable_time: false,
    #     port: 1,
    #     db_subnet_group_name: 'DBSubnetGroupName',
    #     option_group_name: 'OptionGroupName',
    #     vpc_security_group_ids: [
    #       'member'
    #     ],
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ],
    #     kms_key_id: 'KmsKeyId',
    #     enable_iam_database_authentication: false,
    #     enable_cloudwatch_logs_exports: [
    #       'member'
    #     ],
    #     db_cluster_parameter_group_name: 'DBClusterParameterGroupName',
    #     deletion_protection: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RestoreDBClusterToPointInTimeOutput
    #   resp.data.db_cluster #=> Types::DBCluster
    #   resp.data.db_cluster.allocated_storage #=> Integer
    #   resp.data.db_cluster.availability_zones #=> Array<String>
    #   resp.data.db_cluster.availability_zones[0] #=> String
    #   resp.data.db_cluster.backup_retention_period #=> Integer
    #   resp.data.db_cluster.character_set_name #=> String
    #   resp.data.db_cluster.database_name #=> String
    #   resp.data.db_cluster.db_cluster_identifier #=> String
    #   resp.data.db_cluster.db_cluster_parameter_group #=> String
    #   resp.data.db_cluster.db_subnet_group #=> String
    #   resp.data.db_cluster.status #=> String
    #   resp.data.db_cluster.percent_progress #=> String
    #   resp.data.db_cluster.earliest_restorable_time #=> Time
    #   resp.data.db_cluster.endpoint #=> String
    #   resp.data.db_cluster.reader_endpoint #=> String
    #   resp.data.db_cluster.multi_az #=> Boolean
    #   resp.data.db_cluster.engine #=> String
    #   resp.data.db_cluster.engine_version #=> String
    #   resp.data.db_cluster.latest_restorable_time #=> Time
    #   resp.data.db_cluster.port #=> Integer
    #   resp.data.db_cluster.master_username #=> String
    #   resp.data.db_cluster.db_cluster_option_group_memberships #=> Array<DBClusterOptionGroupStatus>
    #   resp.data.db_cluster.db_cluster_option_group_memberships[0] #=> Types::DBClusterOptionGroupStatus
    #   resp.data.db_cluster.db_cluster_option_group_memberships[0].db_cluster_option_group_name #=> String
    #   resp.data.db_cluster.db_cluster_option_group_memberships[0].status #=> String
    #   resp.data.db_cluster.preferred_backup_window #=> String
    #   resp.data.db_cluster.preferred_maintenance_window #=> String
    #   resp.data.db_cluster.replication_source_identifier #=> String
    #   resp.data.db_cluster.read_replica_identifiers #=> Array<String>
    #   resp.data.db_cluster.read_replica_identifiers[0] #=> String
    #   resp.data.db_cluster.db_cluster_members #=> Array<DBClusterMember>
    #   resp.data.db_cluster.db_cluster_members[0] #=> Types::DBClusterMember
    #   resp.data.db_cluster.db_cluster_members[0].db_instance_identifier #=> String
    #   resp.data.db_cluster.db_cluster_members[0].is_cluster_writer #=> Boolean
    #   resp.data.db_cluster.db_cluster_members[0].db_cluster_parameter_group_status #=> String
    #   resp.data.db_cluster.db_cluster_members[0].promotion_tier #=> Integer
    #   resp.data.db_cluster.vpc_security_groups #=> Array<VpcSecurityGroupMembership>
    #   resp.data.db_cluster.vpc_security_groups[0] #=> Types::VpcSecurityGroupMembership
    #   resp.data.db_cluster.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.data.db_cluster.vpc_security_groups[0].status #=> String
    #   resp.data.db_cluster.hosted_zone_id #=> String
    #   resp.data.db_cluster.storage_encrypted #=> Boolean
    #   resp.data.db_cluster.kms_key_id #=> String
    #   resp.data.db_cluster.db_cluster_resource_id #=> String
    #   resp.data.db_cluster.db_cluster_arn #=> String
    #   resp.data.db_cluster.associated_roles #=> Array<DBClusterRole>
    #   resp.data.db_cluster.associated_roles[0] #=> Types::DBClusterRole
    #   resp.data.db_cluster.associated_roles[0].role_arn #=> String
    #   resp.data.db_cluster.associated_roles[0].status #=> String
    #   resp.data.db_cluster.associated_roles[0].feature_name #=> String
    #   resp.data.db_cluster.iam_database_authentication_enabled #=> Boolean
    #   resp.data.db_cluster.clone_group_id #=> String
    #   resp.data.db_cluster.cluster_create_time #=> Time
    #   resp.data.db_cluster.copy_tags_to_snapshot #=> Boolean
    #   resp.data.db_cluster.enabled_cloudwatch_logs_exports #=> Array<String>
    #   resp.data.db_cluster.enabled_cloudwatch_logs_exports[0] #=> String
    #   resp.data.db_cluster.deletion_protection #=> Boolean
    #   resp.data.db_cluster.cross_account_clone #=> Boolean
    #   resp.data.db_cluster.automatic_restart_time #=> Time
    #
    def restore_db_cluster_to_point_in_time(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RestoreDBClusterToPointInTimeInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RestoreDBClusterToPointInTimeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RestoreDBClusterToPointInTime
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DBClusterNotFoundFault, Errors::InsufficientDBClusterCapacityFault, Errors::InsufficientStorageClusterCapacityFault, Errors::InvalidDBSnapshotStateFault, Errors::DBSubnetGroupNotFoundFault, Errors::KMSKeyNotAccessibleFault, Errors::StorageQuotaExceededFault, Errors::DBClusterSnapshotNotFoundFault, Errors::InvalidVPCNetworkStateFault, Errors::OptionGroupNotFoundFault, Errors::DBClusterParameterGroupNotFoundFault, Errors::InvalidSubnet, Errors::InvalidDBClusterSnapshotStateFault, Errors::DBClusterAlreadyExistsFault, Errors::InvalidDBClusterStateFault, Errors::InvalidRestoreFault, Errors::DBClusterQuotaExceededFault]),
        data_parser: Parsers::RestoreDBClusterToPointInTime
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RestoreDBClusterToPointInTime,
        stubs: @stubs,
        params_class: Params::RestoreDBClusterToPointInTimeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :restore_db_cluster_to_point_in_time
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts an Amazon Neptune  DB cluster that was stopped using the Amazon
    #       console, the Amazon CLI stop-db-cluster command, or the StopDBCluster API.</p>
    #
    # @param [Hash] params
    #   See {Types::StartDBClusterInput}.
    #
    # @option params [String] :db_cluster_identifier
    #   <p>The DB cluster identifier of the Neptune DB cluster to be started.
    #         This parameter is stored as a lowercase string.</p>
    #
    # @return [Types::StartDBClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_db_cluster(
    #     db_cluster_identifier: 'DBClusterIdentifier' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartDBClusterOutput
    #   resp.data.db_cluster #=> Types::DBCluster
    #   resp.data.db_cluster.allocated_storage #=> Integer
    #   resp.data.db_cluster.availability_zones #=> Array<String>
    #   resp.data.db_cluster.availability_zones[0] #=> String
    #   resp.data.db_cluster.backup_retention_period #=> Integer
    #   resp.data.db_cluster.character_set_name #=> String
    #   resp.data.db_cluster.database_name #=> String
    #   resp.data.db_cluster.db_cluster_identifier #=> String
    #   resp.data.db_cluster.db_cluster_parameter_group #=> String
    #   resp.data.db_cluster.db_subnet_group #=> String
    #   resp.data.db_cluster.status #=> String
    #   resp.data.db_cluster.percent_progress #=> String
    #   resp.data.db_cluster.earliest_restorable_time #=> Time
    #   resp.data.db_cluster.endpoint #=> String
    #   resp.data.db_cluster.reader_endpoint #=> String
    #   resp.data.db_cluster.multi_az #=> Boolean
    #   resp.data.db_cluster.engine #=> String
    #   resp.data.db_cluster.engine_version #=> String
    #   resp.data.db_cluster.latest_restorable_time #=> Time
    #   resp.data.db_cluster.port #=> Integer
    #   resp.data.db_cluster.master_username #=> String
    #   resp.data.db_cluster.db_cluster_option_group_memberships #=> Array<DBClusterOptionGroupStatus>
    #   resp.data.db_cluster.db_cluster_option_group_memberships[0] #=> Types::DBClusterOptionGroupStatus
    #   resp.data.db_cluster.db_cluster_option_group_memberships[0].db_cluster_option_group_name #=> String
    #   resp.data.db_cluster.db_cluster_option_group_memberships[0].status #=> String
    #   resp.data.db_cluster.preferred_backup_window #=> String
    #   resp.data.db_cluster.preferred_maintenance_window #=> String
    #   resp.data.db_cluster.replication_source_identifier #=> String
    #   resp.data.db_cluster.read_replica_identifiers #=> Array<String>
    #   resp.data.db_cluster.read_replica_identifiers[0] #=> String
    #   resp.data.db_cluster.db_cluster_members #=> Array<DBClusterMember>
    #   resp.data.db_cluster.db_cluster_members[0] #=> Types::DBClusterMember
    #   resp.data.db_cluster.db_cluster_members[0].db_instance_identifier #=> String
    #   resp.data.db_cluster.db_cluster_members[0].is_cluster_writer #=> Boolean
    #   resp.data.db_cluster.db_cluster_members[0].db_cluster_parameter_group_status #=> String
    #   resp.data.db_cluster.db_cluster_members[0].promotion_tier #=> Integer
    #   resp.data.db_cluster.vpc_security_groups #=> Array<VpcSecurityGroupMembership>
    #   resp.data.db_cluster.vpc_security_groups[0] #=> Types::VpcSecurityGroupMembership
    #   resp.data.db_cluster.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.data.db_cluster.vpc_security_groups[0].status #=> String
    #   resp.data.db_cluster.hosted_zone_id #=> String
    #   resp.data.db_cluster.storage_encrypted #=> Boolean
    #   resp.data.db_cluster.kms_key_id #=> String
    #   resp.data.db_cluster.db_cluster_resource_id #=> String
    #   resp.data.db_cluster.db_cluster_arn #=> String
    #   resp.data.db_cluster.associated_roles #=> Array<DBClusterRole>
    #   resp.data.db_cluster.associated_roles[0] #=> Types::DBClusterRole
    #   resp.data.db_cluster.associated_roles[0].role_arn #=> String
    #   resp.data.db_cluster.associated_roles[0].status #=> String
    #   resp.data.db_cluster.associated_roles[0].feature_name #=> String
    #   resp.data.db_cluster.iam_database_authentication_enabled #=> Boolean
    #   resp.data.db_cluster.clone_group_id #=> String
    #   resp.data.db_cluster.cluster_create_time #=> Time
    #   resp.data.db_cluster.copy_tags_to_snapshot #=> Boolean
    #   resp.data.db_cluster.enabled_cloudwatch_logs_exports #=> Array<String>
    #   resp.data.db_cluster.enabled_cloudwatch_logs_exports[0] #=> String
    #   resp.data.db_cluster.deletion_protection #=> Boolean
    #   resp.data.db_cluster.cross_account_clone #=> Boolean
    #   resp.data.db_cluster.automatic_restart_time #=> Time
    #
    def start_db_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartDBClusterInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartDBClusterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartDBCluster
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DBClusterNotFoundFault, Errors::InvalidDBClusterStateFault, Errors::InvalidDBInstanceStateFault]),
        data_parser: Parsers::StartDBCluster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartDBCluster,
        stubs: @stubs,
        params_class: Params::StartDBClusterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_db_cluster
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops an Amazon Neptune DB cluster. When you stop a DB cluster, Neptune
    #       retains the DB cluster's metadata, including its endpoints and DB parameter
    #       groups.</p>
    #
    #          <p>Neptune also retains the transaction logs so you can do a point-in-time
    #       restore if necessary.</p>
    #
    # @param [Hash] params
    #   See {Types::StopDBClusterInput}.
    #
    # @option params [String] :db_cluster_identifier
    #   <p>The DB cluster identifier of the Neptune DB cluster to be stopped.
    #         This parameter is stored as a lowercase string.</p>
    #
    # @return [Types::StopDBClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_db_cluster(
    #     db_cluster_identifier: 'DBClusterIdentifier' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopDBClusterOutput
    #   resp.data.db_cluster #=> Types::DBCluster
    #   resp.data.db_cluster.allocated_storage #=> Integer
    #   resp.data.db_cluster.availability_zones #=> Array<String>
    #   resp.data.db_cluster.availability_zones[0] #=> String
    #   resp.data.db_cluster.backup_retention_period #=> Integer
    #   resp.data.db_cluster.character_set_name #=> String
    #   resp.data.db_cluster.database_name #=> String
    #   resp.data.db_cluster.db_cluster_identifier #=> String
    #   resp.data.db_cluster.db_cluster_parameter_group #=> String
    #   resp.data.db_cluster.db_subnet_group #=> String
    #   resp.data.db_cluster.status #=> String
    #   resp.data.db_cluster.percent_progress #=> String
    #   resp.data.db_cluster.earliest_restorable_time #=> Time
    #   resp.data.db_cluster.endpoint #=> String
    #   resp.data.db_cluster.reader_endpoint #=> String
    #   resp.data.db_cluster.multi_az #=> Boolean
    #   resp.data.db_cluster.engine #=> String
    #   resp.data.db_cluster.engine_version #=> String
    #   resp.data.db_cluster.latest_restorable_time #=> Time
    #   resp.data.db_cluster.port #=> Integer
    #   resp.data.db_cluster.master_username #=> String
    #   resp.data.db_cluster.db_cluster_option_group_memberships #=> Array<DBClusterOptionGroupStatus>
    #   resp.data.db_cluster.db_cluster_option_group_memberships[0] #=> Types::DBClusterOptionGroupStatus
    #   resp.data.db_cluster.db_cluster_option_group_memberships[0].db_cluster_option_group_name #=> String
    #   resp.data.db_cluster.db_cluster_option_group_memberships[0].status #=> String
    #   resp.data.db_cluster.preferred_backup_window #=> String
    #   resp.data.db_cluster.preferred_maintenance_window #=> String
    #   resp.data.db_cluster.replication_source_identifier #=> String
    #   resp.data.db_cluster.read_replica_identifiers #=> Array<String>
    #   resp.data.db_cluster.read_replica_identifiers[0] #=> String
    #   resp.data.db_cluster.db_cluster_members #=> Array<DBClusterMember>
    #   resp.data.db_cluster.db_cluster_members[0] #=> Types::DBClusterMember
    #   resp.data.db_cluster.db_cluster_members[0].db_instance_identifier #=> String
    #   resp.data.db_cluster.db_cluster_members[0].is_cluster_writer #=> Boolean
    #   resp.data.db_cluster.db_cluster_members[0].db_cluster_parameter_group_status #=> String
    #   resp.data.db_cluster.db_cluster_members[0].promotion_tier #=> Integer
    #   resp.data.db_cluster.vpc_security_groups #=> Array<VpcSecurityGroupMembership>
    #   resp.data.db_cluster.vpc_security_groups[0] #=> Types::VpcSecurityGroupMembership
    #   resp.data.db_cluster.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.data.db_cluster.vpc_security_groups[0].status #=> String
    #   resp.data.db_cluster.hosted_zone_id #=> String
    #   resp.data.db_cluster.storage_encrypted #=> Boolean
    #   resp.data.db_cluster.kms_key_id #=> String
    #   resp.data.db_cluster.db_cluster_resource_id #=> String
    #   resp.data.db_cluster.db_cluster_arn #=> String
    #   resp.data.db_cluster.associated_roles #=> Array<DBClusterRole>
    #   resp.data.db_cluster.associated_roles[0] #=> Types::DBClusterRole
    #   resp.data.db_cluster.associated_roles[0].role_arn #=> String
    #   resp.data.db_cluster.associated_roles[0].status #=> String
    #   resp.data.db_cluster.associated_roles[0].feature_name #=> String
    #   resp.data.db_cluster.iam_database_authentication_enabled #=> Boolean
    #   resp.data.db_cluster.clone_group_id #=> String
    #   resp.data.db_cluster.cluster_create_time #=> Time
    #   resp.data.db_cluster.copy_tags_to_snapshot #=> Boolean
    #   resp.data.db_cluster.enabled_cloudwatch_logs_exports #=> Array<String>
    #   resp.data.db_cluster.enabled_cloudwatch_logs_exports[0] #=> String
    #   resp.data.db_cluster.deletion_protection #=> Boolean
    #   resp.data.db_cluster.cross_account_clone #=> Boolean
    #   resp.data.db_cluster.automatic_restart_time #=> Time
    #
    def stop_db_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopDBClusterInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopDBClusterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopDBCluster
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DBClusterNotFoundFault, Errors::InvalidDBClusterStateFault, Errors::InvalidDBInstanceStateFault]),
        data_parser: Parsers::StopDBCluster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopDBCluster,
        stubs: @stubs,
        params_class: Params::StopDBClusterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_db_cluster
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
