# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::DAX
  # An API client for AmazonDAXV3
  # See {#initialize} for a full list of supported configuration options
  # <p>DAX is a managed caching service engineered for Amazon DynamoDB. DAX
  #             dramatically speeds up database reads by caching frequently-accessed data from DynamoDB, so
  #             applications can access that data with sub-millisecond latency. You can create a DAX
  #             cluster easily, using the AWS Management Console. With a few simple modifications to
  #             your code, your application can begin taking advantage of the DAX cluster and realize
  #             significant improvements in read performance.</p>
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
    def initialize(config = AWS::SDK::DAX::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates a DAX cluster. All nodes in the cluster run the same DAX caching software.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateClusterInput}.
    #
    # @option params [String] :cluster_name
    #   <p>The cluster identifier. This parameter is stored as a lowercase
    #               string.</p>
    #           <p>
    #               <b>Constraints:</b>
    #           </p>
    #           <ul>
    #               <li>
    #                   <p>A name must contain from 1 to 20 alphanumeric characters or
    #                       hyphens.</p>
    #               </li>
    #               <li>
    #                   <p>The first character must be a letter.</p>
    #               </li>
    #               <li>
    #                   <p>A name cannot end with a hyphen or contain two consecutive
    #                       hyphens.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :node_type
    #   <p>The compute and memory capacity of the nodes in the cluster.</p>
    #
    # @option params [String] :description
    #   <p>A description of the cluster.</p>
    #
    # @option params [Integer] :replication_factor
    #   <p>The number of nodes in the DAX cluster. A replication factor of 1 will
    #               create a single-node cluster, without any read replicas. For additional fault tolerance,
    #               you can create a multiple node cluster with one or more read replicas. To do this, set
    #                   <code>ReplicationFactor</code> to a number between 3 (one primary and two read replicas) and 10 (one primary and nine read replicas).
    #                    <code>If the AvailabilityZones</code> parameter is provided, its length must equal the <code>ReplicationFactor</code>.</p>
    #           <note>
    #               <p>AWS recommends that you have at least two read replicas per cluster.</p>
    #            </note>
    #
    # @option params [Array<String>] :availability_zones
    #   <p>The Availability Zones (AZs) in which the cluster nodes will reside after the cluster
    #            has been created or updated. If provided, the length of this list must equal the <code>ReplicationFactor</code> parameter.
    #            If you omit this parameter, DAX will spread the nodes across Availability Zones for the highest availability.</p>
    #
    # @option params [String] :subnet_group_name
    #   <p>The name of the subnet group to be used for the replication group.</p>
    #           <important>
    #               <p>DAX clusters can only run in an Amazon VPC environment. All of the subnets
    #                   that you specify in a subnet group must exist in the same VPC.</p>
    #           </important>
    #
    # @option params [Array<String>] :security_group_ids
    #   <p>A list of security group IDs to be assigned to each node in the DAX cluster. (Each of the
    #                security group ID is system-generated.)</p>
    #           <p>If this parameter is not specified, DAX assigns the default VPC security group to
    #               each node.</p>
    #
    # @option params [String] :preferred_maintenance_window
    #   <p>Specifies the weekly time range during which maintenance on the DAX cluster is
    #               performed. It is specified as a range in the format ddd:hh24:mi-ddd:hh24:mi (24H Clock
    #               UTC). The minimum maintenance window is a 60 minute period. Valid values for
    #                   <code>ddd</code> are:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>sun</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>mon</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>tue</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>wed</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>thu</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>fri</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>sat</code>
    #                   </p>
    #               </li>
    #            </ul>
    #           <p>Example: <code>sun:05:00-sun:09:00</code>
    #           </p>
    #           <note>
    #               <p>If you don't specify a preferred maintenance window when you create or modify a
    #                   cache cluster, DAX assigns a 60-minute maintenance window on a randomly selected day
    #                   of the week.</p>
    #            </note>
    #
    # @option params [String] :notification_topic_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon SNS topic to which notifications will
    #               be sent.</p>
    #           <note>
    #               <p>The Amazon SNS topic owner must be same as the DAX cluster owner.</p>
    #           </note>
    #
    # @option params [String] :iam_role_arn
    #   <p>A valid Amazon Resource Name (ARN) that identifies an IAM role. At runtime, DAX
    #               will assume this role and use the role's permissions to access DynamoDB on your
    #               behalf.</p>
    #
    # @option params [String] :parameter_group_name
    #   <p>The parameter group to be associated with the DAX cluster.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A set of tags to associate with the DAX cluster.  </p>
    #
    # @option params [SSESpecification] :sse_specification
    #   <p>Represents the settings used to enable server-side encryption on the cluster.</p>
    #
    # @option params [String] :cluster_endpoint_encryption_type
    #   <p>The type of encryption the cluster's endpoint should support. Values are:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>NONE</code> for no encryption</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>TLS</code> for Transport Layer Security</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::CreateClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cluster(
    #     cluster_name: 'ClusterName', # required
    #     node_type: 'NodeType', # required
    #     description: 'Description',
    #     replication_factor: 1, # required
    #     availability_zones: [
    #       'member'
    #     ],
    #     subnet_group_name: 'SubnetGroupName',
    #     security_group_ids: [
    #       'member'
    #     ],
    #     preferred_maintenance_window: 'PreferredMaintenanceWindow',
    #     notification_topic_arn: 'NotificationTopicArn',
    #     iam_role_arn: 'IamRoleArn', # required
    #     parameter_group_name: 'ParameterGroupName',
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ],
    #     sse_specification: {
    #       enabled: false # required
    #     },
    #     cluster_endpoint_encryption_type: 'NONE' # accepts ["NONE", "TLS"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateClusterOutput
    #   resp.data.cluster #=> Types::Cluster
    #   resp.data.cluster.cluster_name #=> String
    #   resp.data.cluster.description #=> String
    #   resp.data.cluster.cluster_arn #=> String
    #   resp.data.cluster.total_nodes #=> Integer
    #   resp.data.cluster.active_nodes #=> Integer
    #   resp.data.cluster.node_type #=> String
    #   resp.data.cluster.status #=> String
    #   resp.data.cluster.cluster_discovery_endpoint #=> Types::Endpoint
    #   resp.data.cluster.cluster_discovery_endpoint.address #=> String
    #   resp.data.cluster.cluster_discovery_endpoint.port #=> Integer
    #   resp.data.cluster.cluster_discovery_endpoint.url #=> String
    #   resp.data.cluster.node_ids_to_remove #=> Array<String>
    #   resp.data.cluster.node_ids_to_remove[0] #=> String
    #   resp.data.cluster.nodes #=> Array<Node>
    #   resp.data.cluster.nodes[0] #=> Types::Node
    #   resp.data.cluster.nodes[0].node_id #=> String
    #   resp.data.cluster.nodes[0].endpoint #=> Types::Endpoint
    #   resp.data.cluster.nodes[0].node_create_time #=> Time
    #   resp.data.cluster.nodes[0].availability_zone #=> String
    #   resp.data.cluster.nodes[0].node_status #=> String
    #   resp.data.cluster.nodes[0].parameter_group_status #=> String
    #   resp.data.cluster.preferred_maintenance_window #=> String
    #   resp.data.cluster.notification_configuration #=> Types::NotificationConfiguration
    #   resp.data.cluster.notification_configuration.topic_arn #=> String
    #   resp.data.cluster.notification_configuration.topic_status #=> String
    #   resp.data.cluster.subnet_group #=> String
    #   resp.data.cluster.security_groups #=> Array<SecurityGroupMembership>
    #   resp.data.cluster.security_groups[0] #=> Types::SecurityGroupMembership
    #   resp.data.cluster.security_groups[0].security_group_identifier #=> String
    #   resp.data.cluster.security_groups[0].status #=> String
    #   resp.data.cluster.iam_role_arn #=> String
    #   resp.data.cluster.parameter_group #=> Types::ParameterGroupStatus
    #   resp.data.cluster.parameter_group.parameter_group_name #=> String
    #   resp.data.cluster.parameter_group.parameter_apply_status #=> String
    #   resp.data.cluster.parameter_group.node_ids_to_reboot #=> Array<String>
    #   resp.data.cluster.sse_description #=> Types::SSEDescription
    #   resp.data.cluster.sse_description.status #=> String, one of ["ENABLING", "ENABLED", "DISABLING", "DISABLED"]
    #   resp.data.cluster.cluster_endpoint_encryption_type #=> String, one of ["NONE", "TLS"]
    #
    def create_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateClusterInput.build(params)
      response_body = StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ParameterGroupNotFoundFault, Errors::NodeQuotaForCustomerExceededFault, Errors::ClusterAlreadyExistsFault, Errors::InsufficientClusterCapacityFault, Errors::InvalidVPCNetworkStateFault, Errors::ServiceQuotaExceededException, Errors::ClusterQuotaForCustomerExceededFault, Errors::InvalidClusterStateFault, Errors::NodeQuotaForClusterExceededFault, Errors::ServiceLinkedRoleNotFoundFault, Errors::InvalidParameterGroupStateFault, Errors::InvalidParameterCombinationException, Errors::InvalidParameterValueException, Errors::SubnetGroupNotFoundFault, Errors::TagQuotaPerResourceExceeded]),
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

    # <p>Creates a new parameter group. A parameter group is a collection of parameters that
    #             you apply to all of the nodes in a DAX cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateParameterGroupInput}.
    #
    # @option params [String] :parameter_group_name
    #   <p>The name of the parameter group to apply to all of the clusters in this replication
    #               group.</p>
    #
    # @option params [String] :description
    #   <p>A description of the parameter group.</p>
    #
    # @return [Types::CreateParameterGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_parameter_group(
    #     parameter_group_name: 'ParameterGroupName', # required
    #     description: 'Description'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateParameterGroupOutput
    #   resp.data.parameter_group #=> Types::ParameterGroup
    #   resp.data.parameter_group.parameter_group_name #=> String
    #   resp.data.parameter_group.description #=> String
    #
    def create_parameter_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateParameterGroupInput.build(params)
      response_body = StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceLinkedRoleNotFoundFault, Errors::ParameterGroupQuotaExceededFault, Errors::InvalidParameterGroupStateFault, Errors::InvalidParameterCombinationException, Errors::InvalidParameterValueException, Errors::ParameterGroupAlreadyExistsFault]),
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

    # <p>Creates a new subnet group.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateSubnetGroupInput}.
    #
    # @option params [String] :subnet_group_name
    #   <p>A name for the subnet group. This value is stored as a lowercase string. </p>
    #
    # @option params [String] :description
    #   <p>A description for the subnet group</p>
    #
    # @option params [Array<String>] :subnet_ids
    #   <p>A list of VPC subnet IDs for the subnet group.</p>
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
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateSubnetGroupOutput
    #   resp.data.subnet_group #=> Types::SubnetGroup
    #   resp.data.subnet_group.subnet_group_name #=> String
    #   resp.data.subnet_group.description #=> String
    #   resp.data.subnet_group.vpc_id #=> String
    #   resp.data.subnet_group.subnets #=> Array<Subnet>
    #   resp.data.subnet_group.subnets[0] #=> Types::Subnet
    #   resp.data.subnet_group.subnets[0].subnet_identifier #=> String
    #   resp.data.subnet_group.subnets[0].subnet_availability_zone #=> String
    #
    def create_subnet_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateSubnetGroupInput.build(params)
      response_body = StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceLinkedRoleNotFoundFault, Errors::SubnetGroupQuotaExceededFault, Errors::SubnetGroupAlreadyExistsFault, Errors::InvalidSubnet, Errors::SubnetQuotaExceededFault]),
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

    # <p>Removes one or more nodes from a DAX cluster.</p>
    #         <note>
    #             <p>You cannot use <code>DecreaseReplicationFactor</code> to remove the last node in a DAX cluster. If you need to do this, use <code>DeleteCluster</code> instead.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DecreaseReplicationFactorInput}.
    #
    # @option params [String] :cluster_name
    #   <p>The name of the DAX cluster from which you want to remove nodes.</p>
    #
    # @option params [Integer] :new_replication_factor
    #   <p>The new number of nodes for the DAX cluster.</p>
    #
    # @option params [Array<String>] :availability_zones
    #   <p>The Availability Zone(s) from which to remove nodes.</p>
    #
    # @option params [Array<String>] :node_ids_to_remove
    #   <p>The unique identifiers of the nodes to be removed from the cluster.</p>
    #
    # @return [Types::DecreaseReplicationFactorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.decrease_replication_factor(
    #     cluster_name: 'ClusterName', # required
    #     new_replication_factor: 1, # required
    #     availability_zones: [
    #       'member'
    #     ],
    #     node_ids_to_remove: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DecreaseReplicationFactorOutput
    #   resp.data.cluster #=> Types::Cluster
    #   resp.data.cluster.cluster_name #=> String
    #   resp.data.cluster.description #=> String
    #   resp.data.cluster.cluster_arn #=> String
    #   resp.data.cluster.total_nodes #=> Integer
    #   resp.data.cluster.active_nodes #=> Integer
    #   resp.data.cluster.node_type #=> String
    #   resp.data.cluster.status #=> String
    #   resp.data.cluster.cluster_discovery_endpoint #=> Types::Endpoint
    #   resp.data.cluster.cluster_discovery_endpoint.address #=> String
    #   resp.data.cluster.cluster_discovery_endpoint.port #=> Integer
    #   resp.data.cluster.cluster_discovery_endpoint.url #=> String
    #   resp.data.cluster.node_ids_to_remove #=> Array<String>
    #   resp.data.cluster.node_ids_to_remove[0] #=> String
    #   resp.data.cluster.nodes #=> Array<Node>
    #   resp.data.cluster.nodes[0] #=> Types::Node
    #   resp.data.cluster.nodes[0].node_id #=> String
    #   resp.data.cluster.nodes[0].endpoint #=> Types::Endpoint
    #   resp.data.cluster.nodes[0].node_create_time #=> Time
    #   resp.data.cluster.nodes[0].availability_zone #=> String
    #   resp.data.cluster.nodes[0].node_status #=> String
    #   resp.data.cluster.nodes[0].parameter_group_status #=> String
    #   resp.data.cluster.preferred_maintenance_window #=> String
    #   resp.data.cluster.notification_configuration #=> Types::NotificationConfiguration
    #   resp.data.cluster.notification_configuration.topic_arn #=> String
    #   resp.data.cluster.notification_configuration.topic_status #=> String
    #   resp.data.cluster.subnet_group #=> String
    #   resp.data.cluster.security_groups #=> Array<SecurityGroupMembership>
    #   resp.data.cluster.security_groups[0] #=> Types::SecurityGroupMembership
    #   resp.data.cluster.security_groups[0].security_group_identifier #=> String
    #   resp.data.cluster.security_groups[0].status #=> String
    #   resp.data.cluster.iam_role_arn #=> String
    #   resp.data.cluster.parameter_group #=> Types::ParameterGroupStatus
    #   resp.data.cluster.parameter_group.parameter_group_name #=> String
    #   resp.data.cluster.parameter_group.parameter_apply_status #=> String
    #   resp.data.cluster.parameter_group.node_ids_to_reboot #=> Array<String>
    #   resp.data.cluster.sse_description #=> Types::SSEDescription
    #   resp.data.cluster.sse_description.status #=> String, one of ["ENABLING", "ENABLED", "DISABLING", "DISABLED"]
    #   resp.data.cluster.cluster_endpoint_encryption_type #=> String, one of ["NONE", "TLS"]
    #
    def decrease_replication_factor(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DecreaseReplicationFactorInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DecreaseReplicationFactorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DecreaseReplicationFactor
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceLinkedRoleNotFoundFault, Errors::NodeNotFoundFault, Errors::InvalidParameterCombinationException, Errors::InvalidParameterValueException, Errors::InvalidClusterStateFault, Errors::ClusterNotFoundFault]),
        data_parser: Parsers::DecreaseReplicationFactor
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DecreaseReplicationFactor,
        stubs: @stubs,
        params_class: Params::DecreaseReplicationFactorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :decrease_replication_factor
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a previously provisioned DAX cluster.
    #                 <i>DeleteCluster</i> deletes all associated nodes, node endpoints
    #             and the DAX cluster itself. When you receive a successful response from this action,
    #             DAX immediately begins deleting the cluster; you cannot cancel or revert this
    #             action.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteClusterInput}.
    #
    # @option params [String] :cluster_name
    #   <p>The name of the cluster to be deleted.</p>
    #
    # @return [Types::DeleteClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cluster(
    #     cluster_name: 'ClusterName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteClusterOutput
    #   resp.data.cluster #=> Types::Cluster
    #   resp.data.cluster.cluster_name #=> String
    #   resp.data.cluster.description #=> String
    #   resp.data.cluster.cluster_arn #=> String
    #   resp.data.cluster.total_nodes #=> Integer
    #   resp.data.cluster.active_nodes #=> Integer
    #   resp.data.cluster.node_type #=> String
    #   resp.data.cluster.status #=> String
    #   resp.data.cluster.cluster_discovery_endpoint #=> Types::Endpoint
    #   resp.data.cluster.cluster_discovery_endpoint.address #=> String
    #   resp.data.cluster.cluster_discovery_endpoint.port #=> Integer
    #   resp.data.cluster.cluster_discovery_endpoint.url #=> String
    #   resp.data.cluster.node_ids_to_remove #=> Array<String>
    #   resp.data.cluster.node_ids_to_remove[0] #=> String
    #   resp.data.cluster.nodes #=> Array<Node>
    #   resp.data.cluster.nodes[0] #=> Types::Node
    #   resp.data.cluster.nodes[0].node_id #=> String
    #   resp.data.cluster.nodes[0].endpoint #=> Types::Endpoint
    #   resp.data.cluster.nodes[0].node_create_time #=> Time
    #   resp.data.cluster.nodes[0].availability_zone #=> String
    #   resp.data.cluster.nodes[0].node_status #=> String
    #   resp.data.cluster.nodes[0].parameter_group_status #=> String
    #   resp.data.cluster.preferred_maintenance_window #=> String
    #   resp.data.cluster.notification_configuration #=> Types::NotificationConfiguration
    #   resp.data.cluster.notification_configuration.topic_arn #=> String
    #   resp.data.cluster.notification_configuration.topic_status #=> String
    #   resp.data.cluster.subnet_group #=> String
    #   resp.data.cluster.security_groups #=> Array<SecurityGroupMembership>
    #   resp.data.cluster.security_groups[0] #=> Types::SecurityGroupMembership
    #   resp.data.cluster.security_groups[0].security_group_identifier #=> String
    #   resp.data.cluster.security_groups[0].status #=> String
    #   resp.data.cluster.iam_role_arn #=> String
    #   resp.data.cluster.parameter_group #=> Types::ParameterGroupStatus
    #   resp.data.cluster.parameter_group.parameter_group_name #=> String
    #   resp.data.cluster.parameter_group.parameter_apply_status #=> String
    #   resp.data.cluster.parameter_group.node_ids_to_reboot #=> Array<String>
    #   resp.data.cluster.sse_description #=> Types::SSEDescription
    #   resp.data.cluster.sse_description.status #=> String, one of ["ENABLING", "ENABLED", "DISABLING", "DISABLED"]
    #   resp.data.cluster.cluster_endpoint_encryption_type #=> String, one of ["NONE", "TLS"]
    #
    def delete_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteClusterInput.build(params)
      response_body = StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceLinkedRoleNotFoundFault, Errors::InvalidParameterCombinationException, Errors::InvalidParameterValueException, Errors::InvalidClusterStateFault, Errors::ClusterNotFoundFault]),
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

    # <p>Deletes the specified parameter group. You cannot delete a parameter group if it is
    #             associated with any DAX clusters.</p>
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
    #   resp.data.deletion_message #=> String
    #
    def delete_parameter_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteParameterGroupInput.build(params)
      response_body = StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ParameterGroupNotFoundFault, Errors::ServiceLinkedRoleNotFoundFault, Errors::InvalidParameterGroupStateFault, Errors::InvalidParameterCombinationException, Errors::InvalidParameterValueException]),
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

    # <p>Deletes a subnet group.</p>
    #         <note>
    #             <p>You cannot delete a subnet group if it is associated with any DAX
    #                 clusters.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteSubnetGroupInput}.
    #
    # @option params [String] :subnet_group_name
    #   <p>The name of the subnet group to delete.</p>
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
    #   resp.data.deletion_message #=> String
    #
    def delete_subnet_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteSubnetGroupInput.build(params)
      response_body = StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::SubnetGroupInUseFault, Errors::ServiceLinkedRoleNotFoundFault, Errors::SubnetGroupNotFoundFault]),
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

    # <p>Returns information about all provisioned DAX clusters if no cluster identifier
    #             is specified, or about a specific DAX cluster if a cluster identifier is
    #             supplied.</p>
    #         <p>If the cluster is in the CREATING state, only cluster level information will be
    #             displayed until all of the nodes are successfully provisioned.</p>
    #         <p>If the cluster is in the DELETING state, only cluster level information will be
    #             displayed.</p>
    #         <p>If nodes are currently being added to the DAX cluster, node endpoint information
    #             and creation time for the additional nodes will not be displayed until they are
    #             completely provisioned. When the DAX cluster state is <i>available</i>,
    #             the cluster is ready for use.</p>
    #         <p>If nodes are currently being removed from the DAX cluster, no endpoint
    #             information for the removed nodes is displayed.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeClustersInput}.
    #
    # @option params [Array<String>] :cluster_names
    #   <p>The names of the DAX clusters being described.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response. If more results exist
    #               than the specified <code>MaxResults</code> value, a token is included in the response so
    #               that the remaining results can be retrieved.</p>
    #           <p>The value for <code>MaxResults</code> must be between 20 and 100.</p>
    #
    # @option params [String] :next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of
    #               results from this action. If this parameter is specified, the response includes only
    #               results beyond the token, up to the value specified by
    #               <code>MaxResults</code>.</p>
    #
    # @return [Types::DescribeClustersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_clusters(
    #     cluster_names: [
    #       'member'
    #     ],
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeClustersOutput
    #   resp.data.next_token #=> String
    #   resp.data.clusters #=> Array<Cluster>
    #   resp.data.clusters[0] #=> Types::Cluster
    #   resp.data.clusters[0].cluster_name #=> String
    #   resp.data.clusters[0].description #=> String
    #   resp.data.clusters[0].cluster_arn #=> String
    #   resp.data.clusters[0].total_nodes #=> Integer
    #   resp.data.clusters[0].active_nodes #=> Integer
    #   resp.data.clusters[0].node_type #=> String
    #   resp.data.clusters[0].status #=> String
    #   resp.data.clusters[0].cluster_discovery_endpoint #=> Types::Endpoint
    #   resp.data.clusters[0].cluster_discovery_endpoint.address #=> String
    #   resp.data.clusters[0].cluster_discovery_endpoint.port #=> Integer
    #   resp.data.clusters[0].cluster_discovery_endpoint.url #=> String
    #   resp.data.clusters[0].node_ids_to_remove #=> Array<String>
    #   resp.data.clusters[0].node_ids_to_remove[0] #=> String
    #   resp.data.clusters[0].nodes #=> Array<Node>
    #   resp.data.clusters[0].nodes[0] #=> Types::Node
    #   resp.data.clusters[0].nodes[0].node_id #=> String
    #   resp.data.clusters[0].nodes[0].endpoint #=> Types::Endpoint
    #   resp.data.clusters[0].nodes[0].node_create_time #=> Time
    #   resp.data.clusters[0].nodes[0].availability_zone #=> String
    #   resp.data.clusters[0].nodes[0].node_status #=> String
    #   resp.data.clusters[0].nodes[0].parameter_group_status #=> String
    #   resp.data.clusters[0].preferred_maintenance_window #=> String
    #   resp.data.clusters[0].notification_configuration #=> Types::NotificationConfiguration
    #   resp.data.clusters[0].notification_configuration.topic_arn #=> String
    #   resp.data.clusters[0].notification_configuration.topic_status #=> String
    #   resp.data.clusters[0].subnet_group #=> String
    #   resp.data.clusters[0].security_groups #=> Array<SecurityGroupMembership>
    #   resp.data.clusters[0].security_groups[0] #=> Types::SecurityGroupMembership
    #   resp.data.clusters[0].security_groups[0].security_group_identifier #=> String
    #   resp.data.clusters[0].security_groups[0].status #=> String
    #   resp.data.clusters[0].iam_role_arn #=> String
    #   resp.data.clusters[0].parameter_group #=> Types::ParameterGroupStatus
    #   resp.data.clusters[0].parameter_group.parameter_group_name #=> String
    #   resp.data.clusters[0].parameter_group.parameter_apply_status #=> String
    #   resp.data.clusters[0].parameter_group.node_ids_to_reboot #=> Array<String>
    #   resp.data.clusters[0].sse_description #=> Types::SSEDescription
    #   resp.data.clusters[0].sse_description.status #=> String, one of ["ENABLING", "ENABLED", "DISABLING", "DISABLED"]
    #   resp.data.clusters[0].cluster_endpoint_encryption_type #=> String, one of ["NONE", "TLS"]
    #
    def describe_clusters(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeClustersInput.build(params)
      response_body = StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceLinkedRoleNotFoundFault, Errors::InvalidParameterCombinationException, Errors::InvalidParameterValueException, Errors::ClusterNotFoundFault]),
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

    # <p>Returns the default system parameter information for the DAX caching
    #             software.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDefaultParametersInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response. If more results exist
    #               than the specified <code>MaxResults</code> value, a token is included in the response so
    #               that the remaining results can be retrieved.</p>
    #           <p>The value for <code>MaxResults</code> must be between 20 and 100.</p>
    #
    # @option params [String] :next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of
    #               results from this action. If this parameter is specified, the response includes only
    #               results beyond the token, up to the value specified by
    #               <code>MaxResults</code>.</p>
    #
    # @return [Types::DescribeDefaultParametersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_default_parameters(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDefaultParametersOutput
    #   resp.data.next_token #=> String
    #   resp.data.parameters #=> Array<Parameter>
    #   resp.data.parameters[0] #=> Types::Parameter
    #   resp.data.parameters[0].parameter_name #=> String
    #   resp.data.parameters[0].parameter_type #=> String, one of ["DEFAULT", "NODE_TYPE_SPECIFIC"]
    #   resp.data.parameters[0].parameter_value #=> String
    #   resp.data.parameters[0].node_type_specific_values #=> Array<NodeTypeSpecificValue>
    #   resp.data.parameters[0].node_type_specific_values[0] #=> Types::NodeTypeSpecificValue
    #   resp.data.parameters[0].node_type_specific_values[0].node_type #=> String
    #   resp.data.parameters[0].node_type_specific_values[0].value #=> String
    #   resp.data.parameters[0].description #=> String
    #   resp.data.parameters[0].source #=> String
    #   resp.data.parameters[0].data_type #=> String
    #   resp.data.parameters[0].allowed_values #=> String
    #   resp.data.parameters[0].is_modifiable #=> String, one of ["TRUE", "FALSE", "CONDITIONAL"]
    #   resp.data.parameters[0].change_type #=> String, one of ["IMMEDIATE", "REQUIRES_REBOOT"]
    #
    def describe_default_parameters(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDefaultParametersInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDefaultParametersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDefaultParameters
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceLinkedRoleNotFoundFault, Errors::InvalidParameterCombinationException, Errors::InvalidParameterValueException]),
        data_parser: Parsers::DescribeDefaultParameters
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDefaultParameters,
        stubs: @stubs,
        params_class: Params::DescribeDefaultParametersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_default_parameters
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns events related to DAX clusters and parameter groups. You can obtain
    #             events specific to a particular DAX cluster or parameter group by providing the name
    #             as a parameter.</p>
    #         <p>By default, only the events occurring within the last 24 hours are returned; however,
    #             you can retrieve up to 14 days' worth of events if necessary.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEventsInput}.
    #
    # @option params [String] :source_name
    #   <p>The identifier of the event source for which events will be returned. If not
    #               specified, then all sources are included in the response.</p>
    #
    # @option params [String] :source_type
    #   <p>The event source to retrieve events for. If no value is specified, all events are
    #               returned.</p>
    #
    # @option params [Time] :start_time
    #   <p>The beginning of the time interval to retrieve events for, specified in ISO 8601
    #               format.</p>
    #
    # @option params [Time] :end_time
    #   <p>The end of the time interval for which to retrieve events, specified in ISO 8601
    #               format.</p>
    #
    # @option params [Integer] :duration
    #   <p>The number of minutes' worth of events to retrieve.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response. If more results exist
    #               than the specified <code>MaxResults</code> value, a token is included in the response so
    #               that the remaining results can be retrieved.</p>
    #           <p>The value for <code>MaxResults</code> must be between 20 and 100.</p>
    #
    # @option params [String] :next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of
    #               results from this action. If this parameter is specified, the response includes only
    #               results beyond the token, up to the value specified by
    #               <code>MaxResults</code>.</p>
    #
    # @return [Types::DescribeEventsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_events(
    #     source_name: 'SourceName',
    #     source_type: 'CLUSTER', # accepts ["CLUSTER", "PARAMETER_GROUP", "SUBNET_GROUP"]
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
    #   resp.data.events[0].source_type #=> String, one of ["CLUSTER", "PARAMETER_GROUP", "SUBNET_GROUP"]
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceLinkedRoleNotFoundFault, Errors::InvalidParameterCombinationException, Errors::InvalidParameterValueException]),
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

    # <p>Returns a list of parameter group descriptions. If a parameter group name is
    #             specified, the list will contain only the descriptions for that group.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeParameterGroupsInput}.
    #
    # @option params [Array<String>] :parameter_group_names
    #   <p>The names of the parameter groups.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response. If more results exist
    #               than the specified <code>MaxResults</code> value, a token is included in the response so
    #               that the remaining results can be retrieved.</p>
    #           <p>The value for <code>MaxResults</code> must be between 20 and 100.</p>
    #
    # @option params [String] :next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of
    #               results from this action. If this parameter is specified, the response includes only
    #               results beyond the token, up to the value specified by
    #               <code>MaxResults</code>.</p>
    #
    # @return [Types::DescribeParameterGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_parameter_groups(
    #     parameter_group_names: [
    #       'member'
    #     ],
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
    #   resp.data.parameter_groups[0].parameter_group_name #=> String
    #   resp.data.parameter_groups[0].description #=> String
    #
    def describe_parameter_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeParameterGroupsInput.build(params)
      response_body = StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ParameterGroupNotFoundFault, Errors::ServiceLinkedRoleNotFoundFault, Errors::InvalidParameterCombinationException, Errors::InvalidParameterValueException]),
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
    #   <p>The name of the parameter group.</p>
    #
    # @option params [String] :source
    #   <p>How the parameter is defined. For example, <code>system</code> denotes a
    #               system-defined parameter.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response. If more results exist
    #               than the specified <code>MaxResults</code> value, a token is included in the response so
    #               that the remaining results can be retrieved.</p>
    #           <p>The value for <code>MaxResults</code> must be between 20 and 100.</p>
    #
    # @option params [String] :next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of
    #               results from this action. If this parameter is specified, the response includes only
    #               results beyond the token, up to the value specified by
    #               <code>MaxResults</code>.</p>
    #
    # @return [Types::DescribeParametersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_parameters(
    #     parameter_group_name: 'ParameterGroupName', # required
    #     source: 'Source',
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
    #   resp.data.parameters[0].parameter_name #=> String
    #   resp.data.parameters[0].parameter_type #=> String, one of ["DEFAULT", "NODE_TYPE_SPECIFIC"]
    #   resp.data.parameters[0].parameter_value #=> String
    #   resp.data.parameters[0].node_type_specific_values #=> Array<NodeTypeSpecificValue>
    #   resp.data.parameters[0].node_type_specific_values[0] #=> Types::NodeTypeSpecificValue
    #   resp.data.parameters[0].node_type_specific_values[0].node_type #=> String
    #   resp.data.parameters[0].node_type_specific_values[0].value #=> String
    #   resp.data.parameters[0].description #=> String
    #   resp.data.parameters[0].source #=> String
    #   resp.data.parameters[0].data_type #=> String
    #   resp.data.parameters[0].allowed_values #=> String
    #   resp.data.parameters[0].is_modifiable #=> String, one of ["TRUE", "FALSE", "CONDITIONAL"]
    #   resp.data.parameters[0].change_type #=> String, one of ["IMMEDIATE", "REQUIRES_REBOOT"]
    #
    def describe_parameters(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeParametersInput.build(params)
      response_body = StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ParameterGroupNotFoundFault, Errors::ServiceLinkedRoleNotFoundFault, Errors::InvalidParameterCombinationException, Errors::InvalidParameterValueException]),
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

    # <p>Returns a list of subnet group descriptions. If a subnet group name is specified,
    #             the list will contain only the description of that group.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeSubnetGroupsInput}.
    #
    # @option params [Array<String>] :subnet_group_names
    #   <p>The name of the subnet group.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response. If more results exist
    #               than the specified <code>MaxResults</code> value, a token is included in the response so
    #               that the remaining results can be retrieved.</p>
    #               <p>The value for <code>MaxResults</code> must be between 20 and 100.</p>
    #
    # @option params [String] :next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of
    #               results from this action. If this parameter is specified, the response includes only
    #               results beyond the token, up to the value specified by
    #               <code>MaxResults</code>.</p>
    #
    # @return [Types::DescribeSubnetGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_subnet_groups(
    #     subnet_group_names: [
    #       'member'
    #     ],
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
    #   resp.data.subnet_groups[0].subnet_group_name #=> String
    #   resp.data.subnet_groups[0].description #=> String
    #   resp.data.subnet_groups[0].vpc_id #=> String
    #   resp.data.subnet_groups[0].subnets #=> Array<Subnet>
    #   resp.data.subnet_groups[0].subnets[0] #=> Types::Subnet
    #   resp.data.subnet_groups[0].subnets[0].subnet_identifier #=> String
    #   resp.data.subnet_groups[0].subnets[0].subnet_availability_zone #=> String
    #
    def describe_subnet_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeSubnetGroupsInput.build(params)
      response_body = StringIO.new
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

    # <p>Adds one or more nodes to a DAX cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::IncreaseReplicationFactorInput}.
    #
    # @option params [String] :cluster_name
    #   <p>The name of the DAX cluster that will receive additional nodes.</p>
    #
    # @option params [Integer] :new_replication_factor
    #   <p>The new number of nodes for the DAX cluster.</p>
    #
    # @option params [Array<String>] :availability_zones
    #   <p>The Availability Zones (AZs) in which the cluster nodes will be created. All nodes
    #               belonging to the cluster are placed in these Availability Zones. Use this parameter if you want
    #               to distribute the nodes across multiple AZs.</p>
    #
    # @return [Types::IncreaseReplicationFactorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.increase_replication_factor(
    #     cluster_name: 'ClusterName', # required
    #     new_replication_factor: 1, # required
    #     availability_zones: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::IncreaseReplicationFactorOutput
    #   resp.data.cluster #=> Types::Cluster
    #   resp.data.cluster.cluster_name #=> String
    #   resp.data.cluster.description #=> String
    #   resp.data.cluster.cluster_arn #=> String
    #   resp.data.cluster.total_nodes #=> Integer
    #   resp.data.cluster.active_nodes #=> Integer
    #   resp.data.cluster.node_type #=> String
    #   resp.data.cluster.status #=> String
    #   resp.data.cluster.cluster_discovery_endpoint #=> Types::Endpoint
    #   resp.data.cluster.cluster_discovery_endpoint.address #=> String
    #   resp.data.cluster.cluster_discovery_endpoint.port #=> Integer
    #   resp.data.cluster.cluster_discovery_endpoint.url #=> String
    #   resp.data.cluster.node_ids_to_remove #=> Array<String>
    #   resp.data.cluster.node_ids_to_remove[0] #=> String
    #   resp.data.cluster.nodes #=> Array<Node>
    #   resp.data.cluster.nodes[0] #=> Types::Node
    #   resp.data.cluster.nodes[0].node_id #=> String
    #   resp.data.cluster.nodes[0].endpoint #=> Types::Endpoint
    #   resp.data.cluster.nodes[0].node_create_time #=> Time
    #   resp.data.cluster.nodes[0].availability_zone #=> String
    #   resp.data.cluster.nodes[0].node_status #=> String
    #   resp.data.cluster.nodes[0].parameter_group_status #=> String
    #   resp.data.cluster.preferred_maintenance_window #=> String
    #   resp.data.cluster.notification_configuration #=> Types::NotificationConfiguration
    #   resp.data.cluster.notification_configuration.topic_arn #=> String
    #   resp.data.cluster.notification_configuration.topic_status #=> String
    #   resp.data.cluster.subnet_group #=> String
    #   resp.data.cluster.security_groups #=> Array<SecurityGroupMembership>
    #   resp.data.cluster.security_groups[0] #=> Types::SecurityGroupMembership
    #   resp.data.cluster.security_groups[0].security_group_identifier #=> String
    #   resp.data.cluster.security_groups[0].status #=> String
    #   resp.data.cluster.iam_role_arn #=> String
    #   resp.data.cluster.parameter_group #=> Types::ParameterGroupStatus
    #   resp.data.cluster.parameter_group.parameter_group_name #=> String
    #   resp.data.cluster.parameter_group.parameter_apply_status #=> String
    #   resp.data.cluster.parameter_group.node_ids_to_reboot #=> Array<String>
    #   resp.data.cluster.sse_description #=> Types::SSEDescription
    #   resp.data.cluster.sse_description.status #=> String, one of ["ENABLING", "ENABLED", "DISABLING", "DISABLED"]
    #   resp.data.cluster.cluster_endpoint_encryption_type #=> String, one of ["NONE", "TLS"]
    #
    def increase_replication_factor(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::IncreaseReplicationFactorInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::IncreaseReplicationFactorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::IncreaseReplicationFactor
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NodeQuotaForClusterExceededFault, Errors::ServiceLinkedRoleNotFoundFault, Errors::NodeQuotaForCustomerExceededFault, Errors::InsufficientClusterCapacityFault, Errors::InvalidVPCNetworkStateFault, Errors::InvalidParameterCombinationException, Errors::InvalidParameterValueException, Errors::InvalidClusterStateFault, Errors::ClusterNotFoundFault]),
        data_parser: Parsers::IncreaseReplicationFactor
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::IncreaseReplicationFactor,
        stubs: @stubs,
        params_class: Params::IncreaseReplicationFactorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :increase_replication_factor
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List all of the tags for a DAX cluster. You can call <code>ListTags</code> up to
    #             10 times per second, per account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsInput}.
    #
    # @option params [String] :resource_name
    #   <p>The name of the DAX resource to which the tags belong.</p>
    #
    # @option params [String] :next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of
    #               results from this action. If this parameter is specified, the response includes only
    #               results beyond the token.</p>
    #
    # @return [Types::ListTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags(
    #     resource_name: 'ResourceName', # required
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsOutput
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.next_token #=> String
    #
    def list_tags(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTagsInput.build(params)
      response_body = StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceLinkedRoleNotFoundFault, Errors::InvalidParameterCombinationException, Errors::InvalidParameterValueException, Errors::InvalidClusterStateFault, Errors::InvalidARNFault, Errors::ClusterNotFoundFault]),
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

    # <p>Reboots a single node of a DAX cluster. The reboot action takes place
    #             as soon as possible. During the
    #             reboot, the node status is set to REBOOTING.</p>
    #         <note>
    #             <p>
    #                <code>RebootNode</code> restarts the DAX engine process and does not remove the contents of the cache.  </p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::RebootNodeInput}.
    #
    # @option params [String] :cluster_name
    #   <p>The name of the DAX cluster containing the node to be rebooted.</p>
    #
    # @option params [String] :node_id
    #   <p>The system-assigned ID of the node to be rebooted.</p>
    #
    # @return [Types::RebootNodeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reboot_node(
    #     cluster_name: 'ClusterName', # required
    #     node_id: 'NodeId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RebootNodeOutput
    #   resp.data.cluster #=> Types::Cluster
    #   resp.data.cluster.cluster_name #=> String
    #   resp.data.cluster.description #=> String
    #   resp.data.cluster.cluster_arn #=> String
    #   resp.data.cluster.total_nodes #=> Integer
    #   resp.data.cluster.active_nodes #=> Integer
    #   resp.data.cluster.node_type #=> String
    #   resp.data.cluster.status #=> String
    #   resp.data.cluster.cluster_discovery_endpoint #=> Types::Endpoint
    #   resp.data.cluster.cluster_discovery_endpoint.address #=> String
    #   resp.data.cluster.cluster_discovery_endpoint.port #=> Integer
    #   resp.data.cluster.cluster_discovery_endpoint.url #=> String
    #   resp.data.cluster.node_ids_to_remove #=> Array<String>
    #   resp.data.cluster.node_ids_to_remove[0] #=> String
    #   resp.data.cluster.nodes #=> Array<Node>
    #   resp.data.cluster.nodes[0] #=> Types::Node
    #   resp.data.cluster.nodes[0].node_id #=> String
    #   resp.data.cluster.nodes[0].endpoint #=> Types::Endpoint
    #   resp.data.cluster.nodes[0].node_create_time #=> Time
    #   resp.data.cluster.nodes[0].availability_zone #=> String
    #   resp.data.cluster.nodes[0].node_status #=> String
    #   resp.data.cluster.nodes[0].parameter_group_status #=> String
    #   resp.data.cluster.preferred_maintenance_window #=> String
    #   resp.data.cluster.notification_configuration #=> Types::NotificationConfiguration
    #   resp.data.cluster.notification_configuration.topic_arn #=> String
    #   resp.data.cluster.notification_configuration.topic_status #=> String
    #   resp.data.cluster.subnet_group #=> String
    #   resp.data.cluster.security_groups #=> Array<SecurityGroupMembership>
    #   resp.data.cluster.security_groups[0] #=> Types::SecurityGroupMembership
    #   resp.data.cluster.security_groups[0].security_group_identifier #=> String
    #   resp.data.cluster.security_groups[0].status #=> String
    #   resp.data.cluster.iam_role_arn #=> String
    #   resp.data.cluster.parameter_group #=> Types::ParameterGroupStatus
    #   resp.data.cluster.parameter_group.parameter_group_name #=> String
    #   resp.data.cluster.parameter_group.parameter_apply_status #=> String
    #   resp.data.cluster.parameter_group.node_ids_to_reboot #=> Array<String>
    #   resp.data.cluster.sse_description #=> Types::SSEDescription
    #   resp.data.cluster.sse_description.status #=> String, one of ["ENABLING", "ENABLED", "DISABLING", "DISABLED"]
    #   resp.data.cluster.cluster_endpoint_encryption_type #=> String, one of ["NONE", "TLS"]
    #
    def reboot_node(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RebootNodeInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RebootNodeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RebootNode
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceLinkedRoleNotFoundFault, Errors::NodeNotFoundFault, Errors::InvalidParameterCombinationException, Errors::InvalidParameterValueException, Errors::InvalidClusterStateFault, Errors::ClusterNotFoundFault]),
        data_parser: Parsers::RebootNode
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RebootNode,
        stubs: @stubs,
        params_class: Params::RebootNodeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :reboot_node
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates a set of tags with a DAX resource.  You can call <code>TagResource</code> up to 5 times per second, per
    #             account. </p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_name
    #   <p>The name of the DAX resource to which tags should be added.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to be assigned to the DAX resource. </p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
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
    #   resp.data #=> Types::TagResourceOutput
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #
    def tag_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TagResourceInput.build(params)
      response_body = StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceLinkedRoleNotFoundFault, Errors::InvalidParameterCombinationException, Errors::InvalidParameterValueException, Errors::InvalidClusterStateFault, Errors::InvalidARNFault, Errors::TagQuotaPerResourceExceeded, Errors::ClusterNotFoundFault]),
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

    # <p>Removes the association of tags from a DAX resource. You can call
    #             <code>UntagResource</code> up to 5 times per second, per account. </p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_name
    #   <p>The name of the DAX resource from which the tags should be removed.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>A list of tag keys. If the DAX cluster has any tags with these keys, then the tags are removed from the cluster.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_name: 'ResourceName', # required
    #     tag_keys: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UntagResourceOutput
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #
    def untag_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UntagResourceInput.build(params)
      response_body = StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceLinkedRoleNotFoundFault, Errors::InvalidParameterCombinationException, Errors::InvalidParameterValueException, Errors::InvalidClusterStateFault, Errors::InvalidARNFault, Errors::ClusterNotFoundFault, Errors::TagNotFoundFault]),
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

    # <p>Modifies the settings for a DAX cluster. You can use this action to change one or
    #             more cluster configuration parameters by specifying the parameters and the new
    #             values.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateClusterInput}.
    #
    # @option params [String] :cluster_name
    #   <p>The name of the DAX cluster to be modified.</p>
    #
    # @option params [String] :description
    #   <p>A description of the changes being made to the cluster.</p>
    #
    # @option params [String] :preferred_maintenance_window
    #   <p>A range of time when maintenance of DAX cluster software will be performed. For
    #               example: <code>sun:01:00-sun:09:00</code>. Cluster maintenance normally takes less than
    #               30 minutes, and is performed automatically within the maintenance window.</p>
    #
    # @option params [String] :notification_topic_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the topic.</p>
    #
    # @option params [String] :notification_topic_status
    #   <p>The current state of the topic. A value of “active” means that notifications will
    #           be sent to the topic. A value of “inactive” means that notifications will not be sent to the
    #           topic.</p>
    #
    # @option params [String] :parameter_group_name
    #   <p>The name of a parameter group for this cluster.</p>
    #
    # @option params [Array<String>] :security_group_ids
    #   <p>A list of user-specified security group IDs to be assigned to each node in the DAX cluster.  If this parameter is not
    #               specified, DAX assigns the default VPC security group to each node.</p>
    #
    # @return [Types::UpdateClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_cluster(
    #     cluster_name: 'ClusterName', # required
    #     description: 'Description',
    #     preferred_maintenance_window: 'PreferredMaintenanceWindow',
    #     notification_topic_arn: 'NotificationTopicArn',
    #     notification_topic_status: 'NotificationTopicStatus',
    #     parameter_group_name: 'ParameterGroupName',
    #     security_group_ids: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateClusterOutput
    #   resp.data.cluster #=> Types::Cluster
    #   resp.data.cluster.cluster_name #=> String
    #   resp.data.cluster.description #=> String
    #   resp.data.cluster.cluster_arn #=> String
    #   resp.data.cluster.total_nodes #=> Integer
    #   resp.data.cluster.active_nodes #=> Integer
    #   resp.data.cluster.node_type #=> String
    #   resp.data.cluster.status #=> String
    #   resp.data.cluster.cluster_discovery_endpoint #=> Types::Endpoint
    #   resp.data.cluster.cluster_discovery_endpoint.address #=> String
    #   resp.data.cluster.cluster_discovery_endpoint.port #=> Integer
    #   resp.data.cluster.cluster_discovery_endpoint.url #=> String
    #   resp.data.cluster.node_ids_to_remove #=> Array<String>
    #   resp.data.cluster.node_ids_to_remove[0] #=> String
    #   resp.data.cluster.nodes #=> Array<Node>
    #   resp.data.cluster.nodes[0] #=> Types::Node
    #   resp.data.cluster.nodes[0].node_id #=> String
    #   resp.data.cluster.nodes[0].endpoint #=> Types::Endpoint
    #   resp.data.cluster.nodes[0].node_create_time #=> Time
    #   resp.data.cluster.nodes[0].availability_zone #=> String
    #   resp.data.cluster.nodes[0].node_status #=> String
    #   resp.data.cluster.nodes[0].parameter_group_status #=> String
    #   resp.data.cluster.preferred_maintenance_window #=> String
    #   resp.data.cluster.notification_configuration #=> Types::NotificationConfiguration
    #   resp.data.cluster.notification_configuration.topic_arn #=> String
    #   resp.data.cluster.notification_configuration.topic_status #=> String
    #   resp.data.cluster.subnet_group #=> String
    #   resp.data.cluster.security_groups #=> Array<SecurityGroupMembership>
    #   resp.data.cluster.security_groups[0] #=> Types::SecurityGroupMembership
    #   resp.data.cluster.security_groups[0].security_group_identifier #=> String
    #   resp.data.cluster.security_groups[0].status #=> String
    #   resp.data.cluster.iam_role_arn #=> String
    #   resp.data.cluster.parameter_group #=> Types::ParameterGroupStatus
    #   resp.data.cluster.parameter_group.parameter_group_name #=> String
    #   resp.data.cluster.parameter_group.parameter_apply_status #=> String
    #   resp.data.cluster.parameter_group.node_ids_to_reboot #=> Array<String>
    #   resp.data.cluster.sse_description #=> Types::SSEDescription
    #   resp.data.cluster.sse_description.status #=> String, one of ["ENABLING", "ENABLED", "DISABLING", "DISABLED"]
    #   resp.data.cluster.cluster_endpoint_encryption_type #=> String, one of ["NONE", "TLS"]
    #
    def update_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateClusterInput.build(params)
      response_body = StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ParameterGroupNotFoundFault, Errors::ServiceLinkedRoleNotFoundFault, Errors::InvalidParameterGroupStateFault, Errors::InvalidParameterCombinationException, Errors::InvalidParameterValueException, Errors::InvalidClusterStateFault, Errors::ClusterNotFoundFault]),
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

    # <p>Modifies the parameters of a parameter group. You can modify up to 20
    #             parameters in a single request by submitting a list parameter name and value
    #             pairs.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateParameterGroupInput}.
    #
    # @option params [String] :parameter_group_name
    #   <p>The name of the parameter group.</p>
    #
    # @option params [Array<ParameterNameValue>] :parameter_name_values
    #   <p>An array of name-value pairs for the parameters in the group. Each element in the
    #               array represents a single parameter.</p>
    #               <note>
    #               <p>
    #                  <code>record-ttl-millis</code> and <code>query-ttl-millis</code> are the only supported parameter names. For more details, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DAX.cluster-management.html#DAX.cluster-management.custom-settings.ttl">Configuring TTL Settings</a>.</p>
    #           </note>
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
    #   resp.data.parameter_group.parameter_group_name #=> String
    #   resp.data.parameter_group.description #=> String
    #
    def update_parameter_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateParameterGroupInput.build(params)
      response_body = StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ParameterGroupNotFoundFault, Errors::ServiceLinkedRoleNotFoundFault, Errors::InvalidParameterGroupStateFault, Errors::InvalidParameterCombinationException, Errors::InvalidParameterValueException]),
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

    # <p>Modifies an existing subnet group.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateSubnetGroupInput}.
    #
    # @option params [String] :subnet_group_name
    #   <p>The name of the subnet group.</p>
    #
    # @option params [String] :description
    #   <p>A description of the subnet group.</p>
    #
    # @option params [Array<String>] :subnet_ids
    #   <p>A list of subnet IDs in the subnet group.</p>
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
    #   resp.data.subnet_group.subnet_group_name #=> String
    #   resp.data.subnet_group.description #=> String
    #   resp.data.subnet_group.vpc_id #=> String
    #   resp.data.subnet_group.subnets #=> Array<Subnet>
    #   resp.data.subnet_group.subnets[0] #=> Types::Subnet
    #   resp.data.subnet_group.subnets[0].subnet_identifier #=> String
    #   resp.data.subnet_group.subnets[0].subnet_availability_zone #=> String
    #
    def update_subnet_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateSubnetGroupInput.build(params)
      response_body = StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceLinkedRoleNotFoundFault, Errors::SubnetInUse, Errors::SubnetGroupNotFoundFault, Errors::InvalidSubnet, Errors::SubnetQuotaExceededFault]),
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

    private

    def apply_middleware(middleware_stack, middleware)
      Client.middleware.apply(middleware_stack)
      @middleware.apply(middleware_stack)
      Hearth::MiddlewareBuilder.new(middleware).apply(middleware_stack)
    end
  end
end
