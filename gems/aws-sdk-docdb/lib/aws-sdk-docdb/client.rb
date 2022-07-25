# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::DocDB
  # An API client for AmazonRDSv19
  # See {#initialize} for a full list of supported configuration options
  # <p>Amazon DocumentDB API documentation</p>
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
    def initialize(config = AWS::SDK::DocDB::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Adds a source identifier to an existing event notification
    #             subscription.</p>
    #
    # @param [Hash] params
    #   See {Types::AddSourceIdentifierToSubscriptionInput}.
    #
    # @option params [String] :subscription_name
    #   <p>The name of the Amazon DocumentDB event notification subscription that you
    #               want to add a source identifier to.</p>
    #
    # @option params [String] :source_identifier
    #   <p>The identifier of the event source to be added:</p>
    #           <ul>
    #               <li>
    #                   <p>If the source type is an instance, a
    #                       <code>DBInstanceIdentifier</code> must be provided.</p>
    #               </li>
    #               <li>
    #                   <p>If the source type is a security group, a
    #                       <code>DBSecurityGroupName</code> must be provided.</p>
    #               </li>
    #               <li>
    #                   <p>If the source type is a parameter group, a
    #                       <code>DBParameterGroupName</code> must be provided.</p>
    #               </li>
    #               <li>
    #                   <p>If the source type is a snapshot, a
    #                       <code>DBSnapshotIdentifier</code> must be provided.</p>
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
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::SourceNotFoundFault, Errors::SubscriptionNotFoundFault]),
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

    # <p>Adds metadata tags to an Amazon DocumentDB resource. You can use these tags
    #             with cost allocation reporting to track costs that are associated
    #             with Amazon DocumentDB resources or in a <code>Condition</code> statement in
    #             an Identity and Access Management (IAM) policy for Amazon DocumentDB.</p>
    #
    # @param [Hash] params
    #   See {Types::AddTagsToResourceInput}.
    #
    # @option params [String] :resource_name
    #   <p>The Amazon DocumentDB resource that the tags are added to. This value is an
    #               Amazon Resource Name .</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to be assigned to the Amazon DocumentDB resource.</p>
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
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DBInstanceNotFoundFault, Errors::DBSnapshotNotFoundFault, Errors::DBClusterNotFoundFault]),
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

    # <p>Applies a pending maintenance action to a resource (for example,
    #             to an Amazon DocumentDB instance).</p>
    #
    # @param [Hash] params
    #   See {Types::ApplyPendingMaintenanceActionInput}.
    #
    # @option params [String] :resource_identifier
    #   <p>The Amazon Resource Name (ARN) of the resource that the pending
    #               maintenance action applies to.</p>
    #
    # @option params [String] :apply_action
    #   <p>The pending maintenance action to apply to this resource.</p>
    #           <p>Valid values: <code>system-update</code>, <code>db-upgrade</code>
    #           </p>
    #
    # @option params [String] :opt_in_type
    #   <p>A value that specifies the type of opt-in request or undoes an
    #               opt-in request. An opt-in request of type <code>immediate</code>
    #               can't be undone.</p>
    #           <p>Valid values:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>immediate</code> - Apply the maintenance action
    #                       immediately.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>next-maintenance</code> - Apply the maintenance
    #                       action during the next maintenance window for the resource.
    #                       </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>undo-opt-in</code> - Cancel any existing
    #                       <code>next-maintenance</code> opt-in requests.</p>
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
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundFault, Errors::InvalidDBClusterStateFault, Errors::InvalidDBInstanceStateFault]),
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

    # <p>Copies the specified cluster parameter group.</p>
    #
    # @param [Hash] params
    #   See {Types::CopyDBClusterParameterGroupInput}.
    #
    # @option params [String] :source_db_cluster_parameter_group_identifier
    #   <p>The identifier or Amazon Resource Name (ARN) for the source cluster parameter group.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must specify a valid cluster parameter group.</p>
    #               </li>
    #               <li>
    #                   <p>If the source cluster parameter group is in the same Amazon Web Services Region as the copy, specify a valid parameter group identifier; for example, <code>my-db-cluster-param-group</code>, or a valid ARN.</p>
    #               </li>
    #               <li>
    #                   <p>If the source parameter group is in a different Amazon Web Services Region than the copy, specify a valid cluster parameter group ARN; for example, <code>arn:aws:rds:us-east-1:123456789012:sample-cluster:sample-parameter-group</code>.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :target_db_cluster_parameter_group_identifier
    #   <p>The identifier for the copied cluster parameter group.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Cannot be null, empty, or blank.</p>
    #               </li>
    #               <li>
    #                   <p>Must contain from 1 to 255 letters, numbers, or hyphens.
    #                       </p>
    #               </li>
    #               <li>
    #                   <p>The first character must be a letter.</p>
    #               </li>
    #               <li>
    #                   <p>Cannot end with a hyphen or contain two consecutive hyphens.
    #                       </p>
    #               </li>
    #            </ul>
    #           <p>Example: <code>my-cluster-param-group1</code>
    #           </p>
    #
    # @option params [String] :target_db_cluster_parameter_group_description
    #   <p>A description for the copied cluster parameter group.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags that are to be assigned to the parameter group.</p>
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
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DBParameterGroupQuotaExceededFault, Errors::DBParameterGroupAlreadyExistsFault, Errors::DBParameterGroupNotFoundFault]),
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

    # <p>Copies a snapshot of a cluster.</p>
    #
    #         <p>To copy a cluster snapshot from a shared manual cluster snapshot,
    #             <code>SourceDBClusterSnapshotIdentifier</code> must be the Amazon
    #             Resource Name (ARN) of the shared cluster snapshot. You can only
    #             copy a shared DB cluster snapshot, whether encrypted or not, in the
    #             same Amazon Web Services Region.</p>
    #
    #         <p>To cancel the copy operation after it is in progress, delete the
    #             target cluster snapshot identified by
    #             <code>TargetDBClusterSnapshotIdentifier</code> while that cluster
    #             snapshot is in the <i>copying</i> status.</p>
    #
    # @param [Hash] params
    #   See {Types::CopyDBClusterSnapshotInput}.
    #
    # @option params [String] :source_db_cluster_snapshot_identifier
    #   <p>The identifier of the cluster snapshot to copy. This parameter is
    #               not case sensitive.</p>
    #
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must specify a valid system snapshot in the
    #                       <i>available</i> state.</p>
    #               </li>
    #               <li>
    #                   <p>If the source snapshot is in the same Amazon Web Services Region as the copy, specify a valid snapshot identifier.</p>
    #               </li>
    #               <li>
    #
    #                   <p>If the source snapshot is in a different Amazon Web Services Region than the copy, specify a valid cluster snapshot ARN.</p>
    #               </li>
    #            </ul>
    #           <p>Example: <code>my-cluster-snapshot1</code>
    #           </p>
    #
    # @option params [String] :target_db_cluster_snapshot_identifier
    #   <p>The identifier of the new cluster snapshot to create from the
    #               source cluster snapshot. This parameter is not case sensitive.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must contain from 1 to 63 letters, numbers, or hyphens.
    #                       </p>
    #               </li>
    #               <li>
    #                   <p>The first character must be a letter.</p>
    #               </li>
    #               <li>
    #                   <p>Cannot end with a hyphen or contain two consecutive hyphens.
    #                       </p>
    #               </li>
    #            </ul>
    #           <p>Example: <code>my-cluster-snapshot2</code>
    #           </p>
    #
    # @option params [String] :kms_key_id
    #   <p>The KMS key ID for an encrypted cluster snapshot. The KMS
    #               key ID is the Amazon Resource Name (ARN), KMS key identifier, or
    #               the KMS key alias for the KMS encryption key. </p>
    #
    #           <p>If you copy an encrypted cluster snapshot from your Amazon Web Services account, you can specify a value for <code>KmsKeyId</code> to encrypt the copy with a new KMS encryption key. If you don't specify a value for <code>KmsKeyId</code>, then the copy of the cluster snapshot is encrypted with the same KMS key as the source cluster snapshot.</p>
    #
    #           <p>If you copy an encrypted cluster snapshot that is shared from another Amazon Web Services account, then you must specify a value for <code>KmsKeyId</code>.</p>
    #
    #           <p>To copy an encrypted cluster snapshot to another Amazon Web Services Region, set <code>KmsKeyId</code> to the KMS key ID that you want to use to encrypt the copy of the cluster snapshot in the destination Region. KMS encryption keys are specific to the Amazon Web Services Region that they are created in, and you can't use encryption keys from one Amazon Web Services Region in another Amazon Web Services Region.</p>
    #
    #           <p>If you copy an unencrypted cluster snapshot and specify a value for the <code>KmsKeyId</code> parameter, an error is returned.</p>
    #
    # @option params [String] :pre_signed_url
    #   <p>The URL that contains a Signature Version 4 signed request for the<code>CopyDBClusterSnapshot</code> API action in the Amazon Web Services Region that contains the source cluster snapshot to copy. You must use the <code>PreSignedUrl</code> parameter when copying a cluster snapshot from another Amazon Web Services Region.</p>
    #
    #           <p>If you are using an Amazon Web Services SDK tool or the CLI, you can specify
    #               <code>SourceRegion</code> (or <code>--source-region</code> for the
    #               CLI) instead of specifying <code>PreSignedUrl</code> manually.
    #               Specifying <code>SourceRegion</code> autogenerates a pre-signed URL
    #               that is a valid request for the operation that can be executed in
    #               the source Amazon Web Services Region.</p>
    #
    #           <p>The presigned URL must be a valid request for the
    #               <code>CopyDBClusterSnapshot</code> API action that can be executed
    #               in the source Amazon Web Services Region that contains the cluster snapshot to be
    #               copied. The presigned URL request must contain the following
    #               parameter values:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>SourceRegion</code> - The ID of the region that
    #                       contains the snapshot to be copied.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>SourceDBClusterSnapshotIdentifier</code> - The
    #                       identifier for the the encrypted cluster snapshot to be
    #                       copied. This identifier must be in the Amazon Resource Name
    #                       (ARN) format for the source Amazon Web Services Region. For example, if you
    #                       are copying an encrypted cluster snapshot from the us-east-1
    #                       Amazon Web Services Region, then your
    #                       <code>SourceDBClusterSnapshotIdentifier</code> looks
    #                       something like the following:
    #                       <code>arn:aws:rds:us-east-1:12345678012:sample-cluster:sample-cluster-snapshot</code>.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>TargetDBClusterSnapshotIdentifier</code> - The
    #                       identifier for the new cluster snapshot to be created. This
    #                       parameter isn't case sensitive.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Boolean] :copy_tags
    #   <p>Set to <code>true</code> to copy all tags from the source cluster
    #               snapshot to the target cluster snapshot, and otherwise
    #               <code>false</code>. The default is <code>false</code>.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to be assigned to the cluster snapshot.</p>
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
    #   resp.data.db_cluster_snapshot.status #=> String
    #   resp.data.db_cluster_snapshot.port #=> Integer
    #   resp.data.db_cluster_snapshot.vpc_id #=> String
    #   resp.data.db_cluster_snapshot.cluster_create_time #=> Time
    #   resp.data.db_cluster_snapshot.master_username #=> String
    #   resp.data.db_cluster_snapshot.engine_version #=> String
    #   resp.data.db_cluster_snapshot.snapshot_type #=> String
    #   resp.data.db_cluster_snapshot.percent_progress #=> Integer
    #   resp.data.db_cluster_snapshot.storage_encrypted #=> Boolean
    #   resp.data.db_cluster_snapshot.kms_key_id #=> String
    #   resp.data.db_cluster_snapshot.db_cluster_snapshot_arn #=> String
    #   resp.data.db_cluster_snapshot.source_db_cluster_snapshot_arn #=> String
    #
    def copy_db_cluster_snapshot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CopyDBClusterSnapshotInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DBClusterSnapshotNotFoundFault, Errors::InvalidDBClusterStateFault, Errors::InvalidDBClusterSnapshotStateFault, Errors::DBClusterSnapshotAlreadyExistsFault, Errors::SnapshotQuotaExceededFault, Errors::KMSKeyNotAccessibleFault]),
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

    # <p>Creates a new Amazon DocumentDB cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDBClusterInput}.
    #
    # @option params [Array<String>] :availability_zones
    #   <p>A list of Amazon EC2 Availability Zones that instances in the
    #               cluster can be created in.</p>
    #
    # @option params [Integer] :backup_retention_period
    #   <p>The number of days for which automated backups are retained. You
    #               must specify a minimum value of 1.</p>
    #           <p>Default: 1</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be a value from 1 to 35.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :db_cluster_identifier
    #   <p>The cluster identifier. This parameter is stored as a lowercase
    #               string.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must contain from 1 to 63 letters, numbers, or hyphens.
    #                       </p>
    #               </li>
    #               <li>
    #                   <p>The first character must be a letter.</p>
    #               </li>
    #               <li>
    #                   <p>Cannot end with a hyphen or contain two consecutive hyphens.
    #                       </p>
    #               </li>
    #            </ul>
    #           <p>Example: <code>my-cluster</code>
    #           </p>
    #
    # @option params [String] :db_cluster_parameter_group_name
    #   <p>The name of the cluster parameter group to associate with this
    #               cluster.</p>
    #
    # @option params [Array<String>] :vpc_security_group_ids
    #   <p>A list of EC2 VPC security groups to associate with this cluster.
    #               </p>
    #
    # @option params [String] :db_subnet_group_name
    #   <p>A subnet group to associate with this cluster.</p>
    #           <p>Constraints: Must match the name of an existing
    #               <code>DBSubnetGroup</code>. Must not be default.</p>
    #           <p>Example: <code>mySubnetgroup</code>
    #           </p>
    #
    # @option params [String] :engine
    #   <p>The name of the database engine to be used for this cluster.</p>
    #           <p>Valid values: <code>docdb</code>
    #           </p>
    #
    # @option params [String] :engine_version
    #   <p>The version number of the database engine to use. The <code>--engine-version</code> will default to the latest major engine version. For production workloads, we recommend explicitly declaring this parameter with the intended major engine version.</p>
    #
    # @option params [Integer] :port
    #   <p>The port number on which the instances in the cluster accept
    #               connections.</p>
    #
    # @option params [String] :master_username
    #   <p>The name of the master user for the cluster.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be from 1 to 63 letters or numbers.</p>
    #               </li>
    #               <li>
    #                   <p>The first character must be a letter.</p>
    #               </li>
    #               <li>
    #                   <p>Cannot be a reserved word for the chosen database engine.
    #                       </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :master_user_password
    #   <p>The password for the master database user. This password can
    #               contain any printable ASCII character except forward slash (/),
    #               double quote ("), or the "at" symbol (@).</p>
    #           <p>Constraints: Must contain from 8 to 100 characters.</p>
    #
    # @option params [String] :preferred_backup_window
    #   <p>The daily time range during which automated backups are created if
    #               automated backups are enabled using the <code>BackupRetentionPeriod</code> parameter. </p>
    #           <p>The default is a 30-minute window selected at random from an 8-hour block of time for each Amazon Web Services Region. </p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be in the format <code>hh24:mi-hh24:mi</code>.</p>
    #               </li>
    #               <li>
    #                   <p>Must be in Universal Coordinated Time (UTC).</p>
    #               </li>
    #               <li>
    #                   <p>Must not conflict with the preferred maintenance window.
    #                       </p>
    #               </li>
    #               <li>
    #                   <p>Must be at least 30 minutes.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :preferred_maintenance_window
    #   <p>The weekly time range during which system maintenance can occur,
    #               in Universal Coordinated Time (UTC).</p>
    #           <p>Format: <code>ddd:hh24:mi-ddd:hh24:mi</code>
    #           </p>
    #           <p>The default is a 30-minute window selected at random from an 8-hour block of time for each Amazon Web Services Region, occurring on a random day of the week.</p>
    #           <p>Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun</p>
    #           <p>Constraints: Minimum 30-minute window.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to be assigned to the cluster.</p>
    #
    # @option params [Boolean] :storage_encrypted
    #   <p>Specifies whether the cluster is encrypted.</p>
    #
    # @option params [String] :kms_key_id
    #   <p>The KMS key identifier for an encrypted cluster.</p>
    #           <p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If you are creating a cluster using the same Amazon Web Services account that owns the KMS encryption key that is used to encrypt the new cluster, you can use the KMS key alias instead of the ARN for the KMS encryption key.</p>
    #           <p>If an encryption key is not specified in <code>KmsKeyId</code>:
    #               </p>
    #           <ul>
    #               <li>
    #                   <p>If the <code>StorageEncrypted</code> parameter is
    #                       <code>true</code>, Amazon DocumentDB uses your default encryption key.
    #                       </p>
    #               </li>
    #            </ul>
    #           <p>KMS creates the default encryption key for your Amazon Web Services account. Your Amazon Web Services account has a different default encryption key for each Amazon Web Services Regions.</p>
    #
    # @option params [String] :pre_signed_url
    #   <p>Not currently supported.
    #               </p>
    #
    # @option params [Array<String>] :enable_cloudwatch_logs_exports
    #   <p>A list of log types that need to be enabled for exporting to Amazon
    #               CloudWatch Logs. You can enable audit logs or profiler logs. For more
    #               information, see <a href="https://docs.aws.amazon.com/documentdb/latest/developerguide/event-auditing.html">
    #                   Auditing Amazon DocumentDB Events</a>
    #               and <a href="https://docs.aws.amazon.com/documentdb/latest/developerguide/profiling.html">
    #                   Profiling Amazon DocumentDB Operations</a>.
    #           </p>
    #
    # @option params [Boolean] :deletion_protection
    #   <p>Specifies whether this cluster can be deleted. If
    #               <code>DeletionProtection</code> is enabled, the cluster cannot be
    #               deleted unless it is modified and <code>DeletionProtection</code> is
    #               disabled. <code>DeletionProtection</code> protects clusters from
    #               being accidentally deleted.</p>
    #
    # @option params [String] :global_cluster_identifier
    #   <p>The cluster identifier of the new global cluster.</p>
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
    #     preferred_backup_window: 'PreferredBackupWindow',
    #     preferred_maintenance_window: 'PreferredMaintenanceWindow',
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ],
    #     storage_encrypted: false,
    #     kms_key_id: 'KmsKeyId',
    #     pre_signed_url: 'PreSignedUrl',
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
    #   resp.data.db_cluster.availability_zones #=> Array<String>
    #   resp.data.db_cluster.availability_zones[0] #=> String
    #   resp.data.db_cluster.backup_retention_period #=> Integer
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
    #   resp.data.db_cluster.cluster_create_time #=> Time
    #   resp.data.db_cluster.enabled_cloudwatch_logs_exports #=> Array<String>
    #   resp.data.db_cluster.enabled_cloudwatch_logs_exports[0] #=> String
    #   resp.data.db_cluster.deletion_protection #=> Boolean
    #
    def create_db_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDBClusterInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidGlobalClusterStateFault, Errors::DBClusterAlreadyExistsFault, Errors::DBClusterQuotaExceededFault, Errors::InvalidDBClusterStateFault, Errors::InvalidVPCNetworkStateFault, Errors::DBInstanceNotFoundFault, Errors::InvalidDBInstanceStateFault, Errors::DBSubnetGroupNotFoundFault, Errors::GlobalClusterNotFoundFault, Errors::InvalidDBSubnetGroupStateFault, Errors::InvalidSubnet, Errors::DBSubnetGroupDoesNotCoverEnoughAZs, Errors::DBClusterNotFoundFault, Errors::DBClusterParameterGroupNotFoundFault, Errors::InsufficientStorageClusterCapacityFault, Errors::KMSKeyNotAccessibleFault, Errors::StorageQuotaExceededFault]),
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

    # <p>Creates a new cluster parameter group.</p>
    #         <p>Parameters in a cluster parameter group apply to all of the
    #             instances in a cluster.</p>
    #         <p>A cluster parameter group is initially created with the default
    #             parameters for the database engine used by instances in the cluster.
    #             In Amazon DocumentDB, you cannot make modifications directly to the
    #             <code>default.docdb3.6</code> cluster parameter group. If your
    #             Amazon DocumentDB cluster is using the default cluster parameter group and you
    #             want to modify a value in it, you must first <a href="https://docs.aws.amazon.com/documentdb/latest/developerguide/cluster_parameter_group-create.html">
    #                 create a new parameter group</a>
    #             or <a href="https://docs.aws.amazon.com/documentdb/latest/developerguide/cluster_parameter_group-copy.html">
    #                 copy an existing parameter group</a>,
    #             modify it, and then apply the modified parameter group to your
    #             cluster. For the new cluster parameter group and associated settings
    #             to take effect, you must then reboot the instances in the cluster
    #             without failover. For more information,
    #             see <a href="https://docs.aws.amazon.com/documentdb/latest/developerguide/cluster_parameter_group-modify.html">
    #                 Modifying Amazon DocumentDB Cluster Parameter Groups</a>.
    #             </p>
    #
    # @param [Hash] params
    #   See {Types::CreateDBClusterParameterGroupInput}.
    #
    # @option params [String] :db_cluster_parameter_group_name
    #   <p>The name of the cluster parameter group.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must not match the name of an existing
    #                       <code>DBClusterParameterGroup</code>.</p>
    #               </li>
    #            </ul>
    #           <note>
    #               <p>This value is stored as a lowercase string.</p>
    #           </note>
    #
    # @option params [String] :db_parameter_group_family
    #   <p>The cluster parameter group family name.</p>
    #
    # @option params [String] :description
    #   <p>The description for the cluster parameter group.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to be assigned to the cluster parameter group.</p>
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
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DBParameterGroupQuotaExceededFault, Errors::DBParameterGroupAlreadyExistsFault]),
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

    # <p>Creates a snapshot of a cluster. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateDBClusterSnapshotInput}.
    #
    # @option params [String] :db_cluster_snapshot_identifier
    #   <p>The identifier of the cluster snapshot. This parameter is stored
    #               as a lowercase string.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                   <p>The first character must be a letter.</p>
    #               </li>
    #               <li>
    #                   <p>Cannot end with a hyphen or contain two consecutive hyphens.
    #                       </p>
    #               </li>
    #            </ul>
    #           <p>Example: <code>my-cluster-snapshot1</code>
    #           </p>
    #
    # @option params [String] :db_cluster_identifier
    #   <p>The identifier of the cluster to create a snapshot for. This
    #               parameter is not case sensitive.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must match the identifier of an existing
    #                       <code>DBCluster</code>.</p>
    #               </li>
    #            </ul>
    #           <p>Example: <code>my-cluster</code>
    #           </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to be assigned to the cluster snapshot.</p>
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
    #   resp.data.db_cluster_snapshot.status #=> String
    #   resp.data.db_cluster_snapshot.port #=> Integer
    #   resp.data.db_cluster_snapshot.vpc_id #=> String
    #   resp.data.db_cluster_snapshot.cluster_create_time #=> Time
    #   resp.data.db_cluster_snapshot.master_username #=> String
    #   resp.data.db_cluster_snapshot.engine_version #=> String
    #   resp.data.db_cluster_snapshot.snapshot_type #=> String
    #   resp.data.db_cluster_snapshot.percent_progress #=> Integer
    #   resp.data.db_cluster_snapshot.storage_encrypted #=> Boolean
    #   resp.data.db_cluster_snapshot.kms_key_id #=> String
    #   resp.data.db_cluster_snapshot.db_cluster_snapshot_arn #=> String
    #   resp.data.db_cluster_snapshot.source_db_cluster_snapshot_arn #=> String
    #
    def create_db_cluster_snapshot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDBClusterSnapshotInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidDBClusterStateFault, Errors::InvalidDBClusterSnapshotStateFault, Errors::DBClusterSnapshotAlreadyExistsFault, Errors::SnapshotQuotaExceededFault, Errors::DBClusterNotFoundFault]),
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

    # <p>Creates a new instance.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDBInstanceInput}.
    #
    # @option params [String] :db_instance_identifier
    #   <p>The instance identifier. This parameter is stored as a lowercase string.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                   <p>The first character must be a letter.</p>
    #               </li>
    #               <li>
    #                   <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #           <p>Example: <code>mydbinstance</code>
    #           </p>
    #
    # @option params [String] :db_instance_class
    #   <p>The compute and memory capacity of the instance; for example,
    #                   <code>db.r5.large</code>. </p>
    #
    # @option params [String] :engine
    #   <p>The name of the database engine to be used for this instance.</p>
    #           <p>Valid value: <code>docdb</code>
    #            </p>
    #
    # @option params [String] :availability_zone
    #   <p>The Amazon EC2 Availability Zone that the instance is created in. </p>
    #           <p>Default: A random, system-chosen Availability Zone in the endpoint's Amazon Web Services Region.</p>
    #           <p>Example: <code>us-east-1d</code>
    #            </p>
    #
    # @option params [String] :preferred_maintenance_window
    #   <p>The time range each week during which system maintenance can occur, in Universal
    #               Coordinated Time (UTC).</p>
    #           <p> Format: <code>ddd:hh24:mi-ddd:hh24:mi</code>
    #           </p>
    #           <p>The default is a 30-minute window selected at random from an 8-hour block of time for
    #               each Amazon Web Services Region, occurring on a random day of the week. </p>
    #           <p>Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun</p>
    #           <p>Constraints: Minimum 30-minute window.</p>
    #
    # @option params [Boolean] :auto_minor_version_upgrade
    #   <p>This parameter does not apply to Amazon DocumentDB. Amazon DocumentDB does not perform minor version upgrades regardless of the value set.</p>
    #           <p>Default: <code>false</code>
    #           </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to be assigned to the instance. You can assign up to
    #              10 tags to an instance.</p>
    #
    # @option params [String] :db_cluster_identifier
    #   <p>The identifier of the cluster that the instance will belong to.</p>
    #
    # @option params [Integer] :promotion_tier
    #   <p>A value that specifies the order in which an Amazon DocumentDB replica is promoted to the
    #               primary instance after a failure of the existing primary instance.</p>
    #           <p>Default: 1</p>
    #           <p>Valid values: 0-15</p>
    #
    # @option params [Boolean] :enable_performance_insights
    #   <p>A value that indicates whether to enable Performance Insights for the DB Instance. For
    #               more information, see <a href="https://docs.aws.amazon.com/documentdb/latest/developerguide/performance-insights.html">Using Amazon
    #                   Performance Insights</a>.</p>
    #
    # @option params [String] :performance_insights_kms_key_id
    #   <p>The KMS key identifier for encryption of Performance Insights
    #               data.</p>
    #           <p>The KMS key identifier is the key ARN, key ID, alias ARN, or alias name
    #               for the KMS key.</p>
    #           <p>If you do not specify a value for PerformanceInsightsKMSKeyId, then Amazon DocumentDB uses your
    #               default KMS key. There is a default KMS key for your
    #               Amazon Web Services account. Your Amazon Web Services account has a different
    #               default KMS key for each Amazon Web Services region.</p>
    #
    # @return [Types::CreateDBInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_db_instance(
    #     db_instance_identifier: 'DBInstanceIdentifier', # required
    #     db_instance_class: 'DBInstanceClass', # required
    #     engine: 'Engine', # required
    #     availability_zone: 'AvailabilityZone',
    #     preferred_maintenance_window: 'PreferredMaintenanceWindow',
    #     auto_minor_version_upgrade: false,
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ],
    #     db_cluster_identifier: 'DBClusterIdentifier', # required
    #     promotion_tier: 1,
    #     enable_performance_insights: false,
    #     performance_insights_kms_key_id: 'PerformanceInsightsKMSKeyId'
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
    #   resp.data.db_instance.endpoint #=> Types::Endpoint
    #   resp.data.db_instance.endpoint.address #=> String
    #   resp.data.db_instance.endpoint.port #=> Integer
    #   resp.data.db_instance.endpoint.hosted_zone_id #=> String
    #   resp.data.db_instance.instance_create_time #=> Time
    #   resp.data.db_instance.preferred_backup_window #=> String
    #   resp.data.db_instance.backup_retention_period #=> Integer
    #   resp.data.db_instance.vpc_security_groups #=> Array<VpcSecurityGroupMembership>
    #   resp.data.db_instance.vpc_security_groups[0] #=> Types::VpcSecurityGroupMembership
    #   resp.data.db_instance.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.data.db_instance.vpc_security_groups[0].status #=> String
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
    #   resp.data.db_instance.engine_version #=> String
    #   resp.data.db_instance.auto_minor_version_upgrade #=> Boolean
    #   resp.data.db_instance.publicly_accessible #=> Boolean
    #   resp.data.db_instance.status_infos #=> Array<DBInstanceStatusInfo>
    #   resp.data.db_instance.status_infos[0] #=> Types::DBInstanceStatusInfo
    #   resp.data.db_instance.status_infos[0].status_type #=> String
    #   resp.data.db_instance.status_infos[0].normal #=> Boolean
    #   resp.data.db_instance.status_infos[0].status #=> String
    #   resp.data.db_instance.status_infos[0].message #=> String
    #   resp.data.db_instance.db_cluster_identifier #=> String
    #   resp.data.db_instance.storage_encrypted #=> Boolean
    #   resp.data.db_instance.kms_key_id #=> String
    #   resp.data.db_instance.dbi_resource_id #=> String
    #   resp.data.db_instance.ca_certificate_identifier #=> String
    #   resp.data.db_instance.promotion_tier #=> Integer
    #   resp.data.db_instance.db_instance_arn #=> String
    #   resp.data.db_instance.enabled_cloudwatch_logs_exports #=> Array<String>
    #
    def create_db_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDBInstanceInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DBSecurityGroupNotFoundFault, Errors::InvalidDBClusterStateFault, Errors::InvalidVPCNetworkStateFault, Errors::InstanceQuotaExceededFault, Errors::StorageTypeNotSupportedFault, Errors::AuthorizationNotFoundFault, Errors::DBSubnetGroupNotFoundFault, Errors::InvalidSubnet, Errors::DBSubnetGroupDoesNotCoverEnoughAZs, Errors::DBParameterGroupNotFoundFault, Errors::DBClusterNotFoundFault, Errors::InsufficientDBInstanceCapacityFault, Errors::DBInstanceAlreadyExistsFault, Errors::KMSKeyNotAccessibleFault, Errors::StorageQuotaExceededFault]),
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

    # <p>Creates a new subnet group. subnet groups must contain at least one subnet in at
    #             least two Availability Zones in the Amazon Web Services Region.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDBSubnetGroupInput}.
    #
    # @option params [String] :db_subnet_group_name
    #   <p>The name for the subnet group. This value is stored as a lowercase string.</p>
    #           <p>Constraints: Must contain no more than 255 letters, numbers, periods, underscores,
    #               spaces, or hyphens. Must not be default.</p>
    #           <p>Example: <code>mySubnetgroup</code>
    #           </p>
    #
    # @option params [String] :db_subnet_group_description
    #   <p>The description for the subnet group.</p>
    #
    # @option params [Array<String>] :subnet_ids
    #   <p>The Amazon EC2 subnet IDs for the subnet group.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to be assigned to the subnet group.</p>
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
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidSubnet, Errors::DBSubnetQuotaExceededFault, Errors::DBSubnetGroupDoesNotCoverEnoughAZs, Errors::DBSubnetGroupQuotaExceededFault, Errors::DBSubnetGroupAlreadyExistsFault]),
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

    # <p>Creates an Amazon DocumentDB event notification subscription. This action requires a topic Amazon Resource Name (ARN) created by using the Amazon DocumentDB console, the Amazon SNS console, or the Amazon SNS API. To obtain an ARN with Amazon SNS, you must create a topic in Amazon SNS and subscribe to the topic. The ARN is displayed in the Amazon SNS console.</p>
    #         <p>You can specify the type of source (<code>SourceType</code>) that you want to be notified of. You can also provide a list of Amazon DocumentDB sources (<code>SourceIds</code>) that trigger the events, and you can provide a list of event categories (<code>EventCategories</code>) for events that you want to be notified of. For example, you can specify <code>SourceType = db-instance</code>, <code>SourceIds = mydbinstance1, mydbinstance2</code> and <code>EventCategories = Availability, Backup</code>.</p>
    #         <p>If you specify both the <code>SourceType</code> and <code>SourceIds</code> (such as <code>SourceType = db-instance</code> and <code>SourceIdentifier = myDBInstance1</code>), you are notified of all the <code>db-instance</code> events for the specified source. If you specify a <code>SourceType</code> but do not specify a <code>SourceIdentifier</code>, you receive notice of the events for that source type for all your Amazon DocumentDB sources. If you do not specify either the <code>SourceType</code> or the <code>SourceIdentifier</code>, you are notified of events generated from all Amazon DocumentDB sources belonging to your customer account.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateEventSubscriptionInput}.
    #
    # @option params [String] :subscription_name
    #   <p>The name of the subscription.</p>
    #           <p>Constraints: The name must be fewer than 255 characters.</p>
    #
    # @option params [String] :sns_topic_arn
    #   <p>The Amazon Resource Name (ARN) of the SNS topic created for event notification. Amazon SNS creates the ARN when you create a topic and subscribe to it.</p>
    #
    # @option params [String] :source_type
    #   <p>The type of source that is generating the events. For example, if you want to be notified of events generated by an instance, you would set this parameter to <code>db-instance</code>. If this value is not specified, all events are returned.</p>
    #           <p>Valid values: <code>db-instance</code>, <code>db-cluster</code>,
    #                   <code>db-parameter-group</code>, <code>db-security-group</code>,
    #                   <code>db-cluster-snapshot</code>
    #           </p>
    #
    # @option params [Array<String>] :event_categories
    #   <p> A list of event categories for a <code>SourceType</code> that you want to subscribe to. </p>
    #
    # @option params [Array<String>] :source_ids
    #   <p>The list of identifiers of the event sources for which events are returned. If not specified, then all sources are included in the response. An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens; it can't end with a
    #               hyphen or contain two consecutive hyphens.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>If <code>SourceIds</code> are provided, <code>SourceType</code> must also be
    #                       provided.</p>
    #               </li>
    #               <li>
    #                   <p>If the source type is an instance, a <code>DBInstanceIdentifier</code> must
    #                       be provided.</p>
    #               </li>
    #               <li>
    #                   <p>If the source type is a security group, a <code>DBSecurityGroupName</code>
    #                       must be provided.</p>
    #               </li>
    #               <li>
    #                   <p>If the source type is a parameter group, a
    #                           <code>DBParameterGroupName</code> must be provided.</p>
    #               </li>
    #               <li>
    #                   <p>If the source type is a snapshot, a <code>DBSnapshotIdentifier</code> must
    #                       be provided.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Boolean] :enabled
    #   <p> A Boolean value; set to <code>true</code> to activate the subscription, set to <code>false</code> to create the subscription but not active it. </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to be assigned to the event subscription.</p>
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
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::SNSInvalidTopicFault, Errors::SNSTopicArnNotFoundFault, Errors::SubscriptionAlreadyExistFault, Errors::SubscriptionCategoryNotFoundFault, Errors::SourceNotFoundFault, Errors::EventSubscriptionQuotaExceededFault, Errors::SNSNoAuthorizationFault]),
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

    # <p>Creates an Amazon DocumentDB global cluster that can span multiple multiple Amazon Web Services Regions. The global cluster contains one primary cluster with read-write capability, and up-to give read-only secondary clusters. Global clusters uses storage-based fast replication across regions with latencies less than one second, using dedicated infrastructure with no impact to your workload’s performance.</p>
    #         <p></p>
    #         <p>You can create a global cluster that is initially empty, and then add a primary and a secondary to it. Or you can specify an existing cluster during the create operation, and this cluster becomes the primary of the global cluster. </p>
    #         <note>
    #             <p>This action only applies to Amazon DocumentDB clusters.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::CreateGlobalClusterInput}.
    #
    # @option params [String] :global_cluster_identifier
    #   <p>The cluster identifier of the new global cluster.</p>
    #
    # @option params [String] :source_db_cluster_identifier
    #   <p>The Amazon Resource Name (ARN) to use as the primary cluster of the global cluster. This parameter is optional.</p>
    #
    # @option params [String] :engine
    #   <p>The name of the database engine to be used for this cluster.</p>
    #
    # @option params [String] :engine_version
    #   <p>The engine version of the global cluster.</p>
    #
    # @option params [Boolean] :deletion_protection
    #   <p>The deletion protection setting for the new global cluster. The global cluster can't be deleted when deletion protection is enabled. </p>
    #
    # @option params [String] :database_name
    #   <p>The name for your database of up to 64 alpha-numeric characters. If you do not provide a name, Amazon DocumentDB will not create a database in the global cluster you are creating.</p>
    #
    # @option params [Boolean] :storage_encrypted
    #   <p>The storage encryption setting for the new global cluster. </p>
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
    #     database_name: 'DatabaseName',
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
    #   resp.data.global_cluster.database_name #=> String
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
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::GlobalClusterAlreadyExistsFault, Errors::InvalidDBClusterStateFault, Errors::DBClusterNotFoundFault, Errors::GlobalClusterQuotaExceededFault]),
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

    # <p>Deletes a previously provisioned cluster. When you delete a cluster, all automated backups for that cluster are deleted and can't be recovered. Manual DB cluster snapshots of the specified cluster are not deleted.</p>
    #         <p></p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDBClusterInput}.
    #
    # @option params [String] :db_cluster_identifier
    #   <p>The cluster identifier for the cluster to be deleted. This parameter isn't case sensitive.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must match an existing <code>DBClusterIdentifier</code>.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Boolean] :skip_final_snapshot
    #   <p> Determines whether a final cluster snapshot is created before the cluster is deleted. If <code>true</code> is specified, no cluster snapshot is created. If <code>false</code> is specified, a cluster snapshot is created before the DB cluster is deleted. </p>
    #           <note>
    #               <p>If <code>SkipFinalSnapshot</code> is <code>false</code>, you must specify a <code>FinalDBSnapshotIdentifier</code> parameter.</p>
    #           </note>
    #           <p>Default: <code>false</code>
    #           </p>
    #
    # @option params [String] :final_db_snapshot_identifier
    #   <p> The cluster snapshot identifier of the new cluster snapshot created when <code>SkipFinalSnapshot</code> is set to <code>false</code>. </p>
    #           <note>
    #               <p> Specifying this parameter and also setting the <code>SkipFinalShapshot</code> parameter to <code>true</code> results in an error. </p>
    #           </note>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be from 1 to 255 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                   <p>The first character must be a letter.</p>
    #               </li>
    #               <li>
    #                   <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
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
    #   resp.data.db_cluster.availability_zones #=> Array<String>
    #   resp.data.db_cluster.availability_zones[0] #=> String
    #   resp.data.db_cluster.backup_retention_period #=> Integer
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
    #   resp.data.db_cluster.cluster_create_time #=> Time
    #   resp.data.db_cluster.enabled_cloudwatch_logs_exports #=> Array<String>
    #   resp.data.db_cluster.enabled_cloudwatch_logs_exports[0] #=> String
    #   resp.data.db_cluster.deletion_protection #=> Boolean
    #
    def delete_db_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDBClusterInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidDBClusterStateFault, Errors::InvalidDBClusterSnapshotStateFault, Errors::DBClusterSnapshotAlreadyExistsFault, Errors::SnapshotQuotaExceededFault, Errors::DBClusterNotFoundFault]),
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

    # <p>Deletes a specified cluster parameter group. The cluster parameter group to be deleted can't be associated with any clusters.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDBClusterParameterGroupInput}.
    #
    # @option params [String] :db_cluster_parameter_group_name
    #   <p>The name of the cluster parameter group.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be the name of an existing cluster parameter group.</p>
    #               </li>
    #               <li>
    #                   <p>You can't delete a default cluster parameter group.</p>
    #               </li>
    #               <li>
    #                   <p>Cannot be associated with any clusters.</p>
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
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DBParameterGroupNotFoundFault, Errors::InvalidDBParameterGroupStateFault]),
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

    # <p>Deletes a cluster snapshot. If the snapshot is being copied, the copy operation is terminated.</p>
    #         <note>
    #             <p>The cluster snapshot must be in the <code>available</code> state to be deleted.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteDBClusterSnapshotInput}.
    #
    # @option params [String] :db_cluster_snapshot_identifier
    #   <p>The identifier of the cluster snapshot to delete.</p>
    #           <p>Constraints: Must be the name of an existing cluster snapshot in the <code>available</code> state.</p>
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
    #   resp.data.db_cluster_snapshot.status #=> String
    #   resp.data.db_cluster_snapshot.port #=> Integer
    #   resp.data.db_cluster_snapshot.vpc_id #=> String
    #   resp.data.db_cluster_snapshot.cluster_create_time #=> Time
    #   resp.data.db_cluster_snapshot.master_username #=> String
    #   resp.data.db_cluster_snapshot.engine_version #=> String
    #   resp.data.db_cluster_snapshot.snapshot_type #=> String
    #   resp.data.db_cluster_snapshot.percent_progress #=> Integer
    #   resp.data.db_cluster_snapshot.storage_encrypted #=> Boolean
    #   resp.data.db_cluster_snapshot.kms_key_id #=> String
    #   resp.data.db_cluster_snapshot.db_cluster_snapshot_arn #=> String
    #   resp.data.db_cluster_snapshot.source_db_cluster_snapshot_arn #=> String
    #
    def delete_db_cluster_snapshot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDBClusterSnapshotInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DBClusterSnapshotNotFoundFault, Errors::InvalidDBClusterSnapshotStateFault]),
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

    # <p>Deletes a previously provisioned instance.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDBInstanceInput}.
    #
    # @option params [String] :db_instance_identifier
    #   <p>The instance identifier for the instance to be deleted. This parameter isn't
    #               case sensitive.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must match the name of an existing instance.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::DeleteDBInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_db_instance(
    #     db_instance_identifier: 'DBInstanceIdentifier' # required
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
    #   resp.data.db_instance.endpoint #=> Types::Endpoint
    #   resp.data.db_instance.endpoint.address #=> String
    #   resp.data.db_instance.endpoint.port #=> Integer
    #   resp.data.db_instance.endpoint.hosted_zone_id #=> String
    #   resp.data.db_instance.instance_create_time #=> Time
    #   resp.data.db_instance.preferred_backup_window #=> String
    #   resp.data.db_instance.backup_retention_period #=> Integer
    #   resp.data.db_instance.vpc_security_groups #=> Array<VpcSecurityGroupMembership>
    #   resp.data.db_instance.vpc_security_groups[0] #=> Types::VpcSecurityGroupMembership
    #   resp.data.db_instance.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.data.db_instance.vpc_security_groups[0].status #=> String
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
    #   resp.data.db_instance.engine_version #=> String
    #   resp.data.db_instance.auto_minor_version_upgrade #=> Boolean
    #   resp.data.db_instance.publicly_accessible #=> Boolean
    #   resp.data.db_instance.status_infos #=> Array<DBInstanceStatusInfo>
    #   resp.data.db_instance.status_infos[0] #=> Types::DBInstanceStatusInfo
    #   resp.data.db_instance.status_infos[0].status_type #=> String
    #   resp.data.db_instance.status_infos[0].normal #=> Boolean
    #   resp.data.db_instance.status_infos[0].status #=> String
    #   resp.data.db_instance.status_infos[0].message #=> String
    #   resp.data.db_instance.db_cluster_identifier #=> String
    #   resp.data.db_instance.storage_encrypted #=> Boolean
    #   resp.data.db_instance.kms_key_id #=> String
    #   resp.data.db_instance.dbi_resource_id #=> String
    #   resp.data.db_instance.ca_certificate_identifier #=> String
    #   resp.data.db_instance.promotion_tier #=> Integer
    #   resp.data.db_instance.db_instance_arn #=> String
    #   resp.data.db_instance.enabled_cloudwatch_logs_exports #=> Array<String>
    #
    def delete_db_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDBInstanceInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidDBClusterStateFault, Errors::DBInstanceNotFoundFault, Errors::InvalidDBInstanceStateFault, Errors::SnapshotQuotaExceededFault, Errors::DBSnapshotAlreadyExistsFault]),
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

    # <p>Deletes a subnet group.</p>
    #         <note>
    #             <p>The specified database subnet group must not be associated with any DB
    #                 instances.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteDBSubnetGroupInput}.
    #
    # @option params [String] :db_subnet_group_name
    #   <p>The name of the database subnet group to delete.</p>
    #           <note>
    #               <p>You can't delete the default subnet group.</p>
    #           </note>
    #           <p>Constraints:</p>
    #           <p>Must match the name of an existing <code>DBSubnetGroup</code>. Must not be default.</p>
    #           <p>Example: <code>mySubnetgroup</code>
    #           </p>
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
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidDBSubnetStateFault, Errors::DBSubnetGroupNotFoundFault, Errors::InvalidDBSubnetGroupStateFault]),
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

    # <p>Deletes an Amazon DocumentDB event notification subscription.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteEventSubscriptionInput}.
    #
    # @option params [String] :subscription_name
    #   <p>The name of the Amazon DocumentDB event notification subscription that you want to delete.</p>
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
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
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

    # <p>Deletes a global cluster. The primary and secondary clusters must already be detached or deleted before attempting to delete a global cluster.</p>
    #         <note>
    #             <p>This action only applies to Amazon DocumentDB clusters.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteGlobalClusterInput}.
    #
    # @option params [String] :global_cluster_identifier
    #   <p>The cluster identifier of the global cluster being deleted.</p>
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
    #   resp.data.global_cluster.database_name #=> String
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
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidGlobalClusterStateFault, Errors::GlobalClusterNotFoundFault]),
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

    # <p>Returns a list of certificate authority (CA) certificates provided by Amazon DocumentDB for this Amazon Web Services account.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeCertificatesInput}.
    #
    # @option params [String] :certificate_identifier
    #   <p>The user-supplied certificate identifier. If this parameter is specified, information for only the specified certificate is returned. If this parameter is omitted, a list of up to <code>MaxRecords</code> certificates is returned. This parameter is not case sensitive.</p>
    #            <p>Constraints</p>
    #            <ul>
    #               <li>
    #                  <p>Must match an existing <code>CertificateIdentifier</code>.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Array<Filter>] :filters
    #   <p>This parameter is not currently supported.</p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Minimum: 20</p>
    #               </li>
    #               <li>
    #                  <p>Maximum: 100</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous <code>DescribeCertificates</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
    #
    # @return [Types::DescribeCertificatesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_certificates(
    #     certificate_identifier: 'CertificateIdentifier',
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
    #   resp.data #=> Types::DescribeCertificatesOutput
    #   resp.data.certificates #=> Array<Certificate>
    #   resp.data.certificates[0] #=> Types::Certificate
    #   resp.data.certificates[0].certificate_identifier #=> String
    #   resp.data.certificates[0].certificate_type #=> String
    #   resp.data.certificates[0].thumbprint #=> String
    #   resp.data.certificates[0].valid_from #=> Time
    #   resp.data.certificates[0].valid_till #=> Time
    #   resp.data.certificates[0].certificate_arn #=> String
    #   resp.data.marker #=> String
    #
    def describe_certificates(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeCertificatesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeCertificatesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeCertificates
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CertificateNotFoundFault]),
        data_parser: Parsers::DescribeCertificates
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeCertificates,
        stubs: @stubs,
        params_class: Params::DescribeCertificatesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_certificates
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of <code>DBClusterParameterGroup</code> descriptions. If a <code>DBClusterParameterGroupName</code> parameter is specified, the list contains only the description of the specified cluster parameter group. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDBClusterParameterGroupsInput}.
    #
    # @option params [String] :db_cluster_parameter_group_name
    #   <p>The name of a specific cluster parameter group to return details for.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>If provided, must match the name of an existing
    #                           <code>DBClusterParameterGroup</code>.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Array<Filter>] :filters
    #   <p>This parameter is not currently supported.</p>
    #
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token (marker) is included
    #            in the response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #           <p>Constraints: Minimum 20, maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified, the response
    #            includes only records beyond the marker, up to the value specified by
    #            <code>MaxRecords</code>.</p>
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
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
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

    # <p>Returns the detailed parameter list for a particular cluster parameter
    #             group.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDBClusterParametersInput}.
    #
    # @option params [String] :db_cluster_parameter_group_name
    #   <p>The name of a specific cluster parameter group to return parameter details for.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>If provided, must match the name of an existing <code>DBClusterParameterGroup</code>.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :source
    #   <p> A value that indicates to return only parameters for a specific source. Parameter sources can be <code>engine</code>, <code>service</code>, or <code>customer</code>.
    #           </p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>This parameter is not currently supported.</p>
    #
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token (marker) is included
    #            in the response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #           <p>Constraints: Minimum 20, maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified, the response
    #            includes only records beyond the marker, up to the value specified by
    #            <code>MaxRecords</code>.</p>
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
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
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

    # <p>Returns a list of cluster snapshot attribute names and values for a manual DB
    #             cluster snapshot.</p>
    #         <p>When you share snapshots with other Amazon Web Services accounts,
    #                 <code>DescribeDBClusterSnapshotAttributes</code> returns the <code>restore</code> attribute and a list of IDs for the Amazon Web Services accounts that are authorized to copy or restore the manual cluster snapshot. If <code>all</code> is included in the list of values for the <code>restore</code> attribute, then the manual cluster snapshot is public and can be copied or restored by all Amazon Web Services accounts.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDBClusterSnapshotAttributesInput}.
    #
    # @option params [String] :db_cluster_snapshot_identifier
    #   <p>The identifier for the cluster snapshot to describe the attributes for.</p>
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
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
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

    # <p>Returns information about cluster snapshots. This API operation supports pagination.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDBClusterSnapshotsInput}.
    #
    # @option params [String] :db_cluster_identifier
    #   <p>The ID of the cluster to retrieve the list of cluster snapshots for. This parameter can't be used with the <code>DBClusterSnapshotIdentifier</code> parameter. This parameter is not case sensitive. </p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>If provided, must match the identifier of an existing
    #                       <code>DBCluster</code>.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :db_cluster_snapshot_identifier
    #   <p>A specific cluster snapshot identifier to describe. This parameter can't be used with the <code>DBClusterIdentifier</code> parameter. This value is stored as a lowercase string. </p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>If provided, must match the identifier of an existing
    #                           <code>DBClusterSnapshot</code>.</p>
    #               </li>
    #               <li>
    #                   <p>If this identifier is for an automated snapshot, the <code>SnapshotType</code>
    #                       parameter must also be specified.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :snapshot_type
    #   <p>The type of cluster snapshots to be returned. You can specify one of the following values:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>automated</code> - Return all cluster snapshots that Amazon DocumentDB has automatically created for your Amazon Web Services account.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>manual</code> - Return all cluster snapshots that you have manually created for your Amazon Web Services account.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>shared</code> - Return all manual cluster snapshots that have been shared to your Amazon Web Services account.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>public</code> - Return all cluster snapshots that have been marked as public.</p>
    #               </li>
    #            </ul>
    #           <p>If you don't specify a <code>SnapshotType</code> value, then both automated and manual cluster snapshots are returned. You can include shared cluster snapshots with these results by setting the <code>IncludeShared</code> parameter to <code>true</code>. You can include public cluster snapshots with these results by setting the<code>IncludePublic</code> parameter to <code>true</code>.</p>
    #           <p>The <code>IncludeShared</code> and <code>IncludePublic</code> parameters don't apply for <code>SnapshotType</code> values of <code>manual</code> or <code>automated</code>. The <code>IncludePublic</code> parameter doesn't apply when <code>SnapshotType</code> is set to <code>shared</code>. The <code>IncludeShared</code> parameter doesn't apply when <code>SnapshotType</code> is set to <code>public</code>.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>This parameter is not currently supported.</p>
    #
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token (marker) is included
    #            in the response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #           <p>Constraints: Minimum 20, maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified, the response
    #            includes only records beyond the marker, up to the value specified by
    #            <code>MaxRecords</code>.</p>
    #
    # @option params [Boolean] :include_shared
    #   <p>Set to <code>true</code> to include shared manual cluster snapshots from other Amazon Web Services accounts that this Amazon Web Services account has been given permission to copy or restore, and otherwise <code>false</code>. The default is <code>false</code>.</p>
    #
    # @option params [Boolean] :include_public
    #   <p>Set to <code>true</code> to include manual cluster snapshots that are public and can be copied or restored by any Amazon Web Services account, and otherwise <code>false</code>. The default is <code>false</code>.</p>
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
    #   resp.data.db_cluster_snapshots[0].status #=> String
    #   resp.data.db_cluster_snapshots[0].port #=> Integer
    #   resp.data.db_cluster_snapshots[0].vpc_id #=> String
    #   resp.data.db_cluster_snapshots[0].cluster_create_time #=> Time
    #   resp.data.db_cluster_snapshots[0].master_username #=> String
    #   resp.data.db_cluster_snapshots[0].engine_version #=> String
    #   resp.data.db_cluster_snapshots[0].snapshot_type #=> String
    #   resp.data.db_cluster_snapshots[0].percent_progress #=> Integer
    #   resp.data.db_cluster_snapshots[0].storage_encrypted #=> Boolean
    #   resp.data.db_cluster_snapshots[0].kms_key_id #=> String
    #   resp.data.db_cluster_snapshots[0].db_cluster_snapshot_arn #=> String
    #   resp.data.db_cluster_snapshots[0].source_db_cluster_snapshot_arn #=> String
    #
    def describe_db_cluster_snapshots(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDBClusterSnapshotsInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
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

    # <p>Returns information about provisioned Amazon DocumentDB clusters. This API
    #             operation supports pagination. For certain management features
    #             such as cluster and instance lifecycle management, Amazon DocumentDB leverages
    #             operational technology that is shared with Amazon RDS and Amazon
    #             Neptune. Use the <code>filterName=engine,Values=docdb</code> filter
    #             parameter to return only Amazon DocumentDB clusters.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDBClustersInput}.
    #
    # @option params [String] :db_cluster_identifier
    #   <p>The user-provided cluster identifier. If this parameter is specified, information from only the specific cluster is returned. This parameter isn't case sensitive.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>If provided, must match an existing <code>DBClusterIdentifier</code>.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Array<Filter>] :filters
    #   <p>A filter that specifies one or more clusters to describe.</p>
    #           <p>Supported filters:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>db-cluster-id</code> - Accepts cluster identifiers and cluster Amazon Resource Names (ARNs). The results list only includes information about the clusters identified by these ARNs.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token (marker) is included
    #            in the response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #           <p>Constraints: Minimum 20, maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified, the response
    #            includes only records beyond the marker, up to the value specified by
    #            <code>MaxRecords</code>.</p>
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
    #   resp.data.db_clusters[0].availability_zones #=> Array<String>
    #   resp.data.db_clusters[0].availability_zones[0] #=> String
    #   resp.data.db_clusters[0].backup_retention_period #=> Integer
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
    #   resp.data.db_clusters[0].cluster_create_time #=> Time
    #   resp.data.db_clusters[0].enabled_cloudwatch_logs_exports #=> Array<String>
    #   resp.data.db_clusters[0].enabled_cloudwatch_logs_exports[0] #=> String
    #   resp.data.db_clusters[0].deletion_protection #=> Boolean
    #
    def describe_db_clusters(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDBClustersInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
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

    # <p>Returns a list of the available engines.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDBEngineVersionsInput}.
    #
    # @option params [String] :engine
    #   <p>The database engine to return.</p>
    #
    # @option params [String] :engine_version
    #   <p>The database engine version to return.</p>
    #           <p>Example: <code>3.6.0</code>
    #           </p>
    #
    # @option params [String] :db_parameter_group_family
    #   <p>The name of a specific parameter group family to return details for.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>If provided, must match an existing
    #                       <code>DBParameterGroupFamily</code>.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Array<Filter>] :filters
    #   <p>This parameter is not currently supported.</p>
    #
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token (marker) is included
    #            in the response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #           <p>Constraints: Minimum 20, maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified, the response
    #            includes only records beyond the marker, up to the value specified by
    #            <code>MaxRecords</code>.</p>
    #
    # @option params [Boolean] :default_only
    #   <p>Indicates that only the default version of the specified engine or engine and major
    #               version combination is returned.</p>
    #
    # @option params [Boolean] :list_supported_character_sets
    #   <p>If this parameter is specified and the requested engine supports the <code>CharacterSetName</code> parameter for <code>CreateDBInstance</code>, the response includes a list of supported character sets for each engine version. </p>
    #
    # @option params [Boolean] :list_supported_timezones
    #   <p>If this parameter is specified and the requested engine supports the <code>TimeZone</code> parameter for <code>CreateDBInstance</code>, the response includes a list of supported time zones for each engine version. </p>
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
    #   resp.data.db_engine_versions[0].valid_upgrade_target #=> Array<UpgradeTarget>
    #   resp.data.db_engine_versions[0].valid_upgrade_target[0] #=> Types::UpgradeTarget
    #   resp.data.db_engine_versions[0].valid_upgrade_target[0].engine #=> String
    #   resp.data.db_engine_versions[0].valid_upgrade_target[0].engine_version #=> String
    #   resp.data.db_engine_versions[0].valid_upgrade_target[0].description #=> String
    #   resp.data.db_engine_versions[0].valid_upgrade_target[0].auto_upgrade #=> Boolean
    #   resp.data.db_engine_versions[0].valid_upgrade_target[0].is_major_version_upgrade #=> Boolean
    #   resp.data.db_engine_versions[0].exportable_log_types #=> Array<String>
    #   resp.data.db_engine_versions[0].exportable_log_types[0] #=> String
    #   resp.data.db_engine_versions[0].supports_log_exports_to_cloudwatch_logs #=> Boolean
    #
    def describe_db_engine_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDBEngineVersionsInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
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

    # <p>Returns information about provisioned Amazon DocumentDB instances. This API supports pagination.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDBInstancesInput}.
    #
    # @option params [String] :db_instance_identifier
    #   <p>The user-provided instance identifier. If this parameter is specified, information from only the specific instance is returned. This parameter isn't case sensitive.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>If provided, must match the identifier of an existing
    #                       <code>DBInstance</code>.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Array<Filter>] :filters
    #   <p>A filter that specifies one or more instances to describe.</p>
    #           <p>Supported filters:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>db-cluster-id</code> - Accepts cluster identifiers and cluster Amazon Resource Names (ARNs). The results list includes only the information about the instances that are associated with the clusters that are identified by these ARNs.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>db-instance-id</code> - Accepts instance identifiers and instance ARNs. The results list includes only the information about the instances that are identified by these ARNs.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token (marker) is included
    #            in the response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #           <p>Constraints: Minimum 20, maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified, the response
    #            includes only records beyond the marker, up to the value specified by
    #            <code>MaxRecords</code>.</p>
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
    #   resp.data.db_instances[0].endpoint #=> Types::Endpoint
    #   resp.data.db_instances[0].endpoint.address #=> String
    #   resp.data.db_instances[0].endpoint.port #=> Integer
    #   resp.data.db_instances[0].endpoint.hosted_zone_id #=> String
    #   resp.data.db_instances[0].instance_create_time #=> Time
    #   resp.data.db_instances[0].preferred_backup_window #=> String
    #   resp.data.db_instances[0].backup_retention_period #=> Integer
    #   resp.data.db_instances[0].vpc_security_groups #=> Array<VpcSecurityGroupMembership>
    #   resp.data.db_instances[0].vpc_security_groups[0] #=> Types::VpcSecurityGroupMembership
    #   resp.data.db_instances[0].vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.data.db_instances[0].vpc_security_groups[0].status #=> String
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
    #   resp.data.db_instances[0].engine_version #=> String
    #   resp.data.db_instances[0].auto_minor_version_upgrade #=> Boolean
    #   resp.data.db_instances[0].publicly_accessible #=> Boolean
    #   resp.data.db_instances[0].status_infos #=> Array<DBInstanceStatusInfo>
    #   resp.data.db_instances[0].status_infos[0] #=> Types::DBInstanceStatusInfo
    #   resp.data.db_instances[0].status_infos[0].status_type #=> String
    #   resp.data.db_instances[0].status_infos[0].normal #=> Boolean
    #   resp.data.db_instances[0].status_infos[0].status #=> String
    #   resp.data.db_instances[0].status_infos[0].message #=> String
    #   resp.data.db_instances[0].db_cluster_identifier #=> String
    #   resp.data.db_instances[0].storage_encrypted #=> Boolean
    #   resp.data.db_instances[0].kms_key_id #=> String
    #   resp.data.db_instances[0].dbi_resource_id #=> String
    #   resp.data.db_instances[0].ca_certificate_identifier #=> String
    #   resp.data.db_instances[0].promotion_tier #=> Integer
    #   resp.data.db_instances[0].db_instance_arn #=> String
    #   resp.data.db_instances[0].enabled_cloudwatch_logs_exports #=> Array<String>
    #
    def describe_db_instances(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDBInstancesInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
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

    # <p>Returns a list of <code>DBSubnetGroup</code> descriptions. If a
    #                 <code>DBSubnetGroupName</code> is specified, the list will contain only the descriptions of the specified <code>DBSubnetGroup</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDBSubnetGroupsInput}.
    #
    # @option params [String] :db_subnet_group_name
    #   <p>The name of the subnet group to return details for.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>This parameter is not currently supported.</p>
    #
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token (marker) is included
    #            in the response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #           <p>Constraints: Minimum 20, maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified, the response
    #            includes only records beyond the marker, up to the value specified by
    #            <code>MaxRecords</code>.</p>
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
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
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
    #             engine.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEngineDefaultClusterParametersInput}.
    #
    # @option params [String] :db_parameter_group_family
    #   <p>The name of the cluster parameter group family to return the engine parameter
    #               information for.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>This parameter is not currently supported.</p>
    #
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token (marker) is included
    #            in the response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #           <p>Constraints: Minimum 20, maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified, the response
    #            includes only records beyond the marker, up to the value specified by
    #            <code>MaxRecords</code>.</p>
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
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
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

    # <p>Displays a list of categories for all event source types, or, if specified, for a
    #             specified source type. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEventCategoriesInput}.
    #
    # @option params [String] :source_type
    #   <p>The type of source that is generating the events.</p>
    #           <p>Valid values: <code>db-instance</code>, <code>db-parameter-group</code>, <code>db-security-group</code>
    #            </p>
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
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
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

    # <p>Lists all the subscription descriptions for a customer account. The description for a subscription includes <code>SubscriptionName</code>, <code>SNSTopicARN</code>, <code>CustomerID</code>, <code>SourceType</code>, <code>SourceID</code>, <code>CreationTime</code>, and <code>Status</code>.</p>
    #         <p>If you specify a <code>SubscriptionName</code>, lists the description for that subscription.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEventSubscriptionsInput}.
    #
    # @option params [String] :subscription_name
    #   <p>The name of the Amazon DocumentDB event notification subscription that you want to
    #               describe.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>This parameter is not currently supported.</p>
    #
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token (marker) is included
    #            in the response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #           <p>Constraints: Minimum 20, maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified, the response
    #            includes only records beyond the marker, up to the value specified by
    #            <code>MaxRecords</code>.</p>
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
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
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

    # <p>Returns events related to instances, security groups, snapshots, and DB parameter groups for the past 14 days. You can obtain events specific to a particular DB instance, security group, snapshot, or parameter group by providing the name as a parameter. By default, the events of the past hour are returned.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEventsInput}.
    #
    # @option params [String] :source_identifier
    #   <p>The identifier of the event source for which events are returned. If not specified, then all sources are included in the response.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>If <code>SourceIdentifier</code> is provided, <code>SourceType</code> must also be provided.</p>
    #               </li>
    #               <li>
    #                   <p>If the source type is <code>DBInstance</code>, a
    #                           <code>DBInstanceIdentifier</code> must be provided.</p>
    #               </li>
    #               <li>
    #                   <p>If the source type is <code>DBSecurityGroup</code>, a
    #                           <code>DBSecurityGroupName</code> must be provided.</p>
    #               </li>
    #               <li>
    #                   <p>If the source type is <code>DBParameterGroup</code>, a
    #                           <code>DBParameterGroupName</code> must be provided.</p>
    #               </li>
    #               <li>
    #                   <p>If the source type is <code>DBSnapshot</code>, a
    #                           <code>DBSnapshotIdentifier</code> must be provided.</p>
    #               </li>
    #               <li>
    #                   <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :source_type
    #   <p>The event source to retrieve events for. If no value is specified, all events are returned.</p>
    #
    # @option params [Time] :start_time
    #   <p> The beginning of the time interval to retrieve events for, specified in ISO 8601 format. </p>
    #           <p>Example: 2009-07-08T18:00Z</p>
    #
    # @option params [Time] :end_time
    #   <p> The end of the time interval for which to retrieve events, specified in ISO 8601
    #               format. </p>
    #           <p>Example: 2009-07-08T18:00Z</p>
    #
    # @option params [Integer] :duration
    #   <p>The number of minutes to retrieve events for.</p>
    #           <p>Default: 60</p>
    #
    # @option params [Array<String>] :event_categories
    #   <p>A list of event categories that trigger notifications for an event notification
    #               subscription.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>This parameter is not currently supported.</p>
    #
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token (marker) is included
    #            in the response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #           <p>Constraints: Minimum 20, maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified, the response
    #            includes only records beyond the marker, up to the value specified by
    #            <code>MaxRecords</code>.</p>
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
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

    # <p>Returns information about Amazon DocumentDB global  clusters. This API supports pagination.</p>
    #         <note>
    #             <p>This action only applies to Amazon DocumentDB clusters.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeGlobalClustersInput}.
    #
    # @option params [String] :global_cluster_identifier
    #   <p>The user-supplied  cluster identifier. If this parameter is specified, information from only the specific cluster is returned. This parameter isn't case-sensitive.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>A filter that specifies one or more global DB clusters to describe.</p>
    #           <p>Supported filters: <code>db-cluster-id</code> accepts  cluster identifiers and  cluster Amazon Resource Names (ARNs). The results list will only include information about the clusters identified by these ARNs.</p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that you can retrieve the remaining results. </p>
    #
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous <code>DescribeGlobalClusters</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
    #
    # @return [Types::DescribeGlobalClustersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_global_clusters(
    #     global_cluster_identifier: 'GlobalClusterIdentifier',
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
    #   resp.data.global_clusters[0].database_name #=> String
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
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
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

    # <p>Returns a list of orderable instance options for the specified engine.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeOrderableDBInstanceOptionsInput}.
    #
    # @option params [String] :engine
    #   <p>The name of the engine to retrieve instance options for.</p>
    #
    # @option params [String] :engine_version
    #   <p>The engine version filter value. Specify this parameter to show only the available
    #               offerings that match the specified engine version.</p>
    #
    # @option params [String] :db_instance_class
    #   <p>The instance class filter value. Specify this parameter to show only the available
    #               offerings that match the specified instance class.</p>
    #
    # @option params [String] :license_model
    #   <p>The license model filter value. Specify this parameter to show only the available
    #               offerings that match the specified license model.</p>
    #
    # @option params [Boolean] :vpc
    #   <p>The virtual private cloud (VPC) filter value. Specify this parameter to show only the
    #               available VPC or non-VPC offerings.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>This parameter is not currently supported.</p>
    #
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token (marker) is included
    #            in the response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #           <p>Constraints: Minimum 20, maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified, the response
    #            includes only records beyond the marker, up to the value specified by
    #            <code>MaxRecords</code>.</p>
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
    #   resp.data.orderable_db_instance_options[0].vpc #=> Boolean
    #   resp.data.marker #=> String
    #
    def describe_orderable_db_instance_options(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeOrderableDBInstanceOptionsInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
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

    # <p>Returns a list of resources (for example, instances) that have at least one pending
    #             maintenance action.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribePendingMaintenanceActionsInput}.
    #
    # @option params [String] :resource_identifier
    #   <p>The ARN of a resource to return pending maintenance actions for.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>A filter that specifies one or more resources to return pending maintenance actions
    #               for.</p>
    #           <p>Supported filters:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>db-cluster-id</code> - Accepts cluster identifiers and cluster
    #                       Amazon Resource Names (ARNs). The results list includes only pending maintenance
    #                       actions for the clusters identified by these ARNs.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>db-instance-id</code> - Accepts instance identifiers and instance
    #                       ARNs. The results list includes only pending maintenance actions for the DB
    #                       instances identified by these ARNs.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified, the response
    #            includes only records beyond the marker, up to the value specified by
    #            <code>MaxRecords</code>.</p>
    #
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token (marker) is included
    #            in the response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #           <p>Constraints: Minimum 20, maximum 100.</p>
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
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
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

    # <p>Forces a failover for a cluster.</p>
    #         <p>A failover for a cluster promotes one of the Amazon DocumentDB replicas (read-only instances) in the cluster to be the primary instance (the cluster writer).</p>
    #         <p>If the primary instance fails, Amazon DocumentDB automatically fails over to an Amazon DocumentDB replica, if one exists. You can force a failover when you want to simulate a failure of a primary instance for testing.</p>
    #
    # @param [Hash] params
    #   See {Types::FailoverDBClusterInput}.
    #
    # @option params [String] :db_cluster_identifier
    #   <p>A cluster identifier to force a failover for. This parameter is not case sensitive.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must match the identifier of an existing <code>DBCluster</code>.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :target_db_instance_identifier
    #   <p>The name of the instance to promote to the primary instance.</p>
    #           <p>You must specify the instance identifier for an Amazon DocumentDB replica in the cluster. For
    #               example, <code>mydbcluster-replica1</code>.</p>
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
    #   resp.data.db_cluster.availability_zones #=> Array<String>
    #   resp.data.db_cluster.availability_zones[0] #=> String
    #   resp.data.db_cluster.backup_retention_period #=> Integer
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
    #   resp.data.db_cluster.cluster_create_time #=> Time
    #   resp.data.db_cluster.enabled_cloudwatch_logs_exports #=> Array<String>
    #   resp.data.db_cluster.enabled_cloudwatch_logs_exports[0] #=> String
    #   resp.data.db_cluster.deletion_protection #=> Boolean
    #
    def failover_db_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::FailoverDBClusterInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidDBClusterStateFault, Errors::InvalidDBInstanceStateFault, Errors::DBClusterNotFoundFault]),
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

    # <p>Lists all tags on an Amazon DocumentDB resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_name
    #   <p>The Amazon DocumentDB resource with tags to be listed. This value is an Amazon Resource Name
    #               (ARN).</p>
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
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DBInstanceNotFoundFault, Errors::DBSnapshotNotFoundFault, Errors::DBClusterNotFoundFault]),
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

    # <p>Modifies a setting for an Amazon DocumentDB cluster. You can change one or more database
    #             configuration parameters by specifying these parameters and the new values in the
    #             request. </p>
    #
    # @param [Hash] params
    #   See {Types::ModifyDBClusterInput}.
    #
    # @option params [String] :db_cluster_identifier
    #   <p>The cluster identifier for the cluster that is being modified. This parameter is
    #               not case sensitive.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must match the identifier of an existing <code>DBCluster</code>.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :new_db_cluster_identifier
    #   <p>The new cluster identifier for the cluster when renaming a cluster. This
    #               value is stored as a lowercase string.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                   <p>The first character must be a letter.</p>
    #               </li>
    #               <li>
    #                   <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #           <p>Example: <code>my-cluster2</code>
    #           </p>
    #
    # @option params [Boolean] :apply_immediately
    #   <p>A value that specifies whether the changes in this request and any pending changes are
    #               asynchronously applied as soon as possible, regardless of the
    #                   <code>PreferredMaintenanceWindow</code> setting for the cluster. If this
    #               parameter is set to <code>false</code>, changes to the cluster are applied during the
    #               next maintenance window.</p>
    #           <p>The <code>ApplyImmediately</code> parameter affects only the
    #                   <code>NewDBClusterIdentifier</code> and <code>MasterUserPassword</code> values. If
    #               you set this parameter value to <code>false</code>, the changes to the
    #                   <code>NewDBClusterIdentifier</code> and <code>MasterUserPassword</code> values are
    #               applied during the next maintenance window. All other changes are applied immediately,
    #               regardless of the value of the <code>ApplyImmediately</code> parameter.</p>
    #           <p>Default: <code>false</code>
    #           </p>
    #
    # @option params [Integer] :backup_retention_period
    #   <p>The number of days for which automated backups are retained. You must specify a
    #               minimum value of 1.</p>
    #           <p>Default: 1</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be a value from 1 to 35.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :db_cluster_parameter_group_name
    #   <p>The name of the cluster parameter group to use for the cluster.</p>
    #
    # @option params [Array<String>] :vpc_security_group_ids
    #   <p>A list of virtual private cloud (VPC) security groups that the cluster will belong
    #               to.</p>
    #
    # @option params [Integer] :port
    #   <p>The port number on which the cluster accepts connections.</p>
    #           <p>Constraints: Must be a value from <code>1150</code> to <code>65535</code>. </p>
    #           <p>Default: The same port as the original cluster.</p>
    #
    # @option params [String] :master_user_password
    #   <p>The password for the master database user. This password can contain any printable
    #               ASCII character except forward slash (/), double quote ("), or the "at" symbol
    #               (@).</p>
    #           <p>Constraints: Must contain from 8 to 100 characters.</p>
    #
    # @option params [String] :preferred_backup_window
    #   <p>The daily time range during which automated backups are created if automated backups
    #               are enabled, using the <code>BackupRetentionPeriod</code> parameter. </p>
    #           <p>The default is a 30-minute window selected at random from an 8-hour block of time for
    #               each Amazon Web Services Region. </p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be in the format <code>hh24:mi-hh24:mi</code>.</p>
    #               </li>
    #               <li>
    #                   <p>Must be in Universal Coordinated Time (UTC).</p>
    #               </li>
    #               <li>
    #                   <p>Must not conflict with the preferred maintenance window.</p>
    #               </li>
    #               <li>
    #                   <p>Must be at least 30 minutes.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :preferred_maintenance_window
    #   <p>The weekly time range during which system maintenance can occur, in Universal
    #               Coordinated Time (UTC).</p>
    #           <p>Format: <code>ddd:hh24:mi-ddd:hh24:mi</code>
    #           </p>
    #           <p>The default is a 30-minute window selected at random from an 8-hour block of time for
    #               each Amazon Web Services Region, occurring on a random day of the week. </p>
    #           <p>Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun</p>
    #           <p>Constraints: Minimum 30-minute window.</p>
    #
    # @option params [CloudwatchLogsExportConfiguration] :cloudwatch_logs_export_configuration
    #   <p>The configuration setting for the log types to be enabled for export to Amazon
    #               CloudWatch Logs for a specific instance or cluster. The
    #                   <code>EnableLogTypes</code> and <code>DisableLogTypes</code> arrays determine which
    #               logs are exported (or not exported) to CloudWatch Logs.</p>
    #
    # @option params [String] :engine_version
    #   <p>The version number of the database engine to which you want to upgrade. Modifying engine version is not supported on Amazon DocumentDB.</p>
    #
    # @option params [Boolean] :deletion_protection
    #   <p>Specifies whether this cluster can be deleted. If <code>DeletionProtection</code> is
    #               enabled, the cluster cannot be deleted unless it is modified and
    #                   <code>DeletionProtection</code> is disabled. <code>DeletionProtection</code>
    #               protects clusters from being accidentally deleted.</p>
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
    #     preferred_backup_window: 'PreferredBackupWindow',
    #     preferred_maintenance_window: 'PreferredMaintenanceWindow',
    #     cloudwatch_logs_export_configuration: {
    #       enable_log_types: [
    #         'member'
    #       ],
    #     },
    #     engine_version: 'EngineVersion',
    #     deletion_protection: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifyDBClusterOutput
    #   resp.data.db_cluster #=> Types::DBCluster
    #   resp.data.db_cluster.availability_zones #=> Array<String>
    #   resp.data.db_cluster.availability_zones[0] #=> String
    #   resp.data.db_cluster.backup_retention_period #=> Integer
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
    #   resp.data.db_cluster.cluster_create_time #=> Time
    #   resp.data.db_cluster.enabled_cloudwatch_logs_exports #=> Array<String>
    #   resp.data.db_cluster.enabled_cloudwatch_logs_exports[0] #=> String
    #   resp.data.db_cluster.deletion_protection #=> Boolean
    #
    def modify_db_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyDBClusterInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidDBSecurityGroupStateFault, Errors::InvalidSubnet, Errors::DBClusterAlreadyExistsFault, Errors::InvalidDBClusterStateFault, Errors::InvalidVPCNetworkStateFault, Errors::InvalidDBInstanceStateFault, Errors::DBClusterNotFoundFault, Errors::DBClusterParameterGroupNotFoundFault, Errors::StorageQuotaExceededFault, Errors::DBSubnetGroupNotFoundFault, Errors::InvalidDBSubnetGroupStateFault]),
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

    # <p> Modifies the parameters of a cluster parameter group. To modify more than one
    #             parameter, submit a list of the following: <code>ParameterName</code>,
    #                 <code>ParameterValue</code>, and <code>ApplyMethod</code>. A maximum of 20
    #             parameters can be modified in a single request. </p>
    #         <note>
    #             <p>Changes to dynamic parameters are applied immediately. Changes to static
    #                 parameters require a reboot or maintenance window
    #
    #                 before the change can take effect.</p>
    #         </note>
    #         <important>
    #             <p>After you create a cluster parameter group, you should wait at least 5 minutes
    #                 before creating your first cluster that uses that cluster parameter group as
    #                 the default parameter group. This allows Amazon DocumentDB to fully complete the create action
    #                 before the parameter group is used as the default for a new cluster. This step is
    #                 especially important for parameters that are critical when creating the default
    #                 database for a cluster, such as the character set for the default database
    #                 defined by the <code>character_set_database</code> parameter.</p>
    #         </important>
    #
    # @param [Hash] params
    #   See {Types::ModifyDBClusterParameterGroupInput}.
    #
    # @option params [String] :db_cluster_parameter_group_name
    #   <p>The name of the cluster parameter group to modify.</p>
    #
    # @option params [Array<Parameter>] :parameters
    #   <p>A list of parameters in the cluster parameter group to modify.</p>
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
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DBParameterGroupNotFoundFault, Errors::InvalidDBParameterGroupStateFault]),
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

    # <p>Adds an attribute and values to, or removes an attribute and values from, a manual cluster snapshot.</p>
    #         <p>To share a manual cluster snapshot with other Amazon Web Services accounts, specify <code>restore</code> as the <code>AttributeName</code>, and use the <code>ValuesToAdd</code> parameter to add a list of IDs of the Amazon Web Services accounts that are authorized to restore the manual cluster snapshot. Use the value <code>all</code> to make the manual cluster snapshot public, which means that it can be copied or restored by all Amazon Web Services accounts. Do not add the <code>all</code> value for any manual cluster snapshots that contain private information that you don't want available to all Amazon Web Services accounts. If a manual cluster snapshot is encrypted, it can be shared, but only by specifying a list of authorized Amazon Web Services account IDs for the <code>ValuesToAdd</code> parameter. You can't use <code>all</code> as a value for that parameter in this case.</p>
    #
    # @param [Hash] params
    #   See {Types::ModifyDBClusterSnapshotAttributeInput}.
    #
    # @option params [String] :db_cluster_snapshot_identifier
    #   <p>The identifier for the cluster snapshot to modify the attributes for.</p>
    #
    # @option params [String] :attribute_name
    #   <p>The name of the cluster snapshot attribute to modify.</p>
    #           <p>To manage authorization for other Amazon Web Services accounts to copy or restore a manual cluster
    #               snapshot, set this value to <code>restore</code>.</p>
    #
    # @option params [Array<String>] :values_to_add
    #   <p>A list of cluster snapshot attributes to add to the attribute specified by <code>AttributeName</code>.</p>
    #           <p>To authorize other Amazon Web Services accounts to copy or restore a manual cluster snapshot, set this list to include one or more Amazon Web Services account IDs. To make the manual cluster snapshot restorable by any Amazon Web Services account, set it to <code>all</code>. Do not add the <code>all</code> value for any manual cluster snapshots that contain private information that you don't want to be available to all Amazon Web Services accounts.</p>
    #
    # @option params [Array<String>] :values_to_remove
    #   <p>A list of cluster snapshot attributes to remove from the attribute specified by <code>AttributeName</code>.</p>
    #           <p>To remove authorization for other Amazon Web Services accounts to copy or restore a manual cluster snapshot, set this list to include one or more Amazon Web Services account identifiers. To remove authorization for any Amazon Web Services account to copy or restore the cluster snapshot, set it to <code>all</code> . If you specify <code>all</code>, an Amazon Web Services account whose account ID is explicitly added to the <code>restore</code> attribute can still copy or restore a manual cluster snapshot.</p>
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
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DBClusterSnapshotNotFoundFault, Errors::SharedSnapshotQuotaExceededFault, Errors::InvalidDBClusterSnapshotStateFault]),
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

    # <p>Modifies settings for an instance. You can change one or more database configuration parameters by specifying these parameters and the new values in the request.</p>
    #
    # @param [Hash] params
    #   See {Types::ModifyDBInstanceInput}.
    #
    # @option params [String] :db_instance_identifier
    #   <p>The instance identifier. This value is stored as a lowercase string.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must match the identifier of an existing <code>DBInstance</code>.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :db_instance_class
    #   <p>The new compute and memory capacity of the instance; for example, <code>db.r5.large</code>. Not all instance classes are available in all Amazon Web Services Regions. </p>
    #           <p>If you modify the instance class, an outage occurs during the change. The change is
    #               applied during the next maintenance window, unless <code>ApplyImmediately</code> is
    #               specified as <code>true</code> for this request. </p>
    #           <p>Default: Uses existing setting.</p>
    #
    # @option params [Boolean] :apply_immediately
    #   <p>Specifies whether the modifications in this request and any pending modifications are
    #               asynchronously applied as soon as possible, regardless of the
    #                   <code>PreferredMaintenanceWindow</code> setting for the instance. </p>
    #           <p> If this parameter is set to <code>false</code>, changes to the instance are
    #               applied during the next maintenance window. Some parameter changes can cause an outage
    #               and are applied on the next reboot.</p>
    #           <p>Default: <code>false</code>
    #           </p>
    #
    # @option params [String] :preferred_maintenance_window
    #   <p>The weekly time range (in UTC) during which system maintenance can occur, which might
    #               result in an outage. Changing this parameter doesn't result in an outage except in the
    #               following situation, and the change is asynchronously applied as soon as possible. If
    #               there are pending actions that cause a reboot, and the maintenance window is changed to
    #               include the current time, changing this parameter causes a reboot of the instance. If
    #               you are moving this window to the current time, there must be at least 30 minutes
    #               between the current time and end of the window to ensure that pending changes are
    #               applied.</p>
    #           <p>Default: Uses existing setting.</p>
    #           <p>Format: <code>ddd:hh24:mi-ddd:hh24:mi</code>
    #            </p>
    #           <p>Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun</p>
    #           <p>Constraints: Must be at least 30 minutes.</p>
    #
    # @option params [Boolean] :auto_minor_version_upgrade
    #   <p>This parameter does not apply to Amazon DocumentDB. Amazon DocumentDB does not perform minor version upgrades regardless of the value set.</p>
    #
    # @option params [String] :new_db_instance_identifier
    #   <p> The new instance identifier for the instance when renaming an instance. When you change the instance identifier, an instance reboot occurs immediately if you set <code>Apply Immediately</code> to <code>true</code>. It occurs during the next maintenance window if you set <code>Apply Immediately</code> to <code>false</code>. This value is stored as a lowercase string. </p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                   <p>The first character must be a letter.</p>
    #               </li>
    #               <li>
    #                   <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #           <p>Example: <code>mydbinstance</code>
    #           </p>
    #
    # @option params [String] :ca_certificate_identifier
    #   <p>Indicates the certificate that needs to be associated with the instance.</p>
    #
    # @option params [Integer] :promotion_tier
    #   <p>A value that specifies the order in which an Amazon DocumentDB replica is promoted to the primary instance after a failure of the existing primary instance.</p>
    #           <p>Default: 1</p>
    #           <p>Valid values: 0-15</p>
    #
    # @option params [Boolean] :enable_performance_insights
    #   <p>A value that indicates whether to enable Performance Insights for the DB Instance. For
    #               more information, see <a href="https://docs.aws.amazon.com/documentdb/latest/developerguide/performance-insights.html">Using Amazon
    #                   Performance Insights</a>.</p>
    #
    # @option params [String] :performance_insights_kms_key_id
    #   <p>The KMS key identifier for encryption of Performance Insights
    #               data.</p>
    #           <p>The KMS key identifier is the key ARN, key ID, alias ARN, or alias name
    #               for the KMS key.</p>
    #           <p>If you do not specify a value for PerformanceInsightsKMSKeyId, then Amazon DocumentDB uses your
    #               default KMS key. There is a default KMS key for your
    #               Amazon Web Services account. Your Amazon Web Services account has a different
    #               default KMS key for each Amazon Web Services region.</p>
    #
    # @return [Types::ModifyDBInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_db_instance(
    #     db_instance_identifier: 'DBInstanceIdentifier', # required
    #     db_instance_class: 'DBInstanceClass',
    #     apply_immediately: false,
    #     preferred_maintenance_window: 'PreferredMaintenanceWindow',
    #     auto_minor_version_upgrade: false,
    #     new_db_instance_identifier: 'NewDBInstanceIdentifier',
    #     ca_certificate_identifier: 'CACertificateIdentifier',
    #     promotion_tier: 1,
    #     enable_performance_insights: false,
    #     performance_insights_kms_key_id: 'PerformanceInsightsKMSKeyId'
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
    #   resp.data.db_instance.endpoint #=> Types::Endpoint
    #   resp.data.db_instance.endpoint.address #=> String
    #   resp.data.db_instance.endpoint.port #=> Integer
    #   resp.data.db_instance.endpoint.hosted_zone_id #=> String
    #   resp.data.db_instance.instance_create_time #=> Time
    #   resp.data.db_instance.preferred_backup_window #=> String
    #   resp.data.db_instance.backup_retention_period #=> Integer
    #   resp.data.db_instance.vpc_security_groups #=> Array<VpcSecurityGroupMembership>
    #   resp.data.db_instance.vpc_security_groups[0] #=> Types::VpcSecurityGroupMembership
    #   resp.data.db_instance.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.data.db_instance.vpc_security_groups[0].status #=> String
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
    #   resp.data.db_instance.engine_version #=> String
    #   resp.data.db_instance.auto_minor_version_upgrade #=> Boolean
    #   resp.data.db_instance.publicly_accessible #=> Boolean
    #   resp.data.db_instance.status_infos #=> Array<DBInstanceStatusInfo>
    #   resp.data.db_instance.status_infos[0] #=> Types::DBInstanceStatusInfo
    #   resp.data.db_instance.status_infos[0].status_type #=> String
    #   resp.data.db_instance.status_infos[0].normal #=> Boolean
    #   resp.data.db_instance.status_infos[0].status #=> String
    #   resp.data.db_instance.status_infos[0].message #=> String
    #   resp.data.db_instance.db_cluster_identifier #=> String
    #   resp.data.db_instance.storage_encrypted #=> Boolean
    #   resp.data.db_instance.kms_key_id #=> String
    #   resp.data.db_instance.dbi_resource_id #=> String
    #   resp.data.db_instance.ca_certificate_identifier #=> String
    #   resp.data.db_instance.promotion_tier #=> Integer
    #   resp.data.db_instance.db_instance_arn #=> String
    #   resp.data.db_instance.enabled_cloudwatch_logs_exports #=> Array<String>
    #
    def modify_db_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyDBInstanceInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidDBSecurityGroupStateFault, Errors::DBSecurityGroupNotFoundFault, Errors::InvalidVPCNetworkStateFault, Errors::DBInstanceNotFoundFault, Errors::InvalidDBInstanceStateFault, Errors::StorageTypeNotSupportedFault, Errors::AuthorizationNotFoundFault, Errors::DBParameterGroupNotFoundFault, Errors::InsufficientDBInstanceCapacityFault, Errors::DBInstanceAlreadyExistsFault, Errors::DBUpgradeDependencyFailureFault, Errors::StorageQuotaExceededFault, Errors::CertificateNotFoundFault]),
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

    # <p>Modifies an existing subnet group. subnet groups must contain at least one subnet in at least two Availability Zones in the Amazon Web Services Region.</p>
    #
    # @param [Hash] params
    #   See {Types::ModifyDBSubnetGroupInput}.
    #
    # @option params [String] :db_subnet_group_name
    #   <p>The name for the subnet group. This value is stored as a lowercase string. You can't modify the default subnet group. </p>
    #           <p>Constraints: Must match the name of an existing <code>DBSubnetGroup</code>. Must not be default.</p>
    #           <p>Example: <code>mySubnetgroup</code>
    #           </p>
    #
    # @option params [String] :db_subnet_group_description
    #   <p>The description for the subnet group.</p>
    #
    # @option params [Array<String>] :subnet_ids
    #   <p>The Amazon EC2 subnet IDs for the subnet group.</p>
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
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::SubnetAlreadyInUse, Errors::InvalidSubnet, Errors::DBSubnetQuotaExceededFault, Errors::DBSubnetGroupDoesNotCoverEnoughAZs, Errors::DBSubnetGroupNotFoundFault]),
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

    # <p>Modifies an existing Amazon DocumentDB event notification subscription.</p>
    #
    # @param [Hash] params
    #   See {Types::ModifyEventSubscriptionInput}.
    #
    # @option params [String] :subscription_name
    #   <p>The name of the Amazon DocumentDB event notification subscription.</p>
    #
    # @option params [String] :sns_topic_arn
    #   <p>The Amazon Resource Name (ARN) of the SNS topic created for event notification. The
    #               ARN is created by Amazon SNS when you create a topic and subscribe to it.</p>
    #
    # @option params [String] :source_type
    #   <p>The type of source that is generating the events. For example, if you want to be notified of events generated by an instance, set this parameter to <code>db-instance</code>. If this value is not specified, all events are returned.</p>
    #           <p>Valid values: <code>db-instance</code>, <code>db-parameter-group</code>, <code>db-security-group</code>
    #            </p>
    #
    # @option params [Array<String>] :event_categories
    #   <p> A list of event categories for a <code>SourceType</code> that you want to subscribe
    #               to.</p>
    #
    # @option params [Boolean] :enabled
    #   <p> A Boolean value; set to <code>true</code> to activate the subscription. </p>
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
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::SNSInvalidTopicFault, Errors::SNSTopicArnNotFoundFault, Errors::SubscriptionCategoryNotFoundFault, Errors::EventSubscriptionQuotaExceededFault, Errors::SNSNoAuthorizationFault, Errors::SubscriptionNotFoundFault]),
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

    # <p>Modify a setting for an Amazon DocumentDB global cluster. You can change one or more configuration parameters (for example: deletion protection), or the global cluster identifier by specifying these parameters and the new values in the request.</p>
    #         <note>
    #             <p>This action only applies to Amazon DocumentDB clusters.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::ModifyGlobalClusterInput}.
    #
    # @option params [String] :global_cluster_identifier
    #   <p>The identifier for the global cluster being modified. This parameter isn't case-sensitive.</p>
    #   		       <p>Constraints:</p>
    #           <ul>
    #               <li>
    #   				           <p>Must match the identifier of an existing global cluster.</p>
    #   			         </li>
    #            </ul>
    #
    # @option params [String] :new_global_cluster_identifier
    #   <p>The new identifier for a global cluster when you modify a global cluster. This value is stored as a lowercase string.</p>
    #           <ul>
    #               <li>
    #   				           <p>Must contain from 1 to 63 letters, numbers, or hyphens</p>
    #   				           <p>The first character must be a letter</p>
    #   				           <p>Can't end with a hyphen or contain two consecutive hyphens</p>
    #   			         </li>
    #            </ul>
    #   		       <p>Example: <code>my-cluster2</code>
    #            </p>
    #
    # @option params [Boolean] :deletion_protection
    #   <p>Indicates if the global cluster has deletion protection enabled. The global cluster can't be deleted when deletion protection is enabled. </p>
    #
    # @return [Types::ModifyGlobalClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_global_cluster(
    #     global_cluster_identifier: 'GlobalClusterIdentifier', # required
    #     new_global_cluster_identifier: 'NewGlobalClusterIdentifier',
    #     deletion_protection: false
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
    #   resp.data.global_cluster.database_name #=> String
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
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidGlobalClusterStateFault, Errors::GlobalClusterNotFoundFault]),
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

    # <p>You might need to reboot your instance, usually for maintenance reasons. For
    #             example, if you make certain changes, or if you change the cluster parameter group
    #             that is associated with the instance, you must reboot the instance for the changes to
    #             take effect. </p>
    #         <p>Rebooting an instance restarts the database engine service. Rebooting an instance
    #             results in a momentary outage, during which the instance status is set to
    #                 <i>rebooting</i>. </p>
    #
    # @param [Hash] params
    #   See {Types::RebootDBInstanceInput}.
    #
    # @option params [String] :db_instance_identifier
    #   <p>The instance identifier. This parameter is stored as a lowercase string.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must match the identifier of an existing <code>DBInstance</code>.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Boolean] :force_failover
    #   <p> When <code>true</code>, the reboot is conducted through a Multi-AZ failover. </p>
    #           <p>Constraint: You can't specify <code>true</code> if the instance is not configured for
    #               Multi-AZ.</p>
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
    #   resp.data.db_instance.endpoint #=> Types::Endpoint
    #   resp.data.db_instance.endpoint.address #=> String
    #   resp.data.db_instance.endpoint.port #=> Integer
    #   resp.data.db_instance.endpoint.hosted_zone_id #=> String
    #   resp.data.db_instance.instance_create_time #=> Time
    #   resp.data.db_instance.preferred_backup_window #=> String
    #   resp.data.db_instance.backup_retention_period #=> Integer
    #   resp.data.db_instance.vpc_security_groups #=> Array<VpcSecurityGroupMembership>
    #   resp.data.db_instance.vpc_security_groups[0] #=> Types::VpcSecurityGroupMembership
    #   resp.data.db_instance.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.data.db_instance.vpc_security_groups[0].status #=> String
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
    #   resp.data.db_instance.engine_version #=> String
    #   resp.data.db_instance.auto_minor_version_upgrade #=> Boolean
    #   resp.data.db_instance.publicly_accessible #=> Boolean
    #   resp.data.db_instance.status_infos #=> Array<DBInstanceStatusInfo>
    #   resp.data.db_instance.status_infos[0] #=> Types::DBInstanceStatusInfo
    #   resp.data.db_instance.status_infos[0].status_type #=> String
    #   resp.data.db_instance.status_infos[0].normal #=> Boolean
    #   resp.data.db_instance.status_infos[0].status #=> String
    #   resp.data.db_instance.status_infos[0].message #=> String
    #   resp.data.db_instance.db_cluster_identifier #=> String
    #   resp.data.db_instance.storage_encrypted #=> Boolean
    #   resp.data.db_instance.kms_key_id #=> String
    #   resp.data.db_instance.dbi_resource_id #=> String
    #   resp.data.db_instance.ca_certificate_identifier #=> String
    #   resp.data.db_instance.promotion_tier #=> Integer
    #   resp.data.db_instance.db_instance_arn #=> String
    #   resp.data.db_instance.enabled_cloudwatch_logs_exports #=> Array<String>
    #
    def reboot_db_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RebootDBInstanceInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
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

    # <p>Detaches an Amazon DocumentDB secondary cluster from a global cluster. The cluster becomes a standalone cluster with read-write capability instead of being read-only and receiving data from a primary in a different region. </p>
    #         <note>
    #             <p>This action only applies to Amazon DocumentDB clusters.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::RemoveFromGlobalClusterInput}.
    #
    # @option params [String] :global_cluster_identifier
    #   <p>The cluster identifier to detach from the Amazon DocumentDB global cluster. </p>
    #
    # @option params [String] :db_cluster_identifier
    #   <p>The Amazon Resource Name (ARN) identifying the cluster that was detached from the Amazon DocumentDB global cluster. </p>
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
    #   resp.data.global_cluster.database_name #=> String
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
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidGlobalClusterStateFault, Errors::DBClusterNotFoundFault, Errors::GlobalClusterNotFoundFault]),
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

    # <p>Removes a source identifier from an existing Amazon DocumentDB event notification
    #             subscription.</p>
    #
    # @param [Hash] params
    #   See {Types::RemoveSourceIdentifierFromSubscriptionInput}.
    #
    # @option params [String] :subscription_name
    #   <p>The name of the Amazon DocumentDB event notification subscription that you want to remove a
    #               source identifier from.</p>
    #
    # @option params [String] :source_identifier
    #   <p> The source identifier to be removed from the subscription, such as the instance
    #               identifier for an instance, or the name of a security group. </p>
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
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::SourceNotFoundFault, Errors::SubscriptionNotFoundFault]),
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

    # <p>Removes metadata tags from an Amazon DocumentDB resource.</p>
    #
    # @param [Hash] params
    #   See {Types::RemoveTagsFromResourceInput}.
    #
    # @option params [String] :resource_name
    #   <p>The Amazon DocumentDB resource that the tags are removed from. This value is an Amazon Resource
    #               Name (ARN).</p>
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
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DBInstanceNotFoundFault, Errors::DBSnapshotNotFoundFault, Errors::DBClusterNotFoundFault]),
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

    # <p> Modifies the parameters of a cluster parameter group to the default value. To
    #             reset specific parameters, submit a list of the following: <code>ParameterName</code>
    #             and <code>ApplyMethod</code>. To reset the entire cluster parameter group, specify
    #             the <code>DBClusterParameterGroupName</code> and <code>ResetAllParameters</code>
    #             parameters. </p>
    #         <p> When you reset the entire group, dynamic parameters are updated immediately and
    #             static parameters are set to <code>pending-reboot</code> to take effect on the next DB
    #             instance reboot.</p>
    #
    # @param [Hash] params
    #   See {Types::ResetDBClusterParameterGroupInput}.
    #
    # @option params [String] :db_cluster_parameter_group_name
    #   <p>The name of the cluster parameter group to reset.</p>
    #
    # @option params [Boolean] :reset_all_parameters
    #   <p>A value that is set to <code>true</code> to reset all parameters in the cluster
    #               parameter group to their default values, and <code>false</code> otherwise. You can't use
    #               this parameter if there is a list of parameter names specified for the
    #                   <code>Parameters</code> parameter.</p>
    #
    # @option params [Array<Parameter>] :parameters
    #   <p>A list of parameter names in the cluster parameter group to reset to the default
    #               values. You can't use this parameter if the <code>ResetAllParameters</code> parameter is
    #               set to <code>true</code>.</p>
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
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DBParameterGroupNotFoundFault, Errors::InvalidDBParameterGroupStateFault]),
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

    # <p>Creates a new cluster from a snapshot or cluster snapshot.</p>
    #         <p>If a snapshot is specified, the target cluster is created from the source DB snapshot with a default configuration and default security group.</p>
    #         <p>If a cluster snapshot is specified, the target cluster is created from the source cluster restore point with the same configuration as the original source DB cluster, except that the new cluster is created with the default security group.</p>
    #
    # @param [Hash] params
    #   See {Types::RestoreDBClusterFromSnapshotInput}.
    #
    # @option params [Array<String>] :availability_zones
    #   <p>Provides the list of Amazon EC2 Availability Zones that instances in the restored DB
    #               cluster can be created in.</p>
    #
    # @option params [String] :db_cluster_identifier
    #   <p>The name of the cluster to create from the snapshot or cluster snapshot. This
    #               parameter isn't case sensitive.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                   <p>The first character must be a letter.</p>
    #               </li>
    #               <li>
    #                   <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #           <p>Example: <code>my-snapshot-id</code>
    #           </p>
    #
    # @option params [String] :snapshot_identifier
    #   <p>The identifier for the snapshot or cluster snapshot to restore from.</p>
    #           <p>You can use either the name or the Amazon Resource Name (ARN) to specify a cluster
    #               snapshot. However, you can use only the ARN to specify a snapshot.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must match the identifier of an existing snapshot.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :engine
    #   <p>The database engine to use for the new cluster.</p>
    #           <p>Default: The same as source.</p>
    #           <p>Constraint: Must be compatible with the engine of the source.</p>
    #
    # @option params [String] :engine_version
    #   <p>The version of the database engine to use for the new cluster.</p>
    #
    # @option params [Integer] :port
    #   <p>The port number on which the new cluster accepts connections.</p>
    #           <p>Constraints: Must be a value from <code>1150</code> to <code>65535</code>.</p>
    #           <p>Default: The same port as the original cluster.</p>
    #
    # @option params [String] :db_subnet_group_name
    #   <p>The name of the subnet group to use for the new cluster.</p>
    #           <p>Constraints: If provided, must match the name of an existing
    #                   <code>DBSubnetGroup</code>.</p>
    #           <p>Example: <code>mySubnetgroup</code>
    #           </p>
    #
    # @option params [Array<String>] :vpc_security_group_ids
    #   <p>A list of virtual private cloud (VPC) security groups that the new cluster will
    #               belong to.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to be assigned to the restored cluster.</p>
    #
    # @option params [String] :kms_key_id
    #   <p>The KMS key identifier to use when restoring an encrypted cluster from a DB snapshot or cluster snapshot.</p>
    #           <p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If you are restoring a cluster with the same Amazon Web Services account that owns the KMS encryption key used to encrypt the new cluster, then you can use the KMS key alias instead of the ARN for the KMS encryption key.</p>
    #           <p>If you do not specify a value for the <code>KmsKeyId</code> parameter, then the
    #               following occurs:</p>
    #           <ul>
    #               <li>
    #                   <p>If the snapshot or cluster snapshot in <code>SnapshotIdentifier</code> is encrypted, then the restored cluster is encrypted using the KMS key that was used to encrypt the snapshot or the cluster snapshot.</p>
    #               </li>
    #               <li>
    #                   <p>If the snapshot or the cluster snapshot in
    #                           <code>SnapshotIdentifier</code> is not encrypted, then the restored DB
    #                       cluster is not encrypted.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Array<String>] :enable_cloudwatch_logs_exports
    #   <p>A list of log types that must be enabled for exporting to Amazon CloudWatch Logs.</p>
    #
    # @option params [Boolean] :deletion_protection
    #   <p>Specifies whether this cluster can be deleted. If <code>DeletionProtection</code> is enabled, the cluster cannot be deleted unless it is modified and <code>DeletionProtection</code> is disabled. <code>DeletionProtection</code> protects clusters from being accidentally deleted.</p>
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
    #     enable_cloudwatch_logs_exports: [
    #       'member'
    #     ],
    #     deletion_protection: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RestoreDBClusterFromSnapshotOutput
    #   resp.data.db_cluster #=> Types::DBCluster
    #   resp.data.db_cluster.availability_zones #=> Array<String>
    #   resp.data.db_cluster.availability_zones[0] #=> String
    #   resp.data.db_cluster.backup_retention_period #=> Integer
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
    #   resp.data.db_cluster.cluster_create_time #=> Time
    #   resp.data.db_cluster.enabled_cloudwatch_logs_exports #=> Array<String>
    #   resp.data.db_cluster.enabled_cloudwatch_logs_exports[0] #=> String
    #   resp.data.db_cluster.deletion_protection #=> Boolean
    #
    def restore_db_cluster_from_snapshot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RestoreDBClusterFromSnapshotInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DBClusterAlreadyExistsFault, Errors::DBClusterQuotaExceededFault, Errors::InvalidDBClusterSnapshotStateFault, Errors::InvalidVPCNetworkStateFault, Errors::InsufficientDBClusterCapacityFault, Errors::DBSubnetGroupNotFoundFault, Errors::DBClusterSnapshotNotFoundFault, Errors::InvalidSubnet, Errors::InvalidDBSnapshotStateFault, Errors::InvalidRestoreFault, Errors::DBSnapshotNotFoundFault, Errors::InsufficientStorageClusterCapacityFault, Errors::KMSKeyNotAccessibleFault, Errors::StorageQuotaExceededFault]),
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

    # <p>Restores a cluster to an arbitrary point in time. Users can restore to any point in
    #             time before <code>LatestRestorableTime</code> for up to
    #                 <code>BackupRetentionPeriod</code> days. The target cluster is created from the
    #             source cluster with the same configuration as the original cluster, except that
    #             the new cluster is created with the default security group. </p>
    #
    # @param [Hash] params
    #   See {Types::RestoreDBClusterToPointInTimeInput}.
    #
    # @option params [String] :db_cluster_identifier
    #   <p>The name of the new cluster to be created.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                   <p>The first character must be a letter.</p>
    #               </li>
    #               <li>
    #                   <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :source_db_cluster_identifier
    #   <p>The identifier of the source cluster from which to restore.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must match the identifier of an existing <code>DBCluster</code>.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Time] :restore_to_time
    #   <p>The date and time to restore the cluster to.</p>
    #           <p>Valid values: A time in Universal Coordinated Time (UTC) format.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be before the latest restorable time for the instance.</p>
    #               </li>
    #               <li>
    #                   <p>Must be specified if the <code>UseLatestRestorableTime</code> parameter is not provided.</p>
    #               </li>
    #               <li>
    #                   <p>Cannot be specified if the <code>UseLatestRestorableTime</code> parameter is <code>true</code>.</p>
    #               </li>
    #               <li>
    #                   <p>Cannot be specified if the <code>RestoreType</code> parameter is <code>copy-on-write</code>.</p>
    #               </li>
    #            </ul>
    #           <p>Example: <code>2015-03-07T23:45:00Z</code>
    #           </p>
    #
    # @option params [Boolean] :use_latest_restorable_time
    #   <p>A value that is set to <code>true</code> to restore the cluster to the latest
    #               restorable backup time, and <code>false</code> otherwise. </p>
    #           <p>Default: <code>false</code>
    #           </p>
    #           <p>Constraints: Cannot be specified if the <code>RestoreToTime</code> parameter is
    #               provided.</p>
    #
    # @option params [Integer] :port
    #   <p>The port number on which the new cluster accepts connections.</p>
    #           <p>Constraints: Must be a value from <code>1150</code> to <code>65535</code>. </p>
    #           <p>Default: The default port for the engine.</p>
    #
    # @option params [String] :db_subnet_group_name
    #   <p>The subnet group name to use for the new cluster.</p>
    #           <p>Constraints: If provided, must match the name of an existing
    #                   <code>DBSubnetGroup</code>.</p>
    #           <p>Example: <code>mySubnetgroup</code>
    #           </p>
    #
    # @option params [Array<String>] :vpc_security_group_ids
    #   <p>A list of VPC security groups that the new cluster belongs to.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to be assigned to the restored cluster.</p>
    #
    # @option params [String] :kms_key_id
    #   <p>The KMS key identifier to use when restoring an encrypted cluster from an encrypted cluster.</p>
    #           <p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If you are restoring a cluster with the same Amazon Web Services account that owns the KMS encryption key used to encrypt the new cluster, then you can use the KMS key alias instead of the ARN for the KMS encryption key.</p>
    #           <p>You can restore to a new cluster and encrypt the new cluster with an KMS key that is different from the KMS key used to encrypt the source cluster. The new DB cluster is encrypted with the KMS key identified by the <code>KmsKeyId</code> parameter.</p>
    #           <p>If you do not specify a value for the <code>KmsKeyId</code> parameter, then the following occurs:</p>
    #           <ul>
    #               <li>
    #                   <p>If the cluster is encrypted, then the restored cluster is encrypted using the KMS key that was used to encrypt the source cluster.</p>
    #               </li>
    #               <li>
    #                   <p>If the cluster is not encrypted, then the restored cluster is not encrypted.</p>
    #               </li>
    #            </ul>
    #           <p>If <code>DBClusterIdentifier</code> refers to a cluster that is not encrypted, then
    #               the restore request is rejected.</p>
    #
    # @option params [Array<String>] :enable_cloudwatch_logs_exports
    #   <p>A list of log types that must be enabled for exporting to Amazon CloudWatch
    #               Logs.</p>
    #
    # @option params [Boolean] :deletion_protection
    #   <p>Specifies whether this cluster can be deleted. If <code>DeletionProtection</code> is enabled, the cluster cannot be deleted unless it is modified and <code>DeletionProtection</code> is disabled. <code>DeletionProtection</code> protects clusters from being accidentally deleted.</p>
    #
    # @return [Types::RestoreDBClusterToPointInTimeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_db_cluster_to_point_in_time(
    #     db_cluster_identifier: 'DBClusterIdentifier', # required
    #     source_db_cluster_identifier: 'SourceDBClusterIdentifier', # required
    #     restore_to_time: Time.now,
    #     use_latest_restorable_time: false,
    #     port: 1,
    #     db_subnet_group_name: 'DBSubnetGroupName',
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
    #     enable_cloudwatch_logs_exports: [
    #       'member'
    #     ],
    #     deletion_protection: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RestoreDBClusterToPointInTimeOutput
    #   resp.data.db_cluster #=> Types::DBCluster
    #   resp.data.db_cluster.availability_zones #=> Array<String>
    #   resp.data.db_cluster.availability_zones[0] #=> String
    #   resp.data.db_cluster.backup_retention_period #=> Integer
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
    #   resp.data.db_cluster.cluster_create_time #=> Time
    #   resp.data.db_cluster.enabled_cloudwatch_logs_exports #=> Array<String>
    #   resp.data.db_cluster.enabled_cloudwatch_logs_exports[0] #=> String
    #   resp.data.db_cluster.deletion_protection #=> Boolean
    #
    def restore_db_cluster_to_point_in_time(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RestoreDBClusterToPointInTimeInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DBClusterAlreadyExistsFault, Errors::DBClusterQuotaExceededFault, Errors::InvalidDBClusterStateFault, Errors::InvalidDBClusterSnapshotStateFault, Errors::InvalidVPCNetworkStateFault, Errors::InsufficientDBClusterCapacityFault, Errors::DBSubnetGroupNotFoundFault, Errors::DBClusterSnapshotNotFoundFault, Errors::InvalidSubnet, Errors::InvalidDBSnapshotStateFault, Errors::InvalidRestoreFault, Errors::DBClusterNotFoundFault, Errors::InsufficientStorageClusterCapacityFault, Errors::KMSKeyNotAccessibleFault, Errors::StorageQuotaExceededFault]),
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

    # <p>Restarts the stopped cluster that is specified by <code>DBClusterIdentifier</code>.
    #             For more information, see <a href="https://docs.aws.amazon.com/documentdb/latest/developerguide/db-cluster-stop-start.html">Stopping and
    #                 Starting an Amazon DocumentDB Cluster</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::StartDBClusterInput}.
    #
    # @option params [String] :db_cluster_identifier
    #   <p>The identifier of the cluster to restart. Example:
    #                   <code>docdb-2019-05-28-15-24-52</code>
    #            </p>
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
    #   resp.data.db_cluster.availability_zones #=> Array<String>
    #   resp.data.db_cluster.availability_zones[0] #=> String
    #   resp.data.db_cluster.backup_retention_period #=> Integer
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
    #   resp.data.db_cluster.cluster_create_time #=> Time
    #   resp.data.db_cluster.enabled_cloudwatch_logs_exports #=> Array<String>
    #   resp.data.db_cluster.enabled_cloudwatch_logs_exports[0] #=> String
    #   resp.data.db_cluster.deletion_protection #=> Boolean
    #
    def start_db_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartDBClusterInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidDBClusterStateFault, Errors::InvalidDBInstanceStateFault, Errors::DBClusterNotFoundFault]),
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

    # <p>Stops the running cluster that is specified by <code>DBClusterIdentifier</code>. The
    #             cluster must be in the <i>available</i> state. For more information, see
    #                 <a href="https://docs.aws.amazon.com/documentdb/latest/developerguide/db-cluster-stop-start.html">Stopping and
    #                 Starting an Amazon DocumentDB Cluster</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::StopDBClusterInput}.
    #
    # @option params [String] :db_cluster_identifier
    #   <p>The identifier of the cluster to stop. Example:
    #               <code>docdb-2019-05-28-15-24-52</code>
    #            </p>
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
    #   resp.data.db_cluster.availability_zones #=> Array<String>
    #   resp.data.db_cluster.availability_zones[0] #=> String
    #   resp.data.db_cluster.backup_retention_period #=> Integer
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
    #   resp.data.db_cluster.cluster_create_time #=> Time
    #   resp.data.db_cluster.enabled_cloudwatch_logs_exports #=> Array<String>
    #   resp.data.db_cluster.enabled_cloudwatch_logs_exports[0] #=> String
    #   resp.data.db_cluster.deletion_protection #=> Boolean
    #
    def stop_db_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopDBClusterInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidDBClusterStateFault, Errors::InvalidDBInstanceStateFault, Errors::DBClusterNotFoundFault]),
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
