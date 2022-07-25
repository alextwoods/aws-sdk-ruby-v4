# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::Redshift
  # An API client for RedshiftServiceVersion20121201
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Amazon Redshift</fullname>
  #         <p>
  #             <b>Overview</b>
  #         </p>
  #         <p>This is an interface reference for Amazon Redshift. It contains documentation for one of
  #             the programming or command line interfaces you can use to manage Amazon Redshift clusters.
  #             Note that Amazon Redshift is asynchronous, which means that some interfaces may require
  #             techniques, such as polling or asynchronous callback handlers, to determine when a
  #             command has been applied. In this reference, the parameter descriptions indicate whether
  #             a change is applied immediately, on the next instance reboot, or during the next
  #             maintenance window. For a summary of the Amazon Redshift cluster management interfaces, go to
  #                 <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/using-aws-sdk.html">Using the
  #                 Amazon Redshift Management Interfaces</a>.</p>
  #         <p>Amazon Redshift manages all the work of setting up, operating, and scaling a data
  #             warehouse: provisioning capacity, monitoring and backing up the cluster, and applying
  #             patches and upgrades to the Amazon Redshift engine. You can focus on using your data to
  #             acquire new insights for your business and customers.</p>
  #         <p>If you are a first-time user of Amazon Redshift, we recommend that you begin by reading
  #             the <a href="https://docs.aws.amazon.com/redshift/latest/gsg/getting-started.html">Amazon Redshift Getting Started Guide</a>.</p>
  #
  #         <p>If you are a database developer, the <a href="https://docs.aws.amazon.com/redshift/latest/dg/welcome.html">Amazon Redshift Database Developer Guide</a> explains how to design,
  #             build, query, and maintain the databases that make up your data warehouse. </p>
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
    def initialize(config = AWS::SDK::Redshift::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Exchanges a DC1 Reserved Node for a DC2 Reserved Node with no changes to the
    #             configuration (term, payment type, or number of nodes) and no additional costs.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::AcceptReservedNodeExchangeInput}.
    #
    # @option params [String] :reserved_node_id
    #   <p>A string representing the node identifier of the DC1 Reserved Node to be
    #               exchanged.</p>
    #
    # @option params [String] :target_reserved_node_offering_id
    #   <p>The unique identifier of the DC2 Reserved Node offering to be used for the exchange.
    #               You can obtain the value for the parameter by calling <a>GetReservedNodeExchangeOfferings</a>
    #            </p>
    #
    # @return [Types::AcceptReservedNodeExchangeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_reserved_node_exchange(
    #     reserved_node_id: 'ReservedNodeId', # required
    #     target_reserved_node_offering_id: 'TargetReservedNodeOfferingId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AcceptReservedNodeExchangeOutput
    #   resp.data.exchanged_reserved_node #=> Types::ReservedNode
    #   resp.data.exchanged_reserved_node.reserved_node_id #=> String
    #   resp.data.exchanged_reserved_node.reserved_node_offering_id #=> String
    #   resp.data.exchanged_reserved_node.node_type #=> String
    #   resp.data.exchanged_reserved_node.start_time #=> Time
    #   resp.data.exchanged_reserved_node.duration #=> Integer
    #   resp.data.exchanged_reserved_node.fixed_price #=> Float
    #   resp.data.exchanged_reserved_node.usage_price #=> Float
    #   resp.data.exchanged_reserved_node.currency_code #=> String
    #   resp.data.exchanged_reserved_node.node_count #=> Integer
    #   resp.data.exchanged_reserved_node.state #=> String
    #   resp.data.exchanged_reserved_node.offering_type #=> String
    #   resp.data.exchanged_reserved_node.recurring_charges #=> Array<RecurringCharge>
    #   resp.data.exchanged_reserved_node.recurring_charges[0] #=> Types::RecurringCharge
    #   resp.data.exchanged_reserved_node.recurring_charges[0].recurring_charge_amount #=> Float
    #   resp.data.exchanged_reserved_node.recurring_charges[0].recurring_charge_frequency #=> String
    #   resp.data.exchanged_reserved_node.reserved_node_offering_type #=> String, one of ["Regular", "Upgradable"]
    #
    def accept_reserved_node_exchange(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AcceptReservedNodeExchangeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AcceptReservedNodeExchangeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AcceptReservedNodeExchange
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ReservedNodeAlreadyMigratedFault, Errors::UnsupportedOperationFault, Errors::InvalidReservedNodeStateFault, Errors::ReservedNodeAlreadyExistsFault, Errors::ReservedNodeOfferingNotFoundFault, Errors::DependentServiceUnavailableFault, Errors::ReservedNodeNotFoundFault]),
        data_parser: Parsers::AcceptReservedNodeExchange
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AcceptReservedNodeExchange,
        stubs: @stubs,
        params_class: Params::AcceptReservedNodeExchangeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :accept_reserved_node_exchange
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds a partner integration to a cluster.
    #             This operation authorizes a partner to push status updates for the specified database.
    #             To complete the integration, you also set up the integration on the partner website.</p>
    #
    # @param [Hash] params
    #   See {Types::AddPartnerInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID that owns the cluster.</p>
    #
    # @option params [String] :cluster_identifier
    #   <p>The cluster identifier of the cluster that receives data from the partner.</p>
    #
    # @option params [String] :database_name
    #   <p>The name of the database that receives data from the partner.</p>
    #
    # @option params [String] :partner_name
    #   <p>The name of the partner that is authorized to send data.</p>
    #
    # @return [Types::AddPartnerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_partner(
    #     account_id: 'AccountId', # required
    #     cluster_identifier: 'ClusterIdentifier', # required
    #     database_name: 'DatabaseName', # required
    #     partner_name: 'PartnerName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AddPartnerOutput
    #   resp.data.database_name #=> String
    #   resp.data.partner_name #=> String
    #
    def add_partner(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddPartnerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AddPartnerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AddPartner
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::PartnerNotFoundFault, Errors::ClusterNotFoundFault, Errors::UnauthorizedPartnerIntegrationFault]),
        data_parser: Parsers::AddPartner
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AddPartner,
        stubs: @stubs,
        params_class: Params::AddPartnerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :add_partner
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>From a datashare consumer account, associates a datashare with the
    #             account (AssociateEntireAccount) or the specified namespace (ConsumerArn). If you make this association, the consumer
    #             can consume the datashare.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateDataShareConsumerInput}.
    #
    # @option params [String] :data_share_arn
    #   <p>The Amazon Resource Name (ARN) of the datashare that the consumer is to use with the account or the namespace.</p>
    #
    # @option params [Boolean] :associate_entire_account
    #   <p>A value that specifies whether the datashare is associated with the entire account.</p>
    #
    # @option params [String] :consumer_arn
    #   <p>The Amazon Resource Name (ARN) of the consumer that is associated with the
    #               datashare.</p>
    #
    # @option params [String] :consumer_region
    #   <p>From a datashare consumer account, associates a datashare with all existing and future namespaces in the specified Amazon Web Services Region.</p>
    #
    # @return [Types::AssociateDataShareConsumerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_data_share_consumer(
    #     data_share_arn: 'DataShareArn', # required
    #     associate_entire_account: false,
    #     consumer_arn: 'ConsumerArn',
    #     consumer_region: 'ConsumerRegion'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateDataShareConsumerOutput
    #   resp.data.data_share_arn #=> String
    #   resp.data.producer_arn #=> String
    #   resp.data.allow_publicly_accessible_consumers #=> Boolean
    #   resp.data.data_share_associations #=> Array<DataShareAssociation>
    #   resp.data.data_share_associations[0] #=> Types::DataShareAssociation
    #   resp.data.data_share_associations[0].consumer_identifier #=> String
    #   resp.data.data_share_associations[0].status #=> String, one of ["ACTIVE", "PENDING_AUTHORIZATION", "AUTHORIZED", "DEAUTHORIZED", "REJECTED", "AVAILABLE"]
    #   resp.data.data_share_associations[0].consumer_region #=> String
    #   resp.data.data_share_associations[0].created_date #=> Time
    #   resp.data.data_share_associations[0].status_change_date #=> Time
    #   resp.data.managed_by #=> String
    #
    def associate_data_share_consumer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateDataShareConsumerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateDataShareConsumerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateDataShareConsumer
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidDataShareFault, Errors::InvalidNamespaceFault]),
        data_parser: Parsers::AssociateDataShareConsumer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateDataShareConsumer,
        stubs: @stubs,
        params_class: Params::AssociateDataShareConsumerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_data_share_consumer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds an inbound (ingress) rule to an Amazon Redshift security group. Depending on whether
    #             the application accessing your cluster is running on the Internet or an Amazon EC2
    #             instance, you can authorize inbound access to either a Classless Interdomain Routing
    #             (CIDR)/Internet Protocol (IP) range or to an Amazon EC2 security group. You can add as
    #             many as 20 ingress rules to an Amazon Redshift security group.</p>
    #         <p>If you authorize access to an Amazon EC2 security group, specify
    #                 <i>EC2SecurityGroupName</i> and
    #                 <i>EC2SecurityGroupOwnerId</i>. The Amazon EC2 security group and
    #             Amazon Redshift cluster must be in the same Amazon Web Services Region. </p>
    #         <p>If you authorize access to a CIDR/IP address range, specify
    #                 <i>CIDRIP</i>. For an overview of CIDR blocks, see the Wikipedia
    #             article on <a href="http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing">Classless Inter-Domain Routing</a>. </p>
    #         <p>You must also associate the security group with a cluster so that clients running
    #             on these IP addresses or the EC2 instance are authorized to connect to the cluster. For
    #             information about managing security groups, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html">Working with Security
    #                 Groups</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::AuthorizeClusterSecurityGroupIngressInput}.
    #
    # @option params [String] :cluster_security_group_name
    #   <p>The name of the security group to which the ingress rule is added.</p>
    #
    # @option params [String] :cidrip
    #   <p>The IP range to be added the Amazon Redshift security group.</p>
    #
    # @option params [String] :ec2_security_group_name
    #   <p>The EC2 security group to be added the Amazon Redshift security group.</p>
    #
    # @option params [String] :ec2_security_group_owner_id
    #   <p>The Amazon Web Services account number of the owner of the security group specified by the
    #               <i>EC2SecurityGroupName</i> parameter. The Amazon Web Services Access Key ID is not an
    #               acceptable value. </p>
    #           <p>Example: <code>111122223333</code>
    #           </p>
    #
    # @return [Types::AuthorizeClusterSecurityGroupIngressOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.authorize_cluster_security_group_ingress(
    #     cluster_security_group_name: 'ClusterSecurityGroupName', # required
    #     cidrip: 'CIDRIP',
    #     ec2_security_group_name: 'EC2SecurityGroupName',
    #     ec2_security_group_owner_id: 'EC2SecurityGroupOwnerId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AuthorizeClusterSecurityGroupIngressOutput
    #   resp.data.cluster_security_group #=> Types::ClusterSecurityGroup
    #   resp.data.cluster_security_group.cluster_security_group_name #=> String
    #   resp.data.cluster_security_group.description #=> String
    #   resp.data.cluster_security_group.ec2_security_groups #=> Array<EC2SecurityGroup>
    #   resp.data.cluster_security_group.ec2_security_groups[0] #=> Types::EC2SecurityGroup
    #   resp.data.cluster_security_group.ec2_security_groups[0].status #=> String
    #   resp.data.cluster_security_group.ec2_security_groups[0].ec2_security_group_name #=> String
    #   resp.data.cluster_security_group.ec2_security_groups[0].ec2_security_group_owner_id #=> String
    #   resp.data.cluster_security_group.ec2_security_groups[0].tags #=> Array<Tag>
    #   resp.data.cluster_security_group.ec2_security_groups[0].tags[0] #=> Types::Tag
    #   resp.data.cluster_security_group.ec2_security_groups[0].tags[0].key #=> String
    #   resp.data.cluster_security_group.ec2_security_groups[0].tags[0].value #=> String
    #   resp.data.cluster_security_group.ip_ranges #=> Array<IPRange>
    #   resp.data.cluster_security_group.ip_ranges[0] #=> Types::IPRange
    #   resp.data.cluster_security_group.ip_ranges[0].status #=> String
    #   resp.data.cluster_security_group.ip_ranges[0].cidrip #=> String
    #   resp.data.cluster_security_group.ip_ranges[0].tags #=> Array<Tag>
    #   resp.data.cluster_security_group.tags #=> Array<Tag>
    #
    def authorize_cluster_security_group_ingress(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AuthorizeClusterSecurityGroupIngressInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AuthorizeClusterSecurityGroupIngressInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AuthorizeClusterSecurityGroupIngress
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AuthorizationQuotaExceededFault, Errors::InvalidClusterSecurityGroupStateFault, Errors::ClusterSecurityGroupNotFoundFault, Errors::AuthorizationAlreadyExistsFault]),
        data_parser: Parsers::AuthorizeClusterSecurityGroupIngress
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AuthorizeClusterSecurityGroupIngress,
        stubs: @stubs,
        params_class: Params::AuthorizeClusterSecurityGroupIngressOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :authorize_cluster_security_group_ingress
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>From a data producer account, authorizes the sharing of a datashare with one or more
    #             consumer accounts or managing entities. To authorize a datashare for a data consumer,
    #             the producer account must have the correct access permissions.</p>
    #
    # @param [Hash] params
    #   See {Types::AuthorizeDataShareInput}.
    #
    # @option params [String] :data_share_arn
    #   <p>The Amazon Resource Name (ARN) of the datashare that producers are to authorize
    #               sharing for.</p>
    #
    # @option params [String] :consumer_identifier
    #   <p>The identifier of the data consumer that is authorized to access the datashare. This identifier is an Amazon Web Services account ID or a keyword, such as ADX.</p>
    #
    # @return [Types::AuthorizeDataShareOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.authorize_data_share(
    #     data_share_arn: 'DataShareArn', # required
    #     consumer_identifier: 'ConsumerIdentifier' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AuthorizeDataShareOutput
    #   resp.data.data_share_arn #=> String
    #   resp.data.producer_arn #=> String
    #   resp.data.allow_publicly_accessible_consumers #=> Boolean
    #   resp.data.data_share_associations #=> Array<DataShareAssociation>
    #   resp.data.data_share_associations[0] #=> Types::DataShareAssociation
    #   resp.data.data_share_associations[0].consumer_identifier #=> String
    #   resp.data.data_share_associations[0].status #=> String, one of ["ACTIVE", "PENDING_AUTHORIZATION", "AUTHORIZED", "DEAUTHORIZED", "REJECTED", "AVAILABLE"]
    #   resp.data.data_share_associations[0].consumer_region #=> String
    #   resp.data.data_share_associations[0].created_date #=> Time
    #   resp.data.data_share_associations[0].status_change_date #=> Time
    #   resp.data.managed_by #=> String
    #
    def authorize_data_share(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AuthorizeDataShareInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AuthorizeDataShareInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AuthorizeDataShare
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidDataShareFault]),
        data_parser: Parsers::AuthorizeDataShare
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AuthorizeDataShare,
        stubs: @stubs,
        params_class: Params::AuthorizeDataShareOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :authorize_data_share
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Grants access to a cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::AuthorizeEndpointAccessInput}.
    #
    # @option params [String] :cluster_identifier
    #   <p>The cluster identifier of the cluster to grant access to.</p>
    #
    # @option params [String] :account
    #   <p>The Amazon Web Services account ID to grant access to.</p>
    #
    # @option params [Array<String>] :vpc_ids
    #   <p>The virtual private cloud (VPC) identifiers to grant access to.</p>
    #
    # @return [Types::AuthorizeEndpointAccessOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.authorize_endpoint_access(
    #     cluster_identifier: 'ClusterIdentifier',
    #     account: 'Account', # required
    #     vpc_ids: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AuthorizeEndpointAccessOutput
    #   resp.data.grantor #=> String
    #   resp.data.grantee #=> String
    #   resp.data.cluster_identifier #=> String
    #   resp.data.authorize_time #=> Time
    #   resp.data.cluster_status #=> String
    #   resp.data.status #=> String, one of ["Authorized", "Revoking"]
    #   resp.data.allowed_all_vp_cs #=> Boolean
    #   resp.data.allowed_vp_cs #=> Array<String>
    #   resp.data.allowed_vp_cs[0] #=> String
    #   resp.data.endpoint_count #=> Integer
    #
    def authorize_endpoint_access(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AuthorizeEndpointAccessInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AuthorizeEndpointAccessInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AuthorizeEndpointAccess
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedOperationFault, Errors::InvalidClusterStateFault, Errors::InvalidAuthorizationStateFault, Errors::EndpointAuthorizationsPerClusterLimitExceededFault, Errors::ClusterNotFoundFault, Errors::EndpointAuthorizationAlreadyExistsFault]),
        data_parser: Parsers::AuthorizeEndpointAccess
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AuthorizeEndpointAccess,
        stubs: @stubs,
        params_class: Params::AuthorizeEndpointAccessOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :authorize_endpoint_access
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Authorizes the specified Amazon Web Services account to restore the specified
    #             snapshot.</p>
    #         <p>
    # For more information about working with snapshots, go to
    # <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html">Amazon Redshift Snapshots</a>
    # in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::AuthorizeSnapshotAccessInput}.
    #
    # @option params [String] :snapshot_identifier
    #   <p>The identifier of the snapshot the account is authorized to restore.</p>
    #
    # @option params [String] :snapshot_cluster_identifier
    #   <p>The identifier of the cluster the snapshot was created from. This parameter is
    #               required if your IAM user has a policy containing a snapshot resource element that
    #               specifies anything other than * for the cluster name.</p>
    #
    # @option params [String] :account_with_restore_access
    #   <p>The identifier of the Amazon Web Services account authorized to restore the specified
    #               snapshot.</p>
    #           <p>To share a snapshot with Amazon Web Services Support, specify amazon-redshift-support.</p>
    #
    # @return [Types::AuthorizeSnapshotAccessOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.authorize_snapshot_access(
    #     snapshot_identifier: 'SnapshotIdentifier', # required
    #     snapshot_cluster_identifier: 'SnapshotClusterIdentifier',
    #     account_with_restore_access: 'AccountWithRestoreAccess' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AuthorizeSnapshotAccessOutput
    #   resp.data.snapshot #=> Types::Snapshot
    #   resp.data.snapshot.snapshot_identifier #=> String
    #   resp.data.snapshot.cluster_identifier #=> String
    #   resp.data.snapshot.snapshot_create_time #=> Time
    #   resp.data.snapshot.status #=> String
    #   resp.data.snapshot.port #=> Integer
    #   resp.data.snapshot.availability_zone #=> String
    #   resp.data.snapshot.cluster_create_time #=> Time
    #   resp.data.snapshot.master_username #=> String
    #   resp.data.snapshot.cluster_version #=> String
    #   resp.data.snapshot.engine_full_version #=> String
    #   resp.data.snapshot.snapshot_type #=> String
    #   resp.data.snapshot.node_type #=> String
    #   resp.data.snapshot.number_of_nodes #=> Integer
    #   resp.data.snapshot.db_name #=> String
    #   resp.data.snapshot.vpc_id #=> String
    #   resp.data.snapshot.encrypted #=> Boolean
    #   resp.data.snapshot.kms_key_id #=> String
    #   resp.data.snapshot.encrypted_with_hsm #=> Boolean
    #   resp.data.snapshot.accounts_with_restore_access #=> Array<AccountWithRestoreAccess>
    #   resp.data.snapshot.accounts_with_restore_access[0] #=> Types::AccountWithRestoreAccess
    #   resp.data.snapshot.accounts_with_restore_access[0].account_id #=> String
    #   resp.data.snapshot.accounts_with_restore_access[0].account_alias #=> String
    #   resp.data.snapshot.owner_account #=> String
    #   resp.data.snapshot.total_backup_size_in_mega_bytes #=> Float
    #   resp.data.snapshot.actual_incremental_backup_size_in_mega_bytes #=> Float
    #   resp.data.snapshot.backup_progress_in_mega_bytes #=> Float
    #   resp.data.snapshot.current_backup_rate_in_mega_bytes_per_second #=> Float
    #   resp.data.snapshot.estimated_seconds_to_completion #=> Integer
    #   resp.data.snapshot.elapsed_time_in_seconds #=> Integer
    #   resp.data.snapshot.source_region #=> String
    #   resp.data.snapshot.tags #=> Array<Tag>
    #   resp.data.snapshot.tags[0] #=> Types::Tag
    #   resp.data.snapshot.tags[0].key #=> String
    #   resp.data.snapshot.tags[0].value #=> String
    #   resp.data.snapshot.restorable_node_types #=> Array<String>
    #   resp.data.snapshot.restorable_node_types[0] #=> String
    #   resp.data.snapshot.enhanced_vpc_routing #=> Boolean
    #   resp.data.snapshot.maintenance_track_name #=> String
    #   resp.data.snapshot.manual_snapshot_retention_period #=> Integer
    #   resp.data.snapshot.manual_snapshot_remaining_days #=> Integer
    #   resp.data.snapshot.snapshot_retention_start_time #=> Time
    #
    def authorize_snapshot_access(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AuthorizeSnapshotAccessInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AuthorizeSnapshotAccessInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AuthorizeSnapshotAccess
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AuthorizationQuotaExceededFault, Errors::ClusterSnapshotNotFoundFault, Errors::DependentServiceRequestThrottlingFault, Errors::InvalidClusterSnapshotStateFault, Errors::LimitExceededFault, Errors::AuthorizationAlreadyExistsFault]),
        data_parser: Parsers::AuthorizeSnapshotAccess
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AuthorizeSnapshotAccess,
        stubs: @stubs,
        params_class: Params::AuthorizeSnapshotAccessOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :authorize_snapshot_access
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a set of cluster snapshots.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchDeleteClusterSnapshotsInput}.
    #
    # @option params [Array<DeleteClusterSnapshotMessage>] :identifiers
    #   <p>A list of identifiers for the snapshots that you want to delete.</p>
    #
    # @return [Types::BatchDeleteClusterSnapshotsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_cluster_snapshots(
    #     identifiers: [
    #       {
    #         snapshot_identifier: 'SnapshotIdentifier', # required
    #         snapshot_cluster_identifier: 'SnapshotClusterIdentifier'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchDeleteClusterSnapshotsOutput
    #   resp.data.resources #=> Array<String>
    #   resp.data.resources[0] #=> String
    #   resp.data.errors #=> Array<SnapshotErrorMessage>
    #   resp.data.errors[0] #=> Types::SnapshotErrorMessage
    #   resp.data.errors[0].snapshot_identifier #=> String
    #   resp.data.errors[0].snapshot_cluster_identifier #=> String
    #   resp.data.errors[0].failure_code #=> String
    #   resp.data.errors[0].failure_reason #=> String
    #
    def batch_delete_cluster_snapshots(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchDeleteClusterSnapshotsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchDeleteClusterSnapshotsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchDeleteClusterSnapshots
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BatchDeleteRequestSizeExceededFault]),
        data_parser: Parsers::BatchDeleteClusterSnapshots
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchDeleteClusterSnapshots,
        stubs: @stubs,
        params_class: Params::BatchDeleteClusterSnapshotsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_delete_cluster_snapshots
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies the settings for a set of cluster snapshots.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchModifyClusterSnapshotsInput}.
    #
    # @option params [Array<String>] :snapshot_identifier_list
    #   <p>A list of snapshot identifiers you want to modify.</p>
    #
    # @option params [Integer] :manual_snapshot_retention_period
    #   <p>The number of days that a manual snapshot is retained. If you specify the value -1,
    #               the manual snapshot is retained indefinitely.</p>
    #           <p>The number must be either -1 or an integer between 1 and 3,653.</p>
    #           <p>If you decrease the manual snapshot retention period from its current value, existing
    #               manual snapshots that fall outside of the new retention period will return an error. If
    #               you want to suppress the errors and delete the snapshots, use the force option. </p>
    #
    # @option params [Boolean] :force
    #   <p>A boolean value indicating whether to override an exception if the retention period
    #               has passed. </p>
    #
    # @return [Types::BatchModifyClusterSnapshotsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_modify_cluster_snapshots(
    #     snapshot_identifier_list: [
    #       'member'
    #     ], # required
    #     manual_snapshot_retention_period: 1,
    #     force: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchModifyClusterSnapshotsOutput
    #   resp.data.resources #=> Array<String>
    #   resp.data.resources[0] #=> String
    #   resp.data.errors #=> Array<SnapshotErrorMessage>
    #   resp.data.errors[0] #=> Types::SnapshotErrorMessage
    #   resp.data.errors[0].snapshot_identifier #=> String
    #   resp.data.errors[0].snapshot_cluster_identifier #=> String
    #   resp.data.errors[0].failure_code #=> String
    #   resp.data.errors[0].failure_reason #=> String
    #
    def batch_modify_cluster_snapshots(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchModifyClusterSnapshotsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchModifyClusterSnapshotsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchModifyClusterSnapshots
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRetentionPeriodFault, Errors::BatchModifyClusterSnapshotsLimitExceededFault]),
        data_parser: Parsers::BatchModifyClusterSnapshots
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchModifyClusterSnapshots,
        stubs: @stubs,
        params_class: Params::BatchModifyClusterSnapshotsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_modify_cluster_snapshots
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Cancels a resize operation for a cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::CancelResizeInput}.
    #
    # @option params [String] :cluster_identifier
    #   <p>The unique identifier for the cluster that you want to cancel a resize operation
    #               for.</p>
    #
    # @return [Types::CancelResizeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_resize(
    #     cluster_identifier: 'ClusterIdentifier' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelResizeOutput
    #   resp.data.target_node_type #=> String
    #   resp.data.target_number_of_nodes #=> Integer
    #   resp.data.target_cluster_type #=> String
    #   resp.data.status #=> String
    #   resp.data.import_tables_completed #=> Array<String>
    #   resp.data.import_tables_completed[0] #=> String
    #   resp.data.import_tables_in_progress #=> Array<String>
    #   resp.data.import_tables_in_progress[0] #=> String
    #   resp.data.import_tables_not_started #=> Array<String>
    #   resp.data.import_tables_not_started[0] #=> String
    #   resp.data.avg_resize_rate_in_mega_bytes_per_second #=> Float
    #   resp.data.total_resize_data_in_mega_bytes #=> Integer
    #   resp.data.progress_in_mega_bytes #=> Integer
    #   resp.data.elapsed_time_in_seconds #=> Integer
    #   resp.data.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.data.resize_type #=> String
    #   resp.data.message #=> String
    #   resp.data.target_encryption_type #=> String
    #   resp.data.data_transfer_progress_percent #=> Float
    #
    def cancel_resize(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelResizeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelResizeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelResize
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResizeNotFoundFault, Errors::UnsupportedOperationFault, Errors::InvalidClusterStateFault, Errors::ClusterNotFoundFault]),
        data_parser: Parsers::CancelResize
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelResize,
        stubs: @stubs,
        params_class: Params::CancelResizeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_resize
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Copies the specified automated cluster snapshot to a new manual cluster snapshot.
    #             The source must be an automated snapshot and it must be in the available
    #             state.</p>
    #         <p>When you delete a cluster, Amazon Redshift deletes any automated snapshots of the
    #             cluster. Also, when the retention period of the snapshot expires, Amazon Redshift
    #             automatically deletes it. If you want to keep an automated snapshot for a longer period,
    #             you can make a manual copy of the snapshot. Manual snapshots are retained until you
    #             delete them.</p>
    #         <p>
    # For more information about working with snapshots, go to
    # <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html">Amazon Redshift Snapshots</a>
    # in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CopyClusterSnapshotInput}.
    #
    # @option params [String] :source_snapshot_identifier
    #   <p>The identifier for the source snapshot.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be the identifier for a valid automated snapshot whose state is
    #                           <code>available</code>.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :source_snapshot_cluster_identifier
    #   <p>The identifier of the cluster the source snapshot was created from. This parameter
    #               is required if your IAM user has a policy containing a snapshot resource element that
    #               specifies anything other than * for the cluster name.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be the identifier for a valid cluster.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :target_snapshot_identifier
    #   <p>The identifier given to the new manual snapshot.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Cannot be null, empty, or blank.</p>
    #               </li>
    #               <li>
    #                   <p>Must contain from 1 to 255 alphanumeric characters or hyphens.</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                   <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #               <li>
    #                   <p>Must be unique for the Amazon Web Services account that is making the request.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Integer] :manual_snapshot_retention_period
    #   <p>The number of days that a manual snapshot is retained. If the value is -1, the manual
    #               snapshot is retained indefinitely. </p>
    #           <p>The value must be either -1 or an integer between 1 and 3,653.</p>
    #           <p>The default value is -1.</p>
    #
    # @return [Types::CopyClusterSnapshotOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.copy_cluster_snapshot(
    #     source_snapshot_identifier: 'SourceSnapshotIdentifier', # required
    #     source_snapshot_cluster_identifier: 'SourceSnapshotClusterIdentifier',
    #     target_snapshot_identifier: 'TargetSnapshotIdentifier', # required
    #     manual_snapshot_retention_period: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CopyClusterSnapshotOutput
    #   resp.data.snapshot #=> Types::Snapshot
    #   resp.data.snapshot.snapshot_identifier #=> String
    #   resp.data.snapshot.cluster_identifier #=> String
    #   resp.data.snapshot.snapshot_create_time #=> Time
    #   resp.data.snapshot.status #=> String
    #   resp.data.snapshot.port #=> Integer
    #   resp.data.snapshot.availability_zone #=> String
    #   resp.data.snapshot.cluster_create_time #=> Time
    #   resp.data.snapshot.master_username #=> String
    #   resp.data.snapshot.cluster_version #=> String
    #   resp.data.snapshot.engine_full_version #=> String
    #   resp.data.snapshot.snapshot_type #=> String
    #   resp.data.snapshot.node_type #=> String
    #   resp.data.snapshot.number_of_nodes #=> Integer
    #   resp.data.snapshot.db_name #=> String
    #   resp.data.snapshot.vpc_id #=> String
    #   resp.data.snapshot.encrypted #=> Boolean
    #   resp.data.snapshot.kms_key_id #=> String
    #   resp.data.snapshot.encrypted_with_hsm #=> Boolean
    #   resp.data.snapshot.accounts_with_restore_access #=> Array<AccountWithRestoreAccess>
    #   resp.data.snapshot.accounts_with_restore_access[0] #=> Types::AccountWithRestoreAccess
    #   resp.data.snapshot.accounts_with_restore_access[0].account_id #=> String
    #   resp.data.snapshot.accounts_with_restore_access[0].account_alias #=> String
    #   resp.data.snapshot.owner_account #=> String
    #   resp.data.snapshot.total_backup_size_in_mega_bytes #=> Float
    #   resp.data.snapshot.actual_incremental_backup_size_in_mega_bytes #=> Float
    #   resp.data.snapshot.backup_progress_in_mega_bytes #=> Float
    #   resp.data.snapshot.current_backup_rate_in_mega_bytes_per_second #=> Float
    #   resp.data.snapshot.estimated_seconds_to_completion #=> Integer
    #   resp.data.snapshot.elapsed_time_in_seconds #=> Integer
    #   resp.data.snapshot.source_region #=> String
    #   resp.data.snapshot.tags #=> Array<Tag>
    #   resp.data.snapshot.tags[0] #=> Types::Tag
    #   resp.data.snapshot.tags[0].key #=> String
    #   resp.data.snapshot.tags[0].value #=> String
    #   resp.data.snapshot.restorable_node_types #=> Array<String>
    #   resp.data.snapshot.restorable_node_types[0] #=> String
    #   resp.data.snapshot.enhanced_vpc_routing #=> Boolean
    #   resp.data.snapshot.maintenance_track_name #=> String
    #   resp.data.snapshot.manual_snapshot_retention_period #=> Integer
    #   resp.data.snapshot.manual_snapshot_remaining_days #=> Integer
    #   resp.data.snapshot.snapshot_retention_start_time #=> Time
    #
    def copy_cluster_snapshot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CopyClusterSnapshotInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CopyClusterSnapshotInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CopyClusterSnapshot
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClusterSnapshotAlreadyExistsFault, Errors::ClusterSnapshotNotFoundFault, Errors::ClusterSnapshotQuotaExceededFault, Errors::InvalidRetentionPeriodFault, Errors::InvalidClusterSnapshotStateFault]),
        data_parser: Parsers::CopyClusterSnapshot
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CopyClusterSnapshot,
        stubs: @stubs,
        params_class: Params::CopyClusterSnapshotOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :copy_cluster_snapshot
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an authentication profile with the specified parameters.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateAuthenticationProfileInput}.
    #
    # @option params [String] :authentication_profile_name
    #   <p>The name of the authentication profile to be created.</p>
    #
    # @option params [String] :authentication_profile_content
    #   <p>The content of the authentication profile in JSON format.
    #               The maximum length of the JSON string is determined by a quota for your account.</p>
    #
    # @return [Types::CreateAuthenticationProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_authentication_profile(
    #     authentication_profile_name: 'AuthenticationProfileName', # required
    #     authentication_profile_content: 'AuthenticationProfileContent' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAuthenticationProfileOutput
    #   resp.data.authentication_profile_name #=> String
    #   resp.data.authentication_profile_content #=> String
    #
    def create_authentication_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAuthenticationProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAuthenticationProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAuthenticationProfile
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AuthenticationProfileAlreadyExistsFault, Errors::AuthenticationProfileQuotaExceededFault, Errors::InvalidAuthenticationProfileRequestFault]),
        data_parser: Parsers::CreateAuthenticationProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAuthenticationProfile,
        stubs: @stubs,
        params_class: Params::CreateAuthenticationProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_authentication_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new cluster with the specified parameters.</p>
    #         <p>To create a cluster in Virtual Private Cloud (VPC), you must provide a cluster
    #             subnet group name. The cluster subnet group identifies the subnets of your VPC that
    #             Amazon Redshift uses when creating the cluster.
    # For more information about managing clusters, go to
    # <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html">Amazon Redshift Clusters</a>
    # in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateClusterInput}.
    #
    # @option params [String] :db_name
    #   <p>The name of the first database to be created when the cluster is created.</p>
    #           <p>To create additional databases after the cluster is created, connect to the cluster
    #               with a SQL client and use SQL commands to create a database. For more information, go to
    #                   <a href="https://docs.aws.amazon.com/redshift/latest/dg/t_creating_database.html">Create
    #                   a Database</a> in the Amazon Redshift Database Developer Guide. </p>
    #           <p>Default: <code>dev</code>
    #           </p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must contain 1 to 64 alphanumeric characters.</p>
    #               </li>
    #               <li>
    #                   <p>Must contain only lowercase letters.</p>
    #               </li>
    #               <li>
    #                   <p>Cannot be a word that is reserved by the service. A list of reserved words
    #                       can be found in <a href="https://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html">Reserved Words</a> in the
    #                       Amazon Redshift Database Developer Guide. </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :cluster_identifier
    #   <p>A unique identifier for the cluster. You use this identifier to refer to the
    #               cluster for any subsequent cluster operations such as deleting or modifying. The
    #               identifier also appears in the Amazon Redshift console.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>Alphabetic characters must be lowercase.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>Must be unique for all clusters within an Amazon Web Services account.</p>
    #               </li>
    #            </ul>
    #
    #               <p>Example: <code>myexamplecluster</code>
    #           </p>
    #
    # @option params [String] :cluster_type
    #   <p>The type of the cluster. When cluster type is specified as</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>single-node</code>, the <b>NumberOfNodes</b>
    #                       parameter is not required.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>multi-node</code>, the <b>NumberOfNodes</b>
    #                       parameter is required.</p>
    #               </li>
    #            </ul>
    #           <p>Valid Values: <code>multi-node</code> | <code>single-node</code>
    #           </p>
    #           <p>Default: <code>multi-node</code>
    #           </p>
    #
    # @option params [String] :node_type
    #   <p>The node type to be provisioned for the cluster. For information about node types,
    #               go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#how-many-nodes"> Working with
    #                   Clusters</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p>
    #           <p>Valid Values: <code>ds2.xlarge</code> | <code>ds2.8xlarge</code> |
    #                   <code>dc1.large</code> | <code>dc1.8xlarge</code> |
    #                   <code>dc2.large</code> | <code>dc2.8xlarge</code> |
    #                   <code>ra3.xlplus</code> |  <code>ra3.4xlarge</code> | <code>ra3.16xlarge</code>
    #            </p>
    #
    # @option params [String] :master_username
    #   <p>The user name associated with the admin user account for the cluster that is being
    #               created.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be 1 - 128 alphanumeric characters. The user name can't be
    #                           <code>PUBLIC</code>.</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #
    #                   <p>Cannot be a reserved word. A list of reserved words can be found in <a href="https://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html">Reserved
    #                           Words</a> in the Amazon Redshift Database Developer Guide. </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :master_user_password
    #   <p>The password associated with the admin user account for the cluster that is being
    #               created.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be between 8 and 64 characters in length.</p>
    #               </li>
    #               <li>
    #                   <p>Must contain at least one uppercase letter.</p>
    #               </li>
    #               <li>
    #                   <p>Must contain at least one lowercase letter.</p>
    #               </li>
    #               <li>
    #                   <p>Must contain one number.</p>
    #               </li>
    #               <li>
    #                   <p>Can be any printable ASCII character (ASCII code 33-126) except <code>'</code>
    #                       (single quote), <code>"</code> (double quote), <code>\</code>, <code>/</code>, or <code>@</code>.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Array<String>] :cluster_security_groups
    #   <p>A list of security groups to be associated with this cluster.</p>
    #           <p>Default: The default cluster security group for Amazon Redshift.</p>
    #
    # @option params [Array<String>] :vpc_security_group_ids
    #   <p>A list of Virtual Private Cloud (VPC) security groups to be associated with the
    #               cluster.</p>
    #           <p>Default: The default VPC security group is associated with the cluster.</p>
    #
    # @option params [String] :cluster_subnet_group_name
    #   <p>The name of a cluster subnet group to be associated with this cluster.</p>
    #           <p>If this parameter is not provided the resulting cluster will be deployed outside
    #               virtual private cloud (VPC).</p>
    #
    # @option params [String] :availability_zone
    #   <p>The EC2 Availability Zone (AZ) in which you want Amazon Redshift to provision the
    #               cluster. For example, if you have several EC2 instances running in a specific
    #               Availability Zone, then you might want the cluster to be provisioned in the same zone in
    #               order to decrease network latency.</p>
    #           <p>Default: A random, system-chosen Availability Zone in the region that is specified
    #               by the endpoint.</p>
    #           <p>Example: <code>us-east-2d</code>
    #           </p>
    #           <p>Constraint: The specified Availability Zone must be in the same region as the
    #               current endpoint.</p>
    #
    # @option params [String] :preferred_maintenance_window
    #   <p>The weekly time range (in UTC) during which automated cluster maintenance can
    #               occur.</p>
    #           <p> Format: <code>ddd:hh24:mi-ddd:hh24:mi</code>
    #           </p>
    #           <p> Default: A 30-minute window selected at random from an 8-hour block of time per
    #               region, occurring on a random day of the week. For more information about the time
    #               blocks for each region, see <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#rs-maintenance-windows">Maintenance Windows</a> in Amazon Redshift Cluster Management Guide.</p>
    #           <p>Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun</p>
    #           <p>Constraints: Minimum 30-minute window.</p>
    #
    # @option params [String] :cluster_parameter_group_name
    #   <p>The name of the parameter group to be associated with this cluster.</p>
    #           <p>Default: The default Amazon Redshift cluster parameter group. For information about the
    #               default parameter group, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html">Working with Amazon
    #                   Redshift Parameter Groups</a>
    #           </p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be 1 to 255 alphanumeric characters or hyphens.</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                   <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Integer] :automated_snapshot_retention_period
    #   <p>The number of days that automated snapshots are retained. If the value is 0,
    #               automated snapshots are disabled. Even if automated snapshots are disabled, you can
    #               still create manual snapshots when you want with <a>CreateClusterSnapshot</a>. </p>
    #
    #           <p>You can't disable automated snapshots for RA3 node types. Set the automated retention period from 1-35 days.</p>
    #           <p>Default: <code>1</code>
    #           </p>
    #           <p>Constraints: Must be a value from 0 to 35.</p>
    #
    # @option params [Integer] :manual_snapshot_retention_period
    #   <p>The default number of days to retain a manual snapshot. If the value is -1, the
    #               snapshot is retained indefinitely. This setting doesn't change the retention period
    #               of existing snapshots.</p>
    #           <p>The value must be either -1 or an integer between 1 and 3,653.</p>
    #
    # @option params [Integer] :port
    #   <p>The port number on which the cluster accepts incoming connections.</p>
    #           <p>The cluster is accessible only via the JDBC and ODBC connection strings. Part of
    #               the connection string requires the port on which the cluster will listen for incoming
    #               connections.</p>
    #           <p>Default: <code>5439</code>
    #           </p>
    #           <p>Valid Values: <code>1150-65535</code>
    #           </p>
    #
    # @option params [String] :cluster_version
    #   <p>The version of the Amazon Redshift engine software that you want to deploy on the
    #               cluster.</p>
    #           <p>The version selected runs on all the nodes in the cluster.</p>
    #           <p>Constraints: Only version 1.0 is currently available.</p>
    #           <p>Example: <code>1.0</code>
    #           </p>
    #
    # @option params [Boolean] :allow_version_upgrade
    #   <p>If <code>true</code>, major version upgrades can be applied during the maintenance
    #               window to the Amazon Redshift engine that is running on the cluster.</p>
    #           <p>When a new major version of the Amazon Redshift engine is released, you can request that
    #               the service automatically apply upgrades during the maintenance window to the Amazon Redshift
    #               engine that is running on your cluster.</p>
    #           <p>Default: <code>true</code>
    #           </p>
    #
    # @option params [Integer] :number_of_nodes
    #   <p>The number of compute nodes in the cluster. This parameter is required when the
    #                   <b>ClusterType</b> parameter is specified as
    #                   <code>multi-node</code>. </p>
    #           <p>For information about determining how many nodes you need, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#how-many-nodes"> Working with
    #                   Clusters</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p>
    #           <p>If you don't specify this parameter, you get a single-node cluster. When requesting
    #               a multi-node cluster, you must specify the number of nodes that you want in the
    #               cluster.</p>
    #           <p>Default: <code>1</code>
    #           </p>
    #           <p>Constraints: Value must be at least 1 and no more than 100.</p>
    #
    # @option params [Boolean] :publicly_accessible
    #   <p>If <code>true</code>, the cluster can be accessed from a public network. </p>
    #
    # @option params [Boolean] :encrypted
    #   <p>If <code>true</code>, the data in the cluster is encrypted at rest. </p>
    #           <p>Default: false</p>
    #
    # @option params [String] :hsm_client_certificate_identifier
    #   <p>Specifies the name of the HSM client certificate the Amazon Redshift cluster uses to
    #               retrieve the data encryption keys stored in an HSM.</p>
    #
    # @option params [String] :hsm_configuration_identifier
    #   <p>Specifies the name of the HSM configuration that contains the information the
    #               Amazon Redshift cluster can use to retrieve and store keys in an HSM.</p>
    #
    # @option params [String] :elastic_ip
    #   <p>The Elastic IP (EIP) address for the cluster.</p>
    #           <p>Constraints: The cluster must be provisioned in EC2-VPC and publicly-accessible
    #               through an Internet gateway. For more information about provisioning clusters in
    #               EC2-VPC, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#cluster-platforms">Supported
    #                   Platforms to Launch Your Cluster</a> in the Amazon Redshift Cluster Management Guide.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tag instances.</p>
    #
    # @option params [String] :kms_key_id
    #   <p>The Key Management Service (KMS) key ID of the encryption key that you want to
    #               use to encrypt data in the cluster.</p>
    #
    # @option params [Boolean] :enhanced_vpc_routing
    #   <p>An option that specifies whether to create the cluster with enhanced VPC routing
    #               enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a
    #               VPC. For more information, see <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html">Enhanced VPC Routing</a> in
    #               the Amazon Redshift Cluster Management Guide.</p>
    #           <p>If this option is <code>true</code>, enhanced VPC routing is enabled. </p>
    #           <p>Default: false</p>
    #
    # @option params [String] :additional_info
    #   <p>Reserved.</p>
    #
    # @option params [Array<String>] :iam_roles
    #   <p>A list of Identity and Access Management (IAM) roles that can be used by the
    #               cluster to access other Amazon Web Services services. You must supply the IAM roles in their Amazon
    #               Resource Name (ARN) format. </p>
    #           <p>The maximum number of IAM roles that you can associate is subject to a quota.
    #               For more information, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html">Quotas and limits</a>
    #               in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    #
    # @option params [String] :maintenance_track_name
    #   <p>An optional parameter for the name of the maintenance track for the cluster. If you
    #               don't provide a maintenance track name, the cluster is assigned to the
    #                   <code>current</code> track.</p>
    #
    # @option params [String] :snapshot_schedule_identifier
    #   <p>A unique identifier for the snapshot schedule.</p>
    #
    # @option params [Boolean] :availability_zone_relocation
    #   <p>The option to enable relocation for an Amazon Redshift cluster between Availability Zones after the cluster is created.</p>
    #
    # @option params [String] :aqua_configuration_status
    #   <p>The value represents how the cluster is configured to use AQUA (Advanced Query Accelerator) when it is created. Possible values include the following.</p>
    #           <ul>
    #               <li>
    #                  <p>enabled - Use AQUA if it is available for the current Amazon Web Services Region and Amazon Redshift node type.</p>
    #               </li>
    #               <li>
    #                  <p>disabled - Don't use AQUA. </p>
    #               </li>
    #               <li>
    #                  <p>auto - Amazon Redshift determines whether to use AQUA.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :default_iam_role_arn
    #   <p>The Amazon Resource Name (ARN) for the IAM role that was set as default for the cluster when the cluster was created. </p>
    #
    # @option params [String] :load_sample_data
    #   <p>A flag that specifies whether to load sample data once the cluster is created.</p>
    #
    # @return [Types::CreateClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cluster(
    #     db_name: 'DBName',
    #     cluster_identifier: 'ClusterIdentifier', # required
    #     cluster_type: 'ClusterType',
    #     node_type: 'NodeType', # required
    #     master_username: 'MasterUsername', # required
    #     master_user_password: 'MasterUserPassword', # required
    #     cluster_security_groups: [
    #       'member'
    #     ],
    #     vpc_security_group_ids: [
    #       'member'
    #     ],
    #     cluster_subnet_group_name: 'ClusterSubnetGroupName',
    #     availability_zone: 'AvailabilityZone',
    #     preferred_maintenance_window: 'PreferredMaintenanceWindow',
    #     cluster_parameter_group_name: 'ClusterParameterGroupName',
    #     automated_snapshot_retention_period: 1,
    #     manual_snapshot_retention_period: 1,
    #     port: 1,
    #     cluster_version: 'ClusterVersion',
    #     allow_version_upgrade: false,
    #     number_of_nodes: 1,
    #     publicly_accessible: false,
    #     encrypted: false,
    #     hsm_client_certificate_identifier: 'HsmClientCertificateIdentifier',
    #     hsm_configuration_identifier: 'HsmConfigurationIdentifier',
    #     elastic_ip: 'ElasticIp',
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ],
    #     kms_key_id: 'KmsKeyId',
    #     enhanced_vpc_routing: false,
    #     additional_info: 'AdditionalInfo',
    #     iam_roles: [
    #       'member'
    #     ],
    #     maintenance_track_name: 'MaintenanceTrackName',
    #     snapshot_schedule_identifier: 'SnapshotScheduleIdentifier',
    #     availability_zone_relocation: false,
    #     aqua_configuration_status: 'enabled', # accepts ["enabled", "disabled", "auto"]
    #     default_iam_role_arn: 'DefaultIamRoleArn',
    #     load_sample_data: 'LoadSampleData'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateClusterOutput
    #   resp.data.cluster #=> Types::Cluster
    #   resp.data.cluster.cluster_identifier #=> String
    #   resp.data.cluster.node_type #=> String
    #   resp.data.cluster.cluster_status #=> String
    #   resp.data.cluster.cluster_availability_status #=> String
    #   resp.data.cluster.modify_status #=> String
    #   resp.data.cluster.master_username #=> String
    #   resp.data.cluster.db_name #=> String
    #   resp.data.cluster.endpoint #=> Types::Endpoint
    #   resp.data.cluster.endpoint.address #=> String
    #   resp.data.cluster.endpoint.port #=> Integer
    #   resp.data.cluster.endpoint.vpc_endpoints #=> Array<VpcEndpoint>
    #   resp.data.cluster.endpoint.vpc_endpoints[0] #=> Types::VpcEndpoint
    #   resp.data.cluster.endpoint.vpc_endpoints[0].vpc_endpoint_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].vpc_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces #=> Array<NetworkInterface>
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0] #=> Types::NetworkInterface
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].network_interface_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].subnet_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].private_ip_address #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].availability_zone #=> String
    #   resp.data.cluster.cluster_create_time #=> Time
    #   resp.data.cluster.automated_snapshot_retention_period #=> Integer
    #   resp.data.cluster.manual_snapshot_retention_period #=> Integer
    #   resp.data.cluster.cluster_security_groups #=> Array<ClusterSecurityGroupMembership>
    #   resp.data.cluster.cluster_security_groups[0] #=> Types::ClusterSecurityGroupMembership
    #   resp.data.cluster.cluster_security_groups[0].cluster_security_group_name #=> String
    #   resp.data.cluster.cluster_security_groups[0].status #=> String
    #   resp.data.cluster.vpc_security_groups #=> Array<VpcSecurityGroupMembership>
    #   resp.data.cluster.vpc_security_groups[0] #=> Types::VpcSecurityGroupMembership
    #   resp.data.cluster.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.data.cluster.vpc_security_groups[0].status #=> String
    #   resp.data.cluster.cluster_parameter_groups #=> Array<ClusterParameterGroupStatus>
    #   resp.data.cluster.cluster_parameter_groups[0] #=> Types::ClusterParameterGroupStatus
    #   resp.data.cluster.cluster_parameter_groups[0].parameter_group_name #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].parameter_apply_status #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list #=> Array<ClusterParameterStatus>
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0] #=> Types::ClusterParameterStatus
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_name #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_status #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_error_description #=> String
    #   resp.data.cluster.cluster_subnet_group_name #=> String
    #   resp.data.cluster.vpc_id #=> String
    #   resp.data.cluster.availability_zone #=> String
    #   resp.data.cluster.preferred_maintenance_window #=> String
    #   resp.data.cluster.pending_modified_values #=> Types::PendingModifiedValues
    #   resp.data.cluster.pending_modified_values.master_user_password #=> String
    #   resp.data.cluster.pending_modified_values.node_type #=> String
    #   resp.data.cluster.pending_modified_values.number_of_nodes #=> Integer
    #   resp.data.cluster.pending_modified_values.cluster_type #=> String
    #   resp.data.cluster.pending_modified_values.cluster_version #=> String
    #   resp.data.cluster.pending_modified_values.automated_snapshot_retention_period #=> Integer
    #   resp.data.cluster.pending_modified_values.cluster_identifier #=> String
    #   resp.data.cluster.pending_modified_values.publicly_accessible #=> Boolean
    #   resp.data.cluster.pending_modified_values.enhanced_vpc_routing #=> Boolean
    #   resp.data.cluster.pending_modified_values.maintenance_track_name #=> String
    #   resp.data.cluster.pending_modified_values.encryption_type #=> String
    #   resp.data.cluster.cluster_version #=> String
    #   resp.data.cluster.allow_version_upgrade #=> Boolean
    #   resp.data.cluster.number_of_nodes #=> Integer
    #   resp.data.cluster.publicly_accessible #=> Boolean
    #   resp.data.cluster.encrypted #=> Boolean
    #   resp.data.cluster.restore_status #=> Types::RestoreStatus
    #   resp.data.cluster.restore_status.status #=> String
    #   resp.data.cluster.restore_status.current_restore_rate_in_mega_bytes_per_second #=> Float
    #   resp.data.cluster.restore_status.snapshot_size_in_mega_bytes #=> Integer
    #   resp.data.cluster.restore_status.progress_in_mega_bytes #=> Integer
    #   resp.data.cluster.restore_status.elapsed_time_in_seconds #=> Integer
    #   resp.data.cluster.restore_status.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.data.cluster.data_transfer_progress #=> Types::DataTransferProgress
    #   resp.data.cluster.data_transfer_progress.status #=> String
    #   resp.data.cluster.data_transfer_progress.current_rate_in_mega_bytes_per_second #=> Float
    #   resp.data.cluster.data_transfer_progress.total_data_in_mega_bytes #=> Integer
    #   resp.data.cluster.data_transfer_progress.data_transferred_in_mega_bytes #=> Integer
    #   resp.data.cluster.data_transfer_progress.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.data.cluster.data_transfer_progress.elapsed_time_in_seconds #=> Integer
    #   resp.data.cluster.hsm_status #=> Types::HsmStatus
    #   resp.data.cluster.hsm_status.hsm_client_certificate_identifier #=> String
    #   resp.data.cluster.hsm_status.hsm_configuration_identifier #=> String
    #   resp.data.cluster.hsm_status.status #=> String
    #   resp.data.cluster.cluster_snapshot_copy_status #=> Types::ClusterSnapshotCopyStatus
    #   resp.data.cluster.cluster_snapshot_copy_status.destination_region #=> String
    #   resp.data.cluster.cluster_snapshot_copy_status.retention_period #=> Integer
    #   resp.data.cluster.cluster_snapshot_copy_status.manual_snapshot_retention_period #=> Integer
    #   resp.data.cluster.cluster_snapshot_copy_status.snapshot_copy_grant_name #=> String
    #   resp.data.cluster.cluster_public_key #=> String
    #   resp.data.cluster.cluster_nodes #=> Array<ClusterNode>
    #   resp.data.cluster.cluster_nodes[0] #=> Types::ClusterNode
    #   resp.data.cluster.cluster_nodes[0].node_role #=> String
    #   resp.data.cluster.cluster_nodes[0].private_ip_address #=> String
    #   resp.data.cluster.cluster_nodes[0].public_ip_address #=> String
    #   resp.data.cluster.elastic_ip_status #=> Types::ElasticIpStatus
    #   resp.data.cluster.elastic_ip_status.elastic_ip #=> String
    #   resp.data.cluster.elastic_ip_status.status #=> String
    #   resp.data.cluster.cluster_revision_number #=> String
    #   resp.data.cluster.tags #=> Array<Tag>
    #   resp.data.cluster.tags[0] #=> Types::Tag
    #   resp.data.cluster.tags[0].key #=> String
    #   resp.data.cluster.tags[0].value #=> String
    #   resp.data.cluster.kms_key_id #=> String
    #   resp.data.cluster.enhanced_vpc_routing #=> Boolean
    #   resp.data.cluster.iam_roles #=> Array<ClusterIamRole>
    #   resp.data.cluster.iam_roles[0] #=> Types::ClusterIamRole
    #   resp.data.cluster.iam_roles[0].iam_role_arn #=> String
    #   resp.data.cluster.iam_roles[0].apply_status #=> String
    #   resp.data.cluster.pending_actions #=> Array<String>
    #   resp.data.cluster.pending_actions[0] #=> String
    #   resp.data.cluster.maintenance_track_name #=> String
    #   resp.data.cluster.elastic_resize_number_of_node_options #=> String
    #   resp.data.cluster.deferred_maintenance_windows #=> Array<DeferredMaintenanceWindow>
    #   resp.data.cluster.deferred_maintenance_windows[0] #=> Types::DeferredMaintenanceWindow
    #   resp.data.cluster.deferred_maintenance_windows[0].defer_maintenance_identifier #=> String
    #   resp.data.cluster.deferred_maintenance_windows[0].defer_maintenance_start_time #=> Time
    #   resp.data.cluster.deferred_maintenance_windows[0].defer_maintenance_end_time #=> Time
    #   resp.data.cluster.snapshot_schedule_identifier #=> String
    #   resp.data.cluster.snapshot_schedule_state #=> String, one of ["MODIFYING", "ACTIVE", "FAILED"]
    #   resp.data.cluster.expected_next_snapshot_schedule_time #=> Time
    #   resp.data.cluster.expected_next_snapshot_schedule_time_status #=> String
    #   resp.data.cluster.next_maintenance_window_start_time #=> Time
    #   resp.data.cluster.resize_info #=> Types::ResizeInfo
    #   resp.data.cluster.resize_info.resize_type #=> String
    #   resp.data.cluster.resize_info.allow_cancel_resize #=> Boolean
    #   resp.data.cluster.availability_zone_relocation_status #=> String
    #   resp.data.cluster.cluster_namespace_arn #=> String
    #   resp.data.cluster.total_storage_capacity_in_mega_bytes #=> Integer
    #   resp.data.cluster.aqua_configuration #=> Types::AquaConfiguration
    #   resp.data.cluster.aqua_configuration.aqua_status #=> String, one of ["enabled", "disabled", "applying"]
    #   resp.data.cluster.aqua_configuration.aqua_configuration_status #=> String, one of ["enabled", "disabled", "auto"]
    #   resp.data.cluster.default_iam_role_arn #=> String
    #   resp.data.cluster.reserved_node_exchange_status #=> Types::ReservedNodeExchangeStatus
    #   resp.data.cluster.reserved_node_exchange_status.reserved_node_exchange_request_id #=> String
    #   resp.data.cluster.reserved_node_exchange_status.status #=> String, one of ["REQUESTED", "PENDING", "IN_PROGRESS", "RETRYING", "SUCCEEDED", "FAILED"]
    #   resp.data.cluster.reserved_node_exchange_status.request_time #=> Time
    #   resp.data.cluster.reserved_node_exchange_status.source_reserved_node_id #=> String
    #   resp.data.cluster.reserved_node_exchange_status.source_reserved_node_type #=> String
    #   resp.data.cluster.reserved_node_exchange_status.source_reserved_node_count #=> Integer
    #   resp.data.cluster.reserved_node_exchange_status.target_reserved_node_offering_id #=> String
    #   resp.data.cluster.reserved_node_exchange_status.target_reserved_node_type #=> String
    #   resp.data.cluster.reserved_node_exchange_status.target_reserved_node_count #=> Integer
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::HsmClientCertificateNotFoundFault, Errors::ClusterQuotaExceededFault, Errors::InvalidClusterSubnetGroupStateFault, Errors::TagLimitExceededFault, Errors::InvalidVPCNetworkStateFault, Errors::ClusterSecurityGroupNotFoundFault, Errors::DependentServiceRequestThrottlingFault, Errors::HsmConfigurationNotFoundFault, Errors::NumberOfNodesQuotaExceededFault, Errors::ClusterAlreadyExistsFault, Errors::ClusterParameterGroupNotFoundFault, Errors::ClusterSubnetGroupNotFoundFault, Errors::InvalidSubnet, Errors::InsufficientClusterCapacityFault, Errors::InvalidClusterTrackFault, Errors::InvalidElasticIpFault, Errors::SnapshotScheduleNotFoundFault, Errors::InvalidRetentionPeriodFault, Errors::UnauthorizedOperation, Errors::NumberOfNodesPerClusterLimitExceededFault, Errors::LimitExceededFault, Errors::InvalidTagFault]),
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

    # <p>Creates an Amazon Redshift parameter group.</p>
    #         <p>Creating parameter groups is independent of creating clusters. You can associate a
    #             cluster with a parameter group when you create the cluster. You can also associate an
    #             existing cluster with a parameter group after the cluster is created by using <a>ModifyCluster</a>. </p>
    #         <p>Parameters in the parameter group define specific behavior that applies to the
    #             databases you create on the cluster.
    # For more information about parameters and parameter groups, go to
    # <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html">Amazon Redshift Parameter Groups</a>
    # in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateClusterParameterGroupInput}.
    #
    # @option params [String] :parameter_group_name
    #   <p>The name of the cluster parameter group.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be 1 to 255 alphanumeric characters or hyphens</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                   <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #               <li>
    #                   <p>Must be unique withing your Amazon Web Services account.</p>
    #               </li>
    #            </ul>
    #           <note>
    #               <p>This value is stored as a lower-case string.</p>
    #           </note>
    #
    # @option params [String] :parameter_group_family
    #   <p>The Amazon Redshift engine version to which the cluster parameter group applies. The
    #               cluster engine version determines the set of parameters.</p>
    #           <p>To get a list of valid parameter group family names, you can call <a>DescribeClusterParameterGroups</a>. By default, Amazon Redshift returns a list of
    #               all the parameter groups that are owned by your Amazon Web Services account, including the default
    #               parameter groups for each Amazon Redshift engine version. The parameter group family names
    #               associated with the default parameter groups provide you the valid values. For example,
    #               a valid family name is "redshift-1.0". </p>
    #
    # @option params [String] :description
    #   <p>A description of the parameter group.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tag instances.</p>
    #
    # @return [Types::CreateClusterParameterGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cluster_parameter_group(
    #     parameter_group_name: 'ParameterGroupName', # required
    #     parameter_group_family: 'ParameterGroupFamily', # required
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
    #   resp.data #=> Types::CreateClusterParameterGroupOutput
    #   resp.data.cluster_parameter_group #=> Types::ClusterParameterGroup
    #   resp.data.cluster_parameter_group.parameter_group_name #=> String
    #   resp.data.cluster_parameter_group.parameter_group_family #=> String
    #   resp.data.cluster_parameter_group.description #=> String
    #   resp.data.cluster_parameter_group.tags #=> Array<Tag>
    #   resp.data.cluster_parameter_group.tags[0] #=> Types::Tag
    #   resp.data.cluster_parameter_group.tags[0].key #=> String
    #   resp.data.cluster_parameter_group.tags[0].value #=> String
    #
    def create_cluster_parameter_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateClusterParameterGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateClusterParameterGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateClusterParameterGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClusterParameterGroupAlreadyExistsFault, Errors::ClusterParameterGroupQuotaExceededFault, Errors::TagLimitExceededFault, Errors::InvalidTagFault]),
        data_parser: Parsers::CreateClusterParameterGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateClusterParameterGroup,
        stubs: @stubs,
        params_class: Params::CreateClusterParameterGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_cluster_parameter_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new Amazon Redshift security group. You use security groups to control access
    #             to non-VPC clusters.</p>
    #         <p>
    # For information about managing security groups, go to
    # <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html">Amazon Redshift Cluster Security Groups</a> in the
    # <i>Amazon Redshift Cluster Management Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateClusterSecurityGroupInput}.
    #
    # @option params [String] :cluster_security_group_name
    #   <p>The name for the security group. Amazon Redshift stores the value as a lowercase
    #               string.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must contain no more than 255 alphanumeric characters or hyphens.</p>
    #               </li>
    #               <li>
    #                   <p>Must not be "Default".</p>
    #               </li>
    #               <li>
    #                   <p>Must be unique for all security groups that are created by your Amazon Web Services account.</p>
    #               </li>
    #            </ul>
    #           <p>Example: <code>examplesecuritygroup</code>
    #           </p>
    #
    # @option params [String] :description
    #   <p>A description for the security group.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tag instances.</p>
    #
    # @return [Types::CreateClusterSecurityGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cluster_security_group(
    #     cluster_security_group_name: 'ClusterSecurityGroupName', # required
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
    #   resp.data #=> Types::CreateClusterSecurityGroupOutput
    #   resp.data.cluster_security_group #=> Types::ClusterSecurityGroup
    #   resp.data.cluster_security_group.cluster_security_group_name #=> String
    #   resp.data.cluster_security_group.description #=> String
    #   resp.data.cluster_security_group.ec2_security_groups #=> Array<EC2SecurityGroup>
    #   resp.data.cluster_security_group.ec2_security_groups[0] #=> Types::EC2SecurityGroup
    #   resp.data.cluster_security_group.ec2_security_groups[0].status #=> String
    #   resp.data.cluster_security_group.ec2_security_groups[0].ec2_security_group_name #=> String
    #   resp.data.cluster_security_group.ec2_security_groups[0].ec2_security_group_owner_id #=> String
    #   resp.data.cluster_security_group.ec2_security_groups[0].tags #=> Array<Tag>
    #   resp.data.cluster_security_group.ec2_security_groups[0].tags[0] #=> Types::Tag
    #   resp.data.cluster_security_group.ec2_security_groups[0].tags[0].key #=> String
    #   resp.data.cluster_security_group.ec2_security_groups[0].tags[0].value #=> String
    #   resp.data.cluster_security_group.ip_ranges #=> Array<IPRange>
    #   resp.data.cluster_security_group.ip_ranges[0] #=> Types::IPRange
    #   resp.data.cluster_security_group.ip_ranges[0].status #=> String
    #   resp.data.cluster_security_group.ip_ranges[0].cidrip #=> String
    #   resp.data.cluster_security_group.ip_ranges[0].tags #=> Array<Tag>
    #   resp.data.cluster_security_group.tags #=> Array<Tag>
    #
    def create_cluster_security_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateClusterSecurityGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateClusterSecurityGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateClusterSecurityGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClusterSecurityGroupQuotaExceededFault, Errors::ClusterSecurityGroupAlreadyExistsFault, Errors::TagLimitExceededFault, Errors::InvalidTagFault]),
        data_parser: Parsers::CreateClusterSecurityGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateClusterSecurityGroup,
        stubs: @stubs,
        params_class: Params::CreateClusterSecurityGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_cluster_security_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a manual snapshot of the specified cluster. The cluster must be in the
    #                 <code>available</code> state. </p>
    #         <p>
    # For more information about working with snapshots, go to
    # <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html">Amazon Redshift Snapshots</a>
    # in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateClusterSnapshotInput}.
    #
    # @option params [String] :snapshot_identifier
    #   <p>A unique identifier for the snapshot that you are requesting. This identifier must
    #               be unique for all snapshots within the Amazon Web Services account.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Cannot be null, empty, or blank</p>
    #               </li>
    #               <li>
    #                   <p>Must contain from 1 to 255 alphanumeric characters or hyphens</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter</p>
    #               </li>
    #               <li>
    #                   <p>Cannot end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #            </ul>
    #           <p>Example: <code>my-snapshot-id</code>
    #           </p>
    #
    # @option params [String] :cluster_identifier
    #   <p>The cluster identifier for which you want a snapshot.</p>
    #
    # @option params [Integer] :manual_snapshot_retention_period
    #   <p>The number of days that a manual snapshot is retained. If the value is -1, the manual
    #               snapshot is retained indefinitely. </p>
    #
    #           <p>The value must be either -1 or an integer between 1 and 3,653.</p>
    #
    #           <p>The default value is -1.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tag instances.</p>
    #
    # @return [Types::CreateClusterSnapshotOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cluster_snapshot(
    #     snapshot_identifier: 'SnapshotIdentifier', # required
    #     cluster_identifier: 'ClusterIdentifier', # required
    #     manual_snapshot_retention_period: 1,
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
    #   resp.data #=> Types::CreateClusterSnapshotOutput
    #   resp.data.snapshot #=> Types::Snapshot
    #   resp.data.snapshot.snapshot_identifier #=> String
    #   resp.data.snapshot.cluster_identifier #=> String
    #   resp.data.snapshot.snapshot_create_time #=> Time
    #   resp.data.snapshot.status #=> String
    #   resp.data.snapshot.port #=> Integer
    #   resp.data.snapshot.availability_zone #=> String
    #   resp.data.snapshot.cluster_create_time #=> Time
    #   resp.data.snapshot.master_username #=> String
    #   resp.data.snapshot.cluster_version #=> String
    #   resp.data.snapshot.engine_full_version #=> String
    #   resp.data.snapshot.snapshot_type #=> String
    #   resp.data.snapshot.node_type #=> String
    #   resp.data.snapshot.number_of_nodes #=> Integer
    #   resp.data.snapshot.db_name #=> String
    #   resp.data.snapshot.vpc_id #=> String
    #   resp.data.snapshot.encrypted #=> Boolean
    #   resp.data.snapshot.kms_key_id #=> String
    #   resp.data.snapshot.encrypted_with_hsm #=> Boolean
    #   resp.data.snapshot.accounts_with_restore_access #=> Array<AccountWithRestoreAccess>
    #   resp.data.snapshot.accounts_with_restore_access[0] #=> Types::AccountWithRestoreAccess
    #   resp.data.snapshot.accounts_with_restore_access[0].account_id #=> String
    #   resp.data.snapshot.accounts_with_restore_access[0].account_alias #=> String
    #   resp.data.snapshot.owner_account #=> String
    #   resp.data.snapshot.total_backup_size_in_mega_bytes #=> Float
    #   resp.data.snapshot.actual_incremental_backup_size_in_mega_bytes #=> Float
    #   resp.data.snapshot.backup_progress_in_mega_bytes #=> Float
    #   resp.data.snapshot.current_backup_rate_in_mega_bytes_per_second #=> Float
    #   resp.data.snapshot.estimated_seconds_to_completion #=> Integer
    #   resp.data.snapshot.elapsed_time_in_seconds #=> Integer
    #   resp.data.snapshot.source_region #=> String
    #   resp.data.snapshot.tags #=> Array<Tag>
    #   resp.data.snapshot.tags[0] #=> Types::Tag
    #   resp.data.snapshot.tags[0].key #=> String
    #   resp.data.snapshot.tags[0].value #=> String
    #   resp.data.snapshot.restorable_node_types #=> Array<String>
    #   resp.data.snapshot.restorable_node_types[0] #=> String
    #   resp.data.snapshot.enhanced_vpc_routing #=> Boolean
    #   resp.data.snapshot.maintenance_track_name #=> String
    #   resp.data.snapshot.manual_snapshot_retention_period #=> Integer
    #   resp.data.snapshot.manual_snapshot_remaining_days #=> Integer
    #   resp.data.snapshot.snapshot_retention_start_time #=> Time
    #
    def create_cluster_snapshot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateClusterSnapshotInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateClusterSnapshotInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateClusterSnapshot
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClusterSnapshotAlreadyExistsFault, Errors::InvalidClusterStateFault, Errors::TagLimitExceededFault, Errors::ClusterSnapshotQuotaExceededFault, Errors::InvalidRetentionPeriodFault, Errors::ClusterNotFoundFault, Errors::InvalidTagFault]),
        data_parser: Parsers::CreateClusterSnapshot
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateClusterSnapshot,
        stubs: @stubs,
        params_class: Params::CreateClusterSnapshotOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_cluster_snapshot
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new Amazon Redshift subnet group. You must provide a list of one or more
    #             subnets in your existing Amazon Virtual Private Cloud (Amazon VPC) when creating
    #             Amazon Redshift subnet group.</p>
    #         <p>
    # For information about subnet groups, go to
    # <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-cluster-subnet-groups.html">Amazon Redshift Cluster Subnet Groups</a> in the
    # <i>Amazon Redshift Cluster Management Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateClusterSubnetGroupInput}.
    #
    # @option params [String] :cluster_subnet_group_name
    #   <p>The name for the subnet group. Amazon Redshift stores the value as a lowercase
    #               string.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must contain no more than 255 alphanumeric characters or hyphens.</p>
    #               </li>
    #               <li>
    #                   <p>Must not be "Default".</p>
    #               </li>
    #               <li>
    #                   <p>Must be unique for all subnet groups that are created by your Amazon Web Services account.</p>
    #               </li>
    #            </ul>
    #           <p>Example: <code>examplesubnetgroup</code>
    #           </p>
    #
    # @option params [String] :description
    #   <p>A description for the subnet group.</p>
    #
    # @option params [Array<String>] :subnet_ids
    #   <p>An array of VPC subnet IDs. A maximum of 20 subnets can be modified in a single
    #               request.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tag instances.</p>
    #
    # @return [Types::CreateClusterSubnetGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cluster_subnet_group(
    #     cluster_subnet_group_name: 'ClusterSubnetGroupName', # required
    #     description: 'Description', # required
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
    #   resp.data #=> Types::CreateClusterSubnetGroupOutput
    #   resp.data.cluster_subnet_group #=> Types::ClusterSubnetGroup
    #   resp.data.cluster_subnet_group.cluster_subnet_group_name #=> String
    #   resp.data.cluster_subnet_group.description #=> String
    #   resp.data.cluster_subnet_group.vpc_id #=> String
    #   resp.data.cluster_subnet_group.subnet_group_status #=> String
    #   resp.data.cluster_subnet_group.subnets #=> Array<Subnet>
    #   resp.data.cluster_subnet_group.subnets[0] #=> Types::Subnet
    #   resp.data.cluster_subnet_group.subnets[0].subnet_identifier #=> String
    #   resp.data.cluster_subnet_group.subnets[0].subnet_availability_zone #=> Types::AvailabilityZone
    #   resp.data.cluster_subnet_group.subnets[0].subnet_availability_zone.name #=> String
    #   resp.data.cluster_subnet_group.subnets[0].subnet_availability_zone.supported_platforms #=> Array<SupportedPlatform>
    #   resp.data.cluster_subnet_group.subnets[0].subnet_availability_zone.supported_platforms[0] #=> Types::SupportedPlatform
    #   resp.data.cluster_subnet_group.subnets[0].subnet_availability_zone.supported_platforms[0].name #=> String
    #   resp.data.cluster_subnet_group.subnets[0].subnet_status #=> String
    #   resp.data.cluster_subnet_group.tags #=> Array<Tag>
    #   resp.data.cluster_subnet_group.tags[0] #=> Types::Tag
    #   resp.data.cluster_subnet_group.tags[0].key #=> String
    #   resp.data.cluster_subnet_group.tags[0].value #=> String
    #
    def create_cluster_subnet_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateClusterSubnetGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateClusterSubnetGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateClusterSubnetGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidSubnet, Errors::ClusterSubnetGroupAlreadyExistsFault, Errors::TagLimitExceededFault, Errors::UnauthorizedOperation, Errors::ClusterSubnetQuotaExceededFault, Errors::DependentServiceRequestThrottlingFault, Errors::ClusterSubnetGroupQuotaExceededFault, Errors::InvalidTagFault]),
        data_parser: Parsers::CreateClusterSubnetGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateClusterSubnetGroup,
        stubs: @stubs,
        params_class: Params::CreateClusterSubnetGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_cluster_subnet_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a Redshift-managed VPC endpoint.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateEndpointAccessInput}.
    #
    # @option params [String] :cluster_identifier
    #   <p>The cluster identifier of the cluster to access.</p>
    #
    # @option params [String] :resource_owner
    #   <p>The Amazon Web Services account ID of the owner of the cluster. This is only required if the cluster is in another Amazon Web Services account.</p>
    #
    # @option params [String] :endpoint_name
    #   <p>The Redshift-managed VPC endpoint name.</p>
    #            <p>An endpoint name must contain 1-30 characters.
    #             Valid characters are A-Z, a-z, 0-9, and hyphen(-).
    #             The first character must be a letter.
    #             The name can't contain two consecutive hyphens or end with a hyphen.</p>
    #
    # @option params [String] :subnet_group_name
    #   <p>The subnet group from which Amazon Redshift chooses the subnet to deploy the endpoint.</p>
    #
    # @option params [Array<String>] :vpc_security_group_ids
    #   <p>The security group that defines the ports, protocols, and sources for inbound traffic that you are authorizing into your endpoint.</p>
    #
    # @return [Types::CreateEndpointAccessOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_endpoint_access(
    #     cluster_identifier: 'ClusterIdentifier',
    #     resource_owner: 'ResourceOwner',
    #     endpoint_name: 'EndpointName', # required
    #     subnet_group_name: 'SubnetGroupName', # required
    #     vpc_security_group_ids: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateEndpointAccessOutput
    #   resp.data.cluster_identifier #=> String
    #   resp.data.resource_owner #=> String
    #   resp.data.subnet_group_name #=> String
    #   resp.data.endpoint_status #=> String
    #   resp.data.endpoint_name #=> String
    #   resp.data.endpoint_create_time #=> Time
    #   resp.data.port #=> Integer
    #   resp.data.address #=> String
    #   resp.data.vpc_security_groups #=> Array<VpcSecurityGroupMembership>
    #   resp.data.vpc_security_groups[0] #=> Types::VpcSecurityGroupMembership
    #   resp.data.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.data.vpc_security_groups[0].status #=> String
    #   resp.data.vpc_endpoint #=> Types::VpcEndpoint
    #   resp.data.vpc_endpoint.vpc_endpoint_id #=> String
    #   resp.data.vpc_endpoint.vpc_id #=> String
    #   resp.data.vpc_endpoint.network_interfaces #=> Array<NetworkInterface>
    #   resp.data.vpc_endpoint.network_interfaces[0] #=> Types::NetworkInterface
    #   resp.data.vpc_endpoint.network_interfaces[0].network_interface_id #=> String
    #   resp.data.vpc_endpoint.network_interfaces[0].subnet_id #=> String
    #   resp.data.vpc_endpoint.network_interfaces[0].private_ip_address #=> String
    #   resp.data.vpc_endpoint.network_interfaces[0].availability_zone #=> String
    #
    def create_endpoint_access(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateEndpointAccessInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateEndpointAccessInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateEndpointAccess
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EndpointsPerAuthorizationLimitExceededFault, Errors::ClusterSubnetGroupNotFoundFault, Errors::UnsupportedOperationFault, Errors::EndpointAlreadyExistsFault, Errors::InvalidClusterStateFault, Errors::AccessToClusterDeniedFault, Errors::InvalidClusterSecurityGroupStateFault, Errors::EndpointsPerClusterLimitExceededFault, Errors::UnauthorizedOperation, Errors::ClusterNotFoundFault]),
        data_parser: Parsers::CreateEndpointAccess
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateEndpointAccess,
        stubs: @stubs,
        params_class: Params::CreateEndpointAccessOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_endpoint_access
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an Amazon Redshift event notification subscription. This action requires an ARN
    #             (Amazon Resource Name) of an Amazon SNS topic created by either the Amazon Redshift console,
    #             the Amazon SNS console, or the Amazon SNS API. To obtain an ARN with Amazon SNS, you
    #             must create a topic in Amazon SNS and subscribe to the topic. The ARN is displayed in
    #             the SNS console.</p>
    #         <p>You can specify the source type, and lists of Amazon Redshift source IDs, event
    #             categories, and event severities. Notifications will be sent for all events you want
    #             that match those criteria. For example, you can specify source type = cluster, source ID
    #             = my-cluster-1 and mycluster2, event categories = Availability, Backup, and severity =
    #             ERROR. The subscription will only send notifications for those ERROR events in the
    #             Availability and Backup categories for the specified clusters.</p>
    #         <p>If you specify both the source type and source IDs, such as source type = cluster
    #             and source identifier = my-cluster-1, notifications will be sent for all the cluster
    #             events for my-cluster-1. If you specify a source type but do not specify a source
    #             identifier, you will receive notice of the events for the objects of that type in your
    #             Amazon Web Services account. If you do not specify either the SourceType nor the SourceIdentifier, you
    #             will be notified of events generated from all Amazon Redshift sources belonging to your Amazon Web Services account. You must specify a source type if you specify a source ID.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateEventSubscriptionInput}.
    #
    # @option params [String] :subscription_name
    #   <p>The name of the event subscription to be created.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Cannot be null, empty, or blank.</p>
    #               </li>
    #               <li>
    #                   <p>Must contain from 1 to 255 alphanumeric characters or hyphens.</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                   <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :sns_topic_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon SNS topic used to transmit the event
    #               notifications. The ARN is created by Amazon SNS when you create a topic and subscribe to
    #               it.</p>
    #
    # @option params [String] :source_type
    #   <p>The type of source that will be generating the events. For example, if you want to
    #               be notified of events generated by a cluster, you would set this parameter to cluster.
    #               If this value is not specified, events are returned for all Amazon Redshift objects in your
    #               Amazon Web Services account. You must specify a source type in order to specify source IDs.</p>
    #           <p>Valid values: cluster, cluster-parameter-group, cluster-security-group, cluster-snapshot, and scheduled-action.</p>
    #
    # @option params [Array<String>] :source_ids
    #   <p>A list of one or more identifiers of Amazon Redshift source objects. All of the objects
    #               must be of the same type as was specified in the source type parameter. The event
    #               subscription will return only events generated by the specified objects. If not
    #               specified, then events are returned for all objects within the source type
    #               specified.</p>
    #           <p>Example: my-cluster-1, my-cluster-2</p>
    #           <p>Example: my-snapshot-20131010</p>
    #
    # @option params [Array<String>] :event_categories
    #   <p>Specifies the Amazon Redshift event categories to be published by the event notification
    #               subscription.</p>
    #           <p>Values: configuration, management, monitoring, security, pending</p>
    #
    # @option params [String] :severity
    #   <p>Specifies the Amazon Redshift event severity to be published by the event notification
    #               subscription.</p>
    #           <p>Values: ERROR, INFO</p>
    #
    # @option params [Boolean] :enabled
    #   <p>A boolean value; set to <code>true</code> to activate the subscription, and set to
    #                   <code>false</code> to create the subscription but not activate it. </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tag instances.</p>
    #
    # @return [Types::CreateEventSubscriptionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_event_subscription(
    #     subscription_name: 'SubscriptionName', # required
    #     sns_topic_arn: 'SnsTopicArn', # required
    #     source_type: 'SourceType',
    #     source_ids: [
    #       'member'
    #     ],
    #     event_categories: [
    #       'member'
    #     ],
    #     severity: 'Severity',
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
    #   resp.data.event_subscription.subscription_creation_time #=> Time
    #   resp.data.event_subscription.source_type #=> String
    #   resp.data.event_subscription.source_ids_list #=> Array<String>
    #   resp.data.event_subscription.source_ids_list[0] #=> String
    #   resp.data.event_subscription.event_categories_list #=> Array<String>
    #   resp.data.event_subscription.event_categories_list[0] #=> String
    #   resp.data.event_subscription.severity #=> String
    #   resp.data.event_subscription.enabled #=> Boolean
    #   resp.data.event_subscription.tags #=> Array<Tag>
    #   resp.data.event_subscription.tags[0] #=> Types::Tag
    #   resp.data.event_subscription.tags[0].key #=> String
    #   resp.data.event_subscription.tags[0].value #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EventSubscriptionQuotaExceededFault, Errors::SubscriptionSeverityNotFoundFault, Errors::SubscriptionEventIdNotFoundFault, Errors::SubscriptionCategoryNotFoundFault, Errors::SNSTopicArnNotFoundFault, Errors::TagLimitExceededFault, Errors::SubscriptionAlreadyExistFault, Errors::SNSNoAuthorizationFault, Errors::SourceNotFoundFault, Errors::InvalidTagFault, Errors::SNSInvalidTopicFault]),
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

    # <p>Creates an HSM client certificate that an Amazon Redshift cluster will use to connect to
    #             the client's HSM in order to store and retrieve the keys used to encrypt the cluster
    #             databases.</p>
    #         <p>The command returns a public key, which you must store in the HSM. In addition to
    #             creating the HSM certificate, you must create an Amazon Redshift HSM configuration that
    #             provides a cluster the information needed to store and use encryption keys in the HSM.
    #             For more information, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-db-encryption.html#working-with-HSM">Hardware Security Modules</a>
    #             in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateHsmClientCertificateInput}.
    #
    # @option params [String] :hsm_client_certificate_identifier
    #   <p>The identifier to be assigned to the new HSM client certificate that the cluster
    #               will use to connect to the HSM to use the database encryption keys.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tag instances.</p>
    #
    # @return [Types::CreateHsmClientCertificateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_hsm_client_certificate(
    #     hsm_client_certificate_identifier: 'HsmClientCertificateIdentifier', # required
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
    #   resp.data #=> Types::CreateHsmClientCertificateOutput
    #   resp.data.hsm_client_certificate #=> Types::HsmClientCertificate
    #   resp.data.hsm_client_certificate.hsm_client_certificate_identifier #=> String
    #   resp.data.hsm_client_certificate.hsm_client_certificate_public_key #=> String
    #   resp.data.hsm_client_certificate.tags #=> Array<Tag>
    #   resp.data.hsm_client_certificate.tags[0] #=> Types::Tag
    #   resp.data.hsm_client_certificate.tags[0].key #=> String
    #   resp.data.hsm_client_certificate.tags[0].value #=> String
    #
    def create_hsm_client_certificate(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateHsmClientCertificateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateHsmClientCertificateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateHsmClientCertificate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::HsmClientCertificateAlreadyExistsFault, Errors::TagLimitExceededFault, Errors::HsmClientCertificateQuotaExceededFault, Errors::InvalidTagFault]),
        data_parser: Parsers::CreateHsmClientCertificate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateHsmClientCertificate,
        stubs: @stubs,
        params_class: Params::CreateHsmClientCertificateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_hsm_client_certificate
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an HSM configuration that contains the information required by an Amazon Redshift
    #             cluster to store and use database encryption keys in a Hardware Security Module (HSM).
    #             After creating the HSM configuration, you can specify it as a parameter when creating a
    #             cluster. The cluster will then store its encryption keys in the HSM.</p>
    #         <p>In addition to creating an HSM configuration, you must also create an HSM client
    #             certificate. For more information, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-HSM.html">Hardware Security Modules</a>
    #             in the Amazon Redshift Cluster Management Guide.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateHsmConfigurationInput}.
    #
    # @option params [String] :hsm_configuration_identifier
    #   <p>The identifier to be assigned to the new Amazon Redshift HSM configuration.</p>
    #
    # @option params [String] :description
    #   <p>A text description of the HSM configuration to be created.</p>
    #
    # @option params [String] :hsm_ip_address
    #   <p>The IP address that the Amazon Redshift cluster must use to access the HSM.</p>
    #
    # @option params [String] :hsm_partition_name
    #   <p>The name of the partition in the HSM where the Amazon Redshift clusters will store their
    #               database encryption keys.</p>
    #
    # @option params [String] :hsm_partition_password
    #   <p>The password required to access the HSM partition.</p>
    #
    # @option params [String] :hsm_server_public_certificate
    #   <p>The HSMs public certificate file. When using Cloud HSM, the file name is
    #               server.pem.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tag instances.</p>
    #
    # @return [Types::CreateHsmConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_hsm_configuration(
    #     hsm_configuration_identifier: 'HsmConfigurationIdentifier', # required
    #     description: 'Description', # required
    #     hsm_ip_address: 'HsmIpAddress', # required
    #     hsm_partition_name: 'HsmPartitionName', # required
    #     hsm_partition_password: 'HsmPartitionPassword', # required
    #     hsm_server_public_certificate: 'HsmServerPublicCertificate', # required
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
    #   resp.data #=> Types::CreateHsmConfigurationOutput
    #   resp.data.hsm_configuration #=> Types::HsmConfiguration
    #   resp.data.hsm_configuration.hsm_configuration_identifier #=> String
    #   resp.data.hsm_configuration.description #=> String
    #   resp.data.hsm_configuration.hsm_ip_address #=> String
    #   resp.data.hsm_configuration.hsm_partition_name #=> String
    #   resp.data.hsm_configuration.tags #=> Array<Tag>
    #   resp.data.hsm_configuration.tags[0] #=> Types::Tag
    #   resp.data.hsm_configuration.tags[0].key #=> String
    #   resp.data.hsm_configuration.tags[0].value #=> String
    #
    def create_hsm_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateHsmConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateHsmConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateHsmConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TagLimitExceededFault, Errors::HsmConfigurationQuotaExceededFault, Errors::InvalidTagFault, Errors::HsmConfigurationAlreadyExistsFault]),
        data_parser: Parsers::CreateHsmConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateHsmConfiguration,
        stubs: @stubs,
        params_class: Params::CreateHsmConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_hsm_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a scheduled action. A scheduled action contains a schedule and an Amazon Redshift API action.
    #             For example, you can create a schedule of when to run the <code>ResizeCluster</code> API operation.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::CreateScheduledActionInput}.
    #
    # @option params [String] :scheduled_action_name
    #   <p>The name of the scheduled action. The name must be unique within an account.
    #               For more information about this parameter, see <a>ScheduledAction</a>. </p>
    #
    # @option params [ScheduledActionType] :target_action
    #   <p>A JSON format string of the Amazon Redshift API operation with input parameters.
    #               For more information about this parameter, see <a>ScheduledAction</a>. </p>
    #
    # @option params [String] :schedule
    #   <p>The schedule in <code>at( )</code> or <code>cron( )</code> format.
    #               For more information about this parameter, see <a>ScheduledAction</a>.</p>
    #
    # @option params [String] :iam_role
    #   <p>The IAM role to assume to run the target action.
    #               For more information about this parameter, see <a>ScheduledAction</a>. </p>
    #
    # @option params [String] :scheduled_action_description
    #   <p>The description of the scheduled action.
    #               </p>
    #
    # @option params [Time] :start_time
    #   <p>The start time in UTC of the scheduled action.
    #               Before this time, the scheduled action does not trigger.
    #               For more information about this parameter, see <a>ScheduledAction</a>.</p>
    #
    # @option params [Time] :end_time
    #   <p>The end time in UTC of the scheduled action. After this time, the scheduled action does not trigger.
    #               For more information about this parameter, see <a>ScheduledAction</a>. </p>
    #
    # @option params [Boolean] :enable
    #   <p>If true, the schedule is enabled. If false, the scheduled action does not trigger.
    #               For more information about <code>state</code> of the scheduled action, see <a>ScheduledAction</a>. </p>
    #
    # @return [Types::CreateScheduledActionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_scheduled_action(
    #     scheduled_action_name: 'ScheduledActionName', # required
    #     target_action: {
    #       resize_cluster: {
    #         cluster_identifier: 'ClusterIdentifier', # required
    #         cluster_type: 'ClusterType',
    #         node_type: 'NodeType',
    #         number_of_nodes: 1,
    #         classic: false,
    #         reserved_node_id: 'ReservedNodeId',
    #         target_reserved_node_offering_id: 'TargetReservedNodeOfferingId'
    #       },
    #       pause_cluster: {
    #         cluster_identifier: 'ClusterIdentifier' # required
    #       },
    #       resume_cluster: {
    #         cluster_identifier: 'ClusterIdentifier' # required
    #       }
    #     }, # required
    #     schedule: 'Schedule', # required
    #     iam_role: 'IamRole', # required
    #     scheduled_action_description: 'ScheduledActionDescription',
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     enable: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateScheduledActionOutput
    #   resp.data.scheduled_action_name #=> String
    #   resp.data.target_action #=> Types::ScheduledActionType
    #   resp.data.target_action.resize_cluster #=> Types::ResizeClusterMessage
    #   resp.data.target_action.resize_cluster.cluster_identifier #=> String
    #   resp.data.target_action.resize_cluster.cluster_type #=> String
    #   resp.data.target_action.resize_cluster.node_type #=> String
    #   resp.data.target_action.resize_cluster.number_of_nodes #=> Integer
    #   resp.data.target_action.resize_cluster.classic #=> Boolean
    #   resp.data.target_action.resize_cluster.reserved_node_id #=> String
    #   resp.data.target_action.resize_cluster.target_reserved_node_offering_id #=> String
    #   resp.data.target_action.pause_cluster #=> Types::PauseClusterMessage
    #   resp.data.target_action.pause_cluster.cluster_identifier #=> String
    #   resp.data.target_action.resume_cluster #=> Types::ResumeClusterMessage
    #   resp.data.target_action.resume_cluster.cluster_identifier #=> String
    #   resp.data.schedule #=> String
    #   resp.data.iam_role #=> String
    #   resp.data.scheduled_action_description #=> String
    #   resp.data.state #=> String, one of ["ACTIVE", "DISABLED"]
    #   resp.data.next_invocations #=> Array<Time>
    #   resp.data.next_invocations[0] #=> Time
    #   resp.data.start_time #=> Time
    #   resp.data.end_time #=> Time
    #
    def create_scheduled_action(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateScheduledActionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateScheduledActionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateScheduledAction
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ScheduledActionTypeUnsupportedFault, Errors::ScheduledActionAlreadyExistsFault, Errors::InvalidScheduledActionFault, Errors::ScheduledActionQuotaExceededFault, Errors::UnauthorizedOperation, Errors::InvalidScheduleFault]),
        data_parser: Parsers::CreateScheduledAction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateScheduledAction,
        stubs: @stubs,
        params_class: Params::CreateScheduledActionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_scheduled_action
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a snapshot copy grant that permits Amazon Redshift to use an encrypted symmetric key
    #             from Key Management Service (KMS) to encrypt copied snapshots in a
    #             destination region.</p>
    #         <p>
    # For more information about managing snapshot copy grants, go to
    # <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-db-encryption.html">Amazon Redshift Database Encryption</a>
    # in the <i>Amazon Redshift Cluster Management Guide</i>.
    # </p>
    #
    # @param [Hash] params
    #   See {Types::CreateSnapshotCopyGrantInput}.
    #
    # @option params [String] :snapshot_copy_grant_name
    #   <p>The name of the snapshot copy grant. This name must be unique in the region for the
    #               Amazon Web Services account.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>Alphabetic characters must be lowercase.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>Must be unique for all clusters within an Amazon Web Services account.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :kms_key_id
    #   <p>The unique identifier of the encrypted symmetric key to which to grant Amazon Redshift
    #               permission. If no key is specified, the default key is used.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tag instances.</p>
    #
    # @return [Types::CreateSnapshotCopyGrantOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_snapshot_copy_grant(
    #     snapshot_copy_grant_name: 'SnapshotCopyGrantName', # required
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
    #   resp.data #=> Types::CreateSnapshotCopyGrantOutput
    #   resp.data.snapshot_copy_grant #=> Types::SnapshotCopyGrant
    #   resp.data.snapshot_copy_grant.snapshot_copy_grant_name #=> String
    #   resp.data.snapshot_copy_grant.kms_key_id #=> String
    #   resp.data.snapshot_copy_grant.tags #=> Array<Tag>
    #   resp.data.snapshot_copy_grant.tags[0] #=> Types::Tag
    #   resp.data.snapshot_copy_grant.tags[0].key #=> String
    #   resp.data.snapshot_copy_grant.tags[0].value #=> String
    #
    def create_snapshot_copy_grant(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateSnapshotCopyGrantInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateSnapshotCopyGrantInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateSnapshotCopyGrant
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::SnapshotCopyGrantAlreadyExistsFault, Errors::TagLimitExceededFault, Errors::DependentServiceRequestThrottlingFault, Errors::SnapshotCopyGrantQuotaExceededFault, Errors::LimitExceededFault, Errors::InvalidTagFault]),
        data_parser: Parsers::CreateSnapshotCopyGrant
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateSnapshotCopyGrant,
        stubs: @stubs,
        params_class: Params::CreateSnapshotCopyGrantOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_snapshot_copy_grant
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Create a snapshot schedule that can be associated to a cluster and which overrides the default system backup schedule. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateSnapshotScheduleInput}.
    #
    # @option params [Array<String>] :schedule_definitions
    #   <p>The definition of the snapshot schedule. The definition is made up of schedule
    #               expressions, for example "cron(30 12 *)" or "rate(12 hours)". </p>
    #
    # @option params [String] :schedule_identifier
    #   <p>A unique identifier for a snapshot schedule. Only alphanumeric characters are allowed
    #               for the identifier.</p>
    #
    # @option params [String] :schedule_description
    #   <p>The description of the snapshot schedule.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>An optional set of tags you can use to search for the schedule.</p>
    #
    # @option params [Boolean] :dry_run
    #   <p></p>
    #
    # @option params [Integer] :next_invocations
    #   <p></p>
    #
    # @return [Types::CreateSnapshotScheduleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_snapshot_schedule(
    #     schedule_definitions: [
    #       'member'
    #     ],
    #     schedule_identifier: 'ScheduleIdentifier',
    #     schedule_description: 'ScheduleDescription',
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ],
    #     dry_run: false,
    #     next_invocations: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateSnapshotScheduleOutput
    #   resp.data.schedule_definitions #=> Array<String>
    #   resp.data.schedule_definitions[0] #=> String
    #   resp.data.schedule_identifier #=> String
    #   resp.data.schedule_description #=> String
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.next_invocations #=> Array<Time>
    #   resp.data.next_invocations[0] #=> Time
    #   resp.data.associated_cluster_count #=> Integer
    #   resp.data.associated_clusters #=> Array<ClusterAssociatedToSchedule>
    #   resp.data.associated_clusters[0] #=> Types::ClusterAssociatedToSchedule
    #   resp.data.associated_clusters[0].cluster_identifier #=> String
    #   resp.data.associated_clusters[0].schedule_association_state #=> String, one of ["MODIFYING", "ACTIVE", "FAILED"]
    #
    def create_snapshot_schedule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateSnapshotScheduleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateSnapshotScheduleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateSnapshotSchedule
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::SnapshotScheduleQuotaExceededFault, Errors::ScheduleDefinitionTypeUnsupportedFault, Errors::TagLimitExceededFault, Errors::SnapshotScheduleAlreadyExistsFault, Errors::InvalidScheduleFault, Errors::InvalidTagFault]),
        data_parser: Parsers::CreateSnapshotSchedule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateSnapshotSchedule,
        stubs: @stubs,
        params_class: Params::CreateSnapshotScheduleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_snapshot_schedule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds tags to a cluster.</p>
    #         <p>A resource can have up to 50 tags. If you try to create more than 50 tags for a
    #             resource, you will receive an error and the attempt will fail.</p>
    #         <p>If you specify a key that already exists for the resource, the value for that key
    #             will be updated with the new value.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateTagsInput}.
    #
    # @option params [String] :resource_name
    #   <p>The Amazon Resource Name (ARN) to which you want to add the tag or tags. For
    #               example, <code>arn:aws:redshift:us-east-2:123456789:cluster:t1</code>. </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>One or more name/value pairs to add as tags to the specified resource. Each tag
    #               name is passed in with the parameter <code>Key</code> and the corresponding value is
    #               passed in with the parameter <code>Value</code>. The <code>Key</code> and
    #                   <code>Value</code> parameters are separated by a comma (,). Separate multiple tags
    #               with a space. For example, <code>--tags "Key"="owner","Value"="admin"
    #                   "Key"="environment","Value"="test" "Key"="version","Value"="1.0"</code>. </p>
    #
    # @return [Types::CreateTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_tags(
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
    #   resp.data #=> Types::CreateTagsOutput
    #
    def create_tags(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateTagsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateTagsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateTags
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidClusterStateFault, Errors::ResourceNotFoundFault, Errors::TagLimitExceededFault, Errors::InvalidTagFault]),
        data_parser: Parsers::CreateTags
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateTags,
        stubs: @stubs,
        params_class: Params::CreateTagsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_tags
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a usage limit for a specified Amazon Redshift feature on a cluster.
    #             The usage limit is identified by the returned usage limit identifier.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateUsageLimitInput}.
    #
    # @option params [String] :cluster_identifier
    #   <p>The identifier of the cluster that you want to limit usage.</p>
    #
    # @option params [String] :feature_type
    #   <p>The Amazon Redshift feature that you want to limit.</p>
    #
    # @option params [String] :limit_type
    #   <p>The type of limit. Depending on the feature type, this can be based on a time duration or data size.
    #               If <code>FeatureType</code> is <code>spectrum</code>, then <code>LimitType</code> must be <code>data-scanned</code>.
    #               If <code>FeatureType</code> is <code>concurrency-scaling</code>, then <code>LimitType</code> must be <code>time</code>.
    #               If <code>FeatureType</code> is <code>cross-region-datasharing</code>, then <code>LimitType</code> must be <code>data-scanned</code>.
    #              </p>
    #
    # @option params [Integer] :amount
    #   <p>The limit amount. If time-based, this amount is in minutes. If data-based, this amount is in terabytes (TB).
    #               The value must be a positive number.
    #               </p>
    #
    # @option params [String] :period
    #   <p>The time period that the amount applies to. A <code>weekly</code> period begins on Sunday. The default is <code>monthly</code>.
    #               </p>
    #
    # @option params [String] :breach_action
    #   <p>The action that Amazon Redshift takes when the limit is reached. The default is log.
    #               For more information about this parameter, see <a>UsageLimit</a>.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tag instances.</p>
    #
    # @return [Types::CreateUsageLimitOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_usage_limit(
    #     cluster_identifier: 'ClusterIdentifier', # required
    #     feature_type: 'spectrum', # required - accepts ["spectrum", "concurrency-scaling", "cross-region-datasharing"]
    #     limit_type: 'time', # required - accepts ["time", "data-scanned"]
    #     amount: 1, # required
    #     period: 'daily', # accepts ["daily", "weekly", "monthly"]
    #     breach_action: 'log', # accepts ["log", "emit-metric", "disable"]
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
    #   resp.data #=> Types::CreateUsageLimitOutput
    #   resp.data.usage_limit_id #=> String
    #   resp.data.cluster_identifier #=> String
    #   resp.data.feature_type #=> String, one of ["spectrum", "concurrency-scaling", "cross-region-datasharing"]
    #   resp.data.limit_type #=> String, one of ["time", "data-scanned"]
    #   resp.data.amount #=> Integer
    #   resp.data.period #=> String, one of ["daily", "weekly", "monthly"]
    #   resp.data.breach_action #=> String, one of ["log", "emit-metric", "disable"]
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #
    def create_usage_limit(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateUsageLimitInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateUsageLimitInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateUsageLimit
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UsageLimitAlreadyExistsFault, Errors::InvalidUsageLimitFault, Errors::UnsupportedOperationFault, Errors::InvalidClusterStateFault, Errors::TagLimitExceededFault, Errors::ClusterNotFoundFault, Errors::LimitExceededFault]),
        data_parser: Parsers::CreateUsageLimit
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateUsageLimit,
        stubs: @stubs,
        params_class: Params::CreateUsageLimitOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_usage_limit
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>From a datashare producer account, removes authorization from the specified datashare. </p>
    #
    # @param [Hash] params
    #   See {Types::DeauthorizeDataShareInput}.
    #
    # @option params [String] :data_share_arn
    #   <p>The Amazon Resource Name (ARN) of the datashare to remove authorization from.</p>
    #
    # @option params [String] :consumer_identifier
    #   <p>The identifier of the data consumer that is to have authorization removed from the datashare.
    #               This identifier is an Amazon Web Services account ID or a keyword, such as ADX.</p>
    #
    # @return [Types::DeauthorizeDataShareOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deauthorize_data_share(
    #     data_share_arn: 'DataShareArn', # required
    #     consumer_identifier: 'ConsumerIdentifier' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeauthorizeDataShareOutput
    #   resp.data.data_share_arn #=> String
    #   resp.data.producer_arn #=> String
    #   resp.data.allow_publicly_accessible_consumers #=> Boolean
    #   resp.data.data_share_associations #=> Array<DataShareAssociation>
    #   resp.data.data_share_associations[0] #=> Types::DataShareAssociation
    #   resp.data.data_share_associations[0].consumer_identifier #=> String
    #   resp.data.data_share_associations[0].status #=> String, one of ["ACTIVE", "PENDING_AUTHORIZATION", "AUTHORIZED", "DEAUTHORIZED", "REJECTED", "AVAILABLE"]
    #   resp.data.data_share_associations[0].consumer_region #=> String
    #   resp.data.data_share_associations[0].created_date #=> Time
    #   resp.data.data_share_associations[0].status_change_date #=> Time
    #   resp.data.managed_by #=> String
    #
    def deauthorize_data_share(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeauthorizeDataShareInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeauthorizeDataShareInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeauthorizeDataShare
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidDataShareFault]),
        data_parser: Parsers::DeauthorizeDataShare
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeauthorizeDataShare,
        stubs: @stubs,
        params_class: Params::DeauthorizeDataShareOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :deauthorize_data_share
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an authentication profile.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAuthenticationProfileInput}.
    #
    # @option params [String] :authentication_profile_name
    #   <p>The name of the authentication profile to delete.</p>
    #
    # @return [Types::DeleteAuthenticationProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_authentication_profile(
    #     authentication_profile_name: 'AuthenticationProfileName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAuthenticationProfileOutput
    #   resp.data.authentication_profile_name #=> String
    #
    def delete_authentication_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAuthenticationProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAuthenticationProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAuthenticationProfile
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidAuthenticationProfileRequestFault, Errors::AuthenticationProfileNotFoundFault]),
        data_parser: Parsers::DeleteAuthenticationProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAuthenticationProfile,
        stubs: @stubs,
        params_class: Params::DeleteAuthenticationProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_authentication_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a previously provisioned cluster without its final snapshot being created. A successful response from the web
    #             service indicates that the request was received correctly. Use <a>DescribeClusters</a> to monitor the status of the deletion. The delete
    #             operation cannot be canceled or reverted once submitted.
    # For more information about managing clusters, go to
    # <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html">Amazon Redshift Clusters</a>
    # in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    #         <p>If you want to shut down the cluster and retain it for future use, set
    #                 <i>SkipFinalClusterSnapshot</i> to <code>false</code> and specify a
    #             name for <i>FinalClusterSnapshotIdentifier</i>. You can later restore this
    #             snapshot to resume using the cluster. If a final cluster snapshot is requested, the
    #             status of the cluster will be "final-snapshot" while the snapshot is being taken, then
    #             it's "deleting" once Amazon Redshift begins deleting the cluster. </p>
    #         <p>
    # For more information about managing clusters, go to
    # <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html">Amazon Redshift Clusters</a>
    # in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteClusterInput}.
    #
    # @option params [String] :cluster_identifier
    #   <p>The identifier of the cluster to be deleted.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must contain lowercase characters.</p>
    #               </li>
    #               <li>
    #                   <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                   <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Boolean] :skip_final_cluster_snapshot
    #   <p>Determines whether a final snapshot of the cluster is created before Amazon Redshift
    #               deletes the cluster. If <code>true</code>, a final cluster snapshot is not created. If
    #                   <code>false</code>, a final cluster snapshot is created before the cluster is
    #               deleted. </p>
    #           <note>
    #               <p>The <i>FinalClusterSnapshotIdentifier</i> parameter must be
    #                   specified if <i>SkipFinalClusterSnapshot</i> is
    #                   <code>false</code>.</p>
    #           </note>
    #           <p>Default: <code>false</code>
    #           </p>
    #
    # @option params [String] :final_cluster_snapshot_identifier
    #   <p>The identifier of the final snapshot that is to be created immediately before
    #               deleting the cluster. If this parameter is provided,
    #                   <i>SkipFinalClusterSnapshot</i> must be <code>false</code>. </p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be 1 to 255 alphanumeric characters.</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                   <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Integer] :final_cluster_snapshot_retention_period
    #   <p>The number of days that a manual snapshot is retained. If the value is -1, the manual
    #               snapshot is retained indefinitely.</p>
    #           <p>The value must be either -1 or an integer between 1 and 3,653.</p>
    #           <p>The default value is -1.</p>
    #
    # @return [Types::DeleteClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cluster(
    #     cluster_identifier: 'ClusterIdentifier', # required
    #     skip_final_cluster_snapshot: false,
    #     final_cluster_snapshot_identifier: 'FinalClusterSnapshotIdentifier',
    #     final_cluster_snapshot_retention_period: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteClusterOutput
    #   resp.data.cluster #=> Types::Cluster
    #   resp.data.cluster.cluster_identifier #=> String
    #   resp.data.cluster.node_type #=> String
    #   resp.data.cluster.cluster_status #=> String
    #   resp.data.cluster.cluster_availability_status #=> String
    #   resp.data.cluster.modify_status #=> String
    #   resp.data.cluster.master_username #=> String
    #   resp.data.cluster.db_name #=> String
    #   resp.data.cluster.endpoint #=> Types::Endpoint
    #   resp.data.cluster.endpoint.address #=> String
    #   resp.data.cluster.endpoint.port #=> Integer
    #   resp.data.cluster.endpoint.vpc_endpoints #=> Array<VpcEndpoint>
    #   resp.data.cluster.endpoint.vpc_endpoints[0] #=> Types::VpcEndpoint
    #   resp.data.cluster.endpoint.vpc_endpoints[0].vpc_endpoint_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].vpc_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces #=> Array<NetworkInterface>
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0] #=> Types::NetworkInterface
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].network_interface_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].subnet_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].private_ip_address #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].availability_zone #=> String
    #   resp.data.cluster.cluster_create_time #=> Time
    #   resp.data.cluster.automated_snapshot_retention_period #=> Integer
    #   resp.data.cluster.manual_snapshot_retention_period #=> Integer
    #   resp.data.cluster.cluster_security_groups #=> Array<ClusterSecurityGroupMembership>
    #   resp.data.cluster.cluster_security_groups[0] #=> Types::ClusterSecurityGroupMembership
    #   resp.data.cluster.cluster_security_groups[0].cluster_security_group_name #=> String
    #   resp.data.cluster.cluster_security_groups[0].status #=> String
    #   resp.data.cluster.vpc_security_groups #=> Array<VpcSecurityGroupMembership>
    #   resp.data.cluster.vpc_security_groups[0] #=> Types::VpcSecurityGroupMembership
    #   resp.data.cluster.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.data.cluster.vpc_security_groups[0].status #=> String
    #   resp.data.cluster.cluster_parameter_groups #=> Array<ClusterParameterGroupStatus>
    #   resp.data.cluster.cluster_parameter_groups[0] #=> Types::ClusterParameterGroupStatus
    #   resp.data.cluster.cluster_parameter_groups[0].parameter_group_name #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].parameter_apply_status #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list #=> Array<ClusterParameterStatus>
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0] #=> Types::ClusterParameterStatus
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_name #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_status #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_error_description #=> String
    #   resp.data.cluster.cluster_subnet_group_name #=> String
    #   resp.data.cluster.vpc_id #=> String
    #   resp.data.cluster.availability_zone #=> String
    #   resp.data.cluster.preferred_maintenance_window #=> String
    #   resp.data.cluster.pending_modified_values #=> Types::PendingModifiedValues
    #   resp.data.cluster.pending_modified_values.master_user_password #=> String
    #   resp.data.cluster.pending_modified_values.node_type #=> String
    #   resp.data.cluster.pending_modified_values.number_of_nodes #=> Integer
    #   resp.data.cluster.pending_modified_values.cluster_type #=> String
    #   resp.data.cluster.pending_modified_values.cluster_version #=> String
    #   resp.data.cluster.pending_modified_values.automated_snapshot_retention_period #=> Integer
    #   resp.data.cluster.pending_modified_values.cluster_identifier #=> String
    #   resp.data.cluster.pending_modified_values.publicly_accessible #=> Boolean
    #   resp.data.cluster.pending_modified_values.enhanced_vpc_routing #=> Boolean
    #   resp.data.cluster.pending_modified_values.maintenance_track_name #=> String
    #   resp.data.cluster.pending_modified_values.encryption_type #=> String
    #   resp.data.cluster.cluster_version #=> String
    #   resp.data.cluster.allow_version_upgrade #=> Boolean
    #   resp.data.cluster.number_of_nodes #=> Integer
    #   resp.data.cluster.publicly_accessible #=> Boolean
    #   resp.data.cluster.encrypted #=> Boolean
    #   resp.data.cluster.restore_status #=> Types::RestoreStatus
    #   resp.data.cluster.restore_status.status #=> String
    #   resp.data.cluster.restore_status.current_restore_rate_in_mega_bytes_per_second #=> Float
    #   resp.data.cluster.restore_status.snapshot_size_in_mega_bytes #=> Integer
    #   resp.data.cluster.restore_status.progress_in_mega_bytes #=> Integer
    #   resp.data.cluster.restore_status.elapsed_time_in_seconds #=> Integer
    #   resp.data.cluster.restore_status.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.data.cluster.data_transfer_progress #=> Types::DataTransferProgress
    #   resp.data.cluster.data_transfer_progress.status #=> String
    #   resp.data.cluster.data_transfer_progress.current_rate_in_mega_bytes_per_second #=> Float
    #   resp.data.cluster.data_transfer_progress.total_data_in_mega_bytes #=> Integer
    #   resp.data.cluster.data_transfer_progress.data_transferred_in_mega_bytes #=> Integer
    #   resp.data.cluster.data_transfer_progress.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.data.cluster.data_transfer_progress.elapsed_time_in_seconds #=> Integer
    #   resp.data.cluster.hsm_status #=> Types::HsmStatus
    #   resp.data.cluster.hsm_status.hsm_client_certificate_identifier #=> String
    #   resp.data.cluster.hsm_status.hsm_configuration_identifier #=> String
    #   resp.data.cluster.hsm_status.status #=> String
    #   resp.data.cluster.cluster_snapshot_copy_status #=> Types::ClusterSnapshotCopyStatus
    #   resp.data.cluster.cluster_snapshot_copy_status.destination_region #=> String
    #   resp.data.cluster.cluster_snapshot_copy_status.retention_period #=> Integer
    #   resp.data.cluster.cluster_snapshot_copy_status.manual_snapshot_retention_period #=> Integer
    #   resp.data.cluster.cluster_snapshot_copy_status.snapshot_copy_grant_name #=> String
    #   resp.data.cluster.cluster_public_key #=> String
    #   resp.data.cluster.cluster_nodes #=> Array<ClusterNode>
    #   resp.data.cluster.cluster_nodes[0] #=> Types::ClusterNode
    #   resp.data.cluster.cluster_nodes[0].node_role #=> String
    #   resp.data.cluster.cluster_nodes[0].private_ip_address #=> String
    #   resp.data.cluster.cluster_nodes[0].public_ip_address #=> String
    #   resp.data.cluster.elastic_ip_status #=> Types::ElasticIpStatus
    #   resp.data.cluster.elastic_ip_status.elastic_ip #=> String
    #   resp.data.cluster.elastic_ip_status.status #=> String
    #   resp.data.cluster.cluster_revision_number #=> String
    #   resp.data.cluster.tags #=> Array<Tag>
    #   resp.data.cluster.tags[0] #=> Types::Tag
    #   resp.data.cluster.tags[0].key #=> String
    #   resp.data.cluster.tags[0].value #=> String
    #   resp.data.cluster.kms_key_id #=> String
    #   resp.data.cluster.enhanced_vpc_routing #=> Boolean
    #   resp.data.cluster.iam_roles #=> Array<ClusterIamRole>
    #   resp.data.cluster.iam_roles[0] #=> Types::ClusterIamRole
    #   resp.data.cluster.iam_roles[0].iam_role_arn #=> String
    #   resp.data.cluster.iam_roles[0].apply_status #=> String
    #   resp.data.cluster.pending_actions #=> Array<String>
    #   resp.data.cluster.pending_actions[0] #=> String
    #   resp.data.cluster.maintenance_track_name #=> String
    #   resp.data.cluster.elastic_resize_number_of_node_options #=> String
    #   resp.data.cluster.deferred_maintenance_windows #=> Array<DeferredMaintenanceWindow>
    #   resp.data.cluster.deferred_maintenance_windows[0] #=> Types::DeferredMaintenanceWindow
    #   resp.data.cluster.deferred_maintenance_windows[0].defer_maintenance_identifier #=> String
    #   resp.data.cluster.deferred_maintenance_windows[0].defer_maintenance_start_time #=> Time
    #   resp.data.cluster.deferred_maintenance_windows[0].defer_maintenance_end_time #=> Time
    #   resp.data.cluster.snapshot_schedule_identifier #=> String
    #   resp.data.cluster.snapshot_schedule_state #=> String, one of ["MODIFYING", "ACTIVE", "FAILED"]
    #   resp.data.cluster.expected_next_snapshot_schedule_time #=> Time
    #   resp.data.cluster.expected_next_snapshot_schedule_time_status #=> String
    #   resp.data.cluster.next_maintenance_window_start_time #=> Time
    #   resp.data.cluster.resize_info #=> Types::ResizeInfo
    #   resp.data.cluster.resize_info.resize_type #=> String
    #   resp.data.cluster.resize_info.allow_cancel_resize #=> Boolean
    #   resp.data.cluster.availability_zone_relocation_status #=> String
    #   resp.data.cluster.cluster_namespace_arn #=> String
    #   resp.data.cluster.total_storage_capacity_in_mega_bytes #=> Integer
    #   resp.data.cluster.aqua_configuration #=> Types::AquaConfiguration
    #   resp.data.cluster.aqua_configuration.aqua_status #=> String, one of ["enabled", "disabled", "applying"]
    #   resp.data.cluster.aqua_configuration.aqua_configuration_status #=> String, one of ["enabled", "disabled", "auto"]
    #   resp.data.cluster.default_iam_role_arn #=> String
    #   resp.data.cluster.reserved_node_exchange_status #=> Types::ReservedNodeExchangeStatus
    #   resp.data.cluster.reserved_node_exchange_status.reserved_node_exchange_request_id #=> String
    #   resp.data.cluster.reserved_node_exchange_status.status #=> String, one of ["REQUESTED", "PENDING", "IN_PROGRESS", "RETRYING", "SUCCEEDED", "FAILED"]
    #   resp.data.cluster.reserved_node_exchange_status.request_time #=> Time
    #   resp.data.cluster.reserved_node_exchange_status.source_reserved_node_id #=> String
    #   resp.data.cluster.reserved_node_exchange_status.source_reserved_node_type #=> String
    #   resp.data.cluster.reserved_node_exchange_status.source_reserved_node_count #=> Integer
    #   resp.data.cluster.reserved_node_exchange_status.target_reserved_node_offering_id #=> String
    #   resp.data.cluster.reserved_node_exchange_status.target_reserved_node_type #=> String
    #   resp.data.cluster.reserved_node_exchange_status.target_reserved_node_count #=> Integer
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClusterSnapshotAlreadyExistsFault, Errors::InvalidClusterStateFault, Errors::ClusterSnapshotQuotaExceededFault, Errors::InvalidRetentionPeriodFault, Errors::ClusterNotFoundFault]),
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

    # <p>Deletes a specified Amazon Redshift parameter group.</p>
    #         <note>
    #             <p>You cannot delete a parameter group if it is associated with a
    #                 cluster.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteClusterParameterGroupInput}.
    #
    # @option params [String] :parameter_group_name
    #   <p>The name of the parameter group to be deleted.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be the name of an existing cluster parameter group.</p>
    #               </li>
    #               <li>
    #                   <p>Cannot delete a default cluster parameter group.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::DeleteClusterParameterGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cluster_parameter_group(
    #     parameter_group_name: 'ParameterGroupName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteClusterParameterGroupOutput
    #
    def delete_cluster_parameter_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteClusterParameterGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteClusterParameterGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteClusterParameterGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClusterParameterGroupNotFoundFault, Errors::InvalidClusterParameterGroupStateFault]),
        data_parser: Parsers::DeleteClusterParameterGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteClusterParameterGroup,
        stubs: @stubs,
        params_class: Params::DeleteClusterParameterGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_cluster_parameter_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an Amazon Redshift security group.</p>
    #         <note>
    #             <p>You cannot delete a security group that is associated with any clusters. You
    #                 cannot delete the default security group.</p>
    #         </note>
    #         <p>
    # For information about managing security groups, go to
    # <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html">Amazon Redshift Cluster Security Groups</a> in the
    # <i>Amazon Redshift Cluster Management Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteClusterSecurityGroupInput}.
    #
    # @option params [String] :cluster_security_group_name
    #   <p>The name of the cluster security group to be deleted.</p>
    #
    # @return [Types::DeleteClusterSecurityGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cluster_security_group(
    #     cluster_security_group_name: 'ClusterSecurityGroupName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteClusterSecurityGroupOutput
    #
    def delete_cluster_security_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteClusterSecurityGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteClusterSecurityGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteClusterSecurityGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidClusterSecurityGroupStateFault, Errors::ClusterSecurityGroupNotFoundFault]),
        data_parser: Parsers::DeleteClusterSecurityGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteClusterSecurityGroup,
        stubs: @stubs,
        params_class: Params::DeleteClusterSecurityGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_cluster_security_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified manual snapshot. The snapshot must be in the
    #                 <code>available</code> state, with no other users authorized to access the snapshot. </p>
    #         <p>Unlike automated snapshots, manual snapshots are retained even after you delete
    #             your cluster. Amazon Redshift does not delete your manual snapshots. You must delete manual
    #             snapshot explicitly to avoid getting charged. If other accounts are authorized to access
    #             the snapshot, you must revoke all of the authorizations before you can delete the
    #             snapshot.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteClusterSnapshotInput}.
    #
    # @option params [String] :snapshot_identifier
    #   <p>The unique identifier of the manual snapshot to be deleted.</p>
    #           <p>Constraints: Must be the name of an existing snapshot that is in the
    #                   <code>available</code>, <code>failed</code>, or <code>cancelled</code>
    #               state.</p>
    #
    # @option params [String] :snapshot_cluster_identifier
    #   <p>The unique identifier of the cluster the snapshot was created from. This parameter
    #               is required if your IAM user has a policy containing a snapshot resource element that
    #               specifies anything other than * for the cluster name.</p>
    #           <p>Constraints: Must be the name of valid cluster.</p>
    #
    # @return [Types::DeleteClusterSnapshotOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cluster_snapshot(
    #     snapshot_identifier: 'SnapshotIdentifier', # required
    #     snapshot_cluster_identifier: 'SnapshotClusterIdentifier'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteClusterSnapshotOutput
    #   resp.data.snapshot #=> Types::Snapshot
    #   resp.data.snapshot.snapshot_identifier #=> String
    #   resp.data.snapshot.cluster_identifier #=> String
    #   resp.data.snapshot.snapshot_create_time #=> Time
    #   resp.data.snapshot.status #=> String
    #   resp.data.snapshot.port #=> Integer
    #   resp.data.snapshot.availability_zone #=> String
    #   resp.data.snapshot.cluster_create_time #=> Time
    #   resp.data.snapshot.master_username #=> String
    #   resp.data.snapshot.cluster_version #=> String
    #   resp.data.snapshot.engine_full_version #=> String
    #   resp.data.snapshot.snapshot_type #=> String
    #   resp.data.snapshot.node_type #=> String
    #   resp.data.snapshot.number_of_nodes #=> Integer
    #   resp.data.snapshot.db_name #=> String
    #   resp.data.snapshot.vpc_id #=> String
    #   resp.data.snapshot.encrypted #=> Boolean
    #   resp.data.snapshot.kms_key_id #=> String
    #   resp.data.snapshot.encrypted_with_hsm #=> Boolean
    #   resp.data.snapshot.accounts_with_restore_access #=> Array<AccountWithRestoreAccess>
    #   resp.data.snapshot.accounts_with_restore_access[0] #=> Types::AccountWithRestoreAccess
    #   resp.data.snapshot.accounts_with_restore_access[0].account_id #=> String
    #   resp.data.snapshot.accounts_with_restore_access[0].account_alias #=> String
    #   resp.data.snapshot.owner_account #=> String
    #   resp.data.snapshot.total_backup_size_in_mega_bytes #=> Float
    #   resp.data.snapshot.actual_incremental_backup_size_in_mega_bytes #=> Float
    #   resp.data.snapshot.backup_progress_in_mega_bytes #=> Float
    #   resp.data.snapshot.current_backup_rate_in_mega_bytes_per_second #=> Float
    #   resp.data.snapshot.estimated_seconds_to_completion #=> Integer
    #   resp.data.snapshot.elapsed_time_in_seconds #=> Integer
    #   resp.data.snapshot.source_region #=> String
    #   resp.data.snapshot.tags #=> Array<Tag>
    #   resp.data.snapshot.tags[0] #=> Types::Tag
    #   resp.data.snapshot.tags[0].key #=> String
    #   resp.data.snapshot.tags[0].value #=> String
    #   resp.data.snapshot.restorable_node_types #=> Array<String>
    #   resp.data.snapshot.restorable_node_types[0] #=> String
    #   resp.data.snapshot.enhanced_vpc_routing #=> Boolean
    #   resp.data.snapshot.maintenance_track_name #=> String
    #   resp.data.snapshot.manual_snapshot_retention_period #=> Integer
    #   resp.data.snapshot.manual_snapshot_remaining_days #=> Integer
    #   resp.data.snapshot.snapshot_retention_start_time #=> Time
    #
    def delete_cluster_snapshot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteClusterSnapshotInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteClusterSnapshotInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteClusterSnapshot
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClusterSnapshotNotFoundFault, Errors::InvalidClusterSnapshotStateFault]),
        data_parser: Parsers::DeleteClusterSnapshot
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteClusterSnapshot,
        stubs: @stubs,
        params_class: Params::DeleteClusterSnapshotOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_cluster_snapshot
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified cluster subnet group.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteClusterSubnetGroupInput}.
    #
    # @option params [String] :cluster_subnet_group_name
    #   <p>The name of the cluster subnet group name to be deleted.</p>
    #
    # @return [Types::DeleteClusterSubnetGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cluster_subnet_group(
    #     cluster_subnet_group_name: 'ClusterSubnetGroupName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteClusterSubnetGroupOutput
    #
    def delete_cluster_subnet_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteClusterSubnetGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteClusterSubnetGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteClusterSubnetGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClusterSubnetGroupNotFoundFault, Errors::InvalidClusterSubnetStateFault, Errors::InvalidClusterSubnetGroupStateFault]),
        data_parser: Parsers::DeleteClusterSubnetGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteClusterSubnetGroup,
        stubs: @stubs,
        params_class: Params::DeleteClusterSubnetGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_cluster_subnet_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a Redshift-managed VPC endpoint.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteEndpointAccessInput}.
    #
    # @option params [String] :endpoint_name
    #   <p>The Redshift-managed VPC endpoint to delete.</p>
    #
    # @return [Types::DeleteEndpointAccessOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_endpoint_access(
    #     endpoint_name: 'EndpointName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteEndpointAccessOutput
    #   resp.data.cluster_identifier #=> String
    #   resp.data.resource_owner #=> String
    #   resp.data.subnet_group_name #=> String
    #   resp.data.endpoint_status #=> String
    #   resp.data.endpoint_name #=> String
    #   resp.data.endpoint_create_time #=> Time
    #   resp.data.port #=> Integer
    #   resp.data.address #=> String
    #   resp.data.vpc_security_groups #=> Array<VpcSecurityGroupMembership>
    #   resp.data.vpc_security_groups[0] #=> Types::VpcSecurityGroupMembership
    #   resp.data.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.data.vpc_security_groups[0].status #=> String
    #   resp.data.vpc_endpoint #=> Types::VpcEndpoint
    #   resp.data.vpc_endpoint.vpc_endpoint_id #=> String
    #   resp.data.vpc_endpoint.vpc_id #=> String
    #   resp.data.vpc_endpoint.network_interfaces #=> Array<NetworkInterface>
    #   resp.data.vpc_endpoint.network_interfaces[0] #=> Types::NetworkInterface
    #   resp.data.vpc_endpoint.network_interfaces[0].network_interface_id #=> String
    #   resp.data.vpc_endpoint.network_interfaces[0].subnet_id #=> String
    #   resp.data.vpc_endpoint.network_interfaces[0].private_ip_address #=> String
    #   resp.data.vpc_endpoint.network_interfaces[0].availability_zone #=> String
    #
    def delete_endpoint_access(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteEndpointAccessInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteEndpointAccessInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteEndpointAccess
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidClusterStateFault, Errors::InvalidClusterSecurityGroupStateFault, Errors::ClusterNotFoundFault, Errors::EndpointNotFoundFault, Errors::InvalidEndpointStateFault]),
        data_parser: Parsers::DeleteEndpointAccess
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteEndpointAccess,
        stubs: @stubs,
        params_class: Params::DeleteEndpointAccessOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_endpoint_access
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an Amazon Redshift event notification subscription.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteEventSubscriptionInput}.
    #
    # @option params [String] :subscription_name
    #   <p>The name of the Amazon Redshift event notification subscription to be deleted.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidSubscriptionStateFault, Errors::SubscriptionNotFoundFault]),
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

    # <p>Deletes the specified HSM client certificate.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteHsmClientCertificateInput}.
    #
    # @option params [String] :hsm_client_certificate_identifier
    #   <p>The identifier of the HSM client certificate to be deleted.</p>
    #
    # @return [Types::DeleteHsmClientCertificateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_hsm_client_certificate(
    #     hsm_client_certificate_identifier: 'HsmClientCertificateIdentifier' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteHsmClientCertificateOutput
    #
    def delete_hsm_client_certificate(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteHsmClientCertificateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteHsmClientCertificateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteHsmClientCertificate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::HsmClientCertificateNotFoundFault, Errors::InvalidHsmClientCertificateStateFault]),
        data_parser: Parsers::DeleteHsmClientCertificate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteHsmClientCertificate,
        stubs: @stubs,
        params_class: Params::DeleteHsmClientCertificateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_hsm_client_certificate
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified Amazon Redshift HSM configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteHsmConfigurationInput}.
    #
    # @option params [String] :hsm_configuration_identifier
    #   <p>The identifier of the Amazon Redshift HSM configuration to be deleted.</p>
    #
    # @return [Types::DeleteHsmConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_hsm_configuration(
    #     hsm_configuration_identifier: 'HsmConfigurationIdentifier' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteHsmConfigurationOutput
    #
    def delete_hsm_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteHsmConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteHsmConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteHsmConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::HsmConfigurationNotFoundFault, Errors::InvalidHsmConfigurationStateFault]),
        data_parser: Parsers::DeleteHsmConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteHsmConfiguration,
        stubs: @stubs,
        params_class: Params::DeleteHsmConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_hsm_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a partner integration from a cluster. Data can still flow to the cluster until the integration is deleted at the partner's website.</p>
    #
    # @param [Hash] params
    #   See {Types::DeletePartnerInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID that owns the cluster.</p>
    #
    # @option params [String] :cluster_identifier
    #   <p>The cluster identifier of the cluster that receives data from the partner.</p>
    #
    # @option params [String] :database_name
    #   <p>The name of the database that receives data from the partner.</p>
    #
    # @option params [String] :partner_name
    #   <p>The name of the partner that is authorized to send data.</p>
    #
    # @return [Types::DeletePartnerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_partner(
    #     account_id: 'AccountId', # required
    #     cluster_identifier: 'ClusterIdentifier', # required
    #     database_name: 'DatabaseName', # required
    #     partner_name: 'PartnerName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeletePartnerOutput
    #   resp.data.database_name #=> String
    #   resp.data.partner_name #=> String
    #
    def delete_partner(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeletePartnerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeletePartnerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeletePartner
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::PartnerNotFoundFault, Errors::ClusterNotFoundFault, Errors::UnauthorizedPartnerIntegrationFault]),
        data_parser: Parsers::DeletePartner
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeletePartner,
        stubs: @stubs,
        params_class: Params::DeletePartnerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_partner
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a scheduled action.
    #              </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteScheduledActionInput}.
    #
    # @option params [String] :scheduled_action_name
    #   <p>The name of the scheduled action to delete. </p>
    #
    # @return [Types::DeleteScheduledActionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_scheduled_action(
    #     scheduled_action_name: 'ScheduledActionName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteScheduledActionOutput
    #
    def delete_scheduled_action(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteScheduledActionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteScheduledActionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteScheduledAction
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ScheduledActionNotFoundFault, Errors::UnauthorizedOperation]),
        data_parser: Parsers::DeleteScheduledAction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteScheduledAction,
        stubs: @stubs,
        params_class: Params::DeleteScheduledActionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_scheduled_action
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified snapshot copy grant.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteSnapshotCopyGrantInput}.
    #
    # @option params [String] :snapshot_copy_grant_name
    #   <p>The name of the snapshot copy grant to delete.</p>
    #
    # @return [Types::DeleteSnapshotCopyGrantOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_snapshot_copy_grant(
    #     snapshot_copy_grant_name: 'SnapshotCopyGrantName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteSnapshotCopyGrantOutput
    #
    def delete_snapshot_copy_grant(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteSnapshotCopyGrantInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteSnapshotCopyGrantInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteSnapshotCopyGrant
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::SnapshotCopyGrantNotFoundFault, Errors::InvalidSnapshotCopyGrantStateFault]),
        data_parser: Parsers::DeleteSnapshotCopyGrant
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteSnapshotCopyGrant,
        stubs: @stubs,
        params_class: Params::DeleteSnapshotCopyGrantOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_snapshot_copy_grant
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a snapshot schedule.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteSnapshotScheduleInput}.
    #
    # @option params [String] :schedule_identifier
    #   <p>A unique identifier of the snapshot schedule to delete.</p>
    #
    # @return [Types::DeleteSnapshotScheduleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_snapshot_schedule(
    #     schedule_identifier: 'ScheduleIdentifier' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteSnapshotScheduleOutput
    #
    def delete_snapshot_schedule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteSnapshotScheduleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteSnapshotScheduleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteSnapshotSchedule
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::SnapshotScheduleNotFoundFault, Errors::InvalidClusterSnapshotScheduleStateFault]),
        data_parser: Parsers::DeleteSnapshotSchedule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteSnapshotSchedule,
        stubs: @stubs,
        params_class: Params::DeleteSnapshotScheduleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_snapshot_schedule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes tags from a resource. You must provide the ARN of the resource
    #             from which you want to delete the tag or tags.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteTagsInput}.
    #
    # @option params [String] :resource_name
    #   <p>The Amazon Resource Name (ARN) from which you want to remove the tag or tags. For
    #               example, <code>arn:aws:redshift:us-east-2:123456789:cluster:t1</code>. </p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The tag key that you want to delete.</p>
    #
    # @return [Types::DeleteTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_tags(
    #     resource_name: 'ResourceName', # required
    #     tag_keys: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteTagsOutput
    #
    def delete_tags(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteTagsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteTagsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteTags
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundFault, Errors::InvalidTagFault]),
        data_parser: Parsers::DeleteTags
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteTags,
        stubs: @stubs,
        params_class: Params::DeleteTagsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_tags
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a usage limit from a cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteUsageLimitInput}.
    #
    # @option params [String] :usage_limit_id
    #   <p>The identifier of the usage limit to delete.</p>
    #
    # @return [Types::DeleteUsageLimitOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_usage_limit(
    #     usage_limit_id: 'UsageLimitId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteUsageLimitOutput
    #
    def delete_usage_limit(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteUsageLimitInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteUsageLimitInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteUsageLimit
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedOperationFault, Errors::UsageLimitNotFoundFault]),
        data_parser: Parsers::DeleteUsageLimit
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteUsageLimit,
        stubs: @stubs,
        params_class: Params::DeleteUsageLimitOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_usage_limit
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of attributes attached to an account</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAccountAttributesInput}.
    #
    # @option params [Array<String>] :attribute_names
    #   <p>A list of attribute names.</p>
    #
    # @return [Types::DescribeAccountAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_account_attributes(
    #     attribute_names: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAccountAttributesOutput
    #   resp.data.account_attributes #=> Array<AccountAttribute>
    #   resp.data.account_attributes[0] #=> Types::AccountAttribute
    #   resp.data.account_attributes[0].attribute_name #=> String
    #   resp.data.account_attributes[0].attribute_values #=> Array<AttributeValueTarget>
    #   resp.data.account_attributes[0].attribute_values[0] #=> Types::AttributeValueTarget
    #   resp.data.account_attributes[0].attribute_values[0].attribute_value #=> String
    #
    def describe_account_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAccountAttributesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAccountAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAccountAttributes
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
        data_parser: Parsers::DescribeAccountAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAccountAttributes,
        stubs: @stubs,
        params_class: Params::DescribeAccountAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_account_attributes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes an authentication profile.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAuthenticationProfilesInput}.
    #
    # @option params [String] :authentication_profile_name
    #   <p>The name of the authentication profile to describe. If not specified then all authentication profiles owned by the account are listed.</p>
    #
    # @return [Types::DescribeAuthenticationProfilesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_authentication_profiles(
    #     authentication_profile_name: 'AuthenticationProfileName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAuthenticationProfilesOutput
    #   resp.data.authentication_profiles #=> Array<AuthenticationProfile>
    #   resp.data.authentication_profiles[0] #=> Types::AuthenticationProfile
    #   resp.data.authentication_profiles[0].authentication_profile_name #=> String
    #   resp.data.authentication_profiles[0].authentication_profile_content #=> String
    #
    def describe_authentication_profiles(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAuthenticationProfilesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAuthenticationProfilesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAuthenticationProfiles
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidAuthenticationProfileRequestFault, Errors::AuthenticationProfileNotFoundFault]),
        data_parser: Parsers::DescribeAuthenticationProfiles
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAuthenticationProfiles,
        stubs: @stubs,
        params_class: Params::DescribeAuthenticationProfilesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_authentication_profiles
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns an array of <code>ClusterDbRevision</code> objects.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeClusterDbRevisionsInput}.
    #
    # @option params [String] :cluster_identifier
    #   <p>A unique identifier for a cluster whose <code>ClusterDbRevisions</code> you are
    #               requesting. This parameter is case sensitive. All clusters defined for an account are
    #               returned by default.</p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified MaxRecords value, a value is returned
    #               in the <code>marker</code> field of the response. You can retrieve the next set of
    #               response records by providing the returned <code>marker</code> value in the
    #                   <code>marker</code> parameter and retrying the request. </p>
    #           <p>Default: 100</p>
    #           <p>Constraints: minimum 20, maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p>An optional parameter that specifies the starting point for returning a set of
    #               response records. When the results of a <code>DescribeClusterDbRevisions</code> request
    #               exceed the value specified in <code>MaxRecords</code>, Amazon Redshift returns a value
    #               in the <code>marker</code> field of the response. You can retrieve the next set of
    #               response records by providing the returned <code>marker</code> value in the
    #                   <code>marker</code> parameter and retrying the request. </p>
    #           <p>Constraints: You can specify either the <code>ClusterIdentifier</code> parameter, or
    #               the <code>marker</code> parameter, but not both.</p>
    #
    # @return [Types::DescribeClusterDbRevisionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_cluster_db_revisions(
    #     cluster_identifier: 'ClusterIdentifier',
    #     max_records: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeClusterDbRevisionsOutput
    #   resp.data.marker #=> String
    #   resp.data.cluster_db_revisions #=> Array<ClusterDbRevision>
    #   resp.data.cluster_db_revisions[0] #=> Types::ClusterDbRevision
    #   resp.data.cluster_db_revisions[0].cluster_identifier #=> String
    #   resp.data.cluster_db_revisions[0].current_database_revision #=> String
    #   resp.data.cluster_db_revisions[0].database_revision_release_date #=> Time
    #   resp.data.cluster_db_revisions[0].revision_targets #=> Array<RevisionTarget>
    #   resp.data.cluster_db_revisions[0].revision_targets[0] #=> Types::RevisionTarget
    #   resp.data.cluster_db_revisions[0].revision_targets[0].database_revision #=> String
    #   resp.data.cluster_db_revisions[0].revision_targets[0].description #=> String
    #   resp.data.cluster_db_revisions[0].revision_targets[0].database_revision_release_date #=> Time
    #
    def describe_cluster_db_revisions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeClusterDbRevisionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeClusterDbRevisionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeClusterDbRevisions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidClusterStateFault, Errors::ClusterNotFoundFault]),
        data_parser: Parsers::DescribeClusterDbRevisions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeClusterDbRevisions,
        stubs: @stubs,
        params_class: Params::DescribeClusterDbRevisionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_cluster_db_revisions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of Amazon Redshift parameter groups, including parameter groups you
    #             created and the default parameter group. For each parameter group, the response includes
    #             the parameter group name, description, and parameter group family name. You can
    #             optionally specify a name to retrieve the description of a specific parameter
    #             group.</p>
    #         <p>
    # For more information about parameters and parameter groups, go to
    # <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html">Amazon Redshift Parameter Groups</a>
    # in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    #         <p>If you specify both tag keys and tag values in the same request, Amazon Redshift returns
    #             all parameter groups that match any combination of the specified keys and values. For
    #             example, if you have <code>owner</code> and <code>environment</code> for tag keys, and
    #                 <code>admin</code> and <code>test</code> for tag values, all parameter groups that
    #             have any combination of those values are returned.</p>
    #         <p>If both tag keys and values are omitted from the request, parameter groups are
    #             returned regardless of whether they have tag keys or values associated with
    #             them.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeClusterParameterGroupsInput}.
    #
    # @option params [String] :parameter_group_name
    #   <p>The name of a specific parameter group for which to return details. By default,
    #               details about all parameter groups and the default parameter group are
    #               returned.</p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #           <p>Default: <code>100</code>
    #           </p>
    #           <p>Constraints: minimum 20, maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeClusterParameterGroups</a> request
    #               exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #                   <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>A tag key or keys for which you want to return all matching cluster parameter
    #               groups that are associated with the specified key or keys. For example, suppose that you
    #               have parameter groups that are tagged with keys called <code>owner</code> and
    #                   <code>environment</code>. If you specify both of these tag keys in the request,
    #               Amazon Redshift returns a response with the parameter groups that have either or both of these
    #               tag keys associated with them.</p>
    #
    # @option params [Array<String>] :tag_values
    #   <p>A tag value or values for which you want to return all matching cluster parameter
    #               groups that are associated with the specified tag value or values. For example, suppose
    #               that you have parameter groups that are tagged with values called <code>admin</code> and
    #                   <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift
    #               returns a response with the parameter groups that have either or both of these tag
    #               values associated with them.</p>
    #
    # @return [Types::DescribeClusterParameterGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_cluster_parameter_groups(
    #     parameter_group_name: 'ParameterGroupName',
    #     max_records: 1,
    #     marker: 'Marker',
    #     tag_keys: [
    #       'member'
    #     ],
    #     tag_values: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeClusterParameterGroupsOutput
    #   resp.data.marker #=> String
    #   resp.data.parameter_groups #=> Array<ClusterParameterGroup>
    #   resp.data.parameter_groups[0] #=> Types::ClusterParameterGroup
    #   resp.data.parameter_groups[0].parameter_group_name #=> String
    #   resp.data.parameter_groups[0].parameter_group_family #=> String
    #   resp.data.parameter_groups[0].description #=> String
    #   resp.data.parameter_groups[0].tags #=> Array<Tag>
    #   resp.data.parameter_groups[0].tags[0] #=> Types::Tag
    #   resp.data.parameter_groups[0].tags[0].key #=> String
    #   resp.data.parameter_groups[0].tags[0].value #=> String
    #
    def describe_cluster_parameter_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeClusterParameterGroupsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeClusterParameterGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeClusterParameterGroups
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClusterParameterGroupNotFoundFault, Errors::InvalidTagFault]),
        data_parser: Parsers::DescribeClusterParameterGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeClusterParameterGroups,
        stubs: @stubs,
        params_class: Params::DescribeClusterParameterGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_cluster_parameter_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a detailed list of parameters contained within the specified Amazon Redshift
    #             parameter group. For each parameter the response includes information such as parameter
    #             name, description, data type, value, whether the parameter value is modifiable, and so
    #             on.</p>
    #         <p>You can specify <i>source</i> filter to retrieve parameters of only
    #             specific type. For example, to retrieve parameters that were modified by a user action
    #             such as from <a>ModifyClusterParameterGroup</a>, you can specify
    #                 <i>source</i> equal to <i>user</i>.</p>
    #         <p>
    # For more information about parameters and parameter groups, go to
    # <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html">Amazon Redshift Parameter Groups</a>
    # in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeClusterParametersInput}.
    #
    # @option params [String] :parameter_group_name
    #   <p>The name of a cluster parameter group for which to return details.</p>
    #
    # @option params [String] :source
    #   <p>The parameter types to return. Specify <code>user</code> to show parameters that
    #               are different form the default. Similarly, specify <code>engine-default</code> to show
    #               parameters that are the same as the default parameter group. </p>
    #           <p>Default: All parameter types returned.</p>
    #           <p>Valid Values: <code>user</code> | <code>engine-default</code>
    #           </p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #           <p>Default: <code>100</code>
    #           </p>
    #           <p>Constraints: minimum 20, maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeClusterParameters</a> request
    #               exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #                   <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    #
    # @return [Types::DescribeClusterParametersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_cluster_parameters(
    #     parameter_group_name: 'ParameterGroupName', # required
    #     source: 'Source',
    #     max_records: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeClusterParametersOutput
    #   resp.data.parameters #=> Array<Parameter>
    #   resp.data.parameters[0] #=> Types::Parameter
    #   resp.data.parameters[0].parameter_name #=> String
    #   resp.data.parameters[0].parameter_value #=> String
    #   resp.data.parameters[0].description #=> String
    #   resp.data.parameters[0].source #=> String
    #   resp.data.parameters[0].data_type #=> String
    #   resp.data.parameters[0].allowed_values #=> String
    #   resp.data.parameters[0].apply_type #=> String, one of ["static", "dynamic"]
    #   resp.data.parameters[0].is_modifiable #=> Boolean
    #   resp.data.parameters[0].minimum_engine_version #=> String
    #   resp.data.marker #=> String
    #
    def describe_cluster_parameters(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeClusterParametersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeClusterParametersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeClusterParameters
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClusterParameterGroupNotFoundFault]),
        data_parser: Parsers::DescribeClusterParameters
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeClusterParameters,
        stubs: @stubs,
        params_class: Params::DescribeClusterParametersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_cluster_parameters
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about Amazon Redshift security groups. If the name of a security
    #             group is specified, the response will contain only information about only that security
    #             group.</p>
    #         <p>
    # For information about managing security groups, go to
    # <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html">Amazon Redshift Cluster Security Groups</a> in the
    # <i>Amazon Redshift Cluster Management Guide</i>.</p>
    #         <p>If you specify both tag keys and tag values in the same request, Amazon Redshift returns
    #             all security groups that match any combination of the specified keys and values. For
    #             example, if you have <code>owner</code> and <code>environment</code> for tag keys, and
    #                 <code>admin</code> and <code>test</code> for tag values, all security groups that
    #             have any combination of those values are returned.</p>
    #         <p>If both tag keys and values are omitted from the request, security groups are
    #             returned regardless of whether they have tag keys or values associated with
    #             them.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeClusterSecurityGroupsInput}.
    #
    # @option params [String] :cluster_security_group_name
    #   <p>The name of a cluster security group for which you are requesting details. You can
    #               specify either the <b>Marker</b> parameter or a <b>ClusterSecurityGroupName</b> parameter, but not both. </p>
    #           <p> Example: <code>securitygroup1</code>
    #           </p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #           <p>Default: <code>100</code>
    #           </p>
    #           <p>Constraints: minimum 20, maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeClusterSecurityGroups</a> request
    #               exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #                   <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    #           <p>Constraints: You can specify either the <b>ClusterSecurityGroupName</b> parameter or the <b>Marker</b> parameter, but not both. </p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>A tag key or keys for which you want to return all matching cluster security groups
    #               that are associated with the specified key or keys. For example, suppose that you have
    #               security groups that are tagged with keys called <code>owner</code> and
    #                   <code>environment</code>. If you specify both of these tag keys in the request,
    #               Amazon Redshift returns a response with the security groups that have either or both of these
    #               tag keys associated with them.</p>
    #
    # @option params [Array<String>] :tag_values
    #   <p>A tag value or values for which you want to return all matching cluster security
    #               groups that are associated with the specified tag value or values. For example, suppose
    #               that you have security groups that are tagged with values called <code>admin</code> and
    #                   <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift
    #               returns a response with the security groups that have either or both of these tag values
    #               associated with them.</p>
    #
    # @return [Types::DescribeClusterSecurityGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_cluster_security_groups(
    #     cluster_security_group_name: 'ClusterSecurityGroupName',
    #     max_records: 1,
    #     marker: 'Marker',
    #     tag_keys: [
    #       'member'
    #     ],
    #     tag_values: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeClusterSecurityGroupsOutput
    #   resp.data.marker #=> String
    #   resp.data.cluster_security_groups #=> Array<ClusterSecurityGroup>
    #   resp.data.cluster_security_groups[0] #=> Types::ClusterSecurityGroup
    #   resp.data.cluster_security_groups[0].cluster_security_group_name #=> String
    #   resp.data.cluster_security_groups[0].description #=> String
    #   resp.data.cluster_security_groups[0].ec2_security_groups #=> Array<EC2SecurityGroup>
    #   resp.data.cluster_security_groups[0].ec2_security_groups[0] #=> Types::EC2SecurityGroup
    #   resp.data.cluster_security_groups[0].ec2_security_groups[0].status #=> String
    #   resp.data.cluster_security_groups[0].ec2_security_groups[0].ec2_security_group_name #=> String
    #   resp.data.cluster_security_groups[0].ec2_security_groups[0].ec2_security_group_owner_id #=> String
    #   resp.data.cluster_security_groups[0].ec2_security_groups[0].tags #=> Array<Tag>
    #   resp.data.cluster_security_groups[0].ec2_security_groups[0].tags[0] #=> Types::Tag
    #   resp.data.cluster_security_groups[0].ec2_security_groups[0].tags[0].key #=> String
    #   resp.data.cluster_security_groups[0].ec2_security_groups[0].tags[0].value #=> String
    #   resp.data.cluster_security_groups[0].ip_ranges #=> Array<IPRange>
    #   resp.data.cluster_security_groups[0].ip_ranges[0] #=> Types::IPRange
    #   resp.data.cluster_security_groups[0].ip_ranges[0].status #=> String
    #   resp.data.cluster_security_groups[0].ip_ranges[0].cidrip #=> String
    #   resp.data.cluster_security_groups[0].ip_ranges[0].tags #=> Array<Tag>
    #   resp.data.cluster_security_groups[0].tags #=> Array<Tag>
    #
    def describe_cluster_security_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeClusterSecurityGroupsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeClusterSecurityGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeClusterSecurityGroups
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClusterSecurityGroupNotFoundFault, Errors::InvalidTagFault]),
        data_parser: Parsers::DescribeClusterSecurityGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeClusterSecurityGroups,
        stubs: @stubs,
        params_class: Params::DescribeClusterSecurityGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_cluster_security_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns one or more snapshot objects, which contain metadata about your cluster
    #             snapshots. By default, this operation returns information about all snapshots of all
    #             clusters that are owned by your Amazon Web Services account. No information is returned for
    #             snapshots owned by inactive Amazon Web Services accounts.</p>
    #         <p>If you specify both tag keys and tag values in the same request, Amazon Redshift returns
    #             all snapshots that match any combination of the specified keys and values. For example,
    #             if you have <code>owner</code> and <code>environment</code> for tag keys, and
    #                 <code>admin</code> and <code>test</code> for tag values, all snapshots that have any
    #             combination of those values are returned. Only snapshots that you own are returned in
    #             the response; shared snapshots are not returned with the tag key and tag value request
    #             parameters.</p>
    #         <p>If both tag keys and values are omitted from the request, snapshots are returned
    #             regardless of whether they have tag keys or values associated with them.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeClusterSnapshotsInput}.
    #
    # @option params [String] :cluster_identifier
    #   <p>The identifier of the cluster which generated the requested snapshots.</p>
    #
    # @option params [String] :snapshot_identifier
    #   <p>The snapshot identifier of the snapshot about which to return
    #               information.</p>
    #
    # @option params [String] :snapshot_type
    #   <p>The type of snapshots for which you are requesting information. By default,
    #               snapshots of all types are returned.</p>
    #           <p>Valid Values: <code>automated</code> | <code>manual</code>
    #           </p>
    #
    # @option params [Time] :start_time
    #   <p>A value that requests only snapshots created at or after the specified time. The
    #               time value is specified in ISO 8601 format. For more information about ISO 8601, go to
    #               the <a href="http://en.wikipedia.org/wiki/ISO_8601">ISO8601 Wikipedia page.</a>
    #           </p>
    #           <p>Example: <code>2012-07-16T18:00:00Z</code>
    #           </p>
    #
    # @option params [Time] :end_time
    #   <p>A time value that requests only snapshots created at or before the specified time.
    #               The time value is specified in ISO 8601 format. For more information about ISO 8601, go
    #               to the <a href="http://en.wikipedia.org/wiki/ISO_8601">ISO8601 Wikipedia
    #                   page.</a>
    #           </p>
    #           <p>Example: <code>2012-07-16T18:00:00Z</code>
    #           </p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #           <p>Default: <code>100</code>
    #           </p>
    #           <p>Constraints: minimum 20, maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeClusterSnapshots</a> request exceed
    #               the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #                   <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    #
    # @option params [String] :owner_account
    #   <p>The Amazon Web Services account used to create or copy the snapshot. Use this field to
    #               filter the results to snapshots owned by a particular account. To describe snapshots you
    #               own, either specify your Amazon Web Services account, or do not specify the
    #               parameter.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>A tag key or keys for which you want to return all matching cluster snapshots that
    #               are associated with the specified key or keys. For example, suppose that you have
    #               snapshots that are tagged with keys called <code>owner</code> and
    #                   <code>environment</code>. If you specify both of these tag keys in the request,
    #               Amazon Redshift returns a response with the snapshots that have either or both of these tag
    #               keys associated with them.</p>
    #
    # @option params [Array<String>] :tag_values
    #   <p>A tag value or values for which you want to return all matching cluster snapshots
    #               that are associated with the specified tag value or values. For example, suppose that
    #               you have snapshots that are tagged with values called <code>admin</code> and
    #                   <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift
    #               returns a response with the snapshots that have either or both of these tag values
    #               associated with them.</p>
    #
    # @option params [Boolean] :cluster_exists
    #   <p>A value that indicates whether to return snapshots only for an existing cluster.
    #               You can perform table-level restore only by using a snapshot of an existing cluster,
    #               that is, a cluster that has not been deleted. Values for this parameter work as follows: </p>
    #           <ul>
    #               <li>
    #                   <p>If <code>ClusterExists</code> is set to <code>true</code>,
    #                           <code>ClusterIdentifier</code> is required.</p>
    #               </li>
    #               <li>
    #                   <p>If <code>ClusterExists</code> is set to <code>false</code> and
    #                           <code>ClusterIdentifier</code> isn't specified, all snapshots
    #                       associated with deleted clusters (orphaned snapshots) are returned. </p>
    #               </li>
    #               <li>
    #                   <p>If <code>ClusterExists</code> is set to <code>false</code> and
    #                           <code>ClusterIdentifier</code> is specified for a deleted cluster, snapshots
    #                       associated with that cluster are returned.</p>
    #               </li>
    #               <li>
    #                   <p>If <code>ClusterExists</code> is set to <code>false</code> and
    #                           <code>ClusterIdentifier</code> is specified for an existing cluster, no
    #                       snapshots are returned. </p>
    #               </li>
    #            </ul>
    #
    # @option params [Array<SnapshotSortingEntity>] :sorting_entities
    #   <p></p>
    #
    # @return [Types::DescribeClusterSnapshotsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_cluster_snapshots(
    #     cluster_identifier: 'ClusterIdentifier',
    #     snapshot_identifier: 'SnapshotIdentifier',
    #     snapshot_type: 'SnapshotType',
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     max_records: 1,
    #     marker: 'Marker',
    #     owner_account: 'OwnerAccount',
    #     tag_keys: [
    #       'member'
    #     ],
    #     tag_values: [
    #       'member'
    #     ],
    #     cluster_exists: false,
    #     sorting_entities: [
    #       {
    #         attribute: 'SOURCE_TYPE', # required - accepts ["SOURCE_TYPE", "TOTAL_SIZE", "CREATE_TIME"]
    #         sort_order: 'ASC' # accepts ["ASC", "DESC"]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeClusterSnapshotsOutput
    #   resp.data.marker #=> String
    #   resp.data.snapshots #=> Array<Snapshot>
    #   resp.data.snapshots[0] #=> Types::Snapshot
    #   resp.data.snapshots[0].snapshot_identifier #=> String
    #   resp.data.snapshots[0].cluster_identifier #=> String
    #   resp.data.snapshots[0].snapshot_create_time #=> Time
    #   resp.data.snapshots[0].status #=> String
    #   resp.data.snapshots[0].port #=> Integer
    #   resp.data.snapshots[0].availability_zone #=> String
    #   resp.data.snapshots[0].cluster_create_time #=> Time
    #   resp.data.snapshots[0].master_username #=> String
    #   resp.data.snapshots[0].cluster_version #=> String
    #   resp.data.snapshots[0].engine_full_version #=> String
    #   resp.data.snapshots[0].snapshot_type #=> String
    #   resp.data.snapshots[0].node_type #=> String
    #   resp.data.snapshots[0].number_of_nodes #=> Integer
    #   resp.data.snapshots[0].db_name #=> String
    #   resp.data.snapshots[0].vpc_id #=> String
    #   resp.data.snapshots[0].encrypted #=> Boolean
    #   resp.data.snapshots[0].kms_key_id #=> String
    #   resp.data.snapshots[0].encrypted_with_hsm #=> Boolean
    #   resp.data.snapshots[0].accounts_with_restore_access #=> Array<AccountWithRestoreAccess>
    #   resp.data.snapshots[0].accounts_with_restore_access[0] #=> Types::AccountWithRestoreAccess
    #   resp.data.snapshots[0].accounts_with_restore_access[0].account_id #=> String
    #   resp.data.snapshots[0].accounts_with_restore_access[0].account_alias #=> String
    #   resp.data.snapshots[0].owner_account #=> String
    #   resp.data.snapshots[0].total_backup_size_in_mega_bytes #=> Float
    #   resp.data.snapshots[0].actual_incremental_backup_size_in_mega_bytes #=> Float
    #   resp.data.snapshots[0].backup_progress_in_mega_bytes #=> Float
    #   resp.data.snapshots[0].current_backup_rate_in_mega_bytes_per_second #=> Float
    #   resp.data.snapshots[0].estimated_seconds_to_completion #=> Integer
    #   resp.data.snapshots[0].elapsed_time_in_seconds #=> Integer
    #   resp.data.snapshots[0].source_region #=> String
    #   resp.data.snapshots[0].tags #=> Array<Tag>
    #   resp.data.snapshots[0].tags[0] #=> Types::Tag
    #   resp.data.snapshots[0].tags[0].key #=> String
    #   resp.data.snapshots[0].tags[0].value #=> String
    #   resp.data.snapshots[0].restorable_node_types #=> Array<String>
    #   resp.data.snapshots[0].restorable_node_types[0] #=> String
    #   resp.data.snapshots[0].enhanced_vpc_routing #=> Boolean
    #   resp.data.snapshots[0].maintenance_track_name #=> String
    #   resp.data.snapshots[0].manual_snapshot_retention_period #=> Integer
    #   resp.data.snapshots[0].manual_snapshot_remaining_days #=> Integer
    #   resp.data.snapshots[0].snapshot_retention_start_time #=> Time
    #
    def describe_cluster_snapshots(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeClusterSnapshotsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeClusterSnapshotsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeClusterSnapshots
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClusterSnapshotNotFoundFault, Errors::ClusterNotFoundFault, Errors::InvalidTagFault]),
        data_parser: Parsers::DescribeClusterSnapshots
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeClusterSnapshots,
        stubs: @stubs,
        params_class: Params::DescribeClusterSnapshotsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_cluster_snapshots
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns one or more cluster subnet group objects, which contain metadata about your
    #             cluster subnet groups. By default, this operation returns information about all cluster
    #             subnet groups that are defined in your Amazon Web Services account.</p>
    #         <p>If you specify both tag keys and tag values in the same request, Amazon Redshift returns
    #             all subnet groups that match any combination of the specified keys and values. For
    #             example, if you have <code>owner</code> and <code>environment</code> for tag keys, and
    #                 <code>admin</code> and <code>test</code> for tag values, all subnet groups that have
    #             any combination of those values are returned.</p>
    #         <p>If both tag keys and values are omitted from the request, subnet groups are
    #             returned regardless of whether they have tag keys or values associated with
    #             them.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeClusterSubnetGroupsInput}.
    #
    # @option params [String] :cluster_subnet_group_name
    #   <p>The name of the cluster subnet group for which information is requested.</p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #           <p>Default: <code>100</code>
    #           </p>
    #           <p>Constraints: minimum 20, maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeClusterSubnetGroups</a> request
    #               exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #                   <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>A tag key or keys for which you want to return all matching cluster subnet groups
    #               that are associated with the specified key or keys. For example, suppose that you have
    #               subnet groups that are tagged with keys called <code>owner</code> and
    #                   <code>environment</code>. If you specify both of these tag keys in the request,
    #               Amazon Redshift returns a response with the subnet groups that have either or both of these
    #               tag keys associated with them.</p>
    #
    # @option params [Array<String>] :tag_values
    #   <p>A tag value or values for which you want to return all matching cluster subnet
    #               groups that are associated with the specified tag value or values. For example, suppose
    #               that you have subnet groups that are tagged with values called <code>admin</code> and
    #                   <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift
    #               returns a response with the subnet groups that have either or both of these tag values
    #               associated with them.</p>
    #
    # @return [Types::DescribeClusterSubnetGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_cluster_subnet_groups(
    #     cluster_subnet_group_name: 'ClusterSubnetGroupName',
    #     max_records: 1,
    #     marker: 'Marker',
    #     tag_keys: [
    #       'member'
    #     ],
    #     tag_values: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeClusterSubnetGroupsOutput
    #   resp.data.marker #=> String
    #   resp.data.cluster_subnet_groups #=> Array<ClusterSubnetGroup>
    #   resp.data.cluster_subnet_groups[0] #=> Types::ClusterSubnetGroup
    #   resp.data.cluster_subnet_groups[0].cluster_subnet_group_name #=> String
    #   resp.data.cluster_subnet_groups[0].description #=> String
    #   resp.data.cluster_subnet_groups[0].vpc_id #=> String
    #   resp.data.cluster_subnet_groups[0].subnet_group_status #=> String
    #   resp.data.cluster_subnet_groups[0].subnets #=> Array<Subnet>
    #   resp.data.cluster_subnet_groups[0].subnets[0] #=> Types::Subnet
    #   resp.data.cluster_subnet_groups[0].subnets[0].subnet_identifier #=> String
    #   resp.data.cluster_subnet_groups[0].subnets[0].subnet_availability_zone #=> Types::AvailabilityZone
    #   resp.data.cluster_subnet_groups[0].subnets[0].subnet_availability_zone.name #=> String
    #   resp.data.cluster_subnet_groups[0].subnets[0].subnet_availability_zone.supported_platforms #=> Array<SupportedPlatform>
    #   resp.data.cluster_subnet_groups[0].subnets[0].subnet_availability_zone.supported_platforms[0] #=> Types::SupportedPlatform
    #   resp.data.cluster_subnet_groups[0].subnets[0].subnet_availability_zone.supported_platforms[0].name #=> String
    #   resp.data.cluster_subnet_groups[0].subnets[0].subnet_status #=> String
    #   resp.data.cluster_subnet_groups[0].tags #=> Array<Tag>
    #   resp.data.cluster_subnet_groups[0].tags[0] #=> Types::Tag
    #   resp.data.cluster_subnet_groups[0].tags[0].key #=> String
    #   resp.data.cluster_subnet_groups[0].tags[0].value #=> String
    #
    def describe_cluster_subnet_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeClusterSubnetGroupsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeClusterSubnetGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeClusterSubnetGroups
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClusterSubnetGroupNotFoundFault, Errors::InvalidTagFault]),
        data_parser: Parsers::DescribeClusterSubnetGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeClusterSubnetGroups,
        stubs: @stubs,
        params_class: Params::DescribeClusterSubnetGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_cluster_subnet_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of all the available maintenance tracks.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeClusterTracksInput}.
    #
    # @option params [String] :maintenance_track_name
    #   <p>The name of the maintenance track. </p>
    #
    # @option params [Integer] :max_records
    #   <p>An integer value for the maximum number of maintenance tracks to return.</p>
    #
    # @option params [String] :marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <code>DescribeClusterTracks</code> request exceed the
    #               value specified in <code>MaxRecords</code>, Amazon Redshift returns a value in the
    #                   <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    #
    # @return [Types::DescribeClusterTracksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_cluster_tracks(
    #     maintenance_track_name: 'MaintenanceTrackName',
    #     max_records: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeClusterTracksOutput
    #   resp.data.maintenance_tracks #=> Array<MaintenanceTrack>
    #   resp.data.maintenance_tracks[0] #=> Types::MaintenanceTrack
    #   resp.data.maintenance_tracks[0].maintenance_track_name #=> String
    #   resp.data.maintenance_tracks[0].database_version #=> String
    #   resp.data.maintenance_tracks[0].update_targets #=> Array<UpdateTarget>
    #   resp.data.maintenance_tracks[0].update_targets[0] #=> Types::UpdateTarget
    #   resp.data.maintenance_tracks[0].update_targets[0].maintenance_track_name #=> String
    #   resp.data.maintenance_tracks[0].update_targets[0].database_version #=> String
    #   resp.data.maintenance_tracks[0].update_targets[0].supported_operations #=> Array<SupportedOperation>
    #   resp.data.maintenance_tracks[0].update_targets[0].supported_operations[0] #=> Types::SupportedOperation
    #   resp.data.maintenance_tracks[0].update_targets[0].supported_operations[0].operation_name #=> String
    #   resp.data.marker #=> String
    #
    def describe_cluster_tracks(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeClusterTracksInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeClusterTracksInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeClusterTracks
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidClusterTrackFault, Errors::UnauthorizedOperation]),
        data_parser: Parsers::DescribeClusterTracks
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeClusterTracks,
        stubs: @stubs,
        params_class: Params::DescribeClusterTracksOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_cluster_tracks
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns descriptions of the available Amazon Redshift cluster versions. You can call this
    #             operation even before creating any clusters to learn more about the Amazon Redshift versions.
    #
    # For more information about managing clusters, go to
    # <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html">Amazon Redshift Clusters</a>
    # in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeClusterVersionsInput}.
    #
    # @option params [String] :cluster_version
    #   <p>The specific cluster version to return.</p>
    #           <p>Example: <code>1.0</code>
    #           </p>
    #
    # @option params [String] :cluster_parameter_group_family
    #   <p>The name of a specific cluster parameter group family to return details
    #               for.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be 1 to 255 alphanumeric characters</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter</p>
    #               </li>
    #               <li>
    #                   <p>Cannot end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #            </ul>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #           <p>Default: <code>100</code>
    #           </p>
    #           <p>Constraints: minimum 20, maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeClusterVersions</a> request exceed
    #               the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #                   <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    #
    # @return [Types::DescribeClusterVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_cluster_versions(
    #     cluster_version: 'ClusterVersion',
    #     cluster_parameter_group_family: 'ClusterParameterGroupFamily',
    #     max_records: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeClusterVersionsOutput
    #   resp.data.marker #=> String
    #   resp.data.cluster_versions #=> Array<ClusterVersion>
    #   resp.data.cluster_versions[0] #=> Types::ClusterVersion
    #   resp.data.cluster_versions[0].cluster_version #=> String
    #   resp.data.cluster_versions[0].cluster_parameter_group_family #=> String
    #   resp.data.cluster_versions[0].description #=> String
    #
    def describe_cluster_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeClusterVersionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeClusterVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeClusterVersions
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
        data_parser: Parsers::DescribeClusterVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeClusterVersions,
        stubs: @stubs,
        params_class: Params::DescribeClusterVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_cluster_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns properties of provisioned clusters including general cluster properties,
    #             cluster database properties, maintenance and backup properties, and security and access
    #             properties. This operation supports pagination.
    # For more information about managing clusters, go to
    # <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html">Amazon Redshift Clusters</a>
    # in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    #         <p>If you specify both tag keys and tag values in the same request, Amazon Redshift returns
    #             all clusters that match any combination of the specified keys and values. For example,
    #             if you have <code>owner</code> and <code>environment</code> for tag keys, and
    #                 <code>admin</code> and <code>test</code> for tag values, all clusters that have any
    #             combination of those values are returned.</p>
    #         <p>If both tag keys and values are omitted from the request, clusters are returned
    #             regardless of whether they have tag keys or values associated with them.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeClustersInput}.
    #
    # @option params [String] :cluster_identifier
    #   <p>The unique identifier of a cluster whose properties you are requesting. This
    #               parameter is case sensitive.</p>
    #           <p>The default is that all clusters defined for an account are returned.</p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #           <p>Default: <code>100</code>
    #           </p>
    #           <p>Constraints: minimum 20, maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeClusters</a> request exceed the
    #               value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #                   <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    #           <p>Constraints: You can specify either the <b>ClusterIdentifier</b> parameter or the <b>Marker</b> parameter, but not both. </p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>A tag key or keys for which you want to return all matching clusters that are
    #               associated with the specified key or keys. For example, suppose that you have clusters
    #               that are tagged with keys called <code>owner</code> and <code>environment</code>. If you
    #               specify both of these tag keys in the request, Amazon Redshift returns a response with the
    #               clusters that have either or both of these tag keys associated with them.</p>
    #
    # @option params [Array<String>] :tag_values
    #   <p>A tag value or values for which you want to return all matching clusters that are
    #               associated with the specified tag value or values. For example, suppose that you have
    #               clusters that are tagged with values called <code>admin</code> and <code>test</code>. If
    #               you specify both of these tag values in the request, Amazon Redshift returns a response with
    #               the clusters that have either or both of these tag values associated with
    #               them.</p>
    #
    # @return [Types::DescribeClustersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_clusters(
    #     cluster_identifier: 'ClusterIdentifier',
    #     max_records: 1,
    #     marker: 'Marker',
    #     tag_keys: [
    #       'member'
    #     ],
    #     tag_values: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeClustersOutput
    #   resp.data.marker #=> String
    #   resp.data.clusters #=> Array<Cluster>
    #   resp.data.clusters[0] #=> Types::Cluster
    #   resp.data.clusters[0].cluster_identifier #=> String
    #   resp.data.clusters[0].node_type #=> String
    #   resp.data.clusters[0].cluster_status #=> String
    #   resp.data.clusters[0].cluster_availability_status #=> String
    #   resp.data.clusters[0].modify_status #=> String
    #   resp.data.clusters[0].master_username #=> String
    #   resp.data.clusters[0].db_name #=> String
    #   resp.data.clusters[0].endpoint #=> Types::Endpoint
    #   resp.data.clusters[0].endpoint.address #=> String
    #   resp.data.clusters[0].endpoint.port #=> Integer
    #   resp.data.clusters[0].endpoint.vpc_endpoints #=> Array<VpcEndpoint>
    #   resp.data.clusters[0].endpoint.vpc_endpoints[0] #=> Types::VpcEndpoint
    #   resp.data.clusters[0].endpoint.vpc_endpoints[0].vpc_endpoint_id #=> String
    #   resp.data.clusters[0].endpoint.vpc_endpoints[0].vpc_id #=> String
    #   resp.data.clusters[0].endpoint.vpc_endpoints[0].network_interfaces #=> Array<NetworkInterface>
    #   resp.data.clusters[0].endpoint.vpc_endpoints[0].network_interfaces[0] #=> Types::NetworkInterface
    #   resp.data.clusters[0].endpoint.vpc_endpoints[0].network_interfaces[0].network_interface_id #=> String
    #   resp.data.clusters[0].endpoint.vpc_endpoints[0].network_interfaces[0].subnet_id #=> String
    #   resp.data.clusters[0].endpoint.vpc_endpoints[0].network_interfaces[0].private_ip_address #=> String
    #   resp.data.clusters[0].endpoint.vpc_endpoints[0].network_interfaces[0].availability_zone #=> String
    #   resp.data.clusters[0].cluster_create_time #=> Time
    #   resp.data.clusters[0].automated_snapshot_retention_period #=> Integer
    #   resp.data.clusters[0].manual_snapshot_retention_period #=> Integer
    #   resp.data.clusters[0].cluster_security_groups #=> Array<ClusterSecurityGroupMembership>
    #   resp.data.clusters[0].cluster_security_groups[0] #=> Types::ClusterSecurityGroupMembership
    #   resp.data.clusters[0].cluster_security_groups[0].cluster_security_group_name #=> String
    #   resp.data.clusters[0].cluster_security_groups[0].status #=> String
    #   resp.data.clusters[0].vpc_security_groups #=> Array<VpcSecurityGroupMembership>
    #   resp.data.clusters[0].vpc_security_groups[0] #=> Types::VpcSecurityGroupMembership
    #   resp.data.clusters[0].vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.data.clusters[0].vpc_security_groups[0].status #=> String
    #   resp.data.clusters[0].cluster_parameter_groups #=> Array<ClusterParameterGroupStatus>
    #   resp.data.clusters[0].cluster_parameter_groups[0] #=> Types::ClusterParameterGroupStatus
    #   resp.data.clusters[0].cluster_parameter_groups[0].parameter_group_name #=> String
    #   resp.data.clusters[0].cluster_parameter_groups[0].parameter_apply_status #=> String
    #   resp.data.clusters[0].cluster_parameter_groups[0].cluster_parameter_status_list #=> Array<ClusterParameterStatus>
    #   resp.data.clusters[0].cluster_parameter_groups[0].cluster_parameter_status_list[0] #=> Types::ClusterParameterStatus
    #   resp.data.clusters[0].cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_name #=> String
    #   resp.data.clusters[0].cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_status #=> String
    #   resp.data.clusters[0].cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_error_description #=> String
    #   resp.data.clusters[0].cluster_subnet_group_name #=> String
    #   resp.data.clusters[0].vpc_id #=> String
    #   resp.data.clusters[0].availability_zone #=> String
    #   resp.data.clusters[0].preferred_maintenance_window #=> String
    #   resp.data.clusters[0].pending_modified_values #=> Types::PendingModifiedValues
    #   resp.data.clusters[0].pending_modified_values.master_user_password #=> String
    #   resp.data.clusters[0].pending_modified_values.node_type #=> String
    #   resp.data.clusters[0].pending_modified_values.number_of_nodes #=> Integer
    #   resp.data.clusters[0].pending_modified_values.cluster_type #=> String
    #   resp.data.clusters[0].pending_modified_values.cluster_version #=> String
    #   resp.data.clusters[0].pending_modified_values.automated_snapshot_retention_period #=> Integer
    #   resp.data.clusters[0].pending_modified_values.cluster_identifier #=> String
    #   resp.data.clusters[0].pending_modified_values.publicly_accessible #=> Boolean
    #   resp.data.clusters[0].pending_modified_values.enhanced_vpc_routing #=> Boolean
    #   resp.data.clusters[0].pending_modified_values.maintenance_track_name #=> String
    #   resp.data.clusters[0].pending_modified_values.encryption_type #=> String
    #   resp.data.clusters[0].cluster_version #=> String
    #   resp.data.clusters[0].allow_version_upgrade #=> Boolean
    #   resp.data.clusters[0].number_of_nodes #=> Integer
    #   resp.data.clusters[0].publicly_accessible #=> Boolean
    #   resp.data.clusters[0].encrypted #=> Boolean
    #   resp.data.clusters[0].restore_status #=> Types::RestoreStatus
    #   resp.data.clusters[0].restore_status.status #=> String
    #   resp.data.clusters[0].restore_status.current_restore_rate_in_mega_bytes_per_second #=> Float
    #   resp.data.clusters[0].restore_status.snapshot_size_in_mega_bytes #=> Integer
    #   resp.data.clusters[0].restore_status.progress_in_mega_bytes #=> Integer
    #   resp.data.clusters[0].restore_status.elapsed_time_in_seconds #=> Integer
    #   resp.data.clusters[0].restore_status.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.data.clusters[0].data_transfer_progress #=> Types::DataTransferProgress
    #   resp.data.clusters[0].data_transfer_progress.status #=> String
    #   resp.data.clusters[0].data_transfer_progress.current_rate_in_mega_bytes_per_second #=> Float
    #   resp.data.clusters[0].data_transfer_progress.total_data_in_mega_bytes #=> Integer
    #   resp.data.clusters[0].data_transfer_progress.data_transferred_in_mega_bytes #=> Integer
    #   resp.data.clusters[0].data_transfer_progress.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.data.clusters[0].data_transfer_progress.elapsed_time_in_seconds #=> Integer
    #   resp.data.clusters[0].hsm_status #=> Types::HsmStatus
    #   resp.data.clusters[0].hsm_status.hsm_client_certificate_identifier #=> String
    #   resp.data.clusters[0].hsm_status.hsm_configuration_identifier #=> String
    #   resp.data.clusters[0].hsm_status.status #=> String
    #   resp.data.clusters[0].cluster_snapshot_copy_status #=> Types::ClusterSnapshotCopyStatus
    #   resp.data.clusters[0].cluster_snapshot_copy_status.destination_region #=> String
    #   resp.data.clusters[0].cluster_snapshot_copy_status.retention_period #=> Integer
    #   resp.data.clusters[0].cluster_snapshot_copy_status.manual_snapshot_retention_period #=> Integer
    #   resp.data.clusters[0].cluster_snapshot_copy_status.snapshot_copy_grant_name #=> String
    #   resp.data.clusters[0].cluster_public_key #=> String
    #   resp.data.clusters[0].cluster_nodes #=> Array<ClusterNode>
    #   resp.data.clusters[0].cluster_nodes[0] #=> Types::ClusterNode
    #   resp.data.clusters[0].cluster_nodes[0].node_role #=> String
    #   resp.data.clusters[0].cluster_nodes[0].private_ip_address #=> String
    #   resp.data.clusters[0].cluster_nodes[0].public_ip_address #=> String
    #   resp.data.clusters[0].elastic_ip_status #=> Types::ElasticIpStatus
    #   resp.data.clusters[0].elastic_ip_status.elastic_ip #=> String
    #   resp.data.clusters[0].elastic_ip_status.status #=> String
    #   resp.data.clusters[0].cluster_revision_number #=> String
    #   resp.data.clusters[0].tags #=> Array<Tag>
    #   resp.data.clusters[0].tags[0] #=> Types::Tag
    #   resp.data.clusters[0].tags[0].key #=> String
    #   resp.data.clusters[0].tags[0].value #=> String
    #   resp.data.clusters[0].kms_key_id #=> String
    #   resp.data.clusters[0].enhanced_vpc_routing #=> Boolean
    #   resp.data.clusters[0].iam_roles #=> Array<ClusterIamRole>
    #   resp.data.clusters[0].iam_roles[0] #=> Types::ClusterIamRole
    #   resp.data.clusters[0].iam_roles[0].iam_role_arn #=> String
    #   resp.data.clusters[0].iam_roles[0].apply_status #=> String
    #   resp.data.clusters[0].pending_actions #=> Array<String>
    #   resp.data.clusters[0].pending_actions[0] #=> String
    #   resp.data.clusters[0].maintenance_track_name #=> String
    #   resp.data.clusters[0].elastic_resize_number_of_node_options #=> String
    #   resp.data.clusters[0].deferred_maintenance_windows #=> Array<DeferredMaintenanceWindow>
    #   resp.data.clusters[0].deferred_maintenance_windows[0] #=> Types::DeferredMaintenanceWindow
    #   resp.data.clusters[0].deferred_maintenance_windows[0].defer_maintenance_identifier #=> String
    #   resp.data.clusters[0].deferred_maintenance_windows[0].defer_maintenance_start_time #=> Time
    #   resp.data.clusters[0].deferred_maintenance_windows[0].defer_maintenance_end_time #=> Time
    #   resp.data.clusters[0].snapshot_schedule_identifier #=> String
    #   resp.data.clusters[0].snapshot_schedule_state #=> String, one of ["MODIFYING", "ACTIVE", "FAILED"]
    #   resp.data.clusters[0].expected_next_snapshot_schedule_time #=> Time
    #   resp.data.clusters[0].expected_next_snapshot_schedule_time_status #=> String
    #   resp.data.clusters[0].next_maintenance_window_start_time #=> Time
    #   resp.data.clusters[0].resize_info #=> Types::ResizeInfo
    #   resp.data.clusters[0].resize_info.resize_type #=> String
    #   resp.data.clusters[0].resize_info.allow_cancel_resize #=> Boolean
    #   resp.data.clusters[0].availability_zone_relocation_status #=> String
    #   resp.data.clusters[0].cluster_namespace_arn #=> String
    #   resp.data.clusters[0].total_storage_capacity_in_mega_bytes #=> Integer
    #   resp.data.clusters[0].aqua_configuration #=> Types::AquaConfiguration
    #   resp.data.clusters[0].aqua_configuration.aqua_status #=> String, one of ["enabled", "disabled", "applying"]
    #   resp.data.clusters[0].aqua_configuration.aqua_configuration_status #=> String, one of ["enabled", "disabled", "auto"]
    #   resp.data.clusters[0].default_iam_role_arn #=> String
    #   resp.data.clusters[0].reserved_node_exchange_status #=> Types::ReservedNodeExchangeStatus
    #   resp.data.clusters[0].reserved_node_exchange_status.reserved_node_exchange_request_id #=> String
    #   resp.data.clusters[0].reserved_node_exchange_status.status #=> String, one of ["REQUESTED", "PENDING", "IN_PROGRESS", "RETRYING", "SUCCEEDED", "FAILED"]
    #   resp.data.clusters[0].reserved_node_exchange_status.request_time #=> Time
    #   resp.data.clusters[0].reserved_node_exchange_status.source_reserved_node_id #=> String
    #   resp.data.clusters[0].reserved_node_exchange_status.source_reserved_node_type #=> String
    #   resp.data.clusters[0].reserved_node_exchange_status.source_reserved_node_count #=> Integer
    #   resp.data.clusters[0].reserved_node_exchange_status.target_reserved_node_offering_id #=> String
    #   resp.data.clusters[0].reserved_node_exchange_status.target_reserved_node_type #=> String
    #   resp.data.clusters[0].reserved_node_exchange_status.target_reserved_node_count #=> Integer
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClusterNotFoundFault, Errors::InvalidTagFault]),
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

    # <p>Shows the status of any inbound or outbound datashares available in the specified
    #             account.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDataSharesInput}.
    #
    # @option params [String] :data_share_arn
    #   <p>The identifier of the datashare to describe details of.</p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #
    # @option params [String] :marker
    #   <p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <a>DescribeDataShares</a> request exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p>
    #
    # @return [Types::DescribeDataSharesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_data_shares(
    #     data_share_arn: 'DataShareArn',
    #     max_records: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDataSharesOutput
    #   resp.data.data_shares #=> Array<DataShare>
    #   resp.data.data_shares[0] #=> Types::DataShare
    #   resp.data.data_shares[0].data_share_arn #=> String
    #   resp.data.data_shares[0].producer_arn #=> String
    #   resp.data.data_shares[0].allow_publicly_accessible_consumers #=> Boolean
    #   resp.data.data_shares[0].data_share_associations #=> Array<DataShareAssociation>
    #   resp.data.data_shares[0].data_share_associations[0] #=> Types::DataShareAssociation
    #   resp.data.data_shares[0].data_share_associations[0].consumer_identifier #=> String
    #   resp.data.data_shares[0].data_share_associations[0].status #=> String, one of ["ACTIVE", "PENDING_AUTHORIZATION", "AUTHORIZED", "DEAUTHORIZED", "REJECTED", "AVAILABLE"]
    #   resp.data.data_shares[0].data_share_associations[0].consumer_region #=> String
    #   resp.data.data_shares[0].data_share_associations[0].created_date #=> Time
    #   resp.data.data_shares[0].data_share_associations[0].status_change_date #=> Time
    #   resp.data.data_shares[0].managed_by #=> String
    #   resp.data.marker #=> String
    #
    def describe_data_shares(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDataSharesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDataSharesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDataShares
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidDataShareFault]),
        data_parser: Parsers::DescribeDataShares
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDataShares,
        stubs: @stubs,
        params_class: Params::DescribeDataSharesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_data_shares
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of datashares where the account identifier being called is a consumer account identifier.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDataSharesForConsumerInput}.
    #
    # @option params [String] :consumer_arn
    #   <p>The Amazon Resource Name (ARN) of the consumer that returns in the list of datashares.</p>
    #
    # @option params [String] :status
    #   <p>An identifier giving the status of a datashare in the consumer cluster. If this field is specified, Amazon
    #               Redshift returns the list of datashares that have the specified status.</p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #
    # @option params [String] :marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeDataSharesForConsumer</a> request
    #               exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #               <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    #
    # @return [Types::DescribeDataSharesForConsumerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_data_shares_for_consumer(
    #     consumer_arn: 'ConsumerArn',
    #     status: 'ACTIVE', # accepts ["ACTIVE", "AVAILABLE"]
    #     max_records: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDataSharesForConsumerOutput
    #   resp.data.data_shares #=> Array<DataShare>
    #   resp.data.data_shares[0] #=> Types::DataShare
    #   resp.data.data_shares[0].data_share_arn #=> String
    #   resp.data.data_shares[0].producer_arn #=> String
    #   resp.data.data_shares[0].allow_publicly_accessible_consumers #=> Boolean
    #   resp.data.data_shares[0].data_share_associations #=> Array<DataShareAssociation>
    #   resp.data.data_shares[0].data_share_associations[0] #=> Types::DataShareAssociation
    #   resp.data.data_shares[0].data_share_associations[0].consumer_identifier #=> String
    #   resp.data.data_shares[0].data_share_associations[0].status #=> String, one of ["ACTIVE", "PENDING_AUTHORIZATION", "AUTHORIZED", "DEAUTHORIZED", "REJECTED", "AVAILABLE"]
    #   resp.data.data_shares[0].data_share_associations[0].consumer_region #=> String
    #   resp.data.data_shares[0].data_share_associations[0].created_date #=> Time
    #   resp.data.data_shares[0].data_share_associations[0].status_change_date #=> Time
    #   resp.data.data_shares[0].managed_by #=> String
    #   resp.data.marker #=> String
    #
    def describe_data_shares_for_consumer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDataSharesForConsumerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDataSharesForConsumerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDataSharesForConsumer
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNamespaceFault]),
        data_parser: Parsers::DescribeDataSharesForConsumer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDataSharesForConsumer,
        stubs: @stubs,
        params_class: Params::DescribeDataSharesForConsumerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_data_shares_for_consumer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of datashares when the account identifier being called is a producer account identifier.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDataSharesForProducerInput}.
    #
    # @option params [String] :producer_arn
    #   <p>The Amazon Resource Name (ARN) of the producer that returns in the list of datashares.</p>
    #
    # @option params [String] :status
    #   <p>An identifier giving the status of a datashare in the producer. If this field is specified, Amazon
    #               Redshift returns the list of datashares that have the specified status.</p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #
    # @option params [String] :marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeDataSharesForProducer</a> request
    #               exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #               <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    #
    # @return [Types::DescribeDataSharesForProducerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_data_shares_for_producer(
    #     producer_arn: 'ProducerArn',
    #     status: 'ACTIVE', # accepts ["ACTIVE", "AUTHORIZED", "PENDING_AUTHORIZATION", "DEAUTHORIZED", "REJECTED"]
    #     max_records: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDataSharesForProducerOutput
    #   resp.data.data_shares #=> Array<DataShare>
    #   resp.data.data_shares[0] #=> Types::DataShare
    #   resp.data.data_shares[0].data_share_arn #=> String
    #   resp.data.data_shares[0].producer_arn #=> String
    #   resp.data.data_shares[0].allow_publicly_accessible_consumers #=> Boolean
    #   resp.data.data_shares[0].data_share_associations #=> Array<DataShareAssociation>
    #   resp.data.data_shares[0].data_share_associations[0] #=> Types::DataShareAssociation
    #   resp.data.data_shares[0].data_share_associations[0].consumer_identifier #=> String
    #   resp.data.data_shares[0].data_share_associations[0].status #=> String, one of ["ACTIVE", "PENDING_AUTHORIZATION", "AUTHORIZED", "DEAUTHORIZED", "REJECTED", "AVAILABLE"]
    #   resp.data.data_shares[0].data_share_associations[0].consumer_region #=> String
    #   resp.data.data_shares[0].data_share_associations[0].created_date #=> Time
    #   resp.data.data_shares[0].data_share_associations[0].status_change_date #=> Time
    #   resp.data.data_shares[0].managed_by #=> String
    #   resp.data.marker #=> String
    #
    def describe_data_shares_for_producer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDataSharesForProducerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDataSharesForProducerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDataSharesForProducer
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNamespaceFault]),
        data_parser: Parsers::DescribeDataSharesForProducer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDataSharesForProducer,
        stubs: @stubs,
        params_class: Params::DescribeDataSharesForProducerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_data_shares_for_producer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of parameter settings for the specified parameter group
    #             family.</p>
    #         <p>
    # For more information about parameters and parameter groups, go to
    # <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html">Amazon Redshift Parameter Groups</a>
    # in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDefaultClusterParametersInput}.
    #
    # @option params [String] :parameter_group_family
    #   <p>The name of the cluster parameter group family.</p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #           <p>Default: <code>100</code>
    #           </p>
    #           <p>Constraints: minimum 20, maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeDefaultClusterParameters</a>
    #               request exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in
    #               the <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    #
    # @return [Types::DescribeDefaultClusterParametersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_default_cluster_parameters(
    #     parameter_group_family: 'ParameterGroupFamily', # required
    #     max_records: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDefaultClusterParametersOutput
    #   resp.data.default_cluster_parameters #=> Types::DefaultClusterParameters
    #   resp.data.default_cluster_parameters.parameter_group_family #=> String
    #   resp.data.default_cluster_parameters.marker #=> String
    #   resp.data.default_cluster_parameters.parameters #=> Array<Parameter>
    #   resp.data.default_cluster_parameters.parameters[0] #=> Types::Parameter
    #   resp.data.default_cluster_parameters.parameters[0].parameter_name #=> String
    #   resp.data.default_cluster_parameters.parameters[0].parameter_value #=> String
    #   resp.data.default_cluster_parameters.parameters[0].description #=> String
    #   resp.data.default_cluster_parameters.parameters[0].source #=> String
    #   resp.data.default_cluster_parameters.parameters[0].data_type #=> String
    #   resp.data.default_cluster_parameters.parameters[0].allowed_values #=> String
    #   resp.data.default_cluster_parameters.parameters[0].apply_type #=> String, one of ["static", "dynamic"]
    #   resp.data.default_cluster_parameters.parameters[0].is_modifiable #=> Boolean
    #   resp.data.default_cluster_parameters.parameters[0].minimum_engine_version #=> String
    #
    def describe_default_cluster_parameters(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDefaultClusterParametersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDefaultClusterParametersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDefaultClusterParameters
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
        data_parser: Parsers::DescribeDefaultClusterParameters
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDefaultClusterParameters,
        stubs: @stubs,
        params_class: Params::DescribeDefaultClusterParametersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_default_cluster_parameters
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes a Redshift-managed VPC endpoint.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEndpointAccessInput}.
    #
    # @option params [String] :cluster_identifier
    #   <p>The cluster identifier associated with the described endpoint.</p>
    #
    # @option params [String] :resource_owner
    #   <p>The Amazon Web Services account ID of the owner of the cluster.</p>
    #
    # @option params [String] :endpoint_name
    #   <p>The name of the endpoint to be described.</p>
    #
    # @option params [String] :vpc_id
    #   <p>The virtual private cloud (VPC) identifier with access to the cluster.</p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist
    #               than the specified <code>MaxRecords</code> value, a pagination token called a <code>Marker</code> is
    #               included in the response so that the remaining results can be retrieved.</p>
    #
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous
    #               <code>DescribeEndpointAccess</code> request. If this parameter is specified, the
    #               response includes only records beyond the marker, up to the value specified by the
    #               <code>MaxRecords</code> parameter.</p>
    #
    # @return [Types::DescribeEndpointAccessOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_endpoint_access(
    #     cluster_identifier: 'ClusterIdentifier',
    #     resource_owner: 'ResourceOwner',
    #     endpoint_name: 'EndpointName',
    #     vpc_id: 'VpcId',
    #     max_records: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeEndpointAccessOutput
    #   resp.data.endpoint_access_list #=> Array<EndpointAccess>
    #   resp.data.endpoint_access_list[0] #=> Types::EndpointAccess
    #   resp.data.endpoint_access_list[0].cluster_identifier #=> String
    #   resp.data.endpoint_access_list[0].resource_owner #=> String
    #   resp.data.endpoint_access_list[0].subnet_group_name #=> String
    #   resp.data.endpoint_access_list[0].endpoint_status #=> String
    #   resp.data.endpoint_access_list[0].endpoint_name #=> String
    #   resp.data.endpoint_access_list[0].endpoint_create_time #=> Time
    #   resp.data.endpoint_access_list[0].port #=> Integer
    #   resp.data.endpoint_access_list[0].address #=> String
    #   resp.data.endpoint_access_list[0].vpc_security_groups #=> Array<VpcSecurityGroupMembership>
    #   resp.data.endpoint_access_list[0].vpc_security_groups[0] #=> Types::VpcSecurityGroupMembership
    #   resp.data.endpoint_access_list[0].vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.data.endpoint_access_list[0].vpc_security_groups[0].status #=> String
    #   resp.data.endpoint_access_list[0].vpc_endpoint #=> Types::VpcEndpoint
    #   resp.data.endpoint_access_list[0].vpc_endpoint.vpc_endpoint_id #=> String
    #   resp.data.endpoint_access_list[0].vpc_endpoint.vpc_id #=> String
    #   resp.data.endpoint_access_list[0].vpc_endpoint.network_interfaces #=> Array<NetworkInterface>
    #   resp.data.endpoint_access_list[0].vpc_endpoint.network_interfaces[0] #=> Types::NetworkInterface
    #   resp.data.endpoint_access_list[0].vpc_endpoint.network_interfaces[0].network_interface_id #=> String
    #   resp.data.endpoint_access_list[0].vpc_endpoint.network_interfaces[0].subnet_id #=> String
    #   resp.data.endpoint_access_list[0].vpc_endpoint.network_interfaces[0].private_ip_address #=> String
    #   resp.data.endpoint_access_list[0].vpc_endpoint.network_interfaces[0].availability_zone #=> String
    #   resp.data.marker #=> String
    #
    def describe_endpoint_access(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEndpointAccessInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeEndpointAccessInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeEndpointAccess
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidClusterStateFault, Errors::ClusterNotFoundFault, Errors::EndpointNotFoundFault]),
        data_parser: Parsers::DescribeEndpointAccess
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeEndpointAccess,
        stubs: @stubs,
        params_class: Params::DescribeEndpointAccessOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_endpoint_access
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes an endpoint authorization.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEndpointAuthorizationInput}.
    #
    # @option params [String] :cluster_identifier
    #   <p>The cluster identifier of the cluster to access.</p>
    #
    # @option params [String] :account
    #   <p>The AAmazon Web Services account ID of either the cluster owner (grantor) or grantee.
    #          If <code>Grantee</code> parameter is true, then the <code>Account</code> value is of the grantor.</p>
    #
    # @option params [Boolean] :grantee
    #   <p>Indicates whether to check authorization from a grantor or grantee point of view.
    #              If true, Amazon Redshift returns endpoint authorizations that you've been granted.
    #              If false (default), checks authorization from a grantor point of view.</p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist
    #               than the specified <code>MaxRecords</code> value, a pagination token called a <code>Marker</code> is
    #               included in the response so that the remaining results can be retrieved.</p>
    #
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous
    #               <code>DescribeEndpointAuthorization</code> request. If this parameter is specified, the
    #               response includes only records beyond the marker, up to the value specified by the
    #               <code>MaxRecords</code> parameter.</p>
    #
    # @return [Types::DescribeEndpointAuthorizationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_endpoint_authorization(
    #     cluster_identifier: 'ClusterIdentifier',
    #     account: 'Account',
    #     grantee: false,
    #     max_records: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeEndpointAuthorizationOutput
    #   resp.data.endpoint_authorization_list #=> Array<EndpointAuthorization>
    #   resp.data.endpoint_authorization_list[0] #=> Types::EndpointAuthorization
    #   resp.data.endpoint_authorization_list[0].grantor #=> String
    #   resp.data.endpoint_authorization_list[0].grantee #=> String
    #   resp.data.endpoint_authorization_list[0].cluster_identifier #=> String
    #   resp.data.endpoint_authorization_list[0].authorize_time #=> Time
    #   resp.data.endpoint_authorization_list[0].cluster_status #=> String
    #   resp.data.endpoint_authorization_list[0].status #=> String, one of ["Authorized", "Revoking"]
    #   resp.data.endpoint_authorization_list[0].allowed_all_vp_cs #=> Boolean
    #   resp.data.endpoint_authorization_list[0].allowed_vp_cs #=> Array<String>
    #   resp.data.endpoint_authorization_list[0].allowed_vp_cs[0] #=> String
    #   resp.data.endpoint_authorization_list[0].endpoint_count #=> Integer
    #   resp.data.marker #=> String
    #
    def describe_endpoint_authorization(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEndpointAuthorizationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeEndpointAuthorizationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeEndpointAuthorization
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedOperationFault, Errors::ClusterNotFoundFault]),
        data_parser: Parsers::DescribeEndpointAuthorization
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeEndpointAuthorization,
        stubs: @stubs,
        params_class: Params::DescribeEndpointAuthorizationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_endpoint_authorization
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Displays a list of event categories for all event source types, or for a specified
    #             source type. For a list of the event categories and source types, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-event-notifications.html">Amazon Redshift Event
    #                 Notifications</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEventCategoriesInput}.
    #
    # @option params [String] :source_type
    #   <p>The source type, such as cluster or parameter group, to which the described event
    #               categories apply.</p>
    #           <p>Valid values: cluster, cluster-snapshot, cluster-parameter-group, cluster-security-group, and scheduled-action.</p>
    #
    # @return [Types::DescribeEventCategoriesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_event_categories(
    #     source_type: 'SourceType'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeEventCategoriesOutput
    #   resp.data.event_categories_map_list #=> Array<EventCategoriesMap>
    #   resp.data.event_categories_map_list[0] #=> Types::EventCategoriesMap
    #   resp.data.event_categories_map_list[0].source_type #=> String
    #   resp.data.event_categories_map_list[0].events #=> Array<EventInfoMap>
    #   resp.data.event_categories_map_list[0].events[0] #=> Types::EventInfoMap
    #   resp.data.event_categories_map_list[0].events[0].event_id #=> String
    #   resp.data.event_categories_map_list[0].events[0].event_categories #=> Array<String>
    #   resp.data.event_categories_map_list[0].events[0].event_categories[0] #=> String
    #   resp.data.event_categories_map_list[0].events[0].event_description #=> String
    #   resp.data.event_categories_map_list[0].events[0].severity #=> String
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

    # <p>Lists descriptions of all the Amazon Redshift event notification subscriptions for a
    #             customer account. If you specify a subscription name, lists the description for that
    #             subscription.</p>
    #         <p>If you specify both tag keys and tag values in the same request, Amazon Redshift returns
    #             all event notification subscriptions that match any combination of the specified keys
    #             and values. For example, if you have <code>owner</code> and <code>environment</code> for
    #             tag keys, and <code>admin</code> and <code>test</code> for tag values, all subscriptions
    #             that have any combination of those values are returned.</p>
    #         <p>If both tag keys and values are omitted from the request, subscriptions are
    #             returned regardless of whether they have tag keys or values associated with
    #             them.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEventSubscriptionsInput}.
    #
    # @option params [String] :subscription_name
    #   <p>The name of the Amazon Redshift event notification subscription to be
    #               described.</p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #           <p>Default: <code>100</code>
    #           </p>
    #           <p>Constraints: minimum 20, maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a DescribeEventSubscriptions request exceed the value
    #               specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the <code>Marker</code>
    #               field of the response. You can retrieve the next set of response records by providing
    #               the returned marker value in the <code>Marker</code> parameter and retrying the request.
    #           </p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>A tag key or keys for which you want to return all matching event notification
    #               subscriptions that are associated with the specified key or keys. For example, suppose
    #               that you have subscriptions that are tagged with keys called <code>owner</code> and
    #                   <code>environment</code>. If you specify both of these tag keys in the request,
    #               Amazon Redshift returns a response with the subscriptions that have either or both of these
    #               tag keys associated with them.</p>
    #
    # @option params [Array<String>] :tag_values
    #   <p>A tag value or values for which you want to return all matching event notification
    #               subscriptions that are associated with the specified tag value or values. For example,
    #               suppose that you have subscriptions that are tagged with values called
    #                   <code>admin</code> and <code>test</code>. If you specify both of these tag values in
    #               the request, Amazon Redshift returns a response with the subscriptions that have either or
    #               both of these tag values associated with them.</p>
    #
    # @return [Types::DescribeEventSubscriptionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_event_subscriptions(
    #     subscription_name: 'SubscriptionName',
    #     max_records: 1,
    #     marker: 'Marker',
    #     tag_keys: [
    #       'member'
    #     ],
    #     tag_values: [
    #       'member'
    #     ]
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
    #   resp.data.event_subscriptions_list[0].subscription_creation_time #=> Time
    #   resp.data.event_subscriptions_list[0].source_type #=> String
    #   resp.data.event_subscriptions_list[0].source_ids_list #=> Array<String>
    #   resp.data.event_subscriptions_list[0].source_ids_list[0] #=> String
    #   resp.data.event_subscriptions_list[0].event_categories_list #=> Array<String>
    #   resp.data.event_subscriptions_list[0].event_categories_list[0] #=> String
    #   resp.data.event_subscriptions_list[0].severity #=> String
    #   resp.data.event_subscriptions_list[0].enabled #=> Boolean
    #   resp.data.event_subscriptions_list[0].tags #=> Array<Tag>
    #   resp.data.event_subscriptions_list[0].tags[0] #=> Types::Tag
    #   resp.data.event_subscriptions_list[0].tags[0].key #=> String
    #   resp.data.event_subscriptions_list[0].tags[0].value #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::SubscriptionNotFoundFault, Errors::InvalidTagFault]),
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

    # <p>Returns events related to clusters, security groups, snapshots, and parameter
    #             groups for the past 14 days. Events specific to a particular cluster, security group,
    #             snapshot or parameter group can be obtained by providing the name as a parameter. By
    #             default, the past hour of events are returned.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEventsInput}.
    #
    # @option params [String] :source_identifier
    #   <p>The identifier of the event source for which events will be returned. If this
    #               parameter is not specified, then all sources are included in the response.</p>
    #           <p>Constraints:</p>
    #           <p>If <i>SourceIdentifier</i> is supplied,
    #                   <i>SourceType</i> must also be provided.</p>
    #           <ul>
    #               <li>
    #                   <p>Specify a cluster identifier when <i>SourceType</i> is
    #                           <code>cluster</code>.</p>
    #               </li>
    #               <li>
    #                   <p>Specify a cluster security group name when <i>SourceType</i>
    #                       is <code>cluster-security-group</code>.</p>
    #               </li>
    #               <li>
    #                   <p>Specify a cluster parameter group name when <i>SourceType</i>
    #                       is <code>cluster-parameter-group</code>.</p>
    #               </li>
    #               <li>
    #                   <p>Specify a cluster snapshot identifier when <i>SourceType</i>
    #                       is <code>cluster-snapshot</code>.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :source_type
    #   <p>The event source to retrieve events for. If no value is specified, all events are
    #               returned.</p>
    #           <p>Constraints:</p>
    #           <p>If <i>SourceType</i> is supplied,
    #                   <i>SourceIdentifier</i> must also be provided.</p>
    #           <ul>
    #               <li>
    #                   <p>Specify <code>cluster</code> when <i>SourceIdentifier</i> is
    #                       a cluster identifier.</p>
    #               </li>
    #               <li>
    #                   <p>Specify <code>cluster-security-group</code> when
    #                           <i>SourceIdentifier</i> is a cluster security group
    #                       name.</p>
    #               </li>
    #               <li>
    #                   <p>Specify <code>cluster-parameter-group</code> when
    #                           <i>SourceIdentifier</i> is a cluster parameter group
    #                       name.</p>
    #               </li>
    #               <li>
    #                   <p>Specify <code>cluster-snapshot</code> when
    #                           <i>SourceIdentifier</i> is a cluster snapshot
    #                       identifier.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Time] :start_time
    #   <p>The beginning of the time interval to retrieve events for, specified in ISO 8601
    #               format. For more information about ISO 8601, go to the <a href="http://en.wikipedia.org/wiki/ISO_8601">ISO8601 Wikipedia page.</a>
    #           </p>
    #           <p>Example: <code>2009-07-08T18:00Z</code>
    #           </p>
    #
    # @option params [Time] :end_time
    #   <p>The end of the time interval for which to retrieve events, specified in ISO 8601
    #               format. For more information about ISO 8601, go to the <a href="http://en.wikipedia.org/wiki/ISO_8601">ISO8601 Wikipedia page.</a>
    #           </p>
    #           <p>Example: <code>2009-07-08T18:00Z</code>
    #           </p>
    #
    # @option params [Integer] :duration
    #   <p>The number of minutes prior to the time of the request for which to retrieve
    #               events. For example, if the request is sent at 18:00 and you specify a duration of 60,
    #               then only events which have occurred after 17:00 will be returned.</p>
    #           <p>Default: <code>60</code>
    #           </p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #           <p>Default: <code>100</code>
    #           </p>
    #           <p>Constraints: minimum 20, maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeEvents</a> request exceed the value
    #               specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the <code>Marker</code>
    #               field of the response. You can retrieve the next set of response records by providing
    #               the returned marker value in the <code>Marker</code> parameter and retrying the request.
    #           </p>
    #
    # @return [Types::DescribeEventsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_events(
    #     source_identifier: 'SourceIdentifier',
    #     source_type: 'cluster', # accepts ["cluster", "cluster-parameter-group", "cluster-security-group", "cluster-snapshot", "scheduled-action"]
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
    #   resp.data.events[0].source_type #=> String, one of ["cluster", "cluster-parameter-group", "cluster-security-group", "cluster-snapshot", "scheduled-action"]
    #   resp.data.events[0].message #=> String
    #   resp.data.events[0].event_categories #=> Array<String>
    #   resp.data.events[0].event_categories[0] #=> String
    #   resp.data.events[0].severity #=> String
    #   resp.data.events[0].date #=> Time
    #   resp.data.events[0].event_id #=> String
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

    # <p>Returns information about the specified HSM client certificate. If no certificate
    #             ID is specified, returns information about all the HSM certificates owned by your Amazon Web Services account.</p>
    #         <p>If you specify both tag keys and tag values in the same request, Amazon Redshift returns
    #             all HSM client certificates that match any combination of the specified keys and values.
    #             For example, if you have <code>owner</code> and <code>environment</code> for tag keys,
    #             and <code>admin</code> and <code>test</code> for tag values, all HSM client certificates
    #             that have any combination of those values are returned.</p>
    #         <p>If both tag keys and values are omitted from the request, HSM client certificates
    #             are returned regardless of whether they have tag keys or values associated with
    #             them.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeHsmClientCertificatesInput}.
    #
    # @option params [String] :hsm_client_certificate_identifier
    #   <p>The identifier of a specific HSM client certificate for which you want information.
    #               If no identifier is specified, information is returned for all HSM client certificates
    #               owned by your Amazon Web Services account.</p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #           <p>Default: <code>100</code>
    #           </p>
    #           <p>Constraints: minimum 20, maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeHsmClientCertificates</a> request
    #               exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #                   <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>A tag key or keys for which you want to return all matching HSM client certificates
    #               that are associated with the specified key or keys. For example, suppose that you have
    #               HSM client certificates that are tagged with keys called <code>owner</code> and
    #                   <code>environment</code>. If you specify both of these tag keys in the request,
    #               Amazon Redshift returns a response with the HSM client certificates that have either or both
    #               of these tag keys associated with them.</p>
    #
    # @option params [Array<String>] :tag_values
    #   <p>A tag value or values for which you want to return all matching HSM client
    #               certificates that are associated with the specified tag value or values. For example,
    #               suppose that you have HSM client certificates that are tagged with values called
    #                   <code>admin</code> and <code>test</code>. If you specify both of these tag values in
    #               the request, Amazon Redshift returns a response with the HSM client certificates that have
    #               either or both of these tag values associated with them.</p>
    #
    # @return [Types::DescribeHsmClientCertificatesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_hsm_client_certificates(
    #     hsm_client_certificate_identifier: 'HsmClientCertificateIdentifier',
    #     max_records: 1,
    #     marker: 'Marker',
    #     tag_keys: [
    #       'member'
    #     ],
    #     tag_values: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeHsmClientCertificatesOutput
    #   resp.data.marker #=> String
    #   resp.data.hsm_client_certificates #=> Array<HsmClientCertificate>
    #   resp.data.hsm_client_certificates[0] #=> Types::HsmClientCertificate
    #   resp.data.hsm_client_certificates[0].hsm_client_certificate_identifier #=> String
    #   resp.data.hsm_client_certificates[0].hsm_client_certificate_public_key #=> String
    #   resp.data.hsm_client_certificates[0].tags #=> Array<Tag>
    #   resp.data.hsm_client_certificates[0].tags[0] #=> Types::Tag
    #   resp.data.hsm_client_certificates[0].tags[0].key #=> String
    #   resp.data.hsm_client_certificates[0].tags[0].value #=> String
    #
    def describe_hsm_client_certificates(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeHsmClientCertificatesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeHsmClientCertificatesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeHsmClientCertificates
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::HsmClientCertificateNotFoundFault, Errors::InvalidTagFault]),
        data_parser: Parsers::DescribeHsmClientCertificates
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeHsmClientCertificates,
        stubs: @stubs,
        params_class: Params::DescribeHsmClientCertificatesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_hsm_client_certificates
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the specified Amazon Redshift HSM configuration. If no
    #             configuration ID is specified, returns information about all the HSM configurations
    #             owned by your Amazon Web Services account.</p>
    #         <p>If you specify both tag keys and tag values in the same request, Amazon Redshift returns
    #             all HSM connections that match any combination of the specified keys and values. For
    #             example, if you have <code>owner</code> and <code>environment</code> for tag keys, and
    #                 <code>admin</code> and <code>test</code> for tag values, all HSM connections that
    #             have any combination of those values are returned.</p>
    #         <p>If both tag keys and values are omitted from the request, HSM connections are
    #             returned regardless of whether they have tag keys or values associated with
    #             them.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeHsmConfigurationsInput}.
    #
    # @option params [String] :hsm_configuration_identifier
    #   <p>The identifier of a specific Amazon Redshift HSM configuration to be described. If no
    #               identifier is specified, information is returned for all HSM configurations owned by
    #               your Amazon Web Services account.</p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #           <p>Default: <code>100</code>
    #           </p>
    #           <p>Constraints: minimum 20, maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeHsmConfigurations</a> request
    #               exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #                   <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>A tag key or keys for which you want to return all matching HSM configurations that
    #               are associated with the specified key or keys. For example, suppose that you have HSM
    #               configurations that are tagged with keys called <code>owner</code> and
    #                   <code>environment</code>. If you specify both of these tag keys in the request,
    #               Amazon Redshift returns a response with the HSM configurations that have either or both of
    #               these tag keys associated with them.</p>
    #
    # @option params [Array<String>] :tag_values
    #   <p>A tag value or values for which you want to return all matching HSM configurations
    #               that are associated with the specified tag value or values. For example, suppose that
    #               you have HSM configurations that are tagged with values called <code>admin</code> and
    #                   <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift
    #               returns a response with the HSM configurations that have either or both of these tag
    #               values associated with them.</p>
    #
    # @return [Types::DescribeHsmConfigurationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_hsm_configurations(
    #     hsm_configuration_identifier: 'HsmConfigurationIdentifier',
    #     max_records: 1,
    #     marker: 'Marker',
    #     tag_keys: [
    #       'member'
    #     ],
    #     tag_values: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeHsmConfigurationsOutput
    #   resp.data.marker #=> String
    #   resp.data.hsm_configurations #=> Array<HsmConfiguration>
    #   resp.data.hsm_configurations[0] #=> Types::HsmConfiguration
    #   resp.data.hsm_configurations[0].hsm_configuration_identifier #=> String
    #   resp.data.hsm_configurations[0].description #=> String
    #   resp.data.hsm_configurations[0].hsm_ip_address #=> String
    #   resp.data.hsm_configurations[0].hsm_partition_name #=> String
    #   resp.data.hsm_configurations[0].tags #=> Array<Tag>
    #   resp.data.hsm_configurations[0].tags[0] #=> Types::Tag
    #   resp.data.hsm_configurations[0].tags[0].key #=> String
    #   resp.data.hsm_configurations[0].tags[0].value #=> String
    #
    def describe_hsm_configurations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeHsmConfigurationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeHsmConfigurationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeHsmConfigurations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::HsmConfigurationNotFoundFault, Errors::InvalidTagFault]),
        data_parser: Parsers::DescribeHsmConfigurations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeHsmConfigurations,
        stubs: @stubs,
        params_class: Params::DescribeHsmConfigurationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_hsm_configurations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes whether information, such as queries and connection attempts, is being
    #             logged for the specified Amazon Redshift cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeLoggingStatusInput}.
    #
    # @option params [String] :cluster_identifier
    #   <p>The identifier of the cluster from which to get the logging status.</p>
    #           <p>Example: <code>examplecluster</code>
    #           </p>
    #
    # @return [Types::DescribeLoggingStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_logging_status(
    #     cluster_identifier: 'ClusterIdentifier' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeLoggingStatusOutput
    #   resp.data.logging_enabled #=> Boolean
    #   resp.data.bucket_name #=> String
    #   resp.data.s3_key_prefix #=> String
    #   resp.data.last_successful_delivery_time #=> Time
    #   resp.data.last_failure_time #=> Time
    #   resp.data.last_failure_message #=> String
    #   resp.data.log_destination_type #=> String, one of ["s3", "cloudwatch"]
    #   resp.data.log_exports #=> Array<String>
    #   resp.data.log_exports[0] #=> String
    #
    def describe_logging_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeLoggingStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeLoggingStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeLoggingStatus
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClusterNotFoundFault]),
        data_parser: Parsers::DescribeLoggingStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeLoggingStatus,
        stubs: @stubs,
        params_class: Params::DescribeLoggingStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_logging_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns properties of possible node configurations such as node type, number of nodes, and
    #             disk usage for the specified action type.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeNodeConfigurationOptionsInput}.
    #
    # @option params [String] :action_type
    #   <p>The action type to evaluate for possible node configurations.
    #               Specify "restore-cluster" to get configuration combinations based on an existing snapshot.
    #               Specify "recommend-node-config" to get configuration recommendations based on an existing cluster or snapshot.
    #               Specify "resize-cluster" to get configuration combinations for elastic resize based on an existing cluster.
    #           </p>
    #
    # @option params [String] :cluster_identifier
    #   <p>The identifier of the cluster to evaluate for possible node configurations.</p>
    #
    # @option params [String] :snapshot_identifier
    #   <p>The identifier of the snapshot to evaluate for possible node configurations.</p>
    #
    # @option params [String] :owner_account
    #   <p>The Amazon Web Services account used to create or copy the snapshot.
    #               Required if you are restoring a snapshot you do not own,
    #               optional if you own the snapshot.</p>
    #
    # @option params [Array<NodeConfigurationOptionsFilter>] :filters
    #   <p>A set of name, operator, and value items to filter the results.</p>
    #
    # @option params [String] :marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeNodeConfigurationOptions</a> request
    #               exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #               <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #           <p>Default: <code>500</code>
    #           </p>
    #           <p>Constraints: minimum 100, maximum 500.</p>
    #
    # @return [Types::DescribeNodeConfigurationOptionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_node_configuration_options(
    #     action_type: 'restore-cluster', # required - accepts ["restore-cluster", "recommend-node-config", "resize-cluster"]
    #     cluster_identifier: 'ClusterIdentifier',
    #     snapshot_identifier: 'SnapshotIdentifier',
    #     owner_account: 'OwnerAccount',
    #     filters: [
    #       {
    #         name: 'NodeType', # accepts ["NodeType", "NumberOfNodes", "EstimatedDiskUtilizationPercent", "Mode"]
    #         operator: 'eq', # accepts ["eq", "lt", "gt", "le", "ge", "in", "between"]
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     marker: 'Marker',
    #     max_records: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeNodeConfigurationOptionsOutput
    #   resp.data.node_configuration_option_list #=> Array<NodeConfigurationOption>
    #   resp.data.node_configuration_option_list[0] #=> Types::NodeConfigurationOption
    #   resp.data.node_configuration_option_list[0].node_type #=> String
    #   resp.data.node_configuration_option_list[0].number_of_nodes #=> Integer
    #   resp.data.node_configuration_option_list[0].estimated_disk_utilization_percent #=> Float
    #   resp.data.node_configuration_option_list[0].mode #=> String, one of ["standard", "high-performance"]
    #   resp.data.marker #=> String
    #
    def describe_node_configuration_options(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeNodeConfigurationOptionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeNodeConfigurationOptionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeNodeConfigurationOptions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClusterSnapshotNotFoundFault, Errors::InvalidClusterSnapshotStateFault, Errors::ClusterNotFoundFault, Errors::AccessToSnapshotDeniedFault]),
        data_parser: Parsers::DescribeNodeConfigurationOptions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeNodeConfigurationOptions,
        stubs: @stubs,
        params_class: Params::DescribeNodeConfigurationOptionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_node_configuration_options
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of orderable cluster options. Before you create a new cluster you
    #             can use this operation to find what options are available, such as the EC2 Availability
    #             Zones (AZ) in the specific Amazon Web Services Region that you can specify, and the node types you can
    #             request. The node types differ by available storage, memory, CPU and price. With the
    #             cost involved you might want to obtain a list of cluster options in the specific region
    #             and specify values when creating a cluster.
    # For more information about managing clusters, go to
    # <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html">Amazon Redshift Clusters</a>
    # in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeOrderableClusterOptionsInput}.
    #
    # @option params [String] :cluster_version
    #   <p>The version filter value. Specify this parameter to show only the available
    #               offerings matching the specified version.</p>
    #           <p>Default: All versions.</p>
    #           <p>Constraints: Must be one of the version returned from <a>DescribeClusterVersions</a>.</p>
    #
    # @option params [String] :node_type
    #   <p>The node type filter value. Specify this parameter to show only the available
    #               offerings matching the specified node type.</p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #           <p>Default: <code>100</code>
    #           </p>
    #           <p>Constraints: minimum 20, maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeOrderableClusterOptions</a> request
    #               exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #                   <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    #
    # @return [Types::DescribeOrderableClusterOptionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_orderable_cluster_options(
    #     cluster_version: 'ClusterVersion',
    #     node_type: 'NodeType',
    #     max_records: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeOrderableClusterOptionsOutput
    #   resp.data.orderable_cluster_options #=> Array<OrderableClusterOption>
    #   resp.data.orderable_cluster_options[0] #=> Types::OrderableClusterOption
    #   resp.data.orderable_cluster_options[0].cluster_version #=> String
    #   resp.data.orderable_cluster_options[0].cluster_type #=> String
    #   resp.data.orderable_cluster_options[0].node_type #=> String
    #   resp.data.orderable_cluster_options[0].availability_zones #=> Array<AvailabilityZone>
    #   resp.data.orderable_cluster_options[0].availability_zones[0] #=> Types::AvailabilityZone
    #   resp.data.orderable_cluster_options[0].availability_zones[0].name #=> String
    #   resp.data.orderable_cluster_options[0].availability_zones[0].supported_platforms #=> Array<SupportedPlatform>
    #   resp.data.orderable_cluster_options[0].availability_zones[0].supported_platforms[0] #=> Types::SupportedPlatform
    #   resp.data.orderable_cluster_options[0].availability_zones[0].supported_platforms[0].name #=> String
    #   resp.data.marker #=> String
    #
    def describe_orderable_cluster_options(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeOrderableClusterOptionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeOrderableClusterOptionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeOrderableClusterOptions
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
        data_parser: Parsers::DescribeOrderableClusterOptions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeOrderableClusterOptions,
        stubs: @stubs,
        params_class: Params::DescribeOrderableClusterOptionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_orderable_cluster_options
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the partner integrations defined for a cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribePartnersInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID that owns the cluster.</p>
    #
    # @option params [String] :cluster_identifier
    #   <p>The cluster identifier of the cluster whose partner integration is being described.</p>
    #
    # @option params [String] :database_name
    #   <p>The name of the database whose partner integration is being described. If database name is not specified, then all databases in the cluster are described.</p>
    #
    # @option params [String] :partner_name
    #   <p>The name of the partner that is being described. If partner name is not specified, then all partner integrations are described.</p>
    #
    # @return [Types::DescribePartnersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_partners(
    #     account_id: 'AccountId', # required
    #     cluster_identifier: 'ClusterIdentifier', # required
    #     database_name: 'DatabaseName',
    #     partner_name: 'PartnerName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribePartnersOutput
    #   resp.data.partner_integration_info_list #=> Array<PartnerIntegrationInfo>
    #   resp.data.partner_integration_info_list[0] #=> Types::PartnerIntegrationInfo
    #   resp.data.partner_integration_info_list[0].database_name #=> String
    #   resp.data.partner_integration_info_list[0].partner_name #=> String
    #   resp.data.partner_integration_info_list[0].status #=> String, one of ["Active", "Inactive", "RuntimeFailure", "ConnectionFailure"]
    #   resp.data.partner_integration_info_list[0].status_message #=> String
    #   resp.data.partner_integration_info_list[0].created_at #=> Time
    #   resp.data.partner_integration_info_list[0].updated_at #=> Time
    #
    def describe_partners(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribePartnersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribePartnersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribePartners
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClusterNotFoundFault, Errors::UnauthorizedPartnerIntegrationFault]),
        data_parser: Parsers::DescribePartners
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribePartners,
        stubs: @stubs,
        params_class: Params::DescribePartnersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_partners
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns exchange status details and associated metadata for a reserved-node
    #             exchange. Statuses include such values as in progress and requested.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeReservedNodeExchangeStatusInput}.
    #
    # @option params [String] :reserved_node_id
    #   <p>The identifier of the source reserved node in a reserved-node exchange request.</p>
    #
    # @option params [String] :reserved_node_exchange_request_id
    #   <p>The identifier of the reserved-node exchange request.</p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>Marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value.</p>
    #
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous <code>DescribeReservedNodeExchangeStatus</code> request. If this
    #               parameter is specified, the response includes only records beyond the marker, up to the value
    #               specified by the <code>MaxRecords</code> parameter. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request.</p>
    #
    # @return [Types::DescribeReservedNodeExchangeStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_reserved_node_exchange_status(
    #     reserved_node_id: 'ReservedNodeId',
    #     reserved_node_exchange_request_id: 'ReservedNodeExchangeRequestId',
    #     max_records: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeReservedNodeExchangeStatusOutput
    #   resp.data.reserved_node_exchange_status_details #=> Array<ReservedNodeExchangeStatus>
    #   resp.data.reserved_node_exchange_status_details[0] #=> Types::ReservedNodeExchangeStatus
    #   resp.data.reserved_node_exchange_status_details[0].reserved_node_exchange_request_id #=> String
    #   resp.data.reserved_node_exchange_status_details[0].status #=> String, one of ["REQUESTED", "PENDING", "IN_PROGRESS", "RETRYING", "SUCCEEDED", "FAILED"]
    #   resp.data.reserved_node_exchange_status_details[0].request_time #=> Time
    #   resp.data.reserved_node_exchange_status_details[0].source_reserved_node_id #=> String
    #   resp.data.reserved_node_exchange_status_details[0].source_reserved_node_type #=> String
    #   resp.data.reserved_node_exchange_status_details[0].source_reserved_node_count #=> Integer
    #   resp.data.reserved_node_exchange_status_details[0].target_reserved_node_offering_id #=> String
    #   resp.data.reserved_node_exchange_status_details[0].target_reserved_node_type #=> String
    #   resp.data.reserved_node_exchange_status_details[0].target_reserved_node_count #=> Integer
    #   resp.data.marker #=> String
    #
    def describe_reserved_node_exchange_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeReservedNodeExchangeStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeReservedNodeExchangeStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeReservedNodeExchangeStatus
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedOperationFault, Errors::ReservedNodeNotFoundFault, Errors::ReservedNodeExchangeNotFoundFault]),
        data_parser: Parsers::DescribeReservedNodeExchangeStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeReservedNodeExchangeStatus,
        stubs: @stubs,
        params_class: Params::DescribeReservedNodeExchangeStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_reserved_node_exchange_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of the available reserved node offerings by Amazon Redshift with their
    #             descriptions including the node type, the fixed and recurring costs of reserving the
    #             node and duration the node will be reserved for you. These descriptions help you
    #             determine which reserve node offering you want to purchase. You then use the unique
    #             offering ID in you call to <a>PurchaseReservedNodeOffering</a> to reserve one
    #             or more nodes for your Amazon Redshift cluster. </p>
    #         <p>
    # For more information about reserved node offerings, go to
    # <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/purchase-reserved-node-instance.html">Purchasing Reserved Nodes</a>
    # in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeReservedNodeOfferingsInput}.
    #
    # @option params [String] :reserved_node_offering_id
    #   <p>The unique identifier for the offering.</p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #           <p>Default: <code>100</code>
    #           </p>
    #           <p>Constraints: minimum 20, maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeReservedNodeOfferings</a> request
    #               exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #                   <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    #
    # @return [Types::DescribeReservedNodeOfferingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_reserved_node_offerings(
    #     reserved_node_offering_id: 'ReservedNodeOfferingId',
    #     max_records: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeReservedNodeOfferingsOutput
    #   resp.data.marker #=> String
    #   resp.data.reserved_node_offerings #=> Array<ReservedNodeOffering>
    #   resp.data.reserved_node_offerings[0] #=> Types::ReservedNodeOffering
    #   resp.data.reserved_node_offerings[0].reserved_node_offering_id #=> String
    #   resp.data.reserved_node_offerings[0].node_type #=> String
    #   resp.data.reserved_node_offerings[0].duration #=> Integer
    #   resp.data.reserved_node_offerings[0].fixed_price #=> Float
    #   resp.data.reserved_node_offerings[0].usage_price #=> Float
    #   resp.data.reserved_node_offerings[0].currency_code #=> String
    #   resp.data.reserved_node_offerings[0].offering_type #=> String
    #   resp.data.reserved_node_offerings[0].recurring_charges #=> Array<RecurringCharge>
    #   resp.data.reserved_node_offerings[0].recurring_charges[0] #=> Types::RecurringCharge
    #   resp.data.reserved_node_offerings[0].recurring_charges[0].recurring_charge_amount #=> Float
    #   resp.data.reserved_node_offerings[0].recurring_charges[0].recurring_charge_frequency #=> String
    #   resp.data.reserved_node_offerings[0].reserved_node_offering_type #=> String, one of ["Regular", "Upgradable"]
    #
    def describe_reserved_node_offerings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeReservedNodeOfferingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeReservedNodeOfferingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeReservedNodeOfferings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedOperationFault, Errors::ReservedNodeOfferingNotFoundFault, Errors::DependentServiceUnavailableFault]),
        data_parser: Parsers::DescribeReservedNodeOfferings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeReservedNodeOfferings,
        stubs: @stubs,
        params_class: Params::DescribeReservedNodeOfferingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_reserved_node_offerings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the descriptions of the reserved nodes.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeReservedNodesInput}.
    #
    # @option params [String] :reserved_node_id
    #   <p>Identifier for the node reservation.</p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #           <p>Default: <code>100</code>
    #           </p>
    #           <p>Constraints: minimum 20, maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeReservedNodes</a> request exceed
    #               the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #                   <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    #
    # @return [Types::DescribeReservedNodesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_reserved_nodes(
    #     reserved_node_id: 'ReservedNodeId',
    #     max_records: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeReservedNodesOutput
    #   resp.data.marker #=> String
    #   resp.data.reserved_nodes #=> Array<ReservedNode>
    #   resp.data.reserved_nodes[0] #=> Types::ReservedNode
    #   resp.data.reserved_nodes[0].reserved_node_id #=> String
    #   resp.data.reserved_nodes[0].reserved_node_offering_id #=> String
    #   resp.data.reserved_nodes[0].node_type #=> String
    #   resp.data.reserved_nodes[0].start_time #=> Time
    #   resp.data.reserved_nodes[0].duration #=> Integer
    #   resp.data.reserved_nodes[0].fixed_price #=> Float
    #   resp.data.reserved_nodes[0].usage_price #=> Float
    #   resp.data.reserved_nodes[0].currency_code #=> String
    #   resp.data.reserved_nodes[0].node_count #=> Integer
    #   resp.data.reserved_nodes[0].state #=> String
    #   resp.data.reserved_nodes[0].offering_type #=> String
    #   resp.data.reserved_nodes[0].recurring_charges #=> Array<RecurringCharge>
    #   resp.data.reserved_nodes[0].recurring_charges[0] #=> Types::RecurringCharge
    #   resp.data.reserved_nodes[0].recurring_charges[0].recurring_charge_amount #=> Float
    #   resp.data.reserved_nodes[0].recurring_charges[0].recurring_charge_frequency #=> String
    #   resp.data.reserved_nodes[0].reserved_node_offering_type #=> String, one of ["Regular", "Upgradable"]
    #
    def describe_reserved_nodes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeReservedNodesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeReservedNodesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeReservedNodes
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DependentServiceUnavailableFault, Errors::ReservedNodeNotFoundFault]),
        data_parser: Parsers::DescribeReservedNodes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeReservedNodes,
        stubs: @stubs,
        params_class: Params::DescribeReservedNodesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_reserved_nodes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the last resize operation for the specified cluster. If
    #             no resize operation has ever been initiated for the specified cluster, a <code>HTTP
    #                 404</code> error is returned. If a resize operation was initiated and completed, the
    #             status of the resize remains as <code>SUCCEEDED</code> until the next resize. </p>
    #         <p>A resize operation can be requested using <a>ModifyCluster</a> and
    #             specifying a different number or type of nodes for the cluster. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeResizeInput}.
    #
    # @option params [String] :cluster_identifier
    #   <p>The unique identifier of a cluster whose resize progress you are requesting. This
    #               parameter is case-sensitive.</p>
    #           <p>By default, resize operations for all clusters defined for an Amazon Web Services account are
    #               returned.</p>
    #
    # @return [Types::DescribeResizeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_resize(
    #     cluster_identifier: 'ClusterIdentifier' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeResizeOutput
    #   resp.data.target_node_type #=> String
    #   resp.data.target_number_of_nodes #=> Integer
    #   resp.data.target_cluster_type #=> String
    #   resp.data.status #=> String
    #   resp.data.import_tables_completed #=> Array<String>
    #   resp.data.import_tables_completed[0] #=> String
    #   resp.data.import_tables_in_progress #=> Array<String>
    #   resp.data.import_tables_in_progress[0] #=> String
    #   resp.data.import_tables_not_started #=> Array<String>
    #   resp.data.import_tables_not_started[0] #=> String
    #   resp.data.avg_resize_rate_in_mega_bytes_per_second #=> Float
    #   resp.data.total_resize_data_in_mega_bytes #=> Integer
    #   resp.data.progress_in_mega_bytes #=> Integer
    #   resp.data.elapsed_time_in_seconds #=> Integer
    #   resp.data.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.data.resize_type #=> String
    #   resp.data.message #=> String
    #   resp.data.target_encryption_type #=> String
    #   resp.data.data_transfer_progress_percent #=> Float
    #
    def describe_resize(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeResizeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeResizeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeResize
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResizeNotFoundFault, Errors::ClusterNotFoundFault]),
        data_parser: Parsers::DescribeResize
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeResize,
        stubs: @stubs,
        params_class: Params::DescribeResizeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_resize
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes properties of scheduled actions.
    #              </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeScheduledActionsInput}.
    #
    # @option params [String] :scheduled_action_name
    #   <p>The name of the scheduled action to retrieve. </p>
    #
    # @option params [String] :target_action_type
    #   <p>The type of the scheduled actions to retrieve. </p>
    #
    # @option params [Time] :start_time
    #   <p>The start time in UTC of the scheduled actions to retrieve.
    #               Only active scheduled actions that have invocations after this time are retrieved.</p>
    #
    # @option params [Time] :end_time
    #   <p>The end time in UTC of the scheduled action to retrieve.
    #               Only active scheduled actions that have invocations before this time are retrieved.</p>
    #
    # @option params [Boolean] :active
    #   <p>If true, retrieve only active scheduled actions.
    #              If false, retrieve only disabled scheduled actions. </p>
    #
    # @option params [Array<ScheduledActionFilter>] :filters
    #   <p>List of scheduled action filters. </p>
    #
    # @option params [String] :marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeScheduledActions</a> request
    #               exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #               <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #               <p>Default: <code>100</code>
    #               </p>
    #               <p>Constraints: minimum 20, maximum 100.</p>
    #
    # @return [Types::DescribeScheduledActionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_scheduled_actions(
    #     scheduled_action_name: 'ScheduledActionName',
    #     target_action_type: 'ResizeCluster', # accepts ["ResizeCluster", "PauseCluster", "ResumeCluster"]
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     active: false,
    #     filters: [
    #       {
    #         name: 'cluster-identifier', # required - accepts ["cluster-identifier", "iam-role"]
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
    #   resp.data #=> Types::DescribeScheduledActionsOutput
    #   resp.data.marker #=> String
    #   resp.data.scheduled_actions #=> Array<ScheduledAction>
    #   resp.data.scheduled_actions[0] #=> Types::ScheduledAction
    #   resp.data.scheduled_actions[0].scheduled_action_name #=> String
    #   resp.data.scheduled_actions[0].target_action #=> Types::ScheduledActionType
    #   resp.data.scheduled_actions[0].target_action.resize_cluster #=> Types::ResizeClusterMessage
    #   resp.data.scheduled_actions[0].target_action.resize_cluster.cluster_identifier #=> String
    #   resp.data.scheduled_actions[0].target_action.resize_cluster.cluster_type #=> String
    #   resp.data.scheduled_actions[0].target_action.resize_cluster.node_type #=> String
    #   resp.data.scheduled_actions[0].target_action.resize_cluster.number_of_nodes #=> Integer
    #   resp.data.scheduled_actions[0].target_action.resize_cluster.classic #=> Boolean
    #   resp.data.scheduled_actions[0].target_action.resize_cluster.reserved_node_id #=> String
    #   resp.data.scheduled_actions[0].target_action.resize_cluster.target_reserved_node_offering_id #=> String
    #   resp.data.scheduled_actions[0].target_action.pause_cluster #=> Types::PauseClusterMessage
    #   resp.data.scheduled_actions[0].target_action.pause_cluster.cluster_identifier #=> String
    #   resp.data.scheduled_actions[0].target_action.resume_cluster #=> Types::ResumeClusterMessage
    #   resp.data.scheduled_actions[0].target_action.resume_cluster.cluster_identifier #=> String
    #   resp.data.scheduled_actions[0].schedule #=> String
    #   resp.data.scheduled_actions[0].iam_role #=> String
    #   resp.data.scheduled_actions[0].scheduled_action_description #=> String
    #   resp.data.scheduled_actions[0].state #=> String, one of ["ACTIVE", "DISABLED"]
    #   resp.data.scheduled_actions[0].next_invocations #=> Array<Time>
    #   resp.data.scheduled_actions[0].next_invocations[0] #=> Time
    #   resp.data.scheduled_actions[0].start_time #=> Time
    #   resp.data.scheduled_actions[0].end_time #=> Time
    #
    def describe_scheduled_actions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeScheduledActionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeScheduledActionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeScheduledActions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ScheduledActionNotFoundFault, Errors::UnauthorizedOperation]),
        data_parser: Parsers::DescribeScheduledActions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeScheduledActions,
        stubs: @stubs,
        params_class: Params::DescribeScheduledActionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_scheduled_actions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of snapshot copy grants owned by the Amazon Web Services account in the destination
    #             region.</p>
    #         <p>
    # For more information about managing snapshot copy grants, go to
    # <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-db-encryption.html">Amazon Redshift Database Encryption</a>
    # in the <i>Amazon Redshift Cluster Management Guide</i>.
    # </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeSnapshotCopyGrantsInput}.
    #
    # @option params [String] :snapshot_copy_grant_name
    #   <p>The name of the snapshot copy grant.</p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #           <p>Default: <code>100</code>
    #           </p>
    #           <p>Constraints: minimum 20, maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <code>DescribeSnapshotCopyGrant</code> request exceed the
    #               value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #                   <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    #           <p>Constraints: You can specify either the <b>SnapshotCopyGrantName</b> parameter or the <b>Marker</b> parameter, but not both. </p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>A tag key or keys for which you want to return all matching resources that are
    #               associated with the specified key or keys. For example, suppose that you have resources
    #               tagged with keys called <code>owner</code> and <code>environment</code>. If you specify
    #               both of these tag keys in the request, Amazon Redshift returns a response with all resources
    #               that have either or both of these tag keys associated with them.</p>
    #
    # @option params [Array<String>] :tag_values
    #   <p>A tag value or values for which you want to return all matching resources that are
    #               associated with the specified value or values. For example, suppose that you have
    #               resources tagged with values called <code>admin</code> and <code>test</code>. If you
    #               specify both of these tag values in the request, Amazon Redshift returns a response with all
    #               resources that have either or both of these tag values associated with them.</p>
    #
    # @return [Types::DescribeSnapshotCopyGrantsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_snapshot_copy_grants(
    #     snapshot_copy_grant_name: 'SnapshotCopyGrantName',
    #     max_records: 1,
    #     marker: 'Marker',
    #     tag_keys: [
    #       'member'
    #     ],
    #     tag_values: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeSnapshotCopyGrantsOutput
    #   resp.data.marker #=> String
    #   resp.data.snapshot_copy_grants #=> Array<SnapshotCopyGrant>
    #   resp.data.snapshot_copy_grants[0] #=> Types::SnapshotCopyGrant
    #   resp.data.snapshot_copy_grants[0].snapshot_copy_grant_name #=> String
    #   resp.data.snapshot_copy_grants[0].kms_key_id #=> String
    #   resp.data.snapshot_copy_grants[0].tags #=> Array<Tag>
    #   resp.data.snapshot_copy_grants[0].tags[0] #=> Types::Tag
    #   resp.data.snapshot_copy_grants[0].tags[0].key #=> String
    #   resp.data.snapshot_copy_grants[0].tags[0].value #=> String
    #
    def describe_snapshot_copy_grants(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeSnapshotCopyGrantsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeSnapshotCopyGrantsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeSnapshotCopyGrants
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::SnapshotCopyGrantNotFoundFault, Errors::InvalidTagFault]),
        data_parser: Parsers::DescribeSnapshotCopyGrants
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeSnapshotCopyGrants,
        stubs: @stubs,
        params_class: Params::DescribeSnapshotCopyGrantsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_snapshot_copy_grants
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of snapshot schedules. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeSnapshotSchedulesInput}.
    #
    # @option params [String] :cluster_identifier
    #   <p>The unique identifier for the cluster whose snapshot schedules you want to
    #               view.</p>
    #
    # @option params [String] :schedule_identifier
    #   <p>A unique identifier for a snapshot schedule.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The key value for a snapshot schedule tag.</p>
    #
    # @option params [Array<String>] :tag_values
    #   <p>The value corresponding to the key of the snapshot schedule tag.</p>
    #
    # @option params [String] :marker
    #   <p>A value that indicates the starting point for the next set of response records in a
    #               subsequent request. If a value is returned in a response, you can retrieve the next set
    #               of records by providing this returned marker value in the <code>marker</code> parameter
    #               and retrying the command. If the <code>marker</code> field is empty, all response
    #               records have been retrieved for the request.</p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number or response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned <code>marker</code>
    #               value.</p>
    #
    # @return [Types::DescribeSnapshotSchedulesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_snapshot_schedules(
    #     cluster_identifier: 'ClusterIdentifier',
    #     schedule_identifier: 'ScheduleIdentifier',
    #     tag_keys: [
    #       'member'
    #     ],
    #     tag_values: [
    #       'member'
    #     ],
    #     marker: 'Marker',
    #     max_records: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeSnapshotSchedulesOutput
    #   resp.data.snapshot_schedules #=> Array<SnapshotSchedule>
    #   resp.data.snapshot_schedules[0] #=> Types::SnapshotSchedule
    #   resp.data.snapshot_schedules[0].schedule_definitions #=> Array<String>
    #   resp.data.snapshot_schedules[0].schedule_definitions[0] #=> String
    #   resp.data.snapshot_schedules[0].schedule_identifier #=> String
    #   resp.data.snapshot_schedules[0].schedule_description #=> String
    #   resp.data.snapshot_schedules[0].tags #=> Array<Tag>
    #   resp.data.snapshot_schedules[0].tags[0] #=> Types::Tag
    #   resp.data.snapshot_schedules[0].tags[0].key #=> String
    #   resp.data.snapshot_schedules[0].tags[0].value #=> String
    #   resp.data.snapshot_schedules[0].next_invocations #=> Array<Time>
    #   resp.data.snapshot_schedules[0].next_invocations[0] #=> Time
    #   resp.data.snapshot_schedules[0].associated_cluster_count #=> Integer
    #   resp.data.snapshot_schedules[0].associated_clusters #=> Array<ClusterAssociatedToSchedule>
    #   resp.data.snapshot_schedules[0].associated_clusters[0] #=> Types::ClusterAssociatedToSchedule
    #   resp.data.snapshot_schedules[0].associated_clusters[0].cluster_identifier #=> String
    #   resp.data.snapshot_schedules[0].associated_clusters[0].schedule_association_state #=> String, one of ["MODIFYING", "ACTIVE", "FAILED"]
    #   resp.data.marker #=> String
    #
    def describe_snapshot_schedules(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeSnapshotSchedulesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeSnapshotSchedulesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeSnapshotSchedules
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
        data_parser: Parsers::DescribeSnapshotSchedules
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeSnapshotSchedules,
        stubs: @stubs,
        params_class: Params::DescribeSnapshotSchedulesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_snapshot_schedules
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns account level backups storage size and provisional storage.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeStorageInput}.
    #
    # @return [Types::DescribeStorageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_storage()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeStorageOutput
    #   resp.data.total_backup_size_in_mega_bytes #=> Float
    #   resp.data.total_provisioned_storage_in_mega_bytes #=> Float
    #
    def describe_storage(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeStorageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeStorageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeStorage
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
        data_parser: Parsers::DescribeStorage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeStorage,
        stubs: @stubs,
        params_class: Params::DescribeStorageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_storage
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the status of one or more table restore requests made using the <a>RestoreTableFromClusterSnapshot</a> API action. If you don't specify a value
    #             for the <code>TableRestoreRequestId</code> parameter, then
    #                 <code>DescribeTableRestoreStatus</code> returns the status of all table restore
    #             requests ordered by the date and time of the request in ascending order. Otherwise
    #                 <code>DescribeTableRestoreStatus</code> returns the status of the table specified by
    #                 <code>TableRestoreRequestId</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeTableRestoreStatusInput}.
    #
    # @option params [String] :cluster_identifier
    #   <p>The Amazon Redshift cluster that the table is being restored to.</p>
    #
    # @option params [String] :table_restore_request_id
    #   <p>The identifier of the table restore request to return status for. If you don't
    #               specify a <code>TableRestoreRequestId</code> value, then
    #                   <code>DescribeTableRestoreStatus</code> returns the status of all in-progress table
    #               restore requests.</p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist
    #               than the specified <code>MaxRecords</code> value, a pagination token called a marker is
    #               included in the response so that the remaining results can be retrieved.</p>
    #
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous
    #                   <code>DescribeTableRestoreStatus</code> request. If this parameter is specified, the
    #               response includes only records beyond the marker, up to the value specified by the
    #                   <code>MaxRecords</code> parameter.</p>
    #
    # @return [Types::DescribeTableRestoreStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_table_restore_status(
    #     cluster_identifier: 'ClusterIdentifier',
    #     table_restore_request_id: 'TableRestoreRequestId',
    #     max_records: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeTableRestoreStatusOutput
    #   resp.data.table_restore_status_details #=> Array<TableRestoreStatus>
    #   resp.data.table_restore_status_details[0] #=> Types::TableRestoreStatus
    #   resp.data.table_restore_status_details[0].table_restore_request_id #=> String
    #   resp.data.table_restore_status_details[0].status #=> String, one of ["PENDING", "IN_PROGRESS", "SUCCEEDED", "FAILED", "CANCELED"]
    #   resp.data.table_restore_status_details[0].message #=> String
    #   resp.data.table_restore_status_details[0].request_time #=> Time
    #   resp.data.table_restore_status_details[0].progress_in_mega_bytes #=> Integer
    #   resp.data.table_restore_status_details[0].total_data_in_mega_bytes #=> Integer
    #   resp.data.table_restore_status_details[0].cluster_identifier #=> String
    #   resp.data.table_restore_status_details[0].snapshot_identifier #=> String
    #   resp.data.table_restore_status_details[0].source_database_name #=> String
    #   resp.data.table_restore_status_details[0].source_schema_name #=> String
    #   resp.data.table_restore_status_details[0].source_table_name #=> String
    #   resp.data.table_restore_status_details[0].target_database_name #=> String
    #   resp.data.table_restore_status_details[0].target_schema_name #=> String
    #   resp.data.table_restore_status_details[0].new_table_name #=> String
    #   resp.data.marker #=> String
    #
    def describe_table_restore_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeTableRestoreStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeTableRestoreStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeTableRestoreStatus
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TableRestoreNotFoundFault, Errors::ClusterNotFoundFault]),
        data_parser: Parsers::DescribeTableRestoreStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeTableRestoreStatus,
        stubs: @stubs,
        params_class: Params::DescribeTableRestoreStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_table_restore_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of tags. You can return tags from a specific resource by specifying
    #             an ARN, or you can return all tags for a given type of resource, such as clusters,
    #             snapshots, and so on.</p>
    #         <p>The following are limitations for <code>DescribeTags</code>: </p>
    #         <ul>
    #             <li>
    #                 <p>You cannot specify an ARN and a resource-type value together in the same
    #                     request.</p>
    #             </li>
    #             <li>
    #                 <p>You cannot use the <code>MaxRecords</code> and <code>Marker</code>
    #                     parameters together with the ARN parameter.</p>
    #             </li>
    #             <li>
    #                 <p>The <code>MaxRecords</code> parameter can be a range from 10 to 50 results
    #                     to return in a request.</p>
    #             </li>
    #          </ul>
    #         <p>If you specify both tag keys and tag values in the same request, Amazon Redshift returns
    #             all resources that match any combination of the specified keys and values. For example,
    #             if you have <code>owner</code> and <code>environment</code> for tag keys, and
    #                 <code>admin</code> and <code>test</code> for tag values, all resources that have any
    #             combination of those values are returned.</p>
    #         <p>If both tag keys and values are omitted from the request, resources are returned
    #             regardless of whether they have tag keys or values associated with them.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeTagsInput}.
    #
    # @option params [String] :resource_name
    #   <p>The Amazon Resource Name (ARN) for which you want to describe the tag or tags. For
    #               example, <code>arn:aws:redshift:us-east-2:123456789:cluster:t1</code>. </p>
    #
    # @option params [String] :resource_type
    #   <p>The type of resource with which you want to view tags. Valid resource types are: </p>
    #           <ul>
    #               <li>
    #                   <p>Cluster</p>
    #               </li>
    #               <li>
    #                   <p>CIDR/IP</p>
    #               </li>
    #               <li>
    #                   <p>EC2 security group</p>
    #               </li>
    #               <li>
    #                   <p>Snapshot</p>
    #               </li>
    #               <li>
    #                   <p>Cluster security group</p>
    #               </li>
    #               <li>
    #                   <p>Subnet group</p>
    #               </li>
    #               <li>
    #                   <p>HSM connection</p>
    #               </li>
    #               <li>
    #                   <p>HSM certificate</p>
    #               </li>
    #               <li>
    #                   <p>Parameter group</p>
    #               </li>
    #               <li>
    #                   <p>Snapshot copy grant</p>
    #               </li>
    #            </ul>
    #           <p>For more information about Amazon Redshift resource types and constructing ARNs, go to
    #                   <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-overview.html#redshift-iam-access-control-specify-actions">Specifying Policy Elements: Actions, Effects, Resources, and Principals</a> in
    #               the Amazon Redshift Cluster Management Guide. </p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number or response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned <code>marker</code> value.
    #           </p>
    #
    # @option params [String] :marker
    #   <p>A value that indicates the starting point for the next set of response records in a
    #               subsequent request. If a value is returned in a response, you can retrieve the next set
    #               of records by providing this returned marker value in the <code>marker</code> parameter
    #               and retrying the command. If the <code>marker</code> field is empty, all response
    #               records have been retrieved for the request. </p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>A tag key or keys for which you want to return all matching resources that are
    #               associated with the specified key or keys. For example, suppose that you have resources
    #               tagged with keys called <code>owner</code> and <code>environment</code>. If you specify
    #               both of these tag keys in the request, Amazon Redshift returns a response with all resources
    #               that have either or both of these tag keys associated with them.</p>
    #
    # @option params [Array<String>] :tag_values
    #   <p>A tag value or values for which you want to return all matching resources that are
    #               associated with the specified value or values. For example, suppose that you have
    #               resources tagged with values called <code>admin</code> and <code>test</code>. If you
    #               specify both of these tag values in the request, Amazon Redshift returns a response with all
    #               resources that have either or both of these tag values associated with them.</p>
    #
    # @return [Types::DescribeTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_tags(
    #     resource_name: 'ResourceName',
    #     resource_type: 'ResourceType',
    #     max_records: 1,
    #     marker: 'Marker',
    #     tag_keys: [
    #       'member'
    #     ],
    #     tag_values: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeTagsOutput
    #   resp.data.tagged_resources #=> Array<TaggedResource>
    #   resp.data.tagged_resources[0] #=> Types::TaggedResource
    #   resp.data.tagged_resources[0].tag #=> Types::Tag
    #   resp.data.tagged_resources[0].tag.key #=> String
    #   resp.data.tagged_resources[0].tag.value #=> String
    #   resp.data.tagged_resources[0].resource_name #=> String
    #   resp.data.tagged_resources[0].resource_type #=> String
    #   resp.data.marker #=> String
    #
    def describe_tags(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeTagsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeTagsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeTags
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundFault, Errors::InvalidTagFault]),
        data_parser: Parsers::DescribeTags
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeTags,
        stubs: @stubs,
        params_class: Params::DescribeTagsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_tags
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Shows usage limits on a cluster.
    #             Results are filtered based on the combination of input usage limit identifier, cluster identifier, and feature type parameters:</p>
    #         <ul>
    #             <li>
    #                <p>If usage limit identifier, cluster identifier, and feature type are not provided,
    #                 then all usage limit objects for the current account in the current region are returned.</p>
    #             </li>
    #             <li>
    #                <p>If usage limit identifier is provided,
    #                 then the corresponding usage limit object is returned.</p>
    #             </li>
    #             <li>
    #                <p>If cluster identifier is provided,
    #                 then all usage limit objects for the specified cluster are returned.</p>
    #             </li>
    #             <li>
    #                <p>If cluster identifier and feature type are provided,
    #                 then all usage limit objects for the combination of cluster and feature are returned.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DescribeUsageLimitsInput}.
    #
    # @option params [String] :usage_limit_id
    #   <p>The identifier of the usage limit to describe.</p>
    #
    # @option params [String] :cluster_identifier
    #   <p>The identifier of the cluster for which you want to describe usage limits.</p>
    #
    # @option params [String] :feature_type
    #   <p>The feature type for which you want to describe usage limits.</p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #           <p>Default: <code>100</code>
    #           </p>
    #           <p>Constraints: minimum 20, maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeUsageLimits</a> request
    #               exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #               <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>A tag key or keys for which you want to return all matching usage limit objects
    #               that are associated with the specified key or keys. For example, suppose that you
    #               have parameter groups that are tagged with keys called <code>owner</code> and
    #               <code>environment</code>. If you specify both of these tag keys in the request,
    #               Amazon Redshift returns a response with the usage limit objects have either or both of these
    #               tag keys associated with them.</p>
    #
    # @option params [Array<String>] :tag_values
    #   <p>A tag value or values for which you want to return all matching usage limit objects
    #               that are associated with the specified tag value or values. For example, suppose
    #               that you have parameter groups that are tagged with values called <code>admin</code> and
    #               <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift
    #               returns a response with the usage limit objects that have either or both of these tag
    #               values associated with them.</p>
    #
    # @return [Types::DescribeUsageLimitsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_usage_limits(
    #     usage_limit_id: 'UsageLimitId',
    #     cluster_identifier: 'ClusterIdentifier',
    #     feature_type: 'spectrum', # accepts ["spectrum", "concurrency-scaling", "cross-region-datasharing"]
    #     max_records: 1,
    #     marker: 'Marker',
    #     tag_keys: [
    #       'member'
    #     ],
    #     tag_values: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeUsageLimitsOutput
    #   resp.data.usage_limits #=> Array<UsageLimit>
    #   resp.data.usage_limits[0] #=> Types::UsageLimit
    #   resp.data.usage_limits[0].usage_limit_id #=> String
    #   resp.data.usage_limits[0].cluster_identifier #=> String
    #   resp.data.usage_limits[0].feature_type #=> String, one of ["spectrum", "concurrency-scaling", "cross-region-datasharing"]
    #   resp.data.usage_limits[0].limit_type #=> String, one of ["time", "data-scanned"]
    #   resp.data.usage_limits[0].amount #=> Integer
    #   resp.data.usage_limits[0].period #=> String, one of ["daily", "weekly", "monthly"]
    #   resp.data.usage_limits[0].breach_action #=> String, one of ["log", "emit-metric", "disable"]
    #   resp.data.usage_limits[0].tags #=> Array<Tag>
    #   resp.data.usage_limits[0].tags[0] #=> Types::Tag
    #   resp.data.usage_limits[0].tags[0].key #=> String
    #   resp.data.usage_limits[0].tags[0].value #=> String
    #   resp.data.marker #=> String
    #
    def describe_usage_limits(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeUsageLimitsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeUsageLimitsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeUsageLimits
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedOperationFault, Errors::ClusterNotFoundFault]),
        data_parser: Parsers::DescribeUsageLimits
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeUsageLimits,
        stubs: @stubs,
        params_class: Params::DescribeUsageLimitsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_usage_limits
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops logging information, such as queries and connection attempts, for the
    #             specified Amazon Redshift cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::DisableLoggingInput}.
    #
    # @option params [String] :cluster_identifier
    #   <p>The identifier of the cluster on which logging is to be stopped.</p>
    #           <p>Example: <code>examplecluster</code>
    #           </p>
    #
    # @return [Types::DisableLoggingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_logging(
    #     cluster_identifier: 'ClusterIdentifier' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisableLoggingOutput
    #   resp.data.logging_enabled #=> Boolean
    #   resp.data.bucket_name #=> String
    #   resp.data.s3_key_prefix #=> String
    #   resp.data.last_successful_delivery_time #=> Time
    #   resp.data.last_failure_time #=> Time
    #   resp.data.last_failure_message #=> String
    #   resp.data.log_destination_type #=> String, one of ["s3", "cloudwatch"]
    #   resp.data.log_exports #=> Array<String>
    #   resp.data.log_exports[0] #=> String
    #
    def disable_logging(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisableLoggingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisableLoggingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisableLogging
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidClusterStateFault, Errors::ClusterNotFoundFault]),
        data_parser: Parsers::DisableLogging
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisableLogging,
        stubs: @stubs,
        params_class: Params::DisableLoggingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disable_logging
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disables the automatic copying of snapshots from one region to another region for a
    #             specified cluster.</p>
    #         <p>If your cluster and its snapshots are encrypted using an encrypted symmetric key
    #             from Key Management Service, use <a>DeleteSnapshotCopyGrant</a> to delete the grant that
    #             grants Amazon Redshift permission to the key in the destination region. </p>
    #
    # @param [Hash] params
    #   See {Types::DisableSnapshotCopyInput}.
    #
    # @option params [String] :cluster_identifier
    #   <p>The unique identifier of the source cluster that you want to disable copying of
    #               snapshots to a destination region.</p>
    #           <p>Constraints: Must be the valid name of an existing cluster that has cross-region
    #               snapshot copy enabled.</p>
    #
    # @return [Types::DisableSnapshotCopyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_snapshot_copy(
    #     cluster_identifier: 'ClusterIdentifier' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisableSnapshotCopyOutput
    #   resp.data.cluster #=> Types::Cluster
    #   resp.data.cluster.cluster_identifier #=> String
    #   resp.data.cluster.node_type #=> String
    #   resp.data.cluster.cluster_status #=> String
    #   resp.data.cluster.cluster_availability_status #=> String
    #   resp.data.cluster.modify_status #=> String
    #   resp.data.cluster.master_username #=> String
    #   resp.data.cluster.db_name #=> String
    #   resp.data.cluster.endpoint #=> Types::Endpoint
    #   resp.data.cluster.endpoint.address #=> String
    #   resp.data.cluster.endpoint.port #=> Integer
    #   resp.data.cluster.endpoint.vpc_endpoints #=> Array<VpcEndpoint>
    #   resp.data.cluster.endpoint.vpc_endpoints[0] #=> Types::VpcEndpoint
    #   resp.data.cluster.endpoint.vpc_endpoints[0].vpc_endpoint_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].vpc_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces #=> Array<NetworkInterface>
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0] #=> Types::NetworkInterface
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].network_interface_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].subnet_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].private_ip_address #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].availability_zone #=> String
    #   resp.data.cluster.cluster_create_time #=> Time
    #   resp.data.cluster.automated_snapshot_retention_period #=> Integer
    #   resp.data.cluster.manual_snapshot_retention_period #=> Integer
    #   resp.data.cluster.cluster_security_groups #=> Array<ClusterSecurityGroupMembership>
    #   resp.data.cluster.cluster_security_groups[0] #=> Types::ClusterSecurityGroupMembership
    #   resp.data.cluster.cluster_security_groups[0].cluster_security_group_name #=> String
    #   resp.data.cluster.cluster_security_groups[0].status #=> String
    #   resp.data.cluster.vpc_security_groups #=> Array<VpcSecurityGroupMembership>
    #   resp.data.cluster.vpc_security_groups[0] #=> Types::VpcSecurityGroupMembership
    #   resp.data.cluster.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.data.cluster.vpc_security_groups[0].status #=> String
    #   resp.data.cluster.cluster_parameter_groups #=> Array<ClusterParameterGroupStatus>
    #   resp.data.cluster.cluster_parameter_groups[0] #=> Types::ClusterParameterGroupStatus
    #   resp.data.cluster.cluster_parameter_groups[0].parameter_group_name #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].parameter_apply_status #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list #=> Array<ClusterParameterStatus>
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0] #=> Types::ClusterParameterStatus
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_name #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_status #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_error_description #=> String
    #   resp.data.cluster.cluster_subnet_group_name #=> String
    #   resp.data.cluster.vpc_id #=> String
    #   resp.data.cluster.availability_zone #=> String
    #   resp.data.cluster.preferred_maintenance_window #=> String
    #   resp.data.cluster.pending_modified_values #=> Types::PendingModifiedValues
    #   resp.data.cluster.pending_modified_values.master_user_password #=> String
    #   resp.data.cluster.pending_modified_values.node_type #=> String
    #   resp.data.cluster.pending_modified_values.number_of_nodes #=> Integer
    #   resp.data.cluster.pending_modified_values.cluster_type #=> String
    #   resp.data.cluster.pending_modified_values.cluster_version #=> String
    #   resp.data.cluster.pending_modified_values.automated_snapshot_retention_period #=> Integer
    #   resp.data.cluster.pending_modified_values.cluster_identifier #=> String
    #   resp.data.cluster.pending_modified_values.publicly_accessible #=> Boolean
    #   resp.data.cluster.pending_modified_values.enhanced_vpc_routing #=> Boolean
    #   resp.data.cluster.pending_modified_values.maintenance_track_name #=> String
    #   resp.data.cluster.pending_modified_values.encryption_type #=> String
    #   resp.data.cluster.cluster_version #=> String
    #   resp.data.cluster.allow_version_upgrade #=> Boolean
    #   resp.data.cluster.number_of_nodes #=> Integer
    #   resp.data.cluster.publicly_accessible #=> Boolean
    #   resp.data.cluster.encrypted #=> Boolean
    #   resp.data.cluster.restore_status #=> Types::RestoreStatus
    #   resp.data.cluster.restore_status.status #=> String
    #   resp.data.cluster.restore_status.current_restore_rate_in_mega_bytes_per_second #=> Float
    #   resp.data.cluster.restore_status.snapshot_size_in_mega_bytes #=> Integer
    #   resp.data.cluster.restore_status.progress_in_mega_bytes #=> Integer
    #   resp.data.cluster.restore_status.elapsed_time_in_seconds #=> Integer
    #   resp.data.cluster.restore_status.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.data.cluster.data_transfer_progress #=> Types::DataTransferProgress
    #   resp.data.cluster.data_transfer_progress.status #=> String
    #   resp.data.cluster.data_transfer_progress.current_rate_in_mega_bytes_per_second #=> Float
    #   resp.data.cluster.data_transfer_progress.total_data_in_mega_bytes #=> Integer
    #   resp.data.cluster.data_transfer_progress.data_transferred_in_mega_bytes #=> Integer
    #   resp.data.cluster.data_transfer_progress.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.data.cluster.data_transfer_progress.elapsed_time_in_seconds #=> Integer
    #   resp.data.cluster.hsm_status #=> Types::HsmStatus
    #   resp.data.cluster.hsm_status.hsm_client_certificate_identifier #=> String
    #   resp.data.cluster.hsm_status.hsm_configuration_identifier #=> String
    #   resp.data.cluster.hsm_status.status #=> String
    #   resp.data.cluster.cluster_snapshot_copy_status #=> Types::ClusterSnapshotCopyStatus
    #   resp.data.cluster.cluster_snapshot_copy_status.destination_region #=> String
    #   resp.data.cluster.cluster_snapshot_copy_status.retention_period #=> Integer
    #   resp.data.cluster.cluster_snapshot_copy_status.manual_snapshot_retention_period #=> Integer
    #   resp.data.cluster.cluster_snapshot_copy_status.snapshot_copy_grant_name #=> String
    #   resp.data.cluster.cluster_public_key #=> String
    #   resp.data.cluster.cluster_nodes #=> Array<ClusterNode>
    #   resp.data.cluster.cluster_nodes[0] #=> Types::ClusterNode
    #   resp.data.cluster.cluster_nodes[0].node_role #=> String
    #   resp.data.cluster.cluster_nodes[0].private_ip_address #=> String
    #   resp.data.cluster.cluster_nodes[0].public_ip_address #=> String
    #   resp.data.cluster.elastic_ip_status #=> Types::ElasticIpStatus
    #   resp.data.cluster.elastic_ip_status.elastic_ip #=> String
    #   resp.data.cluster.elastic_ip_status.status #=> String
    #   resp.data.cluster.cluster_revision_number #=> String
    #   resp.data.cluster.tags #=> Array<Tag>
    #   resp.data.cluster.tags[0] #=> Types::Tag
    #   resp.data.cluster.tags[0].key #=> String
    #   resp.data.cluster.tags[0].value #=> String
    #   resp.data.cluster.kms_key_id #=> String
    #   resp.data.cluster.enhanced_vpc_routing #=> Boolean
    #   resp.data.cluster.iam_roles #=> Array<ClusterIamRole>
    #   resp.data.cluster.iam_roles[0] #=> Types::ClusterIamRole
    #   resp.data.cluster.iam_roles[0].iam_role_arn #=> String
    #   resp.data.cluster.iam_roles[0].apply_status #=> String
    #   resp.data.cluster.pending_actions #=> Array<String>
    #   resp.data.cluster.pending_actions[0] #=> String
    #   resp.data.cluster.maintenance_track_name #=> String
    #   resp.data.cluster.elastic_resize_number_of_node_options #=> String
    #   resp.data.cluster.deferred_maintenance_windows #=> Array<DeferredMaintenanceWindow>
    #   resp.data.cluster.deferred_maintenance_windows[0] #=> Types::DeferredMaintenanceWindow
    #   resp.data.cluster.deferred_maintenance_windows[0].defer_maintenance_identifier #=> String
    #   resp.data.cluster.deferred_maintenance_windows[0].defer_maintenance_start_time #=> Time
    #   resp.data.cluster.deferred_maintenance_windows[0].defer_maintenance_end_time #=> Time
    #   resp.data.cluster.snapshot_schedule_identifier #=> String
    #   resp.data.cluster.snapshot_schedule_state #=> String, one of ["MODIFYING", "ACTIVE", "FAILED"]
    #   resp.data.cluster.expected_next_snapshot_schedule_time #=> Time
    #   resp.data.cluster.expected_next_snapshot_schedule_time_status #=> String
    #   resp.data.cluster.next_maintenance_window_start_time #=> Time
    #   resp.data.cluster.resize_info #=> Types::ResizeInfo
    #   resp.data.cluster.resize_info.resize_type #=> String
    #   resp.data.cluster.resize_info.allow_cancel_resize #=> Boolean
    #   resp.data.cluster.availability_zone_relocation_status #=> String
    #   resp.data.cluster.cluster_namespace_arn #=> String
    #   resp.data.cluster.total_storage_capacity_in_mega_bytes #=> Integer
    #   resp.data.cluster.aqua_configuration #=> Types::AquaConfiguration
    #   resp.data.cluster.aqua_configuration.aqua_status #=> String, one of ["enabled", "disabled", "applying"]
    #   resp.data.cluster.aqua_configuration.aqua_configuration_status #=> String, one of ["enabled", "disabled", "auto"]
    #   resp.data.cluster.default_iam_role_arn #=> String
    #   resp.data.cluster.reserved_node_exchange_status #=> Types::ReservedNodeExchangeStatus
    #   resp.data.cluster.reserved_node_exchange_status.reserved_node_exchange_request_id #=> String
    #   resp.data.cluster.reserved_node_exchange_status.status #=> String, one of ["REQUESTED", "PENDING", "IN_PROGRESS", "RETRYING", "SUCCEEDED", "FAILED"]
    #   resp.data.cluster.reserved_node_exchange_status.request_time #=> Time
    #   resp.data.cluster.reserved_node_exchange_status.source_reserved_node_id #=> String
    #   resp.data.cluster.reserved_node_exchange_status.source_reserved_node_type #=> String
    #   resp.data.cluster.reserved_node_exchange_status.source_reserved_node_count #=> Integer
    #   resp.data.cluster.reserved_node_exchange_status.target_reserved_node_offering_id #=> String
    #   resp.data.cluster.reserved_node_exchange_status.target_reserved_node_type #=> String
    #   resp.data.cluster.reserved_node_exchange_status.target_reserved_node_count #=> Integer
    #
    def disable_snapshot_copy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisableSnapshotCopyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisableSnapshotCopyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisableSnapshotCopy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidClusterStateFault, Errors::UnauthorizedOperation, Errors::ClusterNotFoundFault, Errors::SnapshotCopyAlreadyDisabledFault]),
        data_parser: Parsers::DisableSnapshotCopy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisableSnapshotCopy,
        stubs: @stubs,
        params_class: Params::DisableSnapshotCopyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disable_snapshot_copy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>From a datashare consumer account, remove association for the specified datashare.
    #             </p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateDataShareConsumerInput}.
    #
    # @option params [String] :data_share_arn
    #   <p>The Amazon Resource Name (ARN) of the datashare to remove association for. </p>
    #
    # @option params [Boolean] :disassociate_entire_account
    #   <p>A value that specifies whether association for the datashare is removed from the
    #               entire account.</p>
    #
    # @option params [String] :consumer_arn
    #   <p>The Amazon Resource Name (ARN) of the consumer that association for
    #               the datashare is removed from.</p>
    #
    # @option params [String] :consumer_region
    #   <p>From a datashare consumer account, removes association of a datashare from all the existing and future namespaces in the specified Amazon Web Services Region.</p>
    #
    # @return [Types::DisassociateDataShareConsumerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_data_share_consumer(
    #     data_share_arn: 'DataShareArn', # required
    #     disassociate_entire_account: false,
    #     consumer_arn: 'ConsumerArn',
    #     consumer_region: 'ConsumerRegion'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateDataShareConsumerOutput
    #   resp.data.data_share_arn #=> String
    #   resp.data.producer_arn #=> String
    #   resp.data.allow_publicly_accessible_consumers #=> Boolean
    #   resp.data.data_share_associations #=> Array<DataShareAssociation>
    #   resp.data.data_share_associations[0] #=> Types::DataShareAssociation
    #   resp.data.data_share_associations[0].consumer_identifier #=> String
    #   resp.data.data_share_associations[0].status #=> String, one of ["ACTIVE", "PENDING_AUTHORIZATION", "AUTHORIZED", "DEAUTHORIZED", "REJECTED", "AVAILABLE"]
    #   resp.data.data_share_associations[0].consumer_region #=> String
    #   resp.data.data_share_associations[0].created_date #=> Time
    #   resp.data.data_share_associations[0].status_change_date #=> Time
    #   resp.data.managed_by #=> String
    #
    def disassociate_data_share_consumer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateDataShareConsumerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateDataShareConsumerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateDataShareConsumer
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidDataShareFault, Errors::InvalidNamespaceFault]),
        data_parser: Parsers::DisassociateDataShareConsumer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateDataShareConsumer,
        stubs: @stubs,
        params_class: Params::DisassociateDataShareConsumerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_data_share_consumer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts logging information, such as queries and connection attempts, for the
    #             specified Amazon Redshift cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::EnableLoggingInput}.
    #
    # @option params [String] :cluster_identifier
    #   <p>The identifier of the cluster on which logging is to be started.</p>
    #           <p>Example: <code>examplecluster</code>
    #           </p>
    #
    # @option params [String] :bucket_name
    #   <p>The name of an existing S3 bucket where the log files are to be stored.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be in the same region as the cluster</p>
    #               </li>
    #               <li>
    #                   <p>The cluster must have read bucket and put object permissions</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :s3_key_prefix
    #   <p>The prefix applied to the log file names.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Cannot exceed 512 characters</p>
    #               </li>
    #               <li>
    #                   <p>Cannot contain spaces( ), double quotes ("), single quotes ('), a backslash
    #                       (\), or control characters. The hexadecimal codes for invalid characters are: </p>
    #                   <ul>
    #                     <li>
    #                           <p>x00 to x20</p>
    #                       </li>
    #                     <li>
    #                           <p>x22</p>
    #                       </li>
    #                     <li>
    #                           <p>x27</p>
    #                       </li>
    #                     <li>
    #                           <p>x5c</p>
    #                       </li>
    #                     <li>
    #                           <p>x7f or larger</p>
    #                       </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #
    # @option params [String] :log_destination_type
    #   <p>The log destination type. An enum with possible values of <code>s3</code> and <code>cloudwatch</code>.</p>
    #
    # @option params [Array<String>] :log_exports
    #   <p>The collection of exported log types. Log types include the connection log, user log and user activity log.</p>
    #
    # @return [Types::EnableLoggingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_logging(
    #     cluster_identifier: 'ClusterIdentifier', # required
    #     bucket_name: 'BucketName',
    #     s3_key_prefix: 'S3KeyPrefix',
    #     log_destination_type: 's3', # accepts ["s3", "cloudwatch"]
    #     log_exports: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::EnableLoggingOutput
    #   resp.data.logging_enabled #=> Boolean
    #   resp.data.bucket_name #=> String
    #   resp.data.s3_key_prefix #=> String
    #   resp.data.last_successful_delivery_time #=> Time
    #   resp.data.last_failure_time #=> Time
    #   resp.data.last_failure_message #=> String
    #   resp.data.log_destination_type #=> String, one of ["s3", "cloudwatch"]
    #   resp.data.log_exports #=> Array<String>
    #   resp.data.log_exports[0] #=> String
    #
    def enable_logging(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::EnableLoggingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::EnableLoggingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::EnableLogging
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BucketNotFoundFault, Errors::InvalidClusterStateFault, Errors::InvalidS3BucketNameFault, Errors::ClusterNotFoundFault, Errors::InvalidS3KeyPrefixFault, Errors::InsufficientS3BucketPolicyFault]),
        data_parser: Parsers::EnableLogging
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::EnableLogging,
        stubs: @stubs,
        params_class: Params::EnableLoggingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :enable_logging
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Enables the automatic copy of snapshots from one region to another region for a
    #             specified cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::EnableSnapshotCopyInput}.
    #
    # @option params [String] :cluster_identifier
    #   <p>The unique identifier of the source cluster to copy snapshots from.</p>
    #           <p>Constraints: Must be the valid name of an existing cluster that does not already
    #               have cross-region snapshot copy enabled.</p>
    #
    # @option params [String] :destination_region
    #   <p>The destination Amazon Web Services Region that you want to copy snapshots to.</p>
    #           <p>Constraints: Must be the name of a valid Amazon Web Services Region. For more information, see
    #                   <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html#redshift_region">Regions and Endpoints</a> in the Amazon Web Services General Reference.
    #           </p>
    #
    # @option params [Integer] :retention_period
    #   <p>The number of days to retain automated snapshots in the destination region after
    #               they are copied from the source region.</p>
    #           <p>Default: 7.</p>
    #           <p>Constraints: Must be at least 1 and no more than 35.</p>
    #
    # @option params [String] :snapshot_copy_grant_name
    #   <p>The name of the snapshot copy grant to use when snapshots of an Amazon Web Services KMS-encrypted
    #               cluster are copied to the destination region.</p>
    #
    # @option params [Integer] :manual_snapshot_retention_period
    #   <p>The number of days to retain newly copied snapshots in the destination Amazon Web Services Region
    #               after they are copied from the source Amazon Web Services Region. If the value is -1, the manual
    #               snapshot is retained indefinitely. </p>
    #           <p>The value must be either -1 or an integer between 1 and 3,653.</p>
    #
    # @return [Types::EnableSnapshotCopyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_snapshot_copy(
    #     cluster_identifier: 'ClusterIdentifier', # required
    #     destination_region: 'DestinationRegion', # required
    #     retention_period: 1,
    #     snapshot_copy_grant_name: 'SnapshotCopyGrantName',
    #     manual_snapshot_retention_period: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::EnableSnapshotCopyOutput
    #   resp.data.cluster #=> Types::Cluster
    #   resp.data.cluster.cluster_identifier #=> String
    #   resp.data.cluster.node_type #=> String
    #   resp.data.cluster.cluster_status #=> String
    #   resp.data.cluster.cluster_availability_status #=> String
    #   resp.data.cluster.modify_status #=> String
    #   resp.data.cluster.master_username #=> String
    #   resp.data.cluster.db_name #=> String
    #   resp.data.cluster.endpoint #=> Types::Endpoint
    #   resp.data.cluster.endpoint.address #=> String
    #   resp.data.cluster.endpoint.port #=> Integer
    #   resp.data.cluster.endpoint.vpc_endpoints #=> Array<VpcEndpoint>
    #   resp.data.cluster.endpoint.vpc_endpoints[0] #=> Types::VpcEndpoint
    #   resp.data.cluster.endpoint.vpc_endpoints[0].vpc_endpoint_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].vpc_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces #=> Array<NetworkInterface>
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0] #=> Types::NetworkInterface
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].network_interface_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].subnet_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].private_ip_address #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].availability_zone #=> String
    #   resp.data.cluster.cluster_create_time #=> Time
    #   resp.data.cluster.automated_snapshot_retention_period #=> Integer
    #   resp.data.cluster.manual_snapshot_retention_period #=> Integer
    #   resp.data.cluster.cluster_security_groups #=> Array<ClusterSecurityGroupMembership>
    #   resp.data.cluster.cluster_security_groups[0] #=> Types::ClusterSecurityGroupMembership
    #   resp.data.cluster.cluster_security_groups[0].cluster_security_group_name #=> String
    #   resp.data.cluster.cluster_security_groups[0].status #=> String
    #   resp.data.cluster.vpc_security_groups #=> Array<VpcSecurityGroupMembership>
    #   resp.data.cluster.vpc_security_groups[0] #=> Types::VpcSecurityGroupMembership
    #   resp.data.cluster.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.data.cluster.vpc_security_groups[0].status #=> String
    #   resp.data.cluster.cluster_parameter_groups #=> Array<ClusterParameterGroupStatus>
    #   resp.data.cluster.cluster_parameter_groups[0] #=> Types::ClusterParameterGroupStatus
    #   resp.data.cluster.cluster_parameter_groups[0].parameter_group_name #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].parameter_apply_status #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list #=> Array<ClusterParameterStatus>
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0] #=> Types::ClusterParameterStatus
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_name #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_status #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_error_description #=> String
    #   resp.data.cluster.cluster_subnet_group_name #=> String
    #   resp.data.cluster.vpc_id #=> String
    #   resp.data.cluster.availability_zone #=> String
    #   resp.data.cluster.preferred_maintenance_window #=> String
    #   resp.data.cluster.pending_modified_values #=> Types::PendingModifiedValues
    #   resp.data.cluster.pending_modified_values.master_user_password #=> String
    #   resp.data.cluster.pending_modified_values.node_type #=> String
    #   resp.data.cluster.pending_modified_values.number_of_nodes #=> Integer
    #   resp.data.cluster.pending_modified_values.cluster_type #=> String
    #   resp.data.cluster.pending_modified_values.cluster_version #=> String
    #   resp.data.cluster.pending_modified_values.automated_snapshot_retention_period #=> Integer
    #   resp.data.cluster.pending_modified_values.cluster_identifier #=> String
    #   resp.data.cluster.pending_modified_values.publicly_accessible #=> Boolean
    #   resp.data.cluster.pending_modified_values.enhanced_vpc_routing #=> Boolean
    #   resp.data.cluster.pending_modified_values.maintenance_track_name #=> String
    #   resp.data.cluster.pending_modified_values.encryption_type #=> String
    #   resp.data.cluster.cluster_version #=> String
    #   resp.data.cluster.allow_version_upgrade #=> Boolean
    #   resp.data.cluster.number_of_nodes #=> Integer
    #   resp.data.cluster.publicly_accessible #=> Boolean
    #   resp.data.cluster.encrypted #=> Boolean
    #   resp.data.cluster.restore_status #=> Types::RestoreStatus
    #   resp.data.cluster.restore_status.status #=> String
    #   resp.data.cluster.restore_status.current_restore_rate_in_mega_bytes_per_second #=> Float
    #   resp.data.cluster.restore_status.snapshot_size_in_mega_bytes #=> Integer
    #   resp.data.cluster.restore_status.progress_in_mega_bytes #=> Integer
    #   resp.data.cluster.restore_status.elapsed_time_in_seconds #=> Integer
    #   resp.data.cluster.restore_status.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.data.cluster.data_transfer_progress #=> Types::DataTransferProgress
    #   resp.data.cluster.data_transfer_progress.status #=> String
    #   resp.data.cluster.data_transfer_progress.current_rate_in_mega_bytes_per_second #=> Float
    #   resp.data.cluster.data_transfer_progress.total_data_in_mega_bytes #=> Integer
    #   resp.data.cluster.data_transfer_progress.data_transferred_in_mega_bytes #=> Integer
    #   resp.data.cluster.data_transfer_progress.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.data.cluster.data_transfer_progress.elapsed_time_in_seconds #=> Integer
    #   resp.data.cluster.hsm_status #=> Types::HsmStatus
    #   resp.data.cluster.hsm_status.hsm_client_certificate_identifier #=> String
    #   resp.data.cluster.hsm_status.hsm_configuration_identifier #=> String
    #   resp.data.cluster.hsm_status.status #=> String
    #   resp.data.cluster.cluster_snapshot_copy_status #=> Types::ClusterSnapshotCopyStatus
    #   resp.data.cluster.cluster_snapshot_copy_status.destination_region #=> String
    #   resp.data.cluster.cluster_snapshot_copy_status.retention_period #=> Integer
    #   resp.data.cluster.cluster_snapshot_copy_status.manual_snapshot_retention_period #=> Integer
    #   resp.data.cluster.cluster_snapshot_copy_status.snapshot_copy_grant_name #=> String
    #   resp.data.cluster.cluster_public_key #=> String
    #   resp.data.cluster.cluster_nodes #=> Array<ClusterNode>
    #   resp.data.cluster.cluster_nodes[0] #=> Types::ClusterNode
    #   resp.data.cluster.cluster_nodes[0].node_role #=> String
    #   resp.data.cluster.cluster_nodes[0].private_ip_address #=> String
    #   resp.data.cluster.cluster_nodes[0].public_ip_address #=> String
    #   resp.data.cluster.elastic_ip_status #=> Types::ElasticIpStatus
    #   resp.data.cluster.elastic_ip_status.elastic_ip #=> String
    #   resp.data.cluster.elastic_ip_status.status #=> String
    #   resp.data.cluster.cluster_revision_number #=> String
    #   resp.data.cluster.tags #=> Array<Tag>
    #   resp.data.cluster.tags[0] #=> Types::Tag
    #   resp.data.cluster.tags[0].key #=> String
    #   resp.data.cluster.tags[0].value #=> String
    #   resp.data.cluster.kms_key_id #=> String
    #   resp.data.cluster.enhanced_vpc_routing #=> Boolean
    #   resp.data.cluster.iam_roles #=> Array<ClusterIamRole>
    #   resp.data.cluster.iam_roles[0] #=> Types::ClusterIamRole
    #   resp.data.cluster.iam_roles[0].iam_role_arn #=> String
    #   resp.data.cluster.iam_roles[0].apply_status #=> String
    #   resp.data.cluster.pending_actions #=> Array<String>
    #   resp.data.cluster.pending_actions[0] #=> String
    #   resp.data.cluster.maintenance_track_name #=> String
    #   resp.data.cluster.elastic_resize_number_of_node_options #=> String
    #   resp.data.cluster.deferred_maintenance_windows #=> Array<DeferredMaintenanceWindow>
    #   resp.data.cluster.deferred_maintenance_windows[0] #=> Types::DeferredMaintenanceWindow
    #   resp.data.cluster.deferred_maintenance_windows[0].defer_maintenance_identifier #=> String
    #   resp.data.cluster.deferred_maintenance_windows[0].defer_maintenance_start_time #=> Time
    #   resp.data.cluster.deferred_maintenance_windows[0].defer_maintenance_end_time #=> Time
    #   resp.data.cluster.snapshot_schedule_identifier #=> String
    #   resp.data.cluster.snapshot_schedule_state #=> String, one of ["MODIFYING", "ACTIVE", "FAILED"]
    #   resp.data.cluster.expected_next_snapshot_schedule_time #=> Time
    #   resp.data.cluster.expected_next_snapshot_schedule_time_status #=> String
    #   resp.data.cluster.next_maintenance_window_start_time #=> Time
    #   resp.data.cluster.resize_info #=> Types::ResizeInfo
    #   resp.data.cluster.resize_info.resize_type #=> String
    #   resp.data.cluster.resize_info.allow_cancel_resize #=> Boolean
    #   resp.data.cluster.availability_zone_relocation_status #=> String
    #   resp.data.cluster.cluster_namespace_arn #=> String
    #   resp.data.cluster.total_storage_capacity_in_mega_bytes #=> Integer
    #   resp.data.cluster.aqua_configuration #=> Types::AquaConfiguration
    #   resp.data.cluster.aqua_configuration.aqua_status #=> String, one of ["enabled", "disabled", "applying"]
    #   resp.data.cluster.aqua_configuration.aqua_configuration_status #=> String, one of ["enabled", "disabled", "auto"]
    #   resp.data.cluster.default_iam_role_arn #=> String
    #   resp.data.cluster.reserved_node_exchange_status #=> Types::ReservedNodeExchangeStatus
    #   resp.data.cluster.reserved_node_exchange_status.reserved_node_exchange_request_id #=> String
    #   resp.data.cluster.reserved_node_exchange_status.status #=> String, one of ["REQUESTED", "PENDING", "IN_PROGRESS", "RETRYING", "SUCCEEDED", "FAILED"]
    #   resp.data.cluster.reserved_node_exchange_status.request_time #=> Time
    #   resp.data.cluster.reserved_node_exchange_status.source_reserved_node_id #=> String
    #   resp.data.cluster.reserved_node_exchange_status.source_reserved_node_type #=> String
    #   resp.data.cluster.reserved_node_exchange_status.source_reserved_node_count #=> Integer
    #   resp.data.cluster.reserved_node_exchange_status.target_reserved_node_offering_id #=> String
    #   resp.data.cluster.reserved_node_exchange_status.target_reserved_node_type #=> String
    #   resp.data.cluster.reserved_node_exchange_status.target_reserved_node_count #=> Integer
    #
    def enable_snapshot_copy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::EnableSnapshotCopyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::EnableSnapshotCopyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::EnableSnapshotCopy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::SnapshotCopyGrantNotFoundFault, Errors::InvalidClusterStateFault, Errors::CopyToRegionDisabledFault, Errors::UnknownSnapshotCopyRegionFault, Errors::InvalidRetentionPeriodFault, Errors::UnauthorizedOperation, Errors::DependentServiceRequestThrottlingFault, Errors::ClusterNotFoundFault, Errors::LimitExceededFault, Errors::SnapshotCopyAlreadyEnabledFault, Errors::IncompatibleOrderableOptions]),
        data_parser: Parsers::EnableSnapshotCopy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::EnableSnapshotCopy,
        stubs: @stubs,
        params_class: Params::EnableSnapshotCopyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :enable_snapshot_copy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a database user name and temporary password with temporary authorization to
    #             log on to an Amazon Redshift database. The action returns the database user name
    #             prefixed with <code>IAM:</code> if <code>AutoCreate</code> is <code>False</code> or
    #                 <code>IAMA:</code> if <code>AutoCreate</code> is <code>True</code>. You can
    #             optionally specify one or more database user groups that the user will join at log on.
    #             By default, the temporary credentials expire in 900 seconds. You can optionally specify
    #             a duration between 900 seconds (15 minutes) and 3600 seconds (60 minutes). For more
    #             information, see <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/generating-user-credentials.html">Using IAM Authentication
    #                 to Generate Database User Credentials</a> in the Amazon Redshift Cluster Management Guide.</p>
    #         <p>The Identity and Access Management (IAM) user or role that runs
    #             GetClusterCredentials must have an IAM policy attached that allows access to all
    #             necessary actions and resources. For more information about permissions, see <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-identity-based.html#redshift-policy-resources.getclustercredentials-resources">Resource Policies for GetClusterCredentials</a> in the
    #             Amazon Redshift Cluster Management Guide.</p>
    #         <p>If the <code>DbGroups</code> parameter is specified, the IAM policy must allow the
    #                 <code>redshift:JoinGroup</code> action with access to the listed
    #                 <code>dbgroups</code>. </p>
    #         <p>In addition, if the <code>AutoCreate</code> parameter is set to <code>True</code>,
    #             then the policy must include the <code>redshift:CreateClusterUser</code>
    #             permission.</p>
    #         <p>If the <code>DbName</code> parameter is specified, the IAM policy must allow access
    #             to the resource <code>dbname</code> for the specified database name. </p>
    #
    # @param [Hash] params
    #   See {Types::GetClusterCredentialsInput}.
    #
    # @option params [String] :db_user
    #   <p>The name of a database user. If a user name matching <code>DbUser</code> exists in
    #               the database, the temporary user credentials have the same permissions as the existing
    #               user. If <code>DbUser</code> doesn't exist in the database and <code>Autocreate</code>
    #               is <code>True</code>, a new user is created using the value for <code>DbUser</code> with
    #               PUBLIC permissions. If a database user matching the value for <code>DbUser</code>
    #               doesn't exist and <code>Autocreate</code> is <code>False</code>, then the command
    #               succeeds but the connection attempt will fail because the user doesn't exist in the
    #               database.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/redshift/latest/dg/r_CREATE_USER.html">CREATE USER</a> in the Amazon
    #               Redshift Database Developer Guide. </p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be 1 to 64 alphanumeric characters or hyphens. The user name can't be
    #                           <code>PUBLIC</code>.</p>
    #               </li>
    #               <li>
    #                   <p>Must contain only lowercase letters, numbers, underscore, plus sign, period
    #                       (dot), at symbol (@), or hyphen.</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                   <p>Must not contain a colon ( : ) or slash ( / ). </p>
    #               </li>
    #               <li>
    #                   <p>Cannot be a reserved word. A list of reserved words can be found in <a href="http://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html">Reserved Words</a> in the Amazon
    #                       Redshift Database Developer Guide.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :db_name
    #   <p>The name of a database that <code>DbUser</code> is authorized to log on to. If
    #                   <code>DbName</code> is not specified, <code>DbUser</code> can log on to any existing
    #               database.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be 1 to 64 alphanumeric characters or hyphens</p>
    #               </li>
    #               <li>
    #                   <p>Must contain only lowercase letters, numbers, underscore, plus sign, period
    #                       (dot), at symbol (@), or hyphen.</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                   <p>Must not contain a colon ( : ) or slash ( / ). </p>
    #               </li>
    #               <li>
    #                   <p>Cannot be a reserved word. A list of reserved words can be found in <a href="http://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html">Reserved Words</a> in the Amazon
    #                       Redshift Database Developer Guide.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :cluster_identifier
    #   <p>The unique identifier of the cluster that contains the database for which you are
    #               requesting credentials. This parameter is case sensitive.</p>
    #
    # @option params [Integer] :duration_seconds
    #   <p>The number of seconds until the returned temporary password expires.</p>
    #           <p>Constraint: minimum 900, maximum 3600.</p>
    #           <p>Default: 900</p>
    #
    # @option params [Boolean] :auto_create
    #   <p>Create a database user with the name specified for the user named in
    #                   <code>DbUser</code> if one does not exist.</p>
    #
    # @option params [Array<String>] :db_groups
    #   <p>A list of the names of existing database groups that the user named in
    #                   <code>DbUser</code> will join for the current session, in addition to any group
    #               memberships for an existing user. If not specified, a new user is added only to
    #               PUBLIC.</p>
    #           <p>Database group name constraints</p>
    #           <ul>
    #               <li>
    #                   <p>Must be 1 to 64 alphanumeric characters or hyphens</p>
    #               </li>
    #               <li>
    #                   <p>Must contain only lowercase letters, numbers, underscore, plus sign, period
    #                       (dot), at symbol (@), or hyphen.</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                   <p>Must not contain a colon ( : ) or slash ( / ). </p>
    #               </li>
    #               <li>
    #                   <p>Cannot be a reserved word. A list of reserved words can be found in <a href="http://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html">Reserved Words</a> in the Amazon
    #                       Redshift Database Developer Guide.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::GetClusterCredentialsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_cluster_credentials(
    #     db_user: 'DbUser', # required
    #     db_name: 'DbName',
    #     cluster_identifier: 'ClusterIdentifier', # required
    #     duration_seconds: 1,
    #     auto_create: false,
    #     db_groups: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetClusterCredentialsOutput
    #   resp.data.db_user #=> String
    #   resp.data.db_password #=> String
    #   resp.data.expiration #=> Time
    #
    def get_cluster_credentials(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetClusterCredentialsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetClusterCredentialsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetClusterCredentials
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedOperationFault, Errors::ClusterNotFoundFault]),
        data_parser: Parsers::GetClusterCredentials
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetClusterCredentials,
        stubs: @stubs,
        params_class: Params::GetClusterCredentialsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_cluster_credentials
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a database user name and temporary password with temporary authorization to
    #             log in to an Amazon Redshift database.
    #             The database user is mapped 1:1 to the source Identity and Access Management (IAM) identity.
    #             For more information about IAM identities, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id.html">IAM Identities (users, user groups, and roles)</a> in the
    #             Amazon Web Services Identity and Access Management User Guide.</p>
    #         <p>The Identity and Access Management (IAM) identity that runs
    #             this operation must have an IAM policy attached that allows access to all
    #             necessary actions and resources.
    #                 For more information about permissions, see <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-identity-based.html">Using identity-based policies (IAM policies)</a> in the
    #             Amazon Redshift Cluster Management Guide. </p>
    #
    # @param [Hash] params
    #   See {Types::GetClusterCredentialsWithIAMInput}.
    #
    # @option params [String] :db_name
    #   <p>The name of the database for which you are requesting credentials.
    #               If the database name is specified, the IAM policy must allow access to the resource <code>dbname</code> for the specified database name.
    #               If the database name is not specified, access to all databases is allowed.</p>
    #
    # @option params [String] :cluster_identifier
    #   <p>The unique identifier of the cluster that contains the database for which you are
    #               requesting credentials. </p>
    #
    # @option params [Integer] :duration_seconds
    #   <p>The number of seconds until the returned temporary password expires.</p>
    #           <p>Range: 900-3600. Default: 900.</p>
    #
    # @return [Types::GetClusterCredentialsWithIAMOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_cluster_credentials_with_iam(
    #     db_name: 'DbName',
    #     cluster_identifier: 'ClusterIdentifier', # required
    #     duration_seconds: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetClusterCredentialsWithIAMOutput
    #   resp.data.db_user #=> String
    #   resp.data.db_password #=> String
    #   resp.data.expiration #=> Time
    #   resp.data.next_refresh_time #=> Time
    #
    def get_cluster_credentials_with_iam(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetClusterCredentialsWithIAMInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetClusterCredentialsWithIAMInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetClusterCredentialsWithIAM
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedOperationFault, Errors::ClusterNotFoundFault]),
        data_parser: Parsers::GetClusterCredentialsWithIAM
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetClusterCredentialsWithIAM,
        stubs: @stubs,
        params_class: Params::GetClusterCredentialsWithIAMOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_cluster_credentials_with_iam
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the configuration options for the reserved-node exchange. These options
    #             include information about the source reserved node and target reserved node offering.
    #             Details include the node type, the price, the node count, and the offering type.</p>
    #
    # @param [Hash] params
    #   See {Types::GetReservedNodeExchangeConfigurationOptionsInput}.
    #
    # @option params [String] :action_type
    #   <p>The action type of the reserved-node configuration. The action type can be an exchange initiated from either a snapshot or a resize.</p>
    #
    # @option params [String] :cluster_identifier
    #   <p>The identifier for the cluster that is the source for a reserved-node exchange.</p>
    #
    # @option params [String] :snapshot_identifier
    #   <p>The identifier for the snapshot that is the source for the reserved-node exchange.</p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>Marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value.</p>
    #
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous <code>GetReservedNodeExchangeConfigurationOptions</code> request. If this
    #               parameter is specified, the response includes only records beyond the marker, up to the value
    #               specified by the <code>MaxRecords</code> parameter. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request.</p>
    #
    # @return [Types::GetReservedNodeExchangeConfigurationOptionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_reserved_node_exchange_configuration_options(
    #     action_type: 'restore-cluster', # required - accepts ["restore-cluster", "resize-cluster"]
    #     cluster_identifier: 'ClusterIdentifier',
    #     snapshot_identifier: 'SnapshotIdentifier',
    #     max_records: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetReservedNodeExchangeConfigurationOptionsOutput
    #   resp.data.marker #=> String
    #   resp.data.reserved_node_configuration_option_list #=> Array<ReservedNodeConfigurationOption>
    #   resp.data.reserved_node_configuration_option_list[0] #=> Types::ReservedNodeConfigurationOption
    #   resp.data.reserved_node_configuration_option_list[0].source_reserved_node #=> Types::ReservedNode
    #   resp.data.reserved_node_configuration_option_list[0].source_reserved_node.reserved_node_id #=> String
    #   resp.data.reserved_node_configuration_option_list[0].source_reserved_node.reserved_node_offering_id #=> String
    #   resp.data.reserved_node_configuration_option_list[0].source_reserved_node.node_type #=> String
    #   resp.data.reserved_node_configuration_option_list[0].source_reserved_node.start_time #=> Time
    #   resp.data.reserved_node_configuration_option_list[0].source_reserved_node.duration #=> Integer
    #   resp.data.reserved_node_configuration_option_list[0].source_reserved_node.fixed_price #=> Float
    #   resp.data.reserved_node_configuration_option_list[0].source_reserved_node.usage_price #=> Float
    #   resp.data.reserved_node_configuration_option_list[0].source_reserved_node.currency_code #=> String
    #   resp.data.reserved_node_configuration_option_list[0].source_reserved_node.node_count #=> Integer
    #   resp.data.reserved_node_configuration_option_list[0].source_reserved_node.state #=> String
    #   resp.data.reserved_node_configuration_option_list[0].source_reserved_node.offering_type #=> String
    #   resp.data.reserved_node_configuration_option_list[0].source_reserved_node.recurring_charges #=> Array<RecurringCharge>
    #   resp.data.reserved_node_configuration_option_list[0].source_reserved_node.recurring_charges[0] #=> Types::RecurringCharge
    #   resp.data.reserved_node_configuration_option_list[0].source_reserved_node.recurring_charges[0].recurring_charge_amount #=> Float
    #   resp.data.reserved_node_configuration_option_list[0].source_reserved_node.recurring_charges[0].recurring_charge_frequency #=> String
    #   resp.data.reserved_node_configuration_option_list[0].source_reserved_node.reserved_node_offering_type #=> String, one of ["Regular", "Upgradable"]
    #   resp.data.reserved_node_configuration_option_list[0].target_reserved_node_count #=> Integer
    #   resp.data.reserved_node_configuration_option_list[0].target_reserved_node_offering #=> Types::ReservedNodeOffering
    #   resp.data.reserved_node_configuration_option_list[0].target_reserved_node_offering.reserved_node_offering_id #=> String
    #   resp.data.reserved_node_configuration_option_list[0].target_reserved_node_offering.node_type #=> String
    #   resp.data.reserved_node_configuration_option_list[0].target_reserved_node_offering.duration #=> Integer
    #   resp.data.reserved_node_configuration_option_list[0].target_reserved_node_offering.fixed_price #=> Float
    #   resp.data.reserved_node_configuration_option_list[0].target_reserved_node_offering.usage_price #=> Float
    #   resp.data.reserved_node_configuration_option_list[0].target_reserved_node_offering.currency_code #=> String
    #   resp.data.reserved_node_configuration_option_list[0].target_reserved_node_offering.offering_type #=> String
    #   resp.data.reserved_node_configuration_option_list[0].target_reserved_node_offering.recurring_charges #=> Array<RecurringCharge>
    #   resp.data.reserved_node_configuration_option_list[0].target_reserved_node_offering.reserved_node_offering_type #=> String, one of ["Regular", "Upgradable"]
    #
    def get_reserved_node_exchange_configuration_options(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetReservedNodeExchangeConfigurationOptionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetReservedNodeExchangeConfigurationOptionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetReservedNodeExchangeConfigurationOptions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ReservedNodeAlreadyMigratedFault, Errors::UnsupportedOperationFault, Errors::InvalidReservedNodeStateFault, Errors::ClusterSnapshotNotFoundFault, Errors::ReservedNodeOfferingNotFoundFault, Errors::DependentServiceUnavailableFault, Errors::ClusterNotFoundFault, Errors::ReservedNodeNotFoundFault]),
        data_parser: Parsers::GetReservedNodeExchangeConfigurationOptions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetReservedNodeExchangeConfigurationOptions,
        stubs: @stubs,
        params_class: Params::GetReservedNodeExchangeConfigurationOptionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_reserved_node_exchange_configuration_options
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns an array of DC2 ReservedNodeOfferings that matches the payment type, term,
    #             and usage price of the given DC1 reserved node.</p>
    #
    # @param [Hash] params
    #   See {Types::GetReservedNodeExchangeOfferingsInput}.
    #
    # @option params [String] :reserved_node_id
    #   <p>A string representing the node identifier for the DC1 Reserved Node to be
    #               exchanged.</p>
    #
    # @option params [Integer] :max_records
    #   <p>An integer setting the maximum number of ReservedNodeOfferings to
    #               retrieve.</p>
    #
    # @option params [String] :marker
    #   <p>A value that indicates the starting point for the next set of
    #               ReservedNodeOfferings.</p>
    #
    # @return [Types::GetReservedNodeExchangeOfferingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_reserved_node_exchange_offerings(
    #     reserved_node_id: 'ReservedNodeId', # required
    #     max_records: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetReservedNodeExchangeOfferingsOutput
    #   resp.data.marker #=> String
    #   resp.data.reserved_node_offerings #=> Array<ReservedNodeOffering>
    #   resp.data.reserved_node_offerings[0] #=> Types::ReservedNodeOffering
    #   resp.data.reserved_node_offerings[0].reserved_node_offering_id #=> String
    #   resp.data.reserved_node_offerings[0].node_type #=> String
    #   resp.data.reserved_node_offerings[0].duration #=> Integer
    #   resp.data.reserved_node_offerings[0].fixed_price #=> Float
    #   resp.data.reserved_node_offerings[0].usage_price #=> Float
    #   resp.data.reserved_node_offerings[0].currency_code #=> String
    #   resp.data.reserved_node_offerings[0].offering_type #=> String
    #   resp.data.reserved_node_offerings[0].recurring_charges #=> Array<RecurringCharge>
    #   resp.data.reserved_node_offerings[0].recurring_charges[0] #=> Types::RecurringCharge
    #   resp.data.reserved_node_offerings[0].recurring_charges[0].recurring_charge_amount #=> Float
    #   resp.data.reserved_node_offerings[0].recurring_charges[0].recurring_charge_frequency #=> String
    #   resp.data.reserved_node_offerings[0].reserved_node_offering_type #=> String, one of ["Regular", "Upgradable"]
    #
    def get_reserved_node_exchange_offerings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetReservedNodeExchangeOfferingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetReservedNodeExchangeOfferingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetReservedNodeExchangeOfferings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ReservedNodeAlreadyMigratedFault, Errors::UnsupportedOperationFault, Errors::InvalidReservedNodeStateFault, Errors::ReservedNodeOfferingNotFoundFault, Errors::DependentServiceUnavailableFault, Errors::ReservedNodeNotFoundFault]),
        data_parser: Parsers::GetReservedNodeExchangeOfferings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetReservedNodeExchangeOfferings,
        stubs: @stubs,
        params_class: Params::GetReservedNodeExchangeOfferingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_reserved_node_exchange_offerings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies whether a cluster can use AQUA (Advanced Query Accelerator). </p>
    #
    # @param [Hash] params
    #   See {Types::ModifyAquaConfigurationInput}.
    #
    # @option params [String] :cluster_identifier
    #   <p>The identifier of the cluster to be modified.</p>
    #
    # @option params [String] :aqua_configuration_status
    #   <p>The new value of AQUA configuration status. Possible values include the following.</p>
    #           <ul>
    #               <li>
    #                  <p>enabled - Use AQUA if it is available for the current Amazon Web Services Region and Amazon Redshift node type.</p>
    #               </li>
    #               <li>
    #                  <p>disabled - Don't use AQUA. </p>
    #               </li>
    #               <li>
    #                  <p>auto - Amazon Redshift determines whether to use AQUA.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::ModifyAquaConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_aqua_configuration(
    #     cluster_identifier: 'ClusterIdentifier', # required
    #     aqua_configuration_status: 'enabled' # accepts ["enabled", "disabled", "auto"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifyAquaConfigurationOutput
    #   resp.data.aqua_configuration #=> Types::AquaConfiguration
    #   resp.data.aqua_configuration.aqua_status #=> String, one of ["enabled", "disabled", "applying"]
    #   resp.data.aqua_configuration.aqua_configuration_status #=> String, one of ["enabled", "disabled", "auto"]
    #
    def modify_aqua_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyAquaConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifyAquaConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifyAquaConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedOperationFault, Errors::InvalidClusterStateFault, Errors::ClusterNotFoundFault]),
        data_parser: Parsers::ModifyAquaConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifyAquaConfiguration,
        stubs: @stubs,
        params_class: Params::ModifyAquaConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_aqua_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies an authentication profile.</p>
    #
    # @param [Hash] params
    #   See {Types::ModifyAuthenticationProfileInput}.
    #
    # @option params [String] :authentication_profile_name
    #   <p>The name of the authentication profile to replace.</p>
    #
    # @option params [String] :authentication_profile_content
    #   <p>The new content of the authentication profile in JSON format.
    #               The maximum length of the JSON string is determined by a quota for your account.</p>
    #
    # @return [Types::ModifyAuthenticationProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_authentication_profile(
    #     authentication_profile_name: 'AuthenticationProfileName', # required
    #     authentication_profile_content: 'AuthenticationProfileContent' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifyAuthenticationProfileOutput
    #   resp.data.authentication_profile_name #=> String
    #   resp.data.authentication_profile_content #=> String
    #
    def modify_authentication_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyAuthenticationProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifyAuthenticationProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifyAuthenticationProfile
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AuthenticationProfileQuotaExceededFault, Errors::InvalidAuthenticationProfileRequestFault, Errors::AuthenticationProfileNotFoundFault]),
        data_parser: Parsers::ModifyAuthenticationProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifyAuthenticationProfile,
        stubs: @stubs,
        params_class: Params::ModifyAuthenticationProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_authentication_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies the settings for a cluster.</p>
    #         <p>You can also change node type and the number of nodes to scale up or down the
    #             cluster. When resizing a cluster, you must specify both the number of nodes and the node
    #             type even if one of the parameters does not change.</p>
    # 		       <p>You can add another security or
    #             parameter group, or change the admin user password. Resetting a cluster password or modifying the security groups associated with a cluster do not need a reboot. However, modifying a parameter group requires a reboot for parameters to take effect.
    # For more information about managing clusters, go to
    # <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html">Amazon Redshift Clusters</a>
    # in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ModifyClusterInput}.
    #
    # @option params [String] :cluster_identifier
    #   <p>The unique identifier of the cluster to be modified.</p>
    #           <p>Example: <code>examplecluster</code>
    #           </p>
    #
    # @option params [String] :cluster_type
    #   <p>The new cluster type.</p>
    #           <p>When you submit your cluster resize request, your existing cluster goes into a
    #               read-only mode. After Amazon Redshift provisions a new cluster based on your resize
    #               requirements, there will be outage for a period while the old cluster is deleted and
    #               your connection is switched to the new cluster. You can use <a>DescribeResize</a> to track the progress of the resize request. </p>
    #           <p>Valid Values: <code> multi-node | single-node </code>
    #           </p>
    #
    # @option params [String] :node_type
    #   <p>The new node type of the cluster. If you specify a new node type, you must also
    #               specify the number of nodes parameter.</p>
    #           <p>
    #   For more information about resizing clusters, go to
    #   <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/rs-resize-tutorial.html">Resizing Clusters in Amazon Redshift</a>
    #   in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    #
    #           <p>Valid Values: <code>ds2.xlarge</code> | <code>ds2.8xlarge</code> |
    #               <code>dc1.large</code> | <code>dc1.8xlarge</code> |
    #               <code>dc2.large</code> | <code>dc2.8xlarge</code> |
    #               <code>ra3.xlplus</code> |  <code>ra3.4xlarge</code> | <code>ra3.16xlarge</code>
    #            </p>
    #
    # @option params [Integer] :number_of_nodes
    #   <p>The new number of nodes of the cluster. If you specify a new number of nodes, you
    #               must also specify the node type parameter.</p>
    #           <p>
    #   For more information about resizing clusters, go to
    #   <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/rs-resize-tutorial.html">Resizing Clusters in Amazon Redshift</a>
    #   in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    #
    #           <p>Valid Values: Integer greater than <code>0</code>.</p>
    #
    # @option params [Array<String>] :cluster_security_groups
    #   <p>A list of cluster security groups to be authorized on this cluster. This change is
    #               asynchronously applied as soon as possible.</p>
    #           <p>Security groups currently associated with the cluster, and not in the list of
    #               groups to apply, will be revoked from the cluster.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be 1 to 255 alphanumeric characters or hyphens</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter</p>
    #               </li>
    #               <li>
    #                   <p>Cannot end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #            </ul>
    #
    # @option params [Array<String>] :vpc_security_group_ids
    #   <p>A list of virtual private cloud (VPC) security groups to be associated with the
    #               cluster. This change is asynchronously applied as soon as possible.</p>
    #
    # @option params [String] :master_user_password
    #   <p>The new password for the cluster admin user. This change is asynchronously applied
    #               as soon as possible. Between the time of the request and the completion of the request,
    #               the <code>MasterUserPassword</code> element exists in the
    #                   <code>PendingModifiedValues</code> element of the operation response. </p>
    #           <note>
    #               <p>Operations never return the password, so this operation provides a way to
    #                   regain access to the admin user account for a cluster if the password is
    #                   lost.</p>
    #           </note>
    #           <p>Default: Uses existing setting.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be between 8 and 64 characters in length.</p>
    #               </li>
    #               <li>
    #                   <p>Must contain at least one uppercase letter.</p>
    #               </li>
    #               <li>
    #                   <p>Must contain at least one lowercase letter.</p>
    #               </li>
    #               <li>
    #                   <p>Must contain one number.</p>
    #               </li>
    #               <li>
    #                   <p>Can be any printable ASCII character (ASCII code 33-126) except <code>'</code>
    #                       (single quote), <code>"</code> (double quote), <code>\</code>, <code>/</code>, or <code>@</code>.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :cluster_parameter_group_name
    #   <p>The name of the cluster parameter group to apply to this cluster. This change is
    #               applied only after the cluster is rebooted. To reboot a cluster use <a>RebootCluster</a>. </p>
    #           <p>Default: Uses existing setting.</p>
    #           <p>Constraints: The cluster parameter group must be in the same parameter group family
    #               that matches the cluster version.</p>
    #
    # @option params [Integer] :automated_snapshot_retention_period
    #   <p>The number of days that automated snapshots are retained. If the value is 0,
    #               automated snapshots are disabled. Even if automated snapshots are disabled, you can
    #               still create manual snapshots when you want with <a>CreateClusterSnapshot</a>. </p>
    #           <p>If you decrease the automated snapshot retention period from its current value,
    #               existing automated snapshots that fall outside of the new retention period will be
    #               immediately deleted.</p>
    #
    #           <p>You can't disable automated snapshots for RA3 node types. Set the automated retention period from 1-35 days.</p>
    #           <p>Default: Uses existing setting.</p>
    #           <p>Constraints: Must be a value from 0 to 35.</p>
    #
    # @option params [Integer] :manual_snapshot_retention_period
    #   <p>The default for number of days that a newly created manual snapshot is retained. If
    #               the value is -1, the manual snapshot is retained indefinitely. This value doesn't
    #               retroactively change the retention periods of existing manual snapshots.</p>
    #           <p>The value must be either -1 or an integer between 1 and 3,653.</p>
    #           <p>The default value is -1.</p>
    #
    # @option params [String] :preferred_maintenance_window
    #   <p>The weekly time range (in UTC) during which system maintenance can occur, if
    #               necessary. If system maintenance is necessary during the window, it may result in an
    #               outage.</p>
    #           <p>This maintenance window change is made immediately. If the new maintenance window
    #               indicates the current time, there must be at least 120 minutes between the current time
    #               and end of the window in order to ensure that pending changes are applied.</p>
    #           <p>Default: Uses existing setting.</p>
    #           <p>Format: ddd:hh24:mi-ddd:hh24:mi, for example
    #               <code>wed:07:30-wed:08:00</code>.</p>
    #           <p>Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun</p>
    #           <p>Constraints: Must be at least 30 minutes.</p>
    #
    # @option params [String] :cluster_version
    #   <p>The new version number of the Amazon Redshift engine to upgrade to.</p>
    #           <p>For major version upgrades, if a non-default cluster parameter group is currently
    #               in use, a new cluster parameter group in the cluster parameter group family for the new
    #               version must be specified. The new cluster parameter group can be the default for that
    #               cluster parameter group family.
    #   For more information about parameters and parameter groups, go to
    #   <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html">Amazon Redshift Parameter Groups</a>
    #   in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    #           <p>Example: <code>1.0</code>
    #           </p>
    #
    # @option params [Boolean] :allow_version_upgrade
    #   <p>If <code>true</code>, major version upgrades will be applied automatically to the
    #               cluster during the maintenance window. </p>
    #           <p>Default: <code>false</code>
    #           </p>
    #
    # @option params [String] :hsm_client_certificate_identifier
    #   <p>Specifies the name of the HSM client certificate the Amazon Redshift cluster uses to
    #               retrieve the data encryption keys stored in an HSM.</p>
    #
    # @option params [String] :hsm_configuration_identifier
    #   <p>Specifies the name of the HSM configuration that contains the information the
    #               Amazon Redshift cluster can use to retrieve and store keys in an HSM.</p>
    #
    # @option params [String] :new_cluster_identifier
    #   <p>The new identifier for the cluster.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>Alphabetic characters must be lowercase.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>Must be unique for all clusters within an Amazon Web Services account.</p>
    #               </li>
    #            </ul>
    #
    #               <p>Example: <code>examplecluster</code>
    #           </p>
    #
    # @option params [Boolean] :publicly_accessible
    #   <p>If <code>true</code>, the cluster can be accessed from a public network. Only
    #               clusters in VPCs can be set to be publicly available.</p>
    #
    # @option params [String] :elastic_ip
    #   <p>The Elastic IP (EIP) address for the cluster.</p>
    #           <p>Constraints: The cluster must be provisioned in EC2-VPC and publicly-accessible
    #               through an Internet gateway. For more information about provisioning clusters in
    #               EC2-VPC, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#cluster-platforms">Supported
    #                   Platforms to Launch Your Cluster</a> in the Amazon Redshift Cluster Management Guide.</p>
    #
    # @option params [Boolean] :enhanced_vpc_routing
    #   <p>An option that specifies whether to create the cluster with enhanced VPC routing
    #               enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a
    #               VPC. For more information, see <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html">Enhanced VPC Routing</a> in
    #               the Amazon Redshift Cluster Management Guide.</p>
    #           <p>If this option is <code>true</code>, enhanced VPC routing is enabled. </p>
    #           <p>Default: false</p>
    #
    # @option params [String] :maintenance_track_name
    #   <p>The name for the maintenance track that you want to assign for the cluster. This name
    #               change is asynchronous. The new track name stays in the
    #                   <code>PendingModifiedValues</code> for the cluster until the next maintenance
    #               window. When the maintenance track changes, the cluster is switched to the latest
    #               cluster release available for the maintenance track. At this point, the maintenance
    #               track name is applied.</p>
    #
    # @option params [Boolean] :encrypted
    #   <p>Indicates whether the cluster is encrypted. If the value is encrypted (true) and you
    #               provide a value for the <code>KmsKeyId</code> parameter, we encrypt the cluster
    #               with the provided <code>KmsKeyId</code>. If you don't provide a <code>KmsKeyId</code>,
    #               we encrypt with the default key. </p>
    #               <p>If the value is not encrypted (false), then the cluster is decrypted. </p>
    #
    # @option params [String] :kms_key_id
    #   <p>The Key Management Service (KMS) key ID of the encryption key that you want to use
    #               to encrypt data in the cluster.</p>
    #
    # @option params [Boolean] :availability_zone_relocation
    #   <p>The option to enable relocation for an Amazon Redshift cluster between Availability Zones after the cluster modification is complete.</p>
    #
    # @option params [String] :availability_zone
    #   <p>The option to initiate relocation for an Amazon Redshift cluster to the target Availability Zone.</p>
    #
    # @option params [Integer] :port
    #   <p>The option to change the port of an Amazon Redshift cluster.</p>
    #
    # @return [Types::ModifyClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_cluster(
    #     cluster_identifier: 'ClusterIdentifier', # required
    #     cluster_type: 'ClusterType',
    #     node_type: 'NodeType',
    #     number_of_nodes: 1,
    #     cluster_security_groups: [
    #       'member'
    #     ],
    #     vpc_security_group_ids: [
    #       'member'
    #     ],
    #     master_user_password: 'MasterUserPassword',
    #     cluster_parameter_group_name: 'ClusterParameterGroupName',
    #     automated_snapshot_retention_period: 1,
    #     manual_snapshot_retention_period: 1,
    #     preferred_maintenance_window: 'PreferredMaintenanceWindow',
    #     cluster_version: 'ClusterVersion',
    #     allow_version_upgrade: false,
    #     hsm_client_certificate_identifier: 'HsmClientCertificateIdentifier',
    #     hsm_configuration_identifier: 'HsmConfigurationIdentifier',
    #     new_cluster_identifier: 'NewClusterIdentifier',
    #     publicly_accessible: false,
    #     elastic_ip: 'ElasticIp',
    #     enhanced_vpc_routing: false,
    #     maintenance_track_name: 'MaintenanceTrackName',
    #     encrypted: false,
    #     kms_key_id: 'KmsKeyId',
    #     availability_zone_relocation: false,
    #     availability_zone: 'AvailabilityZone',
    #     port: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifyClusterOutput
    #   resp.data.cluster #=> Types::Cluster
    #   resp.data.cluster.cluster_identifier #=> String
    #   resp.data.cluster.node_type #=> String
    #   resp.data.cluster.cluster_status #=> String
    #   resp.data.cluster.cluster_availability_status #=> String
    #   resp.data.cluster.modify_status #=> String
    #   resp.data.cluster.master_username #=> String
    #   resp.data.cluster.db_name #=> String
    #   resp.data.cluster.endpoint #=> Types::Endpoint
    #   resp.data.cluster.endpoint.address #=> String
    #   resp.data.cluster.endpoint.port #=> Integer
    #   resp.data.cluster.endpoint.vpc_endpoints #=> Array<VpcEndpoint>
    #   resp.data.cluster.endpoint.vpc_endpoints[0] #=> Types::VpcEndpoint
    #   resp.data.cluster.endpoint.vpc_endpoints[0].vpc_endpoint_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].vpc_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces #=> Array<NetworkInterface>
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0] #=> Types::NetworkInterface
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].network_interface_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].subnet_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].private_ip_address #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].availability_zone #=> String
    #   resp.data.cluster.cluster_create_time #=> Time
    #   resp.data.cluster.automated_snapshot_retention_period #=> Integer
    #   resp.data.cluster.manual_snapshot_retention_period #=> Integer
    #   resp.data.cluster.cluster_security_groups #=> Array<ClusterSecurityGroupMembership>
    #   resp.data.cluster.cluster_security_groups[0] #=> Types::ClusterSecurityGroupMembership
    #   resp.data.cluster.cluster_security_groups[0].cluster_security_group_name #=> String
    #   resp.data.cluster.cluster_security_groups[0].status #=> String
    #   resp.data.cluster.vpc_security_groups #=> Array<VpcSecurityGroupMembership>
    #   resp.data.cluster.vpc_security_groups[0] #=> Types::VpcSecurityGroupMembership
    #   resp.data.cluster.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.data.cluster.vpc_security_groups[0].status #=> String
    #   resp.data.cluster.cluster_parameter_groups #=> Array<ClusterParameterGroupStatus>
    #   resp.data.cluster.cluster_parameter_groups[0] #=> Types::ClusterParameterGroupStatus
    #   resp.data.cluster.cluster_parameter_groups[0].parameter_group_name #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].parameter_apply_status #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list #=> Array<ClusterParameterStatus>
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0] #=> Types::ClusterParameterStatus
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_name #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_status #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_error_description #=> String
    #   resp.data.cluster.cluster_subnet_group_name #=> String
    #   resp.data.cluster.vpc_id #=> String
    #   resp.data.cluster.availability_zone #=> String
    #   resp.data.cluster.preferred_maintenance_window #=> String
    #   resp.data.cluster.pending_modified_values #=> Types::PendingModifiedValues
    #   resp.data.cluster.pending_modified_values.master_user_password #=> String
    #   resp.data.cluster.pending_modified_values.node_type #=> String
    #   resp.data.cluster.pending_modified_values.number_of_nodes #=> Integer
    #   resp.data.cluster.pending_modified_values.cluster_type #=> String
    #   resp.data.cluster.pending_modified_values.cluster_version #=> String
    #   resp.data.cluster.pending_modified_values.automated_snapshot_retention_period #=> Integer
    #   resp.data.cluster.pending_modified_values.cluster_identifier #=> String
    #   resp.data.cluster.pending_modified_values.publicly_accessible #=> Boolean
    #   resp.data.cluster.pending_modified_values.enhanced_vpc_routing #=> Boolean
    #   resp.data.cluster.pending_modified_values.maintenance_track_name #=> String
    #   resp.data.cluster.pending_modified_values.encryption_type #=> String
    #   resp.data.cluster.cluster_version #=> String
    #   resp.data.cluster.allow_version_upgrade #=> Boolean
    #   resp.data.cluster.number_of_nodes #=> Integer
    #   resp.data.cluster.publicly_accessible #=> Boolean
    #   resp.data.cluster.encrypted #=> Boolean
    #   resp.data.cluster.restore_status #=> Types::RestoreStatus
    #   resp.data.cluster.restore_status.status #=> String
    #   resp.data.cluster.restore_status.current_restore_rate_in_mega_bytes_per_second #=> Float
    #   resp.data.cluster.restore_status.snapshot_size_in_mega_bytes #=> Integer
    #   resp.data.cluster.restore_status.progress_in_mega_bytes #=> Integer
    #   resp.data.cluster.restore_status.elapsed_time_in_seconds #=> Integer
    #   resp.data.cluster.restore_status.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.data.cluster.data_transfer_progress #=> Types::DataTransferProgress
    #   resp.data.cluster.data_transfer_progress.status #=> String
    #   resp.data.cluster.data_transfer_progress.current_rate_in_mega_bytes_per_second #=> Float
    #   resp.data.cluster.data_transfer_progress.total_data_in_mega_bytes #=> Integer
    #   resp.data.cluster.data_transfer_progress.data_transferred_in_mega_bytes #=> Integer
    #   resp.data.cluster.data_transfer_progress.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.data.cluster.data_transfer_progress.elapsed_time_in_seconds #=> Integer
    #   resp.data.cluster.hsm_status #=> Types::HsmStatus
    #   resp.data.cluster.hsm_status.hsm_client_certificate_identifier #=> String
    #   resp.data.cluster.hsm_status.hsm_configuration_identifier #=> String
    #   resp.data.cluster.hsm_status.status #=> String
    #   resp.data.cluster.cluster_snapshot_copy_status #=> Types::ClusterSnapshotCopyStatus
    #   resp.data.cluster.cluster_snapshot_copy_status.destination_region #=> String
    #   resp.data.cluster.cluster_snapshot_copy_status.retention_period #=> Integer
    #   resp.data.cluster.cluster_snapshot_copy_status.manual_snapshot_retention_period #=> Integer
    #   resp.data.cluster.cluster_snapshot_copy_status.snapshot_copy_grant_name #=> String
    #   resp.data.cluster.cluster_public_key #=> String
    #   resp.data.cluster.cluster_nodes #=> Array<ClusterNode>
    #   resp.data.cluster.cluster_nodes[0] #=> Types::ClusterNode
    #   resp.data.cluster.cluster_nodes[0].node_role #=> String
    #   resp.data.cluster.cluster_nodes[0].private_ip_address #=> String
    #   resp.data.cluster.cluster_nodes[0].public_ip_address #=> String
    #   resp.data.cluster.elastic_ip_status #=> Types::ElasticIpStatus
    #   resp.data.cluster.elastic_ip_status.elastic_ip #=> String
    #   resp.data.cluster.elastic_ip_status.status #=> String
    #   resp.data.cluster.cluster_revision_number #=> String
    #   resp.data.cluster.tags #=> Array<Tag>
    #   resp.data.cluster.tags[0] #=> Types::Tag
    #   resp.data.cluster.tags[0].key #=> String
    #   resp.data.cluster.tags[0].value #=> String
    #   resp.data.cluster.kms_key_id #=> String
    #   resp.data.cluster.enhanced_vpc_routing #=> Boolean
    #   resp.data.cluster.iam_roles #=> Array<ClusterIamRole>
    #   resp.data.cluster.iam_roles[0] #=> Types::ClusterIamRole
    #   resp.data.cluster.iam_roles[0].iam_role_arn #=> String
    #   resp.data.cluster.iam_roles[0].apply_status #=> String
    #   resp.data.cluster.pending_actions #=> Array<String>
    #   resp.data.cluster.pending_actions[0] #=> String
    #   resp.data.cluster.maintenance_track_name #=> String
    #   resp.data.cluster.elastic_resize_number_of_node_options #=> String
    #   resp.data.cluster.deferred_maintenance_windows #=> Array<DeferredMaintenanceWindow>
    #   resp.data.cluster.deferred_maintenance_windows[0] #=> Types::DeferredMaintenanceWindow
    #   resp.data.cluster.deferred_maintenance_windows[0].defer_maintenance_identifier #=> String
    #   resp.data.cluster.deferred_maintenance_windows[0].defer_maintenance_start_time #=> Time
    #   resp.data.cluster.deferred_maintenance_windows[0].defer_maintenance_end_time #=> Time
    #   resp.data.cluster.snapshot_schedule_identifier #=> String
    #   resp.data.cluster.snapshot_schedule_state #=> String, one of ["MODIFYING", "ACTIVE", "FAILED"]
    #   resp.data.cluster.expected_next_snapshot_schedule_time #=> Time
    #   resp.data.cluster.expected_next_snapshot_schedule_time_status #=> String
    #   resp.data.cluster.next_maintenance_window_start_time #=> Time
    #   resp.data.cluster.resize_info #=> Types::ResizeInfo
    #   resp.data.cluster.resize_info.resize_type #=> String
    #   resp.data.cluster.resize_info.allow_cancel_resize #=> Boolean
    #   resp.data.cluster.availability_zone_relocation_status #=> String
    #   resp.data.cluster.cluster_namespace_arn #=> String
    #   resp.data.cluster.total_storage_capacity_in_mega_bytes #=> Integer
    #   resp.data.cluster.aqua_configuration #=> Types::AquaConfiguration
    #   resp.data.cluster.aqua_configuration.aqua_status #=> String, one of ["enabled", "disabled", "applying"]
    #   resp.data.cluster.aqua_configuration.aqua_configuration_status #=> String, one of ["enabled", "disabled", "auto"]
    #   resp.data.cluster.default_iam_role_arn #=> String
    #   resp.data.cluster.reserved_node_exchange_status #=> Types::ReservedNodeExchangeStatus
    #   resp.data.cluster.reserved_node_exchange_status.reserved_node_exchange_request_id #=> String
    #   resp.data.cluster.reserved_node_exchange_status.status #=> String, one of ["REQUESTED", "PENDING", "IN_PROGRESS", "RETRYING", "SUCCEEDED", "FAILED"]
    #   resp.data.cluster.reserved_node_exchange_status.request_time #=> Time
    #   resp.data.cluster.reserved_node_exchange_status.source_reserved_node_id #=> String
    #   resp.data.cluster.reserved_node_exchange_status.source_reserved_node_type #=> String
    #   resp.data.cluster.reserved_node_exchange_status.source_reserved_node_count #=> Integer
    #   resp.data.cluster.reserved_node_exchange_status.target_reserved_node_offering_id #=> String
    #   resp.data.cluster.reserved_node_exchange_status.target_reserved_node_type #=> String
    #   resp.data.cluster.reserved_node_exchange_status.target_reserved_node_count #=> Integer
    #
    def modify_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyClusterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifyClusterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifyCluster
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::HsmClientCertificateNotFoundFault, Errors::InvalidClusterStateFault, Errors::ClusterSecurityGroupNotFoundFault, Errors::DependentServiceRequestThrottlingFault, Errors::HsmConfigurationNotFoundFault, Errors::NumberOfNodesQuotaExceededFault, Errors::ClusterAlreadyExistsFault, Errors::ClusterParameterGroupNotFoundFault, Errors::InsufficientClusterCapacityFault, Errors::InvalidClusterTrackFault, Errors::TableLimitExceededFault, Errors::InvalidClusterSecurityGroupStateFault, Errors::InvalidElasticIpFault, Errors::InvalidRetentionPeriodFault, Errors::UnauthorizedOperation, Errors::ClusterNotFoundFault, Errors::UnsupportedOptionFault, Errors::NumberOfNodesPerClusterLimitExceededFault, Errors::LimitExceededFault]),
        data_parser: Parsers::ModifyCluster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifyCluster,
        stubs: @stubs,
        params_class: Params::ModifyClusterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_cluster
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies the database revision of a cluster. The database revision is a unique
    #             revision of the database running in a cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::ModifyClusterDbRevisionInput}.
    #
    # @option params [String] :cluster_identifier
    #   <p>The unique identifier of a cluster whose database revision you want to modify. </p>
    #           <p>Example: <code>examplecluster</code>
    #           </p>
    #
    # @option params [String] :revision_target
    #   <p>The identifier of the database revision. You can retrieve this value from the
    #               response to the <a>DescribeClusterDbRevisions</a> request.</p>
    #
    # @return [Types::ModifyClusterDbRevisionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_cluster_db_revision(
    #     cluster_identifier: 'ClusterIdentifier', # required
    #     revision_target: 'RevisionTarget' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifyClusterDbRevisionOutput
    #   resp.data.cluster #=> Types::Cluster
    #   resp.data.cluster.cluster_identifier #=> String
    #   resp.data.cluster.node_type #=> String
    #   resp.data.cluster.cluster_status #=> String
    #   resp.data.cluster.cluster_availability_status #=> String
    #   resp.data.cluster.modify_status #=> String
    #   resp.data.cluster.master_username #=> String
    #   resp.data.cluster.db_name #=> String
    #   resp.data.cluster.endpoint #=> Types::Endpoint
    #   resp.data.cluster.endpoint.address #=> String
    #   resp.data.cluster.endpoint.port #=> Integer
    #   resp.data.cluster.endpoint.vpc_endpoints #=> Array<VpcEndpoint>
    #   resp.data.cluster.endpoint.vpc_endpoints[0] #=> Types::VpcEndpoint
    #   resp.data.cluster.endpoint.vpc_endpoints[0].vpc_endpoint_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].vpc_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces #=> Array<NetworkInterface>
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0] #=> Types::NetworkInterface
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].network_interface_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].subnet_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].private_ip_address #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].availability_zone #=> String
    #   resp.data.cluster.cluster_create_time #=> Time
    #   resp.data.cluster.automated_snapshot_retention_period #=> Integer
    #   resp.data.cluster.manual_snapshot_retention_period #=> Integer
    #   resp.data.cluster.cluster_security_groups #=> Array<ClusterSecurityGroupMembership>
    #   resp.data.cluster.cluster_security_groups[0] #=> Types::ClusterSecurityGroupMembership
    #   resp.data.cluster.cluster_security_groups[0].cluster_security_group_name #=> String
    #   resp.data.cluster.cluster_security_groups[0].status #=> String
    #   resp.data.cluster.vpc_security_groups #=> Array<VpcSecurityGroupMembership>
    #   resp.data.cluster.vpc_security_groups[0] #=> Types::VpcSecurityGroupMembership
    #   resp.data.cluster.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.data.cluster.vpc_security_groups[0].status #=> String
    #   resp.data.cluster.cluster_parameter_groups #=> Array<ClusterParameterGroupStatus>
    #   resp.data.cluster.cluster_parameter_groups[0] #=> Types::ClusterParameterGroupStatus
    #   resp.data.cluster.cluster_parameter_groups[0].parameter_group_name #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].parameter_apply_status #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list #=> Array<ClusterParameterStatus>
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0] #=> Types::ClusterParameterStatus
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_name #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_status #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_error_description #=> String
    #   resp.data.cluster.cluster_subnet_group_name #=> String
    #   resp.data.cluster.vpc_id #=> String
    #   resp.data.cluster.availability_zone #=> String
    #   resp.data.cluster.preferred_maintenance_window #=> String
    #   resp.data.cluster.pending_modified_values #=> Types::PendingModifiedValues
    #   resp.data.cluster.pending_modified_values.master_user_password #=> String
    #   resp.data.cluster.pending_modified_values.node_type #=> String
    #   resp.data.cluster.pending_modified_values.number_of_nodes #=> Integer
    #   resp.data.cluster.pending_modified_values.cluster_type #=> String
    #   resp.data.cluster.pending_modified_values.cluster_version #=> String
    #   resp.data.cluster.pending_modified_values.automated_snapshot_retention_period #=> Integer
    #   resp.data.cluster.pending_modified_values.cluster_identifier #=> String
    #   resp.data.cluster.pending_modified_values.publicly_accessible #=> Boolean
    #   resp.data.cluster.pending_modified_values.enhanced_vpc_routing #=> Boolean
    #   resp.data.cluster.pending_modified_values.maintenance_track_name #=> String
    #   resp.data.cluster.pending_modified_values.encryption_type #=> String
    #   resp.data.cluster.cluster_version #=> String
    #   resp.data.cluster.allow_version_upgrade #=> Boolean
    #   resp.data.cluster.number_of_nodes #=> Integer
    #   resp.data.cluster.publicly_accessible #=> Boolean
    #   resp.data.cluster.encrypted #=> Boolean
    #   resp.data.cluster.restore_status #=> Types::RestoreStatus
    #   resp.data.cluster.restore_status.status #=> String
    #   resp.data.cluster.restore_status.current_restore_rate_in_mega_bytes_per_second #=> Float
    #   resp.data.cluster.restore_status.snapshot_size_in_mega_bytes #=> Integer
    #   resp.data.cluster.restore_status.progress_in_mega_bytes #=> Integer
    #   resp.data.cluster.restore_status.elapsed_time_in_seconds #=> Integer
    #   resp.data.cluster.restore_status.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.data.cluster.data_transfer_progress #=> Types::DataTransferProgress
    #   resp.data.cluster.data_transfer_progress.status #=> String
    #   resp.data.cluster.data_transfer_progress.current_rate_in_mega_bytes_per_second #=> Float
    #   resp.data.cluster.data_transfer_progress.total_data_in_mega_bytes #=> Integer
    #   resp.data.cluster.data_transfer_progress.data_transferred_in_mega_bytes #=> Integer
    #   resp.data.cluster.data_transfer_progress.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.data.cluster.data_transfer_progress.elapsed_time_in_seconds #=> Integer
    #   resp.data.cluster.hsm_status #=> Types::HsmStatus
    #   resp.data.cluster.hsm_status.hsm_client_certificate_identifier #=> String
    #   resp.data.cluster.hsm_status.hsm_configuration_identifier #=> String
    #   resp.data.cluster.hsm_status.status #=> String
    #   resp.data.cluster.cluster_snapshot_copy_status #=> Types::ClusterSnapshotCopyStatus
    #   resp.data.cluster.cluster_snapshot_copy_status.destination_region #=> String
    #   resp.data.cluster.cluster_snapshot_copy_status.retention_period #=> Integer
    #   resp.data.cluster.cluster_snapshot_copy_status.manual_snapshot_retention_period #=> Integer
    #   resp.data.cluster.cluster_snapshot_copy_status.snapshot_copy_grant_name #=> String
    #   resp.data.cluster.cluster_public_key #=> String
    #   resp.data.cluster.cluster_nodes #=> Array<ClusterNode>
    #   resp.data.cluster.cluster_nodes[0] #=> Types::ClusterNode
    #   resp.data.cluster.cluster_nodes[0].node_role #=> String
    #   resp.data.cluster.cluster_nodes[0].private_ip_address #=> String
    #   resp.data.cluster.cluster_nodes[0].public_ip_address #=> String
    #   resp.data.cluster.elastic_ip_status #=> Types::ElasticIpStatus
    #   resp.data.cluster.elastic_ip_status.elastic_ip #=> String
    #   resp.data.cluster.elastic_ip_status.status #=> String
    #   resp.data.cluster.cluster_revision_number #=> String
    #   resp.data.cluster.tags #=> Array<Tag>
    #   resp.data.cluster.tags[0] #=> Types::Tag
    #   resp.data.cluster.tags[0].key #=> String
    #   resp.data.cluster.tags[0].value #=> String
    #   resp.data.cluster.kms_key_id #=> String
    #   resp.data.cluster.enhanced_vpc_routing #=> Boolean
    #   resp.data.cluster.iam_roles #=> Array<ClusterIamRole>
    #   resp.data.cluster.iam_roles[0] #=> Types::ClusterIamRole
    #   resp.data.cluster.iam_roles[0].iam_role_arn #=> String
    #   resp.data.cluster.iam_roles[0].apply_status #=> String
    #   resp.data.cluster.pending_actions #=> Array<String>
    #   resp.data.cluster.pending_actions[0] #=> String
    #   resp.data.cluster.maintenance_track_name #=> String
    #   resp.data.cluster.elastic_resize_number_of_node_options #=> String
    #   resp.data.cluster.deferred_maintenance_windows #=> Array<DeferredMaintenanceWindow>
    #   resp.data.cluster.deferred_maintenance_windows[0] #=> Types::DeferredMaintenanceWindow
    #   resp.data.cluster.deferred_maintenance_windows[0].defer_maintenance_identifier #=> String
    #   resp.data.cluster.deferred_maintenance_windows[0].defer_maintenance_start_time #=> Time
    #   resp.data.cluster.deferred_maintenance_windows[0].defer_maintenance_end_time #=> Time
    #   resp.data.cluster.snapshot_schedule_identifier #=> String
    #   resp.data.cluster.snapshot_schedule_state #=> String, one of ["MODIFYING", "ACTIVE", "FAILED"]
    #   resp.data.cluster.expected_next_snapshot_schedule_time #=> Time
    #   resp.data.cluster.expected_next_snapshot_schedule_time_status #=> String
    #   resp.data.cluster.next_maintenance_window_start_time #=> Time
    #   resp.data.cluster.resize_info #=> Types::ResizeInfo
    #   resp.data.cluster.resize_info.resize_type #=> String
    #   resp.data.cluster.resize_info.allow_cancel_resize #=> Boolean
    #   resp.data.cluster.availability_zone_relocation_status #=> String
    #   resp.data.cluster.cluster_namespace_arn #=> String
    #   resp.data.cluster.total_storage_capacity_in_mega_bytes #=> Integer
    #   resp.data.cluster.aqua_configuration #=> Types::AquaConfiguration
    #   resp.data.cluster.aqua_configuration.aqua_status #=> String, one of ["enabled", "disabled", "applying"]
    #   resp.data.cluster.aqua_configuration.aqua_configuration_status #=> String, one of ["enabled", "disabled", "auto"]
    #   resp.data.cluster.default_iam_role_arn #=> String
    #   resp.data.cluster.reserved_node_exchange_status #=> Types::ReservedNodeExchangeStatus
    #   resp.data.cluster.reserved_node_exchange_status.reserved_node_exchange_request_id #=> String
    #   resp.data.cluster.reserved_node_exchange_status.status #=> String, one of ["REQUESTED", "PENDING", "IN_PROGRESS", "RETRYING", "SUCCEEDED", "FAILED"]
    #   resp.data.cluster.reserved_node_exchange_status.request_time #=> Time
    #   resp.data.cluster.reserved_node_exchange_status.source_reserved_node_id #=> String
    #   resp.data.cluster.reserved_node_exchange_status.source_reserved_node_type #=> String
    #   resp.data.cluster.reserved_node_exchange_status.source_reserved_node_count #=> Integer
    #   resp.data.cluster.reserved_node_exchange_status.target_reserved_node_offering_id #=> String
    #   resp.data.cluster.reserved_node_exchange_status.target_reserved_node_type #=> String
    #   resp.data.cluster.reserved_node_exchange_status.target_reserved_node_count #=> Integer
    #
    def modify_cluster_db_revision(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyClusterDbRevisionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifyClusterDbRevisionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifyClusterDbRevision
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClusterOnLatestRevisionFault, Errors::InvalidClusterStateFault, Errors::ClusterNotFoundFault]),
        data_parser: Parsers::ModifyClusterDbRevision
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifyClusterDbRevision,
        stubs: @stubs,
        params_class: Params::ModifyClusterDbRevisionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_cluster_db_revision
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies the list of Identity and Access Management (IAM) roles that can be
    #             used by the cluster to access other Amazon Web Services services.</p>
    #         <p>The maximum number of IAM roles that you can associate is subject to a quota.
    #             For more information, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html">Quotas and limits</a>
    #             in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ModifyClusterIamRolesInput}.
    #
    # @option params [String] :cluster_identifier
    #   <p>The unique identifier of the cluster for which you want to associate or
    #               disassociate IAM roles.</p>
    #
    # @option params [Array<String>] :add_iam_roles
    #   <p>Zero or more IAM roles to associate with the cluster. The roles must be in their
    #               Amazon Resource Name (ARN) format. </p>
    #
    # @option params [Array<String>] :remove_iam_roles
    #   <p>Zero or more IAM roles in ARN format to disassociate from the cluster. </p>
    #
    # @option params [String] :default_iam_role_arn
    #   <p>The Amazon Resource Name (ARN) for the IAM role that was set as default for the cluster when the cluster was last modified.</p>
    #
    # @return [Types::ModifyClusterIamRolesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_cluster_iam_roles(
    #     cluster_identifier: 'ClusterIdentifier', # required
    #     add_iam_roles: [
    #       'member'
    #     ],
    #     default_iam_role_arn: 'DefaultIamRoleArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifyClusterIamRolesOutput
    #   resp.data.cluster #=> Types::Cluster
    #   resp.data.cluster.cluster_identifier #=> String
    #   resp.data.cluster.node_type #=> String
    #   resp.data.cluster.cluster_status #=> String
    #   resp.data.cluster.cluster_availability_status #=> String
    #   resp.data.cluster.modify_status #=> String
    #   resp.data.cluster.master_username #=> String
    #   resp.data.cluster.db_name #=> String
    #   resp.data.cluster.endpoint #=> Types::Endpoint
    #   resp.data.cluster.endpoint.address #=> String
    #   resp.data.cluster.endpoint.port #=> Integer
    #   resp.data.cluster.endpoint.vpc_endpoints #=> Array<VpcEndpoint>
    #   resp.data.cluster.endpoint.vpc_endpoints[0] #=> Types::VpcEndpoint
    #   resp.data.cluster.endpoint.vpc_endpoints[0].vpc_endpoint_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].vpc_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces #=> Array<NetworkInterface>
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0] #=> Types::NetworkInterface
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].network_interface_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].subnet_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].private_ip_address #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].availability_zone #=> String
    #   resp.data.cluster.cluster_create_time #=> Time
    #   resp.data.cluster.automated_snapshot_retention_period #=> Integer
    #   resp.data.cluster.manual_snapshot_retention_period #=> Integer
    #   resp.data.cluster.cluster_security_groups #=> Array<ClusterSecurityGroupMembership>
    #   resp.data.cluster.cluster_security_groups[0] #=> Types::ClusterSecurityGroupMembership
    #   resp.data.cluster.cluster_security_groups[0].cluster_security_group_name #=> String
    #   resp.data.cluster.cluster_security_groups[0].status #=> String
    #   resp.data.cluster.vpc_security_groups #=> Array<VpcSecurityGroupMembership>
    #   resp.data.cluster.vpc_security_groups[0] #=> Types::VpcSecurityGroupMembership
    #   resp.data.cluster.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.data.cluster.vpc_security_groups[0].status #=> String
    #   resp.data.cluster.cluster_parameter_groups #=> Array<ClusterParameterGroupStatus>
    #   resp.data.cluster.cluster_parameter_groups[0] #=> Types::ClusterParameterGroupStatus
    #   resp.data.cluster.cluster_parameter_groups[0].parameter_group_name #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].parameter_apply_status #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list #=> Array<ClusterParameterStatus>
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0] #=> Types::ClusterParameterStatus
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_name #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_status #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_error_description #=> String
    #   resp.data.cluster.cluster_subnet_group_name #=> String
    #   resp.data.cluster.vpc_id #=> String
    #   resp.data.cluster.availability_zone #=> String
    #   resp.data.cluster.preferred_maintenance_window #=> String
    #   resp.data.cluster.pending_modified_values #=> Types::PendingModifiedValues
    #   resp.data.cluster.pending_modified_values.master_user_password #=> String
    #   resp.data.cluster.pending_modified_values.node_type #=> String
    #   resp.data.cluster.pending_modified_values.number_of_nodes #=> Integer
    #   resp.data.cluster.pending_modified_values.cluster_type #=> String
    #   resp.data.cluster.pending_modified_values.cluster_version #=> String
    #   resp.data.cluster.pending_modified_values.automated_snapshot_retention_period #=> Integer
    #   resp.data.cluster.pending_modified_values.cluster_identifier #=> String
    #   resp.data.cluster.pending_modified_values.publicly_accessible #=> Boolean
    #   resp.data.cluster.pending_modified_values.enhanced_vpc_routing #=> Boolean
    #   resp.data.cluster.pending_modified_values.maintenance_track_name #=> String
    #   resp.data.cluster.pending_modified_values.encryption_type #=> String
    #   resp.data.cluster.cluster_version #=> String
    #   resp.data.cluster.allow_version_upgrade #=> Boolean
    #   resp.data.cluster.number_of_nodes #=> Integer
    #   resp.data.cluster.publicly_accessible #=> Boolean
    #   resp.data.cluster.encrypted #=> Boolean
    #   resp.data.cluster.restore_status #=> Types::RestoreStatus
    #   resp.data.cluster.restore_status.status #=> String
    #   resp.data.cluster.restore_status.current_restore_rate_in_mega_bytes_per_second #=> Float
    #   resp.data.cluster.restore_status.snapshot_size_in_mega_bytes #=> Integer
    #   resp.data.cluster.restore_status.progress_in_mega_bytes #=> Integer
    #   resp.data.cluster.restore_status.elapsed_time_in_seconds #=> Integer
    #   resp.data.cluster.restore_status.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.data.cluster.data_transfer_progress #=> Types::DataTransferProgress
    #   resp.data.cluster.data_transfer_progress.status #=> String
    #   resp.data.cluster.data_transfer_progress.current_rate_in_mega_bytes_per_second #=> Float
    #   resp.data.cluster.data_transfer_progress.total_data_in_mega_bytes #=> Integer
    #   resp.data.cluster.data_transfer_progress.data_transferred_in_mega_bytes #=> Integer
    #   resp.data.cluster.data_transfer_progress.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.data.cluster.data_transfer_progress.elapsed_time_in_seconds #=> Integer
    #   resp.data.cluster.hsm_status #=> Types::HsmStatus
    #   resp.data.cluster.hsm_status.hsm_client_certificate_identifier #=> String
    #   resp.data.cluster.hsm_status.hsm_configuration_identifier #=> String
    #   resp.data.cluster.hsm_status.status #=> String
    #   resp.data.cluster.cluster_snapshot_copy_status #=> Types::ClusterSnapshotCopyStatus
    #   resp.data.cluster.cluster_snapshot_copy_status.destination_region #=> String
    #   resp.data.cluster.cluster_snapshot_copy_status.retention_period #=> Integer
    #   resp.data.cluster.cluster_snapshot_copy_status.manual_snapshot_retention_period #=> Integer
    #   resp.data.cluster.cluster_snapshot_copy_status.snapshot_copy_grant_name #=> String
    #   resp.data.cluster.cluster_public_key #=> String
    #   resp.data.cluster.cluster_nodes #=> Array<ClusterNode>
    #   resp.data.cluster.cluster_nodes[0] #=> Types::ClusterNode
    #   resp.data.cluster.cluster_nodes[0].node_role #=> String
    #   resp.data.cluster.cluster_nodes[0].private_ip_address #=> String
    #   resp.data.cluster.cluster_nodes[0].public_ip_address #=> String
    #   resp.data.cluster.elastic_ip_status #=> Types::ElasticIpStatus
    #   resp.data.cluster.elastic_ip_status.elastic_ip #=> String
    #   resp.data.cluster.elastic_ip_status.status #=> String
    #   resp.data.cluster.cluster_revision_number #=> String
    #   resp.data.cluster.tags #=> Array<Tag>
    #   resp.data.cluster.tags[0] #=> Types::Tag
    #   resp.data.cluster.tags[0].key #=> String
    #   resp.data.cluster.tags[0].value #=> String
    #   resp.data.cluster.kms_key_id #=> String
    #   resp.data.cluster.enhanced_vpc_routing #=> Boolean
    #   resp.data.cluster.iam_roles #=> Array<ClusterIamRole>
    #   resp.data.cluster.iam_roles[0] #=> Types::ClusterIamRole
    #   resp.data.cluster.iam_roles[0].iam_role_arn #=> String
    #   resp.data.cluster.iam_roles[0].apply_status #=> String
    #   resp.data.cluster.pending_actions #=> Array<String>
    #   resp.data.cluster.pending_actions[0] #=> String
    #   resp.data.cluster.maintenance_track_name #=> String
    #   resp.data.cluster.elastic_resize_number_of_node_options #=> String
    #   resp.data.cluster.deferred_maintenance_windows #=> Array<DeferredMaintenanceWindow>
    #   resp.data.cluster.deferred_maintenance_windows[0] #=> Types::DeferredMaintenanceWindow
    #   resp.data.cluster.deferred_maintenance_windows[0].defer_maintenance_identifier #=> String
    #   resp.data.cluster.deferred_maintenance_windows[0].defer_maintenance_start_time #=> Time
    #   resp.data.cluster.deferred_maintenance_windows[0].defer_maintenance_end_time #=> Time
    #   resp.data.cluster.snapshot_schedule_identifier #=> String
    #   resp.data.cluster.snapshot_schedule_state #=> String, one of ["MODIFYING", "ACTIVE", "FAILED"]
    #   resp.data.cluster.expected_next_snapshot_schedule_time #=> Time
    #   resp.data.cluster.expected_next_snapshot_schedule_time_status #=> String
    #   resp.data.cluster.next_maintenance_window_start_time #=> Time
    #   resp.data.cluster.resize_info #=> Types::ResizeInfo
    #   resp.data.cluster.resize_info.resize_type #=> String
    #   resp.data.cluster.resize_info.allow_cancel_resize #=> Boolean
    #   resp.data.cluster.availability_zone_relocation_status #=> String
    #   resp.data.cluster.cluster_namespace_arn #=> String
    #   resp.data.cluster.total_storage_capacity_in_mega_bytes #=> Integer
    #   resp.data.cluster.aqua_configuration #=> Types::AquaConfiguration
    #   resp.data.cluster.aqua_configuration.aqua_status #=> String, one of ["enabled", "disabled", "applying"]
    #   resp.data.cluster.aqua_configuration.aqua_configuration_status #=> String, one of ["enabled", "disabled", "auto"]
    #   resp.data.cluster.default_iam_role_arn #=> String
    #   resp.data.cluster.reserved_node_exchange_status #=> Types::ReservedNodeExchangeStatus
    #   resp.data.cluster.reserved_node_exchange_status.reserved_node_exchange_request_id #=> String
    #   resp.data.cluster.reserved_node_exchange_status.status #=> String, one of ["REQUESTED", "PENDING", "IN_PROGRESS", "RETRYING", "SUCCEEDED", "FAILED"]
    #   resp.data.cluster.reserved_node_exchange_status.request_time #=> Time
    #   resp.data.cluster.reserved_node_exchange_status.source_reserved_node_id #=> String
    #   resp.data.cluster.reserved_node_exchange_status.source_reserved_node_type #=> String
    #   resp.data.cluster.reserved_node_exchange_status.source_reserved_node_count #=> Integer
    #   resp.data.cluster.reserved_node_exchange_status.target_reserved_node_offering_id #=> String
    #   resp.data.cluster.reserved_node_exchange_status.target_reserved_node_type #=> String
    #   resp.data.cluster.reserved_node_exchange_status.target_reserved_node_count #=> Integer
    #
    def modify_cluster_iam_roles(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyClusterIamRolesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifyClusterIamRolesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifyClusterIamRoles
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidClusterStateFault, Errors::ClusterNotFoundFault]),
        data_parser: Parsers::ModifyClusterIamRoles
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifyClusterIamRoles,
        stubs: @stubs,
        params_class: Params::ModifyClusterIamRolesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_cluster_iam_roles
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies the maintenance settings of a cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::ModifyClusterMaintenanceInput}.
    #
    # @option params [String] :cluster_identifier
    #   <p>A unique identifier for the cluster.</p>
    #
    # @option params [Boolean] :defer_maintenance
    #   <p>A boolean indicating whether to enable the deferred maintenance window. </p>
    #
    # @option params [String] :defer_maintenance_identifier
    #   <p>A unique identifier for the deferred maintenance window.</p>
    #
    # @option params [Time] :defer_maintenance_start_time
    #   <p>A timestamp indicating the start time for the deferred maintenance window.</p>
    #
    # @option params [Time] :defer_maintenance_end_time
    #   <p>A timestamp indicating end time for the deferred maintenance window. If you specify an
    #               end time, you can't specify a duration.</p>
    #
    # @option params [Integer] :defer_maintenance_duration
    #   <p>An integer indicating the duration of the maintenance window in days. If you specify a
    #               duration, you can't specify an end time. The duration must be 45 days or less.</p>
    #
    # @return [Types::ModifyClusterMaintenanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_cluster_maintenance(
    #     cluster_identifier: 'ClusterIdentifier', # required
    #     defer_maintenance: false,
    #     defer_maintenance_identifier: 'DeferMaintenanceIdentifier',
    #     defer_maintenance_start_time: Time.now,
    #     defer_maintenance_end_time: Time.now,
    #     defer_maintenance_duration: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifyClusterMaintenanceOutput
    #   resp.data.cluster #=> Types::Cluster
    #   resp.data.cluster.cluster_identifier #=> String
    #   resp.data.cluster.node_type #=> String
    #   resp.data.cluster.cluster_status #=> String
    #   resp.data.cluster.cluster_availability_status #=> String
    #   resp.data.cluster.modify_status #=> String
    #   resp.data.cluster.master_username #=> String
    #   resp.data.cluster.db_name #=> String
    #   resp.data.cluster.endpoint #=> Types::Endpoint
    #   resp.data.cluster.endpoint.address #=> String
    #   resp.data.cluster.endpoint.port #=> Integer
    #   resp.data.cluster.endpoint.vpc_endpoints #=> Array<VpcEndpoint>
    #   resp.data.cluster.endpoint.vpc_endpoints[0] #=> Types::VpcEndpoint
    #   resp.data.cluster.endpoint.vpc_endpoints[0].vpc_endpoint_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].vpc_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces #=> Array<NetworkInterface>
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0] #=> Types::NetworkInterface
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].network_interface_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].subnet_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].private_ip_address #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].availability_zone #=> String
    #   resp.data.cluster.cluster_create_time #=> Time
    #   resp.data.cluster.automated_snapshot_retention_period #=> Integer
    #   resp.data.cluster.manual_snapshot_retention_period #=> Integer
    #   resp.data.cluster.cluster_security_groups #=> Array<ClusterSecurityGroupMembership>
    #   resp.data.cluster.cluster_security_groups[0] #=> Types::ClusterSecurityGroupMembership
    #   resp.data.cluster.cluster_security_groups[0].cluster_security_group_name #=> String
    #   resp.data.cluster.cluster_security_groups[0].status #=> String
    #   resp.data.cluster.vpc_security_groups #=> Array<VpcSecurityGroupMembership>
    #   resp.data.cluster.vpc_security_groups[0] #=> Types::VpcSecurityGroupMembership
    #   resp.data.cluster.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.data.cluster.vpc_security_groups[0].status #=> String
    #   resp.data.cluster.cluster_parameter_groups #=> Array<ClusterParameterGroupStatus>
    #   resp.data.cluster.cluster_parameter_groups[0] #=> Types::ClusterParameterGroupStatus
    #   resp.data.cluster.cluster_parameter_groups[0].parameter_group_name #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].parameter_apply_status #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list #=> Array<ClusterParameterStatus>
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0] #=> Types::ClusterParameterStatus
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_name #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_status #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_error_description #=> String
    #   resp.data.cluster.cluster_subnet_group_name #=> String
    #   resp.data.cluster.vpc_id #=> String
    #   resp.data.cluster.availability_zone #=> String
    #   resp.data.cluster.preferred_maintenance_window #=> String
    #   resp.data.cluster.pending_modified_values #=> Types::PendingModifiedValues
    #   resp.data.cluster.pending_modified_values.master_user_password #=> String
    #   resp.data.cluster.pending_modified_values.node_type #=> String
    #   resp.data.cluster.pending_modified_values.number_of_nodes #=> Integer
    #   resp.data.cluster.pending_modified_values.cluster_type #=> String
    #   resp.data.cluster.pending_modified_values.cluster_version #=> String
    #   resp.data.cluster.pending_modified_values.automated_snapshot_retention_period #=> Integer
    #   resp.data.cluster.pending_modified_values.cluster_identifier #=> String
    #   resp.data.cluster.pending_modified_values.publicly_accessible #=> Boolean
    #   resp.data.cluster.pending_modified_values.enhanced_vpc_routing #=> Boolean
    #   resp.data.cluster.pending_modified_values.maintenance_track_name #=> String
    #   resp.data.cluster.pending_modified_values.encryption_type #=> String
    #   resp.data.cluster.cluster_version #=> String
    #   resp.data.cluster.allow_version_upgrade #=> Boolean
    #   resp.data.cluster.number_of_nodes #=> Integer
    #   resp.data.cluster.publicly_accessible #=> Boolean
    #   resp.data.cluster.encrypted #=> Boolean
    #   resp.data.cluster.restore_status #=> Types::RestoreStatus
    #   resp.data.cluster.restore_status.status #=> String
    #   resp.data.cluster.restore_status.current_restore_rate_in_mega_bytes_per_second #=> Float
    #   resp.data.cluster.restore_status.snapshot_size_in_mega_bytes #=> Integer
    #   resp.data.cluster.restore_status.progress_in_mega_bytes #=> Integer
    #   resp.data.cluster.restore_status.elapsed_time_in_seconds #=> Integer
    #   resp.data.cluster.restore_status.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.data.cluster.data_transfer_progress #=> Types::DataTransferProgress
    #   resp.data.cluster.data_transfer_progress.status #=> String
    #   resp.data.cluster.data_transfer_progress.current_rate_in_mega_bytes_per_second #=> Float
    #   resp.data.cluster.data_transfer_progress.total_data_in_mega_bytes #=> Integer
    #   resp.data.cluster.data_transfer_progress.data_transferred_in_mega_bytes #=> Integer
    #   resp.data.cluster.data_transfer_progress.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.data.cluster.data_transfer_progress.elapsed_time_in_seconds #=> Integer
    #   resp.data.cluster.hsm_status #=> Types::HsmStatus
    #   resp.data.cluster.hsm_status.hsm_client_certificate_identifier #=> String
    #   resp.data.cluster.hsm_status.hsm_configuration_identifier #=> String
    #   resp.data.cluster.hsm_status.status #=> String
    #   resp.data.cluster.cluster_snapshot_copy_status #=> Types::ClusterSnapshotCopyStatus
    #   resp.data.cluster.cluster_snapshot_copy_status.destination_region #=> String
    #   resp.data.cluster.cluster_snapshot_copy_status.retention_period #=> Integer
    #   resp.data.cluster.cluster_snapshot_copy_status.manual_snapshot_retention_period #=> Integer
    #   resp.data.cluster.cluster_snapshot_copy_status.snapshot_copy_grant_name #=> String
    #   resp.data.cluster.cluster_public_key #=> String
    #   resp.data.cluster.cluster_nodes #=> Array<ClusterNode>
    #   resp.data.cluster.cluster_nodes[0] #=> Types::ClusterNode
    #   resp.data.cluster.cluster_nodes[0].node_role #=> String
    #   resp.data.cluster.cluster_nodes[0].private_ip_address #=> String
    #   resp.data.cluster.cluster_nodes[0].public_ip_address #=> String
    #   resp.data.cluster.elastic_ip_status #=> Types::ElasticIpStatus
    #   resp.data.cluster.elastic_ip_status.elastic_ip #=> String
    #   resp.data.cluster.elastic_ip_status.status #=> String
    #   resp.data.cluster.cluster_revision_number #=> String
    #   resp.data.cluster.tags #=> Array<Tag>
    #   resp.data.cluster.tags[0] #=> Types::Tag
    #   resp.data.cluster.tags[0].key #=> String
    #   resp.data.cluster.tags[0].value #=> String
    #   resp.data.cluster.kms_key_id #=> String
    #   resp.data.cluster.enhanced_vpc_routing #=> Boolean
    #   resp.data.cluster.iam_roles #=> Array<ClusterIamRole>
    #   resp.data.cluster.iam_roles[0] #=> Types::ClusterIamRole
    #   resp.data.cluster.iam_roles[0].iam_role_arn #=> String
    #   resp.data.cluster.iam_roles[0].apply_status #=> String
    #   resp.data.cluster.pending_actions #=> Array<String>
    #   resp.data.cluster.pending_actions[0] #=> String
    #   resp.data.cluster.maintenance_track_name #=> String
    #   resp.data.cluster.elastic_resize_number_of_node_options #=> String
    #   resp.data.cluster.deferred_maintenance_windows #=> Array<DeferredMaintenanceWindow>
    #   resp.data.cluster.deferred_maintenance_windows[0] #=> Types::DeferredMaintenanceWindow
    #   resp.data.cluster.deferred_maintenance_windows[0].defer_maintenance_identifier #=> String
    #   resp.data.cluster.deferred_maintenance_windows[0].defer_maintenance_start_time #=> Time
    #   resp.data.cluster.deferred_maintenance_windows[0].defer_maintenance_end_time #=> Time
    #   resp.data.cluster.snapshot_schedule_identifier #=> String
    #   resp.data.cluster.snapshot_schedule_state #=> String, one of ["MODIFYING", "ACTIVE", "FAILED"]
    #   resp.data.cluster.expected_next_snapshot_schedule_time #=> Time
    #   resp.data.cluster.expected_next_snapshot_schedule_time_status #=> String
    #   resp.data.cluster.next_maintenance_window_start_time #=> Time
    #   resp.data.cluster.resize_info #=> Types::ResizeInfo
    #   resp.data.cluster.resize_info.resize_type #=> String
    #   resp.data.cluster.resize_info.allow_cancel_resize #=> Boolean
    #   resp.data.cluster.availability_zone_relocation_status #=> String
    #   resp.data.cluster.cluster_namespace_arn #=> String
    #   resp.data.cluster.total_storage_capacity_in_mega_bytes #=> Integer
    #   resp.data.cluster.aqua_configuration #=> Types::AquaConfiguration
    #   resp.data.cluster.aqua_configuration.aqua_status #=> String, one of ["enabled", "disabled", "applying"]
    #   resp.data.cluster.aqua_configuration.aqua_configuration_status #=> String, one of ["enabled", "disabled", "auto"]
    #   resp.data.cluster.default_iam_role_arn #=> String
    #   resp.data.cluster.reserved_node_exchange_status #=> Types::ReservedNodeExchangeStatus
    #   resp.data.cluster.reserved_node_exchange_status.reserved_node_exchange_request_id #=> String
    #   resp.data.cluster.reserved_node_exchange_status.status #=> String, one of ["REQUESTED", "PENDING", "IN_PROGRESS", "RETRYING", "SUCCEEDED", "FAILED"]
    #   resp.data.cluster.reserved_node_exchange_status.request_time #=> Time
    #   resp.data.cluster.reserved_node_exchange_status.source_reserved_node_id #=> String
    #   resp.data.cluster.reserved_node_exchange_status.source_reserved_node_type #=> String
    #   resp.data.cluster.reserved_node_exchange_status.source_reserved_node_count #=> Integer
    #   resp.data.cluster.reserved_node_exchange_status.target_reserved_node_offering_id #=> String
    #   resp.data.cluster.reserved_node_exchange_status.target_reserved_node_type #=> String
    #   resp.data.cluster.reserved_node_exchange_status.target_reserved_node_count #=> Integer
    #
    def modify_cluster_maintenance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyClusterMaintenanceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifyClusterMaintenanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifyClusterMaintenance
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidClusterStateFault, Errors::ClusterNotFoundFault]),
        data_parser: Parsers::ModifyClusterMaintenance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifyClusterMaintenance,
        stubs: @stubs,
        params_class: Params::ModifyClusterMaintenanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_cluster_maintenance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies the parameters of a parameter group. For the parameters parameter, it can't contain ASCII characters.</p>
    #         <p>
    # For more information about parameters and parameter groups, go to
    # <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html">Amazon Redshift Parameter Groups</a>
    # in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ModifyClusterParameterGroupInput}.
    #
    # @option params [String] :parameter_group_name
    #   <p>The name of the parameter group to be modified.</p>
    #
    # @option params [Array<Parameter>] :parameters
    #   <p>An array of parameters to be modified. A maximum of 20 parameters can be modified
    #               in a single request.</p>
    #           <p>For each parameter to be modified, you must supply at least the parameter name and
    #               parameter value; other name-value pairs of the parameter are optional.</p>
    #           <p>For the workload management (WLM) configuration, you must supply all the name-value
    #               pairs in the wlm_json_configuration parameter.</p>
    #
    # @return [Types::ModifyClusterParameterGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_cluster_parameter_group(
    #     parameter_group_name: 'ParameterGroupName', # required
    #     parameters: [
    #       {
    #         parameter_name: 'ParameterName',
    #         parameter_value: 'ParameterValue',
    #         description: 'Description',
    #         source: 'Source',
    #         data_type: 'DataType',
    #         allowed_values: 'AllowedValues',
    #         apply_type: 'static', # accepts ["static", "dynamic"]
    #         is_modifiable: false,
    #         minimum_engine_version: 'MinimumEngineVersion'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifyClusterParameterGroupOutput
    #   resp.data.parameter_group_name #=> String
    #   resp.data.parameter_group_status #=> String
    #
    def modify_cluster_parameter_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyClusterParameterGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifyClusterParameterGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifyClusterParameterGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClusterParameterGroupNotFoundFault, Errors::InvalidClusterParameterGroupStateFault]),
        data_parser: Parsers::ModifyClusterParameterGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifyClusterParameterGroup,
        stubs: @stubs,
        params_class: Params::ModifyClusterParameterGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_cluster_parameter_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies the settings for a snapshot.</p>
    # 		       <p>This exanmple modifies the manual retention period setting for a cluster snapshot.</p>
    #
    # @param [Hash] params
    #   See {Types::ModifyClusterSnapshotInput}.
    #
    # @option params [String] :snapshot_identifier
    #   <p>The identifier of the snapshot whose setting you want to modify.</p>
    #
    # @option params [Integer] :manual_snapshot_retention_period
    #   <p>The number of days that a manual snapshot is retained. If the value is -1, the manual
    #               snapshot is retained indefinitely.</p>
    #           <p>If the manual snapshot falls outside of the new retention period, you can specify the
    #               force option to immediately delete the snapshot.</p>
    #           <p>The value must be either -1 or an integer between 1 and 3,653.</p>
    #
    # @option params [Boolean] :force
    #   <p>A Boolean option to override an exception if the retention period has already
    #               passed.</p>
    #
    # @return [Types::ModifyClusterSnapshotOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_cluster_snapshot(
    #     snapshot_identifier: 'SnapshotIdentifier', # required
    #     manual_snapshot_retention_period: 1,
    #     force: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifyClusterSnapshotOutput
    #   resp.data.snapshot #=> Types::Snapshot
    #   resp.data.snapshot.snapshot_identifier #=> String
    #   resp.data.snapshot.cluster_identifier #=> String
    #   resp.data.snapshot.snapshot_create_time #=> Time
    #   resp.data.snapshot.status #=> String
    #   resp.data.snapshot.port #=> Integer
    #   resp.data.snapshot.availability_zone #=> String
    #   resp.data.snapshot.cluster_create_time #=> Time
    #   resp.data.snapshot.master_username #=> String
    #   resp.data.snapshot.cluster_version #=> String
    #   resp.data.snapshot.engine_full_version #=> String
    #   resp.data.snapshot.snapshot_type #=> String
    #   resp.data.snapshot.node_type #=> String
    #   resp.data.snapshot.number_of_nodes #=> Integer
    #   resp.data.snapshot.db_name #=> String
    #   resp.data.snapshot.vpc_id #=> String
    #   resp.data.snapshot.encrypted #=> Boolean
    #   resp.data.snapshot.kms_key_id #=> String
    #   resp.data.snapshot.encrypted_with_hsm #=> Boolean
    #   resp.data.snapshot.accounts_with_restore_access #=> Array<AccountWithRestoreAccess>
    #   resp.data.snapshot.accounts_with_restore_access[0] #=> Types::AccountWithRestoreAccess
    #   resp.data.snapshot.accounts_with_restore_access[0].account_id #=> String
    #   resp.data.snapshot.accounts_with_restore_access[0].account_alias #=> String
    #   resp.data.snapshot.owner_account #=> String
    #   resp.data.snapshot.total_backup_size_in_mega_bytes #=> Float
    #   resp.data.snapshot.actual_incremental_backup_size_in_mega_bytes #=> Float
    #   resp.data.snapshot.backup_progress_in_mega_bytes #=> Float
    #   resp.data.snapshot.current_backup_rate_in_mega_bytes_per_second #=> Float
    #   resp.data.snapshot.estimated_seconds_to_completion #=> Integer
    #   resp.data.snapshot.elapsed_time_in_seconds #=> Integer
    #   resp.data.snapshot.source_region #=> String
    #   resp.data.snapshot.tags #=> Array<Tag>
    #   resp.data.snapshot.tags[0] #=> Types::Tag
    #   resp.data.snapshot.tags[0].key #=> String
    #   resp.data.snapshot.tags[0].value #=> String
    #   resp.data.snapshot.restorable_node_types #=> Array<String>
    #   resp.data.snapshot.restorable_node_types[0] #=> String
    #   resp.data.snapshot.enhanced_vpc_routing #=> Boolean
    #   resp.data.snapshot.maintenance_track_name #=> String
    #   resp.data.snapshot.manual_snapshot_retention_period #=> Integer
    #   resp.data.snapshot.manual_snapshot_remaining_days #=> Integer
    #   resp.data.snapshot.snapshot_retention_start_time #=> Time
    #
    def modify_cluster_snapshot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyClusterSnapshotInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifyClusterSnapshotInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifyClusterSnapshot
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClusterSnapshotNotFoundFault, Errors::InvalidRetentionPeriodFault, Errors::InvalidClusterSnapshotStateFault]),
        data_parser: Parsers::ModifyClusterSnapshot
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifyClusterSnapshot,
        stubs: @stubs,
        params_class: Params::ModifyClusterSnapshotOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_cluster_snapshot
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies a snapshot schedule for a cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::ModifyClusterSnapshotScheduleInput}.
    #
    # @option params [String] :cluster_identifier
    #   <p>A unique identifier for the cluster whose snapshot schedule you want to modify.
    #           </p>
    #
    # @option params [String] :schedule_identifier
    #   <p>A unique alphanumeric identifier for the schedule that you want to associate with the
    #               cluster.</p>
    #
    # @option params [Boolean] :disassociate_schedule
    #   <p>A boolean to indicate whether to remove the assoiciation between the cluster and the
    #               schedule.</p>
    #
    # @return [Types::ModifyClusterSnapshotScheduleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_cluster_snapshot_schedule(
    #     cluster_identifier: 'ClusterIdentifier', # required
    #     schedule_identifier: 'ScheduleIdentifier',
    #     disassociate_schedule: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifyClusterSnapshotScheduleOutput
    #
    def modify_cluster_snapshot_schedule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyClusterSnapshotScheduleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifyClusterSnapshotScheduleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifyClusterSnapshotSchedule
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::SnapshotScheduleNotFoundFault, Errors::ClusterNotFoundFault, Errors::InvalidClusterSnapshotScheduleStateFault]),
        data_parser: Parsers::ModifyClusterSnapshotSchedule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifyClusterSnapshotSchedule,
        stubs: @stubs,
        params_class: Params::ModifyClusterSnapshotScheduleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_cluster_snapshot_schedule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies a cluster subnet group to include the specified list of VPC subnets. The
    #             operation replaces the existing list of subnets with the new list of subnets.</p>
    #
    # @param [Hash] params
    #   See {Types::ModifyClusterSubnetGroupInput}.
    #
    # @option params [String] :cluster_subnet_group_name
    #   <p>The name of the subnet group to be modified.</p>
    #
    # @option params [String] :description
    #   <p>A text description of the subnet group to be modified.</p>
    #
    # @option params [Array<String>] :subnet_ids
    #   <p>An array of VPC subnet IDs. A maximum of 20 subnets can be modified in a single
    #               request.</p>
    #
    # @return [Types::ModifyClusterSubnetGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_cluster_subnet_group(
    #     cluster_subnet_group_name: 'ClusterSubnetGroupName', # required
    #     description: 'Description',
    #     subnet_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifyClusterSubnetGroupOutput
    #   resp.data.cluster_subnet_group #=> Types::ClusterSubnetGroup
    #   resp.data.cluster_subnet_group.cluster_subnet_group_name #=> String
    #   resp.data.cluster_subnet_group.description #=> String
    #   resp.data.cluster_subnet_group.vpc_id #=> String
    #   resp.data.cluster_subnet_group.subnet_group_status #=> String
    #   resp.data.cluster_subnet_group.subnets #=> Array<Subnet>
    #   resp.data.cluster_subnet_group.subnets[0] #=> Types::Subnet
    #   resp.data.cluster_subnet_group.subnets[0].subnet_identifier #=> String
    #   resp.data.cluster_subnet_group.subnets[0].subnet_availability_zone #=> Types::AvailabilityZone
    #   resp.data.cluster_subnet_group.subnets[0].subnet_availability_zone.name #=> String
    #   resp.data.cluster_subnet_group.subnets[0].subnet_availability_zone.supported_platforms #=> Array<SupportedPlatform>
    #   resp.data.cluster_subnet_group.subnets[0].subnet_availability_zone.supported_platforms[0] #=> Types::SupportedPlatform
    #   resp.data.cluster_subnet_group.subnets[0].subnet_availability_zone.supported_platforms[0].name #=> String
    #   resp.data.cluster_subnet_group.subnets[0].subnet_status #=> String
    #   resp.data.cluster_subnet_group.tags #=> Array<Tag>
    #   resp.data.cluster_subnet_group.tags[0] #=> Types::Tag
    #   resp.data.cluster_subnet_group.tags[0].key #=> String
    #   resp.data.cluster_subnet_group.tags[0].value #=> String
    #
    def modify_cluster_subnet_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyClusterSubnetGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifyClusterSubnetGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifyClusterSubnetGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClusterSubnetGroupNotFoundFault, Errors::InvalidSubnet, Errors::SubnetAlreadyInUse, Errors::UnauthorizedOperation, Errors::ClusterSubnetQuotaExceededFault, Errors::DependentServiceRequestThrottlingFault]),
        data_parser: Parsers::ModifyClusterSubnetGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifyClusterSubnetGroup,
        stubs: @stubs,
        params_class: Params::ModifyClusterSubnetGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_cluster_subnet_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies a Redshift-managed VPC endpoint.</p>
    #
    # @param [Hash] params
    #   See {Types::ModifyEndpointAccessInput}.
    #
    # @option params [String] :endpoint_name
    #   <p>The endpoint to be modified.</p>
    #
    # @option params [Array<String>] :vpc_security_group_ids
    #   <p>The complete list of VPC security groups associated with the endpoint after the endpoint is modified.</p>
    #
    # @return [Types::ModifyEndpointAccessOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_endpoint_access(
    #     endpoint_name: 'EndpointName', # required
    #     vpc_security_group_ids: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifyEndpointAccessOutput
    #   resp.data.cluster_identifier #=> String
    #   resp.data.resource_owner #=> String
    #   resp.data.subnet_group_name #=> String
    #   resp.data.endpoint_status #=> String
    #   resp.data.endpoint_name #=> String
    #   resp.data.endpoint_create_time #=> Time
    #   resp.data.port #=> Integer
    #   resp.data.address #=> String
    #   resp.data.vpc_security_groups #=> Array<VpcSecurityGroupMembership>
    #   resp.data.vpc_security_groups[0] #=> Types::VpcSecurityGroupMembership
    #   resp.data.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.data.vpc_security_groups[0].status #=> String
    #   resp.data.vpc_endpoint #=> Types::VpcEndpoint
    #   resp.data.vpc_endpoint.vpc_endpoint_id #=> String
    #   resp.data.vpc_endpoint.vpc_id #=> String
    #   resp.data.vpc_endpoint.network_interfaces #=> Array<NetworkInterface>
    #   resp.data.vpc_endpoint.network_interfaces[0] #=> Types::NetworkInterface
    #   resp.data.vpc_endpoint.network_interfaces[0].network_interface_id #=> String
    #   resp.data.vpc_endpoint.network_interfaces[0].subnet_id #=> String
    #   resp.data.vpc_endpoint.network_interfaces[0].private_ip_address #=> String
    #   resp.data.vpc_endpoint.network_interfaces[0].availability_zone #=> String
    #
    def modify_endpoint_access(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyEndpointAccessInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifyEndpointAccessInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifyEndpointAccess
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidClusterStateFault, Errors::InvalidClusterSecurityGroupStateFault, Errors::UnauthorizedOperation, Errors::ClusterNotFoundFault, Errors::EndpointNotFoundFault, Errors::InvalidEndpointStateFault]),
        data_parser: Parsers::ModifyEndpointAccess
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifyEndpointAccess,
        stubs: @stubs,
        params_class: Params::ModifyEndpointAccessOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_endpoint_access
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies an existing Amazon Redshift event notification subscription.</p>
    #
    # @param [Hash] params
    #   See {Types::ModifyEventSubscriptionInput}.
    #
    # @option params [String] :subscription_name
    #   <p>The name of the modified Amazon Redshift event notification subscription.</p>
    #
    # @option params [String] :sns_topic_arn
    #   <p>The Amazon Resource Name (ARN) of the SNS topic to be used by the event
    #               notification subscription.</p>
    #
    # @option params [String] :source_type
    #   <p>The type of source that will be generating the events. For example, if you want to
    #               be notified of events generated by a cluster, you would set this parameter to cluster.
    #               If this value is not specified, events are returned for all Amazon Redshift objects in your
    #               Amazon Web Services account. You must specify a source type in order to specify source IDs.</p>
    #           <p>Valid values: cluster, cluster-parameter-group, cluster-security-group, cluster-snapshot, and scheduled-action.</p>
    #
    # @option params [Array<String>] :source_ids
    #   <p>A list of one or more identifiers of Amazon Redshift source objects. All of the objects
    #               must be of the same type as was specified in the source type parameter. The event
    #               subscription will return only events generated by the specified objects. If not
    #               specified, then events are returned for all objects within the source type
    #               specified.</p>
    #           <p>Example: my-cluster-1, my-cluster-2</p>
    #           <p>Example: my-snapshot-20131010</p>
    #
    # @option params [Array<String>] :event_categories
    #   <p>Specifies the Amazon Redshift event categories to be published by the event notification
    #               subscription.</p>
    #           <p>Values: configuration, management, monitoring, security, pending</p>
    #
    # @option params [String] :severity
    #   <p>Specifies the Amazon Redshift event severity to be published by the event notification
    #               subscription.</p>
    #           <p>Values: ERROR, INFO</p>
    #
    # @option params [Boolean] :enabled
    #   <p>A Boolean value indicating if the subscription is enabled. <code>true</code>
    #               indicates the subscription is enabled </p>
    #
    # @return [Types::ModifyEventSubscriptionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_event_subscription(
    #     subscription_name: 'SubscriptionName', # required
    #     sns_topic_arn: 'SnsTopicArn',
    #     source_type: 'SourceType',
    #     source_ids: [
    #       'member'
    #     ],
    #     event_categories: [
    #       'member'
    #     ],
    #     severity: 'Severity',
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
    #   resp.data.event_subscription.subscription_creation_time #=> Time
    #   resp.data.event_subscription.source_type #=> String
    #   resp.data.event_subscription.source_ids_list #=> Array<String>
    #   resp.data.event_subscription.source_ids_list[0] #=> String
    #   resp.data.event_subscription.event_categories_list #=> Array<String>
    #   resp.data.event_subscription.event_categories_list[0] #=> String
    #   resp.data.event_subscription.severity #=> String
    #   resp.data.event_subscription.enabled #=> Boolean
    #   resp.data.event_subscription.tags #=> Array<Tag>
    #   resp.data.event_subscription.tags[0] #=> Types::Tag
    #   resp.data.event_subscription.tags[0].key #=> String
    #   resp.data.event_subscription.tags[0].value #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::SubscriptionSeverityNotFoundFault, Errors::SubscriptionEventIdNotFoundFault, Errors::SubscriptionCategoryNotFoundFault, Errors::InvalidSubscriptionStateFault, Errors::SNSTopicArnNotFoundFault, Errors::SNSNoAuthorizationFault, Errors::SourceNotFoundFault, Errors::SubscriptionNotFoundFault, Errors::SNSInvalidTopicFault]),
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

    # <p>Modifies a scheduled action.
    #             </p>
    #
    # @param [Hash] params
    #   See {Types::ModifyScheduledActionInput}.
    #
    # @option params [String] :scheduled_action_name
    #   <p>The name of the scheduled action to modify. </p>
    #
    # @option params [ScheduledActionType] :target_action
    #   <p>A modified JSON format of the scheduled action.
    #               For more information about this parameter, see <a>ScheduledAction</a>. </p>
    #
    # @option params [String] :schedule
    #   <p>A modified schedule in either <code>at( )</code> or <code>cron( )</code> format.
    #               For more information about this parameter, see <a>ScheduledAction</a>.</p>
    #
    # @option params [String] :iam_role
    #   <p>A different IAM role to assume to run the target action.
    #               For more information about this parameter, see <a>ScheduledAction</a>.</p>
    #
    # @option params [String] :scheduled_action_description
    #   <p>A modified description of the scheduled action. </p>
    #
    # @option params [Time] :start_time
    #   <p>A modified start time of the scheduled action.
    #               For more information about this parameter, see <a>ScheduledAction</a>. </p>
    #
    # @option params [Time] :end_time
    #   <p>A modified end time of the scheduled action.
    #               For more information about this parameter, see <a>ScheduledAction</a>. </p>
    #
    # @option params [Boolean] :enable
    #   <p>A modified enable flag of the scheduled action. If true, the scheduled action is active. If false, the scheduled action is disabled. </p>
    #
    # @return [Types::ModifyScheduledActionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_scheduled_action(
    #     scheduled_action_name: 'ScheduledActionName', # required
    #     target_action: {
    #       resize_cluster: {
    #         cluster_identifier: 'ClusterIdentifier', # required
    #         cluster_type: 'ClusterType',
    #         node_type: 'NodeType',
    #         number_of_nodes: 1,
    #         classic: false,
    #         reserved_node_id: 'ReservedNodeId',
    #         target_reserved_node_offering_id: 'TargetReservedNodeOfferingId'
    #       },
    #       pause_cluster: {
    #         cluster_identifier: 'ClusterIdentifier' # required
    #       },
    #       resume_cluster: {
    #         cluster_identifier: 'ClusterIdentifier' # required
    #       }
    #     },
    #     schedule: 'Schedule',
    #     iam_role: 'IamRole',
    #     scheduled_action_description: 'ScheduledActionDescription',
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     enable: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifyScheduledActionOutput
    #   resp.data.scheduled_action_name #=> String
    #   resp.data.target_action #=> Types::ScheduledActionType
    #   resp.data.target_action.resize_cluster #=> Types::ResizeClusterMessage
    #   resp.data.target_action.resize_cluster.cluster_identifier #=> String
    #   resp.data.target_action.resize_cluster.cluster_type #=> String
    #   resp.data.target_action.resize_cluster.node_type #=> String
    #   resp.data.target_action.resize_cluster.number_of_nodes #=> Integer
    #   resp.data.target_action.resize_cluster.classic #=> Boolean
    #   resp.data.target_action.resize_cluster.reserved_node_id #=> String
    #   resp.data.target_action.resize_cluster.target_reserved_node_offering_id #=> String
    #   resp.data.target_action.pause_cluster #=> Types::PauseClusterMessage
    #   resp.data.target_action.pause_cluster.cluster_identifier #=> String
    #   resp.data.target_action.resume_cluster #=> Types::ResumeClusterMessage
    #   resp.data.target_action.resume_cluster.cluster_identifier #=> String
    #   resp.data.schedule #=> String
    #   resp.data.iam_role #=> String
    #   resp.data.scheduled_action_description #=> String
    #   resp.data.state #=> String, one of ["ACTIVE", "DISABLED"]
    #   resp.data.next_invocations #=> Array<Time>
    #   resp.data.next_invocations[0] #=> Time
    #   resp.data.start_time #=> Time
    #   resp.data.end_time #=> Time
    #
    def modify_scheduled_action(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyScheduledActionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifyScheduledActionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifyScheduledAction
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ScheduledActionTypeUnsupportedFault, Errors::ScheduledActionNotFoundFault, Errors::InvalidScheduledActionFault, Errors::UnauthorizedOperation, Errors::InvalidScheduleFault]),
        data_parser: Parsers::ModifyScheduledAction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifyScheduledAction,
        stubs: @stubs,
        params_class: Params::ModifyScheduledActionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_scheduled_action
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies the number of days to retain snapshots in the destination Amazon Web Services Region after
    #             they are copied from the source Amazon Web Services Region. By default, this operation only changes the
    #             retention period of copied automated snapshots. The retention periods for both new and
    #             existing copied automated snapshots are updated with the new retention period. You can
    #             set the manual option to change only the retention periods of copied manual snapshots.
    #             If you set this option, only newly copied manual snapshots have the new retention
    #             period. </p>
    #
    # @param [Hash] params
    #   See {Types::ModifySnapshotCopyRetentionPeriodInput}.
    #
    # @option params [String] :cluster_identifier
    #   <p>The unique identifier of the cluster for which you want to change the retention
    #               period for either automated or manual snapshots that are copied to a destination Amazon Web Services Region.</p>
    #           <p>Constraints: Must be the valid name of an existing cluster that has cross-region
    #               snapshot copy enabled.</p>
    #
    # @option params [Integer] :retention_period
    #   <p>The number of days to retain automated snapshots in the destination Amazon Web Services Region
    #               after they are copied from the source Amazon Web Services Region.</p>
    #           <p>By default, this only changes the retention period of copied automated snapshots. </p>
    #           <p>If you decrease the retention period for automated snapshots that are copied to a
    #               destination Amazon Web Services Region, Amazon Redshift deletes any existing automated snapshots that were
    #               copied to the destination Amazon Web Services Region and that fall outside of the new retention
    #               period.</p>
    #           <p>Constraints: Must be at least 1 and no more than 35 for automated snapshots. </p>
    #           <p>If you specify the <code>manual</code> option, only newly copied manual snapshots will
    #               have the new retention period. </p>
    #           <p>If you specify the value of -1 newly copied manual snapshots are retained
    #               indefinitely.</p>
    #           <p>Constraints: The number of days must be either -1 or an integer between 1 and 3,653
    #               for manual snapshots.</p>
    #
    # @option params [Boolean] :manual
    #   <p>Indicates whether to apply the snapshot retention period to newly copied manual
    #               snapshots instead of automated snapshots.</p>
    #
    # @return [Types::ModifySnapshotCopyRetentionPeriodOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_snapshot_copy_retention_period(
    #     cluster_identifier: 'ClusterIdentifier', # required
    #     retention_period: 1, # required
    #     manual: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifySnapshotCopyRetentionPeriodOutput
    #   resp.data.cluster #=> Types::Cluster
    #   resp.data.cluster.cluster_identifier #=> String
    #   resp.data.cluster.node_type #=> String
    #   resp.data.cluster.cluster_status #=> String
    #   resp.data.cluster.cluster_availability_status #=> String
    #   resp.data.cluster.modify_status #=> String
    #   resp.data.cluster.master_username #=> String
    #   resp.data.cluster.db_name #=> String
    #   resp.data.cluster.endpoint #=> Types::Endpoint
    #   resp.data.cluster.endpoint.address #=> String
    #   resp.data.cluster.endpoint.port #=> Integer
    #   resp.data.cluster.endpoint.vpc_endpoints #=> Array<VpcEndpoint>
    #   resp.data.cluster.endpoint.vpc_endpoints[0] #=> Types::VpcEndpoint
    #   resp.data.cluster.endpoint.vpc_endpoints[0].vpc_endpoint_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].vpc_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces #=> Array<NetworkInterface>
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0] #=> Types::NetworkInterface
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].network_interface_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].subnet_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].private_ip_address #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].availability_zone #=> String
    #   resp.data.cluster.cluster_create_time #=> Time
    #   resp.data.cluster.automated_snapshot_retention_period #=> Integer
    #   resp.data.cluster.manual_snapshot_retention_period #=> Integer
    #   resp.data.cluster.cluster_security_groups #=> Array<ClusterSecurityGroupMembership>
    #   resp.data.cluster.cluster_security_groups[0] #=> Types::ClusterSecurityGroupMembership
    #   resp.data.cluster.cluster_security_groups[0].cluster_security_group_name #=> String
    #   resp.data.cluster.cluster_security_groups[0].status #=> String
    #   resp.data.cluster.vpc_security_groups #=> Array<VpcSecurityGroupMembership>
    #   resp.data.cluster.vpc_security_groups[0] #=> Types::VpcSecurityGroupMembership
    #   resp.data.cluster.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.data.cluster.vpc_security_groups[0].status #=> String
    #   resp.data.cluster.cluster_parameter_groups #=> Array<ClusterParameterGroupStatus>
    #   resp.data.cluster.cluster_parameter_groups[0] #=> Types::ClusterParameterGroupStatus
    #   resp.data.cluster.cluster_parameter_groups[0].parameter_group_name #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].parameter_apply_status #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list #=> Array<ClusterParameterStatus>
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0] #=> Types::ClusterParameterStatus
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_name #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_status #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_error_description #=> String
    #   resp.data.cluster.cluster_subnet_group_name #=> String
    #   resp.data.cluster.vpc_id #=> String
    #   resp.data.cluster.availability_zone #=> String
    #   resp.data.cluster.preferred_maintenance_window #=> String
    #   resp.data.cluster.pending_modified_values #=> Types::PendingModifiedValues
    #   resp.data.cluster.pending_modified_values.master_user_password #=> String
    #   resp.data.cluster.pending_modified_values.node_type #=> String
    #   resp.data.cluster.pending_modified_values.number_of_nodes #=> Integer
    #   resp.data.cluster.pending_modified_values.cluster_type #=> String
    #   resp.data.cluster.pending_modified_values.cluster_version #=> String
    #   resp.data.cluster.pending_modified_values.automated_snapshot_retention_period #=> Integer
    #   resp.data.cluster.pending_modified_values.cluster_identifier #=> String
    #   resp.data.cluster.pending_modified_values.publicly_accessible #=> Boolean
    #   resp.data.cluster.pending_modified_values.enhanced_vpc_routing #=> Boolean
    #   resp.data.cluster.pending_modified_values.maintenance_track_name #=> String
    #   resp.data.cluster.pending_modified_values.encryption_type #=> String
    #   resp.data.cluster.cluster_version #=> String
    #   resp.data.cluster.allow_version_upgrade #=> Boolean
    #   resp.data.cluster.number_of_nodes #=> Integer
    #   resp.data.cluster.publicly_accessible #=> Boolean
    #   resp.data.cluster.encrypted #=> Boolean
    #   resp.data.cluster.restore_status #=> Types::RestoreStatus
    #   resp.data.cluster.restore_status.status #=> String
    #   resp.data.cluster.restore_status.current_restore_rate_in_mega_bytes_per_second #=> Float
    #   resp.data.cluster.restore_status.snapshot_size_in_mega_bytes #=> Integer
    #   resp.data.cluster.restore_status.progress_in_mega_bytes #=> Integer
    #   resp.data.cluster.restore_status.elapsed_time_in_seconds #=> Integer
    #   resp.data.cluster.restore_status.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.data.cluster.data_transfer_progress #=> Types::DataTransferProgress
    #   resp.data.cluster.data_transfer_progress.status #=> String
    #   resp.data.cluster.data_transfer_progress.current_rate_in_mega_bytes_per_second #=> Float
    #   resp.data.cluster.data_transfer_progress.total_data_in_mega_bytes #=> Integer
    #   resp.data.cluster.data_transfer_progress.data_transferred_in_mega_bytes #=> Integer
    #   resp.data.cluster.data_transfer_progress.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.data.cluster.data_transfer_progress.elapsed_time_in_seconds #=> Integer
    #   resp.data.cluster.hsm_status #=> Types::HsmStatus
    #   resp.data.cluster.hsm_status.hsm_client_certificate_identifier #=> String
    #   resp.data.cluster.hsm_status.hsm_configuration_identifier #=> String
    #   resp.data.cluster.hsm_status.status #=> String
    #   resp.data.cluster.cluster_snapshot_copy_status #=> Types::ClusterSnapshotCopyStatus
    #   resp.data.cluster.cluster_snapshot_copy_status.destination_region #=> String
    #   resp.data.cluster.cluster_snapshot_copy_status.retention_period #=> Integer
    #   resp.data.cluster.cluster_snapshot_copy_status.manual_snapshot_retention_period #=> Integer
    #   resp.data.cluster.cluster_snapshot_copy_status.snapshot_copy_grant_name #=> String
    #   resp.data.cluster.cluster_public_key #=> String
    #   resp.data.cluster.cluster_nodes #=> Array<ClusterNode>
    #   resp.data.cluster.cluster_nodes[0] #=> Types::ClusterNode
    #   resp.data.cluster.cluster_nodes[0].node_role #=> String
    #   resp.data.cluster.cluster_nodes[0].private_ip_address #=> String
    #   resp.data.cluster.cluster_nodes[0].public_ip_address #=> String
    #   resp.data.cluster.elastic_ip_status #=> Types::ElasticIpStatus
    #   resp.data.cluster.elastic_ip_status.elastic_ip #=> String
    #   resp.data.cluster.elastic_ip_status.status #=> String
    #   resp.data.cluster.cluster_revision_number #=> String
    #   resp.data.cluster.tags #=> Array<Tag>
    #   resp.data.cluster.tags[0] #=> Types::Tag
    #   resp.data.cluster.tags[0].key #=> String
    #   resp.data.cluster.tags[0].value #=> String
    #   resp.data.cluster.kms_key_id #=> String
    #   resp.data.cluster.enhanced_vpc_routing #=> Boolean
    #   resp.data.cluster.iam_roles #=> Array<ClusterIamRole>
    #   resp.data.cluster.iam_roles[0] #=> Types::ClusterIamRole
    #   resp.data.cluster.iam_roles[0].iam_role_arn #=> String
    #   resp.data.cluster.iam_roles[0].apply_status #=> String
    #   resp.data.cluster.pending_actions #=> Array<String>
    #   resp.data.cluster.pending_actions[0] #=> String
    #   resp.data.cluster.maintenance_track_name #=> String
    #   resp.data.cluster.elastic_resize_number_of_node_options #=> String
    #   resp.data.cluster.deferred_maintenance_windows #=> Array<DeferredMaintenanceWindow>
    #   resp.data.cluster.deferred_maintenance_windows[0] #=> Types::DeferredMaintenanceWindow
    #   resp.data.cluster.deferred_maintenance_windows[0].defer_maintenance_identifier #=> String
    #   resp.data.cluster.deferred_maintenance_windows[0].defer_maintenance_start_time #=> Time
    #   resp.data.cluster.deferred_maintenance_windows[0].defer_maintenance_end_time #=> Time
    #   resp.data.cluster.snapshot_schedule_identifier #=> String
    #   resp.data.cluster.snapshot_schedule_state #=> String, one of ["MODIFYING", "ACTIVE", "FAILED"]
    #   resp.data.cluster.expected_next_snapshot_schedule_time #=> Time
    #   resp.data.cluster.expected_next_snapshot_schedule_time_status #=> String
    #   resp.data.cluster.next_maintenance_window_start_time #=> Time
    #   resp.data.cluster.resize_info #=> Types::ResizeInfo
    #   resp.data.cluster.resize_info.resize_type #=> String
    #   resp.data.cluster.resize_info.allow_cancel_resize #=> Boolean
    #   resp.data.cluster.availability_zone_relocation_status #=> String
    #   resp.data.cluster.cluster_namespace_arn #=> String
    #   resp.data.cluster.total_storage_capacity_in_mega_bytes #=> Integer
    #   resp.data.cluster.aqua_configuration #=> Types::AquaConfiguration
    #   resp.data.cluster.aqua_configuration.aqua_status #=> String, one of ["enabled", "disabled", "applying"]
    #   resp.data.cluster.aqua_configuration.aqua_configuration_status #=> String, one of ["enabled", "disabled", "auto"]
    #   resp.data.cluster.default_iam_role_arn #=> String
    #   resp.data.cluster.reserved_node_exchange_status #=> Types::ReservedNodeExchangeStatus
    #   resp.data.cluster.reserved_node_exchange_status.reserved_node_exchange_request_id #=> String
    #   resp.data.cluster.reserved_node_exchange_status.status #=> String, one of ["REQUESTED", "PENDING", "IN_PROGRESS", "RETRYING", "SUCCEEDED", "FAILED"]
    #   resp.data.cluster.reserved_node_exchange_status.request_time #=> Time
    #   resp.data.cluster.reserved_node_exchange_status.source_reserved_node_id #=> String
    #   resp.data.cluster.reserved_node_exchange_status.source_reserved_node_type #=> String
    #   resp.data.cluster.reserved_node_exchange_status.source_reserved_node_count #=> Integer
    #   resp.data.cluster.reserved_node_exchange_status.target_reserved_node_offering_id #=> String
    #   resp.data.cluster.reserved_node_exchange_status.target_reserved_node_type #=> String
    #   resp.data.cluster.reserved_node_exchange_status.target_reserved_node_count #=> Integer
    #
    def modify_snapshot_copy_retention_period(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifySnapshotCopyRetentionPeriodInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifySnapshotCopyRetentionPeriodInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifySnapshotCopyRetentionPeriod
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidClusterStateFault, Errors::SnapshotCopyDisabledFault, Errors::InvalidRetentionPeriodFault, Errors::UnauthorizedOperation, Errors::ClusterNotFoundFault]),
        data_parser: Parsers::ModifySnapshotCopyRetentionPeriod
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifySnapshotCopyRetentionPeriod,
        stubs: @stubs,
        params_class: Params::ModifySnapshotCopyRetentionPeriodOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_snapshot_copy_retention_period
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies a snapshot schedule. Any schedule associated with a cluster is modified
    #             asynchronously.</p>
    #
    # @param [Hash] params
    #   See {Types::ModifySnapshotScheduleInput}.
    #
    # @option params [String] :schedule_identifier
    #   <p>A unique alphanumeric identifier of the schedule to modify.</p>
    #
    # @option params [Array<String>] :schedule_definitions
    #   <p>An updated list of schedule definitions. A schedule definition is made up of schedule
    #               expressions, for example, "cron(30 12 *)" or "rate(12 hours)".</p>
    #
    # @return [Types::ModifySnapshotScheduleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_snapshot_schedule(
    #     schedule_identifier: 'ScheduleIdentifier', # required
    #     schedule_definitions: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifySnapshotScheduleOutput
    #   resp.data.schedule_definitions #=> Array<String>
    #   resp.data.schedule_definitions[0] #=> String
    #   resp.data.schedule_identifier #=> String
    #   resp.data.schedule_description #=> String
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.next_invocations #=> Array<Time>
    #   resp.data.next_invocations[0] #=> Time
    #   resp.data.associated_cluster_count #=> Integer
    #   resp.data.associated_clusters #=> Array<ClusterAssociatedToSchedule>
    #   resp.data.associated_clusters[0] #=> Types::ClusterAssociatedToSchedule
    #   resp.data.associated_clusters[0].cluster_identifier #=> String
    #   resp.data.associated_clusters[0].schedule_association_state #=> String, one of ["MODIFYING", "ACTIVE", "FAILED"]
    #
    def modify_snapshot_schedule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifySnapshotScheduleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifySnapshotScheduleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifySnapshotSchedule
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::SnapshotScheduleNotFoundFault, Errors::InvalidScheduleFault, Errors::SnapshotScheduleUpdateInProgressFault]),
        data_parser: Parsers::ModifySnapshotSchedule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifySnapshotSchedule,
        stubs: @stubs,
        params_class: Params::ModifySnapshotScheduleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_snapshot_schedule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies a usage limit in a cluster.
    #             You can't modify the feature type or period of a usage limit.</p>
    #
    # @param [Hash] params
    #   See {Types::ModifyUsageLimitInput}.
    #
    # @option params [String] :usage_limit_id
    #   <p>The identifier of the usage limit to modify.</p>
    #
    # @option params [Integer] :amount
    #   <p>The new limit amount.
    #               For more information about this parameter, see <a>UsageLimit</a>. </p>
    #
    # @option params [String] :breach_action
    #   <p>The new action that Amazon Redshift takes when the limit is reached.
    #               For more information about this parameter, see <a>UsageLimit</a>. </p>
    #
    # @return [Types::ModifyUsageLimitOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_usage_limit(
    #     usage_limit_id: 'UsageLimitId', # required
    #     amount: 1,
    #     breach_action: 'log' # accepts ["log", "emit-metric", "disable"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifyUsageLimitOutput
    #   resp.data.usage_limit_id #=> String
    #   resp.data.cluster_identifier #=> String
    #   resp.data.feature_type #=> String, one of ["spectrum", "concurrency-scaling", "cross-region-datasharing"]
    #   resp.data.limit_type #=> String, one of ["time", "data-scanned"]
    #   resp.data.amount #=> Integer
    #   resp.data.period #=> String, one of ["daily", "weekly", "monthly"]
    #   resp.data.breach_action #=> String, one of ["log", "emit-metric", "disable"]
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #
    def modify_usage_limit(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyUsageLimitInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifyUsageLimitInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifyUsageLimit
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidUsageLimitFault, Errors::UnsupportedOperationFault, Errors::UsageLimitNotFoundFault]),
        data_parser: Parsers::ModifyUsageLimit
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifyUsageLimit,
        stubs: @stubs,
        params_class: Params::ModifyUsageLimitOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_usage_limit
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Pauses a cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::PauseClusterInput}.
    #
    # @option params [String] :cluster_identifier
    #   <p>The identifier of the cluster to be paused.</p>
    #
    # @return [Types::PauseClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.pause_cluster(
    #     cluster_identifier: 'ClusterIdentifier' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PauseClusterOutput
    #   resp.data.cluster #=> Types::Cluster
    #   resp.data.cluster.cluster_identifier #=> String
    #   resp.data.cluster.node_type #=> String
    #   resp.data.cluster.cluster_status #=> String
    #   resp.data.cluster.cluster_availability_status #=> String
    #   resp.data.cluster.modify_status #=> String
    #   resp.data.cluster.master_username #=> String
    #   resp.data.cluster.db_name #=> String
    #   resp.data.cluster.endpoint #=> Types::Endpoint
    #   resp.data.cluster.endpoint.address #=> String
    #   resp.data.cluster.endpoint.port #=> Integer
    #   resp.data.cluster.endpoint.vpc_endpoints #=> Array<VpcEndpoint>
    #   resp.data.cluster.endpoint.vpc_endpoints[0] #=> Types::VpcEndpoint
    #   resp.data.cluster.endpoint.vpc_endpoints[0].vpc_endpoint_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].vpc_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces #=> Array<NetworkInterface>
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0] #=> Types::NetworkInterface
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].network_interface_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].subnet_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].private_ip_address #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].availability_zone #=> String
    #   resp.data.cluster.cluster_create_time #=> Time
    #   resp.data.cluster.automated_snapshot_retention_period #=> Integer
    #   resp.data.cluster.manual_snapshot_retention_period #=> Integer
    #   resp.data.cluster.cluster_security_groups #=> Array<ClusterSecurityGroupMembership>
    #   resp.data.cluster.cluster_security_groups[0] #=> Types::ClusterSecurityGroupMembership
    #   resp.data.cluster.cluster_security_groups[0].cluster_security_group_name #=> String
    #   resp.data.cluster.cluster_security_groups[0].status #=> String
    #   resp.data.cluster.vpc_security_groups #=> Array<VpcSecurityGroupMembership>
    #   resp.data.cluster.vpc_security_groups[0] #=> Types::VpcSecurityGroupMembership
    #   resp.data.cluster.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.data.cluster.vpc_security_groups[0].status #=> String
    #   resp.data.cluster.cluster_parameter_groups #=> Array<ClusterParameterGroupStatus>
    #   resp.data.cluster.cluster_parameter_groups[0] #=> Types::ClusterParameterGroupStatus
    #   resp.data.cluster.cluster_parameter_groups[0].parameter_group_name #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].parameter_apply_status #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list #=> Array<ClusterParameterStatus>
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0] #=> Types::ClusterParameterStatus
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_name #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_status #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_error_description #=> String
    #   resp.data.cluster.cluster_subnet_group_name #=> String
    #   resp.data.cluster.vpc_id #=> String
    #   resp.data.cluster.availability_zone #=> String
    #   resp.data.cluster.preferred_maintenance_window #=> String
    #   resp.data.cluster.pending_modified_values #=> Types::PendingModifiedValues
    #   resp.data.cluster.pending_modified_values.master_user_password #=> String
    #   resp.data.cluster.pending_modified_values.node_type #=> String
    #   resp.data.cluster.pending_modified_values.number_of_nodes #=> Integer
    #   resp.data.cluster.pending_modified_values.cluster_type #=> String
    #   resp.data.cluster.pending_modified_values.cluster_version #=> String
    #   resp.data.cluster.pending_modified_values.automated_snapshot_retention_period #=> Integer
    #   resp.data.cluster.pending_modified_values.cluster_identifier #=> String
    #   resp.data.cluster.pending_modified_values.publicly_accessible #=> Boolean
    #   resp.data.cluster.pending_modified_values.enhanced_vpc_routing #=> Boolean
    #   resp.data.cluster.pending_modified_values.maintenance_track_name #=> String
    #   resp.data.cluster.pending_modified_values.encryption_type #=> String
    #   resp.data.cluster.cluster_version #=> String
    #   resp.data.cluster.allow_version_upgrade #=> Boolean
    #   resp.data.cluster.number_of_nodes #=> Integer
    #   resp.data.cluster.publicly_accessible #=> Boolean
    #   resp.data.cluster.encrypted #=> Boolean
    #   resp.data.cluster.restore_status #=> Types::RestoreStatus
    #   resp.data.cluster.restore_status.status #=> String
    #   resp.data.cluster.restore_status.current_restore_rate_in_mega_bytes_per_second #=> Float
    #   resp.data.cluster.restore_status.snapshot_size_in_mega_bytes #=> Integer
    #   resp.data.cluster.restore_status.progress_in_mega_bytes #=> Integer
    #   resp.data.cluster.restore_status.elapsed_time_in_seconds #=> Integer
    #   resp.data.cluster.restore_status.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.data.cluster.data_transfer_progress #=> Types::DataTransferProgress
    #   resp.data.cluster.data_transfer_progress.status #=> String
    #   resp.data.cluster.data_transfer_progress.current_rate_in_mega_bytes_per_second #=> Float
    #   resp.data.cluster.data_transfer_progress.total_data_in_mega_bytes #=> Integer
    #   resp.data.cluster.data_transfer_progress.data_transferred_in_mega_bytes #=> Integer
    #   resp.data.cluster.data_transfer_progress.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.data.cluster.data_transfer_progress.elapsed_time_in_seconds #=> Integer
    #   resp.data.cluster.hsm_status #=> Types::HsmStatus
    #   resp.data.cluster.hsm_status.hsm_client_certificate_identifier #=> String
    #   resp.data.cluster.hsm_status.hsm_configuration_identifier #=> String
    #   resp.data.cluster.hsm_status.status #=> String
    #   resp.data.cluster.cluster_snapshot_copy_status #=> Types::ClusterSnapshotCopyStatus
    #   resp.data.cluster.cluster_snapshot_copy_status.destination_region #=> String
    #   resp.data.cluster.cluster_snapshot_copy_status.retention_period #=> Integer
    #   resp.data.cluster.cluster_snapshot_copy_status.manual_snapshot_retention_period #=> Integer
    #   resp.data.cluster.cluster_snapshot_copy_status.snapshot_copy_grant_name #=> String
    #   resp.data.cluster.cluster_public_key #=> String
    #   resp.data.cluster.cluster_nodes #=> Array<ClusterNode>
    #   resp.data.cluster.cluster_nodes[0] #=> Types::ClusterNode
    #   resp.data.cluster.cluster_nodes[0].node_role #=> String
    #   resp.data.cluster.cluster_nodes[0].private_ip_address #=> String
    #   resp.data.cluster.cluster_nodes[0].public_ip_address #=> String
    #   resp.data.cluster.elastic_ip_status #=> Types::ElasticIpStatus
    #   resp.data.cluster.elastic_ip_status.elastic_ip #=> String
    #   resp.data.cluster.elastic_ip_status.status #=> String
    #   resp.data.cluster.cluster_revision_number #=> String
    #   resp.data.cluster.tags #=> Array<Tag>
    #   resp.data.cluster.tags[0] #=> Types::Tag
    #   resp.data.cluster.tags[0].key #=> String
    #   resp.data.cluster.tags[0].value #=> String
    #   resp.data.cluster.kms_key_id #=> String
    #   resp.data.cluster.enhanced_vpc_routing #=> Boolean
    #   resp.data.cluster.iam_roles #=> Array<ClusterIamRole>
    #   resp.data.cluster.iam_roles[0] #=> Types::ClusterIamRole
    #   resp.data.cluster.iam_roles[0].iam_role_arn #=> String
    #   resp.data.cluster.iam_roles[0].apply_status #=> String
    #   resp.data.cluster.pending_actions #=> Array<String>
    #   resp.data.cluster.pending_actions[0] #=> String
    #   resp.data.cluster.maintenance_track_name #=> String
    #   resp.data.cluster.elastic_resize_number_of_node_options #=> String
    #   resp.data.cluster.deferred_maintenance_windows #=> Array<DeferredMaintenanceWindow>
    #   resp.data.cluster.deferred_maintenance_windows[0] #=> Types::DeferredMaintenanceWindow
    #   resp.data.cluster.deferred_maintenance_windows[0].defer_maintenance_identifier #=> String
    #   resp.data.cluster.deferred_maintenance_windows[0].defer_maintenance_start_time #=> Time
    #   resp.data.cluster.deferred_maintenance_windows[0].defer_maintenance_end_time #=> Time
    #   resp.data.cluster.snapshot_schedule_identifier #=> String
    #   resp.data.cluster.snapshot_schedule_state #=> String, one of ["MODIFYING", "ACTIVE", "FAILED"]
    #   resp.data.cluster.expected_next_snapshot_schedule_time #=> Time
    #   resp.data.cluster.expected_next_snapshot_schedule_time_status #=> String
    #   resp.data.cluster.next_maintenance_window_start_time #=> Time
    #   resp.data.cluster.resize_info #=> Types::ResizeInfo
    #   resp.data.cluster.resize_info.resize_type #=> String
    #   resp.data.cluster.resize_info.allow_cancel_resize #=> Boolean
    #   resp.data.cluster.availability_zone_relocation_status #=> String
    #   resp.data.cluster.cluster_namespace_arn #=> String
    #   resp.data.cluster.total_storage_capacity_in_mega_bytes #=> Integer
    #   resp.data.cluster.aqua_configuration #=> Types::AquaConfiguration
    #   resp.data.cluster.aqua_configuration.aqua_status #=> String, one of ["enabled", "disabled", "applying"]
    #   resp.data.cluster.aqua_configuration.aqua_configuration_status #=> String, one of ["enabled", "disabled", "auto"]
    #   resp.data.cluster.default_iam_role_arn #=> String
    #   resp.data.cluster.reserved_node_exchange_status #=> Types::ReservedNodeExchangeStatus
    #   resp.data.cluster.reserved_node_exchange_status.reserved_node_exchange_request_id #=> String
    #   resp.data.cluster.reserved_node_exchange_status.status #=> String, one of ["REQUESTED", "PENDING", "IN_PROGRESS", "RETRYING", "SUCCEEDED", "FAILED"]
    #   resp.data.cluster.reserved_node_exchange_status.request_time #=> Time
    #   resp.data.cluster.reserved_node_exchange_status.source_reserved_node_id #=> String
    #   resp.data.cluster.reserved_node_exchange_status.source_reserved_node_type #=> String
    #   resp.data.cluster.reserved_node_exchange_status.source_reserved_node_count #=> Integer
    #   resp.data.cluster.reserved_node_exchange_status.target_reserved_node_offering_id #=> String
    #   resp.data.cluster.reserved_node_exchange_status.target_reserved_node_type #=> String
    #   resp.data.cluster.reserved_node_exchange_status.target_reserved_node_count #=> Integer
    #
    def pause_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PauseClusterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PauseClusterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PauseCluster
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidClusterStateFault, Errors::ClusterNotFoundFault]),
        data_parser: Parsers::PauseCluster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PauseCluster,
        stubs: @stubs,
        params_class: Params::PauseClusterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :pause_cluster
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Allows you to purchase reserved nodes. Amazon Redshift offers a predefined set of
    #             reserved node offerings. You can purchase one or more of the offerings. You can call the
    #                 <a>DescribeReservedNodeOfferings</a> API to obtain the available reserved
    #             node offerings. You can call this API by providing a specific reserved node offering and
    #             the number of nodes you want to reserve. </p>
    #         <p>
    # For more information about reserved node offerings, go to
    # <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/purchase-reserved-node-instance.html">Purchasing Reserved Nodes</a>
    # in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::PurchaseReservedNodeOfferingInput}.
    #
    # @option params [String] :reserved_node_offering_id
    #   <p>The unique identifier of the reserved node offering you want to purchase.</p>
    #
    # @option params [Integer] :node_count
    #   <p>The number of reserved nodes that you want to purchase.</p>
    #           <p>Default: <code>1</code>
    #           </p>
    #
    # @return [Types::PurchaseReservedNodeOfferingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.purchase_reserved_node_offering(
    #     reserved_node_offering_id: 'ReservedNodeOfferingId', # required
    #     node_count: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PurchaseReservedNodeOfferingOutput
    #   resp.data.reserved_node #=> Types::ReservedNode
    #   resp.data.reserved_node.reserved_node_id #=> String
    #   resp.data.reserved_node.reserved_node_offering_id #=> String
    #   resp.data.reserved_node.node_type #=> String
    #   resp.data.reserved_node.start_time #=> Time
    #   resp.data.reserved_node.duration #=> Integer
    #   resp.data.reserved_node.fixed_price #=> Float
    #   resp.data.reserved_node.usage_price #=> Float
    #   resp.data.reserved_node.currency_code #=> String
    #   resp.data.reserved_node.node_count #=> Integer
    #   resp.data.reserved_node.state #=> String
    #   resp.data.reserved_node.offering_type #=> String
    #   resp.data.reserved_node.recurring_charges #=> Array<RecurringCharge>
    #   resp.data.reserved_node.recurring_charges[0] #=> Types::RecurringCharge
    #   resp.data.reserved_node.recurring_charges[0].recurring_charge_amount #=> Float
    #   resp.data.reserved_node.recurring_charges[0].recurring_charge_frequency #=> String
    #   resp.data.reserved_node.reserved_node_offering_type #=> String, one of ["Regular", "Upgradable"]
    #
    def purchase_reserved_node_offering(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PurchaseReservedNodeOfferingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PurchaseReservedNodeOfferingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PurchaseReservedNodeOffering
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedOperationFault, Errors::ReservedNodeAlreadyExistsFault, Errors::ReservedNodeOfferingNotFoundFault, Errors::ReservedNodeQuotaExceededFault]),
        data_parser: Parsers::PurchaseReservedNodeOffering
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PurchaseReservedNodeOffering,
        stubs: @stubs,
        params_class: Params::PurchaseReservedNodeOfferingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :purchase_reserved_node_offering
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Reboots a cluster. This action is taken as soon as possible. It results in a
    #             momentary outage to the cluster, during which the cluster status is set to
    #                 <code>rebooting</code>. A cluster event is created when the reboot is completed. Any
    #             pending cluster modifications (see <a>ModifyCluster</a>) are applied at this
    #             reboot.
    # For more information about managing clusters, go to
    # <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html">Amazon Redshift Clusters</a>
    # in the <i>Amazon Redshift Cluster Management Guide</i>. </p>
    #
    # @param [Hash] params
    #   See {Types::RebootClusterInput}.
    #
    # @option params [String] :cluster_identifier
    #   <p>The cluster identifier.</p>
    #
    # @return [Types::RebootClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reboot_cluster(
    #     cluster_identifier: 'ClusterIdentifier' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RebootClusterOutput
    #   resp.data.cluster #=> Types::Cluster
    #   resp.data.cluster.cluster_identifier #=> String
    #   resp.data.cluster.node_type #=> String
    #   resp.data.cluster.cluster_status #=> String
    #   resp.data.cluster.cluster_availability_status #=> String
    #   resp.data.cluster.modify_status #=> String
    #   resp.data.cluster.master_username #=> String
    #   resp.data.cluster.db_name #=> String
    #   resp.data.cluster.endpoint #=> Types::Endpoint
    #   resp.data.cluster.endpoint.address #=> String
    #   resp.data.cluster.endpoint.port #=> Integer
    #   resp.data.cluster.endpoint.vpc_endpoints #=> Array<VpcEndpoint>
    #   resp.data.cluster.endpoint.vpc_endpoints[0] #=> Types::VpcEndpoint
    #   resp.data.cluster.endpoint.vpc_endpoints[0].vpc_endpoint_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].vpc_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces #=> Array<NetworkInterface>
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0] #=> Types::NetworkInterface
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].network_interface_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].subnet_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].private_ip_address #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].availability_zone #=> String
    #   resp.data.cluster.cluster_create_time #=> Time
    #   resp.data.cluster.automated_snapshot_retention_period #=> Integer
    #   resp.data.cluster.manual_snapshot_retention_period #=> Integer
    #   resp.data.cluster.cluster_security_groups #=> Array<ClusterSecurityGroupMembership>
    #   resp.data.cluster.cluster_security_groups[0] #=> Types::ClusterSecurityGroupMembership
    #   resp.data.cluster.cluster_security_groups[0].cluster_security_group_name #=> String
    #   resp.data.cluster.cluster_security_groups[0].status #=> String
    #   resp.data.cluster.vpc_security_groups #=> Array<VpcSecurityGroupMembership>
    #   resp.data.cluster.vpc_security_groups[0] #=> Types::VpcSecurityGroupMembership
    #   resp.data.cluster.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.data.cluster.vpc_security_groups[0].status #=> String
    #   resp.data.cluster.cluster_parameter_groups #=> Array<ClusterParameterGroupStatus>
    #   resp.data.cluster.cluster_parameter_groups[0] #=> Types::ClusterParameterGroupStatus
    #   resp.data.cluster.cluster_parameter_groups[0].parameter_group_name #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].parameter_apply_status #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list #=> Array<ClusterParameterStatus>
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0] #=> Types::ClusterParameterStatus
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_name #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_status #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_error_description #=> String
    #   resp.data.cluster.cluster_subnet_group_name #=> String
    #   resp.data.cluster.vpc_id #=> String
    #   resp.data.cluster.availability_zone #=> String
    #   resp.data.cluster.preferred_maintenance_window #=> String
    #   resp.data.cluster.pending_modified_values #=> Types::PendingModifiedValues
    #   resp.data.cluster.pending_modified_values.master_user_password #=> String
    #   resp.data.cluster.pending_modified_values.node_type #=> String
    #   resp.data.cluster.pending_modified_values.number_of_nodes #=> Integer
    #   resp.data.cluster.pending_modified_values.cluster_type #=> String
    #   resp.data.cluster.pending_modified_values.cluster_version #=> String
    #   resp.data.cluster.pending_modified_values.automated_snapshot_retention_period #=> Integer
    #   resp.data.cluster.pending_modified_values.cluster_identifier #=> String
    #   resp.data.cluster.pending_modified_values.publicly_accessible #=> Boolean
    #   resp.data.cluster.pending_modified_values.enhanced_vpc_routing #=> Boolean
    #   resp.data.cluster.pending_modified_values.maintenance_track_name #=> String
    #   resp.data.cluster.pending_modified_values.encryption_type #=> String
    #   resp.data.cluster.cluster_version #=> String
    #   resp.data.cluster.allow_version_upgrade #=> Boolean
    #   resp.data.cluster.number_of_nodes #=> Integer
    #   resp.data.cluster.publicly_accessible #=> Boolean
    #   resp.data.cluster.encrypted #=> Boolean
    #   resp.data.cluster.restore_status #=> Types::RestoreStatus
    #   resp.data.cluster.restore_status.status #=> String
    #   resp.data.cluster.restore_status.current_restore_rate_in_mega_bytes_per_second #=> Float
    #   resp.data.cluster.restore_status.snapshot_size_in_mega_bytes #=> Integer
    #   resp.data.cluster.restore_status.progress_in_mega_bytes #=> Integer
    #   resp.data.cluster.restore_status.elapsed_time_in_seconds #=> Integer
    #   resp.data.cluster.restore_status.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.data.cluster.data_transfer_progress #=> Types::DataTransferProgress
    #   resp.data.cluster.data_transfer_progress.status #=> String
    #   resp.data.cluster.data_transfer_progress.current_rate_in_mega_bytes_per_second #=> Float
    #   resp.data.cluster.data_transfer_progress.total_data_in_mega_bytes #=> Integer
    #   resp.data.cluster.data_transfer_progress.data_transferred_in_mega_bytes #=> Integer
    #   resp.data.cluster.data_transfer_progress.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.data.cluster.data_transfer_progress.elapsed_time_in_seconds #=> Integer
    #   resp.data.cluster.hsm_status #=> Types::HsmStatus
    #   resp.data.cluster.hsm_status.hsm_client_certificate_identifier #=> String
    #   resp.data.cluster.hsm_status.hsm_configuration_identifier #=> String
    #   resp.data.cluster.hsm_status.status #=> String
    #   resp.data.cluster.cluster_snapshot_copy_status #=> Types::ClusterSnapshotCopyStatus
    #   resp.data.cluster.cluster_snapshot_copy_status.destination_region #=> String
    #   resp.data.cluster.cluster_snapshot_copy_status.retention_period #=> Integer
    #   resp.data.cluster.cluster_snapshot_copy_status.manual_snapshot_retention_period #=> Integer
    #   resp.data.cluster.cluster_snapshot_copy_status.snapshot_copy_grant_name #=> String
    #   resp.data.cluster.cluster_public_key #=> String
    #   resp.data.cluster.cluster_nodes #=> Array<ClusterNode>
    #   resp.data.cluster.cluster_nodes[0] #=> Types::ClusterNode
    #   resp.data.cluster.cluster_nodes[0].node_role #=> String
    #   resp.data.cluster.cluster_nodes[0].private_ip_address #=> String
    #   resp.data.cluster.cluster_nodes[0].public_ip_address #=> String
    #   resp.data.cluster.elastic_ip_status #=> Types::ElasticIpStatus
    #   resp.data.cluster.elastic_ip_status.elastic_ip #=> String
    #   resp.data.cluster.elastic_ip_status.status #=> String
    #   resp.data.cluster.cluster_revision_number #=> String
    #   resp.data.cluster.tags #=> Array<Tag>
    #   resp.data.cluster.tags[0] #=> Types::Tag
    #   resp.data.cluster.tags[0].key #=> String
    #   resp.data.cluster.tags[0].value #=> String
    #   resp.data.cluster.kms_key_id #=> String
    #   resp.data.cluster.enhanced_vpc_routing #=> Boolean
    #   resp.data.cluster.iam_roles #=> Array<ClusterIamRole>
    #   resp.data.cluster.iam_roles[0] #=> Types::ClusterIamRole
    #   resp.data.cluster.iam_roles[0].iam_role_arn #=> String
    #   resp.data.cluster.iam_roles[0].apply_status #=> String
    #   resp.data.cluster.pending_actions #=> Array<String>
    #   resp.data.cluster.pending_actions[0] #=> String
    #   resp.data.cluster.maintenance_track_name #=> String
    #   resp.data.cluster.elastic_resize_number_of_node_options #=> String
    #   resp.data.cluster.deferred_maintenance_windows #=> Array<DeferredMaintenanceWindow>
    #   resp.data.cluster.deferred_maintenance_windows[0] #=> Types::DeferredMaintenanceWindow
    #   resp.data.cluster.deferred_maintenance_windows[0].defer_maintenance_identifier #=> String
    #   resp.data.cluster.deferred_maintenance_windows[0].defer_maintenance_start_time #=> Time
    #   resp.data.cluster.deferred_maintenance_windows[0].defer_maintenance_end_time #=> Time
    #   resp.data.cluster.snapshot_schedule_identifier #=> String
    #   resp.data.cluster.snapshot_schedule_state #=> String, one of ["MODIFYING", "ACTIVE", "FAILED"]
    #   resp.data.cluster.expected_next_snapshot_schedule_time #=> Time
    #   resp.data.cluster.expected_next_snapshot_schedule_time_status #=> String
    #   resp.data.cluster.next_maintenance_window_start_time #=> Time
    #   resp.data.cluster.resize_info #=> Types::ResizeInfo
    #   resp.data.cluster.resize_info.resize_type #=> String
    #   resp.data.cluster.resize_info.allow_cancel_resize #=> Boolean
    #   resp.data.cluster.availability_zone_relocation_status #=> String
    #   resp.data.cluster.cluster_namespace_arn #=> String
    #   resp.data.cluster.total_storage_capacity_in_mega_bytes #=> Integer
    #   resp.data.cluster.aqua_configuration #=> Types::AquaConfiguration
    #   resp.data.cluster.aqua_configuration.aqua_status #=> String, one of ["enabled", "disabled", "applying"]
    #   resp.data.cluster.aqua_configuration.aqua_configuration_status #=> String, one of ["enabled", "disabled", "auto"]
    #   resp.data.cluster.default_iam_role_arn #=> String
    #   resp.data.cluster.reserved_node_exchange_status #=> Types::ReservedNodeExchangeStatus
    #   resp.data.cluster.reserved_node_exchange_status.reserved_node_exchange_request_id #=> String
    #   resp.data.cluster.reserved_node_exchange_status.status #=> String, one of ["REQUESTED", "PENDING", "IN_PROGRESS", "RETRYING", "SUCCEEDED", "FAILED"]
    #   resp.data.cluster.reserved_node_exchange_status.request_time #=> Time
    #   resp.data.cluster.reserved_node_exchange_status.source_reserved_node_id #=> String
    #   resp.data.cluster.reserved_node_exchange_status.source_reserved_node_type #=> String
    #   resp.data.cluster.reserved_node_exchange_status.source_reserved_node_count #=> Integer
    #   resp.data.cluster.reserved_node_exchange_status.target_reserved_node_offering_id #=> String
    #   resp.data.cluster.reserved_node_exchange_status.target_reserved_node_type #=> String
    #   resp.data.cluster.reserved_node_exchange_status.target_reserved_node_count #=> Integer
    #
    def reboot_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RebootClusterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RebootClusterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RebootCluster
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidClusterStateFault, Errors::ClusterNotFoundFault]),
        data_parser: Parsers::RebootCluster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RebootCluster,
        stubs: @stubs,
        params_class: Params::RebootClusterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :reboot_cluster
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>From a datashare consumer account, rejects the specified datashare.</p>
    #
    # @param [Hash] params
    #   See {Types::RejectDataShareInput}.
    #
    # @option params [String] :data_share_arn
    #   <p>The Amazon Resource Name (ARN) of the datashare to reject.</p>
    #
    # @return [Types::RejectDataShareOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reject_data_share(
    #     data_share_arn: 'DataShareArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RejectDataShareOutput
    #   resp.data.data_share_arn #=> String
    #   resp.data.producer_arn #=> String
    #   resp.data.allow_publicly_accessible_consumers #=> Boolean
    #   resp.data.data_share_associations #=> Array<DataShareAssociation>
    #   resp.data.data_share_associations[0] #=> Types::DataShareAssociation
    #   resp.data.data_share_associations[0].consumer_identifier #=> String
    #   resp.data.data_share_associations[0].status #=> String, one of ["ACTIVE", "PENDING_AUTHORIZATION", "AUTHORIZED", "DEAUTHORIZED", "REJECTED", "AVAILABLE"]
    #   resp.data.data_share_associations[0].consumer_region #=> String
    #   resp.data.data_share_associations[0].created_date #=> Time
    #   resp.data.data_share_associations[0].status_change_date #=> Time
    #   resp.data.managed_by #=> String
    #
    def reject_data_share(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RejectDataShareInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RejectDataShareInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RejectDataShare
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidDataShareFault]),
        data_parser: Parsers::RejectDataShare
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RejectDataShare,
        stubs: @stubs,
        params_class: Params::RejectDataShareOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :reject_data_share
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets one or more parameters of the specified parameter group to their default
    #             values and sets the source values of the parameters to "engine-default". To reset the
    #             entire parameter group specify the <i>ResetAllParameters</i> parameter.
    #             For parameter changes to take effect you must reboot any associated clusters. </p>
    #
    # @param [Hash] params
    #   See {Types::ResetClusterParameterGroupInput}.
    #
    # @option params [String] :parameter_group_name
    #   <p>The name of the cluster parameter group to be reset.</p>
    #
    # @option params [Boolean] :reset_all_parameters
    #   <p>If <code>true</code>, all parameters in the specified parameter group will be reset
    #               to their default values. </p>
    #           <p>Default: <code>true</code>
    #           </p>
    #
    # @option params [Array<Parameter>] :parameters
    #   <p>An array of names of parameters to be reset. If
    #                   <i>ResetAllParameters</i> option is not used, then at least one
    #               parameter name must be supplied. </p>
    #           <p>Constraints: A maximum of 20 parameters can be reset in a single request.</p>
    #
    # @return [Types::ResetClusterParameterGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reset_cluster_parameter_group(
    #     parameter_group_name: 'ParameterGroupName', # required
    #     reset_all_parameters: false,
    #     parameters: [
    #       {
    #         parameter_name: 'ParameterName',
    #         parameter_value: 'ParameterValue',
    #         description: 'Description',
    #         source: 'Source',
    #         data_type: 'DataType',
    #         allowed_values: 'AllowedValues',
    #         apply_type: 'static', # accepts ["static", "dynamic"]
    #         is_modifiable: false,
    #         minimum_engine_version: 'MinimumEngineVersion'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ResetClusterParameterGroupOutput
    #   resp.data.parameter_group_name #=> String
    #   resp.data.parameter_group_status #=> String
    #
    def reset_cluster_parameter_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ResetClusterParameterGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ResetClusterParameterGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ResetClusterParameterGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClusterParameterGroupNotFoundFault, Errors::InvalidClusterParameterGroupStateFault]),
        data_parser: Parsers::ResetClusterParameterGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ResetClusterParameterGroup,
        stubs: @stubs,
        params_class: Params::ResetClusterParameterGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :reset_cluster_parameter_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Changes the size of the cluster. You can change the cluster's type, or change the
    #             number or type of nodes. The default behavior is to use the elastic resize method. With
    #             an elastic resize, your cluster is available for read and write operations more quickly
    #             than with the classic resize method. </p>
    #         <p>Elastic resize operations have the following restrictions:</p>
    #         <ul>
    #             <li>
    #                 <p>You can only resize clusters of the following types:</p>
    #                 <ul>
    #                   <li>
    #                         <p>dc1.large (if your cluster is in a VPC)</p>
    #                     </li>
    #                   <li>
    #                         <p>dc1.8xlarge (if your cluster is in a VPC)</p>
    #                     </li>
    #                   <li>
    #                         <p>dc2.large</p>
    #                     </li>
    #                   <li>
    #                         <p>dc2.8xlarge</p>
    #                     </li>
    #                   <li>
    #                         <p>ds2.xlarge</p>
    #                     </li>
    #                   <li>
    #                         <p>ds2.8xlarge</p>
    #                     </li>
    #                   <li>
    #                         <p>ra3.xlplus</p>
    #                     </li>
    #                   <li>
    #                         <p>ra3.4xlarge</p>
    #                     </li>
    #                   <li>
    #                         <p>ra3.16xlarge</p>
    #                     </li>
    #                </ul>
    #             </li>
    #             <li>
    #                 <p>The type of nodes that you add must match the node type for the
    #                     cluster.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::ResizeClusterInput}.
    #
    # @option params [String] :cluster_identifier
    #   <p>The unique identifier for the cluster to resize.</p>
    #
    # @option params [String] :cluster_type
    #   <p>The new cluster type for the specified cluster.</p>
    #
    # @option params [String] :node_type
    #   <p>The new node type for the nodes you are adding. If not specified, the cluster's current node type is used.</p>
    #
    # @option params [Integer] :number_of_nodes
    #   <p>The new number of nodes for the cluster. If not specified, the cluster's current number of nodes is used.</p>
    #
    # @option params [Boolean] :classic
    #   <p>A boolean value indicating whether the resize operation is using the classic resize
    #               process. If you don't provide this parameter or set the value to
    #               <code>false</code>, the resize type is elastic. </p>
    #
    # @option params [String] :reserved_node_id
    #   <p>The identifier of the reserved node.</p>
    #
    # @option params [String] :target_reserved_node_offering_id
    #   <p>The identifier of the target reserved node offering.</p>
    #
    # @return [Types::ResizeClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.resize_cluster(
    #     cluster_identifier: 'ClusterIdentifier', # required
    #     cluster_type: 'ClusterType',
    #     node_type: 'NodeType',
    #     number_of_nodes: 1,
    #     classic: false,
    #     reserved_node_id: 'ReservedNodeId',
    #     target_reserved_node_offering_id: 'TargetReservedNodeOfferingId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ResizeClusterOutput
    #   resp.data.cluster #=> Types::Cluster
    #   resp.data.cluster.cluster_identifier #=> String
    #   resp.data.cluster.node_type #=> String
    #   resp.data.cluster.cluster_status #=> String
    #   resp.data.cluster.cluster_availability_status #=> String
    #   resp.data.cluster.modify_status #=> String
    #   resp.data.cluster.master_username #=> String
    #   resp.data.cluster.db_name #=> String
    #   resp.data.cluster.endpoint #=> Types::Endpoint
    #   resp.data.cluster.endpoint.address #=> String
    #   resp.data.cluster.endpoint.port #=> Integer
    #   resp.data.cluster.endpoint.vpc_endpoints #=> Array<VpcEndpoint>
    #   resp.data.cluster.endpoint.vpc_endpoints[0] #=> Types::VpcEndpoint
    #   resp.data.cluster.endpoint.vpc_endpoints[0].vpc_endpoint_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].vpc_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces #=> Array<NetworkInterface>
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0] #=> Types::NetworkInterface
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].network_interface_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].subnet_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].private_ip_address #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].availability_zone #=> String
    #   resp.data.cluster.cluster_create_time #=> Time
    #   resp.data.cluster.automated_snapshot_retention_period #=> Integer
    #   resp.data.cluster.manual_snapshot_retention_period #=> Integer
    #   resp.data.cluster.cluster_security_groups #=> Array<ClusterSecurityGroupMembership>
    #   resp.data.cluster.cluster_security_groups[0] #=> Types::ClusterSecurityGroupMembership
    #   resp.data.cluster.cluster_security_groups[0].cluster_security_group_name #=> String
    #   resp.data.cluster.cluster_security_groups[0].status #=> String
    #   resp.data.cluster.vpc_security_groups #=> Array<VpcSecurityGroupMembership>
    #   resp.data.cluster.vpc_security_groups[0] #=> Types::VpcSecurityGroupMembership
    #   resp.data.cluster.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.data.cluster.vpc_security_groups[0].status #=> String
    #   resp.data.cluster.cluster_parameter_groups #=> Array<ClusterParameterGroupStatus>
    #   resp.data.cluster.cluster_parameter_groups[0] #=> Types::ClusterParameterGroupStatus
    #   resp.data.cluster.cluster_parameter_groups[0].parameter_group_name #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].parameter_apply_status #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list #=> Array<ClusterParameterStatus>
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0] #=> Types::ClusterParameterStatus
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_name #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_status #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_error_description #=> String
    #   resp.data.cluster.cluster_subnet_group_name #=> String
    #   resp.data.cluster.vpc_id #=> String
    #   resp.data.cluster.availability_zone #=> String
    #   resp.data.cluster.preferred_maintenance_window #=> String
    #   resp.data.cluster.pending_modified_values #=> Types::PendingModifiedValues
    #   resp.data.cluster.pending_modified_values.master_user_password #=> String
    #   resp.data.cluster.pending_modified_values.node_type #=> String
    #   resp.data.cluster.pending_modified_values.number_of_nodes #=> Integer
    #   resp.data.cluster.pending_modified_values.cluster_type #=> String
    #   resp.data.cluster.pending_modified_values.cluster_version #=> String
    #   resp.data.cluster.pending_modified_values.automated_snapshot_retention_period #=> Integer
    #   resp.data.cluster.pending_modified_values.cluster_identifier #=> String
    #   resp.data.cluster.pending_modified_values.publicly_accessible #=> Boolean
    #   resp.data.cluster.pending_modified_values.enhanced_vpc_routing #=> Boolean
    #   resp.data.cluster.pending_modified_values.maintenance_track_name #=> String
    #   resp.data.cluster.pending_modified_values.encryption_type #=> String
    #   resp.data.cluster.cluster_version #=> String
    #   resp.data.cluster.allow_version_upgrade #=> Boolean
    #   resp.data.cluster.number_of_nodes #=> Integer
    #   resp.data.cluster.publicly_accessible #=> Boolean
    #   resp.data.cluster.encrypted #=> Boolean
    #   resp.data.cluster.restore_status #=> Types::RestoreStatus
    #   resp.data.cluster.restore_status.status #=> String
    #   resp.data.cluster.restore_status.current_restore_rate_in_mega_bytes_per_second #=> Float
    #   resp.data.cluster.restore_status.snapshot_size_in_mega_bytes #=> Integer
    #   resp.data.cluster.restore_status.progress_in_mega_bytes #=> Integer
    #   resp.data.cluster.restore_status.elapsed_time_in_seconds #=> Integer
    #   resp.data.cluster.restore_status.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.data.cluster.data_transfer_progress #=> Types::DataTransferProgress
    #   resp.data.cluster.data_transfer_progress.status #=> String
    #   resp.data.cluster.data_transfer_progress.current_rate_in_mega_bytes_per_second #=> Float
    #   resp.data.cluster.data_transfer_progress.total_data_in_mega_bytes #=> Integer
    #   resp.data.cluster.data_transfer_progress.data_transferred_in_mega_bytes #=> Integer
    #   resp.data.cluster.data_transfer_progress.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.data.cluster.data_transfer_progress.elapsed_time_in_seconds #=> Integer
    #   resp.data.cluster.hsm_status #=> Types::HsmStatus
    #   resp.data.cluster.hsm_status.hsm_client_certificate_identifier #=> String
    #   resp.data.cluster.hsm_status.hsm_configuration_identifier #=> String
    #   resp.data.cluster.hsm_status.status #=> String
    #   resp.data.cluster.cluster_snapshot_copy_status #=> Types::ClusterSnapshotCopyStatus
    #   resp.data.cluster.cluster_snapshot_copy_status.destination_region #=> String
    #   resp.data.cluster.cluster_snapshot_copy_status.retention_period #=> Integer
    #   resp.data.cluster.cluster_snapshot_copy_status.manual_snapshot_retention_period #=> Integer
    #   resp.data.cluster.cluster_snapshot_copy_status.snapshot_copy_grant_name #=> String
    #   resp.data.cluster.cluster_public_key #=> String
    #   resp.data.cluster.cluster_nodes #=> Array<ClusterNode>
    #   resp.data.cluster.cluster_nodes[0] #=> Types::ClusterNode
    #   resp.data.cluster.cluster_nodes[0].node_role #=> String
    #   resp.data.cluster.cluster_nodes[0].private_ip_address #=> String
    #   resp.data.cluster.cluster_nodes[0].public_ip_address #=> String
    #   resp.data.cluster.elastic_ip_status #=> Types::ElasticIpStatus
    #   resp.data.cluster.elastic_ip_status.elastic_ip #=> String
    #   resp.data.cluster.elastic_ip_status.status #=> String
    #   resp.data.cluster.cluster_revision_number #=> String
    #   resp.data.cluster.tags #=> Array<Tag>
    #   resp.data.cluster.tags[0] #=> Types::Tag
    #   resp.data.cluster.tags[0].key #=> String
    #   resp.data.cluster.tags[0].value #=> String
    #   resp.data.cluster.kms_key_id #=> String
    #   resp.data.cluster.enhanced_vpc_routing #=> Boolean
    #   resp.data.cluster.iam_roles #=> Array<ClusterIamRole>
    #   resp.data.cluster.iam_roles[0] #=> Types::ClusterIamRole
    #   resp.data.cluster.iam_roles[0].iam_role_arn #=> String
    #   resp.data.cluster.iam_roles[0].apply_status #=> String
    #   resp.data.cluster.pending_actions #=> Array<String>
    #   resp.data.cluster.pending_actions[0] #=> String
    #   resp.data.cluster.maintenance_track_name #=> String
    #   resp.data.cluster.elastic_resize_number_of_node_options #=> String
    #   resp.data.cluster.deferred_maintenance_windows #=> Array<DeferredMaintenanceWindow>
    #   resp.data.cluster.deferred_maintenance_windows[0] #=> Types::DeferredMaintenanceWindow
    #   resp.data.cluster.deferred_maintenance_windows[0].defer_maintenance_identifier #=> String
    #   resp.data.cluster.deferred_maintenance_windows[0].defer_maintenance_start_time #=> Time
    #   resp.data.cluster.deferred_maintenance_windows[0].defer_maintenance_end_time #=> Time
    #   resp.data.cluster.snapshot_schedule_identifier #=> String
    #   resp.data.cluster.snapshot_schedule_state #=> String, one of ["MODIFYING", "ACTIVE", "FAILED"]
    #   resp.data.cluster.expected_next_snapshot_schedule_time #=> Time
    #   resp.data.cluster.expected_next_snapshot_schedule_time_status #=> String
    #   resp.data.cluster.next_maintenance_window_start_time #=> Time
    #   resp.data.cluster.resize_info #=> Types::ResizeInfo
    #   resp.data.cluster.resize_info.resize_type #=> String
    #   resp.data.cluster.resize_info.allow_cancel_resize #=> Boolean
    #   resp.data.cluster.availability_zone_relocation_status #=> String
    #   resp.data.cluster.cluster_namespace_arn #=> String
    #   resp.data.cluster.total_storage_capacity_in_mega_bytes #=> Integer
    #   resp.data.cluster.aqua_configuration #=> Types::AquaConfiguration
    #   resp.data.cluster.aqua_configuration.aqua_status #=> String, one of ["enabled", "disabled", "applying"]
    #   resp.data.cluster.aqua_configuration.aqua_configuration_status #=> String, one of ["enabled", "disabled", "auto"]
    #   resp.data.cluster.default_iam_role_arn #=> String
    #   resp.data.cluster.reserved_node_exchange_status #=> Types::ReservedNodeExchangeStatus
    #   resp.data.cluster.reserved_node_exchange_status.reserved_node_exchange_request_id #=> String
    #   resp.data.cluster.reserved_node_exchange_status.status #=> String, one of ["REQUESTED", "PENDING", "IN_PROGRESS", "RETRYING", "SUCCEEDED", "FAILED"]
    #   resp.data.cluster.reserved_node_exchange_status.request_time #=> Time
    #   resp.data.cluster.reserved_node_exchange_status.source_reserved_node_id #=> String
    #   resp.data.cluster.reserved_node_exchange_status.source_reserved_node_type #=> String
    #   resp.data.cluster.reserved_node_exchange_status.source_reserved_node_count #=> Integer
    #   resp.data.cluster.reserved_node_exchange_status.target_reserved_node_offering_id #=> String
    #   resp.data.cluster.reserved_node_exchange_status.target_reserved_node_type #=> String
    #   resp.data.cluster.reserved_node_exchange_status.target_reserved_node_count #=> Integer
    #
    def resize_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ResizeClusterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ResizeClusterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ResizeCluster
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ReservedNodeAlreadyMigratedFault, Errors::InvalidClusterStateFault, Errors::InvalidReservedNodeStateFault, Errors::ReservedNodeAlreadyExistsFault, Errors::ReservedNodeOfferingNotFoundFault, Errors::DependentServiceUnavailableFault, Errors::NumberOfNodesQuotaExceededFault, Errors::ReservedNodeNotFoundFault, Errors::InsufficientClusterCapacityFault, Errors::UnsupportedOperationFault, Errors::UnauthorizedOperation, Errors::ClusterNotFoundFault, Errors::UnsupportedOptionFault, Errors::NumberOfNodesPerClusterLimitExceededFault, Errors::LimitExceededFault]),
        data_parser: Parsers::ResizeCluster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ResizeCluster,
        stubs: @stubs,
        params_class: Params::ResizeClusterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :resize_cluster
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new cluster from a snapshot. By default, Amazon Redshift creates the resulting
    #             cluster with the same configuration as the original cluster from which the snapshot was
    #             created, except that the new cluster is created with the default cluster security and
    #             parameter groups. After Amazon Redshift creates the cluster, you can use the <a>ModifyCluster</a> API to associate a different security group and different
    #             parameter group with the restored cluster. If you are using a DS node type, you can also
    #             choose to change to another DS node type of the same size during restore.</p>
    #         <p>If you restore a cluster into a VPC, you must provide a cluster subnet group where
    #             you want the cluster restored.</p>
    #         <p>
    # For more information about working with snapshots, go to
    # <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html">Amazon Redshift Snapshots</a>
    # in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::RestoreFromClusterSnapshotInput}.
    #
    # @option params [String] :cluster_identifier
    #   <p>The identifier of the cluster that will be created from restoring the
    #               snapshot.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>Alphabetic characters must be lowercase.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>Must be unique for all clusters within an Amazon Web Services account.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :snapshot_identifier
    #   <p>The name of the snapshot from which to create the new cluster. This parameter isn't
    #               case sensitive.</p>
    #           <p>Example: <code>my-snapshot-id</code>
    #           </p>
    #
    # @option params [String] :snapshot_cluster_identifier
    #   <p>The name of the cluster the source snapshot was created from. This parameter is
    #               required if your IAM user has a policy containing a snapshot resource element that
    #               specifies anything other than * for the cluster name.</p>
    #
    # @option params [Integer] :port
    #   <p>The port number on which the cluster accepts connections.</p>
    #           <p>Default: The same port as the original cluster.</p>
    #           <p>Constraints: Must be between <code>1115</code> and <code>65535</code>.</p>
    #
    # @option params [String] :availability_zone
    #   <p>The Amazon EC2 Availability Zone in which to restore the cluster.</p>
    #           <p>Default: A random, system-chosen Availability Zone.</p>
    #           <p>Example: <code>us-east-2a</code>
    #           </p>
    #
    # @option params [Boolean] :allow_version_upgrade
    #   <p>If <code>true</code>, major version upgrades can be applied during the maintenance
    #               window to the Amazon Redshift engine that is running on the cluster. </p>
    #           <p>Default: <code>true</code>
    #           </p>
    #
    # @option params [String] :cluster_subnet_group_name
    #   <p>The name of the subnet group where you want to cluster restored.</p>
    #           <p>A snapshot of cluster in VPC can be restored only in VPC. Therefore, you must
    #               provide subnet group name where you want the cluster restored.</p>
    #
    # @option params [Boolean] :publicly_accessible
    #   <p>If <code>true</code>, the cluster can be accessed from a public network. </p>
    #
    # @option params [String] :owner_account
    #   <p>The Amazon Web Services account used to create or copy the snapshot. Required if you are
    #               restoring a snapshot you do not own, optional if you own the snapshot.</p>
    #
    # @option params [String] :hsm_client_certificate_identifier
    #   <p>Specifies the name of the HSM client certificate the Amazon Redshift cluster uses to
    #               retrieve the data encryption keys stored in an HSM.</p>
    #
    # @option params [String] :hsm_configuration_identifier
    #   <p>Specifies the name of the HSM configuration that contains the information the
    #               Amazon Redshift cluster can use to retrieve and store keys in an HSM.</p>
    #
    # @option params [String] :elastic_ip
    #   <p>The elastic IP (EIP) address for the cluster.</p>
    #
    # @option params [String] :cluster_parameter_group_name
    #   <p>The name of the parameter group to be associated with this cluster.</p>
    #           <p>Default: The default Amazon Redshift cluster parameter group. For information about the
    #               default parameter group, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html">Working with Amazon
    #                   Redshift Parameter Groups</a>.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be 1 to 255 alphanumeric characters or hyphens.</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                   <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Array<String>] :cluster_security_groups
    #   <p>A list of security groups to be associated with this cluster.</p>
    #           <p>Default: The default cluster security group for Amazon Redshift.</p>
    #           <p>Cluster security groups only apply to clusters outside of VPCs.</p>
    #
    # @option params [Array<String>] :vpc_security_group_ids
    #   <p>A list of Virtual Private Cloud (VPC) security groups to be associated with the
    #               cluster.</p>
    #           <p>Default: The default VPC security group is associated with the cluster.</p>
    #           <p>VPC security groups only apply to clusters in VPCs.</p>
    #
    # @option params [String] :preferred_maintenance_window
    #   <p>The weekly time range (in UTC) during which automated cluster maintenance can
    #               occur.</p>
    #           <p> Format: <code>ddd:hh24:mi-ddd:hh24:mi</code>
    #           </p>
    #           <p> Default: The value selected for the cluster from which the snapshot was taken. For
    #               more information about the time blocks for each region, see <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#rs-maintenance-windows">Maintenance Windows</a> in Amazon Redshift Cluster Management Guide. </p>
    #           <p>Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun</p>
    #           <p>Constraints: Minimum 30-minute window.</p>
    #
    # @option params [Integer] :automated_snapshot_retention_period
    #   <p>The number of days that automated snapshots are retained. If the value is 0,
    #               automated snapshots are disabled. Even if automated snapshots are disabled, you can
    #               still create manual snapshots when you want with <a>CreateClusterSnapshot</a>. </p>
    #
    #           <p>You can't disable automated snapshots for RA3 node types. Set the automated retention period from 1-35 days.</p>
    #           <p>Default: The value selected for the cluster from which the snapshot was
    #               taken.</p>
    #           <p>Constraints: Must be a value from 0 to 35.</p>
    #
    # @option params [Integer] :manual_snapshot_retention_period
    #   <p>The default number of days to retain a manual snapshot. If the value is -1, the
    #               snapshot is retained indefinitely. This setting doesn't change the retention period
    #               of existing snapshots.</p>
    #           <p>The value must be either -1 or an integer between 1 and 3,653.</p>
    #
    # @option params [String] :kms_key_id
    #   <p>The Key Management Service (KMS) key ID of the encryption key that encrypts data in the cluster
    #               restored from a shared snapshot. You can also provide
    #               the key ID when you restore from an unencrypted snapshot to an encrypted cluster in
    #               the same account. Additionally, you can specify a new KMS key ID when you restore from an encrypted
    #               snapshot in the same account in order to change it. In that case, the restored cluster is encrypted
    #               with the new KMS key ID.</p>
    #
    # @option params [String] :node_type
    #   <p>The node type that the restored cluster will be provisioned with.</p>
    #           <p>Default: The node type of the cluster from which the snapshot was taken. You can
    #               modify this if you are using any DS node type. In that case, you can choose to restore
    #               into another DS node type of the same size. For example, you can restore ds1.8xlarge
    #               into ds2.8xlarge, or ds1.xlarge into ds2.xlarge. If you have a DC instance type, you
    #               must restore into that same instance type and size. In other words, you can only restore
    #               a dc1.large instance type into another dc1.large instance type or dc2.large instance
    #               type. You can't restore dc1.8xlarge to dc2.8xlarge. First restore to a dc1.8xlarge
    #               cluster, then resize to a dc2.8large cluster. For more information about node types, see
    #                   <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#rs-about-clusters-and-nodes">
    #                   About Clusters and Nodes</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p>
    #
    # @option params [Boolean] :enhanced_vpc_routing
    #   <p>An option that specifies whether to create the cluster with enhanced VPC routing
    #               enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a
    #               VPC. For more information, see <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html">Enhanced VPC Routing</a> in
    #               the Amazon Redshift Cluster Management Guide.</p>
    #           <p>If this option is <code>true</code>, enhanced VPC routing is enabled. </p>
    #           <p>Default: false</p>
    #
    # @option params [String] :additional_info
    #   <p>Reserved.</p>
    #
    # @option params [Array<String>] :iam_roles
    #   <p>A list of Identity and Access Management (IAM) roles that can be used by the
    #               cluster to access other Amazon Web Services services. You must supply the IAM roles in their Amazon
    #               Resource Name (ARN) format. </p>
    #           <p>The maximum number of IAM roles that you can associate is subject to a quota.
    #               For more information, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html">Quotas and limits</a>
    #               in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    #
    # @option params [String] :maintenance_track_name
    #   <p>The name of the maintenance track for the restored cluster. When you take a snapshot,
    #               the snapshot inherits the <code>MaintenanceTrack</code> value from the cluster. The
    #               snapshot might be on a different track than the cluster that was the source for the
    #               snapshot. For example, suppose that you take a snapshot of a cluster that is on the
    #               current track and then change the cluster to be on the trailing track. In this case, the
    #               snapshot and the source cluster are on different tracks.</p>
    #
    # @option params [String] :snapshot_schedule_identifier
    #   <p>A unique identifier for the snapshot schedule.</p>
    #
    # @option params [Integer] :number_of_nodes
    #   <p>The number of nodes specified when provisioning the restored cluster.</p>
    #
    # @option params [Boolean] :availability_zone_relocation
    #   <p>The option to enable relocation for an Amazon Redshift cluster between Availability Zones after the cluster is restored.</p>
    #
    # @option params [String] :aqua_configuration_status
    #   <p>The value represents how the cluster is configured to use AQUA (Advanced Query Accelerator) after the cluster is restored. Possible values include the following.</p>
    #           <ul>
    #               <li>
    #                  <p>enabled - Use AQUA if it is available for the current Amazon Web Services Region and Amazon Redshift node type.</p>
    #               </li>
    #               <li>
    #                  <p>disabled - Don't use AQUA. </p>
    #               </li>
    #               <li>
    #                  <p>auto - Amazon Redshift determines whether to use AQUA.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :default_iam_role_arn
    #   <p>The Amazon Resource Name (ARN) for the IAM role that was set as default for the cluster when the cluster was last modified while it was restored from a snapshot.</p>
    #
    # @option params [String] :reserved_node_id
    #   <p>The identifier of the target reserved node offering.</p>
    #
    # @option params [String] :target_reserved_node_offering_id
    #   <p>The identifier of the target reserved node offering.</p>
    #
    # @option params [Boolean] :encrypted
    #   <p>Enables support for restoring an unencrypted snapshot to a cluster encrypted
    #               with Key Management Service (KMS) and a customer managed key.</p>
    #
    # @return [Types::RestoreFromClusterSnapshotOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_from_cluster_snapshot(
    #     cluster_identifier: 'ClusterIdentifier', # required
    #     snapshot_identifier: 'SnapshotIdentifier', # required
    #     snapshot_cluster_identifier: 'SnapshotClusterIdentifier',
    #     port: 1,
    #     availability_zone: 'AvailabilityZone',
    #     allow_version_upgrade: false,
    #     cluster_subnet_group_name: 'ClusterSubnetGroupName',
    #     publicly_accessible: false,
    #     owner_account: 'OwnerAccount',
    #     hsm_client_certificate_identifier: 'HsmClientCertificateIdentifier',
    #     hsm_configuration_identifier: 'HsmConfigurationIdentifier',
    #     elastic_ip: 'ElasticIp',
    #     cluster_parameter_group_name: 'ClusterParameterGroupName',
    #     cluster_security_groups: [
    #       'member'
    #     ],
    #     vpc_security_group_ids: [
    #       'member'
    #     ],
    #     preferred_maintenance_window: 'PreferredMaintenanceWindow',
    #     automated_snapshot_retention_period: 1,
    #     manual_snapshot_retention_period: 1,
    #     kms_key_id: 'KmsKeyId',
    #     node_type: 'NodeType',
    #     enhanced_vpc_routing: false,
    #     additional_info: 'AdditionalInfo',
    #     iam_roles: [
    #       'member'
    #     ],
    #     maintenance_track_name: 'MaintenanceTrackName',
    #     snapshot_schedule_identifier: 'SnapshotScheduleIdentifier',
    #     number_of_nodes: 1,
    #     availability_zone_relocation: false,
    #     aqua_configuration_status: 'enabled', # accepts ["enabled", "disabled", "auto"]
    #     default_iam_role_arn: 'DefaultIamRoleArn',
    #     reserved_node_id: 'ReservedNodeId',
    #     target_reserved_node_offering_id: 'TargetReservedNodeOfferingId',
    #     encrypted: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RestoreFromClusterSnapshotOutput
    #   resp.data.cluster #=> Types::Cluster
    #   resp.data.cluster.cluster_identifier #=> String
    #   resp.data.cluster.node_type #=> String
    #   resp.data.cluster.cluster_status #=> String
    #   resp.data.cluster.cluster_availability_status #=> String
    #   resp.data.cluster.modify_status #=> String
    #   resp.data.cluster.master_username #=> String
    #   resp.data.cluster.db_name #=> String
    #   resp.data.cluster.endpoint #=> Types::Endpoint
    #   resp.data.cluster.endpoint.address #=> String
    #   resp.data.cluster.endpoint.port #=> Integer
    #   resp.data.cluster.endpoint.vpc_endpoints #=> Array<VpcEndpoint>
    #   resp.data.cluster.endpoint.vpc_endpoints[0] #=> Types::VpcEndpoint
    #   resp.data.cluster.endpoint.vpc_endpoints[0].vpc_endpoint_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].vpc_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces #=> Array<NetworkInterface>
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0] #=> Types::NetworkInterface
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].network_interface_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].subnet_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].private_ip_address #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].availability_zone #=> String
    #   resp.data.cluster.cluster_create_time #=> Time
    #   resp.data.cluster.automated_snapshot_retention_period #=> Integer
    #   resp.data.cluster.manual_snapshot_retention_period #=> Integer
    #   resp.data.cluster.cluster_security_groups #=> Array<ClusterSecurityGroupMembership>
    #   resp.data.cluster.cluster_security_groups[0] #=> Types::ClusterSecurityGroupMembership
    #   resp.data.cluster.cluster_security_groups[0].cluster_security_group_name #=> String
    #   resp.data.cluster.cluster_security_groups[0].status #=> String
    #   resp.data.cluster.vpc_security_groups #=> Array<VpcSecurityGroupMembership>
    #   resp.data.cluster.vpc_security_groups[0] #=> Types::VpcSecurityGroupMembership
    #   resp.data.cluster.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.data.cluster.vpc_security_groups[0].status #=> String
    #   resp.data.cluster.cluster_parameter_groups #=> Array<ClusterParameterGroupStatus>
    #   resp.data.cluster.cluster_parameter_groups[0] #=> Types::ClusterParameterGroupStatus
    #   resp.data.cluster.cluster_parameter_groups[0].parameter_group_name #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].parameter_apply_status #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list #=> Array<ClusterParameterStatus>
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0] #=> Types::ClusterParameterStatus
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_name #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_status #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_error_description #=> String
    #   resp.data.cluster.cluster_subnet_group_name #=> String
    #   resp.data.cluster.vpc_id #=> String
    #   resp.data.cluster.availability_zone #=> String
    #   resp.data.cluster.preferred_maintenance_window #=> String
    #   resp.data.cluster.pending_modified_values #=> Types::PendingModifiedValues
    #   resp.data.cluster.pending_modified_values.master_user_password #=> String
    #   resp.data.cluster.pending_modified_values.node_type #=> String
    #   resp.data.cluster.pending_modified_values.number_of_nodes #=> Integer
    #   resp.data.cluster.pending_modified_values.cluster_type #=> String
    #   resp.data.cluster.pending_modified_values.cluster_version #=> String
    #   resp.data.cluster.pending_modified_values.automated_snapshot_retention_period #=> Integer
    #   resp.data.cluster.pending_modified_values.cluster_identifier #=> String
    #   resp.data.cluster.pending_modified_values.publicly_accessible #=> Boolean
    #   resp.data.cluster.pending_modified_values.enhanced_vpc_routing #=> Boolean
    #   resp.data.cluster.pending_modified_values.maintenance_track_name #=> String
    #   resp.data.cluster.pending_modified_values.encryption_type #=> String
    #   resp.data.cluster.cluster_version #=> String
    #   resp.data.cluster.allow_version_upgrade #=> Boolean
    #   resp.data.cluster.number_of_nodes #=> Integer
    #   resp.data.cluster.publicly_accessible #=> Boolean
    #   resp.data.cluster.encrypted #=> Boolean
    #   resp.data.cluster.restore_status #=> Types::RestoreStatus
    #   resp.data.cluster.restore_status.status #=> String
    #   resp.data.cluster.restore_status.current_restore_rate_in_mega_bytes_per_second #=> Float
    #   resp.data.cluster.restore_status.snapshot_size_in_mega_bytes #=> Integer
    #   resp.data.cluster.restore_status.progress_in_mega_bytes #=> Integer
    #   resp.data.cluster.restore_status.elapsed_time_in_seconds #=> Integer
    #   resp.data.cluster.restore_status.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.data.cluster.data_transfer_progress #=> Types::DataTransferProgress
    #   resp.data.cluster.data_transfer_progress.status #=> String
    #   resp.data.cluster.data_transfer_progress.current_rate_in_mega_bytes_per_second #=> Float
    #   resp.data.cluster.data_transfer_progress.total_data_in_mega_bytes #=> Integer
    #   resp.data.cluster.data_transfer_progress.data_transferred_in_mega_bytes #=> Integer
    #   resp.data.cluster.data_transfer_progress.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.data.cluster.data_transfer_progress.elapsed_time_in_seconds #=> Integer
    #   resp.data.cluster.hsm_status #=> Types::HsmStatus
    #   resp.data.cluster.hsm_status.hsm_client_certificate_identifier #=> String
    #   resp.data.cluster.hsm_status.hsm_configuration_identifier #=> String
    #   resp.data.cluster.hsm_status.status #=> String
    #   resp.data.cluster.cluster_snapshot_copy_status #=> Types::ClusterSnapshotCopyStatus
    #   resp.data.cluster.cluster_snapshot_copy_status.destination_region #=> String
    #   resp.data.cluster.cluster_snapshot_copy_status.retention_period #=> Integer
    #   resp.data.cluster.cluster_snapshot_copy_status.manual_snapshot_retention_period #=> Integer
    #   resp.data.cluster.cluster_snapshot_copy_status.snapshot_copy_grant_name #=> String
    #   resp.data.cluster.cluster_public_key #=> String
    #   resp.data.cluster.cluster_nodes #=> Array<ClusterNode>
    #   resp.data.cluster.cluster_nodes[0] #=> Types::ClusterNode
    #   resp.data.cluster.cluster_nodes[0].node_role #=> String
    #   resp.data.cluster.cluster_nodes[0].private_ip_address #=> String
    #   resp.data.cluster.cluster_nodes[0].public_ip_address #=> String
    #   resp.data.cluster.elastic_ip_status #=> Types::ElasticIpStatus
    #   resp.data.cluster.elastic_ip_status.elastic_ip #=> String
    #   resp.data.cluster.elastic_ip_status.status #=> String
    #   resp.data.cluster.cluster_revision_number #=> String
    #   resp.data.cluster.tags #=> Array<Tag>
    #   resp.data.cluster.tags[0] #=> Types::Tag
    #   resp.data.cluster.tags[0].key #=> String
    #   resp.data.cluster.tags[0].value #=> String
    #   resp.data.cluster.kms_key_id #=> String
    #   resp.data.cluster.enhanced_vpc_routing #=> Boolean
    #   resp.data.cluster.iam_roles #=> Array<ClusterIamRole>
    #   resp.data.cluster.iam_roles[0] #=> Types::ClusterIamRole
    #   resp.data.cluster.iam_roles[0].iam_role_arn #=> String
    #   resp.data.cluster.iam_roles[0].apply_status #=> String
    #   resp.data.cluster.pending_actions #=> Array<String>
    #   resp.data.cluster.pending_actions[0] #=> String
    #   resp.data.cluster.maintenance_track_name #=> String
    #   resp.data.cluster.elastic_resize_number_of_node_options #=> String
    #   resp.data.cluster.deferred_maintenance_windows #=> Array<DeferredMaintenanceWindow>
    #   resp.data.cluster.deferred_maintenance_windows[0] #=> Types::DeferredMaintenanceWindow
    #   resp.data.cluster.deferred_maintenance_windows[0].defer_maintenance_identifier #=> String
    #   resp.data.cluster.deferred_maintenance_windows[0].defer_maintenance_start_time #=> Time
    #   resp.data.cluster.deferred_maintenance_windows[0].defer_maintenance_end_time #=> Time
    #   resp.data.cluster.snapshot_schedule_identifier #=> String
    #   resp.data.cluster.snapshot_schedule_state #=> String, one of ["MODIFYING", "ACTIVE", "FAILED"]
    #   resp.data.cluster.expected_next_snapshot_schedule_time #=> Time
    #   resp.data.cluster.expected_next_snapshot_schedule_time_status #=> String
    #   resp.data.cluster.next_maintenance_window_start_time #=> Time
    #   resp.data.cluster.resize_info #=> Types::ResizeInfo
    #   resp.data.cluster.resize_info.resize_type #=> String
    #   resp.data.cluster.resize_info.allow_cancel_resize #=> Boolean
    #   resp.data.cluster.availability_zone_relocation_status #=> String
    #   resp.data.cluster.cluster_namespace_arn #=> String
    #   resp.data.cluster.total_storage_capacity_in_mega_bytes #=> Integer
    #   resp.data.cluster.aqua_configuration #=> Types::AquaConfiguration
    #   resp.data.cluster.aqua_configuration.aqua_status #=> String, one of ["enabled", "disabled", "applying"]
    #   resp.data.cluster.aqua_configuration.aqua_configuration_status #=> String, one of ["enabled", "disabled", "auto"]
    #   resp.data.cluster.default_iam_role_arn #=> String
    #   resp.data.cluster.reserved_node_exchange_status #=> Types::ReservedNodeExchangeStatus
    #   resp.data.cluster.reserved_node_exchange_status.reserved_node_exchange_request_id #=> String
    #   resp.data.cluster.reserved_node_exchange_status.status #=> String, one of ["REQUESTED", "PENDING", "IN_PROGRESS", "RETRYING", "SUCCEEDED", "FAILED"]
    #   resp.data.cluster.reserved_node_exchange_status.request_time #=> Time
    #   resp.data.cluster.reserved_node_exchange_status.source_reserved_node_id #=> String
    #   resp.data.cluster.reserved_node_exchange_status.source_reserved_node_type #=> String
    #   resp.data.cluster.reserved_node_exchange_status.source_reserved_node_count #=> Integer
    #   resp.data.cluster.reserved_node_exchange_status.target_reserved_node_offering_id #=> String
    #   resp.data.cluster.reserved_node_exchange_status.target_reserved_node_type #=> String
    #   resp.data.cluster.reserved_node_exchange_status.target_reserved_node_count #=> Integer
    #
    def restore_from_cluster_snapshot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RestoreFromClusterSnapshotInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RestoreFromClusterSnapshotInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RestoreFromClusterSnapshot
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidReservedNodeStateFault, Errors::ClusterQuotaExceededFault, Errors::ReservedNodeAlreadyExistsFault, Errors::InvalidRestoreFault, Errors::DependentServiceUnavailableFault, Errors::HsmConfigurationNotFoundFault, Errors::NumberOfNodesQuotaExceededFault, Errors::InvalidSubnet, Errors::UnauthorizedOperation, Errors::AccessToSnapshotDeniedFault, Errors::LimitExceededFault, Errors::InvalidTagFault, Errors::ReservedNodeAlreadyMigratedFault, Errors::HsmClientCertificateNotFoundFault, Errors::InvalidClusterSubnetGroupStateFault, Errors::TagLimitExceededFault, Errors::ReservedNodeOfferingNotFoundFault, Errors::InvalidVPCNetworkStateFault, Errors::ClusterSecurityGroupNotFoundFault, Errors::DependentServiceRequestThrottlingFault, Errors::ClusterAlreadyExistsFault, Errors::ClusterParameterGroupNotFoundFault, Errors::ReservedNodeNotFoundFault, Errors::ClusterSubnetGroupNotFoundFault, Errors::InsufficientClusterCapacityFault, Errors::UnsupportedOperationFault, Errors::ClusterSnapshotNotFoundFault, Errors::InvalidClusterTrackFault, Errors::InvalidElasticIpFault, Errors::SnapshotScheduleNotFoundFault, Errors::InvalidClusterSnapshotStateFault, Errors::NumberOfNodesPerClusterLimitExceededFault]),
        data_parser: Parsers::RestoreFromClusterSnapshot
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RestoreFromClusterSnapshot,
        stubs: @stubs,
        params_class: Params::RestoreFromClusterSnapshotOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :restore_from_cluster_snapshot
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new table from a table in an Amazon Redshift cluster snapshot. You must
    #             create the new table within the Amazon Redshift cluster that the snapshot was taken
    #             from.</p>
    #         <p>You cannot use <code>RestoreTableFromClusterSnapshot</code> to restore a table with
    #             the same name as an existing table in an Amazon Redshift cluster. That is, you cannot
    #             overwrite an existing table in a cluster with a restored table. If you want to replace
    #             your original table with a new, restored table, then rename or drop your original table
    #             before you call <code>RestoreTableFromClusterSnapshot</code>. When you have renamed your
    #             original table, then you can pass the original name of the table as the
    #                 <code>NewTableName</code> parameter value in the call to
    #                 <code>RestoreTableFromClusterSnapshot</code>. This way, you can replace the original
    #             table with the table created from the snapshot.</p>
    #
    # @param [Hash] params
    #   See {Types::RestoreTableFromClusterSnapshotInput}.
    #
    # @option params [String] :cluster_identifier
    #   <p>The identifier of the Amazon Redshift cluster to restore the table to.</p>
    #
    # @option params [String] :snapshot_identifier
    #   <p>The identifier of the snapshot to restore the table from. This snapshot must have
    #               been created from the Amazon Redshift cluster specified by the
    #                   <code>ClusterIdentifier</code> parameter.</p>
    #
    # @option params [String] :source_database_name
    #   <p>The name of the source database that contains the table to restore from.</p>
    #
    # @option params [String] :source_schema_name
    #   <p>The name of the source schema that contains the table to restore from. If you do
    #               not specify a <code>SourceSchemaName</code> value, the default is
    #               <code>public</code>.</p>
    #
    # @option params [String] :source_table_name
    #   <p>The name of the source table to restore from.</p>
    #
    # @option params [String] :target_database_name
    #   <p>The name of the database to restore the table to.</p>
    #
    # @option params [String] :target_schema_name
    #   <p>The name of the schema to restore the table to.</p>
    #
    # @option params [String] :new_table_name
    #   <p>The name of the table to create as a result of the current request.</p>
    #
    # @option params [Boolean] :enable_case_sensitive_identifier
    #   <p>Indicates whether name identifiers for database, schema, and table are case sensitive.
    #               If <code>true</code>, the names are case sensitive.
    #               If <code>false</code> (default), the names are not case sensitive.</p>
    #
    # @return [Types::RestoreTableFromClusterSnapshotOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_table_from_cluster_snapshot(
    #     cluster_identifier: 'ClusterIdentifier', # required
    #     snapshot_identifier: 'SnapshotIdentifier', # required
    #     source_database_name: 'SourceDatabaseName', # required
    #     source_schema_name: 'SourceSchemaName',
    #     source_table_name: 'SourceTableName', # required
    #     target_database_name: 'TargetDatabaseName',
    #     target_schema_name: 'TargetSchemaName',
    #     new_table_name: 'NewTableName', # required
    #     enable_case_sensitive_identifier: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RestoreTableFromClusterSnapshotOutput
    #   resp.data.table_restore_status #=> Types::TableRestoreStatus
    #   resp.data.table_restore_status.table_restore_request_id #=> String
    #   resp.data.table_restore_status.status #=> String, one of ["PENDING", "IN_PROGRESS", "SUCCEEDED", "FAILED", "CANCELED"]
    #   resp.data.table_restore_status.message #=> String
    #   resp.data.table_restore_status.request_time #=> Time
    #   resp.data.table_restore_status.progress_in_mega_bytes #=> Integer
    #   resp.data.table_restore_status.total_data_in_mega_bytes #=> Integer
    #   resp.data.table_restore_status.cluster_identifier #=> String
    #   resp.data.table_restore_status.snapshot_identifier #=> String
    #   resp.data.table_restore_status.source_database_name #=> String
    #   resp.data.table_restore_status.source_schema_name #=> String
    #   resp.data.table_restore_status.source_table_name #=> String
    #   resp.data.table_restore_status.target_database_name #=> String
    #   resp.data.table_restore_status.target_schema_name #=> String
    #   resp.data.table_restore_status.new_table_name #=> String
    #
    def restore_table_from_cluster_snapshot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RestoreTableFromClusterSnapshotInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RestoreTableFromClusterSnapshotInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RestoreTableFromClusterSnapshot
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InProgressTableRestoreQuotaExceededFault, Errors::UnsupportedOperationFault, Errors::InvalidClusterStateFault, Errors::ClusterSnapshotNotFoundFault, Errors::InvalidClusterSnapshotStateFault, Errors::ClusterNotFoundFault, Errors::InvalidTableRestoreArgumentFault]),
        data_parser: Parsers::RestoreTableFromClusterSnapshot
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RestoreTableFromClusterSnapshot,
        stubs: @stubs,
        params_class: Params::RestoreTableFromClusterSnapshotOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :restore_table_from_cluster_snapshot
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Resumes a paused cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::ResumeClusterInput}.
    #
    # @option params [String] :cluster_identifier
    #   <p>The identifier of the cluster to be resumed.</p>
    #
    # @return [Types::ResumeClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.resume_cluster(
    #     cluster_identifier: 'ClusterIdentifier' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ResumeClusterOutput
    #   resp.data.cluster #=> Types::Cluster
    #   resp.data.cluster.cluster_identifier #=> String
    #   resp.data.cluster.node_type #=> String
    #   resp.data.cluster.cluster_status #=> String
    #   resp.data.cluster.cluster_availability_status #=> String
    #   resp.data.cluster.modify_status #=> String
    #   resp.data.cluster.master_username #=> String
    #   resp.data.cluster.db_name #=> String
    #   resp.data.cluster.endpoint #=> Types::Endpoint
    #   resp.data.cluster.endpoint.address #=> String
    #   resp.data.cluster.endpoint.port #=> Integer
    #   resp.data.cluster.endpoint.vpc_endpoints #=> Array<VpcEndpoint>
    #   resp.data.cluster.endpoint.vpc_endpoints[0] #=> Types::VpcEndpoint
    #   resp.data.cluster.endpoint.vpc_endpoints[0].vpc_endpoint_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].vpc_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces #=> Array<NetworkInterface>
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0] #=> Types::NetworkInterface
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].network_interface_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].subnet_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].private_ip_address #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].availability_zone #=> String
    #   resp.data.cluster.cluster_create_time #=> Time
    #   resp.data.cluster.automated_snapshot_retention_period #=> Integer
    #   resp.data.cluster.manual_snapshot_retention_period #=> Integer
    #   resp.data.cluster.cluster_security_groups #=> Array<ClusterSecurityGroupMembership>
    #   resp.data.cluster.cluster_security_groups[0] #=> Types::ClusterSecurityGroupMembership
    #   resp.data.cluster.cluster_security_groups[0].cluster_security_group_name #=> String
    #   resp.data.cluster.cluster_security_groups[0].status #=> String
    #   resp.data.cluster.vpc_security_groups #=> Array<VpcSecurityGroupMembership>
    #   resp.data.cluster.vpc_security_groups[0] #=> Types::VpcSecurityGroupMembership
    #   resp.data.cluster.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.data.cluster.vpc_security_groups[0].status #=> String
    #   resp.data.cluster.cluster_parameter_groups #=> Array<ClusterParameterGroupStatus>
    #   resp.data.cluster.cluster_parameter_groups[0] #=> Types::ClusterParameterGroupStatus
    #   resp.data.cluster.cluster_parameter_groups[0].parameter_group_name #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].parameter_apply_status #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list #=> Array<ClusterParameterStatus>
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0] #=> Types::ClusterParameterStatus
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_name #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_status #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_error_description #=> String
    #   resp.data.cluster.cluster_subnet_group_name #=> String
    #   resp.data.cluster.vpc_id #=> String
    #   resp.data.cluster.availability_zone #=> String
    #   resp.data.cluster.preferred_maintenance_window #=> String
    #   resp.data.cluster.pending_modified_values #=> Types::PendingModifiedValues
    #   resp.data.cluster.pending_modified_values.master_user_password #=> String
    #   resp.data.cluster.pending_modified_values.node_type #=> String
    #   resp.data.cluster.pending_modified_values.number_of_nodes #=> Integer
    #   resp.data.cluster.pending_modified_values.cluster_type #=> String
    #   resp.data.cluster.pending_modified_values.cluster_version #=> String
    #   resp.data.cluster.pending_modified_values.automated_snapshot_retention_period #=> Integer
    #   resp.data.cluster.pending_modified_values.cluster_identifier #=> String
    #   resp.data.cluster.pending_modified_values.publicly_accessible #=> Boolean
    #   resp.data.cluster.pending_modified_values.enhanced_vpc_routing #=> Boolean
    #   resp.data.cluster.pending_modified_values.maintenance_track_name #=> String
    #   resp.data.cluster.pending_modified_values.encryption_type #=> String
    #   resp.data.cluster.cluster_version #=> String
    #   resp.data.cluster.allow_version_upgrade #=> Boolean
    #   resp.data.cluster.number_of_nodes #=> Integer
    #   resp.data.cluster.publicly_accessible #=> Boolean
    #   resp.data.cluster.encrypted #=> Boolean
    #   resp.data.cluster.restore_status #=> Types::RestoreStatus
    #   resp.data.cluster.restore_status.status #=> String
    #   resp.data.cluster.restore_status.current_restore_rate_in_mega_bytes_per_second #=> Float
    #   resp.data.cluster.restore_status.snapshot_size_in_mega_bytes #=> Integer
    #   resp.data.cluster.restore_status.progress_in_mega_bytes #=> Integer
    #   resp.data.cluster.restore_status.elapsed_time_in_seconds #=> Integer
    #   resp.data.cluster.restore_status.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.data.cluster.data_transfer_progress #=> Types::DataTransferProgress
    #   resp.data.cluster.data_transfer_progress.status #=> String
    #   resp.data.cluster.data_transfer_progress.current_rate_in_mega_bytes_per_second #=> Float
    #   resp.data.cluster.data_transfer_progress.total_data_in_mega_bytes #=> Integer
    #   resp.data.cluster.data_transfer_progress.data_transferred_in_mega_bytes #=> Integer
    #   resp.data.cluster.data_transfer_progress.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.data.cluster.data_transfer_progress.elapsed_time_in_seconds #=> Integer
    #   resp.data.cluster.hsm_status #=> Types::HsmStatus
    #   resp.data.cluster.hsm_status.hsm_client_certificate_identifier #=> String
    #   resp.data.cluster.hsm_status.hsm_configuration_identifier #=> String
    #   resp.data.cluster.hsm_status.status #=> String
    #   resp.data.cluster.cluster_snapshot_copy_status #=> Types::ClusterSnapshotCopyStatus
    #   resp.data.cluster.cluster_snapshot_copy_status.destination_region #=> String
    #   resp.data.cluster.cluster_snapshot_copy_status.retention_period #=> Integer
    #   resp.data.cluster.cluster_snapshot_copy_status.manual_snapshot_retention_period #=> Integer
    #   resp.data.cluster.cluster_snapshot_copy_status.snapshot_copy_grant_name #=> String
    #   resp.data.cluster.cluster_public_key #=> String
    #   resp.data.cluster.cluster_nodes #=> Array<ClusterNode>
    #   resp.data.cluster.cluster_nodes[0] #=> Types::ClusterNode
    #   resp.data.cluster.cluster_nodes[0].node_role #=> String
    #   resp.data.cluster.cluster_nodes[0].private_ip_address #=> String
    #   resp.data.cluster.cluster_nodes[0].public_ip_address #=> String
    #   resp.data.cluster.elastic_ip_status #=> Types::ElasticIpStatus
    #   resp.data.cluster.elastic_ip_status.elastic_ip #=> String
    #   resp.data.cluster.elastic_ip_status.status #=> String
    #   resp.data.cluster.cluster_revision_number #=> String
    #   resp.data.cluster.tags #=> Array<Tag>
    #   resp.data.cluster.tags[0] #=> Types::Tag
    #   resp.data.cluster.tags[0].key #=> String
    #   resp.data.cluster.tags[0].value #=> String
    #   resp.data.cluster.kms_key_id #=> String
    #   resp.data.cluster.enhanced_vpc_routing #=> Boolean
    #   resp.data.cluster.iam_roles #=> Array<ClusterIamRole>
    #   resp.data.cluster.iam_roles[0] #=> Types::ClusterIamRole
    #   resp.data.cluster.iam_roles[0].iam_role_arn #=> String
    #   resp.data.cluster.iam_roles[0].apply_status #=> String
    #   resp.data.cluster.pending_actions #=> Array<String>
    #   resp.data.cluster.pending_actions[0] #=> String
    #   resp.data.cluster.maintenance_track_name #=> String
    #   resp.data.cluster.elastic_resize_number_of_node_options #=> String
    #   resp.data.cluster.deferred_maintenance_windows #=> Array<DeferredMaintenanceWindow>
    #   resp.data.cluster.deferred_maintenance_windows[0] #=> Types::DeferredMaintenanceWindow
    #   resp.data.cluster.deferred_maintenance_windows[0].defer_maintenance_identifier #=> String
    #   resp.data.cluster.deferred_maintenance_windows[0].defer_maintenance_start_time #=> Time
    #   resp.data.cluster.deferred_maintenance_windows[0].defer_maintenance_end_time #=> Time
    #   resp.data.cluster.snapshot_schedule_identifier #=> String
    #   resp.data.cluster.snapshot_schedule_state #=> String, one of ["MODIFYING", "ACTIVE", "FAILED"]
    #   resp.data.cluster.expected_next_snapshot_schedule_time #=> Time
    #   resp.data.cluster.expected_next_snapshot_schedule_time_status #=> String
    #   resp.data.cluster.next_maintenance_window_start_time #=> Time
    #   resp.data.cluster.resize_info #=> Types::ResizeInfo
    #   resp.data.cluster.resize_info.resize_type #=> String
    #   resp.data.cluster.resize_info.allow_cancel_resize #=> Boolean
    #   resp.data.cluster.availability_zone_relocation_status #=> String
    #   resp.data.cluster.cluster_namespace_arn #=> String
    #   resp.data.cluster.total_storage_capacity_in_mega_bytes #=> Integer
    #   resp.data.cluster.aqua_configuration #=> Types::AquaConfiguration
    #   resp.data.cluster.aqua_configuration.aqua_status #=> String, one of ["enabled", "disabled", "applying"]
    #   resp.data.cluster.aqua_configuration.aqua_configuration_status #=> String, one of ["enabled", "disabled", "auto"]
    #   resp.data.cluster.default_iam_role_arn #=> String
    #   resp.data.cluster.reserved_node_exchange_status #=> Types::ReservedNodeExchangeStatus
    #   resp.data.cluster.reserved_node_exchange_status.reserved_node_exchange_request_id #=> String
    #   resp.data.cluster.reserved_node_exchange_status.status #=> String, one of ["REQUESTED", "PENDING", "IN_PROGRESS", "RETRYING", "SUCCEEDED", "FAILED"]
    #   resp.data.cluster.reserved_node_exchange_status.request_time #=> Time
    #   resp.data.cluster.reserved_node_exchange_status.source_reserved_node_id #=> String
    #   resp.data.cluster.reserved_node_exchange_status.source_reserved_node_type #=> String
    #   resp.data.cluster.reserved_node_exchange_status.source_reserved_node_count #=> Integer
    #   resp.data.cluster.reserved_node_exchange_status.target_reserved_node_offering_id #=> String
    #   resp.data.cluster.reserved_node_exchange_status.target_reserved_node_type #=> String
    #   resp.data.cluster.reserved_node_exchange_status.target_reserved_node_count #=> Integer
    #
    def resume_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ResumeClusterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ResumeClusterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ResumeCluster
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InsufficientClusterCapacityFault, Errors::InvalidClusterStateFault, Errors::ClusterNotFoundFault]),
        data_parser: Parsers::ResumeCluster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ResumeCluster,
        stubs: @stubs,
        params_class: Params::ResumeClusterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :resume_cluster
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Revokes an ingress rule in an Amazon Redshift security group for a previously authorized
    #             IP range or Amazon EC2 security group. To add an ingress rule, see <a>AuthorizeClusterSecurityGroupIngress</a>.
    # For information about managing security groups, go to
    # <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html">Amazon Redshift Cluster Security Groups</a> in the
    # <i>Amazon Redshift Cluster Management Guide</i>. </p>
    #
    # @param [Hash] params
    #   See {Types::RevokeClusterSecurityGroupIngressInput}.
    #
    # @option params [String] :cluster_security_group_name
    #   <p>The name of the security Group from which to revoke the ingress rule.</p>
    #
    # @option params [String] :cidrip
    #   <p>The IP range for which to revoke access. This range must be a valid Classless
    #               Inter-Domain Routing (CIDR) block of IP addresses. If <code>CIDRIP</code> is specified,
    #                   <code>EC2SecurityGroupName</code> and <code>EC2SecurityGroupOwnerId</code> cannot be
    #               provided. </p>
    #
    # @option params [String] :ec2_security_group_name
    #   <p>The name of the EC2 Security Group whose access is to be revoked. If
    #                   <code>EC2SecurityGroupName</code> is specified, <code>EC2SecurityGroupOwnerId</code>
    #               must also be provided and <code>CIDRIP</code> cannot be provided. </p>
    #
    # @option params [String] :ec2_security_group_owner_id
    #   <p>The Amazon Web Services account number of the owner of the security group specified in the
    #                   <code>EC2SecurityGroupName</code> parameter. The Amazon Web Services access key ID is not an
    #               acceptable value. If <code>EC2SecurityGroupOwnerId</code> is specified,
    #                   <code>EC2SecurityGroupName</code> must also be provided. and <code>CIDRIP</code>
    #               cannot be provided. </p>
    #           <p>Example: <code>111122223333</code>
    #           </p>
    #
    # @return [Types::RevokeClusterSecurityGroupIngressOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.revoke_cluster_security_group_ingress(
    #     cluster_security_group_name: 'ClusterSecurityGroupName', # required
    #     cidrip: 'CIDRIP',
    #     ec2_security_group_name: 'EC2SecurityGroupName',
    #     ec2_security_group_owner_id: 'EC2SecurityGroupOwnerId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RevokeClusterSecurityGroupIngressOutput
    #   resp.data.cluster_security_group #=> Types::ClusterSecurityGroup
    #   resp.data.cluster_security_group.cluster_security_group_name #=> String
    #   resp.data.cluster_security_group.description #=> String
    #   resp.data.cluster_security_group.ec2_security_groups #=> Array<EC2SecurityGroup>
    #   resp.data.cluster_security_group.ec2_security_groups[0] #=> Types::EC2SecurityGroup
    #   resp.data.cluster_security_group.ec2_security_groups[0].status #=> String
    #   resp.data.cluster_security_group.ec2_security_groups[0].ec2_security_group_name #=> String
    #   resp.data.cluster_security_group.ec2_security_groups[0].ec2_security_group_owner_id #=> String
    #   resp.data.cluster_security_group.ec2_security_groups[0].tags #=> Array<Tag>
    #   resp.data.cluster_security_group.ec2_security_groups[0].tags[0] #=> Types::Tag
    #   resp.data.cluster_security_group.ec2_security_groups[0].tags[0].key #=> String
    #   resp.data.cluster_security_group.ec2_security_groups[0].tags[0].value #=> String
    #   resp.data.cluster_security_group.ip_ranges #=> Array<IPRange>
    #   resp.data.cluster_security_group.ip_ranges[0] #=> Types::IPRange
    #   resp.data.cluster_security_group.ip_ranges[0].status #=> String
    #   resp.data.cluster_security_group.ip_ranges[0].cidrip #=> String
    #   resp.data.cluster_security_group.ip_ranges[0].tags #=> Array<Tag>
    #   resp.data.cluster_security_group.tags #=> Array<Tag>
    #
    def revoke_cluster_security_group_ingress(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RevokeClusterSecurityGroupIngressInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RevokeClusterSecurityGroupIngressInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RevokeClusterSecurityGroupIngress
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidClusterSecurityGroupStateFault, Errors::ClusterSecurityGroupNotFoundFault, Errors::AuthorizationNotFoundFault]),
        data_parser: Parsers::RevokeClusterSecurityGroupIngress
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RevokeClusterSecurityGroupIngress,
        stubs: @stubs,
        params_class: Params::RevokeClusterSecurityGroupIngressOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :revoke_cluster_security_group_ingress
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Revokes access to a cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::RevokeEndpointAccessInput}.
    #
    # @option params [String] :cluster_identifier
    #   <p>The cluster to revoke access from.</p>
    #
    # @option params [String] :account
    #   <p>The Amazon Web Services account ID whose access is to be revoked.</p>
    #
    # @option params [Array<String>] :vpc_ids
    #   <p>The virtual private cloud (VPC) identifiers for which access is to be revoked.</p>
    #
    # @option params [Boolean] :force
    #   <p>Indicates whether to force the revoke action.
    #              If true, the Redshift-managed VPC endpoints associated with the endpoint authorization are also deleted.</p>
    #
    # @return [Types::RevokeEndpointAccessOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.revoke_endpoint_access(
    #     cluster_identifier: 'ClusterIdentifier',
    #     account: 'Account',
    #     vpc_ids: [
    #       'member'
    #     ],
    #     force: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RevokeEndpointAccessOutput
    #   resp.data.grantor #=> String
    #   resp.data.grantee #=> String
    #   resp.data.cluster_identifier #=> String
    #   resp.data.authorize_time #=> Time
    #   resp.data.cluster_status #=> String
    #   resp.data.status #=> String, one of ["Authorized", "Revoking"]
    #   resp.data.allowed_all_vp_cs #=> Boolean
    #   resp.data.allowed_vp_cs #=> Array<String>
    #   resp.data.allowed_vp_cs[0] #=> String
    #   resp.data.endpoint_count #=> Integer
    #
    def revoke_endpoint_access(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RevokeEndpointAccessInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RevokeEndpointAccessInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RevokeEndpointAccess
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidClusterStateFault, Errors::InvalidAuthorizationStateFault, Errors::InvalidClusterSecurityGroupStateFault, Errors::ClusterNotFoundFault, Errors::EndpointAuthorizationNotFoundFault, Errors::EndpointNotFoundFault, Errors::InvalidEndpointStateFault]),
        data_parser: Parsers::RevokeEndpointAccess
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RevokeEndpointAccess,
        stubs: @stubs,
        params_class: Params::RevokeEndpointAccessOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :revoke_endpoint_access
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the ability of the specified  Amazon Web Services account to restore the specified
    #             snapshot. If the account is currently restoring the snapshot, the restore will run to
    #             completion.</p>
    #         <p>
    # For more information about working with snapshots, go to
    # <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html">Amazon Redshift Snapshots</a>
    # in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::RevokeSnapshotAccessInput}.
    #
    # @option params [String] :snapshot_identifier
    #   <p>The identifier of the snapshot that the account can no longer access.</p>
    #
    # @option params [String] :snapshot_cluster_identifier
    #   <p>The identifier of the cluster the snapshot was created from. This parameter is
    #               required if your IAM user has a policy containing a snapshot resource element that
    #               specifies anything other than * for the cluster name.</p>
    #
    # @option params [String] :account_with_restore_access
    #   <p>The identifier of the Amazon Web Services account that can no longer restore the specified
    #               snapshot.</p>
    #
    # @return [Types::RevokeSnapshotAccessOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.revoke_snapshot_access(
    #     snapshot_identifier: 'SnapshotIdentifier', # required
    #     snapshot_cluster_identifier: 'SnapshotClusterIdentifier',
    #     account_with_restore_access: 'AccountWithRestoreAccess' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RevokeSnapshotAccessOutput
    #   resp.data.snapshot #=> Types::Snapshot
    #   resp.data.snapshot.snapshot_identifier #=> String
    #   resp.data.snapshot.cluster_identifier #=> String
    #   resp.data.snapshot.snapshot_create_time #=> Time
    #   resp.data.snapshot.status #=> String
    #   resp.data.snapshot.port #=> Integer
    #   resp.data.snapshot.availability_zone #=> String
    #   resp.data.snapshot.cluster_create_time #=> Time
    #   resp.data.snapshot.master_username #=> String
    #   resp.data.snapshot.cluster_version #=> String
    #   resp.data.snapshot.engine_full_version #=> String
    #   resp.data.snapshot.snapshot_type #=> String
    #   resp.data.snapshot.node_type #=> String
    #   resp.data.snapshot.number_of_nodes #=> Integer
    #   resp.data.snapshot.db_name #=> String
    #   resp.data.snapshot.vpc_id #=> String
    #   resp.data.snapshot.encrypted #=> Boolean
    #   resp.data.snapshot.kms_key_id #=> String
    #   resp.data.snapshot.encrypted_with_hsm #=> Boolean
    #   resp.data.snapshot.accounts_with_restore_access #=> Array<AccountWithRestoreAccess>
    #   resp.data.snapshot.accounts_with_restore_access[0] #=> Types::AccountWithRestoreAccess
    #   resp.data.snapshot.accounts_with_restore_access[0].account_id #=> String
    #   resp.data.snapshot.accounts_with_restore_access[0].account_alias #=> String
    #   resp.data.snapshot.owner_account #=> String
    #   resp.data.snapshot.total_backup_size_in_mega_bytes #=> Float
    #   resp.data.snapshot.actual_incremental_backup_size_in_mega_bytes #=> Float
    #   resp.data.snapshot.backup_progress_in_mega_bytes #=> Float
    #   resp.data.snapshot.current_backup_rate_in_mega_bytes_per_second #=> Float
    #   resp.data.snapshot.estimated_seconds_to_completion #=> Integer
    #   resp.data.snapshot.elapsed_time_in_seconds #=> Integer
    #   resp.data.snapshot.source_region #=> String
    #   resp.data.snapshot.tags #=> Array<Tag>
    #   resp.data.snapshot.tags[0] #=> Types::Tag
    #   resp.data.snapshot.tags[0].key #=> String
    #   resp.data.snapshot.tags[0].value #=> String
    #   resp.data.snapshot.restorable_node_types #=> Array<String>
    #   resp.data.snapshot.restorable_node_types[0] #=> String
    #   resp.data.snapshot.enhanced_vpc_routing #=> Boolean
    #   resp.data.snapshot.maintenance_track_name #=> String
    #   resp.data.snapshot.manual_snapshot_retention_period #=> Integer
    #   resp.data.snapshot.manual_snapshot_remaining_days #=> Integer
    #   resp.data.snapshot.snapshot_retention_start_time #=> Time
    #
    def revoke_snapshot_access(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RevokeSnapshotAccessInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RevokeSnapshotAccessInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RevokeSnapshotAccess
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClusterSnapshotNotFoundFault, Errors::AccessToSnapshotDeniedFault, Errors::AuthorizationNotFoundFault]),
        data_parser: Parsers::RevokeSnapshotAccess
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RevokeSnapshotAccess,
        stubs: @stubs,
        params_class: Params::RevokeSnapshotAccessOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :revoke_snapshot_access
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Rotates the encryption keys for a cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::RotateEncryptionKeyInput}.
    #
    # @option params [String] :cluster_identifier
    #   <p>The unique identifier of the cluster that you want to rotate the encryption keys
    #               for.</p>
    #           <p>Constraints: Must be the name of valid cluster that has encryption
    #               enabled.</p>
    #
    # @return [Types::RotateEncryptionKeyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.rotate_encryption_key(
    #     cluster_identifier: 'ClusterIdentifier' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RotateEncryptionKeyOutput
    #   resp.data.cluster #=> Types::Cluster
    #   resp.data.cluster.cluster_identifier #=> String
    #   resp.data.cluster.node_type #=> String
    #   resp.data.cluster.cluster_status #=> String
    #   resp.data.cluster.cluster_availability_status #=> String
    #   resp.data.cluster.modify_status #=> String
    #   resp.data.cluster.master_username #=> String
    #   resp.data.cluster.db_name #=> String
    #   resp.data.cluster.endpoint #=> Types::Endpoint
    #   resp.data.cluster.endpoint.address #=> String
    #   resp.data.cluster.endpoint.port #=> Integer
    #   resp.data.cluster.endpoint.vpc_endpoints #=> Array<VpcEndpoint>
    #   resp.data.cluster.endpoint.vpc_endpoints[0] #=> Types::VpcEndpoint
    #   resp.data.cluster.endpoint.vpc_endpoints[0].vpc_endpoint_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].vpc_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces #=> Array<NetworkInterface>
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0] #=> Types::NetworkInterface
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].network_interface_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].subnet_id #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].private_ip_address #=> String
    #   resp.data.cluster.endpoint.vpc_endpoints[0].network_interfaces[0].availability_zone #=> String
    #   resp.data.cluster.cluster_create_time #=> Time
    #   resp.data.cluster.automated_snapshot_retention_period #=> Integer
    #   resp.data.cluster.manual_snapshot_retention_period #=> Integer
    #   resp.data.cluster.cluster_security_groups #=> Array<ClusterSecurityGroupMembership>
    #   resp.data.cluster.cluster_security_groups[0] #=> Types::ClusterSecurityGroupMembership
    #   resp.data.cluster.cluster_security_groups[0].cluster_security_group_name #=> String
    #   resp.data.cluster.cluster_security_groups[0].status #=> String
    #   resp.data.cluster.vpc_security_groups #=> Array<VpcSecurityGroupMembership>
    #   resp.data.cluster.vpc_security_groups[0] #=> Types::VpcSecurityGroupMembership
    #   resp.data.cluster.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.data.cluster.vpc_security_groups[0].status #=> String
    #   resp.data.cluster.cluster_parameter_groups #=> Array<ClusterParameterGroupStatus>
    #   resp.data.cluster.cluster_parameter_groups[0] #=> Types::ClusterParameterGroupStatus
    #   resp.data.cluster.cluster_parameter_groups[0].parameter_group_name #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].parameter_apply_status #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list #=> Array<ClusterParameterStatus>
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0] #=> Types::ClusterParameterStatus
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_name #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_status #=> String
    #   resp.data.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_error_description #=> String
    #   resp.data.cluster.cluster_subnet_group_name #=> String
    #   resp.data.cluster.vpc_id #=> String
    #   resp.data.cluster.availability_zone #=> String
    #   resp.data.cluster.preferred_maintenance_window #=> String
    #   resp.data.cluster.pending_modified_values #=> Types::PendingModifiedValues
    #   resp.data.cluster.pending_modified_values.master_user_password #=> String
    #   resp.data.cluster.pending_modified_values.node_type #=> String
    #   resp.data.cluster.pending_modified_values.number_of_nodes #=> Integer
    #   resp.data.cluster.pending_modified_values.cluster_type #=> String
    #   resp.data.cluster.pending_modified_values.cluster_version #=> String
    #   resp.data.cluster.pending_modified_values.automated_snapshot_retention_period #=> Integer
    #   resp.data.cluster.pending_modified_values.cluster_identifier #=> String
    #   resp.data.cluster.pending_modified_values.publicly_accessible #=> Boolean
    #   resp.data.cluster.pending_modified_values.enhanced_vpc_routing #=> Boolean
    #   resp.data.cluster.pending_modified_values.maintenance_track_name #=> String
    #   resp.data.cluster.pending_modified_values.encryption_type #=> String
    #   resp.data.cluster.cluster_version #=> String
    #   resp.data.cluster.allow_version_upgrade #=> Boolean
    #   resp.data.cluster.number_of_nodes #=> Integer
    #   resp.data.cluster.publicly_accessible #=> Boolean
    #   resp.data.cluster.encrypted #=> Boolean
    #   resp.data.cluster.restore_status #=> Types::RestoreStatus
    #   resp.data.cluster.restore_status.status #=> String
    #   resp.data.cluster.restore_status.current_restore_rate_in_mega_bytes_per_second #=> Float
    #   resp.data.cluster.restore_status.snapshot_size_in_mega_bytes #=> Integer
    #   resp.data.cluster.restore_status.progress_in_mega_bytes #=> Integer
    #   resp.data.cluster.restore_status.elapsed_time_in_seconds #=> Integer
    #   resp.data.cluster.restore_status.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.data.cluster.data_transfer_progress #=> Types::DataTransferProgress
    #   resp.data.cluster.data_transfer_progress.status #=> String
    #   resp.data.cluster.data_transfer_progress.current_rate_in_mega_bytes_per_second #=> Float
    #   resp.data.cluster.data_transfer_progress.total_data_in_mega_bytes #=> Integer
    #   resp.data.cluster.data_transfer_progress.data_transferred_in_mega_bytes #=> Integer
    #   resp.data.cluster.data_transfer_progress.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.data.cluster.data_transfer_progress.elapsed_time_in_seconds #=> Integer
    #   resp.data.cluster.hsm_status #=> Types::HsmStatus
    #   resp.data.cluster.hsm_status.hsm_client_certificate_identifier #=> String
    #   resp.data.cluster.hsm_status.hsm_configuration_identifier #=> String
    #   resp.data.cluster.hsm_status.status #=> String
    #   resp.data.cluster.cluster_snapshot_copy_status #=> Types::ClusterSnapshotCopyStatus
    #   resp.data.cluster.cluster_snapshot_copy_status.destination_region #=> String
    #   resp.data.cluster.cluster_snapshot_copy_status.retention_period #=> Integer
    #   resp.data.cluster.cluster_snapshot_copy_status.manual_snapshot_retention_period #=> Integer
    #   resp.data.cluster.cluster_snapshot_copy_status.snapshot_copy_grant_name #=> String
    #   resp.data.cluster.cluster_public_key #=> String
    #   resp.data.cluster.cluster_nodes #=> Array<ClusterNode>
    #   resp.data.cluster.cluster_nodes[0] #=> Types::ClusterNode
    #   resp.data.cluster.cluster_nodes[0].node_role #=> String
    #   resp.data.cluster.cluster_nodes[0].private_ip_address #=> String
    #   resp.data.cluster.cluster_nodes[0].public_ip_address #=> String
    #   resp.data.cluster.elastic_ip_status #=> Types::ElasticIpStatus
    #   resp.data.cluster.elastic_ip_status.elastic_ip #=> String
    #   resp.data.cluster.elastic_ip_status.status #=> String
    #   resp.data.cluster.cluster_revision_number #=> String
    #   resp.data.cluster.tags #=> Array<Tag>
    #   resp.data.cluster.tags[0] #=> Types::Tag
    #   resp.data.cluster.tags[0].key #=> String
    #   resp.data.cluster.tags[0].value #=> String
    #   resp.data.cluster.kms_key_id #=> String
    #   resp.data.cluster.enhanced_vpc_routing #=> Boolean
    #   resp.data.cluster.iam_roles #=> Array<ClusterIamRole>
    #   resp.data.cluster.iam_roles[0] #=> Types::ClusterIamRole
    #   resp.data.cluster.iam_roles[0].iam_role_arn #=> String
    #   resp.data.cluster.iam_roles[0].apply_status #=> String
    #   resp.data.cluster.pending_actions #=> Array<String>
    #   resp.data.cluster.pending_actions[0] #=> String
    #   resp.data.cluster.maintenance_track_name #=> String
    #   resp.data.cluster.elastic_resize_number_of_node_options #=> String
    #   resp.data.cluster.deferred_maintenance_windows #=> Array<DeferredMaintenanceWindow>
    #   resp.data.cluster.deferred_maintenance_windows[0] #=> Types::DeferredMaintenanceWindow
    #   resp.data.cluster.deferred_maintenance_windows[0].defer_maintenance_identifier #=> String
    #   resp.data.cluster.deferred_maintenance_windows[0].defer_maintenance_start_time #=> Time
    #   resp.data.cluster.deferred_maintenance_windows[0].defer_maintenance_end_time #=> Time
    #   resp.data.cluster.snapshot_schedule_identifier #=> String
    #   resp.data.cluster.snapshot_schedule_state #=> String, one of ["MODIFYING", "ACTIVE", "FAILED"]
    #   resp.data.cluster.expected_next_snapshot_schedule_time #=> Time
    #   resp.data.cluster.expected_next_snapshot_schedule_time_status #=> String
    #   resp.data.cluster.next_maintenance_window_start_time #=> Time
    #   resp.data.cluster.resize_info #=> Types::ResizeInfo
    #   resp.data.cluster.resize_info.resize_type #=> String
    #   resp.data.cluster.resize_info.allow_cancel_resize #=> Boolean
    #   resp.data.cluster.availability_zone_relocation_status #=> String
    #   resp.data.cluster.cluster_namespace_arn #=> String
    #   resp.data.cluster.total_storage_capacity_in_mega_bytes #=> Integer
    #   resp.data.cluster.aqua_configuration #=> Types::AquaConfiguration
    #   resp.data.cluster.aqua_configuration.aqua_status #=> String, one of ["enabled", "disabled", "applying"]
    #   resp.data.cluster.aqua_configuration.aqua_configuration_status #=> String, one of ["enabled", "disabled", "auto"]
    #   resp.data.cluster.default_iam_role_arn #=> String
    #   resp.data.cluster.reserved_node_exchange_status #=> Types::ReservedNodeExchangeStatus
    #   resp.data.cluster.reserved_node_exchange_status.reserved_node_exchange_request_id #=> String
    #   resp.data.cluster.reserved_node_exchange_status.status #=> String, one of ["REQUESTED", "PENDING", "IN_PROGRESS", "RETRYING", "SUCCEEDED", "FAILED"]
    #   resp.data.cluster.reserved_node_exchange_status.request_time #=> Time
    #   resp.data.cluster.reserved_node_exchange_status.source_reserved_node_id #=> String
    #   resp.data.cluster.reserved_node_exchange_status.source_reserved_node_type #=> String
    #   resp.data.cluster.reserved_node_exchange_status.source_reserved_node_count #=> Integer
    #   resp.data.cluster.reserved_node_exchange_status.target_reserved_node_offering_id #=> String
    #   resp.data.cluster.reserved_node_exchange_status.target_reserved_node_type #=> String
    #   resp.data.cluster.reserved_node_exchange_status.target_reserved_node_count #=> Integer
    #
    def rotate_encryption_key(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RotateEncryptionKeyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RotateEncryptionKeyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RotateEncryptionKey
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidClusterStateFault, Errors::DependentServiceRequestThrottlingFault, Errors::ClusterNotFoundFault]),
        data_parser: Parsers::RotateEncryptionKey
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RotateEncryptionKey,
        stubs: @stubs,
        params_class: Params::RotateEncryptionKeyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :rotate_encryption_key
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the status of a partner integration.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdatePartnerStatusInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID that owns the cluster.</p>
    #
    # @option params [String] :cluster_identifier
    #   <p>The cluster identifier of the cluster whose partner integration status is being updated.</p>
    #
    # @option params [String] :database_name
    #   <p>The name of the database whose partner integration status is being updated.</p>
    #
    # @option params [String] :partner_name
    #   <p>The name of the partner whose integration status is being updated.</p>
    #
    # @option params [String] :status
    #   <p>The value of the updated status.</p>
    #
    # @option params [String] :status_message
    #   <p>The status message provided by the partner.</p>
    #
    # @return [Types::UpdatePartnerStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_partner_status(
    #     account_id: 'AccountId', # required
    #     cluster_identifier: 'ClusterIdentifier', # required
    #     database_name: 'DatabaseName', # required
    #     partner_name: 'PartnerName', # required
    #     status: 'Active', # required - accepts ["Active", "Inactive", "RuntimeFailure", "ConnectionFailure"]
    #     status_message: 'StatusMessage'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdatePartnerStatusOutput
    #   resp.data.database_name #=> String
    #   resp.data.partner_name #=> String
    #
    def update_partner_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdatePartnerStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdatePartnerStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdatePartnerStatus
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::PartnerNotFoundFault, Errors::ClusterNotFoundFault, Errors::UnauthorizedPartnerIntegrationFault]),
        data_parser: Parsers::UpdatePartnerStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdatePartnerStatus,
        stubs: @stubs,
        params_class: Params::UpdatePartnerStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_partner_status
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
